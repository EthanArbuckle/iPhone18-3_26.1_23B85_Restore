@interface CPUIRoundedLabelButton
- (CPUIRoundedLabelButton)initWithFrame:(CGRect)frame;
@end

@implementation CPUIRoundedLabelButton

- (CPUIRoundedLabelButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CPUIRoundedLabelButton;
  v3 = [(CPUIMediaButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CPUIRoundedLabelButton *)v3 _setContinuousCornerRadius:8.0];
  }

  return v4;
}

@end