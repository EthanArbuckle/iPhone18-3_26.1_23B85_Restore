@interface HKElectrocardiogramChartTableViewCell
- (CGSize)gridSize;
- (HKElectrocardiogramChartTableViewCell)initWithGridSize:(CGSize)size reuseIdentifier:(id)identifier;
- (void)_setUpScrollViewContent;
- (void)_setUpUI;
- (void)_updateMargins;
- (void)layoutMarginsDidChange;
@end

@implementation HKElectrocardiogramChartTableViewCell

- (HKElectrocardiogramChartTableViewCell)initWithGridSize:(CGSize)size reuseIdentifier:(id)identifier
{
  height = size.height;
  width = size.width;
  v26.receiver = self;
  v26.super_class = HKElectrocardiogramChartTableViewCell;
  v6 = [(HKElectrocardiogramChartTableViewCell *)&v26 initWithStyle:0 reuseIdentifier:identifier];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E69DCEF8]);
    v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    scrollView = v6->_scrollView;
    v6->_scrollView = v8;

    height = [[HKElectrocardiogramChartView alloc] initWithGridSize:width, height];
    chartView = v6->_chartView;
    v6->_chartView = height;

    v12 = [HKElectrocardiogramAxisView alloc];
    [(HKElectrocardiogramChartView *)v6->_chartView pointsPerSecond];
    v14 = v13;
    gridOptions = [(HKElectrocardiogramChartView *)v6->_chartView gridOptions];
    firstObject = [gridOptions firstObject];
    lineColor = [firstObject lineColor];
    gridOptions2 = [(HKElectrocardiogramChartView *)v6->_chartView gridOptions];
    firstObject2 = [gridOptions2 firstObject];
    [firstObject2 lineWidth];
    v21 = [(HKElectrocardiogramAxisView *)v12 initWithAxisSpacing:lineColor lineColor:v14 lineWidth:v20];
    axisView = v6->_axisView;
    v6->_axisView = v21;

    v23 = objc_alloc_init(HKElectrocardiogramInfoView);
    infoView = v6->_infoView;
    v6->_infoView = v23;

    [(HKElectrocardiogramChartTableViewCell *)v6 _setUpUI];
  }

  return v6;
}

- (void)_setUpUI
{
  v47[7] = *MEMORY[0x1E69E9840];
  [(HKElectrocardiogramChartTableViewCell *)self _setUpScrollViewContent];
  infoView = [(HKElectrocardiogramChartTableViewCell *)self infoView];
  [infoView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(HKElectrocardiogramChartTableViewCell *)self contentView];
  scrollView = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  [contentView addSubview:scrollView];

  contentView2 = [(HKElectrocardiogramChartTableViewCell *)self contentView];
  infoView2 = [(HKElectrocardiogramChartTableViewCell *)self infoView];
  [contentView2 addSubview:infoView2];

  v30 = MEMORY[0x1E696ACD8];
  scrollView2 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  topAnchor = [scrollView2 topAnchor];
  contentView3 = [(HKElectrocardiogramChartTableViewCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v42 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
  v47[0] = v42;
  scrollView3 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  bottomAnchor = [scrollView3 bottomAnchor];
  infoView3 = [(HKElectrocardiogramChartTableViewCell *)self infoView];
  topAnchor3 = [infoView3 topAnchor];
  v37 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
  v47[1] = v37;
  infoView4 = [(HKElectrocardiogramChartTableViewCell *)self infoView];
  bottomAnchor2 = [infoView4 bottomAnchor];
  contentView4 = [(HKElectrocardiogramChartTableViewCell *)self contentView];
  bottomAnchor3 = [contentView4 bottomAnchor];
  v32 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v47[2] = v32;
  scrollView4 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  leftAnchor = [scrollView4 leftAnchor];
  contentView5 = [(HKElectrocardiogramChartTableViewCell *)self contentView];
  leftAnchor2 = [contentView5 leftAnchor];
  v26 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v47[3] = v26;
  scrollView5 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  rightAnchor = [scrollView5 rightAnchor];
  contentView6 = [(HKElectrocardiogramChartTableViewCell *)self contentView];
  rightAnchor2 = [contentView6 rightAnchor];
  v21 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v47[4] = v21;
  contentView7 = [(HKElectrocardiogramChartTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView7 layoutMarginsGuide];
  leadingAnchor = [layoutMarginsGuide leadingAnchor];
  infoView5 = [(HKElectrocardiogramChartTableViewCell *)self infoView];
  leadingAnchor2 = [infoView5 leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v47[5] = v9;
  infoView6 = [(HKElectrocardiogramChartTableViewCell *)self infoView];
  trailingAnchor = [infoView6 trailingAnchor];
  contentView8 = [(HKElectrocardiogramChartTableViewCell *)self contentView];
  layoutMarginsGuide2 = [contentView8 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v47[6] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:7];
  [v30 activateConstraints:v16];

  [(HKElectrocardiogramChartTableViewCell *)self setSelectionStyle:0];
  [(HKElectrocardiogramChartTableViewCell *)self _updateMargins];
}

- (void)_setUpScrollViewContent
{
  scrollView = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  chartView = [(HKElectrocardiogramChartTableViewCell *)self chartView];
  [scrollView addSubview:chartView];

  scrollView2 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  axisView = [(HKElectrocardiogramChartTableViewCell *)self axisView];
  [scrollView2 addSubview:axisView];

  scrollView3 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  [scrollView3 setClipsToBounds:0];

  scrollView4 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  [scrollView4 setTranslatesAutoresizingMaskIntoConstraints:0];

  chartView2 = [(HKElectrocardiogramChartTableViewCell *)self chartView];
  [chartView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  axisView2 = [(HKElectrocardiogramChartTableViewCell *)self axisView];
  [axisView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  scrollView5 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  [scrollView5 setShowsHorizontalScrollIndicator:0];

  scrollView6 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  [scrollView6 setShowsVerticalScrollIndicator:0];

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  chartView3 = [(HKElectrocardiogramChartTableViewCell *)self chartView];
  [chartView3 setBackgroundColor:systemBackgroundColor];

  hk_appTintColor = [MEMORY[0x1E69DC888] hk_appTintColor];
  chartView4 = [(HKElectrocardiogramChartTableViewCell *)self chartView];
  [chartView4 setTintColor:hk_appTintColor];

  chartView5 = [(HKElectrocardiogramChartTableViewCell *)self chartView];
  [chartView5 gridSize];
  v19 = v18;
  chartView6 = [(HKElectrocardiogramChartTableViewCell *)self chartView];
  gridOptions = [chartView6 gridOptions];
  firstObject = [gridOptions firstObject];
  v23 = v19 * [firstObject unitMultiple];

  chartView7 = [(HKElectrocardiogramChartTableViewCell *)self chartView];
  heightAnchor = [chartView7 heightAnchor];
  v26 = [heightAnchor constraintEqualToConstant:v23];
  [v26 setActive:1];

  chartView8 = [(HKElectrocardiogramChartTableViewCell *)self chartView];
  topAnchor = [chartView8 topAnchor];
  scrollView7 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  frameLayoutGuide = [scrollView7 frameLayoutGuide];
  topAnchor2 = [frameLayoutGuide topAnchor];
  v32 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v32 setActive:1];

  chartView9 = [(HKElectrocardiogramChartTableViewCell *)self chartView];
  leftAnchor = [chartView9 leftAnchor];
  scrollView8 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  contentLayoutGuide = [scrollView8 contentLayoutGuide];
  leftAnchor2 = [contentLayoutGuide leftAnchor];
  v38 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v38 setActive:1];

  chartView10 = [(HKElectrocardiogramChartTableViewCell *)self chartView];
  rightAnchor = [chartView10 rightAnchor];
  scrollView9 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  contentLayoutGuide2 = [scrollView9 contentLayoutGuide];
  rightAnchor2 = [contentLayoutGuide2 rightAnchor];
  v44 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v44 setActive:1];

  axisView3 = [(HKElectrocardiogramChartTableViewCell *)self axisView];
  topAnchor3 = [axisView3 topAnchor];
  chartView11 = [(HKElectrocardiogramChartTableViewCell *)self chartView];
  bottomAnchor = [chartView11 bottomAnchor];
  v49 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  [v49 setActive:1];

  scrollView10 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  frameLayoutGuide2 = [scrollView10 frameLayoutGuide];
  bottomAnchor2 = [frameLayoutGuide2 bottomAnchor];
  axisView4 = [(HKElectrocardiogramChartTableViewCell *)self axisView];
  bottomAnchor3 = [axisView4 bottomAnchor];
  v55 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  [v55 setActive:1];

  axisView5 = [(HKElectrocardiogramChartTableViewCell *)self axisView];
  leftAnchor3 = [axisView5 leftAnchor];
  scrollView11 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  contentLayoutGuide3 = [scrollView11 contentLayoutGuide];
  leftAnchor4 = [contentLayoutGuide3 leftAnchor];
  v61 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  [v61 setActive:1];

  axisView6 = [(HKElectrocardiogramChartTableViewCell *)self axisView];
  rightAnchor3 = [axisView6 rightAnchor];
  scrollView12 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  contentLayoutGuide4 = [scrollView12 contentLayoutGuide];
  rightAnchor4 = [contentLayoutGuide4 rightAnchor];
  v67 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  [v67 setActive:1];

  scrollView13 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  contentLayoutGuide5 = [scrollView13 contentLayoutGuide];
  heightAnchor2 = [contentLayoutGuide5 heightAnchor];
  scrollView14 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  frameLayoutGuide3 = [scrollView14 frameLayoutGuide];
  heightAnchor3 = [frameLayoutGuide3 heightAnchor];
  v73 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3 multiplier:1.0];
  [v73 setActive:1];
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = HKElectrocardiogramChartTableViewCell;
  [(HKElectrocardiogramChartTableViewCell *)&v3 layoutMarginsDidChange];
  [(HKElectrocardiogramChartTableViewCell *)self _updateMargins];
}

- (void)_updateMargins
{
  scrollView = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  [scrollView contentInset];
  v5 = v4;
  v7 = v6;

  contentView = [(HKElectrocardiogramChartTableViewCell *)self contentView];
  [contentView directionalLayoutMargins];
  v10 = v9;

  contentView2 = [(HKElectrocardiogramChartTableViewCell *)self contentView];
  [contentView2 directionalLayoutMargins];
  v13 = v12;

  scrollView2 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  [scrollView2 setContentInset:{v5, v10, v7, v13}];
}

- (CGSize)gridSize
{
  chartView = [(HKElectrocardiogramChartTableViewCell *)self chartView];
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