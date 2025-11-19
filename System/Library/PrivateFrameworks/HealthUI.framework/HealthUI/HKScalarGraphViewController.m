@interface HKScalarGraphViewController
- (HKScalarGraphViewController)initWithMinimumHeight:(double)a3 labelDimension:(id)a4 labelEndings:(int64_t)a5 numericAxisConfigurationOverrides:(id)a6;
- (id)_buildGraphViewWithLabelDimension:(id)a3 labelEndings:(int64_t)a4 numericAxisConfigurationOverrides:(id)a5;
- (void)_pinView:(id)a3 toParentView:(id)a4;
- (void)_setupGraphViewSelectionStyle;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation HKScalarGraphViewController

- (HKScalarGraphViewController)initWithMinimumHeight:(double)a3 labelDimension:(id)a4 labelEndings:(int64_t)a5 numericAxisConfigurationOverrides:(id)a6
{
  v8 = [(HKScalarGraphViewController *)self _buildGraphViewWithLabelDimension:a4 labelEndings:a5 numericAxisConfigurationOverrides:a6];
  v12.receiver = self;
  v12.super_class = HKScalarGraphViewController;
  v9 = [(HKGraphViewController *)&v12 initWithGraphView:v8 dateZoom:5];
  v10 = v9;
  if (v9)
  {
    v9->_minimumHeight = a3;
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
  v3 = [(HKScalarGraphViewController *)self view];
  [v3 setClipsToBounds:1];
  v4 = [(HKGraphViewController *)self graphView];
  [v3 addSubview:v4];

  v5 = [(HKGraphViewController *)self graphView];
  [(HKScalarGraphViewController *)self _pinView:v5 toParentView:v3];
}

- (void)_pinView:(id)a3 toParentView:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [v6 leadingAnchor];
  v8 = [v5 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  [v9 setActive:1];

  v10 = [v6 trailingAnchor];
  v11 = [v5 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  [v12 setActive:1];

  v13 = [v6 topAnchor];
  v14 = [v5 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v18 = [v6 bottomAnchor];

  v16 = [v5 bottomAnchor];

  v17 = [v18 constraintEqualToAnchor:v16];
  [v17 setActive:1];
}

- (id)_buildGraphViewWithLabelDimension:(id)a3 labelEndings:(int64_t)a4 numericAxisConfigurationOverrides:(id)a5
{
  v6 = a3;
  v24 = a5;
  v7 = [HKGraphView alloc];
  v8 = [(HKGraphView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = [HKValueRange valueRangeWithMinValue:&unk_1F4384860 maxValue:&unk_1F4384870];
  [(HKGraphView *)v8 setEffectiveAxisRange:v9 effectiveVisibleRangeCadence:v9 effectiveVisibleRangeActive:v9];
  [(HKGraphView *)v8 setAxisInset:0.0, 0.0, 30.0, 0.0];
  v10 = [MEMORY[0x1E69DC888] hk_chartAxisMajorGridColor];
  [(HKGraphView *)v8 setOutlineColor:v10];

  [(HKGraphView *)v8 setOutlineOptions:5];
  [(HKGraphView *)v8 setFeatheringOptions:15];
  [(HKGraphView *)v8 setHardLeftMarginWidth:16.0];
  v11 = objc_opt_new();
  v12 = [MEMORY[0x1E69DC888] hk_chartAxisLabelColor];
  v22 = [HKStrokeStyle strokeStyleWithColor:v12 lineWidth:1.0];
  [v11 setAxisLineStyle:?];
  v21 = [MEMORY[0x1E69DB878] hk_chartAxisLabelFont];
  v13 = [HKAxisLabelStyle labelStyleWithColor:"labelStyleWithColor:font:horizontalAlignment:verticalAlignment:" font:v12 horizontalAlignment:? verticalAlignment:?];
  [v11 setLabelStyle:v13];

  [v11 setTickPositions:0];
  [v11 setAxisLabelPosition:1];
  [v11 setShowGridLines:1];
  [v11 setLocation:2];
  [v11 setFillOuterPadding:15.0];
  v14 = [MEMORY[0x1E69DC888] hk_chartAxisMajorGridColor];
  v15 = [v14 colorWithAlphaComponent:0.5];
  v16 = [HKStrokeStyle strokeStyleWithColor:v15 lineWidth:0.5];

  [v16 setDashStyle:1];
  [v11 setGridLineStyle:v16];
  v17 = objc_alloc_init(HKNumericAxisConfiguration);
  v18 = v17;
  if (v6)
  {
    [(HKNumericAxisConfiguration *)v17 setLabelDimension:v6];
  }

  [(HKAxisConfiguration *)v18 setPreferredStyle:v11];
  [(HKNumericAxisConfiguration *)v18 setBottomVerticalLabelPadding:0.0];
  [(HKNumericAxisConfiguration *)v18 setTopVerticalLabelPadding:0.0];
  if (v24)
  {
    [(HKNumericAxisConfiguration *)v18 applyOverridesFromNumericAxisConfiguration:v24];
  }

  v19 = [[HKNumericAxis alloc] initWithConfiguration:v18];
  [(HKAxis *)v19 setAxisLabelEndings:a4];
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
  v5 = [(HKGraphViewController *)self graphView];
  [v5 setSelectionStyle:v6];
}

@end