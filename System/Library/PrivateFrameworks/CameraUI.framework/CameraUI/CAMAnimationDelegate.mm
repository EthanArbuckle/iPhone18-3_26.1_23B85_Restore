@interface CAMAnimationDelegate
- (void)animationDidStart:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
@end

@implementation CAMAnimationDelegate

- (void)animationDidStart:(id)a3
{
  v4 = [(CAMAnimationDelegate *)self start];

  if (v4)
  {
    v5 = [(CAMAnimationDelegate *)self start];
    v5[2]();
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v6 = [(CAMAnimationDelegate *)self completion];

  if (v6)
  {
    v7 = [(CAMAnimationDelegate *)self completion];
    v7[2](v7, v4);
  }
}

@end