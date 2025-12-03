@interface NTKRichComplicationCornerTextSwiftUIView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (id)_outerView;
- (void)_editingDidEnd;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
- (void)setPaused:(BOOL)paused;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationCornerTextSwiftUIView

- (id)_outerView
{
  swiftUIView = self->_swiftUIView;
  if (!swiftUIView)
  {
    async = [off_27877BE70 async];
    v5 = self->_swiftUIView;
    self->_swiftUIView = async;

    [(CDComplicationHostingView *)self->_swiftUIView setFilterProvider:self];
    [(CDComplicationHostingView *)self->_swiftUIView setShouldAccentDesaturatedView:1];
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__NTKRichComplicationCornerTextSwiftUIView__outerView__block_invoke;
    v7[3] = &unk_27877FDC8;
    objc_copyWeak(&v8, &location);
    [(CDComplicationHostingView *)self->_swiftUIView setRenderStatsHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
    swiftUIView = self->_swiftUIView;
  }

  return swiftUIView;
}

void __54__NTKRichComplicationCornerTextSwiftUIView__outerView__block_invoke(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained displayObserver];
  [v5 complicationDisplay:WeakRetained renderStatsWithTime:a2 cost:a3];
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  v5.receiver = self;
  v5.super_class = NTKRichComplicationCornerTextSwiftUIView;
  [(CDRichComplicationView *)&v5 setPaused:?];
  [(CDComplicationHostingView *)self->_swiftUIView setPaused:pausedCopy];
}

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_handleTemplate:(id)template reason:(int64_t)reason
{
  templateCopy = template;
  textProvider = [templateCopy textProvider];
  innerLabel = [(CDRichComplicationCornerBaseTextView *)self innerLabel];
  [innerLabel setTextProvider:textProvider];

  labelData = [templateCopy labelData];

  [(CDComplicationHostingView *)self->_swiftUIView setViewData:labelData];
}

- (void)_editingDidEnd
{
  innerLabel = [(CDRichComplicationCornerBaseTextView *)self innerLabel];
  [innerLabel editingDidEnd];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  innerLabel = [(CDRichComplicationCornerBaseTextView *)self innerLabel];
  [innerLabel transitionToMonochromeWithFraction:2 style:fraction];

  swiftUIView = self->_swiftUIView;

  [(CDComplicationHostingView *)swiftUIView transitionToMonochromeWithFraction:fraction];
}

- (void)updateMonochromeColor
{
  innerLabel = [(CDRichComplicationCornerBaseTextView *)self innerLabel];
  [innerLabel updateMonochromeColorWithStyle:2];

  swiftUIView = self->_swiftUIView;

  [(CDComplicationHostingView *)swiftUIView updateMonochromeColor];
}

@end