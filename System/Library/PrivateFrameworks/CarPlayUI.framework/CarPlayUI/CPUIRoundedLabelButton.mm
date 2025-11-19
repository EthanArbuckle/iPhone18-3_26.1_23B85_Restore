@interface CPUIRoundedLabelButton
- (CPUIRoundedLabelButton)initWithFrame:(CGRect)a3;
@end

@implementation CPUIRoundedLabelButton

- (CPUIRoundedLabelButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CPUIRoundedLabelButton;
  v3 = [(CPUIMediaButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CPUIRoundedLabelButton *)v3 _setContinuousCornerRadius:8.0];
  }

  return v4;
}

@end