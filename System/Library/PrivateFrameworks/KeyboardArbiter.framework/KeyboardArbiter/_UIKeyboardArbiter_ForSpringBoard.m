@interface _UIKeyboardArbiter_ForSpringBoard
- (_UIKeyboardArbiter_ForSpringBoard)init;
@end

@implementation _UIKeyboardArbiter_ForSpringBoard

- (_UIKeyboardArbiter_ForSpringBoard)init
{
  v6.receiver = self;
  v6.super_class = _UIKeyboardArbiter_ForSpringBoard;
  v2 = [(_UIKeyboardArbiter_ForSpringBoard *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_UIKeyboardArbiterHost);
    arbiterHost = v2->_arbiterHost;
    v2->_arbiterHost = v3;
  }

  return v2;
}

@end