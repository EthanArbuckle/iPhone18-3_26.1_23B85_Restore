@interface CLKUIDigitalClockView
- (CLKUIDigitalClockView)initWithDevice:(id)device clockTimer:(id)timer;
- (NSArray)fontScaleFactorForNumberSystemOverridesWithTicks;
- (NSArray)fontScaleFactorForNumberSystemOverridesWithoutTicks;
- (id)_fontForConfiguration:(id)configuration;
- (void)layoutSubviews;
- (void)setAodTransform:(CGAffineTransform *)transform;
- (void)setConfiguration:(id)configuration;
- (void)setOverrideDate:(id)date;
- (void)setState:(unint64_t)state;
- (void)traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
@end

@implementation CLKUIDigitalClockView

- (CLKUIDigitalClockView)initWithDevice:(id)device clockTimer:(id)timer
{
  deviceCopy = device;
  timerCopy = timer;
  v14.receiver = self;
  v14.super_class = CLKUIDigitalClockView;
  v8 = [(CLKUITimeView *)&v14 initWithDevice:deviceCopy clockTimer:timerCopy];
  if (v8)
  {
    v9 = [[CLKUITimeLabel alloc] initWithTimeLabelOptions:1 forDevice:deviceCopy clockTimer:timerCopy];
    timeLabel = v8->_timeLabel;
    v8->_timeLabel = v9;

    v11 = [[CLKUITimeLabel alloc] initWithTimeLabelOptions:1 forDevice:deviceCopy clockTimer:timerCopy];
    inactiveTimeLabel = v8->_inactiveTimeLabel;
    v8->_inactiveTimeLabel = v11;

    [(CLKUITimeLabel *)v8->_inactiveTimeLabel setAlpha:0.0];
    [(CLKUIDigitalClockView *)v8 addSubview:v8->_timeLabel];
    [(CLKUIDigitalClockView *)v8 addSubview:v8->_inactiveTimeLabel];
  }

  return v8;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = CLKUIDigitalClockView;
  [(CLKUIDigitalClockView *)&v15 layoutSubviews];
  MEMORY[0x1E691D7B0]([(CLKUIDigitalClockView *)self bounds]);
  [(CLKUITimeLabel *)self->_timeLabel setCenter:?];
  [(CLKUITimeLabel *)self->_timeLabel frame];
  [(CLKUITimeLabel *)self->_inactiveTimeLabel setFrame:?];
  if (self->_ticksView)
  {
    [(CLKUIDigitalClockView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(CLKUITimeView *)self dialInset];
    v12 = v11;
    [(CLKUITimeView *)self dialInset];
    v14 = v13;
    v16.origin.x = v4;
    v16.origin.y = v6;
    v16.size.width = v8;
    v16.size.height = v10;
    v17 = CGRectInset(v16, v12, v14);
    [(CLKUIDualTimeDigitalTicksView *)self->_ticksView setFrame:v17.origin.x, v17.origin.y, v17.size.width, v17.size.height];
  }
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v33.receiver = self;
  v33.super_class = CLKUIDigitalClockView;
  [(CLKUITimeView *)&v33 setConfiguration:configurationCopy];
  device = [(CLKUITimeView *)self device];
  ___LayoutConstants_block_invoke_0(device, device);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  ticksView = self->_ticksView;
  if (ticksView)
  {
    [(CLKUIDualTimeDigitalTicksView *)ticksView setFrozen:0];
    [(CLKUIDualTimeDigitalTicksView *)self->_ticksView startAnimation];
    [(CLKUIDualTimeDigitalTicksView *)self->_ticksView setHidden:0];
  }

  else
  {
    v13 = [CLKUIDualTimeDigitalTicksView alloc];
    clockTimer = [(CLKUITimeView *)self clockTimer];
    v32[0] = v7;
    v32[1] = v9;
    v32[2] = v7;
    v32[3] = v9;
    v32[4] = v11;
    v32[5] = v11;
    v15 = [(CLKUIDualTimeDigitalTicksView *)v13 initWithConfiguration:v32 timer:clockTimer];
    v16 = self->_ticksView;
    self->_ticksView = v15;

    [(CLKUIDualTimeDigitalTicksView *)self->_ticksView startAnimation];
    [(CLKUIDigitalClockView *)self addSubview:self->_ticksView];
  }

  activeTickColor = [configurationCopy activeTickColor];
  v18 = activeTickColor;
  if (activeTickColor)
  {
    timeColor = activeTickColor;
  }

  else
  {
    timeColor = [(CLKUITimeView *)self timeColor];
  }

  v20 = timeColor;

  [(CLKUIDualTimeDigitalTicksView *)self->_ticksView setActiveTickColor:v20];
  v21 = [v20 colorWithAlphaComponent:0.5];
  [(CLKUIDualTimeDigitalTicksView *)self->_ticksView setInactiveTickColor:v21];

  [(CLKUIDualTimeDigitalTicksView *)self->_ticksView refreshTicks];
  forcedNumberSystem = [configurationCopy forcedNumberSystem];
  v23 = forcedNumberSystem;
  v24 = &unk_1F5E96C48;
  if (forcedNumberSystem)
  {
    v24 = forcedNumberSystem;
  }

  v25 = v24;

  unsignedIntegerValue = [v25 unsignedIntegerValue];
  [(CLKUITimeLabel *)self->_timeLabel setForcedNumberSystem:unsignedIntegerValue];
  [(CLKUITimeLabel *)self->_inactiveTimeLabel setForcedNumberSystem:unsignedIntegerValue];
  v27 = [(CLKUIDigitalClockView *)self _fontForConfiguration:configurationCopy];
  [(CLKUITimeLabel *)self->_timeLabel setFont:v27];
  [(CLKUITimeLabel *)self->_inactiveTimeLabel setFont:v27];
  timeLabelColor = [configurationCopy timeLabelColor];
  if (timeLabelColor)
  {
    [(CLKUITimeLabel *)self->_timeLabel setTextColor:timeLabelColor];
  }

  else
  {
    timeColor2 = [(CLKUITimeView *)self timeColor];
    [(CLKUITimeLabel *)self->_timeLabel setTextColor:timeColor2];
  }

  timeLabelColor2 = [configurationCopy timeLabelColor];
  if (timeLabelColor2)
  {
    [(CLKUITimeLabel *)self->_inactiveTimeLabel setTextColor:timeLabelColor2];
  }

  else
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(CLKUITimeLabel *)self->_inactiveTimeLabel setTextColor:whiteColor];
  }
}

- (id)_fontForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  device = [(CLKUITimeView *)self device];
  v6 = ___LayoutConstants_block_invoke_0(device, device);

  forcedNumberSystem = [configurationCopy forcedNumberSystem];

  if (forcedNumberSystem)
  {
    forcedNumberSystem2 = [configurationCopy forcedNumberSystem];
    unsignedIntegerValue = [forcedNumberSystem2 unsignedIntegerValue];

    if (unsignedIntegerValue != -1)
    {
      fontScaleFactorForNumberSystemOverridesWithTicks = [(CLKUIDigitalClockView *)self fontScaleFactorForNumberSystemOverridesWithTicks];
      v11 = [fontScaleFactorForNumberSystemOverridesWithTicks count];

      if (unsignedIntegerValue < v11)
      {
        fontScaleFactorForNumberSystemOverridesWithTicks2 = [(CLKUIDigitalClockView *)self fontScaleFactorForNumberSystemOverridesWithTicks];
        v13 = [fontScaleFactorForNumberSystemOverridesWithTicks2 objectAtIndexedSubscript:unsignedIntegerValue];
        [v13 doubleValue];

        device2 = [(CLKUITimeView *)self device];
        CLKRoundForDevice();
        v6 = v15;
      }
    }
  }

  timeLabelFont = [configurationCopy timeLabelFont];
  v17 = [timeLabelFont fontWithSize:v6];

  if (!v17)
  {
    v17 = [MEMORY[0x1E695B518] systemFontOfSize:*MEMORY[0x1E69658A8] weight:v6 design:*MEMORY[0x1E69DB970]];
  }

  return v17;
}

- (void)setState:(unint64_t)state
{
  v7.receiver = self;
  v7.super_class = CLKUIDigitalClockView;
  [(CLKUITimeView *)&v7 setState:?];
  if (state == 1)
  {
    [(CLKUITimeLabel *)self->_timeLabel setPaused:1];
    [(CLKUITimeLabel *)self->_inactiveTimeLabel setPaused:1];
    ticksView = self->_ticksView;
    if (ticksView)
    {
      [(CLKUIDualTimeDigitalTicksView *)ticksView setFrozen:1];
      [(CLKUIDualTimeDigitalTicksView *)self->_ticksView stopAnimation];
    }
  }

  else if (!state)
  {
    [(CLKUITimeLabel *)self->_timeLabel setPaused:0];
    [(CLKUITimeLabel *)self->_inactiveTimeLabel setPaused:0];
    v5 = self->_ticksView;
    if (v5)
    {
      [(CLKUIDualTimeDigitalTicksView *)v5 setFrozen:0];
      [(CLKUIDualTimeDigitalTicksView *)self->_ticksView startAnimation];
    }
  }
}

- (void)setOverrideDate:(id)date
{
  v7.receiver = self;
  v7.super_class = CLKUIDigitalClockView;
  dateCopy = date;
  [(CLKUITimeView *)&v7 setOverrideDate:dateCopy];
  v5 = [(CLKUITimeLabel *)self->_timeLabel timeFormatter:v7.receiver];
  [v5 setOverrideDate:dateCopy];

  timeFormatter = [(CLKUITimeLabel *)self->_inactiveTimeLabel timeFormatter];
  [timeFormatter setOverrideDate:dateCopy];
}

- (void)setAodTransform:(CGAffineTransform *)transform
{
  v10.receiver = self;
  v10.super_class = CLKUIDigitalClockView;
  v5 = *&transform->c;
  v7 = *&transform->a;
  v8 = v5;
  v9 = *&transform->tx;
  [(CLKUITimeView *)&v10 setAodTransform:&v7];
  v6 = *&transform->c;
  v7 = *&transform->a;
  v8 = v6;
  v9 = *&transform->tx;
  [(CLKUIDigitalClockView *)self setTransform:&v7];
}

- (NSArray)fontScaleFactorForNumberSystemOverridesWithTicks
{
  fontScaleFactorForNumberSystemOverridesWithTicks = self->_fontScaleFactorForNumberSystemOverridesWithTicks;
  if (!fontScaleFactorForNumberSystemOverridesWithTicks)
  {
    self->_fontScaleFactorForNumberSystemOverridesWithTicks = &unk_1F5E971F8;

    fontScaleFactorForNumberSystemOverridesWithTicks = self->_fontScaleFactorForNumberSystemOverridesWithTicks;
  }

  return fontScaleFactorForNumberSystemOverridesWithTicks;
}

- (NSArray)fontScaleFactorForNumberSystemOverridesWithoutTicks
{
  fontScaleFactorForNumberSystemOverridesWithoutTicks = self->_fontScaleFactorForNumberSystemOverridesWithoutTicks;
  if (!fontScaleFactorForNumberSystemOverridesWithoutTicks)
  {
    self->_fontScaleFactorForNumberSystemOverridesWithoutTicks = &unk_1F5E97210;

    fontScaleFactorForNumberSystemOverridesWithoutTicks = self->_fontScaleFactorForNumberSystemOverridesWithoutTicks;
  }

  return fontScaleFactorForNumberSystemOverridesWithoutTicks;
}

- (void)traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  collectionCopy = collection;
  traitCollection = [(CLKUIDigitalClockView *)self traitCollection];
  activeAppearance = [traitCollection activeAppearance];
  activeAppearance2 = [collectionCopy activeAppearance];

  if (activeAppearance != activeAppearance2)
  {
    traitCollection2 = [(CLKUIDigitalClockView *)self traitCollection];
    v10 = [traitCollection2 activeAppearance] ? 1.0 : 0.0;

    [(CLKUITimeLabel *)self->_timeLabel setAlpha:v10];
    [(CLKUITimeLabel *)self->_inactiveTimeLabel setAlpha:1.0 - v10];
    ticksView = self->_ticksView;
    if (ticksView)
    {

      [(CLKUIDualTimeDigitalTicksView *)ticksView setAlpha:v10];
    }
  }
}

@end