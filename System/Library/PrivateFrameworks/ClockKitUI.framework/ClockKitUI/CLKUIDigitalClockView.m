@interface CLKUIDigitalClockView
- (CLKUIDigitalClockView)initWithDevice:(id)a3 clockTimer:(id)a4;
- (NSArray)fontScaleFactorForNumberSystemOverridesWithTicks;
- (NSArray)fontScaleFactorForNumberSystemOverridesWithoutTicks;
- (id)_fontForConfiguration:(id)a3;
- (void)layoutSubviews;
- (void)setAodTransform:(CGAffineTransform *)a3;
- (void)setConfiguration:(id)a3;
- (void)setOverrideDate:(id)a3;
- (void)setState:(unint64_t)a3;
- (void)traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
@end

@implementation CLKUIDigitalClockView

- (CLKUIDigitalClockView)initWithDevice:(id)a3 clockTimer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CLKUIDigitalClockView;
  v8 = [(CLKUITimeView *)&v14 initWithDevice:v6 clockTimer:v7];
  if (v8)
  {
    v9 = [[CLKUITimeLabel alloc] initWithTimeLabelOptions:1 forDevice:v6 clockTimer:v7];
    timeLabel = v8->_timeLabel;
    v8->_timeLabel = v9;

    v11 = [[CLKUITimeLabel alloc] initWithTimeLabelOptions:1 forDevice:v6 clockTimer:v7];
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

- (void)setConfiguration:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = CLKUIDigitalClockView;
  [(CLKUITimeView *)&v33 setConfiguration:v4];
  v5 = [(CLKUITimeView *)self device];
  ___LayoutConstants_block_invoke_0(v5, v5);
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
    v14 = [(CLKUITimeView *)self clockTimer];
    v32[0] = v7;
    v32[1] = v9;
    v32[2] = v7;
    v32[3] = v9;
    v32[4] = v11;
    v32[5] = v11;
    v15 = [(CLKUIDualTimeDigitalTicksView *)v13 initWithConfiguration:v32 timer:v14];
    v16 = self->_ticksView;
    self->_ticksView = v15;

    [(CLKUIDualTimeDigitalTicksView *)self->_ticksView startAnimation];
    [(CLKUIDigitalClockView *)self addSubview:self->_ticksView];
  }

  v17 = [v4 activeTickColor];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = [(CLKUITimeView *)self timeColor];
  }

  v20 = v19;

  [(CLKUIDualTimeDigitalTicksView *)self->_ticksView setActiveTickColor:v20];
  v21 = [v20 colorWithAlphaComponent:0.5];
  [(CLKUIDualTimeDigitalTicksView *)self->_ticksView setInactiveTickColor:v21];

  [(CLKUIDualTimeDigitalTicksView *)self->_ticksView refreshTicks];
  v22 = [v4 forcedNumberSystem];
  v23 = v22;
  v24 = &unk_1F5E96C48;
  if (v22)
  {
    v24 = v22;
  }

  v25 = v24;

  v26 = [v25 unsignedIntegerValue];
  [(CLKUITimeLabel *)self->_timeLabel setForcedNumberSystem:v26];
  [(CLKUITimeLabel *)self->_inactiveTimeLabel setForcedNumberSystem:v26];
  v27 = [(CLKUIDigitalClockView *)self _fontForConfiguration:v4];
  [(CLKUITimeLabel *)self->_timeLabel setFont:v27];
  [(CLKUITimeLabel *)self->_inactiveTimeLabel setFont:v27];
  v28 = [v4 timeLabelColor];
  if (v28)
  {
    [(CLKUITimeLabel *)self->_timeLabel setTextColor:v28];
  }

  else
  {
    v29 = [(CLKUITimeView *)self timeColor];
    [(CLKUITimeLabel *)self->_timeLabel setTextColor:v29];
  }

  v30 = [v4 timeLabelColor];
  if (v30)
  {
    [(CLKUITimeLabel *)self->_inactiveTimeLabel setTextColor:v30];
  }

  else
  {
    v31 = [MEMORY[0x1E69DC888] whiteColor];
    [(CLKUITimeLabel *)self->_inactiveTimeLabel setTextColor:v31];
  }
}

- (id)_fontForConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(CLKUITimeView *)self device];
  v6 = ___LayoutConstants_block_invoke_0(v5, v5);

  v7 = [v4 forcedNumberSystem];

  if (v7)
  {
    v8 = [v4 forcedNumberSystem];
    v9 = [v8 unsignedIntegerValue];

    if (v9 != -1)
    {
      v10 = [(CLKUIDigitalClockView *)self fontScaleFactorForNumberSystemOverridesWithTicks];
      v11 = [v10 count];

      if (v9 < v11)
      {
        v12 = [(CLKUIDigitalClockView *)self fontScaleFactorForNumberSystemOverridesWithTicks];
        v13 = [v12 objectAtIndexedSubscript:v9];
        [v13 doubleValue];

        v14 = [(CLKUITimeView *)self device];
        CLKRoundForDevice();
        v6 = v15;
      }
    }
  }

  v16 = [v4 timeLabelFont];
  v17 = [v16 fontWithSize:v6];

  if (!v17)
  {
    v17 = [MEMORY[0x1E695B518] systemFontOfSize:*MEMORY[0x1E69658A8] weight:v6 design:*MEMORY[0x1E69DB970]];
  }

  return v17;
}

- (void)setState:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = CLKUIDigitalClockView;
  [(CLKUITimeView *)&v7 setState:?];
  if (a3 == 1)
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

  else if (!a3)
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

- (void)setOverrideDate:(id)a3
{
  v7.receiver = self;
  v7.super_class = CLKUIDigitalClockView;
  v4 = a3;
  [(CLKUITimeView *)&v7 setOverrideDate:v4];
  v5 = [(CLKUITimeLabel *)self->_timeLabel timeFormatter:v7.receiver];
  [v5 setOverrideDate:v4];

  v6 = [(CLKUITimeLabel *)self->_inactiveTimeLabel timeFormatter];
  [v6 setOverrideDate:v4];
}

- (void)setAodTransform:(CGAffineTransform *)a3
{
  v10.receiver = self;
  v10.super_class = CLKUIDigitalClockView;
  v5 = *&a3->c;
  v7 = *&a3->a;
  v8 = v5;
  v9 = *&a3->tx;
  [(CLKUITimeView *)&v10 setAodTransform:&v7];
  v6 = *&a3->c;
  v7 = *&a3->a;
  v8 = v6;
  v9 = *&a3->tx;
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

- (void)traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v5 = a4;
  v6 = [(CLKUIDigitalClockView *)self traitCollection];
  v7 = [v6 activeAppearance];
  v8 = [v5 activeAppearance];

  if (v7 != v8)
  {
    v9 = [(CLKUIDigitalClockView *)self traitCollection];
    v10 = [v9 activeAppearance] ? 1.0 : 0.0;

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