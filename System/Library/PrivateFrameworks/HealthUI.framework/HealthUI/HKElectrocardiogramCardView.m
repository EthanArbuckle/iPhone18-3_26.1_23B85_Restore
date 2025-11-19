@interface HKElectrocardiogramCardView
+ (double)_averageHeartRateBaselineToGraphTop;
+ (double)_averageHeartRateBaselineToSymptomBaseline;
+ (double)_headerBottomToAverageHeartRateBaseline;
+ (double)estimatedHeight;
+ (id)_averageHeartRateSymptomsBoldFont;
+ (id)_averageHeartRateSymptomsFont;
+ (id)_averageHeartRateSymptomsFontForElectrocardiogram:(id)a3;
- (BOOL)_isLayingOutForAccessibility;
- (HKDateCache)dateCache;
- (HKElectrocardiogramCardView)initWithSample:(id)a3 dateCache:(id)a4 onboarding:(BOOL)a5 activeAlgorithmVersion:(int64_t)a6 isSampleInteractive:(BOOL)a7;
- (id)_cardBackgroundColor;
- (id)_cardHeaderColor;
- (id)_chevronColor;
- (id)_graphBackgroundColor;
- (void)_setUpGraph;
- (void)_setupConstraints;
- (void)_setupUI;
- (void)_updateForCurrentSizeCategory;
- (void)_updateGraphTopConstraint;
- (void)_updateTextConstraints;
- (void)dateCacheDidUpdate:(id)a3 onNotification:(id)a4;
- (void)dealloc;
- (void)setSample:(id)a3;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateUI;
@end

@implementation HKElectrocardiogramCardView

- (HKElectrocardiogramCardView)initWithSample:(id)a3 dateCache:(id)a4 onboarding:(BOOL)a5 activeAlgorithmVersion:(int64_t)a6 isSampleInteractive:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v18.receiver = self;
  v18.super_class = HKElectrocardiogramCardView;
  v15 = [(HKElectrocardiogramCardView *)&v18 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sample, a3);
    objc_storeWeak(&v16->_dateCache, v14);
    v16->_onboarding = a5;
    v16->_activeAlgorithmVersion = a6;
    v16->_isSampleInteractive = a7;
    [(HKElectrocardiogramCardView *)v16 _setupUI];
    [(HKElectrocardiogramCardView *)v16 _setupConstraints];
    [(HKElectrocardiogramCardView *)v16 updateUI];
    [(HKElectrocardiogramCardView *)v16 _setUpGraph];
  }

  return v16;
}

- (void)setSample:(id)a3
{
  objc_storeStrong(&self->_sample, a3);
  [(HKElectrocardiogramCardView *)self updateUI];

  [(HKElectrocardiogramCardView *)self _setUpGraph];
}

+ (double)estimatedHeight
{
  +[HKRoundedHeaderView estimatedHeight];
  v3 = v2;
  [objc_opt_class() _headerBottomToAverageHeartRateBaseline];
  v5 = v3 + v4;
  [objc_opt_class() _averageHeartRateBaselineToGraphTop];
  v7 = v5 + v6;
  [objc_opt_class() _graphHeight];
  v9 = v7 + v8;
  [objc_opt_class() _graphBottomToCardBottom];
  return v9 + v10;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKElectrocardiogramCardView;
  [(HKElectrocardiogramCardView *)&v11 traitCollectionDidChange:v4];
  v5 = [(HKElectrocardiogramCardView *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];
  v8 = [v6 isEqualToString:v7];

  if (!v8 || (-[HKElectrocardiogramCardView traitCollection](self, "traitCollection"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 hasDifferentColorAppearanceComparedToTraitCollection:v4], v9, v10))
  {
    [(HKElectrocardiogramCardView *)self updateUI];
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = HKElectrocardiogramCardView;
  [(HKElectrocardiogramCardView *)&v3 tintColorDidChange];
  [(HKElectrocardiogramCardView *)self updateUI];
}

- (void)dealloc
{
  v3 = [(HKElectrocardiogramCardView *)self dateCache];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = HKElectrocardiogramCardView;
  [(HKElectrocardiogramCardView *)&v4 dealloc];
}

- (void)_setupUI
{
  v73[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [(HKElectrocardiogramCardView *)self setBackgroundColor:v3];

  [(HKElectrocardiogramCardView *)self setClipsToBounds:1];
  v4 = [(HKElectrocardiogramCardView *)self layer];
  [v4 setCornerRadius:26.0];

  v5 = [HKRoundedHeaderView alloc];
  v6 = [(HKElectrocardiogramCardView *)self _cardHeaderColor];
  v7 = [(HKRoundedHeaderView *)v5 initWithColor:v6 isInteractive:self->_isSampleInteractive];
  [(HKElectrocardiogramCardView *)self setHeaderView:v7];

  v8 = [(HKElectrocardiogramCardView *)self headerView];
  [v8 setClipsToBounds:1];

  v9 = [(HKElectrocardiogramCardView *)self headerView];
  [v9 setOpaque:1];

  v10 = [(HKElectrocardiogramCardView *)self headerView];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:1 suffix:@"Card.Header"];
  v12 = [(HKElectrocardiogramCardView *)self headerView];
  [v12 setAccessibilityIdentifier:v11];

  v13 = [(HKElectrocardiogramCardView *)self headerView];
  [(HKElectrocardiogramCardView *)self addSubview:v13];

  v14 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(HKElectrocardiogramCardView *)self setCellBackgroundView:v14];

  v15 = [(HKElectrocardiogramCardView *)self _cardBackgroundColor];
  v16 = [(HKElectrocardiogramCardView *)self cellBackgroundView];
  [v16 setBackgroundColor:v15];

  v17 = [(HKElectrocardiogramCardView *)self cellBackgroundView];
  [v17 setClipsToBounds:1];

  v18 = [(HKElectrocardiogramCardView *)self cellBackgroundView];
  v19 = [v18 layer];
  [v19 setCornerRadius:26.0];

  v20 = [(HKElectrocardiogramCardView *)self cellBackgroundView];
  v21 = [v20 layer];
  [v21 setMaskedCorners:12];

  v22 = [(HKElectrocardiogramCardView *)self cellBackgroundView];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

  v23 = [(HKElectrocardiogramCardView *)self cellBackgroundView];
  [(HKElectrocardiogramCardView *)self addSubview:v23];

  v24 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [(HKElectrocardiogramCardView *)self setHeartImageView:v24];

  v25 = MEMORY[0x1E69DCAD8];
  v26 = [objc_opt_class() _averageHeartRateSymptomsFont];
  v27 = [v25 configurationWithFont:v26];
  v28 = [(HKElectrocardiogramCardView *)self heartImageView];
  [v28 setPreferredSymbolConfiguration:v27];

  v29 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"heart.fill"];
  v30 = [(HKElectrocardiogramCardView *)self heartImageView];
  [v30 setImage:v29];

  v31 = [(HKElectrocardiogramCardView *)self heartImageView];
  [v31 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];

  v32 = [(HKElectrocardiogramCardView *)self heartImageView];
  [v32 setTranslatesAutoresizingMaskIntoConstraints:0];

  v33 = [HKDisplayCategory categoryWithID:11];
  v34 = [v33 color];
  v35 = [(HKElectrocardiogramCardView *)self heartImageView];
  [v35 setTintColor:v34];

  v36 = [(HKElectrocardiogramCardView *)self heartImageView];
  [(HKElectrocardiogramCardView *)self addSubview:v36];

  v37 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(HKElectrocardiogramCardView *)self setAverageHeartRateLabel:v37];

  v38 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  [v38 setNumberOfLines:0];

  v39 = [objc_opt_class() _averageHeartRateSymptomsFont];
  v40 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  [v40 setFont:v39];

  v41 = [MEMORY[0x1E69DC888] systemGrayColor];
  v42 = [(HKElectrocardiogramCardView *)self _accessibilityHigherContrastTintColorForColor:v41];
  v43 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  [v43 setTextColor:v42];

  v44 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];

  v45 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  [v45 setAdjustsFontForContentSizeCategory:1];

  v46 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  [(HKElectrocardiogramCardView *)self addSubview:v46];

  v47 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(HKElectrocardiogramCardView *)self setSymptomsLabel:v47];

  v48 = [(HKElectrocardiogramCardView *)self symptomsLabel];
  [v48 setNumberOfLines:1];

  v49 = [objc_opt_class() _averageHeartRateSymptomsFont];
  v50 = [(HKElectrocardiogramCardView *)self symptomsLabel];
  [v50 setFont:v49];

  v51 = [(HKElectrocardiogramCardView *)self symptomsLabel];
  [v51 setTranslatesAutoresizingMaskIntoConstraints:0];

  v52 = [(HKElectrocardiogramCardView *)self symptomsLabel];
  [v52 setAdjustsFontForContentSizeCategory:1];

  v53 = [(HKElectrocardiogramCardView *)self symptomsLabel];
  [(HKElectrocardiogramCardView *)self addSubview:v53];

  v54 = [HKElectrocardiogramGridOptions alloc];
  v55 = [MEMORY[0x1E69DC888] systemGray3Color];
  v56 = [(HKElectrocardiogramGridOptions *)v54 initWithUnitMultiple:(1.0 / 0.04) axis:2 lineColor:v55 lineWidth:HKUIFloorToScreenScale(0.5)];

  v57 = [HKElectrocardiogramChartView alloc];
  v73[0] = v56;
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:1];
  v59 = [(HKElectrocardiogramChartView *)v57 initWithGridSize:v58 gridOptions:4.0, 4.0];
  [(HKElectrocardiogramCardView *)self setGraphView:v59];

  v60 = [v33 color];
  v61 = [(HKElectrocardiogramCardView *)self graphView];
  [v61 setTintColor:v60];

  v62 = [(HKElectrocardiogramCardView *)self graphView];
  [v62 setEdgeMaskEnabled:1];

  v63 = [(HKElectrocardiogramCardView *)self graphView];
  [v63 setTranslatesAutoresizingMaskIntoConstraints:0];

  v64 = [(HKElectrocardiogramCardView *)self graphView];
  v65 = [v64 layer];
  [v65 setCornerRadius:26.0 * 0.5];

  v66 = [(HKElectrocardiogramCardView *)self graphView];
  v67 = [v66 layer];
  [v67 setMasksToBounds:1];

  v68 = HKUICeilToScreenScale(0.5);
  v69 = [(HKElectrocardiogramCardView *)self graphView];
  v70 = [v69 layer];
  [v70 setBorderWidth:v68];

  v71 = [(HKElectrocardiogramCardView *)self graphView];
  [(HKElectrocardiogramCardView *)self addSubview:v71];

  v72 = [(HKElectrocardiogramCardView *)self dateCache];
  [v72 registerObserver:self];
}

- (void)_setupConstraints
{
  v3 = [(HKElectrocardiogramCardView *)self headerView];
  [v3 hk_alignHorizontalConstraintsWithView:self margin:0.0];

  v4 = [(HKElectrocardiogramCardView *)self headerView];
  v5 = [v4 topAnchor];
  v6 = [(HKElectrocardiogramCardView *)self topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v7 setActive:1];

  v8 = [(HKElectrocardiogramCardView *)self cellBackgroundView];
  v9 = [(HKElectrocardiogramCardView *)self headerView];
  [v8 hk_alignHorizontalConstraintsWithView:v9 margin:0.0];

  v10 = [(HKElectrocardiogramCardView *)self cellBackgroundView];
  v11 = [v10 topAnchor];
  v12 = [(HKElectrocardiogramCardView *)self headerView];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v15 = [(HKElectrocardiogramCardView *)self cellBackgroundView];
  v16 = [v15 bottomAnchor];
  v17 = [(HKElectrocardiogramCardView *)self graphView];
  v18 = [v17 bottomAnchor];
  [objc_opt_class() _graphBottomToCardBottom];
  v19 = [v16 constraintEqualToAnchor:v18 constant:?];
  [v19 setActive:1];

  v20 = [(HKElectrocardiogramCardView *)self heartImageView];
  v21 = [v20 leadingAnchor];
  v22 = [(HKElectrocardiogramCardView *)self headerView];
  v23 = [v22 leadingAnchor];
  v24 = [(HKElectrocardiogramCardView *)self headerView];
  [v24 textHorizontalInset];
  v25 = [v21 constraintEqualToAnchor:v23 constant:?];
  [v25 setActive:1];

  v26 = [(HKElectrocardiogramCardView *)self heartImageView];
  v27 = [v26 centerYAnchor];
  v28 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  v29 = [v28 centerYAnchor];
  v30 = [v27 constraintEqualToAnchor:v29];
  [v30 setActive:1];

  v31 = [(HKElectrocardiogramCardView *)self heartImageView];
  v32 = [v31 heightAnchor];
  v33 = [objc_opt_class() _averageHeartRateSymptomsFont];
  [v33 lineHeight];
  v34 = [v32 constraintEqualToConstant:?];
  [(HKElectrocardiogramCardView *)self setHeartImageViewHeightConstraint:v34];

  v35 = [(HKElectrocardiogramCardView *)self heartImageViewHeightConstraint];
  [v35 setActive:1];

  v36 = [(HKElectrocardiogramCardView *)self heartImageView];
  v37 = [v36 widthAnchor];
  v38 = [(HKElectrocardiogramCardView *)self heartImageView];
  v39 = [v38 heightAnchor];
  v125 = [v37 constraintEqualToAnchor:v39];

  LODWORD(v40) = 1148846080;
  [v125 setPriority:v40];
  [v125 setActive:1];
  v41 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  v42 = [v41 leadingAnchor];
  v43 = [(HKElectrocardiogramCardView *)self heartImageView];
  v44 = [v43 trailingAnchor];
  v45 = [v42 constraintEqualToAnchor:v44 constant:6.0];
  [v45 setActive:1];

  v46 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  v47 = [v46 firstBaselineAnchor];
  v48 = [(HKElectrocardiogramCardView *)self headerView];
  v49 = [v48 bottomAnchor];
  v50 = [v47 constraintEqualToAnchor:v49];
  [(HKElectrocardiogramCardView *)self setAverageHeartRateLabelFirstBaselineConstraint:v50];

  v51 = [(HKElectrocardiogramCardView *)self averageHeartRateLabelFirstBaselineConstraint];
  [v51 setActive:1];

  v52 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  v53 = [v52 widthAnchor];
  v54 = [(HKElectrocardiogramCardView *)self widthAnchor];
  v55 = [v53 constraintLessThanOrEqualToAnchor:v54 multiplier:0.34];
  [(HKElectrocardiogramCardView *)self setAverageHeartRateLabelWidthConstraint:v55];

  v56 = [(HKElectrocardiogramCardView *)self averageHeartRateLabelWidthConstraint];
  LODWORD(v57) = 1144750080;
  [v56 setPriority:v57];

  v58 = [(HKElectrocardiogramCardView *)self symptomsLabel];
  LODWORD(v59) = 1148846080;
  [v58 setContentCompressionResistancePriority:0 forAxis:v59];

  v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v61 = [(HKElectrocardiogramCardView *)self symptomsLabel];
  v62 = [v61 leadingAnchor];
  v63 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  v64 = [v63 trailingAnchor];
  v65 = [v62 constraintGreaterThanOrEqualToAnchor:v64 constant:16.0];
  [v60 addObject:v65];

  v66 = [(HKElectrocardiogramCardView *)self symptomsLabel];
  v67 = [v66 trailingAnchor];
  v68 = [(HKElectrocardiogramCardView *)self headerView];
  v69 = [v68 trailingAnchor];
  v70 = [(HKElectrocardiogramCardView *)self headerView];
  [v70 textHorizontalInset];
  v72 = [v67 constraintEqualToAnchor:v69 constant:-v71];
  [v60 addObject:v72];

  v73 = [(HKElectrocardiogramCardView *)self symptomsLabel];
  v74 = [v73 firstBaselineAnchor];
  v75 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  v76 = [v75 lastBaselineAnchor];
  v77 = [v74 constraintEqualToAnchor:v76];
  [v60 addObject:v77];

  v78 = [v60 copy];
  [(HKElectrocardiogramCardView *)self setRegularConstraints:v78];

  v79 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v80 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  v81 = [v80 trailingAnchor];
  v82 = [(HKElectrocardiogramCardView *)self headerView];
  v83 = [v82 trailingAnchor];
  v84 = [(HKElectrocardiogramCardView *)self headerView];
  [v84 textHorizontalInset];
  v86 = [v81 constraintEqualToAnchor:v83 constant:-v85];
  [v79 addObject:v86];

  v87 = [(HKElectrocardiogramCardView *)self symptomsLabel];
  v88 = [v87 leadingAnchor];
  v89 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  v90 = [v89 leadingAnchor];
  v91 = [v88 constraintEqualToAnchor:v90];
  [v79 addObject:v91];

  v92 = [(HKElectrocardiogramCardView *)self symptomsLabel];
  v93 = [v92 trailingAnchor];
  v94 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  v95 = [v94 trailingAnchor];
  v96 = [v93 constraintEqualToAnchor:v95];
  [v79 addObject:v96];

  v97 = [(HKElectrocardiogramCardView *)self symptomsLabel];
  v98 = [v97 firstBaselineAnchor];
  v99 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  v100 = [v99 lastBaselineAnchor];
  v101 = [v98 constraintEqualToAnchor:v100];
  [(HKElectrocardiogramCardView *)self setSymptomsLabelFirstBaselineConstraint:v101];

  v102 = [(HKElectrocardiogramCardView *)self symptomsLabelFirstBaselineConstraint];
  [v79 addObject:v102];

  v103 = [v79 copy];
  [(HKElectrocardiogramCardView *)self setLargeTextConstraints:v103];

  v104 = [(HKElectrocardiogramCardView *)self graphView];
  v105 = [v104 leftAnchor];
  v106 = [(HKElectrocardiogramCardView *)self headerView];
  v107 = [v106 leftAnchor];
  v108 = [(HKElectrocardiogramCardView *)self headerView];
  [v108 textHorizontalInset];
  v109 = [v105 constraintEqualToAnchor:v107 constant:?];
  [v109 setActive:1];

  v110 = [(HKElectrocardiogramCardView *)self graphView];
  v111 = [v110 rightAnchor];
  v112 = [(HKElectrocardiogramCardView *)self headerView];
  v113 = [v112 rightAnchor];
  v114 = [(HKElectrocardiogramCardView *)self headerView];
  [v114 textHorizontalInset];
  v116 = [v111 constraintEqualToAnchor:v113 constant:-v115];
  [v116 setActive:1];

  v117 = [(HKElectrocardiogramCardView *)self graphView];
  v118 = [v117 heightAnchor];
  [objc_opt_class() _graphHeight];
  v119 = [v118 constraintEqualToConstant:?];

  LODWORD(v120) = 1144750080;
  [v119 setPriority:v120];
  [v119 setActive:1];
  v121 = [(HKElectrocardiogramCardView *)self bottomAnchor];
  v122 = [(HKElectrocardiogramCardView *)self cellBackgroundView];
  v123 = [v122 bottomAnchor];
  v124 = [v121 constraintEqualToAnchor:v123];
  [v124 setActive:1];

  [(HKElectrocardiogramCardView *)self _updateForCurrentSizeCategory];
}

- (void)_setUpGraph
{
  v4 = [(HKElectrocardiogramCardView *)self graphView];
  v3 = [(HKElectrocardiogramCardView *)self sample];
  [v4 displayElectrocardiogram:v3 allowsScrolling:0];
}

- (void)updateUI
{
  v3 = [(HKElectrocardiogramCardView *)self sample];

  if (v3)
  {
    v4 = [(HKElectrocardiogramCardView *)self sample];
    v5 = [v4 _localizedClassificationWithActiveAlgorithmVersion:{-[HKElectrocardiogramCardView activeAlgorithmVersion](self, "activeAlgorithmVersion")}];

    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = @" ";
    }

    v7 = v5;
    v8 = [(HKElectrocardiogramCardView *)self headerView];
    [v8 setText:v6];

    v9 = [(HKElectrocardiogramCardView *)self _cardHeaderColor];
    v10 = [(HKElectrocardiogramCardView *)self headerView];
    [v10 setColor:v9];

    v11 = [(HKElectrocardiogramCardView *)self sample];
    v12 = [v11 endDate];
    v13 = [(HKElectrocardiogramCardView *)self dateCache];
    v14 = HKLastUpdatedText(v12, v13);
    v15 = [(HKElectrocardiogramCardView *)self headerView];
    [v15 setDetailText:v14];

    v16 = [(HKElectrocardiogramCardView *)self sample];
    v17 = [v16 hk_classificationTextColor];
    v18 = [(HKElectrocardiogramCardView *)self headerView];
    [v18 setTextColor:v17];

    v19 = [(HKElectrocardiogramCardView *)self sample];
    v20 = [v19 hk_timeStampTextColor];
    v21 = [(HKElectrocardiogramCardView *)self _accessibilityHigherContrastTintColorForColor:v20];
    v22 = [(HKElectrocardiogramCardView *)self headerView];
    [v22 setDetailTextColor:v21];

    v23 = [(HKElectrocardiogramCardView *)self sample];
    v24 = [v23 hk_timeStampCompositingFilter];
    v25 = [(HKElectrocardiogramCardView *)self headerView];
    [v25 setDetailTextCompositingFilter:v24];

    v26 = [(HKElectrocardiogramCardView *)self sample];
    v27 = [v26 hk_localizedAverageBPM];
    v28 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
    [v28 setText:v27];

    v29 = [(HKElectrocardiogramCardView *)self sample];
    v30 = [v29 hk_BPMTextColor];
    v31 = [(HKElectrocardiogramCardView *)self _accessibilityHigherContrastTintColorForColor:v30];
    v32 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
    [v32 setTextColor:v31];

    v33 = objc_opt_class();
    v34 = [(HKElectrocardiogramCardView *)self sample];
    v35 = [v33 _averageHeartRateSymptomsFontForElectrocardiogram:v34];
    v36 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
    [v36 setFont:v35];

    v37 = [(HKElectrocardiogramCardView *)self sample];
    v38 = [v37 hk_localizedUppercaseNumSymptoms];
    v39 = [(HKElectrocardiogramCardView *)self symptomsLabel];
    [v39 setText:v38];

    v40 = [(HKElectrocardiogramCardView *)self sample];
    v41 = [v40 hk_numSymptomsTextColor];
    v42 = [(HKElectrocardiogramCardView *)self _accessibilityHigherContrastTintColorForColor:v41];
    v43 = [(HKElectrocardiogramCardView *)self symptomsLabel];
    [v43 setTextColor:v42];
  }

  else
  {
    v44 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v45 = [v44 localizedStringForKey:@"ECG_CARD_LOADING_TEXT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Cinnamon"];
    v46 = HKConditionallyRedactedHeartRhythmString();

    v7 = v46;
    v47 = [(HKElectrocardiogramCardView *)self headerView];
    [v47 setText:v7];

    v48 = [(HKElectrocardiogramCardView *)self headerView];
    [v48 setDetailText:@" "];

    v49 = [MEMORY[0x1E696C128] hk_defaultCardHeaderColor];
    v50 = [(HKElectrocardiogramCardView *)self headerView];
    [v50 setColor:v49];

    v51 = [MEMORY[0x1E696C128] hk_defaultClassificationTextColor];
    v52 = [(HKElectrocardiogramCardView *)self _accessibilityHigherContrastTintColorForColor:v51];
    v53 = [(HKElectrocardiogramCardView *)self headerView];
    [v53 setTextColor:v52];

    v54 = [MEMORY[0x1E696C128] hk_defaultTimeStampTextColor];
    v55 = [(HKElectrocardiogramCardView *)self _accessibilityHigherContrastTintColorForColor:v54];
    v56 = [(HKElectrocardiogramCardView *)self headerView];
    [v56 setDetailTextColor:v55];

    v57 = [MEMORY[0x1E696C128] hk_defaultTimeStampCompositingFilter];
    v58 = [(HKElectrocardiogramCardView *)self headerView];
    [v58 setDetailTextCompositingFilter:v57];

    v59 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v60 = [v59 localizedStringForKey:@"NO_AVERAGE_BEATS_PER_MINUTE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Cinnamon"];
    v61 = HKConditionallyRedactedHeartRhythmString();
    v62 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
    [v62 setText:v61];

    v63 = [MEMORY[0x1E696C128] hk_defaultBPMTextColor];
    v64 = [(HKElectrocardiogramCardView *)self _accessibilityHigherContrastTintColorForColor:v63];
    v65 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
    [v65 setTextColor:v64];

    v66 = [objc_opt_class() _averageHeartRateSymptomsFont];
    v67 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
    [v67 setFont:v66];

    v68 = [(HKElectrocardiogramCardView *)self symptomsLabel];
    [v68 setText:@" "];

    v40 = [MEMORY[0x1E696C128] hk_defaultNumSymptomsTextColor];
    v41 = [(HKElectrocardiogramCardView *)self _accessibilityHigherContrastTintColorForColor:v40];
    v42 = [(HKElectrocardiogramCardView *)self symptomsLabel];
    [v42 setTextColor:v41];
  }

  v69 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:1 suffix:@"Card.AverageBPM"];
  v70 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  [v70 setAccessibilityIdentifier:v69];

  v71 = [(HKElectrocardiogramCardView *)self _chevronColor];
  v72 = [(HKElectrocardiogramCardView *)self headerView];
  [v72 setChevronColor:v71];

  v73 = [MEMORY[0x1E69DC888] systemGray2Color];
  v74 = [v73 CGColor];
  v75 = [(HKElectrocardiogramCardView *)self graphView];
  v76 = [v75 layer];
  [v76 setBorderColor:v74];

  v77 = [(HKElectrocardiogramCardView *)self _graphBackgroundColor];
  v78 = [(HKElectrocardiogramCardView *)self graphView];
  [v78 setBackgroundColor:v77];

  v79 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:1 suffix:@"Card"];
  if (v7)
  {
    v80 = v7;
  }

  else
  {
    v80 = @"UndeterminedType";
  }

  v92 = v80;
  v81 = [v79 stringByAppendingFormat:@".%@.SessionResult", v80];
  [(HKElectrocardiogramCardView *)self setAccessibilityIdentifier:v81];

  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v82 = [(HKElectrocardiogramCardView *)self layer];
    [v82 setMaskedCorners:15];

    v83 = [MEMORY[0x1E69DC888] hk_electrocardiogramChartBorderColor];
    v84 = [v83 CGColor];
    v85 = [(HKElectrocardiogramCardView *)self layer];
    [v85 setBorderColor:v84];

    v86 = HKUICeilToScreenScale(0.5);
    v87 = [(HKElectrocardiogramCardView *)self layer];
    [v87 setBorderWidth:v86];

    v88 = [(HKElectrocardiogramCardView *)self layer];
    [v88 setCornerRadius:26.0 + 2.0];
  }

  else
  {
    v89 = [(HKElectrocardiogramCardView *)self cellBackgroundView];
    v90 = [v89 layer];
    [v90 setMaskedCorners:12];

    v91 = [(HKElectrocardiogramCardView *)self layer];
    [v91 setBorderColor:0];

    v88 = [(HKElectrocardiogramCardView *)self layer];
    [v88 setBorderWidth:0.0];
  }

  [(HKElectrocardiogramCardView *)self _updateForCurrentSizeCategory];
}

- (void)_updateTextConstraints
{
  v3 = [(HKElectrocardiogramCardView *)self _isLayingOutForAccessibility];
  v4 = [(HKElectrocardiogramCardView *)self averageHeartRateLabelWidthConstraint];
  v5 = v4;
  if (v3)
  {
    [v4 setActive:0];

    [objc_opt_class() _averageHeartRateBaselineToSymptomBaseline];
    v7 = v6;
    v8 = 0;
  }

  else
  {
    v8 = 1;
    [v4 setActive:1];

    v7 = 0.0;
  }

  v9 = [(HKElectrocardiogramCardView *)self symptomsLabelFirstBaselineConstraint];
  [v9 setConstant:v7];

  v10 = [(HKElectrocardiogramCardView *)self symptomsLabel];
  [v10 setNumberOfLines:v8];

  v11 = [(HKElectrocardiogramCardView *)self symptomsLabel];
  v12 = [v11 text];
  v13 = [v12 hk_copyNonEmptyString];

  if (!v13)
  {
    v14 = [(HKElectrocardiogramCardView *)self averageHeartRateLabelWidthConstraint];
    [v14 setActive:0];
  }

  [objc_opt_class() _headerBottomToAverageHeartRateBaseline];
  v16 = v15;
  v17 = [(HKElectrocardiogramCardView *)self averageHeartRateLabelFirstBaselineConstraint];
  [v17 setConstant:v16];
}

- (void)_updateGraphTopConstraint
{
  v3 = [(HKElectrocardiogramCardView *)self sample];
  v4 = [v3 hk_localizedUppercaseNumSymptoms];
  v5 = [v4 hk_copyNonEmptyString];

  v6 = [(HKElectrocardiogramCardView *)self graphTopConstraint];

  if (v6)
  {
    v7 = [(HKElectrocardiogramCardView *)self graphTopConstraint];
    [v7 setActive:0];

    [(HKElectrocardiogramCardView *)self setGraphTopConstraint:0];
  }

  if (v5)
  {
    [(HKElectrocardiogramCardView *)self symptomsLabel];
  }

  else
  {
    [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  }
  v8 = ;
  v20 = [v8 lastBaselineAnchor];

  [objc_opt_class() _averageHeartRateBaselineToGraphTop];
  v10 = v9;
  [objc_opt_class() _graphBottomToCardBottom];
  v12 = v11;
  v13 = objc_opt_class();
  if (v10 >= v12)
  {
    [v13 _averageHeartRateBaselineToGraphTop];
  }

  else
  {
    [v13 _graphBottomToCardBottom];
  }

  v15 = v14;
  v16 = [(HKElectrocardiogramCardView *)self graphView];
  v17 = [v16 topAnchor];
  v18 = [v17 constraintEqualToAnchor:v20 constant:v15];
  [(HKElectrocardiogramCardView *)self setGraphTopConstraint:v18];

  v19 = [(HKElectrocardiogramCardView *)self graphTopConstraint];
  [v19 setActive:1];
}

- (void)_updateForCurrentSizeCategory
{
  [(HKElectrocardiogramCardView *)self _updateTextConstraints];
  [(HKElectrocardiogramCardView *)self _updateGraphTopConstraint];
  v3 = [objc_opt_class() _accessibilityContentSizeCategory];
  v4 = [(UIView *)self hk_trailingTextAlignmentAtOrBelowSizeCategory:v3];
  v5 = [(HKElectrocardiogramCardView *)self symptomsLabel];
  [v5 setTextAlignment:v4];

  v6 = [(HKElectrocardiogramCardView *)self _isLayingOutForAccessibility];
  v7 = MEMORY[0x1E696ACD8];
  if (v6)
  {
    v8 = [(HKElectrocardiogramCardView *)self regularConstraints];
    [v7 deactivateConstraints:v8];

    v9 = MEMORY[0x1E696ACD8];
    [(HKElectrocardiogramCardView *)self largeTextConstraints];
  }

  else
  {
    v10 = [(HKElectrocardiogramCardView *)self largeTextConstraints];
    [v7 deactivateConstraints:v10];

    v9 = MEMORY[0x1E696ACD8];
    [(HKElectrocardiogramCardView *)self regularConstraints];
  }
  v11 = ;
  [v9 activateConstraints:v11];

  v15 = [objc_opt_class() _averageHeartRateSymptomsFont];
  [v15 lineHeight];
  v13 = v12;
  v14 = [(HKElectrocardiogramCardView *)self heartImageViewHeightConstraint];
  [v14 setConstant:v13];
}

- (BOOL)_isLayingOutForAccessibility
{
  v3 = [objc_opt_class() _accessibilityContentSizeCategory];
  if (HKUIApplicationContentSizeCategoryIsLargerThanSizeCategory(v3))
  {
    v4 = [(HKElectrocardiogramCardView *)self traitCollection];
    v5 = [v4 horizontalSizeClass] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_averageHeartRateSymptomsFont
{
  v2 = MEMORY[0x1E69DB878];
  v3 = [objc_opt_class() _averageHeartRateSymptomsTextStyle];
  v4 = [v2 hk_preferredFontForTextStyle:v3];

  return v4;
}

+ (id)_averageHeartRateSymptomsBoldFont
{
  v2 = MEMORY[0x1E69DB878];
  v3 = [objc_opt_class() _averageHeartRateSymptomsTextStyle];
  v4 = [v2 hk_preferredFontForTextStyle:v3 symbolicTraits:2];

  return v4;
}

+ (id)_averageHeartRateSymptomsFontForElectrocardiogram:(id)a3
{
  v3 = [a3 hk_isBPMTextBold];
  v4 = objc_opt_class();
  if (v3)
  {
    [v4 _averageHeartRateSymptomsBoldFont];
  }

  else
  {
    [v4 _averageHeartRateSymptomsFont];
  }
  v5 = ;

  return v5;
}

+ (double)_headerBottomToAverageHeartRateBaseline
{
  v2 = [objc_opt_class() _averageHeartRateSymptomsFont];
  [v2 _scaledValueForValue:24.0];
  v4 = v3;

  return v4;
}

+ (double)_averageHeartRateBaselineToSymptomBaseline
{
  v2 = [objc_opt_class() _averageHeartRateSymptomsFont];
  [v2 _scaledValueForValue:20.0];
  v4 = v3;

  return v4;
}

+ (double)_averageHeartRateBaselineToGraphTop
{
  v2 = [objc_opt_class() _averageHeartRateSymptomsFont];
  [v2 _scaledValueForValue:12.0];
  v4 = v3;

  return v4;
}

- (void)dateCacheDidUpdate:(id)a3 onNotification:(id)a4
{
  v9 = [(HKElectrocardiogramCardView *)self sample:a3];
  v5 = [v9 endDate];
  v6 = [(HKElectrocardiogramCardView *)self dateCache];
  v7 = HKLastUpdatedText(v5, v6);
  v8 = [(HKElectrocardiogramCardView *)self headerView];
  [v8 setDetailText:v7];
}

- (id)_cardHeaderColor
{
  v3 = [(HKElectrocardiogramCardView *)self sample];
  v4 = [v3 hk_cardHeaderColor];
  v5 = [MEMORY[0x1E696C128] hk_abnormalCardHeaderColor];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [MEMORY[0x1E696C128] hk_abnormalCardHeaderColor];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  if ([(HKElectrocardiogramCardView *)self isOnboarding])
  {
    v7 = [MEMORY[0x1E69DC888] secondarySystemFillColor];
    goto LABEL_5;
  }

  v9 = [(HKElectrocardiogramCardView *)self sample];
  v8 = [v9 hk_cardHeaderColor];

LABEL_7:

  return v8;
}

- (id)_chevronColor
{
  v2 = [(HKElectrocardiogramCardView *)self sample];
  v3 = [v2 hk_cardHeaderColor];
  v4 = [MEMORY[0x1E696C128] hk_abnormalCardHeaderColor];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.3];
  }

  else
  {
    [MEMORY[0x1E69DC888] tertiaryLabelColor];
  }
  v6 = ;

  return v6;
}

- (id)_cardBackgroundColor
{
  if ([(HKElectrocardiogramCardView *)self isOnboarding])
  {
    v3 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }

  else
  {
    v4 = [(HKElectrocardiogramCardView *)self sample];
    v5 = [v4 hk_cardBackgroundColor];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [MEMORY[0x1E696C128] hk_defaultCardBackgroundColor];
    }

    v3 = v7;
  }

  return v3;
}

- (id)_graphBackgroundColor
{
  if ([(HKElectrocardiogramCardView *)self isOnboarding])
  {
    [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  else
  {
    [(HKElectrocardiogramCardView *)self _cardBackgroundColor];
  }
  v3 = ;

  return v3;
}

- (HKDateCache)dateCache
{
  WeakRetained = objc_loadWeakRetained(&self->_dateCache);

  return WeakRetained;
}

@end