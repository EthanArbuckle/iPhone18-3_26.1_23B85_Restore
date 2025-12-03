@interface UIButton(MUActivityObserving)
- (void)beginAnimatingActivityIndicator;
- (void)endAnimatingActivityIndicatorWithError:()MUActivityObserving;
@end

@implementation UIButton(MUActivityObserving)

- (void)endAnimatingActivityIndicatorWithError:()MUActivityObserving
{
  configuration = [self configuration];
  [configuration setShowsActivityIndicator:0];
  [self setConfiguration:configuration];
}

- (void)beginAnimatingActivityIndicator
{
  configuration = [self configuration];
  [configuration setShowsActivityIndicator:1];
  [self setConfiguration:configuration];
}

@end