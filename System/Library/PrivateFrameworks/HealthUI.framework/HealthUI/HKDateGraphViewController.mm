@interface HKDateGraphViewController
- (CGSize)minimumSize;
- (HKDateGraphViewController)initWithCoder:(id)coder;
- (HKDateGraphViewController)initWithDateZoom:(int64_t)zoom previousDateZoom:(int64_t)dateZoom previousXAxisSpace:(double)space currentCalendar:(id)calendar customDateAxis:(id)axis;
- (HKDateGraphViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_createGraphViewWithDateZoom:(int64_t)zoom previousDateZoom:(int64_t)dateZoom previousXAxisSpace:(double)space currentCalendar:(id)calendar customDateAxis:(id)axis;
- (id)_dateAxisStyle;
- (int64_t)defaultAlignmentForTimeScope:(int64_t)scope;
- (void)_marginStyleChangeForContext:(int64_t)context graphView:(id)view;
- (void)_setupGraphViewSelectionStyle;
- (void)graphView:(id)view didFinishUserScrollingToValueRange:(id)range;
- (void)graphView:(id)view didUpdateVisibleValueRange:(id)range changeContext:(int64_t)context;
- (void)loadView;
- (void)setDetailView:(id)view;
- (void)setDisableXAxis:(BOOL)axis;
- (void)setMinimumSize:(CGSize)size;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HKDateGraphViewController

- (HKDateGraphViewController)initWithDateZoom:(int64_t)zoom previousDateZoom:(int64_t)dateZoom previousXAxisSpace:(double)space currentCalendar:(id)calendar customDateAxis:(id)axis
{
  calendarCopy = calendar;
  v14 = [(HKDateGraphViewController *)self _createGraphViewWithDateZoom:zoom previousDateZoom:dateZoom previousXAxisSpace:calendarCopy currentCalendar:axis customDateAxis:space];
  v18.receiver = self;
  v18.super_class = HKDateGraphViewController;
  v15 = [(HKGraphViewController *)&v18 initWithGraphView:v14 dateZoom:zoom];
  v16 = v15;
  if (v15)
  {
    v15->_minimumSize = xmmword_1C3D5D480;
    objc_storeStrong(&v15->_currentCalendar, calendar);
  }

  return v16;
}

- (HKDateGraphViewController)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKDateGraphViewController.m" lineNumber:72 description:@"Use designated initializer"];

  return 0;
}

- (HKDateGraphViewController)initWithNibName:(id)name bundle:(id)bundle
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKDateGraphViewController.m" lineNumber:77 description:@"Use designated initializer"];

  return 0;
}

- (void)setMinimumSize:(CGSize)size
{
  self->_minimumSize = size;
  view = [(HKDateGraphViewController *)self view];
  [(HKDateGraphViewController *)self minimumSize];
  [view setMinimumHeight:v4];
  [(HKDateGraphViewController *)self minimumSize];
  [view setMinimumWidth:?];
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
  view = [(HKDateGraphViewController *)self view];
  [view setClipsToBounds:1];

  view2 = [(HKDateGraphViewController *)self view];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view2 setBackgroundColor:systemBackgroundColor];

  view3 = [(HKDateGraphViewController *)self view];
  graphView = [(HKGraphViewController *)self graphView];
  [view3 addSubview:graphView];
}

- (void)viewWillLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = HKDateGraphViewController;
  [(HKDateGraphViewController *)&v17 viewWillLayoutSubviews];
  view = [(HKDateGraphViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  graphView = [(HKGraphViewController *)self graphView];
  [graphView setFrame:{v5, v7, v9, v11 + -12.0}];

  view2 = [(HKDateGraphViewController *)self view];
  [view2 layoutMargins];
  v15 = v14;

  if (v15 > 16.0)
  {
    graphView2 = [(HKGraphViewController *)self graphView];
    [graphView2 setHardLeftMarginWidth:v15];
  }
}

- (id)_createGraphViewWithDateZoom:(int64_t)zoom previousDateZoom:(int64_t)dateZoom previousXAxisSpace:(double)space currentCalendar:(id)calendar customDateAxis:(id)axis
{
  calendarCopy = calendar;
  axisCopy = axis;
  v14 = [HKGraphView alloc];
  v15 = [(HKGraphView *)v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(HKGraphView *)v15 setXAxisSpace:space];
  hk_chartAxisMajorGridColor = [MEMORY[0x1E69DC888] hk_chartAxisMajorGridColor];
  [(HKGraphView *)v15 setOutlineColor:hk_chartAxisMajorGridColor];

  [(HKGraphView *)v15 setOutlineOptions:5];
  [(HKGraphView *)v15 setFeatheringOptions:15];
  if (axisCopy)
  {
    v17 = axisCopy;
  }

  else
  {
    v18 = [HKDateAxis alloc];
    _dateAxisStyle = [(HKDateGraphViewController *)self _dateAxisStyle];
    v17 = [(HKDateAxis *)v18 initWithCurrentCalendar:calendarCopy axisStyle:_dateAxisStyle];
  }

  [(HKGraphView *)v15 setMinimumDateZoom:zoom];
  [(HKGraphView *)v15 setMaximumDateZoom:zoom];
  [(HKGraphView *)v15 setPreviousDateZoom:dateZoom];
  [(HKGraphView *)v15 setXAxis:v17];
  [(HKGraphView *)v15 setCurrentCalendar:calendarCopy];
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
  graphView = [(HKGraphViewController *)self graphView];
  [graphView setSelectionStyle:v6];
}

- (id)_dateAxisStyle
{
  v3 = objc_opt_new();
  hk_chartAxisLabelColor = [MEMORY[0x1E69DC888] hk_chartAxisLabelColor];
  v5 = [HKStrokeStyle strokeStyleWithColor:hk_chartAxisLabelColor lineWidth:1.0];
  [v3 setAxisLineStyle:v5];

  _xAxisLabelFont = [(HKDateGraphViewController *)self _xAxisLabelFont];
  v7 = [HKAxisLabelStyle labelStyleWithColor:hk_chartAxisLabelColor font:_xAxisLabelFont horizontalAlignment:0 verticalAlignment:3];
  [v3 setLabelStyle:v7];

  [v3 setTickPositions:0];
  [v3 setAxisLabelPosition:1];
  [v3 setShowGridLines:1];
  [v3 setLocation:2];
  [v3 setFillInnerPadding:3.0];
  hk_chartGrayGraphColor = [MEMORY[0x1E69DC888] hk_chartGrayGraphColor];
  hk_chartAxisMajorGridColor = [MEMORY[0x1E69DC888] hk_chartAxisMajorGridColor];
  hk_chartAxisMinorGridColor = [MEMORY[0x1E69DC888] hk_chartAxisMinorGridColor];
  v11 = [HKStrokeStyle strokeStyleWithColor:hk_chartAxisMajorGridColor lineWidth:0.5];
  [v11 setDashStyle:1];
  [v3 setGridLineStyle:v11];
  v12 = [HKStrokeStyle strokeStyleWithColor:hk_chartAxisMinorGridColor lineWidth:0.5];
  [v12 setDashStyle:1];
  [v3 setMinorGridLineStyle:v12];
  v13 = [HKStrokeStyle strokeStyleWithColor:hk_chartGrayGraphColor lineWidth:0.5];
  [v13 setDashStyle:0];
  [v3 setReferenceGridLineStyle:v13];

  return v3;
}

- (void)_marginStyleChangeForContext:(int64_t)context graphView:(id)view
{
  v4 = context != 1;
  viewCopy = view;
  v5 = 2 * v4;
  [viewCopy setVirtualLeftMarginStyle:v5];
  [viewCopy setVirtualRightMarginStyle:v5];
}

- (void)graphView:(id)view didUpdateVisibleValueRange:(id)range changeContext:(int64_t)context
{
  rangeCopy = range;
  viewCopy = view;
  [(HKDateGraphViewController *)self _marginStyleChangeForContext:context graphView:viewCopy];
  graphViewDelegateProxy = [(HKGraphViewController *)self graphViewDelegateProxy];
  [graphViewDelegateProxy graphView:viewCopy didUpdateVisibleValueRange:rangeCopy changeContext:context];
}

- (void)graphView:(id)view didFinishUserScrollingToValueRange:(id)range
{
  rangeCopy = range;
  viewCopy = view;
  graphViewDelegateProxy = [(HKGraphViewController *)self graphViewDelegateProxy];
  [graphViewDelegateProxy graphView:viewCopy didFinishUserScrollingToValueRange:rangeCopy];
}

- (int64_t)defaultAlignmentForTimeScope:(int64_t)scope
{
  graphViewDelegateProxy = [(HKGraphViewController *)self graphViewDelegateProxy];
  v5 = [graphViewDelegateProxy defaultAlignmentForTimeScope:scope];

  return v5;
}

- (void)setDisableXAxis:(BOOL)axis
{
  axisCopy = axis;
  self->_disableXAxis = axis;
  graphView = [(HKGraphViewController *)self graphView];
  [graphView setDisableXAxis:axisCopy];
}

- (void)setDetailView:(id)view
{
  v5.receiver = self;
  v5.super_class = HKDateGraphViewController;
  [(HKGraphViewController *)&v5 setDetailView:view];
  graphView = [(HKGraphViewController *)self graphView];
  [graphView setVirtualLeftMarginWidth:0.0];
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