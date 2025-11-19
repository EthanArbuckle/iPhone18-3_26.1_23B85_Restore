@interface HRElectrocardiogramSessionSimulationView
- (HRElectrocardiogramSessionSimulationView)initWithFrame:(CGRect)a3 isLargeDevice:(BOOL)a4;
- (double)cornerRadius;
- (void)_setUpUI;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)a3;
- (void)setTimeRemaining:(double)a3;
@end

@implementation HRElectrocardiogramSessionSimulationView

- (HRElectrocardiogramSessionSimulationView)initWithFrame:(CGRect)a3 isLargeDevice:(BOOL)a4
{
  v4 = a4;
  v10.receiver = self;
  v10.super_class = HRElectrocardiogramSessionSimulationView;
  v5 = [(HRElectrocardiogramSessionSimulationView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_isLargeDevice = v4;
    v7 = [[HRElectrocardiogramSessionScreenView alloc] initWithLargeDevice:v4];
    screenView = v6->_screenView;
    v6->_screenView = v7;

    [(HRElectrocardiogramSessionSimulationView *)v6 _setUpUI];
  }

  return v6;
}

- (void)_setUpUI
{
  v3 = [(HRElectrocardiogramSessionSimulationView *)self screenView];
  [(HRElectrocardiogramSessionSimulationView *)self addSubview:v3];

  v4 = [MEMORY[0x277D75348] clearColor];
  [(HRElectrocardiogramSessionSimulationView *)self setBackgroundColor:v4];

  v5 = [(HRElectrocardiogramSessionSimulationView *)self screenView];
  [v5 setClipsToBounds:1];
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
  v5 = [(HRElectrocardiogramSessionSimulationView *)self screenView];
  [v5 setCenter:{MidX, MidY}];

  v6 = [(HRElectrocardiogramSessionSimulationView *)self screenView];
  v7 = *(MEMORY[0x277CBF2C0] + 16);
  *&v21.a = *MEMORY[0x277CBF2C0];
  *&v21.c = v7;
  *&v21.tx = *(MEMORY[0x277CBF2C0] + 32);
  [v6 setTransform:&v21];

  [(HRElectrocardiogramSessionSimulationView *)self bounds];
  v9 = v8;
  v10 = [(HRElectrocardiogramSessionSimulationView *)self screenView];
  [v10 frame];
  v12 = v9 / v11;

  [(HRElectrocardiogramSessionSimulationView *)self bounds];
  v14 = v13;
  v15 = [(HRElectrocardiogramSessionSimulationView *)self screenView];
  [v15 frame];
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
  v19 = [(HRElectrocardiogramSessionSimulationView *)self screenView];
  v21 = v20;
  [v19 setTransform:&v21];
}

- (double)cornerRadius
{
  v2 = [(HRElectrocardiogramSessionSimulationView *)self screenView];
  v3 = [v2 layer];
  [v3 cornerRadius];
  v5 = v4;

  return v5;
}

- (void)setCornerRadius:(double)a3
{
  v5 = [(HRElectrocardiogramSessionSimulationView *)self screenView];
  v4 = [v5 layer];
  [v4 setCornerRadius:a3];
}

- (void)setTimeRemaining:(double)a3
{
  v4 = MEMORY[0x277CCABB8];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v6 = [v4 localizedStringFromNumber:v5 numberStyle:1];
  v7 = [(HRElectrocardiogramSessionSimulationView *)self screenView];
  v8 = [v7 countdownValueLabel];
  [v8 setText:v6];

  v11 = HRUIECGLocalizedString(@"SESSION_COUNTDOWN_SECONDS_UNIT");
  v9 = [(HRElectrocardiogramSessionSimulationView *)self screenView];
  v10 = [v9 countdownUnitLabel];
  [v10 setText:v11];
}

@end