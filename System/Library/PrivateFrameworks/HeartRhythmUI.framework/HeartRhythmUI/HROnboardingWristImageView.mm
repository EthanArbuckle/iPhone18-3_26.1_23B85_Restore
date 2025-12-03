@interface HROnboardingWristImageView
- (HROnboardingWristImageView)initWithImageStyle:(int64_t)style;
- (id)_wristWatchContentViewForStyle:(int64_t)style;
- (void)layoutSubviews;
- (void)setContentMode:(int64_t)mode;
- (void)setTimeRemaining:(double)remaining;
@end

@implementation HROnboardingWristImageView

- (HROnboardingWristImageView)initWithImageStyle:(int64_t)style
{
  v17.receiver = self;
  v17.super_class = HROnboardingWristImageView;
  v4 = [(HROnboardingWristImageView *)&v17 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_watchImageStyle = style;
    v6 = objc_alloc(MEMORY[0x277D755E8]);
    hrui_ECGOnboardingWristImage = [MEMORY[0x277D755B8] hrui_ECGOnboardingWristImage];
    v8 = [v6 initWithImage:hrui_ECGOnboardingWristImage];
    wristWatchImageView = v5->_wristWatchImageView;
    v5->_wristWatchImageView = v8;

    wristWatchImageView = [(HROnboardingWristImageView *)v5 wristWatchImageView];
    [(HROnboardingWristImageView *)v5 addSubview:wristWatchImageView];

    wristWatchImageView2 = [(HROnboardingWristImageView *)v5 wristWatchImageView];
    [wristWatchImageView2 hk_alignConstraintsWithView:v5];

    wristWatchImageView3 = [(HROnboardingWristImageView *)v5 wristWatchImageView];
    image = [wristWatchImageView3 image];
    [image size];
    [(UIView *)v5 hrui_constraintAspectRatioFromSize:?];

    v14 = [(HROnboardingWristImageView *)v5 _wristWatchContentViewForStyle:style];
    wristWatchContentView = v5->_wristWatchContentView;
    v5->_wristWatchContentView = v14;

    [(HROnboardingWristImageView *)v5 addSubview:v5->_wristWatchContentView];
  }

  return v5;
}

- (id)_wristWatchContentViewForStyle:(int64_t)style
{
  if (style == 1)
  {
    v7 = [HRElectrocardiogramSessionSimulationView alloc];
    v6 = [(HRElectrocardiogramSessionSimulationView *)v7 initWithFrame:0 isLargeDevice:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(HRElectrocardiogramSessionSimulationView *)v6 setBackgroundColor:blackColor];
    goto LABEL_5;
  }

  if (!style)
  {
    v3 = MEMORY[0x277D755B8];
    v4 = HRHeartRhythmUIFrameworkBundle();
    blackColor = [v3 imageNamed:@"ECG-Setup" inBundle:v4 compatibleWithTraitCollection:0];

    v6 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:blackColor];
LABEL_5:

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = HROnboardingWristImageView;
  [(HROnboardingWristImageView *)&v19 layoutSubviews];
  hrui_currentDeviceHasLargePhoneScreen = [MEMORY[0x277D759A0] hrui_currentDeviceHasLargePhoneScreen];
  if (hrui_currentDeviceHasLargePhoneScreen)
  {
    v4 = 0.353;
  }

  else
  {
    v4 = 0.338;
  }

  if (hrui_currentDeviceHasLargePhoneScreen)
  {
    v5 = 0.233;
  }

  else
  {
    v5 = 0.232;
  }

  if (hrui_currentDeviceHasLargePhoneScreen)
  {
    v6 = 0.294;
  }

  else
  {
    v6 = 0.324;
  }

  if (hrui_currentDeviceHasLargePhoneScreen)
  {
    v7 = 0.473;
  }

  else
  {
    v7 = 0.475;
  }

  [(HROnboardingWristImageView *)self bounds];
  v9 = v4 * v8;
  v11 = v5 * v10;
  v12 = v6 * v8;
  v13 = v7 * v10;
  wristWatchContentView = [(HROnboardingWristImageView *)self wristWatchContentView];
  [wristWatchContentView setFrame:{v9, v11, v12, v13}];

  wristWatchContentView2 = [(HROnboardingWristImageView *)self wristWatchContentView];
  [wristWatchContentView2 layoutIfNeeded];

  wristWatchContentView3 = [(HROnboardingWristImageView *)self wristWatchContentView];
  layer = [wristWatchContentView3 layer];
  [layer setCornerRadius:20.0];

  wristWatchContentView4 = [(HROnboardingWristImageView *)self wristWatchContentView];
  [wristWatchContentView4 setClipsToBounds:1];
}

- (void)setContentMode:(int64_t)mode
{
  v6.receiver = self;
  v6.super_class = HROnboardingWristImageView;
  [(HROnboardingWristImageView *)&v6 setContentMode:?];
  wristWatchImageView = [(HROnboardingWristImageView *)self wristWatchImageView];
  [wristWatchImageView setContentMode:mode];
}

- (void)setTimeRemaining:(double)remaining
{
  wristWatchContentView = [(HROnboardingWristImageView *)self wristWatchContentView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    wristWatchContentView2 = [(HROnboardingWristImageView *)self wristWatchContentView];
    [wristWatchContentView2 setTimeRemaining:remaining];
  }
}

@end