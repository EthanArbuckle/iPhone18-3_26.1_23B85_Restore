@interface UIButton(MUActivityObserving)
- (void)beginAnimatingActivityIndicator;
- (void)endAnimatingActivityIndicatorWithError:()MUActivityObserving;
@end

@implementation UIButton(MUActivityObserving)

- (void)endAnimatingActivityIndicatorWithError:()MUActivityObserving
{
  v2 = [a1 configuration];
  [v2 setShowsActivityIndicator:0];
  [a1 setConfiguration:v2];
}

- (void)beginAnimatingActivityIndicator
{
  v2 = [a1 configuration];
  [v2 setShowsActivityIndicator:1];
  [a1 setConfiguration:v2];
}

@end