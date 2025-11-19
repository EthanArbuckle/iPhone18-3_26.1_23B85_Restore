@interface CLKUIAnalogTimeView
- (CLKUIAnalogTimeView)initWithDevice:(id)a3 clockTimer:(id)a4;
- (void)layoutSubviews;
- (void)setAodTransform:(CGAffineTransform *)a3;
- (void)setConfiguration:(id)a3;
- (void)setOverrideDate:(id)a3;
- (void)setState:(unint64_t)a3;
- (void)traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
@end

@implementation CLKUIAnalogTimeView

- (CLKUIAnalogTimeView)initWithDevice:(id)a3 clockTimer:(id)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = CLKUIAnalogTimeView;
  v7 = [(CLKUITimeView *)&v16 initWithDevice:v6 clockTimer:a4];
  if (v7)
  {
    v8 = objc_alloc([objc_opt_class() _handsViewClass]);
    ___LayoutConstants_block_invoke_3(v6, v14);
    v9 = [v8 initWithDiameter:v6 forDevice:v15];
    handsView = v7->_handsView;
    v7->_handsView = v9;

    v11 = [(CLKUIAnalogHandsView *)v7->_handsView hourHandView];
    [v11 setEnableBackgroundColorAction:1];

    v12 = [(CLKUIAnalogHandsView *)v7->_handsView minuteHandView];
    [v12 setEnableBackgroundColorAction:1];

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
    v16 = [(UIView *)self->_backgroundView layer];
    [v16 setCornerRadius:MidX];

    [(CLKUIAnalogTimeView *)self bounds];
    [(UIView *)self->_backgroundView setFrame:?];
  }

  if (self->_inactiveBackgroundView)
  {
    [(CLKUIAnalogTimeView *)self bounds];
    v17 = CGRectGetMidX(v23);
    v18 = [(UIView *)self->_inactiveBackgroundView layer];
    [v18 setCornerRadius:v17];

    [(CLKUIAnalogTimeView *)self bounds];
    [(UIView *)self->_inactiveBackgroundView setFrame:?];
  }
}

- (void)setConfiguration:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = CLKUIAnalogTimeView;
  [(CLKUITimeView *)&v43 setConfiguration:v4];
  v5 = [v4 showsDialTicks];
  ticksView = self->_ticksView;
  if (v5)
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
      v7 = [(CLKUITimeView *)self device];
      ___LayoutConstants_block_invoke_3(v7, &v40);

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

    v12 = [v4 majorTickColor];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [(CLKUITimeView *)self timeColor];
    }

    v15 = v14;

    v16 = self->_ticksView;
    v17 = [v15 colorWithAlphaComponent:0.5];
    [(CLKUIDualTimeAnalogTicksView *)v16 setHourTickColor:v15 minuteTickColor:v17];
  }

  else if (ticksView)
  {
    [(CLKUIDualTimeAnalogTicksView *)ticksView setHidden:1];
  }

  v18 = [v4 backgroundView];

  backgroundView = self->_backgroundView;
  if (v18)
  {
    if (backgroundView)
    {
      [(UIView *)backgroundView removeFromSuperview];
    }

    v20 = [v4 backgroundView];
    v21 = self->_backgroundView;
    self->_backgroundView = v20;

    -[UIView setClipsToBounds:](self->_backgroundView, "setClipsToBounds:", [v4 backgroundViewClipsToBounds]);
    [(CLKUIAnalogTimeView *)self insertSubview:self->_backgroundView atIndex:0];
  }

  else if (backgroundView)
  {
    [(UIView *)backgroundView removeFromSuperview];
    v22 = self->_backgroundView;
    self->_backgroundView = 0;
  }

  v23 = [v4 inactiveBackgroundView];

  inactiveBackgroundView = self->_inactiveBackgroundView;
  if (v23)
  {
    if (inactiveBackgroundView)
    {
      [(UIView *)inactiveBackgroundView removeFromSuperview];
    }

    v25 = [v4 inactiveBackgroundView];
    v26 = self->_inactiveBackgroundView;
    self->_inactiveBackgroundView = v25;

    -[UIView setClipsToBounds:](self->_inactiveBackgroundView, "setClipsToBounds:", [v4 inactiveBackgroundViewClipsToBounds]);
    [(UIView *)self->_inactiveBackgroundView setAlpha:0.0];
    [(CLKUIAnalogTimeView *)self insertSubview:self->_inactiveBackgroundView atIndex:0];
  }

  else if (inactiveBackgroundView)
  {
    [(UIView *)inactiveBackgroundView removeFromSuperview];
    v27 = self->_inactiveBackgroundView;
    self->_inactiveBackgroundView = 0;
  }

  -[CLKUIAnalogHandsView setSecondHandDisabled:](self->_handsView, "setSecondHandDisabled:", [v4 secondHandDisabled]);
  v28 = [v4 secondHandColor];
  v29 = [v4 hourMinuteHandInlayColor];
  v30 = [v4 hourMinuteHandOutlineColor];
  [(CLKUIAnalogHandsView *)self->_handsView applySecondHandColor:v28];
  [(CLKUIAnalogHandsView *)self->_handsView setInlayColor:v29];
  v31 = [(CLKUIAnalogHandsView *)self->_handsView minuteHandView];
  [v31 setColor:v30];

  v32 = [(CLKUIAnalogHandsView *)self->_handsView hourHandView];
  [v32 setColor:v30];

  v33 = [MEMORY[0x1E69DC888] blackColor];
  v34 = [(CLKUIAnalogHandsView *)self->_handsView secondHandView];
  [v34 setHandDotColor:v33];
}

- (void)setState:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = CLKUIAnalogTimeView;
  [(CLKUITimeView *)&v6 setState:?];
  if (a3)
  {
    if (a3 != 1)
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

- (void)setOverrideDate:(id)a3
{
  v5.receiver = self;
  v5.super_class = CLKUIAnalogTimeView;
  v4 = a3;
  [(CLKUITimeView *)&v5 setOverrideDate:v4];
  [(CLKUIHandsView *)self->_handsView setOverrideDate:v4, v5.receiver, v5.super_class];
}

- (void)setAodTransform:(CGAffineTransform *)a3
{
  v10.receiver = self;
  v10.super_class = CLKUIAnalogTimeView;
  v5 = *&a3->c;
  v7 = *&a3->a;
  v8 = v5;
  v9 = *&a3->tx;
  [(CLKUITimeView *)&v10 setAodTransform:&v7];
  v6 = *&a3->c;
  v7 = *&a3->a;
  v8 = v6;
  v9 = *&a3->tx;
  [(CLKUIAnalogTimeView *)self setTransform:&v7];
}

- (void)traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v5 = a4;
  v6 = [(CLKUIAnalogTimeView *)self traitCollection];
  v7 = [v6 activeAppearance];
  v8 = [v5 activeAppearance];

  if (v7 != v8)
  {
    v9 = [(CLKUIAnalogTimeView *)self traitCollection];
    v10 = [v9 activeAppearance];

    if (v10)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = 0.0;
    }

    v12 = [(CLKUITimeView *)self configuration];
    v28 = v12;
    if (v10)
    {
      v13 = [v12 hourMinuteHandInlayColor];
      v14 = [v28 hourMinuteHandOutlineColor];
      v15 = v13;
      v16 = v15;
    }

    else
    {
      v16 = [v12 inactiveHourMinuteHandInlayColor];
      v14 = [v28 inactiveHourMinuteHandOutlineColor];
      v15 = [MEMORY[0x1E69DC888] blackColor];
    }

    [(CLKUIAnalogHandsView *)self->_handsView setInlayColor:v16];
    v17 = [(CLKUIAnalogHandsView *)self->_handsView minuteHandView];
    [v17 setColor:v14];

    v18 = [(CLKUIAnalogHandsView *)self->_handsView hourHandView];
    [v18 setColor:v14];

    v19 = [(CLKUIAnalogHandsView *)self->_handsView minuteHandView];
    [v19 setHandDotColor:v15];

    v20 = [(CLKUIAnalogHandsView *)self->_handsView secondHandView];
    [v20 setAlpha:v11];

    if (self->_ticksView)
    {
      if (v10)
      {
        v21 = [v28 majorTickColor];
        v22 = v21;
        if (v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = [(CLKUITimeView *)self timeColor];
        }

        v24 = v23;
      }

      else
      {
        v24 = [v28 inactiveMajorTickColor];
      }

      ticksView = self->_ticksView;
      v26 = [v24 colorWithAlphaComponent:0.5];
      [(CLKUIDualTimeAnalogTicksView *)ticksView setHourTickColor:v24 minuteTickColor:v26];
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