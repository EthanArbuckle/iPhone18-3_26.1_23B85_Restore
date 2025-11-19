@interface NTKRichComplicationCircularClosedGaugeContentView
- (NTKRichComplicationCircularClosedGaugeContentView)initWithFamily:(int64_t)a3;
- (id)gaugeProviderFromTemplate:(id)a3;
- (id)innerView;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
- (void)layoutSubviews;
@end

@implementation NTKRichComplicationCircularClosedGaugeContentView

- (NTKRichComplicationCircularClosedGaugeContentView)initWithFamily:(int64_t)a3
{
  v17.receiver = self;
  v17.super_class = NTKRichComplicationCircularClosedGaugeContentView;
  v4 = [(NTKRichComplicationCircularBaseView *)&v17 initWithFamily:?];
  v5 = v4;
  if (v4)
  {
    v6 = [(CDRichComplicationView *)v4 device];
    v7 = _LayoutConstants_6(v6, a3);

    v8 = [NTKRichComplicationRingProgressView alloc];
    v9 = [(CDRichComplicationView *)v5 device];
    v10 = [(NTKRichComplicationRingProgressView *)v8 initWithFamily:a3 curveWidth:v9 padding:v7 forDevice:0.0];
    progressView = v5->_progressView;
    v5->_progressView = v10;

    [(CDRichComplicationProgressView *)v5->_progressView setFilterProvider:v5];
    v12 = [(NTKRichComplicationCircularBaseView *)v5 contentView];
    [v12 addSubview:v5->_progressView];

    v13 = [(NTKRichComplicationCircularClosedGaugeContentView *)v5 innerView];
    innerView = v5->_innerView;
    v5->_innerView = v13;

    v15 = [(NTKRichComplicationCircularBaseView *)v5 contentView];
    [v15 addSubview:v5->_innerView];
  }

  return v5;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = NTKRichComplicationCircularClosedGaugeContentView;
  [(NTKRichComplicationCircularBaseView *)&v14 layoutSubviews];
  v3 = [(CDRichComplicationView *)self device];
  _LayoutConstants_6(v3, [(CDRichComplicationView *)self family]);

  v4 = [(NTKRichComplicationCircularBaseView *)self contentView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(NTKRichComplicationRingProgressView *)self->_progressView setFrame:v6, v8, v10, v12];
  v13 = [(CDRichComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  [(UIView *)self->_innerView setFrame:?];
}

- (void)_handleTemplate:(id)a3 reason:(int64_t)a4
{
  progressView = self->_progressView;
  v6 = [(NTKRichComplicationCircularClosedGaugeContentView *)self gaugeProviderFromTemplate:a3, a4];
  [(CDRichComplicationProgressView *)progressView setGaugeProvider:v6];

  v7 = self->_progressView;

  [(CDRichComplicationProgressView *)v7 setStyle:1];
}

- (id)innerView
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)gaugeProviderFromTemplate:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end