@interface LACUILockView
- (LACUILockView)init;
- (void)_setup;
- (void)setColor:(id)a3;
- (void)setState:(int64_t)a3;
@end

@implementation LACUILockView

- (LACUILockView)init
{
  v16.receiver = self;
  v16.super_class = LACUILockView;
  v2 = [(LACUILockView *)&v16 initWithFrame:0.0, 0.0, 0.0, 0.0];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 URLForResource:@"lock" withExtension:@"ca"];

    v5 = [[LACUIPackagedView alloc] initWithURL:v4 error:0];
    packagedView = v2->_packagedView;
    v2->_packagedView = v5;

    v7 = [(LACUIPackagedView *)v2->_packagedView layer];
    v8 = LACUILayerFindSublayerWithName(v7, @"body");
    body = v2->_body;
    v2->_body = v8;

    v10 = [(LACUIPackagedView *)v2->_packagedView layer];
    v11 = LACUILayerFindSublayerWithName(v10, @"shackle");
    shackle = v2->_shackle;
    v2->_shackle = v11;

    v13 = [MEMORY[0x277D75348] whiteColor];
    color = v2->_color;
    v2->_color = v13;

    [(LACUILockView *)v2 _setup];
  }

  return v2;
}

- (void)setColor:(id)a3
{
  objc_storeStrong(&self->_color, a3);
  v9 = a3;
  body = self->_body;
  v6 = v9;
  -[CAShapeLayer setFillColor:](body, "setFillColor:", [v9 CGColor]);
  shackle = self->_shackle;
  v8 = v9;
  -[CAShapeLayer setStrokeColor:](shackle, "setStrokeColor:", [v9 CGColor]);
}

- (void)setState:(int64_t)a3
{
  self->_state = a3;
  objc_initWeak(&location, self);
  packagedView = self->_packagedView;
  if (a3 > 2)
  {
    v6 = @"Invalid";
  }

  else
  {
    v6 = off_27981E828[a3];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__LACUILockView_setState___block_invoke;
  v7[3] = &unk_27981E808;
  objc_copyWeak(v8, &location);
  v8[1] = a3;
  [(LACUIPackagedView *)packagedView setStateNamed:v6 animated:1 completion:v7];
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __26__LACUILockView_setState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(a1 + 40) == 2)
  {
    v3 = WeakRetained;
    [WeakRetained[53] setStateNamed:@"Locked" animated:0];
    WeakRetained = v3;
  }
}

- (void)_setup
{
  v18[4] = *MEMORY[0x277D85DE8];
  [(LACUILockView *)self addSubview:self->_packagedView];
  [(LACUIPackagedView *)self->_packagedView setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = MEMORY[0x277CCAAD0];
  v17 = [(LACUIPackagedView *)self->_packagedView leadingAnchor];
  v16 = [(LACUILockView *)self leadingAnchor];
  v15 = [v17 constraintEqualToAnchor:v16];
  v18[0] = v15;
  v3 = [(LACUIPackagedView *)self->_packagedView trailingAnchor];
  v4 = [(LACUILockView *)self trailingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  v18[1] = v5;
  v6 = [(LACUIPackagedView *)self->_packagedView topAnchor];
  v7 = [(LACUILockView *)self topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v18[2] = v8;
  v9 = [(LACUIPackagedView *)self->_packagedView bottomAnchor];
  v10 = [(LACUILockView *)self bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v18[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];
  [v14 activateConstraints:v12];

  v13 = *MEMORY[0x277D85DE8];
}

@end