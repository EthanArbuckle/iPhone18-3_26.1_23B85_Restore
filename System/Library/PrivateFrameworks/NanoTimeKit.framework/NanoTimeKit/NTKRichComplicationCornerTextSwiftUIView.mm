@interface NTKRichComplicationCornerTextSwiftUIView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (id)_outerView;
- (void)_editingDidEnd;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
- (void)setPaused:(BOOL)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationCornerTextSwiftUIView

- (id)_outerView
{
  swiftUIView = self->_swiftUIView;
  if (!swiftUIView)
  {
    v4 = [off_27877BE70 async];
    v5 = self->_swiftUIView;
    self->_swiftUIView = v4;

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

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = NTKRichComplicationCornerTextSwiftUIView;
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
  v6 = [v5 textProvider];
  v7 = [(CDRichComplicationCornerBaseTextView *)self innerLabel];
  [v7 setTextProvider:v6];

  v8 = [v5 labelData];

  [(CDComplicationHostingView *)self->_swiftUIView setViewData:v8];
}

- (void)_editingDidEnd
{
  v2 = [(CDRichComplicationCornerBaseTextView *)self innerLabel];
  [v2 editingDidEnd];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5 = [(CDRichComplicationCornerBaseTextView *)self innerLabel];
  [v5 transitionToMonochromeWithFraction:2 style:a3];

  swiftUIView = self->_swiftUIView;

  [(CDComplicationHostingView *)swiftUIView transitionToMonochromeWithFraction:a3];
}

- (void)updateMonochromeColor
{
  v3 = [(CDRichComplicationCornerBaseTextView *)self innerLabel];
  [v3 updateMonochromeColorWithStyle:2];

  swiftUIView = self->_swiftUIView;

  [(CDComplicationHostingView *)swiftUIView updateMonochromeColor];
}

@end