@interface NTKRichComplicationBaseCircularOpenGaugeSwiftUIView
- (id)bottomView;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
- (void)gaugeProvider:(id *)provider andCenterTextProvider:(id *)textProvider fromTemplate:(id)template;
- (void)setPaused:(BOOL)paused;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationBaseCircularOpenGaugeSwiftUIView

- (id)bottomView
{
  bottomSwiftUIView = self->_bottomSwiftUIView;
  if (!bottomSwiftUIView)
  {
    async = [off_27877BE70 async];
    v5 = self->_bottomSwiftUIView;
    self->_bottomSwiftUIView = async;

    [(CDComplicationHostingView *)self->_bottomSwiftUIView setFilterProvider:self];
    device = [(CDRichComplicationView *)self device];
    v7 = NTKShowGossamerUI(device);

    [(CDComplicationHostingView *)self->_bottomSwiftUIView setShouldAccentDesaturatedView:v7 ^ 1u];
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__NTKRichComplicationBaseCircularOpenGaugeSwiftUIView_bottomView__block_invoke;
    v9[3] = &unk_27877FDC8;
    objc_copyWeak(&v10, &location);
    [(CDComplicationHostingView *)self->_bottomSwiftUIView setRenderStatsHandler:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
    bottomSwiftUIView = self->_bottomSwiftUIView;
  }

  return bottomSwiftUIView;
}

void __65__NTKRichComplicationBaseCircularOpenGaugeSwiftUIView_bottomView__block_invoke(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained displayObserver];
  [v5 complicationDisplay:WeakRetained renderStatsWithTime:a2 cost:a3];
}

- (void)gaugeProvider:(id *)provider andCenterTextProvider:(id *)textProvider fromTemplate:(id)template
{
  templateCopy = template;
  *provider = [templateCopy gaugeProvider];
  centerTextProvider = [templateCopy centerTextProvider];

  v9 = centerTextProvider;
  *textProvider = centerTextProvider;
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBaseCircularOpenGaugeSwiftUIView;
  [(CDRichComplicationView *)&v5 setPaused:?];
  [(CDComplicationHostingView *)self->_bottomSwiftUIView setPaused:pausedCopy];
}

- (void)_handleTemplate:(id)template reason:(int64_t)reason
{
  v8.receiver = self;
  v8.super_class = NTKRichComplicationBaseCircularOpenGaugeSwiftUIView;
  templateCopy = template;
  [(NTKRichComplicationCircularOpenGaugeContentView *)&v8 _handleTemplate:templateCopy reason:reason];
  bottomLabelData = [templateCopy bottomLabelData];

  [(CDComplicationHostingView *)self->_bottomSwiftUIView setViewData:bottomLabelData];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBaseCircularOpenGaugeSwiftUIView;
  [(NTKRichComplicationCircularOpenGaugeContentView *)&v5 transitionToMonochromeWithFraction:?];
  [(CDComplicationHostingView *)self->_bottomSwiftUIView transitionToMonochromeWithFraction:fraction];
}

- (void)updateMonochromeColor
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationBaseCircularOpenGaugeSwiftUIView;
  [(NTKRichComplicationCircularOpenGaugeContentView *)&v3 updateMonochromeColor];
  [(CDComplicationHostingView *)self->_bottomSwiftUIView updateMonochromeColor];
}

@end