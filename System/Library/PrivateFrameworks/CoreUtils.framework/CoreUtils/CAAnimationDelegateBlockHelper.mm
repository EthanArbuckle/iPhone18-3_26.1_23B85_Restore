@interface CAAnimationDelegateBlockHelper
- (void)animationDidStart:(id)start;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)dealloc;
@end

@implementation CAAnimationDelegateBlockHelper

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  animationDidStopBlock = self->_animationDidStopBlock;
  if (animationDidStopBlock)
  {
    animationDidStopBlock[2](animationDidStopBlock, finished);
  }
}

- (void)animationDidStart:(id)start
{
  animationDidStartBlock = self->_animationDidStartBlock;
  if (animationDidStartBlock)
  {
    animationDidStartBlock[2]();
  }
}

- (void)dealloc
{
  animationDidStartBlock = self->_animationDidStartBlock;
  self->_animationDidStartBlock = 0;

  animationDidStopBlock = self->_animationDidStopBlock;
  self->_animationDidStopBlock = 0;

  v5.receiver = self;
  v5.super_class = CAAnimationDelegateBlockHelper;
  [(CAAnimationDelegateBlockHelper *)&v5 dealloc];
}

@end