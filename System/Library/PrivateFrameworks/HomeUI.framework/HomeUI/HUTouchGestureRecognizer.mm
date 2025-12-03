@interface HUTouchGestureRecognizer
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation HUTouchGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  if ([began count] != 1)
  {
    [(HUTouchGestureRecognizer *)self setState:5];
  }

  [(HUTouchGestureRecognizer *)self setState:1];
}

@end