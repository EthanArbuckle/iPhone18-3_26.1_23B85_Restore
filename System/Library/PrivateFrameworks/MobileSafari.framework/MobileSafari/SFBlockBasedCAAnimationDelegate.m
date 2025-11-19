@interface SFBlockBasedCAAnimationDelegate
+ (id)animationDelegateWithDidStopBlock:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
@end

@implementation SFBlockBasedCAAnimationDelegate

+ (id)animationDelegateWithDidStopBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setAnimationDidStopBlock:v4];

  return v5;
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  animationDidStopBlock = self->_animationDidStopBlock;
  v8 = v6;
  if (animationDidStopBlock)
  {
    animationDidStopBlock[2](animationDidStopBlock, v6, v4);
    v6 = v8;
  }

  [v6 setValue:0 forKey:@"blockBasedAnimationDelegate"];
}

@end