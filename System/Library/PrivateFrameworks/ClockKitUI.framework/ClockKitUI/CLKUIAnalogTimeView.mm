@interface CLKUIAnalogTimeView
- (CLKUIAnalogTimeView)initWithDevice:(id)device clockTimer:(id)timer;
- (void)layoutSubviews;
- (void)setAodTransform:(CGAffineTransform *)transform;
- (void)setConfiguration:(id)configuration;
- (void)setOverrideDate:(id)date;
- (void)setState:(unint64_t)state;
- (void)traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
@end

@implementation CLKUIAnalogTimeView

- (CLKUIAnalogTimeView)initWithDevice:(id)device clockTimer:(id)timer
{
  deviceCopy = device;
  v16.receiver = self;
  v16.super_class = CLKUIAnalogTimeView;
  v7 = [(CLKUITimeView *)&v16 initWithDevice:deviceCopy clockTimer:timer];
  if (v7)
  {
    v8 = objc_alloc([objc_opt_class() _handsViewClass]);
    ___LayoutConstants_block_invoke_3(deviceCopy, v14);
    v9 = [v8 initWithDiameter:deviceCopy forDevice:v15];
    handsView = v7->_handsView;
    v7->_handsView = v9;

    hourHandView = [(CLKUIAnalogHandsView *)v7->_handsView hourHandView];
    [hourHandView setEnableBackgroundColorAction:1];

    minuteHandView = [(CLKUIAnalogHandsView *)v7->_handsView minuteHandView];
    [minuteHandView setEnableBackgroundColorAction:1];

    [(CLKUIAnalogTimeView *)v7 addSubview:v7->_handsView];
  }

  return v7;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = CLKUIAnalogTimeView;
  [(CLKUIAnalogTimeView *)&v19 layoutSubviews];
  MEMORY[0x1E691D7B0]([(CLKUIAnalogTimeView *)self bounds]);
  [(CLKUIHandsView *)self->_handsView setCenter:?];
  if (self->_ticksView)
  {
    [(CLKUIAnalogTimeView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(CLKUITimeView *)self dialInset];
    v12 = v11;
    [(CLKUITimeView *)self dialInset];
    v14 = v13;
    v20.origin.x = v4;
    v20.origin.y = v6;
    v20.size.width = v8;
    v20.size.height = v10;
    v21 = CGRectInset(v20, v12, v14);
    [(CLKUIDualTimeAnalogTicksView *)self->_ticksView setFrame:v21.origin.x, v21.origin.y, v21.size.width, v21.size.height];
  }

  if (self->_backgroundView)
  {
    [(CLKUIAnalogTimeView *)self bounds];
    MidX = CGRectGetMidX(v22);
    layer = [(UIView *)self->_backgroundView layer];
    [layer setCornerRadius:MidX];

    [(CLKUIAnalogTimeView *)self bounds];
    [(UIView *)self->_backgroundView setFrame:?];
  }

  if (self->_inactiveBackgroundView)
  {
    [(CLKUIAnalogTimeView *)self bounds];
    v17 = CGRectGetMidX(v23);
    layer2 = [(UIView *)self->_inactiveBackgroundView layer];
    [layer2 setCornerRadius:v17];

    [(CLKUIAnalogTimeView *)self bounds];
    [(UIView *)self->_inactiveBackgroundView setFrame:?];
  }
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v43.receiver = self;
  v43.super_class = CLKUIAnalogTimeView;
  [(CLKUITimeView *)&v43 setConfiguration:configurationCopy];
  showsDialTicks = [configurationCopy showsDialTicks];
  ticksView = self->_ticksView;
  if (showsDialTicks)
  {
    if (ticksView)
    {
      [(CLKUIDualTimeAnalogTicksView *)ticksView setHidden:0];
    }

    else
    {
      v42 = 0;
      v40 = 0u;
      v41 = 0u;
      device = [(CLKUITimeView *)self device];
      ___LayoutConstants_block_invoke_3(device, &v40);

      v8 = v42;
      v9 = [CLKUIDualTimeAnalogTicksView alloc];
      v35[0] = xmmword_1E4A0A9F0;
      v35[1] = v41;
      v35[2] = v41;
      v36 = v8;
      v37 = v8;
      v38 = 1;
      v39[0] = 0;
      *(v39 + 3) = 0;
      v10 = [(CLKUIDualTimeAnalogTicksView *)v9 initWithConfiguration:v35];
      v11 = self->_ticksView;
      self->_ticksView = v10;

      [(CLKUIAnalogTimeView *)self insertSubview:self->_ticksView atIndex:0];
    }

    majorTickColor = [configurationCopy majorTickColor];
    v13 = majorTickColor;
    if (majorTickColor)
    {
      timeColor = majorTickColor;
    }

    else
    {
      timeColor = [(CLKUITimeView *)self timeColor];
    }

    v15 = timeColor;

    v16 = self->_ticksView;
    v17 = [v15 colorWithAlphaComponent:0.5];
    [(CLKUIDualTimeAnalogTicksView *)v16 setHourTickColor:v15 minuteTickColor:v17];
  }

  else if (ticksView)
  {
    [(CLKUIDualTimeAnalogTicksView *)ticksView setHidden:1];
  }

  backgroundView = [configurationCopy backgroundView];

  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
    if (backgroundView)
    {
      [(UIView *)backgroundView removeFromSuperview];
    }

    backgroundView2 = [configurationCopy backgroundView];
    v21 = self->_backgroundView;
    self->_backgroundView = backgroundView2;

    -[UIView setClipsToBounds:](self->_backgroundView, "setClipsToBounds:", [configurationCopy backgroundViewClipsToBounds]);
    [(CLKUIAnalogTimeView *)self insertSubview:self->_backgroundView atIndex:0];
  }

  else if (backgroundView)
  {
    [(UIView *)backgroundView removeFromSuperview];
    v22 = self->_backgroundView;
    self->_backgroundView = 0;
  }

  inactiveBackgroundView = [configurationCopy inactiveBackgroundView];

  inactiveBackgroundView = self->_inactiveBackgroundView;
  if (inactiveBackgroundView)
  {
    if (inactiveBackgroundView)
    {
      [(UIView *)inactiveBackgroundView removeFromSuperview];
    }

    inactiveBackgroundView2 = [configurationCopy inactiveBackgroundView];
    v26 = self->_inactiveBackgroundView;
    self->_inactiveBackgroundView = inactiveBackgroundView2;

    -[UIView setClipsToBounds:](self->_inactiveBackgroundView, "setClipsToBounds:", [configurationCopy inactiveBackgroundViewClipsToBounds]);
    [(UIView *)self->_inactiveBackgroundView setAlpha:0.0];
    [(CLKUIAnalogTimeView *)self insertSubview:self->_inactiveBackgroundView atIndex:0];
  }

  else if (inactiveBackgroundView)
  {
    [(UIView *)inactiveBackgroundView removeFromSuperview];
    v27 = self->_inactiveBackgroundView;
    self->_inactiveBackgroundView = 0;
  }

  -[CLKUIAnalogHandsView setSecondHandDisabled:](self->_handsView, "setSecondHandDisabled:", [configurationCopy secondHandDisabled]);
  secondHandColor = [configurationCopy secondHandColor];
  hourMinuteHandInlayColor = [configurationCopy hourMinuteHandInlayColor];
  hourMinuteHandOutlineColor = [configurationCopy hourMinuteHandOutlineColor];
  [(CLKUIAnalogHandsView *)self->_handsView applySecondHandColor:secondHandColor];
  [(CLKUIAnalogHandsView *)self->_handsView setInlayColor:hourMinuteHandInlayColor];
  minuteHandView = [(CLKUIAnalogHandsView *)self->_handsView minuteHandView];
  [minuteHandView setColor:hourMinuteHandOutlineColor];

  hourHandView = [(CLKUIAnalogHandsView *)self->_handsView hourHandView];
  [hourHandView setColor:hourMinuteHandOutlineColor];

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  secondHandView = [(CLKUIAnalogHandsView *)self->_handsView secondHandView];
  [secondHandView setHandDotColor:blackColor];
}

- (void)setState:(unint64_t)state
{
  v6.receiver = self;
  v6.super_class = CLKUIAnalogTimeView;
  [(CLKUITimeView *)&v6 setState:?];
  if (state)
  {
    if (state != 1)
    {
      return;
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  [(CLKUIAnalogHandsView *)self->_handsView setFrozen:v5];
}

- (void)setOverrideDate:(id)date
{
  v5.receiver = self;
  v5.super_class = CLKUIAnalogTimeView;
  dateCopy = date;
  [(CLKUITimeView *)&v5 setOverrideDate:dateCopy];
  [(CLKUIHandsView *)self->_handsView setOverrideDate:dateCopy, v5.receiver, v5.super_class];
}

- (void)setAodTransform:(CGAffineTransform *)transform
{
  v10.receiver = self;
  v10.super_class = CLKUIAnalogTimeView;
  v5 = *&transform->c;
  v7 = *&transform->a;
  v8 = v5;
  v9 = *&transform->tx;
  [(CLKUITimeView *)&v10 setAodTransform:&v7];
  v6 = *&transform->c;
  v7 = *&transform->a;
  v8 = v6;
  v9 = *&transform->tx;
  [(CLKUIAnalogTimeView *)self setTransform:&v7];
}

- (void)traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  collectionCopy = collection;
  traitCollection = [(CLKUIAnalogTimeView *)self traitCollection];
  activeAppearance = [traitCollection activeAppearance];
  activeAppearance2 = [collectionCopy activeAppearance];

  if (activeAppearance != activeAppearance2)
  {
    traitCollection2 = [(CLKUIAnalogTimeView *)self traitCollection];
    activeAppearance3 = [traitCollection2 activeAppearance];

    if (activeAppearance3)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = 0.0;
    }

    configuration = [(CLKUITimeView *)self configuration];
    v28 = configuration;
    if (activeAppearance3)
    {
      hourMinuteHandInlayColor = [configuration hourMinuteHandInlayColor];
      hourMinuteHandOutlineColor = [v28 hourMinuteHandOutlineColor];
      blackColor = hourMinuteHandInlayColor;
      inactiveHourMinuteHandInlayColor = blackColor;
    }

    else
    {
      inactiveHourMinuteHandInlayColor = [configuration inactiveHourMinuteHandInlayColor];
      hourMinuteHandOutlineColor = [v28 inactiveHourMinuteHandOutlineColor];
      blackColor = [MEMORY[0x1E69DC888] blackColor];
    }

    [(CLKUIAnalogHandsView *)self->_handsView setInlayColor:inactiveHourMinuteHandInlayColor];
    minuteHandView = [(CLKUIAnalogHandsView *)self->_handsView minuteHandView];
    [minuteHandView setColor:hourMinuteHandOutlineColor];

    hourHandView = [(CLKUIAnalogHandsView *)self->_handsView hourHandView];
    [hourHandView setColor:hourMinuteHandOutlineColor];

    minuteHandView2 = [(CLKUIAnalogHandsView *)self->_handsView minuteHandView];
    [minuteHandView2 setHandDotColor:blackColor];

    secondHandView = [(CLKUIAnalogHandsView *)self->_handsView secondHandView];
    [secondHandView setAlpha:v11];

    if (self->_ticksView)
    {
      if (activeAppearance3)
      {
        majorTickColor = [v28 majorTickColor];
        v22 = majorTickColor;
        if (majorTickColor)
        {
          timeColor = majorTickColor;
        }

        else
        {
          timeColor = [(CLKUITimeView *)self timeColor];
        }

        inactiveMajorTickColor = timeColor;
      }

      else
      {
        inactiveMajorTickColor = [v28 inactiveMajorTickColor];
      }

      ticksView = self->_ticksView;
      v26 = [inactiveMajorTickColor colorWithAlphaComponent:0.5];
      [(CLKUIDualTimeAnalogTicksView *)ticksView setHourTickColor:inactiveMajorTickColor minuteTickColor:v26];
    }

    inactiveBackgroundView = self->_inactiveBackgroundView;
    if (inactiveBackgroundView)
    {
      [(UIView *)inactiveBackgroundView setAlpha:1.0 - v11];
      [(UIView *)self->_backgroundView setAlpha:v11];
    }
  }
}

@end