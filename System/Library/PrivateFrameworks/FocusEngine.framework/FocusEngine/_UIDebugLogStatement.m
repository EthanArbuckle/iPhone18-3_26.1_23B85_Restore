@interface _UIDebugLogStatement
- (_UIDebugLogStatement)init;
@end

@implementation _UIDebugLogStatement

- (_UIDebugLogStatement)init
{
  v7.receiver = self;
  v7.super_class = _UIDebugLogStatement;
  v2 = [(_UIDebugLogStatement *)&v7 init];
  v3 = v2;
  if (v2)
  {
    prefix = v2->_prefix;
    v2->_prefix = &stru_285EB2008;

    text = v3->_text;
    v3->_text = &stru_285EB2008;
  }

  return v3;
}

@end