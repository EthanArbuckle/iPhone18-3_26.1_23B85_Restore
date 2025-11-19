@interface NTKRichComplicationBaseCircularSwiftUIView
- (NTKRichComplicationBaseCircularSwiftUIView)initWithFamily:(int64_t)a3;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
- (void)layoutSubviews;
- (void)setPaused:(BOOL)a3;
@end

@implementation NTKRichComplicationBaseCircularSwiftUIView

- (NTKRichComplicationBaseCircularSwiftUIView)initWithFamily:(int64_t)a3
{
  v14.receiver = self;
  v14.super_class = NTKRichComplicationBaseCircularSwiftUIView;
  v3 = [(NTKRichComplicationCircularBaseView *)&v14 initWithFamily:a3];
  if (v3)
  {
    v4 = [off_27877BE70 async];
    swiftUIView = v3->_swiftUIView;
    v3->_swiftUIView = v4;

    [(CDComplicationHostingView *)v3->_swiftUIView setFilterProvider:v3];
    objc_initWeak(&location, v3);
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __61__NTKRichComplicationBaseCircularSwiftUIView_initWithFamily___block_invoke;
    v11 = &unk_27877FDC8;
    objc_copyWeak(&v12, &location);
    [(CDComplicationHostingView *)v3->_swiftUIView setRenderStatsHandler:&v8];
    v6 = [(NTKRichComplicationCircularBaseView *)v3 contentView:v8];
    [v6 addSubview:v3->_swiftUIView];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __61__NTKRichComplicationBaseCircularSwiftUIView_initWithFamily___block_invoke(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained displayObserver];
  [v5 complicationDisplay:WeakRetained renderStatsWithTime:a2 cost:a3];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = NTKRichComplicationBaseCircularSwiftUIView;
  [(NTKRichComplicationCircularBaseView *)&v14 layoutSubviews];
  v3 = [(NTKRichComplicationCircularBaseView *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(CDComplicationHostingView *)self->_swiftUIView setFrame:v5, v7, v9, v11];
  v15.origin.x = v5;
  v15.origin.y = v7;
  v15.size.width = v9;
  v15.size.height = v11;
  v12 = CGRectGetWidth(v15) * 0.5;
  v13 = [(CDComplicationHostingView *)self->_swiftUIView layer];
  [v13 setCornerRadius:v12];
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBaseCircularSwiftUIView;
  [(CDRichComplicationView *)&v5 setPaused:?];
  [(CDComplicationHostingView *)self->_swiftUIView setPaused:v3];
}

- (void)_handleTemplate:(id)a3 reason:(int64_t)a4
{
  v5 = [a3 contentData];
  [(CDComplicationHostingView *)self->_swiftUIView setViewData:v5];
}

@end