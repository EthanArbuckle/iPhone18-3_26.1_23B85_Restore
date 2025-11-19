@interface VibrancyCircleBackgroundView
- (void)layoutSubviews;
@end

@implementation VibrancyCircleBackgroundView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for VibrancyCircleBackgroundView();
  v2 = v5.receiver;
  [(VibrancyCircleBackgroundView *)&v5 layoutSubviews];
  v3 = [v2 layer];
  [v2 bounds];
  [v3 setCornerRadius_];
}

@end