@interface FUScrollWheelScrollView
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (FUScrollWheel)scrollWheel;
@end

@implementation FUScrollWheelScrollView

- (BOOL)becomeFirstResponder
{
  v3 = [(FUScrollWheelScrollView *)self scrollWheel];
  v4 = [v3 isActive];

  if (!v4)
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
  v3 = [(FUScrollWheelScrollView *)&v6 resignFirstResponder];
  if (v3)
  {
    v4 = [(FUScrollWheelScrollView *)self scrollWheel];
    [v4 setIsActive:0];
  }

  return v3;
}

- (FUScrollWheel)scrollWheel
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollWheel);

  return WeakRetained;
}

@end