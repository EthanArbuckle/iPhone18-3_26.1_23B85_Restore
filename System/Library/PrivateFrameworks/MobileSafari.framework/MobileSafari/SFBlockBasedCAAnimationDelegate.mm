@interface SFBlockBasedCAAnimationDelegate
+ (id)animationDelegateWithDidStopBlock:(id)block;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
@end

@implementation SFBlockBasedCAAnimationDelegate

+ (id)animationDelegateWithDidStopBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc_init(self);
  [v5 setAnimationDidStopBlock:blockCopy];

  return v5;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  stopCopy = stop;
  animationDidStopBlock = self->_animationDidStopBlock;
  v8 = stopCopy;
  if (animationDidStopBlock)
  {
    animationDidStopBlock[2](animationDidStopBlock, stopCopy, finishedCopy);
    stopCopy = v8;
  }

  [stopCopy setValue:0 forKey:@"blockBasedAnimationDelegate"];
}

@end