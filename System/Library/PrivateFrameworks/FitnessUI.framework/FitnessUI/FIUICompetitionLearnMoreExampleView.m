@interface FIUICompetitionLearnMoreExampleView
- (CGSize)sizeThatFits:(CGSize)a3;
- (FIUICompetitionLearnMoreExampleView)init;
- (id)_ringPercentageLabelForPercentage:(double)a3 withMetricColors:(id)a4;
- (id)_ringViewOfType:(int64_t)a3 withMetricColors:(id)a4 percentage:(double)a5;
- (void)layoutForWidth:(double)a3;
- (void)layoutSubviews;
- (void)setTotalPointsLabelText:(id)a3;
@end

@implementation FIUICompetitionLearnMoreExampleView

- (FIUICompetitionLearnMoreExampleView)init
{
  v29.receiver = self;
  v29.super_class = FIUICompetitionLearnMoreExampleView;
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  v6 = [(FIUICompetitionLearnMoreExampleView *)&v29 initWithFrame:*MEMORY[0x1E695F058], v3, v4, v5];
  if (v6)
  {
    v7 = [MEMORY[0x1E6989B18] energyColors];
    v8 = [MEMORY[0x1E6989B18] briskColors];
    v9 = [MEMORY[0x1E6989B18] sedentaryColors];
    v10 = [(FIUICompetitionLearnMoreExampleView *)v6 _ringViewOfType:2 withMetricColors:v7 percentage:1.25];
    moveRingView = v6->_moveRingView;
    v6->_moveRingView = v10;

    v12 = [(FIUICompetitionLearnMoreExampleView *)v6 _ringViewOfType:1 withMetricColors:v8 percentage:0.5];
    exerciseRingView = v6->_exerciseRingView;
    v6->_exerciseRingView = v12;

    v14 = [(FIUICompetitionLearnMoreExampleView *)v6 _ringViewOfType:0 withMetricColors:v9 percentage:0.25];
    standRingView = v6->_standRingView;
    v6->_standRingView = v14;

    [(FIUICompetitionLearnMoreExampleView *)v6 addSubview:v6->_moveRingView];
    [(FIUICompetitionLearnMoreExampleView *)v6 addSubview:v6->_exerciseRingView];
    [(FIUICompetitionLearnMoreExampleView *)v6 addSubview:v6->_standRingView];
    v16 = [(FIUICompetitionLearnMoreExampleView *)v6 _ringPercentageLabelForPercentage:v7 withMetricColors:1.25];
    movePercentLabel = v6->_movePercentLabel;
    v6->_movePercentLabel = v16;

    v18 = [(FIUICompetitionLearnMoreExampleView *)v6 _ringPercentageLabelForPercentage:v8 withMetricColors:0.5];
    exercisePercentLabel = v6->_exercisePercentLabel;
    v6->_exercisePercentLabel = v18;

    v20 = [(FIUICompetitionLearnMoreExampleView *)v6 _ringPercentageLabelForPercentage:v9 withMetricColors:0.25];
    standPercentLabel = v6->_standPercentLabel;
    v6->_standPercentLabel = v20;

    [(FIUICompetitionLearnMoreExampleView *)v6 addSubview:v6->_movePercentLabel];
    [(FIUICompetitionLearnMoreExampleView *)v6 addSubview:v6->_exercisePercentLabel];
    [(FIUICompetitionLearnMoreExampleView *)v6 addSubview:v6->_standPercentLabel];
    v22 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v2, v3, v4, v5}];
    separatorView = v6->_separatorView;
    v6->_separatorView = v22;

    v24 = [(UIView *)v6->_separatorView layer];
    [v24 setCornerRadius:0.5];

    [(FIUICompetitionLearnMoreExampleView *)v6 addSubview:v6->_separatorView];
    v25 = objc_opt_new();
    totalPointsLabel = v6->_totalPointsLabel;
    v6->_totalPointsLabel = v25;

    v27 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0];
    [(UILabel *)v6->_totalPointsLabel setFont:v27];

    [(UILabel *)v6->_totalPointsLabel setTextAlignment:1];
    [(FIUICompetitionLearnMoreExampleView *)v6 addSubview:v6->_totalPointsLabel];
  }

  return v6;
}

- (id)_ringViewOfType:(int64_t)a3 withMetricColors:(id)a4 percentage:(double)a5
{
  v7 = MEMORY[0x1E6989B48];
  v8 = a4;
  v9 = [v7 ringsViewConfiguredForOneRingOnWatchOfType:a3 withIcon:0];
  v10 = MEMORY[0x1E6989B40];
  v11 = [v8 gradientDarkColor];
  v12 = [v8 gradientLightColor];

  v13 = [v10 renderSingleRingUsingRingsView:v9 forPercentage:v11 withDiameter:v12 thickness:a5 topColor:49.0 bottomColor:7.0];

  v14 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v13];

  return v14;
}

- (id)_ringPercentageLabelForPercentage:(double)a3 withMetricColors:(id)a4
{
  v5 = MEMORY[0x1E696ADA0];
  v6 = a4;
  v7 = objc_alloc_init(v5);
  [v7 setNumberStyle:3];
  v8 = objc_opt_new();
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v10 = [v7 stringFromNumber:v9];
  [v8 setText:v10];

  v11 = [MEMORY[0x1E69DB878] systemFontOfSize:11.0 weight:*MEMORY[0x1E69DB970]];
  [v8 setFont:v11];

  v12 = [v6 gradientDarkColor];

  [v8 setTextColor:v12];
  [v8 setTextAlignment:1];

  return v8;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = FIUICompetitionLearnMoreExampleView;
  [(FIUICompetitionLearnMoreExampleView *)&v4 layoutSubviews];
  [(FIUICompetitionLearnMoreExampleView *)self bounds];
  [(FIUICompetitionLearnMoreExampleView *)self layoutForWidth:v3];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(FIUICompetitionLearnMoreExampleView *)self layoutForWidth:a3.width, a3.height];
  [(UIImageView *)self->_standRingView frame];
  v4 = CGRectGetMaxX(v9) + 1.0;
  [(UILabel *)self->_totalPointsLabel _lastLineBaselineFrameOriginY];
  v6 = v5 + 16.5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)layoutForWidth:(double)a3
{
  previousLayoutWidth = self->_previousLayoutWidth;
  if (!previousLayoutWidth || ([(NSNumber *)previousLayoutWidth floatValue], vabdd_f64(v6, a3) >= 0.00000011920929))
  {
    [(UIImageView *)self->_moveRingView setFrame:1.0, 20.0, 49.0, 49.0];
    [(UIImageView *)self->_moveRingView frame];
    [(UILabel *)self->_movePercentLabel setFrame:?];
    [(UIImageView *)self->_moveRingView frame];
    [(UIImageView *)self->_exerciseRingView setFrame:CGRectGetMaxX(v8) + 3.5, 20.0, 49.0, 49.0];
    [(UIImageView *)self->_exerciseRingView frame];
    [(UILabel *)self->_exercisePercentLabel setFrame:?];
    [(UIImageView *)self->_exerciseRingView frame];
    [(UIImageView *)self->_standRingView setFrame:CGRectGetMaxX(v9) + 3.5, 20.0, 49.0, 49.0];
    [(UIImageView *)self->_standRingView frame];
    [(UILabel *)self->_standPercentLabel setFrame:?];
    [(UIImageView *)self->_standRingView frame];
    [(UIView *)self->_separatorView setFrame:(a3 + -154.0) * 0.5, CGRectGetMaxY(v10) + 8.0, 154.0, 1.5];
    [(UILabel *)self->_totalPointsLabel sizeToFit];
    [(UILabel *)self->_totalPointsLabel bounds];
    [(UILabel *)self->_totalPointsLabel setFrame:0.0, 0.0, a3];
    [(UIView *)self->_separatorView frame];
    [(UILabel *)self->_totalPointsLabel _setLastLineBaselineFrameOriginY:CGRectGetMaxY(v11) + 17.0];
    self->_previousLayoutWidth = [MEMORY[0x1E696AD98] numberWithDouble:a3];

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setTotalPointsLabelText:(id)a3
{
  [(UILabel *)self->_totalPointsLabel setText:a3];

  [(FIUICompetitionLearnMoreExampleView *)self setNeedsLayout];
}

@end