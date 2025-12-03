@interface NTKRichComplicationCircularClosedGaugeContentView
- (NTKRichComplicationCircularClosedGaugeContentView)initWithFamily:(int64_t)family;
- (id)gaugeProviderFromTemplate:(id)template;
- (id)innerView;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
- (void)layoutSubviews;
@end

@implementation NTKRichComplicationCircularClosedGaugeContentView

- (NTKRichComplicationCircularClosedGaugeContentView)initWithFamily:(int64_t)family
{
  v17.receiver = self;
  v17.super_class = NTKRichComplicationCircularClosedGaugeContentView;
  v4 = [(NTKRichComplicationCircularBaseView *)&v17 initWithFamily:?];
  v5 = v4;
  if (v4)
  {
    device = [(CDRichComplicationView *)v4 device];
    v7 = _LayoutConstants_6(device, family);

    v8 = [NTKRichComplicationRingProgressView alloc];
    device2 = [(CDRichComplicationView *)v5 device];
    v10 = [(NTKRichComplicationRingProgressView *)v8 initWithFamily:family curveWidth:device2 padding:v7 forDevice:0.0];
    progressView = v5->_progressView;
    v5->_progressView = v10;

    [(CDRichComplicationProgressView *)v5->_progressView setFilterProvider:v5];
    contentView = [(NTKRichComplicationCircularBaseView *)v5 contentView];
    [contentView addSubview:v5->_progressView];

    innerView = [(NTKRichComplicationCircularClosedGaugeContentView *)v5 innerView];
    innerView = v5->_innerView;
    v5->_innerView = innerView;

    contentView2 = [(NTKRichComplicationCircularBaseView *)v5 contentView];
    [contentView2 addSubview:v5->_innerView];
  }

  return v5;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = NTKRichComplicationCircularClosedGaugeContentView;
  [(NTKRichComplicationCircularBaseView *)&v14 layoutSubviews];
  device = [(CDRichComplicationView *)self device];
  _LayoutConstants_6(device, [(CDRichComplicationView *)self family]);

  contentView = [(NTKRichComplicationCircularBaseView *)self contentView];
  [contentView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(NTKRichComplicationRingProgressView *)self->_progressView setFrame:v6, v8, v10, v12];
  device2 = [(CDRichComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  [(UIView *)self->_innerView setFrame:?];
}

- (void)_handleTemplate:(id)template reason:(int64_t)reason
{
  progressView = self->_progressView;
  reason = [(NTKRichComplicationCircularClosedGaugeContentView *)self gaugeProviderFromTemplate:template, reason];
  [(CDRichComplicationProgressView *)progressView setGaugeProvider:reason];

  v7 = self->_progressView;

  [(CDRichComplicationProgressView *)v7 setStyle:1];
}

- (id)innerView
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)gaugeProviderFromTemplate:(id)template
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end