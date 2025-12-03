@interface HKElectrocardiogramCardView
+ (double)_averageHeartRateBaselineToGraphTop;
+ (double)_averageHeartRateBaselineToSymptomBaseline;
+ (double)_headerBottomToAverageHeartRateBaseline;
+ (double)estimatedHeight;
+ (id)_averageHeartRateSymptomsBoldFont;
+ (id)_averageHeartRateSymptomsFont;
+ (id)_averageHeartRateSymptomsFontForElectrocardiogram:(id)electrocardiogram;
- (BOOL)_isLayingOutForAccessibility;
- (HKDateCache)dateCache;
- (HKElectrocardiogramCardView)initWithSample:(id)sample dateCache:(id)cache onboarding:(BOOL)onboarding activeAlgorithmVersion:(int64_t)version isSampleInteractive:(BOOL)interactive;
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
- (void)dateCacheDidUpdate:(id)update onNotification:(id)notification;
- (void)dealloc;
- (void)setSample:(id)sample;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
- (void)updateUI;
@end

@implementation HKElectrocardiogramCardView

- (HKElectrocardiogramCardView)initWithSample:(id)sample dateCache:(id)cache onboarding:(BOOL)onboarding activeAlgorithmVersion:(int64_t)version isSampleInteractive:(BOOL)interactive
{
  sampleCopy = sample;
  cacheCopy = cache;
  v18.receiver = self;
  v18.super_class = HKElectrocardiogramCardView;
  v15 = [(HKElectrocardiogramCardView *)&v18 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sample, sample);
    objc_storeWeak(&v16->_dateCache, cacheCopy);
    v16->_onboarding = onboarding;
    v16->_activeAlgorithmVersion = version;
    v16->_isSampleInteractive = interactive;
    [(HKElectrocardiogramCardView *)v16 _setupUI];
    [(HKElectrocardiogramCardView *)v16 _setupConstraints];
    [(HKElectrocardiogramCardView *)v16 updateUI];
    [(HKElectrocardiogramCardView *)v16 _setUpGraph];
  }

  return v16;
}

- (void)setSample:(id)sample
{
  objc_storeStrong(&self->_sample, sample);
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v11.receiver = self;
  v11.super_class = HKElectrocardiogramCardView;
  [(HKElectrocardiogramCardView *)&v11 traitCollectionDidChange:changeCopy];
  traitCollection = [(HKElectrocardiogramCardView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
  v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

  if (!v8 || (-[HKElectrocardiogramCardView traitCollection](self, "traitCollection"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 hasDifferentColorAppearanceComparedToTraitCollection:changeCopy], v9, v10))
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
  dateCache = [(HKElectrocardiogramCardView *)self dateCache];
  [dateCache unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = HKElectrocardiogramCardView;
  [(HKElectrocardiogramCardView *)&v4 dealloc];
}

- (void)_setupUI
{
  v73[1] = *MEMORY[0x1E69E9840];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(HKElectrocardiogramCardView *)self setBackgroundColor:clearColor];

  [(HKElectrocardiogramCardView *)self setClipsToBounds:1];
  layer = [(HKElectrocardiogramCardView *)self layer];
  [layer setCornerRadius:26.0];

  v5 = [HKRoundedHeaderView alloc];
  _cardHeaderColor = [(HKElectrocardiogramCardView *)self _cardHeaderColor];
  v7 = [(HKRoundedHeaderView *)v5 initWithColor:_cardHeaderColor isInteractive:self->_isSampleInteractive];
  [(HKElectrocardiogramCardView *)self setHeaderView:v7];

  headerView = [(HKElectrocardiogramCardView *)self headerView];
  [headerView setClipsToBounds:1];

  headerView2 = [(HKElectrocardiogramCardView *)self headerView];
  [headerView2 setOpaque:1];

  headerView3 = [(HKElectrocardiogramCardView *)self headerView];
  [headerView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:1 suffix:@"Card.Header"];
  headerView4 = [(HKElectrocardiogramCardView *)self headerView];
  [headerView4 setAccessibilityIdentifier:v11];

  headerView5 = [(HKElectrocardiogramCardView *)self headerView];
  [(HKElectrocardiogramCardView *)self addSubview:headerView5];

  v14 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(HKElectrocardiogramCardView *)self setCellBackgroundView:v14];

  _cardBackgroundColor = [(HKElectrocardiogramCardView *)self _cardBackgroundColor];
  cellBackgroundView = [(HKElectrocardiogramCardView *)self cellBackgroundView];
  [cellBackgroundView setBackgroundColor:_cardBackgroundColor];

  cellBackgroundView2 = [(HKElectrocardiogramCardView *)self cellBackgroundView];
  [cellBackgroundView2 setClipsToBounds:1];

  cellBackgroundView3 = [(HKElectrocardiogramCardView *)self cellBackgroundView];
  layer2 = [cellBackgroundView3 layer];
  [layer2 setCornerRadius:26.0];

  cellBackgroundView4 = [(HKElectrocardiogramCardView *)self cellBackgroundView];
  layer3 = [cellBackgroundView4 layer];
  [layer3 setMaskedCorners:12];

  cellBackgroundView5 = [(HKElectrocardiogramCardView *)self cellBackgroundView];
  [cellBackgroundView5 setTranslatesAutoresizingMaskIntoConstraints:0];

  cellBackgroundView6 = [(HKElectrocardiogramCardView *)self cellBackgroundView];
  [(HKElectrocardiogramCardView *)self addSubview:cellBackgroundView6];

  v24 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [(HKElectrocardiogramCardView *)self setHeartImageView:v24];

  v25 = MEMORY[0x1E69DCAD8];
  _averageHeartRateSymptomsFont = [objc_opt_class() _averageHeartRateSymptomsFont];
  v27 = [v25 configurationWithFont:_averageHeartRateSymptomsFont];
  heartImageView = [(HKElectrocardiogramCardView *)self heartImageView];
  [heartImageView setPreferredSymbolConfiguration:v27];

  v29 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"heart.fill"];
  heartImageView2 = [(HKElectrocardiogramCardView *)self heartImageView];
  [heartImageView2 setImage:v29];

  heartImageView3 = [(HKElectrocardiogramCardView *)self heartImageView];
  [heartImageView3 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];

  heartImageView4 = [(HKElectrocardiogramCardView *)self heartImageView];
  [heartImageView4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v33 = [HKDisplayCategory categoryWithID:11];
  color = [v33 color];
  heartImageView5 = [(HKElectrocardiogramCardView *)self heartImageView];
  [heartImageView5 setTintColor:color];

  heartImageView6 = [(HKElectrocardiogramCardView *)self heartImageView];
  [(HKElectrocardiogramCardView *)self addSubview:heartImageView6];

  v37 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(HKElectrocardiogramCardView *)self setAverageHeartRateLabel:v37];

  averageHeartRateLabel = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  [averageHeartRateLabel setNumberOfLines:0];

  _averageHeartRateSymptomsFont2 = [objc_opt_class() _averageHeartRateSymptomsFont];
  averageHeartRateLabel2 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  [averageHeartRateLabel2 setFont:_averageHeartRateSymptomsFont2];

  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  v42 = [(HKElectrocardiogramCardView *)self _accessibilityHigherContrastTintColorForColor:systemGrayColor];
  averageHeartRateLabel3 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  [averageHeartRateLabel3 setTextColor:v42];

  averageHeartRateLabel4 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  [averageHeartRateLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

  averageHeartRateLabel5 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  [averageHeartRateLabel5 setAdjustsFontForContentSizeCategory:1];

  averageHeartRateLabel6 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  [(HKElectrocardiogramCardView *)self addSubview:averageHeartRateLabel6];

  v47 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(HKElectrocardiogramCardView *)self setSymptomsLabel:v47];

  symptomsLabel = [(HKElectrocardiogramCardView *)self symptomsLabel];
  [symptomsLabel setNumberOfLines:1];

  _averageHeartRateSymptomsFont3 = [objc_opt_class() _averageHeartRateSymptomsFont];
  symptomsLabel2 = [(HKElectrocardiogramCardView *)self symptomsLabel];
  [symptomsLabel2 setFont:_averageHeartRateSymptomsFont3];

  symptomsLabel3 = [(HKElectrocardiogramCardView *)self symptomsLabel];
  [symptomsLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  symptomsLabel4 = [(HKElectrocardiogramCardView *)self symptomsLabel];
  [symptomsLabel4 setAdjustsFontForContentSizeCategory:1];

  symptomsLabel5 = [(HKElectrocardiogramCardView *)self symptomsLabel];
  [(HKElectrocardiogramCardView *)self addSubview:symptomsLabel5];

  v54 = [HKElectrocardiogramGridOptions alloc];
  systemGray3Color = [MEMORY[0x1E69DC888] systemGray3Color];
  v56 = [(HKElectrocardiogramGridOptions *)v54 initWithUnitMultiple:(1.0 / 0.04) axis:2 lineColor:systemGray3Color lineWidth:HKUIFloorToScreenScale(0.5)];

  v57 = [HKElectrocardiogramChartView alloc];
  v73[0] = v56;
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:1];
  v59 = [(HKElectrocardiogramChartView *)v57 initWithGridSize:v58 gridOptions:4.0, 4.0];
  [(HKElectrocardiogramCardView *)self setGraphView:v59];

  color2 = [v33 color];
  graphView = [(HKElectrocardiogramCardView *)self graphView];
  [graphView setTintColor:color2];

  graphView2 = [(HKElectrocardiogramCardView *)self graphView];
  [graphView2 setEdgeMaskEnabled:1];

  graphView3 = [(HKElectrocardiogramCardView *)self graphView];
  [graphView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  graphView4 = [(HKElectrocardiogramCardView *)self graphView];
  layer4 = [graphView4 layer];
  [layer4 setCornerRadius:26.0 * 0.5];

  graphView5 = [(HKElectrocardiogramCardView *)self graphView];
  layer5 = [graphView5 layer];
  [layer5 setMasksToBounds:1];

  v68 = HKUICeilToScreenScale(0.5);
  graphView6 = [(HKElectrocardiogramCardView *)self graphView];
  layer6 = [graphView6 layer];
  [layer6 setBorderWidth:v68];

  graphView7 = [(HKElectrocardiogramCardView *)self graphView];
  [(HKElectrocardiogramCardView *)self addSubview:graphView7];

  dateCache = [(HKElectrocardiogramCardView *)self dateCache];
  [dateCache registerObserver:self];
}

- (void)_setupConstraints
{
  headerView = [(HKElectrocardiogramCardView *)self headerView];
  [headerView hk_alignHorizontalConstraintsWithView:self margin:0.0];

  headerView2 = [(HKElectrocardiogramCardView *)self headerView];
  topAnchor = [headerView2 topAnchor];
  topAnchor2 = [(HKElectrocardiogramCardView *)self topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v7 setActive:1];

  cellBackgroundView = [(HKElectrocardiogramCardView *)self cellBackgroundView];
  headerView3 = [(HKElectrocardiogramCardView *)self headerView];
  [cellBackgroundView hk_alignHorizontalConstraintsWithView:headerView3 margin:0.0];

  cellBackgroundView2 = [(HKElectrocardiogramCardView *)self cellBackgroundView];
  topAnchor3 = [cellBackgroundView2 topAnchor];
  headerView4 = [(HKElectrocardiogramCardView *)self headerView];
  bottomAnchor = [headerView4 bottomAnchor];
  v14 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  [v14 setActive:1];

  cellBackgroundView3 = [(HKElectrocardiogramCardView *)self cellBackgroundView];
  bottomAnchor2 = [cellBackgroundView3 bottomAnchor];
  graphView = [(HKElectrocardiogramCardView *)self graphView];
  bottomAnchor3 = [graphView bottomAnchor];
  [objc_opt_class() _graphBottomToCardBottom];
  v19 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:?];
  [v19 setActive:1];

  heartImageView = [(HKElectrocardiogramCardView *)self heartImageView];
  leadingAnchor = [heartImageView leadingAnchor];
  headerView5 = [(HKElectrocardiogramCardView *)self headerView];
  leadingAnchor2 = [headerView5 leadingAnchor];
  headerView6 = [(HKElectrocardiogramCardView *)self headerView];
  [headerView6 textHorizontalInset];
  v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  [v25 setActive:1];

  heartImageView2 = [(HKElectrocardiogramCardView *)self heartImageView];
  centerYAnchor = [heartImageView2 centerYAnchor];
  averageHeartRateLabel = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  centerYAnchor2 = [averageHeartRateLabel centerYAnchor];
  v30 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v30 setActive:1];

  heartImageView3 = [(HKElectrocardiogramCardView *)self heartImageView];
  heightAnchor = [heartImageView3 heightAnchor];
  _averageHeartRateSymptomsFont = [objc_opt_class() _averageHeartRateSymptomsFont];
  [_averageHeartRateSymptomsFont lineHeight];
  v34 = [heightAnchor constraintEqualToConstant:?];
  [(HKElectrocardiogramCardView *)self setHeartImageViewHeightConstraint:v34];

  heartImageViewHeightConstraint = [(HKElectrocardiogramCardView *)self heartImageViewHeightConstraint];
  [heartImageViewHeightConstraint setActive:1];

  heartImageView4 = [(HKElectrocardiogramCardView *)self heartImageView];
  widthAnchor = [heartImageView4 widthAnchor];
  heartImageView5 = [(HKElectrocardiogramCardView *)self heartImageView];
  heightAnchor2 = [heartImageView5 heightAnchor];
  v125 = [widthAnchor constraintEqualToAnchor:heightAnchor2];

  LODWORD(v40) = 1148846080;
  [v125 setPriority:v40];
  [v125 setActive:1];
  averageHeartRateLabel2 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  leadingAnchor3 = [averageHeartRateLabel2 leadingAnchor];
  heartImageView6 = [(HKElectrocardiogramCardView *)self heartImageView];
  trailingAnchor = [heartImageView6 trailingAnchor];
  v45 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:6.0];
  [v45 setActive:1];

  averageHeartRateLabel3 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  firstBaselineAnchor = [averageHeartRateLabel3 firstBaselineAnchor];
  headerView7 = [(HKElectrocardiogramCardView *)self headerView];
  bottomAnchor4 = [headerView7 bottomAnchor];
  v50 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor4];
  [(HKElectrocardiogramCardView *)self setAverageHeartRateLabelFirstBaselineConstraint:v50];

  averageHeartRateLabelFirstBaselineConstraint = [(HKElectrocardiogramCardView *)self averageHeartRateLabelFirstBaselineConstraint];
  [averageHeartRateLabelFirstBaselineConstraint setActive:1];

  averageHeartRateLabel4 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  widthAnchor2 = [averageHeartRateLabel4 widthAnchor];
  widthAnchor3 = [(HKElectrocardiogramCardView *)self widthAnchor];
  v55 = [widthAnchor2 constraintLessThanOrEqualToAnchor:widthAnchor3 multiplier:0.34];
  [(HKElectrocardiogramCardView *)self setAverageHeartRateLabelWidthConstraint:v55];

  averageHeartRateLabelWidthConstraint = [(HKElectrocardiogramCardView *)self averageHeartRateLabelWidthConstraint];
  LODWORD(v57) = 1144750080;
  [averageHeartRateLabelWidthConstraint setPriority:v57];

  symptomsLabel = [(HKElectrocardiogramCardView *)self symptomsLabel];
  LODWORD(v59) = 1148846080;
  [symptomsLabel setContentCompressionResistancePriority:0 forAxis:v59];

  v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
  symptomsLabel2 = [(HKElectrocardiogramCardView *)self symptomsLabel];
  leadingAnchor4 = [symptomsLabel2 leadingAnchor];
  averageHeartRateLabel5 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  trailingAnchor2 = [averageHeartRateLabel5 trailingAnchor];
  v65 = [leadingAnchor4 constraintGreaterThanOrEqualToAnchor:trailingAnchor2 constant:16.0];
  [v60 addObject:v65];

  symptomsLabel3 = [(HKElectrocardiogramCardView *)self symptomsLabel];
  trailingAnchor3 = [symptomsLabel3 trailingAnchor];
  headerView8 = [(HKElectrocardiogramCardView *)self headerView];
  trailingAnchor4 = [headerView8 trailingAnchor];
  headerView9 = [(HKElectrocardiogramCardView *)self headerView];
  [headerView9 textHorizontalInset];
  v72 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v71];
  [v60 addObject:v72];

  symptomsLabel4 = [(HKElectrocardiogramCardView *)self symptomsLabel];
  firstBaselineAnchor2 = [symptomsLabel4 firstBaselineAnchor];
  averageHeartRateLabel6 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  lastBaselineAnchor = [averageHeartRateLabel6 lastBaselineAnchor];
  v77 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor];
  [v60 addObject:v77];

  v78 = [v60 copy];
  [(HKElectrocardiogramCardView *)self setRegularConstraints:v78];

  v79 = objc_alloc_init(MEMORY[0x1E695DF70]);
  averageHeartRateLabel7 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  trailingAnchor5 = [averageHeartRateLabel7 trailingAnchor];
  headerView10 = [(HKElectrocardiogramCardView *)self headerView];
  trailingAnchor6 = [headerView10 trailingAnchor];
  headerView11 = [(HKElectrocardiogramCardView *)self headerView];
  [headerView11 textHorizontalInset];
  v86 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-v85];
  [v79 addObject:v86];

  symptomsLabel5 = [(HKElectrocardiogramCardView *)self symptomsLabel];
  leadingAnchor5 = [symptomsLabel5 leadingAnchor];
  averageHeartRateLabel8 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  leadingAnchor6 = [averageHeartRateLabel8 leadingAnchor];
  v91 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  [v79 addObject:v91];

  symptomsLabel6 = [(HKElectrocardiogramCardView *)self symptomsLabel];
  trailingAnchor7 = [symptomsLabel6 trailingAnchor];
  averageHeartRateLabel9 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  trailingAnchor8 = [averageHeartRateLabel9 trailingAnchor];
  v96 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  [v79 addObject:v96];

  symptomsLabel7 = [(HKElectrocardiogramCardView *)self symptomsLabel];
  firstBaselineAnchor3 = [symptomsLabel7 firstBaselineAnchor];
  averageHeartRateLabel10 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  lastBaselineAnchor2 = [averageHeartRateLabel10 lastBaselineAnchor];
  v101 = [firstBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor2];
  [(HKElectrocardiogramCardView *)self setSymptomsLabelFirstBaselineConstraint:v101];

  symptomsLabelFirstBaselineConstraint = [(HKElectrocardiogramCardView *)self symptomsLabelFirstBaselineConstraint];
  [v79 addObject:symptomsLabelFirstBaselineConstraint];

  v103 = [v79 copy];
  [(HKElectrocardiogramCardView *)self setLargeTextConstraints:v103];

  graphView2 = [(HKElectrocardiogramCardView *)self graphView];
  leftAnchor = [graphView2 leftAnchor];
  headerView12 = [(HKElectrocardiogramCardView *)self headerView];
  leftAnchor2 = [headerView12 leftAnchor];
  headerView13 = [(HKElectrocardiogramCardView *)self headerView];
  [headerView13 textHorizontalInset];
  v109 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:?];
  [v109 setActive:1];

  graphView3 = [(HKElectrocardiogramCardView *)self graphView];
  rightAnchor = [graphView3 rightAnchor];
  headerView14 = [(HKElectrocardiogramCardView *)self headerView];
  rightAnchor2 = [headerView14 rightAnchor];
  headerView15 = [(HKElectrocardiogramCardView *)self headerView];
  [headerView15 textHorizontalInset];
  v116 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-v115];
  [v116 setActive:1];

  graphView4 = [(HKElectrocardiogramCardView *)self graphView];
  heightAnchor3 = [graphView4 heightAnchor];
  [objc_opt_class() _graphHeight];
  v119 = [heightAnchor3 constraintEqualToConstant:?];

  LODWORD(v120) = 1144750080;
  [v119 setPriority:v120];
  [v119 setActive:1];
  bottomAnchor5 = [(HKElectrocardiogramCardView *)self bottomAnchor];
  cellBackgroundView4 = [(HKElectrocardiogramCardView *)self cellBackgroundView];
  bottomAnchor6 = [cellBackgroundView4 bottomAnchor];
  v124 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  [v124 setActive:1];

  [(HKElectrocardiogramCardView *)self _updateForCurrentSizeCategory];
}

- (void)_setUpGraph
{
  graphView = [(HKElectrocardiogramCardView *)self graphView];
  sample = [(HKElectrocardiogramCardView *)self sample];
  [graphView displayElectrocardiogram:sample allowsScrolling:0];
}

- (void)updateUI
{
  sample = [(HKElectrocardiogramCardView *)self sample];

  if (sample)
  {
    sample2 = [(HKElectrocardiogramCardView *)self sample];
    v5 = [sample2 _localizedClassificationWithActiveAlgorithmVersion:{-[HKElectrocardiogramCardView activeAlgorithmVersion](self, "activeAlgorithmVersion")}];

    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = @" ";
    }

    v7 = v5;
    headerView = [(HKElectrocardiogramCardView *)self headerView];
    [headerView setText:v6];

    _cardHeaderColor = [(HKElectrocardiogramCardView *)self _cardHeaderColor];
    headerView2 = [(HKElectrocardiogramCardView *)self headerView];
    [headerView2 setColor:_cardHeaderColor];

    sample3 = [(HKElectrocardiogramCardView *)self sample];
    endDate = [sample3 endDate];
    dateCache = [(HKElectrocardiogramCardView *)self dateCache];
    v14 = HKLastUpdatedText(endDate, dateCache);
    headerView3 = [(HKElectrocardiogramCardView *)self headerView];
    [headerView3 setDetailText:v14];

    sample4 = [(HKElectrocardiogramCardView *)self sample];
    hk_classificationTextColor = [sample4 hk_classificationTextColor];
    headerView4 = [(HKElectrocardiogramCardView *)self headerView];
    [headerView4 setTextColor:hk_classificationTextColor];

    sample5 = [(HKElectrocardiogramCardView *)self sample];
    hk_timeStampTextColor = [sample5 hk_timeStampTextColor];
    v21 = [(HKElectrocardiogramCardView *)self _accessibilityHigherContrastTintColorForColor:hk_timeStampTextColor];
    headerView5 = [(HKElectrocardiogramCardView *)self headerView];
    [headerView5 setDetailTextColor:v21];

    sample6 = [(HKElectrocardiogramCardView *)self sample];
    hk_timeStampCompositingFilter = [sample6 hk_timeStampCompositingFilter];
    headerView6 = [(HKElectrocardiogramCardView *)self headerView];
    [headerView6 setDetailTextCompositingFilter:hk_timeStampCompositingFilter];

    sample7 = [(HKElectrocardiogramCardView *)self sample];
    hk_localizedAverageBPM = [sample7 hk_localizedAverageBPM];
    averageHeartRateLabel = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
    [averageHeartRateLabel setText:hk_localizedAverageBPM];

    sample8 = [(HKElectrocardiogramCardView *)self sample];
    hk_BPMTextColor = [sample8 hk_BPMTextColor];
    v31 = [(HKElectrocardiogramCardView *)self _accessibilityHigherContrastTintColorForColor:hk_BPMTextColor];
    averageHeartRateLabel2 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
    [averageHeartRateLabel2 setTextColor:v31];

    v33 = objc_opt_class();
    sample9 = [(HKElectrocardiogramCardView *)self sample];
    v35 = [v33 _averageHeartRateSymptomsFontForElectrocardiogram:sample9];
    averageHeartRateLabel3 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
    [averageHeartRateLabel3 setFont:v35];

    sample10 = [(HKElectrocardiogramCardView *)self sample];
    hk_localizedUppercaseNumSymptoms = [sample10 hk_localizedUppercaseNumSymptoms];
    symptomsLabel = [(HKElectrocardiogramCardView *)self symptomsLabel];
    [symptomsLabel setText:hk_localizedUppercaseNumSymptoms];

    sample11 = [(HKElectrocardiogramCardView *)self sample];
    hk_numSymptomsTextColor = [sample11 hk_numSymptomsTextColor];
    symptomsLabel4 = [(HKElectrocardiogramCardView *)self _accessibilityHigherContrastTintColorForColor:hk_numSymptomsTextColor];
    symptomsLabel2 = [(HKElectrocardiogramCardView *)self symptomsLabel];
    [symptomsLabel2 setTextColor:symptomsLabel4];
  }

  else
  {
    v44 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v45 = [v44 localizedStringForKey:@"ECG_CARD_LOADING_TEXT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Cinnamon"];
    v46 = HKConditionallyRedactedHeartRhythmString();

    v7 = v46;
    headerView7 = [(HKElectrocardiogramCardView *)self headerView];
    [headerView7 setText:v7];

    headerView8 = [(HKElectrocardiogramCardView *)self headerView];
    [headerView8 setDetailText:@" "];

    hk_defaultCardHeaderColor = [MEMORY[0x1E696C128] hk_defaultCardHeaderColor];
    headerView9 = [(HKElectrocardiogramCardView *)self headerView];
    [headerView9 setColor:hk_defaultCardHeaderColor];

    hk_defaultClassificationTextColor = [MEMORY[0x1E696C128] hk_defaultClassificationTextColor];
    v52 = [(HKElectrocardiogramCardView *)self _accessibilityHigherContrastTintColorForColor:hk_defaultClassificationTextColor];
    headerView10 = [(HKElectrocardiogramCardView *)self headerView];
    [headerView10 setTextColor:v52];

    hk_defaultTimeStampTextColor = [MEMORY[0x1E696C128] hk_defaultTimeStampTextColor];
    v55 = [(HKElectrocardiogramCardView *)self _accessibilityHigherContrastTintColorForColor:hk_defaultTimeStampTextColor];
    headerView11 = [(HKElectrocardiogramCardView *)self headerView];
    [headerView11 setDetailTextColor:v55];

    hk_defaultTimeStampCompositingFilter = [MEMORY[0x1E696C128] hk_defaultTimeStampCompositingFilter];
    headerView12 = [(HKElectrocardiogramCardView *)self headerView];
    [headerView12 setDetailTextCompositingFilter:hk_defaultTimeStampCompositingFilter];

    v59 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v60 = [v59 localizedStringForKey:@"NO_AVERAGE_BEATS_PER_MINUTE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Cinnamon"];
    v61 = HKConditionallyRedactedHeartRhythmString();
    averageHeartRateLabel4 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
    [averageHeartRateLabel4 setText:v61];

    hk_defaultBPMTextColor = [MEMORY[0x1E696C128] hk_defaultBPMTextColor];
    v64 = [(HKElectrocardiogramCardView *)self _accessibilityHigherContrastTintColorForColor:hk_defaultBPMTextColor];
    averageHeartRateLabel5 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
    [averageHeartRateLabel5 setTextColor:v64];

    _averageHeartRateSymptomsFont = [objc_opt_class() _averageHeartRateSymptomsFont];
    averageHeartRateLabel6 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
    [averageHeartRateLabel6 setFont:_averageHeartRateSymptomsFont];

    symptomsLabel3 = [(HKElectrocardiogramCardView *)self symptomsLabel];
    [symptomsLabel3 setText:@" "];

    sample11 = [MEMORY[0x1E696C128] hk_defaultNumSymptomsTextColor];
    hk_numSymptomsTextColor = [(HKElectrocardiogramCardView *)self _accessibilityHigherContrastTintColorForColor:sample11];
    symptomsLabel4 = [(HKElectrocardiogramCardView *)self symptomsLabel];
    [symptomsLabel4 setTextColor:hk_numSymptomsTextColor];
  }

  v69 = [MEMORY[0x1E696AEC0] healthAccessibilityIdentifier:1 suffix:@"Card.AverageBPM"];
  averageHeartRateLabel7 = [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  [averageHeartRateLabel7 setAccessibilityIdentifier:v69];

  _chevronColor = [(HKElectrocardiogramCardView *)self _chevronColor];
  headerView13 = [(HKElectrocardiogramCardView *)self headerView];
  [headerView13 setChevronColor:_chevronColor];

  systemGray2Color = [MEMORY[0x1E69DC888] systemGray2Color];
  cGColor = [systemGray2Color CGColor];
  graphView = [(HKElectrocardiogramCardView *)self graphView];
  layer = [graphView layer];
  [layer setBorderColor:cGColor];

  _graphBackgroundColor = [(HKElectrocardiogramCardView *)self _graphBackgroundColor];
  graphView2 = [(HKElectrocardiogramCardView *)self graphView];
  [graphView2 setBackgroundColor:_graphBackgroundColor];

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
    layer2 = [(HKElectrocardiogramCardView *)self layer];
    [layer2 setMaskedCorners:15];

    hk_electrocardiogramChartBorderColor = [MEMORY[0x1E69DC888] hk_electrocardiogramChartBorderColor];
    cGColor2 = [hk_electrocardiogramChartBorderColor CGColor];
    layer3 = [(HKElectrocardiogramCardView *)self layer];
    [layer3 setBorderColor:cGColor2];

    v86 = HKUICeilToScreenScale(0.5);
    layer4 = [(HKElectrocardiogramCardView *)self layer];
    [layer4 setBorderWidth:v86];

    layer5 = [(HKElectrocardiogramCardView *)self layer];
    [layer5 setCornerRadius:26.0 + 2.0];
  }

  else
  {
    cellBackgroundView = [(HKElectrocardiogramCardView *)self cellBackgroundView];
    layer6 = [cellBackgroundView layer];
    [layer6 setMaskedCorners:12];

    layer7 = [(HKElectrocardiogramCardView *)self layer];
    [layer7 setBorderColor:0];

    layer5 = [(HKElectrocardiogramCardView *)self layer];
    [layer5 setBorderWidth:0.0];
  }

  [(HKElectrocardiogramCardView *)self _updateForCurrentSizeCategory];
}

- (void)_updateTextConstraints
{
  _isLayingOutForAccessibility = [(HKElectrocardiogramCardView *)self _isLayingOutForAccessibility];
  averageHeartRateLabelWidthConstraint = [(HKElectrocardiogramCardView *)self averageHeartRateLabelWidthConstraint];
  v5 = averageHeartRateLabelWidthConstraint;
  if (_isLayingOutForAccessibility)
  {
    [averageHeartRateLabelWidthConstraint setActive:0];

    [objc_opt_class() _averageHeartRateBaselineToSymptomBaseline];
    v7 = v6;
    v8 = 0;
  }

  else
  {
    v8 = 1;
    [averageHeartRateLabelWidthConstraint setActive:1];

    v7 = 0.0;
  }

  symptomsLabelFirstBaselineConstraint = [(HKElectrocardiogramCardView *)self symptomsLabelFirstBaselineConstraint];
  [symptomsLabelFirstBaselineConstraint setConstant:v7];

  symptomsLabel = [(HKElectrocardiogramCardView *)self symptomsLabel];
  [symptomsLabel setNumberOfLines:v8];

  symptomsLabel2 = [(HKElectrocardiogramCardView *)self symptomsLabel];
  text = [symptomsLabel2 text];
  hk_copyNonEmptyString = [text hk_copyNonEmptyString];

  if (!hk_copyNonEmptyString)
  {
    averageHeartRateLabelWidthConstraint2 = [(HKElectrocardiogramCardView *)self averageHeartRateLabelWidthConstraint];
    [averageHeartRateLabelWidthConstraint2 setActive:0];
  }

  [objc_opt_class() _headerBottomToAverageHeartRateBaseline];
  v16 = v15;
  averageHeartRateLabelFirstBaselineConstraint = [(HKElectrocardiogramCardView *)self averageHeartRateLabelFirstBaselineConstraint];
  [averageHeartRateLabelFirstBaselineConstraint setConstant:v16];
}

- (void)_updateGraphTopConstraint
{
  sample = [(HKElectrocardiogramCardView *)self sample];
  hk_localizedUppercaseNumSymptoms = [sample hk_localizedUppercaseNumSymptoms];
  hk_copyNonEmptyString = [hk_localizedUppercaseNumSymptoms hk_copyNonEmptyString];

  graphTopConstraint = [(HKElectrocardiogramCardView *)self graphTopConstraint];

  if (graphTopConstraint)
  {
    graphTopConstraint2 = [(HKElectrocardiogramCardView *)self graphTopConstraint];
    [graphTopConstraint2 setActive:0];

    [(HKElectrocardiogramCardView *)self setGraphTopConstraint:0];
  }

  if (hk_copyNonEmptyString)
  {
    [(HKElectrocardiogramCardView *)self symptomsLabel];
  }

  else
  {
    [(HKElectrocardiogramCardView *)self averageHeartRateLabel];
  }
  v8 = ;
  lastBaselineAnchor = [v8 lastBaselineAnchor];

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
  graphView = [(HKElectrocardiogramCardView *)self graphView];
  topAnchor = [graphView topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:lastBaselineAnchor constant:v15];
  [(HKElectrocardiogramCardView *)self setGraphTopConstraint:v18];

  graphTopConstraint3 = [(HKElectrocardiogramCardView *)self graphTopConstraint];
  [graphTopConstraint3 setActive:1];
}

- (void)_updateForCurrentSizeCategory
{
  [(HKElectrocardiogramCardView *)self _updateTextConstraints];
  [(HKElectrocardiogramCardView *)self _updateGraphTopConstraint];
  _accessibilityContentSizeCategory = [objc_opt_class() _accessibilityContentSizeCategory];
  v4 = [(UIView *)self hk_trailingTextAlignmentAtOrBelowSizeCategory:_accessibilityContentSizeCategory];
  symptomsLabel = [(HKElectrocardiogramCardView *)self symptomsLabel];
  [symptomsLabel setTextAlignment:v4];

  _isLayingOutForAccessibility = [(HKElectrocardiogramCardView *)self _isLayingOutForAccessibility];
  v7 = MEMORY[0x1E696ACD8];
  if (_isLayingOutForAccessibility)
  {
    regularConstraints = [(HKElectrocardiogramCardView *)self regularConstraints];
    [v7 deactivateConstraints:regularConstraints];

    v9 = MEMORY[0x1E696ACD8];
    [(HKElectrocardiogramCardView *)self largeTextConstraints];
  }

  else
  {
    largeTextConstraints = [(HKElectrocardiogramCardView *)self largeTextConstraints];
    [v7 deactivateConstraints:largeTextConstraints];

    v9 = MEMORY[0x1E696ACD8];
    [(HKElectrocardiogramCardView *)self regularConstraints];
  }
  v11 = ;
  [v9 activateConstraints:v11];

  _averageHeartRateSymptomsFont = [objc_opt_class() _averageHeartRateSymptomsFont];
  [_averageHeartRateSymptomsFont lineHeight];
  v13 = v12;
  heartImageViewHeightConstraint = [(HKElectrocardiogramCardView *)self heartImageViewHeightConstraint];
  [heartImageViewHeightConstraint setConstant:v13];
}

- (BOOL)_isLayingOutForAccessibility
{
  _accessibilityContentSizeCategory = [objc_opt_class() _accessibilityContentSizeCategory];
  if (HKUIApplicationContentSizeCategoryIsLargerThanSizeCategory(_accessibilityContentSizeCategory))
  {
    traitCollection = [(HKElectrocardiogramCardView *)self traitCollection];
    v5 = [traitCollection horizontalSizeClass] == 1;
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
  _averageHeartRateSymptomsTextStyle = [objc_opt_class() _averageHeartRateSymptomsTextStyle];
  v4 = [v2 hk_preferredFontForTextStyle:_averageHeartRateSymptomsTextStyle];

  return v4;
}

+ (id)_averageHeartRateSymptomsBoldFont
{
  v2 = MEMORY[0x1E69DB878];
  _averageHeartRateSymptomsTextStyle = [objc_opt_class() _averageHeartRateSymptomsTextStyle];
  v4 = [v2 hk_preferredFontForTextStyle:_averageHeartRateSymptomsTextStyle symbolicTraits:2];

  return v4;
}

+ (id)_averageHeartRateSymptomsFontForElectrocardiogram:(id)electrocardiogram
{
  hk_isBPMTextBold = [electrocardiogram hk_isBPMTextBold];
  v4 = objc_opt_class();
  if (hk_isBPMTextBold)
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
  _averageHeartRateSymptomsFont = [objc_opt_class() _averageHeartRateSymptomsFont];
  [_averageHeartRateSymptomsFont _scaledValueForValue:24.0];
  v4 = v3;

  return v4;
}

+ (double)_averageHeartRateBaselineToSymptomBaseline
{
  _averageHeartRateSymptomsFont = [objc_opt_class() _averageHeartRateSymptomsFont];
  [_averageHeartRateSymptomsFont _scaledValueForValue:20.0];
  v4 = v3;

  return v4;
}

+ (double)_averageHeartRateBaselineToGraphTop
{
  _averageHeartRateSymptomsFont = [objc_opt_class() _averageHeartRateSymptomsFont];
  [_averageHeartRateSymptomsFont _scaledValueForValue:12.0];
  v4 = v3;

  return v4;
}

- (void)dateCacheDidUpdate:(id)update onNotification:(id)notification
{
  v9 = [(HKElectrocardiogramCardView *)self sample:update];
  endDate = [v9 endDate];
  dateCache = [(HKElectrocardiogramCardView *)self dateCache];
  v7 = HKLastUpdatedText(endDate, dateCache);
  headerView = [(HKElectrocardiogramCardView *)self headerView];
  [headerView setDetailText:v7];
}

- (id)_cardHeaderColor
{
  sample = [(HKElectrocardiogramCardView *)self sample];
  hk_cardHeaderColor = [sample hk_cardHeaderColor];
  hk_abnormalCardHeaderColor = [MEMORY[0x1E696C128] hk_abnormalCardHeaderColor];
  v6 = [hk_cardHeaderColor isEqual:hk_abnormalCardHeaderColor];

  if (v6)
  {
    hk_abnormalCardHeaderColor2 = [MEMORY[0x1E696C128] hk_abnormalCardHeaderColor];
LABEL_5:
    hk_cardHeaderColor2 = hk_abnormalCardHeaderColor2;
    goto LABEL_7;
  }

  if ([(HKElectrocardiogramCardView *)self isOnboarding])
  {
    hk_abnormalCardHeaderColor2 = [MEMORY[0x1E69DC888] secondarySystemFillColor];
    goto LABEL_5;
  }

  sample2 = [(HKElectrocardiogramCardView *)self sample];
  hk_cardHeaderColor2 = [sample2 hk_cardHeaderColor];

LABEL_7:

  return hk_cardHeaderColor2;
}

- (id)_chevronColor
{
  sample = [(HKElectrocardiogramCardView *)self sample];
  hk_cardHeaderColor = [sample hk_cardHeaderColor];
  hk_abnormalCardHeaderColor = [MEMORY[0x1E696C128] hk_abnormalCardHeaderColor];
  v5 = [hk_cardHeaderColor isEqual:hk_abnormalCardHeaderColor];

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
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }

  else
  {
    sample = [(HKElectrocardiogramCardView *)self sample];
    hk_cardBackgroundColor = [sample hk_cardBackgroundColor];
    v6 = hk_cardBackgroundColor;
    if (hk_cardBackgroundColor)
    {
      hk_defaultCardBackgroundColor = hk_cardBackgroundColor;
    }

    else
    {
      hk_defaultCardBackgroundColor = [MEMORY[0x1E696C128] hk_defaultCardBackgroundColor];
    }

    secondarySystemBackgroundColor = hk_defaultCardBackgroundColor;
  }

  return secondarySystemBackgroundColor;
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