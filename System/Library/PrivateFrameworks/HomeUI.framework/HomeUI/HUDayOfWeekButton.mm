@interface HUDayOfWeekButton
- (void)layoutSubviews;
@end

@implementation HUDayOfWeekButton

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = HUDayOfWeekButton;
  [(HUDayOfWeekButton *)&v5 layoutSubviews];
  [(HUDayOfWeekButton *)self bounds];
  v3 = CGRectGetWidth(v6) * 0.5;
  layer = [(HUDayOfWeekButton *)self layer];
  [layer setCornerRadius:v3];
}

@end