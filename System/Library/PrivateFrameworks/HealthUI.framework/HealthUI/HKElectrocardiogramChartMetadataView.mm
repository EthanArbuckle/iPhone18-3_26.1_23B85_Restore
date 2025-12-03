@interface HKElectrocardiogramChartMetadataView
- (CGSize)gridSize;
- (HKElectrocardiogramChartMetadataView)initWithGridSize:(CGSize)size;
- (void)_setUpScrollViewContent;
- (void)_setUpUI;
- (void)_updateMargins;
- (void)layoutMarginsDidChange;
@end

@implementation HKElectrocardiogramChartMetadataView

- (HKElectrocardiogramChartMetadataView)initWithGridSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v28.receiver = self;
  v28.super_class = HKElectrocardiogramChartMetadataView;
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [(HKElectrocardiogramChartMetadataView *)&v28 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E69DCEF8]) initWithFrame:{v5, v6, v7, v8}];
    scrollView = v9->_scrollView;
    v9->_scrollView = v10;

    height = [[HKElectrocardiogramChartView alloc] initWithGridSize:width, height];
    chartView = v9->_chartView;
    v9->_chartView = height;

    v14 = [HKElectrocardiogramAxisView alloc];
    [(HKElectrocardiogramChartView *)v9->_chartView pointsPerSecond];
    v16 = v15;
    gridOptions = [(HKElectrocardiogramChartView *)v9->_chartView gridOptions];
    firstObject = [gridOptions firstObject];
    lineColor = [firstObject lineColor];
    gridOptions2 = [(HKElectrocardiogramChartView *)v9->_chartView gridOptions];
    firstObject2 = [gridOptions2 firstObject];
    [firstObject2 lineWidth];
    v23 = [(HKElectrocardiogramAxisView *)v14 initWithAxisSpacing:lineColor lineColor:v16 lineWidth:v22];
    axisView = v9->_axisView;
    v9->_axisView = v23;

    v25 = objc_alloc_init(HKElectrocardiogramInfoView);
    infoView = v9->_infoView;
    v9->_infoView = v25;

    [(HKElectrocardiogramChartMetadataView *)v9 _setUpUI];
  }

  return v9;
}

- (void)_setUpUI
{
  v39[7] = *MEMORY[0x1E69E9840];
  [(HKElectrocardiogramChartMetadataView *)self _setUpScrollViewContent];
  infoView = [(HKElectrocardiogramChartMetadataView *)self infoView];
  [infoView setTranslatesAutoresizingMaskIntoConstraints:0];

  scrollView = [(HKElectrocardiogramChartMetadataView *)self scrollView];
  [(HKElectrocardiogramChartMetadataView *)self addSubview:scrollView];

  infoView2 = [(HKElectrocardiogramChartMetadataView *)self infoView];
  [(HKElectrocardiogramChartMetadataView *)self addSubview:infoView2];

  v25 = MEMORY[0x1E696ACD8];
  scrollView2 = [(HKElectrocardiogramChartMetadataView *)self scrollView];
  topAnchor = [scrollView2 topAnchor];
  topAnchor2 = [(HKElectrocardiogramChartMetadataView *)self topAnchor];
  v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v39[0] = v35;
  scrollView3 = [(HKElectrocardiogramChartMetadataView *)self scrollView];
  bottomAnchor = [scrollView3 bottomAnchor];
  infoView3 = [(HKElectrocardiogramChartMetadataView *)self infoView];
  topAnchor3 = [infoView3 topAnchor];
  v30 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
  v39[1] = v30;
  infoView4 = [(HKElectrocardiogramChartMetadataView *)self infoView];
  bottomAnchor2 = [infoView4 bottomAnchor];
  bottomAnchor3 = [(HKElectrocardiogramChartMetadataView *)self bottomAnchor];
  v26 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v39[2] = v26;
  scrollView4 = [(HKElectrocardiogramChartMetadataView *)self scrollView];
  leftAnchor = [scrollView4 leftAnchor];
  leftAnchor2 = [(HKElectrocardiogramChartMetadataView *)self leftAnchor];
  v21 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v39[3] = v21;
  scrollView5 = [(HKElectrocardiogramChartMetadataView *)self scrollView];
  rightAnchor = [scrollView5 rightAnchor];
  rightAnchor2 = [(HKElectrocardiogramChartMetadataView *)self rightAnchor];
  v17 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v39[4] = v17;
  layoutMarginsGuide = [(HKElectrocardiogramChartMetadataView *)self layoutMarginsGuide];
  leadingAnchor = [layoutMarginsGuide leadingAnchor];
  infoView5 = [(HKElectrocardiogramChartMetadataView *)self infoView];
  leadingAnchor2 = [infoView5 leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v39[5] = v8;
  infoView6 = [(HKElectrocardiogramChartMetadataView *)self infoView];
  trailingAnchor = [infoView6 trailingAnchor];
  layoutMarginsGuide2 = [(HKElectrocardiogramChartMetadataView *)self layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v39[6] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:7];
  [v25 activateConstraints:v14];

  [(HKElectrocardiogramChartMetadataView *)self _updateMargins];
}

- (void)_setUpScrollViewContent
{
  scrollView = [(HKElectrocardiogramChartMetadataView *)self scrollView];
  chartView = [(HKElectrocardiogramChartMetadataView *)self chartView];
  [scrollView addSubview:chartView];

  scrollView2 = [(HKElectrocardiogramChartMetadataView *)self scrollView];
  axisView = [(HKElectrocardiogramChartMetadataView *)self axisView];
  [scrollView2 addSubview:axisView];

  scrollView3 = [(HKElectrocardiogramChartMetadataView *)self scrollView];
  [scrollView3 setClipsToBounds:0];

  scrollView4 = [(HKElectrocardiogramChartMetadataView *)self scrollView];
  [scrollView4 setTranslatesAutoresizingMaskIntoConstraints:0];

  chartView2 = [(HKElectrocardiogramChartMetadataView *)self chartView];
  [chartView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  axisView2 = [(HKElectrocardiogramChartMetadataView *)self axisView];
  [axisView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  scrollView5 = [(HKElectrocardiogramChartMetadataView *)self scrollView];
  [scrollView5 setShowsHorizontalScrollIndicator:0];

  scrollView6 = [(HKElectrocardiogramChartMetadataView *)self scrollView];
  [scrollView6 setShowsVerticalScrollIndicator:0];

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  chartView3 = [(HKElectrocardiogramChartMetadataView *)self chartView];
  [chartView3 setBackgroundColor:systemBackgroundColor];

  v75 = [HKDisplayCategory categoryWithID:11];
  color = [v75 color];
  chartView4 = [(HKElectrocardiogramChartMetadataView *)self chartView];
  [chartView4 setTintColor:color];

  chartView5 = [(HKElectrocardiogramChartMetadataView *)self chartView];
  [chartView5 gridSize];
  v19 = v18;
  chartView6 = [(HKElectrocardiogramChartMetadataView *)self chartView];
  gridOptions = [chartView6 gridOptions];
  firstObject = [gridOptions firstObject];
  v23 = v19 * [firstObject unitMultiple];

  chartView7 = [(HKElectrocardiogramChartMetadataView *)self chartView];
  heightAnchor = [chartView7 heightAnchor];
  v26 = [heightAnchor constraintEqualToConstant:v23];
  [v26 setActive:1];

  chartView8 = [(HKElectrocardiogramChartMetadataView *)self chartView];
  topAnchor = [chartView8 topAnchor];
  scrollView7 = [(HKElectrocardiogramChartMetadataView *)self scrollView];
  frameLayoutGuide = [scrollView7 frameLayoutGuide];
  topAnchor2 = [frameLayoutGuide topAnchor];
  v32 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v32 setActive:1];

  chartView9 = [(HKElectrocardiogramChartMetadataView *)self chartView];
  leftAnchor = [chartView9 leftAnchor];
  scrollView8 = [(HKElectrocardiogramChartMetadataView *)self scrollView];
  contentLayoutGuide = [scrollView8 contentLayoutGuide];
  leftAnchor2 = [contentLayoutGuide leftAnchor];
  v38 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v38 setActive:1];

  chartView10 = [(HKElectrocardiogramChartMetadataView *)self chartView];
  rightAnchor = [chartView10 rightAnchor];
  scrollView9 = [(HKElectrocardiogramChartMetadataView *)self scrollView];
  contentLayoutGuide2 = [scrollView9 contentLayoutGuide];
  rightAnchor2 = [contentLayoutGuide2 rightAnchor];
  v44 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v44 setActive:1];

  axisView3 = [(HKElectrocardiogramChartMetadataView *)self axisView];
  topAnchor3 = [axisView3 topAnchor];
  chartView11 = [(HKElectrocardiogramChartMetadataView *)self chartView];
  bottomAnchor = [chartView11 bottomAnchor];
  v49 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  [v49 setActive:1];

  scrollView10 = [(HKElectrocardiogramChartMetadataView *)self scrollView];
  frameLayoutGuide2 = [scrollView10 frameLayoutGuide];
  bottomAnchor2 = [frameLayoutGuide2 bottomAnchor];
  axisView4 = [(HKElectrocardiogramChartMetadataView *)self axisView];
  bottomAnchor3 = [axisView4 bottomAnchor];
  v55 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  [v55 setActive:1];

  axisView5 = [(HKElectrocardiogramChartMetadataView *)self axisView];
  leftAnchor3 = [axisView5 leftAnchor];
  scrollView11 = [(HKElectrocardiogramChartMetadataView *)self scrollView];
  contentLayoutGuide3 = [scrollView11 contentLayoutGuide];
  leftAnchor4 = [contentLayoutGuide3 leftAnchor];
  v61 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  [v61 setActive:1];

  axisView6 = [(HKElectrocardiogramChartMetadataView *)self axisView];
  rightAnchor3 = [axisView6 rightAnchor];
  scrollView12 = [(HKElectrocardiogramChartMetadataView *)self scrollView];
  contentLayoutGuide4 = [scrollView12 contentLayoutGuide];
  rightAnchor4 = [contentLayoutGuide4 rightAnchor];
  v67 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  [v67 setActive:1];

  scrollView13 = [(HKElectrocardiogramChartMetadataView *)self scrollView];
  contentLayoutGuide5 = [scrollView13 contentLayoutGuide];
  heightAnchor2 = [contentLayoutGuide5 heightAnchor];
  scrollView14 = [(HKElectrocardiogramChartMetadataView *)self scrollView];
  frameLayoutGuide3 = [scrollView14 frameLayoutGuide];
  heightAnchor3 = [frameLayoutGuide3 heightAnchor];
  v74 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3 multiplier:1.0];
  [v74 setActive:1];
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = HKElectrocardiogramChartMetadataView;
  [(HKElectrocardiogramChartMetadataView *)&v3 layoutMarginsDidChange];
  [(HKElectrocardiogramChartMetadataView *)self _updateMargins];
}

- (void)_updateMargins
{
  scrollView = [(HKElectrocardiogramChartMetadataView *)self scrollView];
  [scrollView contentInset];
  v5 = v4;
  v7 = v6;

  [(HKElectrocardiogramChartMetadataView *)self directionalLayoutMargins];
  v9 = v8;
  [(HKElectrocardiogramChartMetadataView *)self directionalLayoutMargins];
  v11 = v10;
  scrollView2 = [(HKElectrocardiogramChartMetadataView *)self scrollView];
  [scrollView2 setContentInset:{v5, v9, v7, v11}];
}

- (CGSize)gridSize
{
  chartView = [(HKElectrocardiogramChartMetadataView *)self chartView];
  [chartView gridSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end