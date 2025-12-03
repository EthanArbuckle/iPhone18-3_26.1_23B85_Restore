@interface NTKRichComplicationCircularStackContentTextView
- (NTKRichComplicationCircularStackContentTextView)initWithFamily:(int64_t)family;
- (id)line1View;
- (id)line2TextProviderFromTemplate:(id)template;
- (int64_t)_line2FilterStyle;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
- (void)layoutSubviews;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationCircularStackContentTextView

- (NTKRichComplicationCircularStackContentTextView)initWithFamily:(int64_t)family
{
  v20.receiver = self;
  v20.super_class = NTKRichComplicationCircularStackContentTextView;
  v4 = [(NTKRichComplicationCircularBaseView *)&v20 initWithFamily:?];
  v5 = v4;
  if (v4)
  {
    line1View = [(NTKRichComplicationCircularStackContentTextView *)v4 line1View];
    line1View = v5->_line1View;
    v5->_line1View = line1View;

    contentView = [(NTKRichComplicationCircularBaseView *)v5 contentView];
    [contentView addSubview:v5->_line1View];

    v18 = 0u;
    v19 = 0u;
    v9 = [(CDRichComplicationView *)v5 device:0];
    _LayoutConstants_9(v9, family, &v17);

    v10 = objc_alloc_init(off_27877BEF8);
    line2Label = v5->_line2Label;
    v5->_line2Label = v10;

    v12 = *(&v18 + 1);
    [(CLKUIColoringLabel *)v5->_line2Label setFont:*(&v18 + 1)];
    [(CLKUIColoringLabel *)v5->_line2Label setTextAlignment:1];
    v13 = v5->_line2Label;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v13 setTextColor:whiteColor];

    [(CLKUIColoringLabel *)v5->_line2Label setUsesTextProviderTintColoring:1];
    [(CLKUIColoringLabel *)v5->_line2Label setMaxWidth:*&v18];
    [(CLKUIColoringLabel *)v5->_line2Label setFilterProvider:v5];
    contentView2 = [(NTKRichComplicationCircularBaseView *)v5 contentView];
    [contentView2 addSubview:v5->_line2Label];
  }

  return v5;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = NTKRichComplicationCircularStackContentTextView;
  [(NTKRichComplicationCircularBaseView *)&v19 layoutSubviews];
  contentView = [(NTKRichComplicationCircularBaseView *)self contentView];
  [contentView bounds];

  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  device = [(CDRichComplicationView *)self device];
  _LayoutConstants_9(device, [(CDRichComplicationView *)self family], &v16);

  [(CLKUIColoringLabel *)self->_line2Label sizeToFit];
  line1View = self->_line1View;
  device2 = [(CDRichComplicationView *)self device];
  CLKRectIntegralForDevice();
  [(UIView *)line1View ntk_setBoundsAndPositionFromFrame:?];

  [(CLKUIColoringLabel *)self->_line2Label frame];
  [(CLKUIColoringLabel *)self->_line2Label _lastLineBaseline];
  device3 = [(CDRichComplicationView *)self device];
  CLKRectCenteredXInRectForDevice();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [(CLKUIColoringLabel *)self->_line2Label setFrame:v9, v11, v13, v15];
}

- (void)_handleTemplate:(id)template reason:(int64_t)reason
{
  line2Label = self->_line2Label;
  reason = [(NTKRichComplicationCircularStackContentTextView *)self line2TextProviderFromTemplate:template, reason];
  [(CLKUIColoringLabel *)line2Label setTextProvider:reason];
}

- (int64_t)_line2FilterStyle
{
  device = [(CDRichComplicationView *)self device];
  v3 = NTKShowGossamerUI(device);

  if (v3)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationCircularStackContentTextView;
  [(NTKRichComplicationCircularBaseView *)&v5 transitionToMonochromeWithFraction:?];
  [(CLKUIColoringLabel *)self->_line2Label transitionToMonochromeWithFraction:[(NTKRichComplicationCircularStackContentTextView *)self _line2FilterStyle] style:fraction];
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

- (id)line2TextProviderFromTemplate:(id)template
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end