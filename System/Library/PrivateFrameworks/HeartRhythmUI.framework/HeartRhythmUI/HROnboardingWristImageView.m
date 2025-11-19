@interface HROnboardingWristImageView
- (HROnboardingWristImageView)initWithImageStyle:(int64_t)a3;
- (id)_wristWatchContentViewForStyle:(int64_t)a3;
- (void)layoutSubviews;
- (void)setContentMode:(int64_t)a3;
- (void)setTimeRemaining:(double)a3;
@end

@implementation HROnboardingWristImageView

- (HROnboardingWristImageView)initWithImageStyle:(int64_t)a3
{
  v17.receiver = self;
  v17.super_class = HROnboardingWristImageView;
  v4 = [(HROnboardingWristImageView *)&v17 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_watchImageStyle = a3;
    v6 = objc_alloc(MEMORY[0x277D755E8]);
    v7 = [MEMORY[0x277D755B8] hrui_ECGOnboardingWristImage];
    v8 = [v6 initWithImage:v7];
    wristWatchImageView = v5->_wristWatchImageView;
    v5->_wristWatchImageView = v8;

    v10 = [(HROnboardingWristImageView *)v5 wristWatchImageView];
    [(HROnboardingWristImageView *)v5 addSubview:v10];

    v11 = [(HROnboardingWristImageView *)v5 wristWatchImageView];
    [v11 hk_alignConstraintsWithView:v5];

    v12 = [(HROnboardingWristImageView *)v5 wristWatchImageView];
    v13 = [v12 image];
    [v13 size];
    [(UIView *)v5 hrui_constraintAspectRatioFromSize:?];

    v14 = [(HROnboardingWristImageView *)v5 _wristWatchContentViewForStyle:a3];
    wristWatchContentView = v5->_wristWatchContentView;
    v5->_wristWatchContentView = v14;

    [(HROnboardingWristImageView *)v5 addSubview:v5->_wristWatchContentView];
  }

  return v5;
}

- (id)_wristWatchContentViewForStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    v7 = [HRElectrocardiogramSessionSimulationView alloc];
    v6 = [(HRElectrocardiogramSessionSimulationView *)v7 initWithFrame:0 isLargeDevice:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v5 = [MEMORY[0x277D75348] blackColor];
    [(HRElectrocardiogramSessionSimulationView *)v6 setBackgroundColor:v5];
    goto LABEL_5;
  }

  if (!a3)
  {
    v3 = MEMORY[0x277D755B8];
    v4 = HRHeartRhythmUIFrameworkBundle();
    v5 = [v3 imageNamed:@"ECG-Setup" inBundle:v4 compatibleWithTraitCollection:0];

    v6 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v5];
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
  v3 = [MEMORY[0x277D759A0] hrui_currentDeviceHasLargePhoneScreen];
  if (v3)
  {
    v4 = 0.353;
  }

  else
  {
    v4 = 0.338;
  }

  if (v3)
  {
    v5 = 0.233;
  }

  else
  {
    v5 = 0.232;
  }

  if (v3)
  {
    v6 = 0.294;
  }

  else
  {
    v6 = 0.324;
  }

  if (v3)
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
  v14 = [(HROnboardingWristImageView *)self wristWatchContentView];
  [v14 setFrame:{v9, v11, v12, v13}];

  v15 = [(HROnboardingWristImageView *)self wristWatchContentView];
  [v15 layoutIfNeeded];

  v16 = [(HROnboardingWristImageView *)self wristWatchContentView];
  v17 = [v16 layer];
  [v17 setCornerRadius:20.0];

  v18 = [(HROnboardingWristImageView *)self wristWatchContentView];
  [v18 setClipsToBounds:1];
}

- (void)setContentMode:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = HROnboardingWristImageView;
  [(HROnboardingWristImageView *)&v6 setContentMode:?];
  v5 = [(HROnboardingWristImageView *)self wristWatchImageView];
  [v5 setContentMode:a3];
}

- (void)setTimeRemaining:(double)a3
{
  v5 = [(HROnboardingWristImageView *)self wristWatchContentView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(HROnboardingWristImageView *)self wristWatchContentView];
    [v7 setTimeRemaining:a3];
  }
}

@end