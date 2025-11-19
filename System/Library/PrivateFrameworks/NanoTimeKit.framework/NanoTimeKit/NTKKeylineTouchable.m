@interface NTKKeylineTouchable
+ (NTKKeylineTouchable)touchableWithHandler:(id)a3;
- (BOOL)pointInside:(CGPoint)a3 keyline:(id)a4 withEvent:(id)a5;
@end

@implementation NTKKeylineTouchable

+ (NTKKeylineTouchable)touchableWithHandler:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = _Block_copy(v3);

  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (BOOL)pointInside:(CGPoint)a3 keyline:(id)a4 withEvent:(id)a5
{
  handler = self->_handler;
  if (handler)
  {
    LOBYTE(handler) = handler[2](handler, a4, a5, a3, *&a3.y);
  }

  return handler;
}

@end