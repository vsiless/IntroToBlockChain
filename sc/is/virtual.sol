// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.8.0;

contract Base1
{
    function foo() virtual public {}
}

contract Base2
{
    function foo() virtual public {}
}

contract Inherited is Base1, Base2
{
    // Derives from multiple bases defining foo(),
    // so we must explicitly override it
    function foo() public override(Base1, Base2){}
}

contract InheritingInherited is Inherited{
    function foo() public  override {}

}
