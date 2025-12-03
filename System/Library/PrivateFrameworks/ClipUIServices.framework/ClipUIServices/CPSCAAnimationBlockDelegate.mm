@interface CPSCAAnimationBlockDelegate
+ (void)attachToAnimation:(id)animation didStartHandler:(id)handler didStopHandler:(id)stopHandler;
- (void)animationDidStart:(id)start;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
@end

@implementation CPSCAAnimationBlockDelegate

+ (void)attachToAnimation:(id)animation didStartHandler:(id)handler didStopHandler:(id)stopHandler
{
  animationCopy = animation;
  handlerCopy = handler;
  stopHandlerCopy = stopHandler;
  delegate = [animationCopy delegate];

  if (delegate)
  {
    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"The provided animation already has a delegate." userInfo:0];
    objc_exception_throw(v18);
  }

  v11 = objc_alloc_init(self);
  v12 = MEMORY[0x245D3DDC0](handlerCopy);
  v13 = v11[2];
  v11[2] = v12;

  v14 = MEMORY[0x245D3DDC0](stopHandlerCopy);
  v15 = v11[3];
  v11[3] = v14;

  v16 = v11[1];
  v11[1] = v11;
  v17 = v11;

  [animationCopy setDelegate:v17];
}

- (void)animationDidStart:(id)start
{
  didStartHandler = self->_didStartHandler;
  if (didStartHandler)
  {
    didStartHandler[2](didStartHandler, start);
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  didStopHandler = self->_didStopHandler;
  if (didStopHandler)
  {
    didStopHandler[2](didStopHandler, stop, finished);
  }

  referenceToSelf = self->_referenceToSelf;
  self->_referenceToSelf = 0;
}

@end