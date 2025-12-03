@interface NTKRichComplicationBaseCircularClosedGaugeSwiftUIView
- (id)innerView;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
- (void)setPaused:(BOOL)paused;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationBaseCircularClosedGaugeSwiftUIView

- (id)innerView
{
  swiftUIView = self->_swiftUIView;
  if (!swiftUIView)
  {
    async = [off_27877BE70 async];
    v5 = self->_swiftUIView;
    self->_swiftUIView = async;

    [(CDComplicationHostingView *)self->_swiftUIView setFilterProvider:self];
    device = [(CDRichComplicationView *)self device];
    v7 = NTKShowGossamerUI(device);

    [(CDComplicationHostingView *)self->_swiftUIView setShouldAccentDesaturatedView:v7 ^ 1u];
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__NTKRichComplicationBaseCircularClosedGaugeSwiftUIView_innerView__block_invoke;
    v9[3] = &unk_27877FDC8;
    objc_copyWeak(&v10, &location);
    [(CDComplicationHostingView *)self->_swiftUIView setRenderStatsHandler:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
    swiftUIView = self->_swiftUIView;
  }

  return swiftUIView;
}

void __66__NTKRichComplicationBaseCircularClosedGaugeSwiftUIView_innerView__block_invoke(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained displayObserver];
  [v5 complicationDisplay:WeakRetained renderStatsWithTime:a2 cost:a3];
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBaseCircularClosedGaugeSwiftUIView;
  [(CDRichComplicationView *)&v5 setPaused:?];
  [(CDComplicationHostingView *)self->_swiftUIView setPaused:pausedCopy];
}

- (void)_handleTemplate:(id)template reason:(int64_t)reason
{
  v8.receiver = self;
  v8.super_class = NTKRichComplicationBaseCircularClosedGaugeSwiftUIView;
  templateCopy = template;
  [(NTKRichComplicationCircularClosedGaugeContentView *)&v8 _handleTemplate:templateCopy reason:reason];
  labelData = [templateCopy labelData];

  [(CDComplicationHostingView *)self->_swiftUIView setViewData:labelData];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBaseCircularClosedGaugeSwiftUIView;
  [(NTKRichComplicationCircularClosedGaugeContentView *)&v5 transitionToMonochromeWithFraction:?];
  [(CDComplicationHostingView *)self->_swiftUIView transitionToMonochromeWithFraction:fraction];
}

- (void)updateMonochromeColor
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationBaseCircularClosedGaugeSwiftUIView;
  [(NTKRichComplicationCircularClosedGaugeContentView *)&v3 updateMonochromeColor];
  [(CDComplicationHostingView *)self->_swiftUIView updateMonochromeColor];
}

@end