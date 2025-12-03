@interface CAMAnimationDelegate
- (void)animationDidStart:(id)start;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
@end

@implementation CAMAnimationDelegate

- (void)animationDidStart:(id)start
{
  start = [(CAMAnimationDelegate *)self start];

  if (start)
  {
    start2 = [(CAMAnimationDelegate *)self start];
    start2[2]();
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  completion = [(CAMAnimationDelegate *)self completion];

  if (completion)
  {
    completion2 = [(CAMAnimationDelegate *)self completion];
    completion2[2](completion2, finishedCopy);
  }
}

@end