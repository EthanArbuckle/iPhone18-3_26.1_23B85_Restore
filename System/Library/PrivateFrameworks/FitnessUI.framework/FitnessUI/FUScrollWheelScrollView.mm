@interface FUScrollWheelScrollView
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (FUScrollWheel)scrollWheel;
@end

@implementation FUScrollWheelScrollView

- (BOOL)becomeFirstResponder
{
  scrollWheel = [(FUScrollWheelScrollView *)self scrollWheel];
  isActive = [scrollWheel isActive];

  if (!isActive)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = FUScrollWheelScrollView;
  return [(FUScrollWheelScrollView *)&v6 becomeFirstResponder];
}

- (BOOL)resignFirstResponder
{
  v6.receiver = self;
  v6.super_class = FUScrollWheelScrollView;
  resignFirstResponder = [(FUScrollWheelScrollView *)&v6 resignFirstResponder];
  if (resignFirstResponder)
  {
    scrollWheel = [(FUScrollWheelScrollView *)self scrollWheel];
    [scrollWheel setIsActive:0];
  }

  return resignFirstResponder;
}

- (FUScrollWheel)scrollWheel
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollWheel);

  return WeakRetained;
}

@end