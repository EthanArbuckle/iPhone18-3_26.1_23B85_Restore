@interface NTKRichComplicationRectangularFullSwiftUIView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (id)content;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
- (void)setPaused:(BOOL)paused;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationRectangularFullSwiftUIView

- (id)content
{
  swiftUIView = self->_swiftUIView;
  if (!swiftUIView)
  {
    async = [off_27877BE70 async];
    v5 = self->_swiftUIView;
    self->_swiftUIView = async;

    [(CDComplicationHostingView *)self->_swiftUIView setFilterProvider:self];
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__NTKRichComplicationRectangularFullSwiftUIView_content__block_invoke;
    v7[3] = &unk_27877FDC8;
    objc_copyWeak(&v8, &location);
    [(CDComplicationHostingView *)self->_swiftUIView setRenderStatsHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
    swiftUIView = self->_swiftUIView;
  }

  return swiftUIView;
}

void __56__NTKRichComplicationRectangularFullSwiftUIView_content__block_invoke(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained displayObserver];
  [v5 complicationDisplay:WeakRetained renderStatsWithTime:a2 cost:a3];
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  v5.receiver = self;
  v5.super_class = NTKRichComplicationRectangularFullSwiftUIView;
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
  contentData = [template contentData];
  [(CDComplicationHostingView *)self->_swiftUIView setViewData:contentData];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationRectangularFullSwiftUIView;
  [(CDRichComplicationView *)&v5 transitionToMonochromeWithFraction:?];
  if (([(CDComplicationHostingView *)self->_swiftUIView isHidden]& 1) == 0)
  {
    [(CDComplicationHostingView *)self->_swiftUIView transitionToMonochromeWithFraction:fraction];
  }
}

- (void)updateMonochromeColor
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationRectangularFullSwiftUIView;
  [(CDRichComplicationView *)&v3 updateMonochromeColor];
  if (([(CDComplicationHostingView *)self->_swiftUIView isHidden]& 1) == 0)
  {
    [(CDComplicationHostingView *)self->_swiftUIView updateMonochromeColor];
  }
}

@end