@interface CPSCAAnimationBlockDelegate
+ (void)attachToAnimation:(id)a3 didStartHandler:(id)a4 didStopHandler:(id)a5;
- (void)animationDidStart:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
@end

@implementation CPSCAAnimationBlockDelegate

+ (void)attachToAnimation:(id)a3 didStartHandler:(id)a4 didStopHandler:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v19 delegate];

  if (v10)
  {
    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"The provided animation already has a delegate." userInfo:0];
    objc_exception_throw(v18);
  }

  v11 = objc_alloc_init(a1);
  v12 = MEMORY[0x245D3DDC0](v8);
  v13 = v11[2];
  v11[2] = v12;

  v14 = MEMORY[0x245D3DDC0](v9);
  v15 = v11[3];
  v11[3] = v14;

  v16 = v11[1];
  v11[1] = v11;
  v17 = v11;

  [v19 setDelegate:v17];
}

- (void)animationDidStart:(id)a3
{
  didStartHandler = self->_didStartHandler;
  if (didStartHandler)
  {
    didStartHandler[2](didStartHandler, a3);
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  didStopHandler = self->_didStopHandler;
  if (didStopHandler)
  {
    didStopHandler[2](didStopHandler, a3, a4);
  }

  referenceToSelf = self->_referenceToSelf;
  self->_referenceToSelf = 0;
}

@end