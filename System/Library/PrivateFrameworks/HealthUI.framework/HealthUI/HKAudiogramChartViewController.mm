@interface HKAudiogramChartViewController
+ (BOOL)testChartPointCreation:(id)creation leftEarSeries:(BOOL)series expectedChartPoints:(id)points failureMessage:(id *)message;
+ (id)_baseIdentifierForClassification:(unint64_t)classification;
+ (id)_itemForHearingLossInfographicWithHearingLossClassification:(unint64_t)classification;
+ (id)_itemForTitle:(id)title description:(id)description baseIdentifier:(id)identifier;
+ (id)_localizedDescriptionForClassification:(unint64_t)classification;
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1;
+ (id)hearingLossInfographicViewController;
- (BOOL)_hasAudiogramData;
- (BOOL)shouldScrollToSample:(id)sample;
- (HKAudiogramChartViewController)initWithApplicationItems:(id)items factorDisplayTypes:(id)types chartHeight:(double)height;
- (HKAudiogramChartViewController)initWithUnitController:(id)controller sampleTypeUpdateController:(id)updateController minimumAudiogramHeight:(double)height;
- (id)_attributedLabelTextOverrideWithHearingLevelClassification:(id)classification valueAndUnit:(id)unit metricColors:(id)colors selectedMetricColors:(id)metricColors;
- (id)_attributedLabelTextWithHearingLevelClassification:(id)classification valueAndUnit:(id)unit metricColors:(id)colors selectedMetricColors:(id)metricColors isSelected:(BOOL)selected;
- (id)_audiogramDisplayType;
- (id)_audiogramPureToneAveragePointsSeriesWithSensitivityPoints:(id)points seriesEar:(int64_t)ear;
- (id)_audiogramSeriesWithSensitivityPoints:(id)points seriesEar:(int64_t)ear;
- (id)_averageLevelOverlaySeriesWithAudiogram:(id)audiogram selectedEar:(int64_t)ear;
- (id)_averageSectionFromAudiogram:(id)audiogram;
- (id)_buildContextItemForEar:(int64_t)ear metrics:(id)metrics;
- (id)_currentAudiogramSample;
- (id)_findNavigationController;
- (id)_healthStore;
- (id)_indexPathForCurrentSelections;
- (id)_sectionsFromAudiogram:(id)audiogram;
- (id)_setupSeriesForAudiogramSample:(id)sample;
- (id)_unitController;
- (id)_updateController;
- (id)graphSeriesForIndex:(int64_t)index;
- (id)graphViewControllerForIndex:(int64_t)index;
- (int64_t)numberOfItemsInCollection;
- (void)_addContextView;
- (void)_addControllerAsChildController:(id)controller;
- (void)_addShowMoreDataButton;
- (void)_pinView:(id)view toParentGuide:(id)guide;
- (void)_refreshDynamicInsets;
- (void)_setupFixedFrequencyAxisForGraphView:(id)view;
- (void)_setupInitialUI;
- (void)_showMoreData:(id)data;
- (void)_updateAudiogramSamples:(id)samples error:(id)error;
- (void)_updateHeaderState;
- (void)_updateOverlayPillsAndHeaderWithSample:(id)sample;
- (void)contextView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)didTapOnInfoButtonFromCurrentValueView:(id)view;
- (void)graphCollectionView:(id)view didChangeVisibleIndex:(int64_t)index;
- (void)queryForAudiograms;
- (void)setAudiograms:(id)audiograms;
- (void)updateAnnotationDataSource:(id)source pointContexts:(id)contexts;
- (void)updateController:(id)controller didReceiveUpdateForType:(id)type samplesAdded:(id)added objectsRemoved:(id)removed recoveringFromError:(BOOL)error;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HKAudiogramChartViewController

+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1
{
  typesCopy = types;
  itemsCopy = items;
  v15 = [[self alloc] initWithApplicationItems:itemsCopy factorDisplayTypes:typesCopy chartHeight:350.0];

  [v15 queryForAudiograms];

  return v15;
}

- (HKAudiogramChartViewController)initWithApplicationItems:(id)items factorDisplayTypes:(id)types chartHeight:(double)height
{
  itemsCopy = items;
  typesCopy = types;
  v25.receiver = self;
  v25.super_class = HKAudiogramChartViewController;
  v11 = [(HKAudiogramChartViewController *)&v25 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_applicationItems, items);
    v12->_chartHeight = height;
    audiograms = v12->_audiograms;
    v12->_audiograms = 0;

    v12->_currentAudiogramIndex = -1;
    currentValueView = v12->_currentValueView;
    v12->_currentValueView = 0;

    currentValueViewDataSource = v12->_currentValueViewDataSource;
    v12->_currentValueViewDataSource = 0;

    annotationViewDataSource = v12->_annotationViewDataSource;
    v12->_annotationViewDataSource = 0;

    v12->_selectedOverlayEar = 0;
    sections = v12->_sections;
    v12->_sections = 0;

    v12->_audiogramsFetched = 0;
    navigationItem = [(HKAudiogramChartViewController *)v12 navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];

    v19 = objc_alloc(MEMORY[0x1E696C178]);
    v20 = *MEMORY[0x1E696B8A0];
    healthStore = [itemsCopy healthStore];
    v22 = [v19 initWithFeatureIdentifier:v20 healthStore:healthStore];
    hearingTestFeatureStatus = v12->_hearingTestFeatureStatus;
    v12->_hearingTestFeatureStatus = v22;

    objc_storeStrong(&v12->_factorDisplayTypes, types);
  }

  return v12;
}

- (HKAudiogramChartViewController)initWithUnitController:(id)controller sampleTypeUpdateController:(id)updateController minimumAudiogramHeight:(double)height
{
  updateControllerCopy = updateController;
  controllerCopy = controller;
  v10 = objc_alloc_init(HKOverlayRoomApplicationItems);
  [(HKOverlayRoomApplicationItems *)v10 setUnitController:controllerCopy];

  [(HKOverlayRoomApplicationItems *)v10 setSampleTypeUpdateController:updateControllerCopy];
  v11 = +[HKDisplayTypeController sharedInstance];
  [(HKOverlayRoomApplicationItems *)v10 setDisplayTypeController:v11];

  v12 = objc_alloc_init(MEMORY[0x1E696C1C0]);
  [(HKOverlayRoomApplicationItems *)v10 setHealthStore:v12];

  v13 = [(HKAudiogramChartViewController *)self initWithApplicationItems:v10 factorDisplayTypes:0 chartHeight:height];
  return v13;
}

- (void)dealloc
{
  _updateController = [(HKAudiogramChartViewController *)self _updateController];
  audiogramSampleType = [MEMORY[0x1E696C3D0] audiogramSampleType];
  [_updateController removeObserver:self forType:audiogramSampleType];

  v5.receiver = self;
  v5.super_class = HKAudiogramChartViewController;
  [(HKAudiogramChartViewController *)&v5 dealloc];
}

- (void)setAudiograms:(id)audiograms
{
  v4 = [audiograms mutableCopy];
  [(HKAudiogramChartViewController *)self _setAudiograms:v4];
}

- (void)_refreshDynamicInsets
{
  traitCollection = [(HKAudiogramChartViewController *)self traitCollection];
  [traitCollection valueForNSIntegerTrait:objc_opt_class()];

  v4 = HKCollectionViewLayoutDefaultLayoutMarginsForWidthDesignation();
  v6 = v5;
  v8 = v7;
  mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
  isiPad = [mEMORY[0x1E696C608] isiPad];

  if (isiPad)
  {
    +[HKScalarGraphViewController hardLeftMarginWidth];
    v12 = v11;
    view = [(HKAudiogramChartViewController *)self view];
    hk_isLeftToRight = [view hk_isLeftToRight];

    leadingMarginConstraint = [(HKAudiogramChartViewController *)self leadingMarginConstraint];
    if (hk_isLeftToRight)
    {
      [leadingMarginConstraint setConstant:v6 - v12];

      v16 = -v8;
    }

    else
    {
      [leadingMarginConstraint setConstant:v6];

      v16 = v12 - v8;
    }
  }

  else
  {
    view2 = [(HKAudiogramChartViewController *)self view];
    [view2 layoutMargins];
    v19 = v18;
    v21 = v20;

    if (v19 + -16.0 >= 0.0)
    {
      v22 = v19 + -16.0;
    }

    else
    {
      v22 = 0.0;
    }

    leadingMarginConstraint2 = [(HKAudiogramChartViewController *)self leadingMarginConstraint];
    [leadingMarginConstraint2 setConstant:v22];

    v16 = fmin(-(v21 + -16.0), 0.0);
  }

  trailingMarginConstraint = [(HKAudiogramChartViewController *)self trailingMarginConstraint];
  [trailingMarginConstraint setConstant:v16];

  leadingMarginConstraint3 = [(HKAudiogramChartViewController *)self leadingMarginConstraint];
  [leadingMarginConstraint3 constant];
  v26 = v6 - v25;
  trailingMarginConstraint2 = [(HKAudiogramChartViewController *)self trailingMarginConstraint];
  [trailingMarginConstraint2 constant];
  v29 = v8 + v28;
  contextStackView = [(HKAudiogramChartViewController *)self contextStackView];
  [contextStackView setDirectionalLayoutMargins:{0.0, v26, 0.0, v29}];
}

- (void)viewWillLayoutSubviews
{
  [(HKAudiogramChartViewController *)self _refreshDynamicInsets];
  v3.receiver = self;
  v3.super_class = HKAudiogramChartViewController;
  [(HKAudiogramChartViewController *)&v3 viewWillLayoutSubviews];
}

- (void)viewDidLoad
{
  v74 = *MEMORY[0x1E69E9840];
  v72.receiver = self;
  v72.super_class = HKAudiogramChartViewController;
  [(HKAudiogramChartViewController *)&v72 viewDidLoad];
  view = [(HKAudiogramChartViewController *)self view];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  v5 = objc_alloc(MEMORY[0x1E69DCF90]);
  v6 = [v5 initWithArrangedSubviews:MEMORY[0x1E695E0F0]];
  stackView = self->_stackView;
  self->_stackView = v6;

  [(UIStackView *)self->_stackView setAxis:1];
  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView setDistribution:0];
  v8 = [HKAudiogramCurrentValueViewDataSource alloc];
  applicationItems = [(HKAudiogramChartViewController *)self applicationItems];
  v10 = [(HKAudiogramCurrentValueViewDataSource *)v8 initWithApplicationItems:applicationItems];
  [(HKAudiogramChartViewController *)self setCurrentValueViewDataSource:v10];

  v11 = [[HKInteractiveChartAnnotationView alloc] initWithContext:0];
  [(HKAudiogramChartViewController *)self setCurrentValueView:v11];

  v12 = [MEMORY[0x1E696AEC0] hk_chartAccessibilityIdentifier:@"ValueView"];
  currentValueView = [(HKAudiogramChartViewController *)self currentValueView];
  [currentValueView setAccessibilityIdentifier:v12];

  currentValueView2 = [(HKAudiogramChartViewController *)self currentValueView];
  mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
  features = [mEMORY[0x1E696C608] features];
  [currentValueView2 setShowsInfoButton:{objc_msgSend(features, "yodel")}];

  currentValueView3 = [(HKAudiogramChartViewController *)self currentValueView];
  [currentValueView3 setDelegate:self];

  currentValueViewDataSource = [(HKAudiogramChartViewController *)self currentValueViewDataSource];
  currentValueView4 = [(HKAudiogramChartViewController *)self currentValueView];
  [currentValueView4 setDataSource:currentValueViewDataSource];

  stackView = [(HKAudiogramChartViewController *)self stackView];
  currentValueView5 = [(HKAudiogramChartViewController *)self currentValueView];
  [stackView addArrangedSubview:currentValueView5];

  currentValueView6 = [(HKAudiogramChartViewController *)self currentValueView];
  heightAnchor = [currentValueView6 heightAnchor];
  v24 = [heightAnchor constraintEqualToConstant:90.0];
  [v24 setActive:1];

  v25 = [HKScalarGraphCollectionViewController alloc];
  [(HKAudiogramChartViewController *)self chartHeight];
  v27 = v26;
  _unitController = [(HKAudiogramChartViewController *)self _unitController];
  v29 = [(HKScalarGraphCollectionViewController *)v25 initWithMinimumHeight:_unitController unitController:v27];
  [(HKAudiogramChartViewController *)self setScalarGraphCollectionController:v29];

  scalarGraphCollectionController = [(HKAudiogramChartViewController *)self scalarGraphCollectionController];
  view2 = [scalarGraphCollectionController view];
  heightAnchor2 = [view2 heightAnchor];
  [(HKAudiogramChartViewController *)self chartHeight];
  v33 = [heightAnchor2 constraintEqualToConstant:?];
  [v33 setActive:1];

  scalarGraphCollectionController2 = [(HKAudiogramChartViewController *)self scalarGraphCollectionController];
  [(HKAudiogramChartViewController *)self _addControllerAsChildController:scalarGraphCollectionController2];

  stackView2 = [(HKAudiogramChartViewController *)self stackView];
  scalarGraphCollectionController3 = [(HKAudiogramChartViewController *)self scalarGraphCollectionController];
  view3 = [scalarGraphCollectionController3 view];
  [stackView2 addArrangedSubview:view3];

  scalarGraphCollectionController4 = [(HKAudiogramChartViewController *)self scalarGraphCollectionController];
  [scalarGraphCollectionController4 setDelegate:self];

  [(HKAudiogramChartViewController *)self _addContextView];
  mEMORY[0x1E696C608]2 = [MEMORY[0x1E696C608] sharedBehavior];
  features2 = [mEMORY[0x1E696C608]2 features];
  LODWORD(view3) = [features2 yodel];

  if (view3)
  {
    [(HKAudiogramChartViewController *)self _addShowMoreDataButton];
  }

  view4 = [(HKAudiogramChartViewController *)self view];
  [view4 addSubview:self->_stackView];

  stackView3 = [(HKAudiogramChartViewController *)self stackView];
  heightAnchor3 = [stackView3 heightAnchor];
  [(HKAudiogramChartViewController *)self chartHeight];
  v45 = v44;
  currentValueView7 = [(HKAudiogramChartViewController *)self currentValueView];
  [currentValueView7 frame];
  v48 = [heightAnchor3 constraintGreaterThanOrEqualToConstant:v45 + v47];
  stackViewHeightConstraint = self->_stackViewHeightConstraint;
  self->_stackViewHeightConstraint = v48;

  [(NSLayoutConstraint *)self->_stackViewHeightConstraint setActive:1];
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  arrangedSubviews = [(UIStackView *)self->_stackView arrangedSubviews];
  v51 = [arrangedSubviews countByEnumeratingWithState:&v68 objects:v73 count:16];
  if (v51)
  {
    v53 = v51;
    v54 = *v69;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v69 != v54)
        {
          objc_enumerationMutation(arrangedSubviews);
        }

        v56 = *(*(&v68 + 1) + 8 * i);
        LODWORD(v52) = 1148846080;
        [v56 setContentCompressionResistancePriority:1 forAxis:v52];
        LODWORD(v57) = 1148846080;
        [v56 setContentHuggingPriority:1 forAxis:v57];
      }

      v53 = [arrangedSubviews countByEnumeratingWithState:&v68 objects:v73 count:16];
    }

    while (v53);
  }

  v58 = self->_stackView;
  view5 = [(HKAudiogramChartViewController *)self view];
  safeAreaLayoutGuide = [view5 safeAreaLayoutGuide];
  [(HKAudiogramChartViewController *)self _pinView:v58 toParentGuide:safeAreaLayoutGuide];

  v61 = [HKAudiogramAnnotationViewDataSource alloc];
  applicationItems2 = [(HKAudiogramChartViewController *)self applicationItems];
  v63 = [(HKAudiogramAnnotationViewDataSource *)v61 initWithApplicationItems:applicationItems2];
  [(HKAudiogramChartViewController *)self setAnnotationViewDataSource:v63];

  v64 = [HKLollipopController alloc];
  annotationViewDataSource = [(HKAudiogramChartViewController *)self annotationViewDataSource];
  stackView4 = [(HKAudiogramChartViewController *)self stackView];
  v67 = [(HKLollipopController *)v64 initWithAnnotationDataSource:annotationViewDataSource parentView:stackView4 delegate:self];
  [(HKAudiogramChartViewController *)self setLollipopController:v67];

  if (self->_audiogramsFetched)
  {
    [(HKAudiogramChartViewController *)self _setupInitialUI];
  }
}

- (void)_setupInitialUI
{
  [(HKScalarGraphCollectionViewController *)self->_scalarGraphCollectionController reload];
  [(HKAudiogramChartViewController *)self _updateOverlayPillsAndHeaderWithSample:0];
  if ([(HKAudiogramChartViewController *)self currentAudiogramIndex]== -1)
  {
    if ([(NSMutableArray *)self->_audiograms count])
    {
      self->_currentAudiogramIndex = [(NSMutableArray *)self->_audiograms count]- 1;
    }

    scalarGraphCollectionController = self->_scalarGraphCollectionController;

    [(HKScalarGraphCollectionViewController *)scalarGraphCollectionController resetToMostRecent];
  }

  else
  {
    v3 = self->_scalarGraphCollectionController;
    currentAudiogramIndex = [(HKAudiogramChartViewController *)self currentAudiogramIndex];

    [(HKScalarGraphCollectionViewController *)v3 resetToIndex:currentAudiogramIndex];
  }
}

- (void)_addContextView
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [[HKDisplayTypeSectionedContextView alloc] initWithStyle:2];
  contextView = self->_contextView;
  self->_contextView = v3;

  mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
  features = [mEMORY[0x1E696C608] features];
  -[HKDisplayTypeSectionedContextView setUseBottomInsets:](self->_contextView, "setUseBottomInsets:", [features yodel] ^ 1);

  [(HKDisplayTypeSectionedContextView *)self->_contextView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HKDisplayTypeSectionedContextView *)self->_contextView setDelegate:self];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(HKDisplayTypeSectionedContextView *)self->_contextView setBackgroundColor:systemBackgroundColor];

  v8 = objc_alloc(MEMORY[0x1E69DCF90]);
  v14[0] = self->_contextView;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v10 = [v8 initWithArrangedSubviews:v9];
  contextStackView = self->_contextStackView;
  self->_contextStackView = v10;

  [(UIStackView *)self->_contextStackView setAxis:1];
  [(UIStackView *)self->_contextStackView setDistribution:2];
  [(UIStackView *)self->_contextStackView setLayoutMarginsRelativeArrangement:1];
  [(UIStackView *)self->_contextStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView addArrangedSubview:self->_contextStackView];
  [(HKDisplayTypeSectionedContextView *)self->_contextView setSemanticContentAttribute:3];
  v12 = self->_contextView;
  v13 = [(HKAudiogramChartViewController *)self _sectionsFromAudiogram:0];
  [(HKDisplayTypeSectionedContextView *)v12 setDisplayTypeContextSections:v13];
}

- (void)_addShowMoreDataButton
{
  v4 = [MEMORY[0x1E69DC738] hk_chartShowMoreDataButtonWithTitleOverride:0 target:self action:sel__showMoreData_];
  stackView = [(HKAudiogramChartViewController *)self stackView];
  [stackView addArrangedSubview:v4];
}

- (void)_showMoreData:(id)data
{
  _findNavigationController = [(HKAudiogramChartViewController *)self _findNavigationController];
  if (_findNavigationController)
  {
    v12 = _findNavigationController;
    applicationItems = [(HKAudiogramChartViewController *)self applicationItems];
    timeScopeController = [applicationItems timeScopeController];
    [timeScopeController setSelectedTimeScope:2];

    v7 = [HKAudiogramLongitudinalOverlayRoomViewController alloc];
    applicationItems2 = [(HKAudiogramChartViewController *)self applicationItems];
    factorDisplayTypes = [(HKAudiogramChartViewController *)self factorDisplayTypes];
    v10 = [(HKAudiogramLongitudinalOverlayRoomViewController *)v7 initWithApplicationItems:applicationItems2 factorDisplayTypes:factorDisplayTypes];

    v11 = [[HKModalNavigationController alloc] initWithRootViewController:v10];
    [v12 hk_presentModalCardViewController:v11 fullScreen:1 animated:1 completion:0];

    _findNavigationController = v12;
  }
}

- (void)queryForAudiograms
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:*MEMORY[0x1E696BE30] ascending:1];
  v12[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

  v5 = objc_alloc(MEMORY[0x1E696C3C8]);
  audiogramSampleType = [MEMORY[0x1E696C3D0] audiogramSampleType];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__HKAudiogramChartViewController_queryForAudiograms__block_invoke;
  v11[3] = &unk_1E81B58D8;
  v11[4] = self;
  v7 = [v5 initWithSampleType:audiogramSampleType predicate:0 limit:0 sortDescriptors:v4 resultsHandler:v11];

  _updateController = [(HKAudiogramChartViewController *)self _updateController];
  audiogramSampleType2 = [MEMORY[0x1E696C3D0] audiogramSampleType];
  [_updateController addObserver:self forType:audiogramSampleType2];

  _healthStore = [(HKAudiogramChartViewController *)self _healthStore];
  [_healthStore executeQuery:v7];
}

- (void)_updateAudiogramSamples:(id)samples error:(id)error
{
  samplesCopy = samples;
  errorCopy = error;
  if (samplesCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__HKAudiogramChartViewController__updateAudiogramSamples_error___block_invoke;
    v9[3] = &unk_1E81B5AD0;
    v9[4] = self;
    v10 = samplesCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }

  else
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x1E696B950];
    if (os_log_type_enabled(*MEMORY[0x1E696B950], OS_LOG_TYPE_ERROR))
    {
      [(HKAudiogramChartViewController *)self _updateAudiogramSamples:errorCopy error:v8];
    }
  }
}

void __64__HKAudiogramChartViewController__updateAudiogramSamples_error___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 992) = 1;
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696C3D0] audiogramSampleType];
  [v2 updateController:0 didReceiveUpdateForType:v3 samplesAdded:*(a1 + 40) objectsRemoved:MEMORY[0x1E695E0F0] recoveringFromError:0];
}

- (id)_currentAudiogramSample
{
  currentAudiogramIndex = self->_currentAudiogramIndex;
  if ((currentAudiogramIndex & 0x8000000000000000) != 0 || currentAudiogramIndex >= [(NSMutableArray *)self->_audiograms count])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSMutableArray *)self->_audiograms objectAtIndex:self->_currentAudiogramIndex];
  }

  return v4;
}

- (BOOL)_hasAudiogramData
{
  audiograms = self->_audiograms;
  if (audiograms)
  {
    currentAudiogramIndex = self->_currentAudiogramIndex;
    LOBYTE(audiograms) = (currentAudiogramIndex & 0x8000000000000000) == 0 && currentAudiogramIndex < [(NSMutableArray *)audiograms count];
  }

  return audiograms;
}

- (void)updateController:(id)controller didReceiveUpdateForType:(id)type samplesAdded:(id)added objectsRemoved:(id)removed recoveringFromError:(BOOL)error
{
  v47 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  typeCopy = type;
  addedCopy = added;
  removedCopy = removed;
  v15 = addedCopy;
  audiograms = self->_audiograms;
  if (audiograms && [(NSMutableArray *)audiograms count])
  {
    v36 = removedCopy;
    _currentAudiogramSample = [(HKAudiogramChartViewController *)self _currentAudiogramSample];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v35 = v15;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v42 objects:v46 count:16];
    v37 = controllerCopy;
    if (v18)
    {
      v19 = v18;
      v20 = *v43;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v43 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v42 + 1) + 8 * i);
          v23 = self->_audiograms;
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __123__HKAudiogramChartViewController_updateController_didReceiveUpdateForType_samplesAdded_objectsRemoved_recoveringFromError___block_invoke_2;
          v41[3] = &unk_1E81BB510;
          v41[4] = v22;
          v24 = [(NSMutableArray *)v23 hk_firstObjectPassingTest:v41];

          if (!v24)
          {
            [(NSMutableArray *)self->_audiograms insertObject:v22 atIndex:[(NSMutableArray *)self->_audiograms indexOfObject:v22 inSortedRange:0 options:[(NSMutableArray *)self->_audiograms count] usingComparator:1024, &__block_literal_global_81]];
            if ([(HKAudiogramChartViewController *)self shouldScrollToSample:v22])
            {
              v25 = v22;

              _currentAudiogramSample = v25;
            }
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v19);
    }

    v26 = MEMORY[0x1E695DFD8];
    removedCopy = v36;
    v27 = [v36 hk_map:&__block_literal_global_435];
    v28 = [v26 setWithArray:v27];

    v29 = self->_audiograms;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __123__HKAudiogramChartViewController_updateController_didReceiveUpdateForType_samplesAdded_objectsRemoved_recoveringFromError___block_invoke_4;
    v39[3] = &unk_1E81BB510;
    v30 = v28;
    v40 = v30;
    [(NSMutableArray *)v29 hk_removeObjectsPassingTest:v39];
    controllerCopy = v37;
    v15 = v35;
    if (self->_audiogramsFetched)
    {
      if (_currentAudiogramSample)
      {
        v31 = [(NSMutableArray *)self->_audiograms indexOfObject:_currentAudiogramSample];
        if (v31 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v32 = -1;
        }

        else
        {
          v32 = v31;
        }
      }

      else
      {
        v32 = -1;
      }

      self->_currentAudiogramIndex = v32;
      [(HKAudiogramChartViewController *)self _setupInitialUI];
    }
  }

  else
  {
    v33 = [MEMORY[0x1E695DF70] arrayWithArray:v15];
    v34 = self->_audiograms;
    self->_audiograms = v33;

    self->_currentAudiogramIndex = -1;
    [(HKAudiogramChartViewController *)self _setupInitialUI];
  }
}

uint64_t __123__HKAudiogramChartViewController_updateController_didReceiveUpdateForType_samplesAdded_objectsRemoved_recoveringFromError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 endDate];
  v6 = [v4 endDate];

  v7 = [v5 compare:v6];
  return v7;
}

BOOL __123__HKAudiogramChartViewController_updateController_didReceiveUpdateForType_samplesAdded_objectsRemoved_recoveringFromError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 UUID];
  v4 = [*(a1 + 32) UUID];
  v5 = v3 == v4;

  return v5;
}

uint64_t __123__HKAudiogramChartViewController_updateController_didReceiveUpdateForType_samplesAdded_objectsRemoved_recoveringFromError___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UUID];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (BOOL)shouldScrollToSample:(id)sample
{
  v15 = *MEMORY[0x1E69E9840];
  sampleCopy = sample;
  Current = CFAbsoluteTimeGetCurrent();
  [sampleCopy _creationTimestamp];
  v7 = v6;

  v8 = vabdd_f64(Current, v7);
  if (v8 > 5.0)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x1E696B950];
    if (os_log_type_enabled(*MEMORY[0x1E696B950], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      selfCopy = self;
      v13 = 2048;
      v14 = Current - v7;
      _os_log_impl(&dword_1C3942000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Omitting incoming sample with timeDifference %f", &v11, 0x16u);
    }
  }

  return v8 <= 5.0;
}

- (id)_audiogramDisplayType
{
  applicationItems = [(HKAudiogramChartViewController *)self applicationItems];
  displayTypeController = [applicationItems displayTypeController];
  audiogramSampleType = [MEMORY[0x1E696C3D0] audiogramSampleType];
  v5 = [displayTypeController displayTypeForObjectType:audiogramSampleType];

  return v5;
}

- (id)_healthStore
{
  applicationItems = [(HKAudiogramChartViewController *)self applicationItems];
  healthStore = [applicationItems healthStore];

  return healthStore;
}

- (id)_unitController
{
  applicationItems = [(HKAudiogramChartViewController *)self applicationItems];
  unitController = [applicationItems unitController];

  return unitController;
}

- (id)_updateController
{
  applicationItems = [(HKAudiogramChartViewController *)self applicationItems];
  sampleTypeUpdateController = [applicationItems sampleTypeUpdateController];

  return sampleTypeUpdateController;
}

- (id)_sectionsFromAudiogram:(id)audiogram
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [(HKAudiogramChartViewController *)self _averageSectionFromAudiogram:audiogram];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (id)_averageSectionFromAudiogram:(id)audiogram
{
  v14[2] = *MEMORY[0x1E69E9840];
  audiogramCopy = audiogram;
  hearingLevelSummary = [audiogramCopy hearingLevelSummary];
  leftEarMetrics = [hearingLevelSummary leftEarMetrics];
  v7 = [(HKAudiogramChartViewController *)self _buildContextItemForEar:1 metrics:leftEarMetrics];

  hearingLevelSummary2 = [audiogramCopy hearingLevelSummary];

  rightEarMetrics = [hearingLevelSummary2 rightEarMetrics];
  v10 = [(HKAudiogramChartViewController *)self _buildContextItemForEar:2 metrics:rightEarMetrics];

  v11 = objc_alloc_init(_HKDisplayTypeAudiogramContextItemSection);
  [(_HKDisplayTypeAudiogramContextItemSection *)v11 setTitle:0];
  v14[0] = v7;
  v14[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [(_HKDisplayTypeAudiogramContextItemSection *)v11 setItems:v12];

  return v11;
}

- (id)_buildContextItemForEar:(int64_t)ear metrics:(id)metrics
{
  metricsCopy = metrics;
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  v8 = [HKUIMetricColors defaultContextViewColorsUsingColor:secondarySystemBackgroundColor];

  v9 = +[HKUIMetricColors hearingHealthColors];
  v10 = objc_alloc_init(HKDisplayTypeContextAudiogramItem);
  [(HKDisplayTypeContextItem *)v10 setInfoHidden:1];
  [(HKDisplayTypeContextItem *)v10 setMetricColors:v8];
  [(HKDisplayTypeContextItem *)v10 setSelectedMetricColors:v9];
  [(HKDisplayTypeContextAudiogramItem *)v10 setEar:ear];
  if (ear == 1)
  {
    v11 = @"LeftAverage";
  }

  else
  {
    v11 = @"RightAverage";
  }

  if (ear == 1)
  {
    v12 = @"LEFT_AVERAGE_HEARING";
  }

  else
  {
    v12 = @"RIGHT_AVERAGE_HEARING";
  }

  v13 = [MEMORY[0x1E696AEC0] hk_chartOverlayAccessibilityIdentifier:v11];
  [(HKDisplayTypeContextItem *)v10 setAccessibilityIdentifier:v13];

  v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v15 = [v14 localizedStringForKey:v12 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(HKDisplayTypeContextItem *)v10 setTitle:v15];

  averageSensitivity = [metricsCopy averageSensitivity];
  if (averageSensitivity)
  {
    selfCopy = self;
    v34 = metricsCopy;
    v17 = HKIntegerFormatter();
    _unit = [averageSensitivity _unit];
    [averageSensitivity doubleValueForUnit:_unit];
    v20 = v19;

    v21 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
    v22 = [v17 stringFromNumber:v21];

    v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v24 = [v23 localizedStringForKey:@"DECIBELS_HEARING_NUMBERLESS_UNIT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    [(HKDisplayTypeContextItem *)v10 setValue:v22];
    [(HKDisplayTypeContextItem *)v10 setUnit:v24];
    mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
    features = [mEMORY[0x1E696C608] features];
    yodel = [features yodel];

    if (yodel)
    {
      averageSensitivity2 = [v34 averageSensitivity];
      HKHearingLevelClassificationForSensitivity();

      v29 = HKLocalizedStringForHearingLevelClassification();
      v30 = HKFormatValueAndUnit(v22, v24);
      v31 = [(HKAudiogramChartViewController *)selfCopy _attributedLabelTextOverrideWithHearingLevelClassification:v29 valueAndUnit:v30 metricColors:v8 selectedMetricColors:v9];
      [(HKDisplayTypeContextItem *)v10 setAttributedLabelTextOverride:v31];
    }

    metricsCopy = v34;
  }

  else
  {
    v17 = HKUILocalizedString(@"NO_DATA");
    [(HKDisplayTypeContextItem *)v10 setValue:v17];
  }

  return v10;
}

- (id)_attributedLabelTextOverrideWithHearingLevelClassification:(id)classification valueAndUnit:(id)unit metricColors:(id)colors selectedMetricColors:(id)metricColors
{
  metricColorsCopy = metricColors;
  colorsCopy = colors;
  unitCopy = unit;
  classificationCopy = classification;
  v14 = [(HKAudiogramChartViewController *)self _attributedLabelTextWithHearingLevelClassification:classificationCopy valueAndUnit:unitCopy metricColors:colorsCopy selectedMetricColors:metricColorsCopy isSelected:0];
  v15 = [(HKAudiogramChartViewController *)self _attributedLabelTextWithHearingLevelClassification:classificationCopy valueAndUnit:unitCopy metricColors:colorsCopy selectedMetricColors:metricColorsCopy isSelected:1];

  v16 = [HKDisplayTypeContextItemAttributedLabelOverride attributedLabelOverrideWithText:v14 selectedText:v15];

  return v16;
}

- (id)_attributedLabelTextWithHearingLevelClassification:(id)classification valueAndUnit:(id)unit metricColors:(id)colors selectedMetricColors:(id)metricColors isSelected:(BOOL)selected
{
  v36[2] = *MEMORY[0x1E69E9840];
  unitCopy = unit;
  colorsCopy = colors;
  metricColorsCopy = metricColors;
  v14 = MEMORY[0x1E696AEC0];
  v15 = MEMORY[0x1E696AAE8];
  classificationCopy = classification;
  v17 = [v15 bundleWithIdentifier:@"com.apple.HealthUI"];
  v18 = [v17 localizedStringForKey:@"HEARING_LEVEL_CLASSIFICATION_%@_AND_AVERAGE_FORMAT_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Yodel"];
  unitCopy = [v14 localizedStringWithFormat:v18, classificationCopy, unitCopy];

  v32 = metricColorsCopy;
  v33 = colorsCopy;
  if (selected)
  {
    contextViewPrimaryTextColor = [metricColorsCopy contextViewPrimaryTextColor];
    [metricColorsCopy contextViewPrimaryTextColor];
  }

  else
  {
    contextViewPrimaryTextColor = [colorsCopy contextViewPrimaryTextColor];
    [colorsCopy contextViewSecondaryTextColor];
  }
  v21 = ;
  v22 = [unitCopy rangeOfString:unitCopy];
  v24 = v23;
  v25 = objc_alloc(MEMORY[0x1E696AD40]);
  v34 = *MEMORY[0x1E69DB648];
  hk_chartOverlaySectionItemValueAndUnitFont = [MEMORY[0x1E69DB878] hk_chartOverlaySectionItemValueAndUnitFont];
  v35 = *MEMORY[0x1E69DB650];
  v27 = v35;
  v36[0] = hk_chartOverlaySectionItemValueAndUnitFont;
  v36[1] = contextViewPrimaryTextColor;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v34 count:2];
  v29 = [v25 initWithString:unitCopy attributes:v28];

  [v29 addAttribute:v27 value:v21 range:{v22, v24}];
  v30 = [v29 copy];

  return v30;
}

- (void)_updateOverlayPillsAndHeaderWithSample:(id)sample
{
  contextView = self->_contextView;
  if (contextView)
  {
    v5 = [(HKAudiogramChartViewController *)self _sectionsFromAudiogram:sample];
    [(HKDisplayTypeSectionedContextView *)contextView setDisplayTypeContextSections:v5];
  }

  [(HKAudiogramChartViewController *)self _updateHeaderState];
}

- (void)_updateHeaderState
{
  if ([(HKAudiogramChartViewController *)self _hasAudiogramData])
  {
    currentValueViewDataSource = [(HKAudiogramChartViewController *)self currentValueViewDataSource];
    _currentAudiogramSample = [(HKAudiogramChartViewController *)self _currentAudiogramSample];
    [currentValueViewDataSource updateWithAudiogram:_currentAudiogramSample];

    currentValueView = [(HKAudiogramChartViewController *)self currentValueView];
    [currentValueView reloadData];
  }

  else
  {
    currentValueView = [(HKAudiogramChartViewController *)self currentValueView];
    [currentValueView showNoDataStatus];
  }
}

- (void)didTapOnInfoButtonFromCurrentValueView:(id)view
{
  mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
  features = [mEMORY[0x1E696C608] features];
  yodel = [features yodel];

  if (yodel)
  {
    hearingLossInfographicViewController = [objc_opt_class() hearingLossInfographicViewController];
    [(UIViewController *)self hk_presentModalCardViewController:hearingLossInfographicViewController fullScreen:0 animated:1 completion:0];
  }
}

+ (id)hearingLossInfographicViewController
{
  v18[6] = *MEMORY[0x1E69E9840];
  v3 = [HKInfographicViewController alloc];
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:@"HEARING_LEVEL_CLASSIFICATION_DESCRIPTION_INTRODUCTION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Yodel"];
  v6 = [self _itemForTitle:0 description:v5 baseIdentifier:@"HearingLevelClassificationIntroduction"];
  v18[0] = v6;
  v7 = [self _itemForHearingLossInfographicWithHearingLossClassification:1];
  v18[1] = v7;
  v8 = [self _itemForHearingLossInfographicWithHearingLossClassification:2];
  v18[2] = v8;
  v9 = [self _itemForHearingLossInfographicWithHearingLossClassification:3];
  v18[3] = v9;
  v10 = [self _itemForHearingLossInfographicWithHearingLossClassification:4];
  v18[4] = v10;
  v11 = [self _itemForHearingLossInfographicWithHearingLossClassification:5];
  v18[5] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:6];
  v13 = [(HKInfographicViewController *)v3 initWithItems:v12];

  v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v15 = [v14 localizedStringForKey:@"HEARING_LEVEL_CLASSIFICATIONS_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Yodel"];
  [(HKInfographicViewController *)v13 setTitle:v15];

  v16 = [[HKModalNavigationController alloc] initWithRootViewController:v13];

  return v16;
}

+ (id)_itemForTitle:(id)title description:(id)description baseIdentifier:(id)identifier
{
  titleCopy = title;
  v8 = MEMORY[0x1E696AD40];
  identifierCopy = identifier;
  descriptionCopy = description;
  v11 = objc_alloc_init(v8);
  if (titleCopy)
  {
    v12 = HKInteractiveChartInfographicTitleAttributes();
    v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:titleCopy attributes:v12];
    [v11 appendAttributedString:v13];
  }

  v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:descriptionCopy];

  v15 = [[HKInfographicContentItem alloc] initWithTitle:v11 description:v14];
  [(HKInfographicContentItem *)v15 setBaseIdentifier:identifierCopy];

  return v15;
}

+ (id)_itemForHearingLossInfographicWithHearingLossClassification:(unint64_t)classification
{
  v5 = HKLocalizedStringForHearingLevelClassification();
  v6 = [self _localizedDescriptionForClassification:classification];
  v7 = [self _baseIdentifierForClassification:classification];
  v8 = [self _itemForTitle:v5 description:v6 baseIdentifier:v7];

  return v8;
}

+ (id)_localizedDescriptionForClassification:(unint64_t)classification
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  usesMetricSystem = [currentLocale usesMetricSystem];

  v6 = &stru_1F42FFBE0;
  if (classification <= 2)
  {
    if (classification == 1)
    {
      v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v8 = v7;
      v9 = @"HEARING_LEVEL_CLASSIFICATION_DESCRIPTION_NO_IMPAIRMENT";
      v10 = @"HEARING_LEVEL_CLASSIFICATION_DESCRIPTION_NO_IMPAIRMENT_METRIC";
      goto LABEL_12;
    }

    if (classification == 2)
    {
      v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v8 = v7;
      v9 = @"HEARING_LEVEL_CLASSIFICATION_DESCRIPTION_MILD_IMPAIRMENT";
      v10 = @"HEARING_LEVEL_CLASSIFICATION_DESCRIPTION_MILD_IMPAIRMENT_METRIC";
      goto LABEL_12;
    }
  }

  else
  {
    switch(classification)
    {
      case 3uLL:
        v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v8 = v7;
        v9 = @"HEARING_LEVEL_CLASSIFICATION_DESCRIPTION_MODERATE_IMPAIRMENT";
        v10 = @"HEARING_LEVEL_CLASSIFICATION_DESCRIPTION_MODERATE_IMPAIRMENT_METRIC";
        goto LABEL_12;
      case 4uLL:
        v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v8 = v7;
        v9 = @"HEARING_LEVEL_CLASSIFICATION_DESCRIPTION_SEVERE_IMPAIRMENT";
        v10 = @"HEARING_LEVEL_CLASSIFICATION_DESCRIPTION_SEVERE_IMPAIRMENT_METRIC";
        goto LABEL_12;
      case 5uLL:
        v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v8 = v7;
        v9 = @"HEARING_LEVEL_CLASSIFICATION_DESCRIPTION_PROFOUND_IMPAIRMENT";
        v10 = @"HEARING_LEVEL_CLASSIFICATION_DESCRIPTION_PROFOUND_IMPAIRMENT_METRIC";
LABEL_12:
        if (usesMetricSystem)
        {
          v11 = v10;
        }

        else
        {
          v11 = v9;
        }

        v6 = [v7 localizedStringForKey:v11 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Yodel"];

        break;
    }
  }

  return v6;
}

+ (id)_baseIdentifierForClassification:(unint64_t)classification
{
  if (classification - 1 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E81BB598[classification - 1];
  }
}

- (void)contextView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  audiograms = [(HKAudiogramChartViewController *)self audiograms];
  if (!audiograms || [(HKAudiogramChartViewController *)self currentAudiogramIndex]< 0)
  {

    goto LABEL_10;
  }

  currentAudiogramIndex = [(HKAudiogramChartViewController *)self currentAudiogramIndex];
  audiograms2 = [(HKAudiogramChartViewController *)self audiograms];
  v11 = [audiograms2 count];

  if (currentAudiogramIndex >= v11)
  {
LABEL_10:
    self->_selectedOverlayEar = 0;
    goto LABEL_11;
  }

  if (![pathCopy section])
  {
    displayTypeContextSections = [viewCopy displayTypeContextSections];
    v13 = [displayTypeContextSections objectAtIndex:0];

    items = [v13 items];
    v15 = [items objectAtIndex:{objc_msgSend(pathCopy, "row")}];
    v16 = objc_opt_class();
    v17 = objc_opt_class();

    if (v16 != v17)
    {
      [HKAudiogramChartViewController contextView:a2 didSelectItemAtIndexPath:self];
    }

    items2 = [v13 items];
    v19 = [items2 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    self->_selectedOverlayEar = [v19 ear];
  }

  [(HKScalarGraphCollectionViewController *)self->_scalarGraphCollectionController redrawCurrentCell];
LABEL_11:
}

- (int64_t)numberOfItemsInCollection
{
  if (![(NSMutableArray *)self->_audiograms count])
  {
    return 1;
  }

  audiograms = self->_audiograms;

  return [(NSMutableArray *)audiograms count];
}

- (id)graphViewControllerForIndex:(int64_t)index
{
  v4 = objc_alloc_init(_HKAudiogramFrequencyAxisDimension);
  v5 = objc_alloc_init(HKNumericAxisConfiguration);
  [(HKAxisConfiguration *)v5 setMaxLabels:10];
  v6 = [HKScalarGraphViewController alloc];
  [(HKAudiogramChartViewController *)self chartHeight];
  v7 = [(HKScalarGraphViewController *)v6 initWithMinimumHeight:v4 labelDimension:3 labelEndings:v5 numericAxisConfigurationOverrides:?];
  hk_chartAxisLabelColor = [MEMORY[0x1E69DC888] hk_chartAxisLabelColor];
  graphView = [(HKGraphViewController *)v7 graphView];
  xAxis = [graphView xAxis];
  preferredStyle = [xAxis preferredStyle];
  v12 = [MEMORY[0x1E69DB878] hk_roundedSystemFontWithSize:12.0 weight:*MEMORY[0x1E69DB970]];
  v13 = [HKAxisLabelStyle labelStyleWithColor:hk_chartAxisLabelColor font:v12 horizontalAlignment:1 verticalAlignment:3];
  [preferredStyle setLabelStyle:v13];

  graphView2 = [(HKGraphViewController *)v7 graphView];
  xAxis2 = [graphView2 xAxis];
  preferredStyle2 = [xAxis2 preferredStyle];
  [preferredStyle2 setFillOuterPadding:0.0];

  graphView3 = [(HKGraphViewController *)v7 graphView];
  [graphView3 setMultiSeriesSelection:1];

  graphView4 = [(HKGraphViewController *)v7 graphView];
  [graphView4 setAxisInset:{0.0, 0.0, 0.0, 0.0}];

  graphView5 = [(HKGraphViewController *)v7 graphView];
  [(HKAudiogramChartViewController *)self _setupFixedFrequencyAxisForGraphView:graphView5];

  return v7;
}

- (id)graphSeriesForIndex:(int64_t)index
{
  v5 = [(NSMutableArray *)self->_audiograms count];
  v6 = MEMORY[0x1E695E0F0];
  if ((index & 0x8000000000000000) == 0 && v5 > index)
  {
    audiograms = [(HKAudiogramChartViewController *)self audiograms];
    v8 = [audiograms objectAtIndexedSubscript:index];

    v6 = [(HKAudiogramChartViewController *)self _setupSeriesForAudiogramSample:v8];
  }

  return v6;
}

- (void)graphCollectionView:(id)view didChangeVisibleIndex:(int64_t)index
{
  viewCopy = view;
  audiograms = self->_audiograms;
  if (audiograms)
  {
    v11 = viewCopy;
    audiograms = [(NSMutableArray *)audiograms count];
    viewCopy = v11;
    if (audiograms - 1 >= index)
    {
      self->_currentAudiogramIndex = index;
      v8 = [(NSMutableArray *)self->_audiograms objectAtIndexedSubscript:[(HKAudiogramChartViewController *)self currentAudiogramIndex]];
      [(HKAudiogramChartViewController *)self _updateOverlayPillsAndHeaderWithSample:v8];

      _indexPathForCurrentSelections = [(HKAudiogramChartViewController *)self _indexPathForCurrentSelections];
      contextView = self->_contextView;
      if (contextView)
      {
        if (_indexPathForCurrentSelections)
        {
          [(HKDisplayTypeSectionedContextView *)contextView selectItemAtIndexPath:_indexPathForCurrentSelections animated:0 scrollPosition:0];
          [(HKAudiogramChartViewController *)self contextView:self->_contextView didSelectItemAtIndexPath:_indexPathForCurrentSelections];
        }

        else
        {
          [(HKDisplayTypeSectionedContextView *)contextView deselectAllItemsAnimated:0];
          [(HKAudiogramChartViewController *)self _resetCurrentGraph];
        }
      }

      viewCopy = v11;
    }
  }

  MEMORY[0x1EEE66BB8](audiograms, viewCopy);
}

- (id)_setupSeriesForAudiogramSample:(id)sample
{
  sampleCopy = sample;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  sensitivityPoints = [sampleCopy sensitivityPoints];
  v7 = [(HKAudiogramChartViewController *)self _audiogramSeriesWithSensitivityPoints:sensitivityPoints seriesEar:2];
  [v5 hk_addNonNilObject:v7];

  sensitivityPoints2 = [sampleCopy sensitivityPoints];
  v9 = [(HKAudiogramChartViewController *)self _audiogramSeriesWithSensitivityPoints:sensitivityPoints2 seriesEar:1];
  [v5 hk_addNonNilObject:v9];

  if (self->_selectedOverlayEar)
  {
    sensitivityPoints3 = [sampleCopy sensitivityPoints];
    v11 = [(HKAudiogramChartViewController *)self _audiogramPureToneAveragePointsSeriesWithSensitivityPoints:sensitivityPoints3 seriesEar:self->_selectedOverlayEar];
    [v5 hk_addNonNilObject:v11];

    v12 = [(HKAudiogramChartViewController *)self _averageLevelOverlaySeriesWithAudiogram:sampleCopy selectedEar:self->_selectedOverlayEar];
    [v5 hk_addNonNilObject:v12];
  }

  return v5;
}

- (id)_audiogramSeriesWithSensitivityPoints:(id)points seriesEar:(int64_t)ear
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__HKAudiogramChartViewController__audiogramSeriesWithSensitivityPoints_seriesEar___block_invoke;
  v11[3] = &__block_descriptor_40_e37_B16__0__HKAudiogramSensitivityPoint_8l;
  v11[4] = ear != 1;
  v6 = [points hk_filter:v11];
  if ([v6 count])
  {
    v7 = ear == 1;
    v8 = [HKAudiogramLineSeries audiogramLineSeriesForSeriesEar:ear selectedEar:self->_selectedOverlayEar disableConnectionLines:0];
    v9 = [[HKAudiogramDataSource alloc] initWithSensitivityData:v6 forLeftEar:v7];
    [v8 setDataSource:v9];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL __82__HKAudiogramChartViewController__audiogramSeriesWithSensitivityPoints_seriesEar___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 tests];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__HKAudiogramChartViewController__audiogramSeriesWithSensitivityPoints_seriesEar___block_invoke_2;
  v7[3] = &__block_descriptor_40_e36_B16__0__HKAudiogramSensitivityTest_8l;
  v7[4] = *(a1 + 32);
  v4 = [v3 hk_filter:v7];
  v5 = [v4 firstObject];

  return v5 != 0;
}

- (id)_audiogramPureToneAveragePointsSeriesWithSensitivityPoints:(id)points seriesEar:(int64_t)ear
{
  pointsCopy = points;
  mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
  features = [mEMORY[0x1E696C608] features];
  yodel = [features yodel];

  if (yodel)
  {
    v10 = HKHearingLevelClassificationPureToneAverageFrequencies();
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __103__HKAudiogramChartViewController__audiogramPureToneAveragePointsSeriesWithSensitivityPoints_seriesEar___block_invoke;
    v19 = &unk_1E81BB578;
    v11 = v10;
    v20 = v11;
    v21 = ear != 1;
    v12 = [pointsCopy hk_filter:&v16];
    if ([v12 count])
    {
      v13 = [HKAudiogramLineSeries audiogramLineSeriesForSeriesEar:self->_selectedOverlayEar selectedEar:0 disableConnectionLines:1];
      v14 = [[HKAudiogramDataSource alloc] initWithSensitivityData:v12 forLeftEar:ear == 1];
      [v13 setDataSource:v14];

      [v13 setAllowsSelection:0];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

BOOL __103__HKAudiogramChartViewController__audiogramPureToneAveragePointsSeriesWithSensitivityPoints_seriesEar___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E696AD98];
  v5 = [v3 frequency];
  v6 = [MEMORY[0x1E696C510] hertzUnit];
  [v5 doubleValueForUnit:v6];
  v7 = [v4 numberWithDouble:?];

  if ([*(a1 + 32) containsObject:v7])
  {
    v8 = [v3 tests];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __103__HKAudiogramChartViewController__audiogramPureToneAveragePointsSeriesWithSensitivityPoints_seriesEar___block_invoke_2;
    v13[3] = &__block_descriptor_40_e36_B16__0__HKAudiogramSensitivityTest_8l;
    v13[4] = *(a1 + 40);
    v9 = [v8 hk_filter:v13];
    v10 = [v9 firstObject];

    v11 = v10 != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_averageLevelOverlaySeriesWithAudiogram:(id)audiogram selectedEar:(int64_t)ear
{
  v4 = ear == 1;
  v5 = MEMORY[0x1E69DC888];
  audiogramCopy = audiogram;
  hk_hearingHealthAudiogramAverageLineColor = [v5 hk_hearingHealthAudiogramAverageLineColor];
  v8 = [HKAudiogramAverageLevelSeries audiogramAverageLevelSeriesWithColor:hk_hearingHealthAudiogramAverageLineColor];

  v9 = [[HKAudiogramAverageSensitivityDataSource alloc] initWithAudiogramSample:audiogramCopy isLeftEar:v4];
  [v8 setDataSource:v9];

  return v8;
}

- (void)_setupFixedFrequencyAxisForGraphView:(id)view
{
  viewCopy = view;
  v4 = [HKValueRange valueRangeWithMinValue:&unk_1F4384AE0 maxValue:&unk_1F4384AF0];
  [viewCopy setEffectiveAxisRange:v4 effectiveVisibleRangeCadence:v4 effectiveVisibleRangeActive:v4];
}

- (void)updateAnnotationDataSource:(id)source pointContexts:(id)contexts
{
  v5 = self->_selectedOverlayEar != 0;
  contextsCopy = contexts;
  _currentAudiogramSample = [(HKAudiogramChartViewController *)self _currentAudiogramSample];
  startDate = [_currentAudiogramSample startDate];

  annotationViewDataSource = [(HKAudiogramChartViewController *)self annotationViewDataSource];
  [annotationViewDataSource updateWithPointSelectionContexts:contextsCopy date:startDate isAverage:v5];
}

- (void)_addControllerAsChildController:(id)controller
{
  controllerCopy = controller;
  [(HKAudiogramChartViewController *)self addChildViewController:controllerCopy];
  [controllerCopy didMoveToParentViewController:self];
}

- (void)_pinView:(id)view toParentGuide:(id)guide
{
  guideCopy = guide;
  viewCopy = view;
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingAnchor = [viewCopy leadingAnchor];
  leadingAnchor2 = [guideCopy leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [(HKAudiogramChartViewController *)self setLeadingMarginConstraint:v10];

  leadingMarginConstraint = [(HKAudiogramChartViewController *)self leadingMarginConstraint];
  [leadingMarginConstraint setActive:1];

  trailingAnchor = [viewCopy trailingAnchor];
  trailingAnchor2 = [guideCopy trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [(HKAudiogramChartViewController *)self setTrailingMarginConstraint:v14];

  trailingMarginConstraint = [(HKAudiogramChartViewController *)self trailingMarginConstraint];
  [trailingMarginConstraint setActive:1];

  topAnchor = [viewCopy topAnchor];
  topAnchor2 = [guideCopy topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v18 setActive:1];

  bottomAnchor = [viewCopy bottomAnchor];

  bottomAnchor2 = [guideCopy bottomAnchor];

  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v20 setActive:1];
}

- (id)_findNavigationController
{
  navigationController = [(HKAudiogramChartViewController *)self navigationController];

  if (navigationController)
  {
    navigationController2 = [(HKAudiogramChartViewController *)self navigationController];
    goto LABEL_3;
  }

  view = [(HKAudiogramChartViewController *)self view];
  navigationController2 = [view nextResponder];

  if (navigationController2)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = navigationController2;
        navigationController3 = [v7 navigationController];

        if (navigationController3)
        {
          navigationController2 = [v7 navigationController];

          break;
        }
      }

      nextResponder = [navigationController2 nextResponder];

      navigationController2 = nextResponder;
    }

    while (nextResponder);
  }

LABEL_3:

  return navigationController2;
}

- (id)_indexPathForCurrentSelections
{
  selectedOverlayEar = self->_selectedOverlayEar;
  if (selectedOverlayEar == 2)
  {
    v5 = 1;
LABEL_5:
    v6 = [MEMORY[0x1E696AC88] indexPathForRow:v5 inSection:{0, v2}];

    return v6;
  }

  if (selectedOverlayEar == 1)
  {
    v5 = 0;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

+ (BOOL)testChartPointCreation:(id)creation leftEarSeries:(BOOL)series expectedChartPoints:(id)points failureMessage:(id *)message
{
  seriesCopy = series;
  v49 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  v10 = [HKAudiogramChartPoint chartPointsFromSensitivityPoints:creation isLeftEar:seriesCopy];
  v11 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v11 setNumberStyle:1];
  v12 = [pointsCopy componentsSeparatedByString:@""];;
  v13 = [v12 count];
  if (v13 != [v10 count])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected point count doesn't match actual point count: %ld != %ld", objc_msgSend(v12, "count"), objc_msgSend(v10, "count")];
    *message = v37 = 0;
    goto LABEL_20;
  }

  v42 = pointsCopy;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (!v14)
  {
    v37 = 1;
    goto LABEL_19;
  }

  v15 = v14;
  messageCopy = message;
  v16 = 0;
  v17 = *v45;
  while (2)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v45 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v44 + 1) + 8 * i);
      v20 = [v19 componentsSeparatedByString:{@", "}];
      if ([v20 count] != 2)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Point does not have two coordinates: '%@'", v19, v39, v40];
        *messageCopy = LABEL_18:;

        v37 = 0;
        goto LABEL_19;
      }

      v21 = [v20 objectAtIndexedSubscript:0];
      v22 = [v11 numberFromString:v21];
      [v22 doubleValue];
      v24 = v23;

      v25 = [v20 objectAtIndexedSubscript:1];
      v26 = [v11 numberFromString:v25];
      [v26 doubleValue];
      v28 = v27;

      v29 = [v10 objectAtIndexedSubscript:v16];
      xValueAsGenericType = [v29 xValueAsGenericType];
      [xValueAsGenericType doubleValue];
      v32 = v31;

      v33 = [v10 objectAtIndexedSubscript:v16];
      yValue = [v33 yValue];
      [yValue doubleValue];
      v36 = v35;

      if (vabdd_f64(v24, v32) > 0.000001)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"X value mismatch (slot %ld): %lg != %lg", v16, *&v24, *&v32];
        goto LABEL_18;
      }

      if (vabdd_f64(v28, v36) > 0.000001)
      {
        objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Y value mismatch (slot %ld: %lg != %lg"), v16, *&v28, *&v36;
        goto LABEL_18;
      }

      ++v16;
    }

    v15 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    v37 = 1;
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_19:

  pointsCopy = v42;
LABEL_20:

  return v37;
}

- (void)_updateAudiogramSamples:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1C3942000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to retrieve audiograms: %{public}@", &v3, 0x16u);
}

- (void)contextView:(uint64_t)a1 didSelectItemAtIndexPath:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKAudiogramChartViewController.m" lineNumber:678 description:{@"We initialized audiogram items, and should get those back"}];
}

@end