@interface HKScalarGraphViewController
- (HKScalarGraphViewController)initWithMinimumHeight:(double)height labelDimension:(id)dimension labelEndings:(int64_t)endings numericAxisConfigurationOverrides:(id)overrides;
- (id)_buildGraphViewWithLabelDimension:(id)dimension labelEndings:(int64_t)endings numericAxisConfigurationOverrides:(id)overrides;
- (void)_pinView:(id)view toParentView:(id)parentView;
- (void)_setupGraphViewSelectionStyle;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation HKScalarGraphViewController

- (HKScalarGraphViewController)initWithMinimumHeight:(double)height labelDimension:(id)dimension labelEndings:(int64_t)endings numericAxisConfigurationOverrides:(id)overrides
{
  v8 = [(HKScalarGraphViewController *)self _buildGraphViewWithLabelDimension:dimension labelEndings:endings numericAxisConfigurationOverrides:overrides];
  v12.receiver = self;
  v12.super_class = HKScalarGraphViewController;
  v9 = [(HKGraphViewController *)&v12 initWithGraphView:v8 dateZoom:5];
  v10 = v9;
  if (v9)
  {
    v9->_minimumHeight = height;
  }

  return v10;
}

- (void)loadView
{
  v3 = [[HKMinimumSizeView alloc] initWithFrame:0.0, 0.0, 1.0, 1.0];
  [(HKMinimumSizeView *)v3 setMinimumHeight:self->_minimumHeight];
  [(HKScalarGraphViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = HKScalarGraphViewController;
  [(HKScalarGraphViewController *)&v6 viewDidLoad];
  [(HKScalarGraphViewController *)self _setupGraphViewSelectionStyle];
  view = [(HKScalarGraphViewController *)self view];
  [view setClipsToBounds:1];
  graphView = [(HKGraphViewController *)self graphView];
  [view addSubview:graphView];

  graphView2 = [(HKGraphViewController *)self graphView];
  [(HKScalarGraphViewController *)self _pinView:graphView2 toParentView:view];
}

- (void)_pinView:(id)view toParentView:(id)parentView
{
  parentViewCopy = parentView;
  viewCopy = view;
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingAnchor = [viewCopy leadingAnchor];
  leadingAnchor2 = [parentViewCopy leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v9 setActive:1];

  trailingAnchor = [viewCopy trailingAnchor];
  trailingAnchor2 = [parentViewCopy trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v12 setActive:1];

  topAnchor = [viewCopy topAnchor];
  topAnchor2 = [parentViewCopy topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v15 setActive:1];

  bottomAnchor = [viewCopy bottomAnchor];

  bottomAnchor2 = [parentViewCopy bottomAnchor];

  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v17 setActive:1];
}

- (id)_buildGraphViewWithLabelDimension:(id)dimension labelEndings:(int64_t)endings numericAxisConfigurationOverrides:(id)overrides
{
  dimensionCopy = dimension;
  overridesCopy = overrides;
  v7 = [HKGraphView alloc];
  v8 = [(HKGraphView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = [HKValueRange valueRangeWithMinValue:&unk_1F4384860 maxValue:&unk_1F4384870];
  [(HKGraphView *)v8 setEffectiveAxisRange:v9 effectiveVisibleRangeCadence:v9 effectiveVisibleRangeActive:v9];
  [(HKGraphView *)v8 setAxisInset:0.0, 0.0, 30.0, 0.0];
  hk_chartAxisMajorGridColor = [MEMORY[0x1E69DC888] hk_chartAxisMajorGridColor];
  [(HKGraphView *)v8 setOutlineColor:hk_chartAxisMajorGridColor];

  [(HKGraphView *)v8 setOutlineOptions:5];
  [(HKGraphView *)v8 setFeatheringOptions:15];
  [(HKGraphView *)v8 setHardLeftMarginWidth:16.0];
  v11 = objc_opt_new();
  hk_chartAxisLabelColor = [MEMORY[0x1E69DC888] hk_chartAxisLabelColor];
  v22 = [HKStrokeStyle strokeStyleWithColor:hk_chartAxisLabelColor lineWidth:1.0];
  [v11 setAxisLineStyle:?];
  hk_chartAxisLabelFont = [MEMORY[0x1E69DB878] hk_chartAxisLabelFont];
  v13 = [HKAxisLabelStyle labelStyleWithColor:"labelStyleWithColor:font:horizontalAlignment:verticalAlignment:" font:hk_chartAxisLabelColor horizontalAlignment:? verticalAlignment:?];
  [v11 setLabelStyle:v13];

  [v11 setTickPositions:0];
  [v11 setAxisLabelPosition:1];
  [v11 setShowGridLines:1];
  [v11 setLocation:2];
  [v11 setFillOuterPadding:15.0];
  hk_chartAxisMajorGridColor2 = [MEMORY[0x1E69DC888] hk_chartAxisMajorGridColor];
  v15 = [hk_chartAxisMajorGridColor2 colorWithAlphaComponent:0.5];
  v16 = [HKStrokeStyle strokeStyleWithColor:v15 lineWidth:0.5];

  [v16 setDashStyle:1];
  [v11 setGridLineStyle:v16];
  v17 = objc_alloc_init(HKNumericAxisConfiguration);
  v18 = v17;
  if (dimensionCopy)
  {
    [(HKNumericAxisConfiguration *)v17 setLabelDimension:dimensionCopy];
  }

  [(HKAxisConfiguration *)v18 setPreferredStyle:v11];
  [(HKNumericAxisConfiguration *)v18 setBottomVerticalLabelPadding:0.0];
  [(HKNumericAxisConfiguration *)v18 setTopVerticalLabelPadding:0.0];
  if (overridesCopy)
  {
    [(HKNumericAxisConfiguration *)v18 applyOverridesFromNumericAxisConfiguration:overridesCopy];
  }

  v19 = [[HKNumericAxis alloc] initWithConfiguration:v18];
  [(HKAxis *)v19 setAxisLabelEndings:endings];
  [(HKGraphView *)v8 setXAxis:v19];

  return v8;
}

- (void)_setupGraphViewSelectionStyle
{
  v6 = objc_alloc_init(HKGraphViewSelectionStyle);
  v3 = [HKStrokeStyle strokeStyleWithColor:0 lineWidth:2.0];
  [(HKGraphViewSelectionStyle *)v6 setSelectedPointLineStrokeStyle:v3];

  v4 = [HKStrokeStyle strokeStyleWithColor:0 lineWidth:HKUIOnePixel()];
  [(HKGraphViewSelectionStyle *)v6 setTouchPointLineStrokeStyle:v4];

  [(HKGraphViewSelectionStyle *)v6 setUnselectedSeriesAlpha:0.2];
  graphView = [(HKGraphViewController *)self graphView];
  [graphView setSelectionStyle:v6];
}

@end