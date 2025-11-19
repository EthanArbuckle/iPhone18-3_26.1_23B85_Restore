@interface HKDateGraphViewController
- (CGSize)minimumSize;
- (HKDateGraphViewController)initWithCoder:(id)a3;
- (HKDateGraphViewController)initWithDateZoom:(int64_t)a3 previousDateZoom:(int64_t)a4 previousXAxisSpace:(double)a5 currentCalendar:(id)a6 customDateAxis:(id)a7;
- (HKDateGraphViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_createGraphViewWithDateZoom:(int64_t)a3 previousDateZoom:(int64_t)a4 previousXAxisSpace:(double)a5 currentCalendar:(id)a6 customDateAxis:(id)a7;
- (id)_dateAxisStyle;
- (int64_t)defaultAlignmentForTimeScope:(int64_t)a3;
- (void)_marginStyleChangeForContext:(int64_t)a3 graphView:(id)a4;
- (void)_setupGraphViewSelectionStyle;
- (void)graphView:(id)a3 didFinishUserScrollingToValueRange:(id)a4;
- (void)graphView:(id)a3 didUpdateVisibleValueRange:(id)a4 changeContext:(int64_t)a5;
- (void)loadView;
- (void)setDetailView:(id)a3;
- (void)setDisableXAxis:(BOOL)a3;
- (void)setMinimumSize:(CGSize)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HKDateGraphViewController

- (HKDateGraphViewController)initWithDateZoom:(int64_t)a3 previousDateZoom:(int64_t)a4 previousXAxisSpace:(double)a5 currentCalendar:(id)a6 customDateAxis:(id)a7
{
  v13 = a6;
  v14 = [(HKDateGraphViewController *)self _createGraphViewWithDateZoom:a3 previousDateZoom:a4 previousXAxisSpace:v13 currentCalendar:a7 customDateAxis:a5];
  v18.receiver = self;
  v18.super_class = HKDateGraphViewController;
  v15 = [(HKGraphViewController *)&v18 initWithGraphView:v14 dateZoom:a3];
  v16 = v15;
  if (v15)
  {
    v15->_minimumSize = xmmword_1C3D5D480;
    objc_storeStrong(&v15->_currentCalendar, a6);
  }

  return v16;
}

- (HKDateGraphViewController)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HKDateGraphViewController.m" lineNumber:72 description:@"Use designated initializer"];

  return 0;
}

- (HKDateGraphViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"HKDateGraphViewController.m" lineNumber:77 description:@"Use designated initializer"];

  return 0;
}

- (void)setMinimumSize:(CGSize)a3
{
  self->_minimumSize = a3;
  v5 = [(HKDateGraphViewController *)self view];
  [(HKDateGraphViewController *)self minimumSize];
  [v5 setMinimumHeight:v4];
  [(HKDateGraphViewController *)self minimumSize];
  [v5 setMinimumWidth:?];
}

- (void)loadView
{
  v4 = [[HKBorderLineView alloc] initWithFrame:0.0, 0.0, 1.0, 1.0];
  [(HKDateGraphViewController *)self minimumSize];
  [(HKBorderLineView *)v4 setMinimumHeight:v3];
  [(HKDateGraphViewController *)self minimumSize];
  [(HKBorderLineView *)v4 setMinimumWidth:?];
  [(HKBorderLineView *)v4 setPreservesSuperviewLayoutMargins:1];
  [(HKDateGraphViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = HKDateGraphViewController;
  [(HKDateGraphViewController *)&v8 viewDidLoad];
  [(HKDateGraphViewController *)self _setupGraphViewSelectionStyle];
  v3 = [(HKDateGraphViewController *)self view];
  [v3 setClipsToBounds:1];

  v4 = [(HKDateGraphViewController *)self view];
  v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v4 setBackgroundColor:v5];

  v6 = [(HKDateGraphViewController *)self view];
  v7 = [(HKGraphViewController *)self graphView];
  [v6 addSubview:v7];
}

- (void)viewWillLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = HKDateGraphViewController;
  [(HKDateGraphViewController *)&v17 viewWillLayoutSubviews];
  v3 = [(HKDateGraphViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(HKGraphViewController *)self graphView];
  [v12 setFrame:{v5, v7, v9, v11 + -12.0}];

  v13 = [(HKDateGraphViewController *)self view];
  [v13 layoutMargins];
  v15 = v14;

  if (v15 > 16.0)
  {
    v16 = [(HKGraphViewController *)self graphView];
    [v16 setHardLeftMarginWidth:v15];
  }
}

- (id)_createGraphViewWithDateZoom:(int64_t)a3 previousDateZoom:(int64_t)a4 previousXAxisSpace:(double)a5 currentCalendar:(id)a6 customDateAxis:(id)a7
{
  v12 = a6;
  v13 = a7;
  v14 = [HKGraphView alloc];
  v15 = [(HKGraphView *)v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(HKGraphView *)v15 setXAxisSpace:a5];
  v16 = [MEMORY[0x1E69DC888] hk_chartAxisMajorGridColor];
  [(HKGraphView *)v15 setOutlineColor:v16];

  [(HKGraphView *)v15 setOutlineOptions:5];
  [(HKGraphView *)v15 setFeatheringOptions:15];
  if (v13)
  {
    v17 = v13;
  }

  else
  {
    v18 = [HKDateAxis alloc];
    v19 = [(HKDateGraphViewController *)self _dateAxisStyle];
    v17 = [(HKDateAxis *)v18 initWithCurrentCalendar:v12 axisStyle:v19];
  }

  [(HKGraphView *)v15 setMinimumDateZoom:a3];
  [(HKGraphView *)v15 setMaximumDateZoom:a3];
  [(HKGraphView *)v15 setPreviousDateZoom:a4];
  [(HKGraphView *)v15 setXAxis:v17];
  [(HKGraphView *)v15 setCurrentCalendar:v12];
  [(HKGraphView *)v15 setVirtualLeftMarginWidth:0.0];
  [(HKGraphView *)v15 setVirtualLeftMarginStyle:0];
  [(HKGraphView *)v15 setHardLeftMarginWidth:16.0];
  [(HKGraphView *)v15 setVirtualRightMarginWidth:0.0];
  [(HKGraphView *)v15 setVirtualRightMarginStyle:2];

  return v15;
}

- (void)_setupGraphViewSelectionStyle
{
  v6 = objc_alloc_init(HKGraphViewSelectionStyle);
  v3 = [HKStrokeStyle strokeStyleWithColor:0 lineWidth:2.0];
  [(HKGraphViewSelectionStyle *)v6 setSelectedPointLineStrokeStyle:v3];

  v4 = [HKStrokeStyle strokeStyleWithColor:0 lineWidth:HKUIOnePixel()];
  [(HKGraphViewSelectionStyle *)v6 setTouchPointLineStrokeStyle:v4];

  [(HKGraphViewSelectionStyle *)v6 setUnselectedSeriesAlpha:1.0];
  v5 = [(HKGraphViewController *)self graphView];
  [v5 setSelectionStyle:v6];
}

- (id)_dateAxisStyle
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E69DC888] hk_chartAxisLabelColor];
  v5 = [HKStrokeStyle strokeStyleWithColor:v4 lineWidth:1.0];
  [v3 setAxisLineStyle:v5];

  v6 = [(HKDateGraphViewController *)self _xAxisLabelFont];
  v7 = [HKAxisLabelStyle labelStyleWithColor:v4 font:v6 horizontalAlignment:0 verticalAlignment:3];
  [v3 setLabelStyle:v7];

  [v3 setTickPositions:0];
  [v3 setAxisLabelPosition:1];
  [v3 setShowGridLines:1];
  [v3 setLocation:2];
  [v3 setFillInnerPadding:3.0];
  v8 = [MEMORY[0x1E69DC888] hk_chartGrayGraphColor];
  v9 = [MEMORY[0x1E69DC888] hk_chartAxisMajorGridColor];
  v10 = [MEMORY[0x1E69DC888] hk_chartAxisMinorGridColor];
  v11 = [HKStrokeStyle strokeStyleWithColor:v9 lineWidth:0.5];
  [v11 setDashStyle:1];
  [v3 setGridLineStyle:v11];
  v12 = [HKStrokeStyle strokeStyleWithColor:v10 lineWidth:0.5];
  [v12 setDashStyle:1];
  [v3 setMinorGridLineStyle:v12];
  v13 = [HKStrokeStyle strokeStyleWithColor:v8 lineWidth:0.5];
  [v13 setDashStyle:0];
  [v3 setReferenceGridLineStyle:v13];

  return v3;
}

- (void)_marginStyleChangeForContext:(int64_t)a3 graphView:(id)a4
{
  v4 = a3 != 1;
  v6 = a4;
  v5 = 2 * v4;
  [v6 setVirtualLeftMarginStyle:v5];
  [v6 setVirtualRightMarginStyle:v5];
}

- (void)graphView:(id)a3 didUpdateVisibleValueRange:(id)a4 changeContext:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  [(HKDateGraphViewController *)self _marginStyleChangeForContext:a5 graphView:v9];
  v10 = [(HKGraphViewController *)self graphViewDelegateProxy];
  [v10 graphView:v9 didUpdateVisibleValueRange:v8 changeContext:a5];
}

- (void)graphView:(id)a3 didFinishUserScrollingToValueRange:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HKGraphViewController *)self graphViewDelegateProxy];
  [v8 graphView:v7 didFinishUserScrollingToValueRange:v6];
}

- (int64_t)defaultAlignmentForTimeScope:(int64_t)a3
{
  v4 = [(HKGraphViewController *)self graphViewDelegateProxy];
  v5 = [v4 defaultAlignmentForTimeScope:a3];

  return v5;
}

- (void)setDisableXAxis:(BOOL)a3
{
  v3 = a3;
  self->_disableXAxis = a3;
  v4 = [(HKGraphViewController *)self graphView];
  [v4 setDisableXAxis:v3];
}

- (void)setDetailView:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKDateGraphViewController;
  [(HKGraphViewController *)&v5 setDetailView:a3];
  v4 = [(HKGraphViewController *)self graphView];
  [v4 setVirtualLeftMarginWidth:0.0];
}

- (CGSize)minimumSize
{
  width = self->_minimumSize.width;
  height = self->_minimumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end