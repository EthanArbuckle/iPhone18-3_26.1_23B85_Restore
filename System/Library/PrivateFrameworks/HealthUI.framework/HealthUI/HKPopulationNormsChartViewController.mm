@interface HKPopulationNormsChartViewController
- (HKPopulationNormsChartViewController)initWithDisplayType:(id)type healthStore:(id)store shouldEmbedInScrollView:(BOOL)view;
- (id)_viewModelForDisplayType:(id)type healthStore:(id)store;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)_deselectClassificationCellAtIndexPath:(id)path;
- (void)_refreshViewModelIfNecessary;
- (void)_selectClassificationCellAtIndexPath:(id)path;
- (void)_setupFonts;
- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path;
- (void)loadView;
- (void)segmentedControlDidChange:(id)change;
- (void)traitCollectionDidChange:(id)change;
- (void)updatePopulationNormsGraphHeightWithTraitCollection:(id)collection;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HKPopulationNormsChartViewController

- (HKPopulationNormsChartViewController)initWithDisplayType:(id)type healthStore:(id)store shouldEmbedInScrollView:(BOOL)view
{
  typeCopy = type;
  storeCopy = store;
  v20.receiver = self;
  v20.super_class = HKPopulationNormsChartViewController;
  v11 = [(HKPopulationNormsChartViewController *)&v20 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    v13 = [(HKPopulationNormsChartViewController *)v11 _viewModelForDisplayType:typeCopy healthStore:storeCopy];
    viewModel = v12->_viewModel;
    v12->_viewModel = v13;

    v12->_shouldEmbedInScrollView = view;
    v15 = v12->_viewModel;
    if (v15)
    {
      viewTitle = [(HKPopulationNormsViewModelDataSource *)v15 viewTitle];
      [(HKPopulationNormsChartViewController *)v12 setTitle:viewTitle];

      hk_UIAutomationIdentifier = [(HKPopulationNormsViewModelDataSource *)v12->_viewModel hk_UIAutomationIdentifier];
      v18 = [@"UIA.Health" stringByAppendingFormat:@".PopulationNorms.%@", hk_UIAutomationIdentifier];
      [(HKPopulationNormsChartViewController *)v12 setBaseIdentifier:v18];
    }

    else
    {
      hk_UIAutomationIdentifier = [MEMORY[0x1E696AAA8] currentHandler];
      [hk_UIAutomationIdentifier handleFailureInMethod:a2 object:v12 file:@"HKPopulationNormsChartViewController.m" lineNumber:67 description:@"Initialized population norms chart with an unsupported display type."];
    }
  }

  return v12;
}

- (void)loadView
{
  v115[9] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(HKPopulationNormsChartViewController *)self setView:v3];

  hk_chartBackgroundColor = [MEMORY[0x1E69DC888] hk_chartBackgroundColor];
  view = [(HKPopulationNormsChartViewController *)self view];
  [view setBackgroundColor:hk_chartBackgroundColor];

  if (self->_shouldEmbedInScrollView)
  {
    v6 = 16.0;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
  contentView = self->_contentView;
  self->_contentView = v7;

  [(UIView *)self->_contentView setHidden:1];
  [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_contentView setAccessibilityIdentifier:self->_baseIdentifier];
  v9 = objc_alloc(MEMORY[0x1E69DCF38]);
  localizedBiologicalSexTitles = [(HKPopulationNormsViewModelDataSource *)self->_viewModel localizedBiologicalSexTitles];
  v11 = [v9 initWithItems:localizedBiologicalSexTitles];
  biologicalSexSegmentedControl = self->_biologicalSexSegmentedControl;
  self->_biologicalSexSegmentedControl = v11;

  [(UISegmentedControl *)self->_biologicalSexSegmentedControl addTarget:self action:sel_segmentedControlDidChange_ forControlEvents:4096];
  v13 = [(NSString *)self->_baseIdentifier stringByAppendingString:@".BiologicalSex"];
  [(UISegmentedControl *)self->_biologicalSexSegmentedControl setAccessibilityIdentifier:v13];

  [(UIView *)self->_contentView addSubview:self->_biologicalSexSegmentedControl];
  [(UISegmentedControl *)self->_biologicalSexSegmentedControl hk_constrainToSuperviewAlongEdges:&unk_1F4381B10 constant:12.0];
  [(UISegmentedControl *)self->_biologicalSexSegmentedControl hk_constrainToSuperviewAlongEdges:&unk_1F4381B28 constant:v6];
  [(HKPopulationNormsViewModelDataSource *)self->_viewModel maximumSampleValueQuantity];
  v15 = v14;
  [(HKPopulationNormsViewModelDataSource *)self->_viewModel minimumSampleValueQuantity];
  v17 = v16;
  v18 = [HKPopulationNormsGraphView alloc];
  quantityUnitTitle = [(HKPopulationNormsViewModelDataSource *)self->_viewModel quantityUnitTitle];
  ageBucketsTitle = [(HKPopulationNormsViewModelDataSource *)self->_viewModel ageBucketsTitle];
  seriesHighlightedSegmentColor = [(HKPopulationNormsViewModelDataSource *)self->_viewModel seriesHighlightedSegmentColor];
  v22 = [(HKPopulationNormsGraphView *)v18 initWithMaxYValue:quantityUnitTitle minYValue:ageBucketsTitle YSeriesTitle:seriesHighlightedSegmentColor XSeriesTitle:v15 highlightedSegmentColor:v17];
  populationNormsGraphView = self->_populationNormsGraphView;
  self->_populationNormsGraphView = v22;

  [(UIView *)self->_contentView addSubview:self->_populationNormsGraphView];
  [(UIView *)self->_populationNormsGraphView hk_constrainToView:self->_biologicalSexSegmentedControl fromEdge:3 toEdge:4 constant:8.0];
  [(UIView *)self->_populationNormsGraphView hk_constrainToSuperviewAlongEdges:&unk_1F4381B40 constant:v6];
  traitCollection = [(HKPopulationNormsChartViewController *)self traitCollection];
  [(HKPopulationNormsChartViewController *)self updatePopulationNormsGraphHeightWithTraitCollection:traitCollection];

  v25 = [(NSString *)self->_baseIdentifier stringByAppendingString:@".Chart"];
  [(HKPopulationNormsGraphView *)self->_populationNormsGraphView setAccessibilityIdentifier:v25];

  v26 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  classificationLevelsTitleLabel = self->_classificationLevelsTitleLabel;
  self->_classificationLevelsTitleLabel = v26;

  [(UILabel *)self->_classificationLevelsTitleLabel setNumberOfLines:0];
  levelsTitle = [(HKPopulationNormsViewModelDataSource *)self->_viewModel levelsTitle];
  [(UILabel *)self->_classificationLevelsTitleLabel setText:levelsTitle];

  [(UIView *)self->_contentView addSubview:self->_classificationLevelsTitleLabel];
  [(UILabel *)self->_classificationLevelsTitleLabel hk_constrainToView:self->_populationNormsGraphView fromEdge:3 toEdge:4 constant:11.0];
  [(UILabel *)self->_classificationLevelsTitleLabel hk_constrainToSuperviewAlongEdges:&unk_1F4381B58 constant:v6];
  v29 = objc_alloc_init(HKPopulationNormsClassificationCollectionViewLayout);
  v30 = [HKPopulationNormsClassificationCollectionView alloc];
  v31 = *MEMORY[0x1E695F058];
  v32 = *(MEMORY[0x1E695F058] + 8);
  v33 = *(MEMORY[0x1E695F058] + 16);
  v34 = *(MEMORY[0x1E695F058] + 24);
  v113 = v29;
  v35 = [(HKPopulationNormsClassificationCollectionView *)v30 initWithFrame:v29 collectionViewLayout:*MEMORY[0x1E695F058], v32, v33, v34];
  classificationCollectionView = self->_classificationCollectionView;
  self->_classificationCollectionView = v35;

  [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"HKPopulationNormsClassificationCollectionViewCell"];
  [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView setShowsHorizontalScrollIndicator:0];
  [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView setDataSource:self];
  [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView setDelegate:self];
  v37 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v31, v32, v33, v34}];
  [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView setBackgroundView:v37];

  view2 = [(HKPopulationNormsChartViewController *)self view];
  backgroundColor = [view2 backgroundColor];
  backgroundView = [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView backgroundView];
  [backgroundView setBackgroundColor:backgroundColor];

  [(UIView *)self->_contentView addSubview:self->_classificationCollectionView];
  [(UIView *)self->_classificationCollectionView hk_constrainToView:self->_classificationLevelsTitleLabel fromEdge:3 toEdge:4 constant:11.0];
  [(UIView *)self->_classificationCollectionView hk_constrainToSuperviewAlongEdges:&unk_1F4381B70 constant:0.0];
  v41 = [(NSString *)self->_baseIdentifier stringByAppendingString:@".Classification"];
  [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView setAccessibilityIdentifier:v41];

  v42 = objc_alloc_init(HKPopulationNormsDescriptionView);
  classificationDescriptionView = self->_classificationDescriptionView;
  self->_classificationDescriptionView = v42;

  [(HKPopulationNormsDescriptionView *)self->_classificationDescriptionView setUserInteractionEnabled:0];
  [(HKPopulationNormsDescriptionView *)self->_classificationDescriptionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_contentView addSubview:self->_classificationDescriptionView];
  [(UIView *)self->_classificationDescriptionView hk_constrainToView:self->_classificationCollectionView fromEdge:3 toEdge:4 constant:11.0];
  [(UIView *)self->_classificationDescriptionView hk_constrainToSuperviewAlongEdges:&unk_1F4381B88 constant:v6];
  v44 = [(NSString *)self->_baseIdentifier stringByAppendingString:@".Classification.Description"];
  [(HKPopulationNormsDescriptionView *)self->_classificationDescriptionView setAccessibilityIdentifier:v44];

  v45 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  attributionLabel = self->_attributionLabel;
  self->_attributionLabel = v45;

  [(UILabel *)self->_attributionLabel setNumberOfLines:0];
  footerText = [(HKPopulationNormsViewModelDataSource *)self->_viewModel footerText];
  [(UILabel *)self->_attributionLabel setText:footerText];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_attributionLabel setTextColor:secondaryLabelColor];

  [(UIView *)self->_contentView addSubview:self->_attributionLabel];
  [(UILabel *)self->_attributionLabel hk_constrainToView:self->_classificationDescriptionView fromEdge:3 toEdge:4 constant:6.0];
  [(UILabel *)self->_attributionLabel hk_constrainToSuperviewAlongEdges:&unk_1F4381BA0 constant:v6];
  [(UILabel *)self->_attributionLabel hk_constrainToSuperviewAlongEdges:&unk_1F4381BB8 constant:11.0];
  v49 = [(NSString *)self->_baseIdentifier stringByAppendingString:@".Attribution"];
  [(UILabel *)self->_attributionLabel setAccessibilityIdentifier:v49];

  [(HKPopulationNormsChartViewController *)self _setupFonts];
  if (self->_shouldEmbedInScrollView)
  {
    topAnchor5 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
    [topAnchor5 setTranslatesAutoresizingMaskIntoConstraints:0];
    view3 = [(HKPopulationNormsChartViewController *)self view];
    [view3 addSubview:topAnchor5];

    [topAnchor5 addSubview:self->_contentView];
    v99 = MEMORY[0x1E696ACD8];
    frameLayoutGuide = [topAnchor5 frameLayoutGuide];
    topAnchor = [frameLayoutGuide topAnchor];
    view4 = [(HKPopulationNormsChartViewController *)self view];
    topAnchor2 = [view4 topAnchor];
    v97 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v115[0] = v97;
    frameLayoutGuide2 = [topAnchor5 frameLayoutGuide];
    leadingAnchor = [frameLayoutGuide2 leadingAnchor];
    view5 = [(HKPopulationNormsChartViewController *)self view];
    [view5 leadingAnchor];
    v110 = leadingAnchor5 = leadingAnchor;
    view11 = [leadingAnchor constraintEqualToAnchor:?];
    v115[1] = view11;
    frameLayoutGuide3 = [topAnchor5 frameLayoutGuide];
    trailingAnchor = [frameLayoutGuide3 trailingAnchor];
    view6 = [(HKPopulationNormsChartViewController *)self view];
    trailingAnchor2 = [view6 trailingAnchor];
    v108 = trailingAnchor;
    safeAreaLayoutGuide2 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v115[2] = safeAreaLayoutGuide2;
    frameLayoutGuide4 = [topAnchor5 frameLayoutGuide];
    bottomAnchor = [frameLayoutGuide4 bottomAnchor];
    view7 = [(HKPopulationNormsChartViewController *)self view];
    bottomAnchor2 = [view7 bottomAnchor];
    v105 = bottomAnchor;
    v94 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v115[3] = v94;
    contentLayoutGuide = [topAnchor5 contentLayoutGuide];
    topAnchor3 = [contentLayoutGuide topAnchor];
    topAnchor4 = [(UIView *)self->_contentView topAnchor];
    v88 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v115[4] = v88;
    contentLayoutGuide2 = [topAnchor5 contentLayoutGuide];
    leadingAnchor2 = [contentLayoutGuide2 leadingAnchor];
    leadingAnchor3 = [(UIView *)self->_contentView leadingAnchor];
    v83 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
    v115[5] = v83;
    contentLayoutGuide3 = [topAnchor5 contentLayoutGuide];
    trailingAnchor3 = [contentLayoutGuide3 trailingAnchor];
    trailingAnchor4 = [(UIView *)self->_contentView trailingAnchor];
    v79 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v115[6] = v79;
    contentLayoutGuide4 = [topAnchor5 contentLayoutGuide];
    bottomAnchor3 = [contentLayoutGuide4 bottomAnchor];
    bottomAnchor4 = [(UIView *)self->_contentView bottomAnchor];
    v58 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v115[7] = v58;
    frameLayoutGuide5 = [topAnchor5 frameLayoutGuide];
    widthAnchor = [frameLayoutGuide5 widthAnchor];
    widthAnchor2 = [(UIView *)self->_contentView widthAnchor];
    v62 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v115[8] = v62;
    v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:9];
    [v99 activateConstraints:v63];

    view9 = frameLayoutGuide;
    bottomAnchor5 = view6;

    view12 = trailingAnchor2;
    safeAreaLayoutGuide = frameLayoutGuide2;

    v68 = frameLayoutGuide3;
    v69 = view4;

    view10 = v97;
    leadingAnchor4 = topAnchor2;

    topAnchor6 = topAnchor;
  }

  else
  {
    view8 = [(HKPopulationNormsChartViewController *)self view];
    [view8 addSubview:self->_contentView];

    v104 = MEMORY[0x1E696ACD8];
    topAnchor5 = [(UIView *)self->_contentView topAnchor];
    view9 = [(HKPopulationNormsChartViewController *)self view];
    topAnchor6 = [view9 topAnchor];
    v69 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v114[0] = v69;
    leadingAnchor4 = [(UIView *)self->_contentView leadingAnchor];
    view10 = [(HKPopulationNormsChartViewController *)self view];
    safeAreaLayoutGuide = [view10 safeAreaLayoutGuide];
    leadingAnchor5 = [safeAreaLayoutGuide leadingAnchor];
    view5 = [leadingAnchor4 constraintEqualToAnchor:?];
    v114[1] = view5;
    trailingAnchor5 = [(UIView *)self->_contentView trailingAnchor];
    view11 = [(HKPopulationNormsChartViewController *)self view];
    trailingAnchor6 = [view11 trailingAnchor];
    v110 = trailingAnchor5;
    v76 = trailingAnchor5;
    v68 = trailingAnchor6;
    v108 = [v76 constraintEqualToAnchor:trailingAnchor6];
    v114[2] = v108;
    bottomAnchor5 = [(UIView *)self->_contentView bottomAnchor];
    view12 = [(HKPopulationNormsChartViewController *)self view];
    safeAreaLayoutGuide2 = [view12 safeAreaLayoutGuide];
    frameLayoutGuide4 = [safeAreaLayoutGuide2 bottomAnchor];
    v105 = [bottomAnchor5 constraintEqualToAnchor:?];
    v114[3] = v105;
    v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:4];
    v78 = v104;
    view7 = v77;
    [v78 activateConstraints:?];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = HKPopulationNormsChartViewController;
  [(HKPopulationNormsChartViewController *)&v4 viewWillAppear:appear];
  [(HKPopulationNormsChartViewController *)self _refreshViewModelIfNecessary];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = HKPopulationNormsChartViewController;
  [(HKPopulationNormsChartViewController *)&v4 viewDidDisappear:disappear];
  [(HKPopulationNormsViewModelDataSource *)self->_viewModel clearUserCharacteristicCache];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v13.receiver = self;
  v13.super_class = HKPopulationNormsChartViewController;
  [(HKPopulationNormsChartViewController *)&v13 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(HKPopulationNormsChartViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(HKPopulationNormsChartViewController *)self _setupFonts];
    }

    traitCollection2 = [(HKPopulationNormsChartViewController *)self traitCollection];

    if (traitCollection2 != changeCopy)
    {
      traitCollection3 = [(HKPopulationNormsChartViewController *)self traitCollection];
      [(HKPopulationNormsChartViewController *)self updatePopulationNormsGraphHeightWithTraitCollection:traitCollection3];
    }
  }

  traitCollection4 = [(HKPopulationNormsChartViewController *)self traitCollection];
  v12 = [traitCollection4 hasDifferentColorAppearanceComparedToTraitCollection:changeCopy];

  if (v12)
  {
    [(HKPopulationNormsChartViewController *)self _refreshViewModelIfNecessary];
  }
}

- (void)updatePopulationNormsGraphHeightWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  previousPopulationNormsGraphHeightConstraint = self->_previousPopulationNormsGraphHeightConstraint;
  if (previousPopulationNormsGraphHeightConstraint)
  {
    [(NSLayoutConstraint *)previousPopulationNormsGraphHeightConstraint setActive:0];
  }

  horizontalSizeClass = [collectionCopy horizontalSizeClass];
  if (horizontalSizeClass >= 2)
  {
    if (horizontalSizeClass != 2)
    {
      goto LABEL_8;
    }

    view = [(HKPopulationNormsChartViewController *)self view];
    [view frame];
    v10 = v9 * 0.5;

    heightAnchor = [(HKPopulationNormsGraphView *)self->_populationNormsGraphView heightAnchor];
    v7 = [heightAnchor constraintEqualToConstant:{fmax(v10, 400.0)}];
  }

  else
  {
    heightAnchor = [(HKPopulationNormsGraphView *)self->_populationNormsGraphView heightAnchor];
    v7 = [heightAnchor constraintLessThanOrEqualToConstant:400.0];
  }

  v11 = self->_previousPopulationNormsGraphHeightConstraint;
  self->_previousPopulationNormsGraphHeightConstraint = v7;

  [(NSLayoutConstraint *)self->_previousPopulationNormsGraphHeightConstraint setActive:1];
LABEL_8:
}

- (void)_refreshViewModelIfNecessary
{
  indexPathsForSelectedItems = [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView indexPathsForSelectedItems];
  v4 = [indexPathsForSelectedItems count];

  if (v4)
  {
    indexPathsForSelectedItems2 = [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView indexPathsForSelectedItems];
    firstObject = [indexPathsForSelectedItems2 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  viewModel = self->_viewModel;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__HKPopulationNormsChartViewController__refreshViewModelIfNecessary__block_invoke;
  v9[3] = &unk_1E81B5AD0;
  v10 = firstObject;
  selfCopy = self;
  v8 = firstObject;
  [(HKPopulationNormsViewModelDataSource *)viewModel prepareUserCharacteristicCacheWithHandler:v9];
}

void __68__HKPopulationNormsChartViewController__refreshViewModelIfNecessary__block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) _deselectClassificationCellAtIndexPath:?];
  }

  [*(*(a1 + 40) + 1024) setSelectedSegmentIndex:{objc_msgSend(*(*(a1 + 40) + 1008), "currentBiologicalSexSegmentIndex")}];
  v6 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(*(*(a1 + 40) + 1008) inSection:{"currentClassificationIndex"), 0}];
  [*(a1 + 40) collectionView:*(*(a1 + 40) + 1048) didSelectItemAtIndexPath:v6];
  v2 = *(a1 + 40);
  v3 = *(v2 + 1032);
  v4 = [*(v2 + 1008) userAgeBucketIndex];
  v5 = [*(*(a1 + 40) + 1008) userLatestSampleValue];
  [v3 updateWithUserAgeBucketIndex:v4 userLatestSampleValue:v5];

  [*(*(a1 + 40) + 1000) setHidden:0];
}

- (void)_setupFonts
{
  v3 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] symbolicTraits:32770 maximumContentSizeCategory:*MEMORY[0x1E69DDC40]];
  [(UILabel *)self->_classificationLevelsTitleLabel setFont:v3];

  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [(UILabel *)self->_attributionLabel setFont:v4];
}

- (id)_viewModelForDisplayType:(id)type healthStore:(id)store
{
  storeCopy = store;
  objectType = [type objectType];
  identifier = [objectType identifier];
  v8 = *MEMORY[0x1E696BDF0];

  if (identifier == v8)
  {
    v9 = [(HKPopulationNormsAbstractViewModel *)[HKCardioFitnessPopulationNormsViewModel alloc] initWithHealthStore:storeCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)segmentedControlDidChange:(id)change
{
  -[HKPopulationNormsViewModelDataSource setBiologicalSexSegmentIndex:](self->_viewModel, "setBiologicalSexSegmentIndex:", [change selectedSegmentIndex]);
  populationNormsGraphView = self->_populationNormsGraphView;
  currentDataForBiologicalSex = [(HKPopulationNormsViewModelDataSource *)self->_viewModel currentDataForBiologicalSex];
  [(HKPopulationNormsGraphView *)populationNormsGraphView updateWithFlattenedLevelsByAgeBucket:currentDataForBiologicalSex currentClassificationIndex:[(HKPopulationNormsViewModelDataSource *)self->_viewModel currentClassificationIndex]];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"HKPopulationNormsClassificationCollectionViewCell" forIndexPath:pathCopy];
  seriesHighlightedColor = [(HKPopulationNormsViewModelDataSource *)self->_viewModel seriesHighlightedColor];
  [v7 setHighlightColor:seriesHighlightedColor];

  if ([(HKPopulationNormsViewModelDataSource *)self->_viewModel isCurrentClassificationAvailable])
  {
    currentClassificationIndex = [(HKPopulationNormsViewModelDataSource *)self->_viewModel currentClassificationIndex];
    v10 = currentClassificationIndex == [pathCopy row];
  }

  else
  {
    v10 = 0;
  }

  v11 = -[HKPopulationNormsViewModelDataSource localizedClassificationTitleForIndex:](self->_viewModel, "localizedClassificationTitleForIndex:", [pathCopy row]);
  v12 = -[HKPopulationNormsViewModelDataSource classificationIdentifierForIndex:](self->_viewModel, "classificationIdentifierForIndex:", [pathCopy row]);
  [v7 setTitle:v11 classificationIdentifier:v12 highlighted:v10];

  return v7;
}

- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path
{
  v4 = [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView cellForItemAtIndexPath:path];
  if (v4)
  {
    v5 = v4;
    [v4 setSoftHighlightState:1];
    v4 = v5;
  }
}

- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path
{
  v4 = [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView cellForItemAtIndexPath:path];
  if (v4)
  {
    v5 = v4;
    [v4 setSoftHighlightState:0];
    v4 = v5;
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v5 = MEMORY[0x1E696AC88];
  viewModel = self->_viewModel;
  pathCopy = path;
  v8 = [v5 indexPathForRow:-[HKPopulationNormsViewModelDataSource currentClassificationIndex](viewModel inSection:{"currentClassificationIndex"), 0}];
  [(HKPopulationNormsChartViewController *)self _deselectClassificationCellAtIndexPath:v8];
  -[HKPopulationNormsViewModelDataSource setClassificationIndex:](self->_viewModel, "setClassificationIndex:", [pathCopy row]);
  [(HKPopulationNormsChartViewController *)self _selectClassificationCellAtIndexPath:pathCopy];
}

- (void)_deselectClassificationCellAtIndexPath:(id)path
{
  pathCopy = path;
  v4 = [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView cellForItemAtIndexPath:?];
  if (v4)
  {
    v5 = -[HKPopulationNormsViewModelDataSource localizedClassificationTitleForIndex:](self->_viewModel, "localizedClassificationTitleForIndex:", [pathCopy item]);
    v6 = -[HKPopulationNormsViewModelDataSource classificationIdentifierForIndex:](self->_viewModel, "classificationIdentifierForIndex:", [pathCopy item]);
    [v4 setTitle:v5 classificationIdentifier:v6 highlighted:0];

    [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView deselectItemAtIndexPath:pathCopy animated:1];
  }
}

- (void)_selectClassificationCellAtIndexPath:(id)path
{
  pathCopy = path;
  populationNormsGraphView = self->_populationNormsGraphView;
  currentDataForBiologicalSex = [(HKPopulationNormsViewModelDataSource *)self->_viewModel currentDataForBiologicalSex];
  [(HKPopulationNormsGraphView *)populationNormsGraphView updateWithFlattenedLevelsByAgeBucket:currentDataForBiologicalSex currentClassificationIndex:[(HKPopulationNormsViewModelDataSource *)self->_viewModel currentClassificationIndex]];

  v6 = [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView cellForItemAtIndexPath:pathCopy];
  if (v6)
  {
    currentLocalizedClassificationTitle = [(HKPopulationNormsViewModelDataSource *)self->_viewModel currentLocalizedClassificationTitle];
    v8 = -[HKPopulationNormsViewModelDataSource classificationIdentifierForIndex:](self->_viewModel, "classificationIdentifierForIndex:", [pathCopy item]);
    [v6 setTitle:currentLocalizedClassificationTitle classificationIdentifier:v8 highlighted:1];
  }

  [(HKPopulationNormsClassificationCollectionView *)self->_classificationCollectionView scrollToItemAtIndexPath:pathCopy atScrollPosition:16 animated:[(UIView *)self->_contentView isHidden]^ 1];
  classificationDescriptionView = self->_classificationDescriptionView;
  shouldShowClassificationTitle = [(HKPopulationNormsViewModelDataSource *)self->_viewModel shouldShowClassificationTitle];
  if (shouldShowClassificationTitle)
  {
    currentLocalizedClassificationName = [(HKPopulationNormsViewModelDataSource *)self->_viewModel currentLocalizedClassificationName];
  }

  else
  {
    currentLocalizedClassificationName = 0;
  }

  currentLocalizedClassificationDescription = [(HKPopulationNormsViewModelDataSource *)self->_viewModel currentLocalizedClassificationDescription];
  [(HKPopulationNormsDescriptionView *)classificationDescriptionView updateWithTitle:currentLocalizedClassificationName description:currentLocalizedClassificationDescription];

  if (shouldShowClassificationTitle)
  {
  }
}

@end