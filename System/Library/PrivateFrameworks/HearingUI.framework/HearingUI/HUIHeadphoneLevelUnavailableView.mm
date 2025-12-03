@interface HUIHeadphoneLevelUnavailableView
- (HUIHeadphoneLevelUnavailableView)initWithFrame:(CGRect)frame;
@end

@implementation HUIHeadphoneLevelUnavailableView

- (HUIHeadphoneLevelUnavailableView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = HUIHeadphoneLevelUnavailableView;
  v3 = [(HUICCCapsuleButton *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = MEMORY[0x277D755B8];
    v5 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:23.0];
    v6 = [v4 systemImageNamed:@"headphones" withConfiguration:v5];

    v7 = HUICCImageViewWithImage(v6);
    [(HUICCCapsuleButton *)v3 setIconView:v7];

    titleLabel = [(HUICCCapsuleButton *)v3 titleLabel];
    v9 = hearingLocString();
    [titleLabel setText:v9];

    subtitleLabel = [(HUICCCapsuleButton *)v3 subtitleLabel];
    v11 = hearingLocString();
    [subtitleLabel setText:v11];
  }

  return v3;
}

@end