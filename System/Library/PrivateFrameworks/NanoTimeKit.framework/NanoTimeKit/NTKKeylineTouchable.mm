@interface NTKKeylineTouchable
+ (NTKKeylineTouchable)touchableWithHandler:(id)handler;
- (BOOL)pointInside:(CGPoint)inside keyline:(id)keyline withEvent:(id)event;
@end

@implementation NTKKeylineTouchable

+ (NTKKeylineTouchable)touchableWithHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_opt_new();
  v5 = _Block_copy(handlerCopy);

  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (BOOL)pointInside:(CGPoint)inside keyline:(id)keyline withEvent:(id)event
{
  handler = self->_handler;
  if (handler)
  {
    LOBYTE(handler) = handler[2](handler, keyline, event, inside, *&inside.y);
  }

  return handler;
}

@end