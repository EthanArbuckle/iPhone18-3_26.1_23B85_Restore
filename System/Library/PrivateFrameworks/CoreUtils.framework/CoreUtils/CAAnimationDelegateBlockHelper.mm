@interface CAAnimationDelegateBlockHelper
- (void)animationDidStart:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
@end

@implementation CAAnimationDelegateBlockHelper

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  animationDidStopBlock = self->_animationDidStopBlock;
  if (animationDidStopBlock)
  {
    animationDidStopBlock[2](animationDidStopBlock, a4);
  }
}

- (void)animationDidStart:(id)a3
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