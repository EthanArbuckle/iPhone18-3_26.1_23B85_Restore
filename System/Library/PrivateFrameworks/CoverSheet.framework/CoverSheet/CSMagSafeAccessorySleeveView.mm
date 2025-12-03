@interface CSMagSafeAccessorySleeveView
- (CGRect)_chargingViewFrame;
- (CGRect)visibleWindowFrame;
- (CSMagSafeAccessorySleeveView)initWithFrame:(CGRect)frame;
- (id)_batteryChargingViewWithChargingInfo:(id)info;
- (void)_dismissAnimation;
- (void)_presentAnimation;
- (void)_runAnimationWithType:(unint64_t)type;
- (void)layoutSubviews;
- (void)performAnimation:(unint64_t)animation completionHandler:(id)handler;
- (void)setCharging:(BOOL)charging;
- (void)setDateView:(id)view;
- (void)setLegibilitySettings:(id)settings;
- (void)setSecondaryDateView:(id)view;
- (void)setVisibleWindowFrame:(CGRect)frame;
- (void)transitionChargingViewVisible:(BOOL)visible chargingInfo:(id)info;
- (void)updateDateViews;
@end

@implementation CSMagSafeAccessorySleeveView

- (CSMagSafeAccessorySleeveView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v20.receiver = self;
  v20.super_class = CSMagSafeAccessorySleeveView;
  v7 = [(CSMagSafeAccessoryView *)&v20 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    layer = [(CSMagSafeAccessorySleeveView *)v7 layer];
    [layer setAllowsGroupBlending:0];

    v10 = objc_opt_new();
    backgroundColorLayer = v8->_backgroundColorLayer;
    v8->_backgroundColorLayer = v10;

    [(CALayer *)v8->_backgroundColorLayer setFrame:x, y, width, height];
    [(CALayer *)v8->_backgroundColorLayer setOpacity:0.0];
    [(CALayer *)v8->_backgroundColorLayer setAllowsGroupOpacity:1];
    [(CALayer *)v8->_backgroundColorLayer setAllowsGroupBlending:1];
    v12 = [MEMORY[0x277D755B8] systemImageNamed:@"bolt.fill"];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v14 = [v12 _flatImageWithColor:whiteColor];

    v15 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:1 scale:32.0];
    v16 = [v14 imageWithRenderingMode:2];

    v17 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v16];
    chargingBoltImageView = v8->_chargingBoltImageView;
    v8->_chargingBoltImageView = v17;

    [(UIImageView *)v8->_chargingBoltImageView setPreferredSymbolConfiguration:v15];
    v8->_charging = 0;
  }

  return v8;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = CSMagSafeAccessorySleeveView;
  [(CSMagSafeAccessoryView *)&v21 layoutSubviews];
  [(CSMagSafeAccessorySleeveView *)self updateDateViews];
  superview = [(CSMagSafeAccessorySleeveView *)self superview];
  [superview bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (self->_charging)
  {
    [(UIImageView *)self->_chargingBoltImageView sizeToFit];
    [(UIImageView *)self->_chargingBoltImageView frame];
    [(UIImageView *)self->_chargingBoltImageView setFrame:self->_visibleWindowFrame.origin.x + 15.0, self->_visibleWindowFrame.origin.y + (self->_visibleWindowFrame.size.height - v12) * 0.5];
    v13 = CSMagSafePowerStatusForBatteryState([(BCBatteryDevice *)self->_batteryDevice isLowPowerModeActive], [(BCBatteryDevice *)self->_batteryDevice isCharging], [(BCBatteryDevice *)self->_batteryDevice percentCharge]);
    v14 = CSRingColorForPowerStatus(v13);
    [(UIImageView *)self->_chargingBoltImageView setTintColor:v14];
  }

  [(CALayer *)self->_backgroundColorLayer setBounds:v5, v7, v9, v11];
  backgroundColorLayer = self->_backgroundColorLayer;
  v16 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5C0]];
  [(CALayer *)backgroundColorLayer setCompositingFilter:v16];

  v17 = self->_backgroundColorLayer;
  [(CALayer *)v17 bounds];
  [(CSMagSafeAccessorySleeveView *)self bounds];
  UIRectCenteredIntegralRect();
  UIRectGetCenter();
  [(CALayer *)v17 setPosition:?];
  layer = [(CSMagSafeAccessorySleeveView *)self layer];
  v19 = self->_backgroundColorLayer;
  layer2 = [(SBFLockScreenDateView *)self->_dateView layer];
  [layer insertSublayer:v19 below:layer2];
}

- (void)updateDateViews
{
  [MEMORY[0x277D02CF0] tightFrameForElements:1];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  MidY = CGRectGetMidY(self->_visibleWindowFrame);
  v27.origin.x = v4;
  v27.origin.y = v6;
  v27.size.width = v8;
  v27.size.height = v10;
  v12 = MidY - CGRectGetMidY(v27);
  [(CSMagSafeAccessorySleeveView *)self bounds];
  v16 = v13;
  v17 = v14;
  v18 = v15;
  v20 = v12 + v19;
  dateView = self->_dateView;
  if (dateView)
  {
    [(SBFLockScreenDateView *)dateView setFrame:v13, v20, v14, v15];
    [(SBFLockScreenDateView *)self->_dateView setSubtitleHidden:1];
  }

  secondaryDateView = self->_secondaryDateView;
  if (secondaryDateView)
  {
    [(SBFLockScreenDateView *)secondaryDateView setFrame:v16, v20, v17, v18];
    [(SBFLockScreenDateView *)self->_secondaryDateView setSubtitleHidden:1];
    v23 = self->_secondaryDateView;
    legibilitySettings = [(CSMagSafeAccessoryView *)self legibilitySettings];
    [(SBFLockScreenDateView *)v23 setLegibilitySettings:legibilitySettings];

    layer = [(SBFLockScreenDateView *)self->_secondaryDateView layer];
    [layer setOpacity:0.0];
  }
}

- (void)setVisibleWindowFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_visibleWindowFrame = &self->_visibleWindowFrame;
  if (!CGRectEqualToRect(self->_visibleWindowFrame, frame))
  {
    p_visibleWindowFrame->origin.x = x;
    p_visibleWindowFrame->origin.y = y;
    p_visibleWindowFrame->size.width = width;
    p_visibleWindowFrame->size.height = height;

    [(CSMagSafeAccessorySleeveView *)self setNeedsLayout];
  }
}

- (void)setDateView:(id)view
{
  viewCopy = view;
  dateView = self->_dateView;
  if (dateView != viewCopy)
  {
    v7 = viewCopy;
    if (dateView)
    {
      [(SBFLockScreenDateView *)dateView removeFromSuperview];
    }

    objc_storeStrong(&self->_dateView, view);
    [(CSMagSafeAccessorySleeveView *)self addSubview:self->_dateView];
    dateView = [(CSMagSafeAccessorySleeveView *)self setNeedsLayout];
    viewCopy = v7;
  }

  MEMORY[0x2821F96F8](dateView, viewCopy);
}

- (void)setCharging:(BOOL)charging
{
  if (self->_charging != charging)
  {
    self->_charging = charging;
    batteryChargingView = self->_batteryChargingView;
    v5 = objc_opt_class();
    v6 = batteryChargingView;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    [(CSBatteryChargingView *)v8 updateForInternalBatteryDevice:self->_batteryDevice];
    if (self->_charging)
    {
      [(CSMagSafeAccessorySleeveView *)self addSubview:self->_chargingBoltImageView];
    }

    else
    {
      [(UIImageView *)self->_chargingBoltImageView removeFromSuperview];
    }

    [(CSMagSafeAccessorySleeveView *)self setNeedsLayout];
  }
}

- (void)transitionChargingViewVisible:(BOOL)visible chargingInfo:(id)info
{
  visibleCopy = visible;
  infoCopy = info;
  if (visibleCopy)
  {
    dateView = self->_dateView;
    if (dateView)
    {
      [(SBFLockScreenDateView *)dateView setHidden:1];
      [(SBFLockScreenDateView *)self->_secondaryDateView setHidden:1];
    }

    [(UIImageView *)self->_chargingBoltImageView setHidden:1];
    internalBatteryDevice = [infoCopy internalBatteryDevice];
    batteryDevice = self->_batteryDevice;
    self->_batteryDevice = internalBatteryDevice;

    v9 = [(CSMagSafeAccessorySleeveView *)self _batteryChargingViewWithChargingInfo:infoCopy];
    [(CSMagSafeAccessorySleeveView *)self addSubview:v9];
  }

  else
  {
    batteryChargingView = self->_batteryChargingView;
    if (batteryChargingView)
    {
      [(CSBatteryChargingView *)batteryChargingView removeFromSuperview];
      v11 = self->_batteryChargingView;
      self->_batteryChargingView = 0;
    }

    v12 = self->_dateView;
    if (v12)
    {
      [(SBFLockScreenDateView *)v12 setHidden:0];
      [(SBFLockScreenDateView *)self->_secondaryDateView setHidden:0];
    }

    [(UIImageView *)self->_chargingBoltImageView setHidden:0];
    v9 = self->_batteryDevice;
    self->_batteryDevice = 0;
  }

  [(CSMagSafeAccessorySleeveView *)self setNeedsLayout];
}

- (CGRect)_chargingViewFrame
{
  width = self->_visibleWindowFrame.size.width;
  height = self->_visibleWindowFrame.size.height;
  v4 = self->_visibleWindowFrame.origin.x + (width - width) * 0.5;
  v5 = height / 3.0;
  v6 = self->_visibleWindowFrame.origin.y + (height - height / 3.0) * 0.5;
  result.size.height = v5;
  result.size.width = width;
  result.origin.y = v6;
  result.origin.x = v4;
  return result;
}

- (id)_batteryChargingViewWithChargingInfo:(id)info
{
  batteryChargingView = self->_batteryChargingView;
  if (!batteryChargingView)
  {
    infoCopy = info;
    if ([infoCopy isChargingWithInternalWirelessAccessory])
    {
      v6 = +[CSMagSafeAccessoryConfiguration staticViewConfiguration];
      v7 = [CSBatteryChargingView batteryChargingRingViewWithConfiguration:v6];
      v8 = self->_batteryChargingView;
      self->_batteryChargingView = v7;
    }

    else
    {
      v9 = [CSBatteryChargingView horizontalBatteryChargingViewForBatterySize:1 includeBoltImage:50.0, 20.0];
      v6 = self->_batteryChargingView;
      self->_batteryChargingView = v9;
    }

    v10 = self->_batteryChargingView;
    [(CSMagSafeAccessorySleeveView *)self _chargingViewFrame];
    [(CSBatteryChargingView *)v10 setFrame:?];
    [(CSBatteryChargingView *)self->_batteryChargingView setBatteryVisible:1];
    v11 = self->_batteryChargingView;
    v12 = [MEMORY[0x277D760A8] sharedInstanceForStyle:1];
    [(CSBatteryChargingView *)v11 setLegibilitySettings:v12];

    [(CSBatteryChargingView *)self->_batteryChargingView setAutoresizingMask:18];
    internalBatteryDevice = [infoCopy internalBatteryDevice];

    percentCharge = [internalBatteryDevice percentCharge];
    v15 = [MEMORY[0x277CF0DA8] localizedBatteryDetailTextForBatteryLevel:percentCharge];
    [(CSBatteryChargingView *)self->_batteryChargingView setPrimaryBatteryText:v15 forBattery:internalBatteryDevice];

    batteryChargingView = self->_batteryChargingView;
  }

  return batteryChargingView;
}

- (void)setLegibilitySettings:(id)settings
{
  v7.receiver = self;
  v7.super_class = CSMagSafeAccessorySleeveView;
  settingsCopy = settings;
  [(CSMagSafeAccessoryView *)&v7 setLegibilitySettings:settingsCopy];
  backgroundColorLayer = self->_backgroundColorLayer;
  secondaryColor = [settingsCopy secondaryColor];

  -[CALayer setBackgroundColor:](backgroundColorLayer, "setBackgroundColor:", [secondaryColor CGColor]);
}

- (void)setSecondaryDateView:(id)view
{
  viewCopy = view;
  secondaryDateView = self->_secondaryDateView;
  if (secondaryDateView != viewCopy)
  {
    v7 = viewCopy;
    if (secondaryDateView)
    {
      [(SBFLockScreenDateView *)secondaryDateView removeFromSuperview];
    }

    objc_storeStrong(&self->_secondaryDateView, view);
    [(CSMagSafeAccessorySleeveView *)self addSubview:self->_secondaryDateView];
    secondaryDateView = [(CSMagSafeAccessorySleeveView *)self setNeedsLayout];
    viewCopy = v7;
  }

  MEMORY[0x2821F96F8](secondaryDateView, viewCopy);
}

- (void)_presentAnimation
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = CACurrentMediaTime();
  v4 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v4 setBeginTime:v3 + 0.0];
  [v4 setKeyTimes:&unk_28307A0B8];
  [v4 setValues:&unk_28307A0D0];
  [v4 setDuration:1.44];
  [v4 setRemovedOnCompletion:0];
  v5 = *MEMORY[0x277CDA238];
  [v4 setFillMode:*MEMORY[0x277CDA238]];
  v6 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  v15[0] = v6;
  v7 = *MEMORY[0x277CDA7C8];
  v8 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
  v15[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  [v4 setTimingFunctions:v9];

  [(CALayer *)self->_backgroundColorLayer addAnimation:v4 forKey:@"opacity"];
  v10 = v3 + 0.34;
  [v4 setBeginTime:v10];
  [v4 setKeyTimes:&unk_28307A0E8];
  [v4 setValues:&unk_28307A100];
  [v4 setDuration:0.88];
  layer = [(SBFLockScreenDateView *)self->_secondaryDateView layer];
  [layer addAnimation:v4 forKey:@"opacity"];

  v12 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v12 setBeginTime:v10];
  [v12 setKeyTimes:&unk_28307A118];
  [v12 setValues:&unk_28307A130];
  [v12 setRemovedOnCompletion:0];
  [v12 setFillMode:v5];
  [v12 setDuration:0.88];
  v13 = [MEMORY[0x277CD9EF8] functionWithName:v7];
  [v4 setTimingFunction:v13];

  layer2 = [(SBFLockScreenDateView *)self->_dateView layer];
  [layer2 addAnimation:v12 forKey:@"opacity"];
}

- (void)_dismissAnimation
{
  v7 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v7 setKeyTimes:&unk_28307A148];
  [v7 setValues:&unk_28307A160];
  [v7 setDuration:0.44];
  [v7 setRemovedOnCompletion:0];
  [v7 setFillMode:*MEMORY[0x277CDA238]];
  v3 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
  [v7 setTimingFunction:v3];

  [(CALayer *)self->_backgroundColorLayer addAnimation:v7 forKey:@"opacity"];
  layer = [(SBFLockScreenDateView *)self->_secondaryDateView layer];
  [layer addAnimation:v7 forKey:@"fadeOut"];

  v5 = [v7 copy];
  [v5 setValues:&unk_28307A178];
  layer2 = [(SBFLockScreenDateView *)self->_dateView layer];
  [layer2 addAnimation:v5 forKey:@"fadeIn"];
}

- (void)_runAnimationWithType:(unint64_t)type
{
  if (type == 1)
  {
    [(CSMagSafeAccessorySleeveView *)self _dismissAnimation];
  }

  else if (!type)
  {
    [(CSMagSafeAccessorySleeveView *)self _presentAnimation];
  }
}

- (void)performAnimation:(unint64_t)animation completionHandler:(id)handler
{
  handlerCopy = handler;
  [MEMORY[0x277CD9FF0] begin];
  v7 = MEMORY[0x277CD9FF0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__CSMagSafeAccessorySleeveView_performAnimation_completionHandler___block_invoke;
  v9[3] = &unk_27838BB18;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [v7 setCompletionBlock:v9];
  [(CSMagSafeAccessorySleeveView *)self _runAnimationWithType:animation];
  [MEMORY[0x277CD9FF0] commit];
}

uint64_t __67__CSMagSafeAccessorySleeveView_performAnimation_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (CGRect)visibleWindowFrame
{
  x = self->_visibleWindowFrame.origin.x;
  y = self->_visibleWindowFrame.origin.y;
  width = self->_visibleWindowFrame.size.width;
  height = self->_visibleWindowFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end