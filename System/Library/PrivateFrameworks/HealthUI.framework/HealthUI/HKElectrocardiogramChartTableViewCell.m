@interface HKElectrocardiogramChartTableViewCell
- (CGSize)gridSize;
- (HKElectrocardiogramChartTableViewCell)initWithGridSize:(CGSize)a3 reuseIdentifier:(id)a4;
- (void)_setUpScrollViewContent;
- (void)_setUpUI;
- (void)_updateMargins;
- (void)layoutMarginsDidChange;
@end

@implementation HKElectrocardiogramChartTableViewCell

- (HKElectrocardiogramChartTableViewCell)initWithGridSize:(CGSize)a3 reuseIdentifier:(id)a4
{
  height = a3.height;
  width = a3.width;
  v26.receiver = self;
  v26.super_class = HKElectrocardiogramChartTableViewCell;
  v6 = [(HKElectrocardiogramChartTableViewCell *)&v26 initWithStyle:0 reuseIdentifier:a4];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E69DCEF8]);
    v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    scrollView = v6->_scrollView;
    v6->_scrollView = v8;

    v10 = [[HKElectrocardiogramChartView alloc] initWithGridSize:width, height];
    chartView = v6->_chartView;
    v6->_chartView = v10;

    v12 = [HKElectrocardiogramAxisView alloc];
    [(HKElectrocardiogramChartView *)v6->_chartView pointsPerSecond];
    v14 = v13;
    v15 = [(HKElectrocardiogramChartView *)v6->_chartView gridOptions];
    v16 = [v15 firstObject];
    v17 = [v16 lineColor];
    v18 = [(HKElectrocardiogramChartView *)v6->_chartView gridOptions];
    v19 = [v18 firstObject];
    [v19 lineWidth];
    v21 = [(HKElectrocardiogramAxisView *)v12 initWithAxisSpacing:v17 lineColor:v14 lineWidth:v20];
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
  v3 = [(HKElectrocardiogramChartTableViewCell *)self infoView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(HKElectrocardiogramChartTableViewCell *)self contentView];
  v5 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  [v4 addSubview:v5];

  v6 = [(HKElectrocardiogramChartTableViewCell *)self contentView];
  v7 = [(HKElectrocardiogramChartTableViewCell *)self infoView];
  [v6 addSubview:v7];

  v30 = MEMORY[0x1E696ACD8];
  v46 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  v44 = [v46 topAnchor];
  v45 = [(HKElectrocardiogramChartTableViewCell *)self contentView];
  v43 = [v45 topAnchor];
  v42 = [v44 constraintEqualToAnchor:v43 constant:20.0];
  v47[0] = v42;
  v41 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  v39 = [v41 bottomAnchor];
  v40 = [(HKElectrocardiogramChartTableViewCell *)self infoView];
  v38 = [v40 topAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v47[1] = v37;
  v36 = [(HKElectrocardiogramChartTableViewCell *)self infoView];
  v34 = [v36 bottomAnchor];
  v35 = [(HKElectrocardiogramChartTableViewCell *)self contentView];
  v33 = [v35 bottomAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v47[2] = v32;
  v31 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  v28 = [v31 leftAnchor];
  v29 = [(HKElectrocardiogramChartTableViewCell *)self contentView];
  v27 = [v29 leftAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v47[3] = v26;
  v25 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  v23 = [v25 rightAnchor];
  v24 = [(HKElectrocardiogramChartTableViewCell *)self contentView];
  v22 = [v24 rightAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v47[4] = v21;
  v20 = [(HKElectrocardiogramChartTableViewCell *)self contentView];
  v19 = [v20 layoutMarginsGuide];
  v17 = [v19 leadingAnchor];
  v18 = [(HKElectrocardiogramChartTableViewCell *)self infoView];
  v8 = [v18 leadingAnchor];
  v9 = [v17 constraintEqualToAnchor:v8];
  v47[5] = v9;
  v10 = [(HKElectrocardiogramChartTableViewCell *)self infoView];
  v11 = [v10 trailingAnchor];
  v12 = [(HKElectrocardiogramChartTableViewCell *)self contentView];
  v13 = [v12 layoutMarginsGuide];
  v14 = [v13 trailingAnchor];
  v15 = [v11 constraintEqualToAnchor:v14];
  v47[6] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:7];
  [v30 activateConstraints:v16];

  [(HKElectrocardiogramChartTableViewCell *)self setSelectionStyle:0];
  [(HKElectrocardiogramChartTableViewCell *)self _updateMargins];
}

- (void)_setUpScrollViewContent
{
  v3 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  v4 = [(HKElectrocardiogramChartTableViewCell *)self chartView];
  [v3 addSubview:v4];

  v5 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  v6 = [(HKElectrocardiogramChartTableViewCell *)self axisView];
  [v5 addSubview:v6];

  v7 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  [v7 setClipsToBounds:0];

  v8 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(HKElectrocardiogramChartTableViewCell *)self chartView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(HKElectrocardiogramChartTableViewCell *)self axisView];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  [v11 setShowsHorizontalScrollIndicator:0];

  v12 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  [v12 setShowsVerticalScrollIndicator:0];

  v13 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v14 = [(HKElectrocardiogramChartTableViewCell *)self chartView];
  [v14 setBackgroundColor:v13];

  v15 = [MEMORY[0x1E69DC888] hk_appTintColor];
  v16 = [(HKElectrocardiogramChartTableViewCell *)self chartView];
  [v16 setTintColor:v15];

  v17 = [(HKElectrocardiogramChartTableViewCell *)self chartView];
  [v17 gridSize];
  v19 = v18;
  v20 = [(HKElectrocardiogramChartTableViewCell *)self chartView];
  v21 = [v20 gridOptions];
  v22 = [v21 firstObject];
  v23 = v19 * [v22 unitMultiple];

  v24 = [(HKElectrocardiogramChartTableViewCell *)self chartView];
  v25 = [v24 heightAnchor];
  v26 = [v25 constraintEqualToConstant:v23];
  [v26 setActive:1];

  v27 = [(HKElectrocardiogramChartTableViewCell *)self chartView];
  v28 = [v27 topAnchor];
  v29 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  v30 = [v29 frameLayoutGuide];
  v31 = [v30 topAnchor];
  v32 = [v28 constraintEqualToAnchor:v31];
  [v32 setActive:1];

  v33 = [(HKElectrocardiogramChartTableViewCell *)self chartView];
  v34 = [v33 leftAnchor];
  v35 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  v36 = [v35 contentLayoutGuide];
  v37 = [v36 leftAnchor];
  v38 = [v34 constraintEqualToAnchor:v37];
  [v38 setActive:1];

  v39 = [(HKElectrocardiogramChartTableViewCell *)self chartView];
  v40 = [v39 rightAnchor];
  v41 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  v42 = [v41 contentLayoutGuide];
  v43 = [v42 rightAnchor];
  v44 = [v40 constraintEqualToAnchor:v43];
  [v44 setActive:1];

  v45 = [(HKElectrocardiogramChartTableViewCell *)self axisView];
  v46 = [v45 topAnchor];
  v47 = [(HKElectrocardiogramChartTableViewCell *)self chartView];
  v48 = [v47 bottomAnchor];
  v49 = [v46 constraintEqualToAnchor:v48];
  [v49 setActive:1];

  v50 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  v51 = [v50 frameLayoutGuide];
  v52 = [v51 bottomAnchor];
  v53 = [(HKElectrocardiogramChartTableViewCell *)self axisView];
  v54 = [v53 bottomAnchor];
  v55 = [v52 constraintEqualToAnchor:v54];
  [v55 setActive:1];

  v56 = [(HKElectrocardiogramChartTableViewCell *)self axisView];
  v57 = [v56 leftAnchor];
  v58 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  v59 = [v58 contentLayoutGuide];
  v60 = [v59 leftAnchor];
  v61 = [v57 constraintEqualToAnchor:v60];
  [v61 setActive:1];

  v62 = [(HKElectrocardiogramChartTableViewCell *)self axisView];
  v63 = [v62 rightAnchor];
  v64 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  v65 = [v64 contentLayoutGuide];
  v66 = [v65 rightAnchor];
  v67 = [v63 constraintEqualToAnchor:v66];
  [v67 setActive:1];

  v74 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  v68 = [v74 contentLayoutGuide];
  v69 = [v68 heightAnchor];
  v70 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  v71 = [v70 frameLayoutGuide];
  v72 = [v71 heightAnchor];
  v73 = [v69 constraintEqualToAnchor:v72 multiplier:1.0];
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
  v3 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  [v3 contentInset];
  v5 = v4;
  v7 = v6;

  v8 = [(HKElectrocardiogramChartTableViewCell *)self contentView];
  [v8 directionalLayoutMargins];
  v10 = v9;

  v11 = [(HKElectrocardiogramChartTableViewCell *)self contentView];
  [v11 directionalLayoutMargins];
  v13 = v12;

  v14 = [(HKElectrocardiogramChartTableViewCell *)self scrollView];
  [v14 setContentInset:{v5, v10, v7, v13}];
}

- (CGSize)gridSize
{
  v2 = [(HKElectrocardiogramChartTableViewCell *)self chartView];
  [v2 gridSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end