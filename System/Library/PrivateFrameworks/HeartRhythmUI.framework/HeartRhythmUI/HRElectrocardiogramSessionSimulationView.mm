@interface HRElectrocardiogramSessionSimulationView
- (HRElectrocardiogramSessionSimulationView)initWithFrame:(CGRect)frame isLargeDevice:(BOOL)device;
- (double)cornerRadius;
- (void)_setUpUI;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)radius;
- (void)setTimeRemaining:(double)remaining;
@end

@implementation HRElectrocardiogramSessionSimulationView

- (HRElectrocardiogramSessionSimulationView)initWithFrame:(CGRect)frame isLargeDevice:(BOOL)device
{
  deviceCopy = device;
  v10.receiver = self;
  v10.super_class = HRElectrocardiogramSessionSimulationView;
  v5 = [(HRElectrocardiogramSessionSimulationView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_isLargeDevice = deviceCopy;
    v7 = [[HRElectrocardiogramSessionScreenView alloc] initWithLargeDevice:deviceCopy];
    screenView = v6->_screenView;
    v6->_screenView = v7;

    [(HRElectrocardiogramSessionSimulationView *)v6 _setUpUI];
  }

  return v6;
}

- (void)_setUpUI
{
  screenView = [(HRElectrocardiogramSessionSimulationView *)self screenView];
  [(HRElectrocardiogramSessionSimulationView *)self addSubview:screenView];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [(HRElectrocardiogramSessionSimulationView *)self setBackgroundColor:clearColor];

  screenView2 = [(HRElectrocardiogramSessionSimulationView *)self screenView];
  [screenView2 setClipsToBounds:1];
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = HRElectrocardiogramSessionSimulationView;
  [(HRElectrocardiogramSessionSimulationView *)&v22 layoutSubviews];
  [(HRElectrocardiogramSessionSimulationView *)self bounds];
  MidX = CGRectGetMidX(v23);
  [(HRElectrocardiogramSessionSimulationView *)self bounds];
  MidY = CGRectGetMidY(v24);
  screenView = [(HRElectrocardiogramSessionSimulationView *)self screenView];
  [screenView setCenter:{MidX, MidY}];

  screenView2 = [(HRElectrocardiogramSessionSimulationView *)self screenView];
  v7 = *(MEMORY[0x277CBF2C0] + 16);
  *&v21.a = *MEMORY[0x277CBF2C0];
  *&v21.c = v7;
  *&v21.tx = *(MEMORY[0x277CBF2C0] + 32);
  [screenView2 setTransform:&v21];

  [(HRElectrocardiogramSessionSimulationView *)self bounds];
  v9 = v8;
  screenView3 = [(HRElectrocardiogramSessionSimulationView *)self screenView];
  [screenView3 frame];
  v12 = v9 / v11;

  [(HRElectrocardiogramSessionSimulationView *)self bounds];
  v14 = v13;
  screenView4 = [(HRElectrocardiogramSessionSimulationView *)self screenView];
  [screenView4 frame];
  v17 = v14 / v16;

  if (v12 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v12;
  }

  CGAffineTransformMakeScale(&v20, v18, v18);
  screenView5 = [(HRElectrocardiogramSessionSimulationView *)self screenView];
  v21 = v20;
  [screenView5 setTransform:&v21];
}

- (double)cornerRadius
{
  screenView = [(HRElectrocardiogramSessionSimulationView *)self screenView];
  layer = [screenView layer];
  [layer cornerRadius];
  v5 = v4;

  return v5;
}

- (void)setCornerRadius:(double)radius
{
  screenView = [(HRElectrocardiogramSessionSimulationView *)self screenView];
  layer = [screenView layer];
  [layer setCornerRadius:radius];
}

- (void)setTimeRemaining:(double)remaining
{
  v4 = MEMORY[0x277CCABB8];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:remaining];
  v6 = [v4 localizedStringFromNumber:v5 numberStyle:1];
  screenView = [(HRElectrocardiogramSessionSimulationView *)self screenView];
  countdownValueLabel = [screenView countdownValueLabel];
  [countdownValueLabel setText:v6];

  v11 = HRUIECGLocalizedString(@"SESSION_COUNTDOWN_SECONDS_UNIT");
  screenView2 = [(HRElectrocardiogramSessionSimulationView *)self screenView];
  countdownUnitLabel = [screenView2 countdownUnitLabel];
  [countdownUnitLabel setText:v11];
}

@end