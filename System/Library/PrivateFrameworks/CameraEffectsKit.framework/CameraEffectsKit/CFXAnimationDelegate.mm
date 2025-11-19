@interface CFXAnimationDelegate
- (void)animationDidStart:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
@end

@implementation CFXAnimationDelegate

- (void)animationDidStart:(id)a3
{
  v4 = [(CFXAnimationDelegate *)self start];

  if (v4)
  {
    v5 = [(CFXAnimationDelegate *)self start];
    v5[2]();
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v6 = [(CFXAnimationDelegate *)self completion];

  if (v6)
  {
    v7 = [(CFXAnimationDelegate *)self completion];
    v7[2](v7, v4);
  }
}

@end