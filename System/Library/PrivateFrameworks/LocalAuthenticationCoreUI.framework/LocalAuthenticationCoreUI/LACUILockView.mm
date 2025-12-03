@interface LACUILockView
- (LACUILockView)init;
- (void)_setup;
- (void)setColor:(id)color;
- (void)setState:(int64_t)state;
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

    layer = [(LACUIPackagedView *)v2->_packagedView layer];
    v8 = LACUILayerFindSublayerWithName(layer, @"body");
    body = v2->_body;
    v2->_body = v8;

    layer2 = [(LACUIPackagedView *)v2->_packagedView layer];
    v11 = LACUILayerFindSublayerWithName(layer2, @"shackle");
    shackle = v2->_shackle;
    v2->_shackle = v11;

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    color = v2->_color;
    v2->_color = whiteColor;

    [(LACUILockView *)v2 _setup];
  }

  return v2;
}

- (void)setColor:(id)color
{
  objc_storeStrong(&self->_color, color);
  colorCopy = color;
  body = self->_body;
  v6 = colorCopy;
  -[CAShapeLayer setFillColor:](body, "setFillColor:", [colorCopy CGColor]);
  shackle = self->_shackle;
  v8 = colorCopy;
  -[CAShapeLayer setStrokeColor:](shackle, "setStrokeColor:", [colorCopy CGColor]);
}

- (void)setState:(int64_t)state
{
  self->_state = state;
  objc_initWeak(&location, self);
  packagedView = self->_packagedView;
  if (state > 2)
  {
    v6 = @"Invalid";
  }

  else
  {
    v6 = off_27981E828[state];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__LACUILockView_setState___block_invoke;
  v7[3] = &unk_27981E808;
  objc_copyWeak(v8, &location);
  v8[1] = state;
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
  leadingAnchor = [(LACUIPackagedView *)self->_packagedView leadingAnchor];
  leadingAnchor2 = [(LACUILockView *)self leadingAnchor];
  v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v18[0] = v15;
  trailingAnchor = [(LACUIPackagedView *)self->_packagedView trailingAnchor];
  trailingAnchor2 = [(LACUILockView *)self trailingAnchor];
  v5 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v18[1] = v5;
  topAnchor = [(LACUIPackagedView *)self->_packagedView topAnchor];
  topAnchor2 = [(LACUILockView *)self topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v18[2] = v8;
  bottomAnchor = [(LACUIPackagedView *)self->_packagedView bottomAnchor];
  bottomAnchor2 = [(LACUILockView *)self bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v18[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];
  [v14 activateConstraints:v12];

  v13 = *MEMORY[0x277D85DE8];
}

@end