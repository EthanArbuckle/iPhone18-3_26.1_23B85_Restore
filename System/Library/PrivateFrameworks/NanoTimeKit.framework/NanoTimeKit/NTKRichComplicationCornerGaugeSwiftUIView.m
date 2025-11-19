@interface NTKRichComplicationCornerGaugeSwiftUIView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (id)_outerView;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
- (void)setPaused:(BOOL)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationCornerGaugeSwiftUIView

- (id)_outerView
{
  swiftUIView = self->_swiftUIView;
  if (!swiftUIView)
  {
    v4 = [off_27877BE70 async];
    v5 = self->_swiftUIView;
    self->_swiftUIView = v4;

    [(CDComplicationHostingView *)self->_swiftUIView setFilterProvider:self];
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__NTKRichComplicationCornerGaugeSwiftUIView__outerView__block_invoke;
    v7[3] = &unk_27877FDC8;
    objc_copyWeak(&v8, &location);
    [(CDComplicationHostingView *)self->_swiftUIView setRenderStatsHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
    swiftUIView = self->_swiftUIView;
  }

  return swiftUIView;
}

void __55__NTKRichComplicationCornerGaugeSwiftUIView__outerView__block_invoke(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained displayObserver];
  [v5 complicationDisplay:WeakRetained renderStatsWithTime:a2 cost:a3];
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = NTKRichComplicationCornerGaugeSwiftUIView;
  [(CDRichComplicationView *)&v5 setPaused:?];
  [(CDComplicationHostingView *)self->_swiftUIView setPaused:v3];
}

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_handleTemplate:(id)a3 reason:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 labelData];
  [(CDComplicationHostingView *)self->_swiftUIView setViewData:v6];

  v9 = [v5 gaugeProvider];
  v7 = [v5 leadingTextProvider];
  v8 = [v5 trailingTextProvider];

  [(CDRichComplicationCornerBaseGaugeView *)self handleGaugeProvider:v9 leftTextProvider:v7 rightTextProvider:v8];
}

- (void)updateMonochromeColor
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationCornerGaugeSwiftUIView;
  [(CDRichComplicationCornerBaseGaugeView *)&v3 updateMonochromeColor];
  [(CDComplicationHostingView *)self->_swiftUIView updateMonochromeColor];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationCornerGaugeSwiftUIView;
  [(CDRichComplicationCornerBaseGaugeView *)&v5 transitionToMonochromeWithFraction:?];
  [(CDComplicationHostingView *)self->_swiftUIView transitionToMonochromeWithFraction:a3];
}

@end