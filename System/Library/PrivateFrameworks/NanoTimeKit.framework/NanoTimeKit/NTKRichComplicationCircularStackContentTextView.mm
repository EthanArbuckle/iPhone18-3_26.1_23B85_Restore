@interface NTKRichComplicationCircularStackContentTextView
- (NTKRichComplicationCircularStackContentTextView)initWithFamily:(int64_t)a3;
- (id)line1View;
- (id)line2TextProviderFromTemplate:(id)a3;
- (int64_t)_line2FilterStyle;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
- (void)layoutSubviews;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationCircularStackContentTextView

- (NTKRichComplicationCircularStackContentTextView)initWithFamily:(int64_t)a3
{
  v20.receiver = self;
  v20.super_class = NTKRichComplicationCircularStackContentTextView;
  v4 = [(NTKRichComplicationCircularBaseView *)&v20 initWithFamily:?];
  v5 = v4;
  if (v4)
  {
    v6 = [(NTKRichComplicationCircularStackContentTextView *)v4 line1View];
    line1View = v5->_line1View;
    v5->_line1View = v6;

    v8 = [(NTKRichComplicationCircularBaseView *)v5 contentView];
    [v8 addSubview:v5->_line1View];

    v18 = 0u;
    v19 = 0u;
    v9 = [(CDRichComplicationView *)v5 device:0];
    _LayoutConstants_9(v9, a3, &v17);

    v10 = objc_alloc_init(off_27877BEF8);
    line2Label = v5->_line2Label;
    v5->_line2Label = v10;

    v12 = *(&v18 + 1);
    [(CLKUIColoringLabel *)v5->_line2Label setFont:*(&v18 + 1)];
    [(CLKUIColoringLabel *)v5->_line2Label setTextAlignment:1];
    v13 = v5->_line2Label;
    v14 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v13 setTextColor:v14];

    [(CLKUIColoringLabel *)v5->_line2Label setUsesTextProviderTintColoring:1];
    [(CLKUIColoringLabel *)v5->_line2Label setMaxWidth:*&v18];
    [(CLKUIColoringLabel *)v5->_line2Label setFilterProvider:v5];
    v15 = [(NTKRichComplicationCircularBaseView *)v5 contentView];
    [v15 addSubview:v5->_line2Label];
  }

  return v5;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = NTKRichComplicationCircularStackContentTextView;
  [(NTKRichComplicationCircularBaseView *)&v19 layoutSubviews];
  v3 = [(NTKRichComplicationCircularBaseView *)self contentView];
  [v3 bounds];

  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v4 = [(CDRichComplicationView *)self device];
  _LayoutConstants_9(v4, [(CDRichComplicationView *)self family], &v16);

  [(CLKUIColoringLabel *)self->_line2Label sizeToFit];
  line1View = self->_line1View;
  v6 = [(CDRichComplicationView *)self device];
  CLKRectIntegralForDevice();
  [(UIView *)line1View ntk_setBoundsAndPositionFromFrame:?];

  [(CLKUIColoringLabel *)self->_line2Label frame];
  [(CLKUIColoringLabel *)self->_line2Label _lastLineBaseline];
  v7 = [(CDRichComplicationView *)self device];
  CLKRectCenteredXInRectForDevice();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [(CLKUIColoringLabel *)self->_line2Label setFrame:v9, v11, v13, v15];
}

- (void)_handleTemplate:(id)a3 reason:(int64_t)a4
{
  line2Label = self->_line2Label;
  v5 = [(NTKRichComplicationCircularStackContentTextView *)self line2TextProviderFromTemplate:a3, a4];
  [(CLKUIColoringLabel *)line2Label setTextProvider:v5];
}

- (int64_t)_line2FilterStyle
{
  v2 = [(CDRichComplicationView *)self device];
  v3 = NTKShowGossamerUI(v2);

  if (v3)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationCircularStackContentTextView;
  [(NTKRichComplicationCircularBaseView *)&v5 transitionToMonochromeWithFraction:?];
  [(CLKUIColoringLabel *)self->_line2Label transitionToMonochromeWithFraction:[(NTKRichComplicationCircularStackContentTextView *)self _line2FilterStyle] style:a3];
}

- (void)updateMonochromeColor
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationCircularStackContentTextView;
  [(NTKRichComplicationCircularBaseView *)&v3 updateMonochromeColor];
  [(CLKUIColoringLabel *)self->_line2Label updateMonochromeColorWithStyle:[(NTKRichComplicationCircularStackContentTextView *)self _line2FilterStyle]];
}

- (id)line1View
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)line2TextProviderFromTemplate:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end