@interface NTKRichComplicationBaseCircularStackSwiftUIView
- (id)line1View;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
- (void)setPaused:(BOOL)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationBaseCircularStackSwiftUIView

- (id)line1View
{
  line1SwiftUIView = self->_line1SwiftUIView;
  if (!line1SwiftUIView)
  {
    v4 = [off_27877BE70 async];
    v5 = self->_line1SwiftUIView;
    self->_line1SwiftUIView = v4;

    [(CDComplicationHostingView *)self->_line1SwiftUIView setFilterProvider:self];
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__NTKRichComplicationBaseCircularStackSwiftUIView_line1View__block_invoke;
    v7[3] = &unk_27877FDC8;
    objc_copyWeak(&v8, &location);
    [(CDComplicationHostingView *)self->_line1SwiftUIView setRenderStatsHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
    line1SwiftUIView = self->_line1SwiftUIView;
  }

  return line1SwiftUIView;
}

void __60__NTKRichComplicationBaseCircularStackSwiftUIView_line1View__block_invoke(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained displayObserver];
  [v5 complicationDisplay:WeakRetained renderStatsWithTime:a2 cost:a3];
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBaseCircularStackSwiftUIView;
  [(CDRichComplicationView *)&v5 setPaused:?];
  [(CDComplicationHostingView *)self->_line1SwiftUIView setPaused:v3];
}

- (void)_handleTemplate:(id)a3 reason:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = NTKRichComplicationBaseCircularStackSwiftUIView;
  v6 = a3;
  [(NTKRichComplicationCircularStackContentTextView *)&v8 _handleTemplate:v6 reason:a4];
  v7 = [v6 contentData];

  [(CDComplicationHostingView *)self->_line1SwiftUIView setViewData:v7];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBaseCircularStackSwiftUIView;
  [(NTKRichComplicationCircularStackContentTextView *)&v5 transitionToMonochromeWithFraction:?];
  [(CDComplicationHostingView *)self->_line1SwiftUIView transitionToMonochromeWithFraction:a3];
}

- (void)updateMonochromeColor
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationBaseCircularStackSwiftUIView;
  [(NTKRichComplicationCircularStackContentTextView *)&v3 updateMonochromeColor];
  [(CDComplicationHostingView *)self->_line1SwiftUIView updateMonochromeColor];
}

@end