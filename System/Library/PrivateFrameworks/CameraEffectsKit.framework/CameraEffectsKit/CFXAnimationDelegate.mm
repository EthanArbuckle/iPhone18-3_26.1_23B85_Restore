@interface CFXAnimationDelegate
- (void)animationDidStart:(id)start;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
@end

@implementation CFXAnimationDelegate

- (void)animationDidStart:(id)start
{
  start = [(CFXAnimationDelegate *)self start];

  if (start)
  {
    start2 = [(CFXAnimationDelegate *)self start];
    start2[2]();
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  completion = [(CFXAnimationDelegate *)self completion];

  if (completion)
  {
    completion2 = [(CFXAnimationDelegate *)self completion];
    completion2[2](completion2, finishedCopy);
  }
}

@end