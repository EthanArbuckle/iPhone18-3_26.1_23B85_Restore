@interface HKAudiogramChartViewController
+ (BOOL)testChartPointCreation:(id)a3 leftEarSeries:(BOOL)a4 expectedChartPoints:(id)a5 failureMessage:(id *)a6;
+ (id)_baseIdentifierForClassification:(unint64_t)a3;
+ (id)_itemForHearingLossInfographicWithHearingLossClassification:(unint64_t)a3;
+ (id)_itemForTitle:(id)a3 description:(id)a4 baseIdentifier:(id)a5;
+ (id)_localizedDescriptionForClassification:(unint64_t)a3;
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11;
+ (id)hearingLossInfographicViewController;
- (BOOL)_hasAudiogramData;
- (BOOL)shouldScrollToSample:(id)a3;
- (HKAudiogramChartViewController)initWithApplicationItems:(id)a3 factorDisplayTypes:(id)a4 chartHeight:(double)a5;
- (HKAudiogramChartViewController)initWithUnitController:(id)a3 sampleTypeUpdateController:(id)a4 minimumAudiogramHeight:(double)a5;
- (id)_attributedLabelTextOverrideWithHearingLevelClassification:(id)a3 valueAndUnit:(id)a4 metricColors:(id)a5 selectedMetricColors:(id)a6;
- (id)_attributedLabelTextWithHearingLevelClassification:(id)a3 valueAndUnit:(id)a4 metricColors:(id)a5 selectedMetricColors:(id)a6 isSelected:(BOOL)a7;
- (id)_audiogramDisplayType;
- (id)_audiogramPureToneAveragePointsSeriesWithSensitivityPoints:(id)a3 seriesEar:(int64_t)a4;
- (id)_audiogramSeriesWithSensitivityPoints:(id)a3 seriesEar:(int64_t)a4;
- (id)_averageLevelOverlaySeriesWithAudiogram:(id)a3 selectedEar:(int64_t)a4;
- (id)_averageSectionFromAudiogram:(id)a3;
- (id)_buildContextItemForEar:(int64_t)a3 metrics:(id)a4;
- (id)_currentAudiogramSample;
- (id)_findNavigationController;
- (id)_healthStore;
- (id)_indexPathForCurrentSelections;
- (id)_sectionsFromAudiogram:(id)a3;
- (id)_setupSeriesForAudiogramSample:(id)a3;
- (id)_unitController;
- (id)_updateController;
- (id)graphSeriesForIndex:(int64_t)a3;
- (id)graphViewControllerForIndex:(int64_t)a3;
- (int64_t)numberOfItemsInCollection;
- (void)_addContextView;
- (void)_addControllerAsChildController:(id)a3;
- (void)_addShowMoreDataButton;
- (void)_pinView:(id)a3 toParentGuide:(id)a4;
- (void)_refreshDynamicInsets;
- (void)_setupFixedFrequencyAxisForGraphView:(id)a3;
- (void)_setupInitialUI;
- (void)_showMoreData:(id)a3;
- (void)_updateAudiogramSamples:(id)a3 error:(id)a4;
- (void)_updateHeaderState;
- (void)_updateOverlayPillsAndHeaderWithSample:(id)a3;
- (void)contextView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)didTapOnInfoButtonFromCurrentValueView:(id)a3;
- (void)graphCollectionView:(id)a3 didChangeVisibleIndex:(int64_t)a4;
- (void)queryForAudiograms;
- (void)setAudiograms:(id)a3;
- (void)updateAnnotationDataSource:(id)a3 pointContexts:(id)a4;
- (void)updateController:(id)a3 didReceiveUpdateForType:(id)a4 samplesAdded:(id)a5 objectsRemoved:(id)a6 recoveringFromError:(BOOL)a7;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HKAudiogramChartViewController

+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11
{
  v13 = a10;
  v14 = a5;
  v15 = [[a1 alloc] initWithApplicationItems:v14 factorDisplayTypes:v13 chartHeight:350.0];

  [v15 queryForAudiograms];

  return v15;
}

- (HKAudiogramChartViewController)initWithApplicationItems:(id)a3 factorDisplayTypes:(id)a4 chartHeight:(double)a5
{
  v9 = a3;
  v10 = a4;
  v25.receiver = self;
  v25.super_class = HKAudiogramChartViewController;
  v11 = [(HKAudiogramChartViewController *)&v25 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_applicationItems, a3);
    v12->_chartHeight = a5;
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
    v18 = [(HKAudiogramChartViewController *)v12 navigationItem];
    [v18 setLargeTitleDisplayMode:2];

    v19 = objc_alloc(MEMORY[0x1E696C178]);
    v20 = *MEMORY[0x1E696B8A0];
    v21 = [v9 healthStore];
    v22 = [v19 initWithFeatureIdentifier:v20 healthStore:v21];
    hearingTestFeatureStatus = v12->_hearingTestFeatureStatus;
    v12->_hearingTestFeatureStatus = v22;

    objc_storeStrong(&v12->_factorDisplayTypes, a4);
  }

  return v12;
}

- (HKAudiogramChartViewController)initWithUnitController:(id)a3 sampleTypeUpdateController:(id)a4 minimumAudiogramHeight:(double)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(HKOverlayRoomApplicationItems);
  [(HKOverlayRoomApplicationItems *)v10 setUnitController:v9];

  [(HKOverlayRoomApplicationItems *)v10 setSampleTypeUpdateController:v8];
  v11 = +[HKDisplayTypeController sharedInstance];
  [(HKOverlayRoomApplicationItems *)v10 setDisplayTypeController:v11];

  v12 = objc_alloc_init(MEMORY[0x1E696C1C0]);
  [(HKOverlayRoomApplicationItems *)v10 setHealthStore:v12];

  v13 = [(HKAudiogramChartViewController *)self initWithApplicationItems:v10 factorDisplayTypes:0 chartHeight:a5];
  return v13;
}

- (void)dealloc
{
  v3 = [(HKAudiogramChartViewController *)self _updateController];
  v4 = [MEMORY[0x1E696C3D0] audiogramSampleType];
  [v3 removeObserver:self forType:v4];

  v5.receiver = self;
  v5.super_class = HKAudiogramChartViewController;
  [(HKAudiogramChartViewController *)&v5 dealloc];
}

- (void)setAudiograms:(id)a3
{
  v4 = [a3 mutableCopy];
  [(HKAudiogramChartViewController *)self _setAudiograms:v4];
}

- (void)_refreshDynamicInsets
{
  v3 = [(HKAudiogramChartViewController *)self traitCollection];
  [v3 valueForNSIntegerTrait:objc_opt_class()];

  v4 = HKCollectionViewLayoutDefaultLayoutMarginsForWidthDesignation();
  v6 = v5;
  v8 = v7;
  v9 = [MEMORY[0x1E696C608] sharedBehavior];
  v10 = [v9 isiPad];

  if (v10)
  {
    +[HKScalarGraphViewController hardLeftMarginWidth];
    v12 = v11;
    v13 = [(HKAudiogramChartViewController *)self view];
    v14 = [v13 hk_isLeftToRight];

    v15 = [(HKAudiogramChartViewController *)self leadingMarginConstraint];
    if (v14)
    {
      [v15 setConstant:v6 - v12];

      v16 = -v8;
    }

    else
    {
      [v15 setConstant:v6];

      v16 = v12 - v8;
    }
  }

  else
  {
    v17 = [(HKAudiogramChartViewController *)self view];
    [v17 layoutMargins];
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

    v23 = [(HKAudiogramChartViewController *)self leadingMarginConstraint];
    [v23 setConstant:v22];

    v16 = fmin(-(v21 + -16.0), 0.0);
  }

  v24 = [(HKAudiogramChartViewController *)self trailingMarginConstraint];
  [v24 setConstant:v16];

  v31 = [(HKAudiogramChartViewController *)self leadingMarginConstraint];
  [v31 constant];
  v26 = v6 - v25;
  v27 = [(HKAudiogramChartViewController *)self trailingMarginConstraint];
  [v27 constant];
  v29 = v8 + v28;
  v30 = [(HKAudiogramChartViewController *)self contextStackView];
  [v30 setDirectionalLayoutMargins:{0.0, v26, 0.0, v29}];
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
  v3 = [(HKAudiogramChartViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = objc_alloc(MEMORY[0x1E69DCF90]);
  v6 = [v5 initWithArrangedSubviews:MEMORY[0x1E695E0F0]];
  stackView = self->_stackView;
  self->_stackView = v6;

  [(UIStackView *)self->_stackView setAxis:1];
  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView setDistribution:0];
  v8 = [HKAudiogramCurrentValueViewDataSource alloc];
  v9 = [(HKAudiogramChartViewController *)self applicationItems];
  v10 = [(HKAudiogramCurrentValueViewDataSource *)v8 initWithApplicationItems:v9];
  [(HKAudiogramChartViewController *)self setCurrentValueViewDataSource:v10];

  v11 = [[HKInteractiveChartAnnotationView alloc] initWithContext:0];
  [(HKAudiogramChartViewController *)self setCurrentValueView:v11];

  v12 = [MEMORY[0x1E696AEC0] hk_chartAccessibilityIdentifier:@"ValueView"];
  v13 = [(HKAudiogramChartViewController *)self currentValueView];
  [v13 setAccessibilityIdentifier:v12];

  v14 = [(HKAudiogramChartViewController *)self currentValueView];
  v15 = [MEMORY[0x1E696C608] sharedBehavior];
  v16 = [v15 features];
  [v14 setShowsInfoButton:{objc_msgSend(v16, "yodel")}];

  v17 = [(HKAudiogramChartViewController *)self currentValueView];
  [v17 setDelegate:self];

  v18 = [(HKAudiogramChartViewController *)self currentValueViewDataSource];
  v19 = [(HKAudiogramChartViewController *)self currentValueView];
  [v19 setDataSource:v18];

  v20 = [(HKAudiogramChartViewController *)self stackView];
  v21 = [(HKAudiogramChartViewController *)self currentValueView];
  [v20 addArrangedSubview:v21];

  v22 = [(HKAudiogramChartViewController *)self currentValueView];
  v23 = [v22 heightAnchor];
  v24 = [v23 constraintEqualToConstant:90.0];
  [v24 setActive:1];

  v25 = [HKScalarGraphCollectionViewController alloc];
  [(HKAudiogramChartViewController *)self chartHeight];
  v27 = v26;
  v28 = [(HKAudiogramChartViewController *)self _unitController];
  v29 = [(HKScalarGraphCollectionViewController *)v25 initWithMinimumHeight:v28 unitController:v27];
  [(HKAudiogramChartViewController *)self setScalarGraphCollectionController:v29];

  v30 = [(HKAudiogramChartViewController *)self scalarGraphCollectionController];
  v31 = [v30 view];
  v32 = [v31 heightAnchor];
  [(HKAudiogramChartViewController *)self chartHeight];
  v33 = [v32 constraintEqualToConstant:?];
  [v33 setActive:1];

  v34 = [(HKAudiogramChartViewController *)self scalarGraphCollectionController];
  [(HKAudiogramChartViewController *)self _addControllerAsChildController:v34];

  v35 = [(HKAudiogramChartViewController *)self stackView];
  v36 = [(HKAudiogramChartViewController *)self scalarGraphCollectionController];
  v37 = [v36 view];
  [v35 addArrangedSubview:v37];

  v38 = [(HKAudiogramChartViewController *)self scalarGraphCollectionController];
  [v38 setDelegate:self];

  [(HKAudiogramChartViewController *)self _addContextView];
  v39 = [MEMORY[0x1E696C608] sharedBehavior];
  v40 = [v39 features];
  LODWORD(v37) = [v40 yodel];

  if (v37)
  {
    [(HKAudiogramChartViewController *)self _addShowMoreDataButton];
  }

  v41 = [(HKAudiogramChartViewController *)self view];
  [v41 addSubview:self->_stackView];

  v42 = [(HKAudiogramChartViewController *)self stackView];
  v43 = [v42 heightAnchor];
  [(HKAudiogramChartViewController *)self chartHeight];
  v45 = v44;
  v46 = [(HKAudiogramChartViewController *)self currentValueView];
  [v46 frame];
  v48 = [v43 constraintGreaterThanOrEqualToConstant:v45 + v47];
  stackViewHeightConstraint = self->_stackViewHeightConstraint;
  self->_stackViewHeightConstraint = v48;

  [(NSLayoutConstraint *)self->_stackViewHeightConstraint setActive:1];
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v50 = [(UIStackView *)self->_stackView arrangedSubviews];
  v51 = [v50 countByEnumeratingWithState:&v68 objects:v73 count:16];
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
          objc_enumerationMutation(v50);
        }

        v56 = *(*(&v68 + 1) + 8 * i);
        LODWORD(v52) = 1148846080;
        [v56 setContentCompressionResistancePriority:1 forAxis:v52];
        LODWORD(v57) = 1148846080;
        [v56 setContentHuggingPriority:1 forAxis:v57];
      }

      v53 = [v50 countByEnumeratingWithState:&v68 objects:v73 count:16];
    }

    while (v53);
  }

  v58 = self->_stackView;
  v59 = [(HKAudiogramChartViewController *)self view];
  v60 = [v59 safeAreaLayoutGuide];
  [(HKAudiogramChartViewController *)self _pinView:v58 toParentGuide:v60];

  v61 = [HKAudiogramAnnotationViewDataSource alloc];
  v62 = [(HKAudiogramChartViewController *)self applicationItems];
  v63 = [(HKAudiogramAnnotationViewDataSource *)v61 initWithApplicationItems:v62];
  [(HKAudiogramChartViewController *)self setAnnotationViewDataSource:v63];

  v64 = [HKLollipopController alloc];
  v65 = [(HKAudiogramChartViewController *)self annotationViewDataSource];
  v66 = [(HKAudiogramChartViewController *)self stackView];
  v67 = [(HKLollipopController *)v64 initWithAnnotationDataSource:v65 parentView:v66 delegate:self];
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
    v4 = [(HKAudiogramChartViewController *)self currentAudiogramIndex];

    [(HKScalarGraphCollectionViewController *)v3 resetToIndex:v4];
  }
}

- (void)_addContextView
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [[HKDisplayTypeSectionedContextView alloc] initWithStyle:2];
  contextView = self->_contextView;
  self->_contextView = v3;

  v5 = [MEMORY[0x1E696C608] sharedBehavior];
  v6 = [v5 features];
  -[HKDisplayTypeSectionedContextView setUseBottomInsets:](self->_contextView, "setUseBottomInsets:", [v6 yodel] ^ 1);

  [(HKDisplayTypeSectionedContextView *)self->_contextView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HKDisplayTypeSectionedContextView *)self->_contextView setDelegate:self];
  v7 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(HKDisplayTypeSectionedContextView *)self->_contextView setBackgroundColor:v7];

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
  v3 = [(HKAudiogramChartViewController *)self stackView];
  [v3 addArrangedSubview:v4];
}

- (void)_showMoreData:(id)a3
{
  v4 = [(HKAudiogramChartViewController *)self _findNavigationController];
  if (v4)
  {
    v12 = v4;
    v5 = [(HKAudiogramChartViewController *)self applicationItems];
    v6 = [v5 timeScopeController];
    [v6 setSelectedTimeScope:2];

    v7 = [HKAudiogramLongitudinalOverlayRoomViewController alloc];
    v8 = [(HKAudiogramChartViewController *)self applicationItems];
    v9 = [(HKAudiogramChartViewController *)self factorDisplayTypes];
    v10 = [(HKAudiogramLongitudinalOverlayRoomViewController *)v7 initWithApplicationItems:v8 factorDisplayTypes:v9];

    v11 = [[HKModalNavigationController alloc] initWithRootViewController:v10];
    [v12 hk_presentModalCardViewController:v11 fullScreen:1 animated:1 completion:0];

    v4 = v12;
  }
}

- (void)queryForAudiograms
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:*MEMORY[0x1E696BE30] ascending:1];
  v12[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

  v5 = objc_alloc(MEMORY[0x1E696C3C8]);
  v6 = [MEMORY[0x1E696C3D0] audiogramSampleType];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__HKAudiogramChartViewController_queryForAudiograms__block_invoke;
  v11[3] = &unk_1E81B58D8;
  v11[4] = self;
  v7 = [v5 initWithSampleType:v6 predicate:0 limit:0 sortDescriptors:v4 resultsHandler:v11];

  v8 = [(HKAudiogramChartViewController *)self _updateController];
  v9 = [MEMORY[0x1E696C3D0] audiogramSampleType];
  [v8 addObserver:self forType:v9];

  v10 = [(HKAudiogramChartViewController *)self _healthStore];
  [v10 executeQuery:v7];
}

- (void)_updateAudiogramSamples:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__HKAudiogramChartViewController__updateAudiogramSamples_error___block_invoke;
    v9[3] = &unk_1E81B5AD0;
    v9[4] = self;
    v10 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }

  else
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x1E696B950];
    if (os_log_type_enabled(*MEMORY[0x1E696B950], OS_LOG_TYPE_ERROR))
    {
      [(HKAudiogramChartViewController *)self _updateAudiogramSamples:v7 error:v8];
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

- (void)updateController:(id)a3 didReceiveUpdateForType:(id)a4 samplesAdded:(id)a5 objectsRemoved:(id)a6 recoveringFromError:(BOOL)a7
{
  v47 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v13;
  audiograms = self->_audiograms;
  if (audiograms && [(NSMutableArray *)audiograms count])
  {
    v36 = v14;
    v38 = [(HKAudiogramChartViewController *)self _currentAudiogramSample];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v35 = v15;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v42 objects:v46 count:16];
    v37 = v11;
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

              v38 = v25;
            }
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v19);
    }

    v26 = MEMORY[0x1E695DFD8];
    v14 = v36;
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
    v11 = v37;
    v15 = v35;
    if (self->_audiogramsFetched)
    {
      if (v38)
      {
        v31 = [(NSMutableArray *)self->_audiograms indexOfObject:v38];
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

- (BOOL)shouldScrollToSample:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  [v4 _creationTimestamp];
  v7 = v6;

  v8 = vabdd_f64(Current, v7);
  if (v8 > 5.0)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x1E696B950];
    if (os_log_type_enabled(*MEMORY[0x1E696B950], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = self;
      v13 = 2048;
      v14 = Current - v7;
      _os_log_impl(&dword_1C3942000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Omitting incoming sample with timeDifference %f", &v11, 0x16u);
    }
  }

  return v8 <= 5.0;
}

- (id)_audiogramDisplayType
{
  v2 = [(HKAudiogramChartViewController *)self applicationItems];
  v3 = [v2 displayTypeController];
  v4 = [MEMORY[0x1E696C3D0] audiogramSampleType];
  v5 = [v3 displayTypeForObjectType:v4];

  return v5;
}

- (id)_healthStore
{
  v2 = [(HKAudiogramChartViewController *)self applicationItems];
  v3 = [v2 healthStore];

  return v3;
}

- (id)_unitController
{
  v2 = [(HKAudiogramChartViewController *)self applicationItems];
  v3 = [v2 unitController];

  return v3;
}

- (id)_updateController
{
  v2 = [(HKAudiogramChartViewController *)self applicationItems];
  v3 = [v2 sampleTypeUpdateController];

  return v3;
}

- (id)_sectionsFromAudiogram:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [(HKAudiogramChartViewController *)self _averageSectionFromAudiogram:a3];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (id)_averageSectionFromAudiogram:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 hearingLevelSummary];
  v6 = [v5 leftEarMetrics];
  v7 = [(HKAudiogramChartViewController *)self _buildContextItemForEar:1 metrics:v6];

  v8 = [v4 hearingLevelSummary];

  v9 = [v8 rightEarMetrics];
  v10 = [(HKAudiogramChartViewController *)self _buildContextItemForEar:2 metrics:v9];

  v11 = objc_alloc_init(_HKDisplayTypeAudiogramContextItemSection);
  [(_HKDisplayTypeAudiogramContextItemSection *)v11 setTitle:0];
  v14[0] = v7;
  v14[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [(_HKDisplayTypeAudiogramContextItemSection *)v11 setItems:v12];

  return v11;
}

- (id)_buildContextItemForEar:(int64_t)a3 metrics:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  v8 = [HKUIMetricColors defaultContextViewColorsUsingColor:v7];

  v9 = +[HKUIMetricColors hearingHealthColors];
  v10 = objc_alloc_init(HKDisplayTypeContextAudiogramItem);
  [(HKDisplayTypeContextItem *)v10 setInfoHidden:1];
  [(HKDisplayTypeContextItem *)v10 setMetricColors:v8];
  [(HKDisplayTypeContextItem *)v10 setSelectedMetricColors:v9];
  [(HKDisplayTypeContextAudiogramItem *)v10 setEar:a3];
  if (a3 == 1)
  {
    v11 = @"LeftAverage";
  }

  else
  {
    v11 = @"RightAverage";
  }

  if (a3 == 1)
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

  v16 = [v6 averageSensitivity];
  if (v16)
  {
    v33 = self;
    v34 = v6;
    v17 = HKIntegerFormatter();
    v18 = [v16 _unit];
    [v16 doubleValueForUnit:v18];
    v20 = v19;

    v21 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
    v22 = [v17 stringFromNumber:v21];

    v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v24 = [v23 localizedStringForKey:@"DECIBELS_HEARING_NUMBERLESS_UNIT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    [(HKDisplayTypeContextItem *)v10 setValue:v22];
    [(HKDisplayTypeContextItem *)v10 setUnit:v24];
    v25 = [MEMORY[0x1E696C608] sharedBehavior];
    v26 = [v25 features];
    v27 = [v26 yodel];

    if (v27)
    {
      v28 = [v34 averageSensitivity];
      HKHearingLevelClassificationForSensitivity();

      v29 = HKLocalizedStringForHearingLevelClassification();
      v30 = HKFormatValueAndUnit(v22, v24);
      v31 = [(HKAudiogramChartViewController *)v33 _attributedLabelTextOverrideWithHearingLevelClassification:v29 valueAndUnit:v30 metricColors:v8 selectedMetricColors:v9];
      [(HKDisplayTypeContextItem *)v10 setAttributedLabelTextOverride:v31];
    }

    v6 = v34;
  }

  else
  {
    v17 = HKUILocalizedString(@"NO_DATA");
    [(HKDisplayTypeContextItem *)v10 setValue:v17];
  }

  return v10;
}

- (id)_attributedLabelTextOverrideWithHearingLevelClassification:(id)a3 valueAndUnit:(id)a4 metricColors:(id)a5 selectedMetricColors:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(HKAudiogramChartViewController *)self _attributedLabelTextWithHearingLevelClassification:v13 valueAndUnit:v12 metricColors:v11 selectedMetricColors:v10 isSelected:0];
  v15 = [(HKAudiogramChartViewController *)self _attributedLabelTextWithHearingLevelClassification:v13 valueAndUnit:v12 metricColors:v11 selectedMetricColors:v10 isSelected:1];

  v16 = [HKDisplayTypeContextItemAttributedLabelOverride attributedLabelOverrideWithText:v14 selectedText:v15];

  return v16;
}

- (id)_attributedLabelTextWithHearingLevelClassification:(id)a3 valueAndUnit:(id)a4 metricColors:(id)a5 selectedMetricColors:(id)a6 isSelected:(BOOL)a7
{
  v36[2] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MEMORY[0x1E696AEC0];
  v15 = MEMORY[0x1E696AAE8];
  v16 = a3;
  v17 = [v15 bundleWithIdentifier:@"com.apple.HealthUI"];
  v18 = [v17 localizedStringForKey:@"HEARING_LEVEL_CLASSIFICATION_%@_AND_AVERAGE_FORMAT_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Yodel"];
  v19 = [v14 localizedStringWithFormat:v18, v16, v11];

  v32 = v13;
  v33 = v12;
  if (a7)
  {
    v20 = [v13 contextViewPrimaryTextColor];
    [v13 contextViewPrimaryTextColor];
  }

  else
  {
    v20 = [v12 contextViewPrimaryTextColor];
    [v12 contextViewSecondaryTextColor];
  }
  v21 = ;
  v22 = [v19 rangeOfString:v11];
  v24 = v23;
  v25 = objc_alloc(MEMORY[0x1E696AD40]);
  v34 = *MEMORY[0x1E69DB648];
  v26 = [MEMORY[0x1E69DB878] hk_chartOverlaySectionItemValueAndUnitFont];
  v35 = *MEMORY[0x1E69DB650];
  v27 = v35;
  v36[0] = v26;
  v36[1] = v20;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v34 count:2];
  v29 = [v25 initWithString:v19 attributes:v28];

  [v29 addAttribute:v27 value:v21 range:{v22, v24}];
  v30 = [v29 copy];

  return v30;
}

- (void)_updateOverlayPillsAndHeaderWithSample:(id)a3
{
  contextView = self->_contextView;
  if (contextView)
  {
    v5 = [(HKAudiogramChartViewController *)self _sectionsFromAudiogram:a3];
    [(HKDisplayTypeSectionedContextView *)contextView setDisplayTypeContextSections:v5];
  }

  [(HKAudiogramChartViewController *)self _updateHeaderState];
}

- (void)_updateHeaderState
{
  if ([(HKAudiogramChartViewController *)self _hasAudiogramData])
  {
    v3 = [(HKAudiogramChartViewController *)self currentValueViewDataSource];
    v4 = [(HKAudiogramChartViewController *)self _currentAudiogramSample];
    [v3 updateWithAudiogram:v4];

    v5 = [(HKAudiogramChartViewController *)self currentValueView];
    [v5 reloadData];
  }

  else
  {
    v5 = [(HKAudiogramChartViewController *)self currentValueView];
    [v5 showNoDataStatus];
  }
}

- (void)didTapOnInfoButtonFromCurrentValueView:(id)a3
{
  v4 = [MEMORY[0x1E696C608] sharedBehavior];
  v5 = [v4 features];
  v6 = [v5 yodel];

  if (v6)
  {
    v7 = [objc_opt_class() hearingLossInfographicViewController];
    [(UIViewController *)self hk_presentModalCardViewController:v7 fullScreen:0 animated:1 completion:0];
  }
}

+ (id)hearingLossInfographicViewController
{
  v18[6] = *MEMORY[0x1E69E9840];
  v3 = [HKInfographicViewController alloc];
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:@"HEARING_LEVEL_CLASSIFICATION_DESCRIPTION_INTRODUCTION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Yodel"];
  v6 = [a1 _itemForTitle:0 description:v5 baseIdentifier:@"HearingLevelClassificationIntroduction"];
  v18[0] = v6;
  v7 = [a1 _itemForHearingLossInfographicWithHearingLossClassification:1];
  v18[1] = v7;
  v8 = [a1 _itemForHearingLossInfographicWithHearingLossClassification:2];
  v18[2] = v8;
  v9 = [a1 _itemForHearingLossInfographicWithHearingLossClassification:3];
  v18[3] = v9;
  v10 = [a1 _itemForHearingLossInfographicWithHearingLossClassification:4];
  v18[4] = v10;
  v11 = [a1 _itemForHearingLossInfographicWithHearingLossClassification:5];
  v18[5] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:6];
  v13 = [(HKInfographicViewController *)v3 initWithItems:v12];

  v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v15 = [v14 localizedStringForKey:@"HEARING_LEVEL_CLASSIFICATIONS_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Yodel"];
  [(HKInfographicViewController *)v13 setTitle:v15];

  v16 = [[HKModalNavigationController alloc] initWithRootViewController:v13];

  return v16;
}

+ (id)_itemForTitle:(id)a3 description:(id)a4 baseIdentifier:(id)a5
{
  v7 = a3;
  v8 = MEMORY[0x1E696AD40];
  v9 = a5;
  v10 = a4;
  v11 = objc_alloc_init(v8);
  if (v7)
  {
    v12 = HKInteractiveChartInfographicTitleAttributes();
    v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7 attributes:v12];
    [v11 appendAttributedString:v13];
  }

  v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v10];

  v15 = [[HKInfographicContentItem alloc] initWithTitle:v11 description:v14];
  [(HKInfographicContentItem *)v15 setBaseIdentifier:v9];

  return v15;
}

+ (id)_itemForHearingLossInfographicWithHearingLossClassification:(unint64_t)a3
{
  v5 = HKLocalizedStringForHearingLevelClassification();
  v6 = [a1 _localizedDescriptionForClassification:a3];
  v7 = [a1 _baseIdentifierForClassification:a3];
  v8 = [a1 _itemForTitle:v5 description:v6 baseIdentifier:v7];

  return v8;
}

+ (id)_localizedDescriptionForClassification:(unint64_t)a3
{
  v4 = [MEMORY[0x1E695DF58] currentLocale];
  v5 = [v4 usesMetricSystem];

  v6 = &stru_1F42FFBE0;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v8 = v7;
      v9 = @"HEARING_LEVEL_CLASSIFICATION_DESCRIPTION_NO_IMPAIRMENT";
      v10 = @"HEARING_LEVEL_CLASSIFICATION_DESCRIPTION_NO_IMPAIRMENT_METRIC";
      goto LABEL_12;
    }

    if (a3 == 2)
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
    switch(a3)
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
        if (v5)
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

+ (id)_baseIdentifierForClassification:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E81BB598[a3 - 1];
  }
}

- (void)contextView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v20 = a3;
  v7 = a4;
  v8 = [(HKAudiogramChartViewController *)self audiograms];
  if (!v8 || [(HKAudiogramChartViewController *)self currentAudiogramIndex]< 0)
  {

    goto LABEL_10;
  }

  v9 = [(HKAudiogramChartViewController *)self currentAudiogramIndex];
  v10 = [(HKAudiogramChartViewController *)self audiograms];
  v11 = [v10 count];

  if (v9 >= v11)
  {
LABEL_10:
    self->_selectedOverlayEar = 0;
    goto LABEL_11;
  }

  if (![v7 section])
  {
    v12 = [v20 displayTypeContextSections];
    v13 = [v12 objectAtIndex:0];

    v14 = [v13 items];
    v15 = [v14 objectAtIndex:{objc_msgSend(v7, "row")}];
    v16 = objc_opt_class();
    v17 = objc_opt_class();

    if (v16 != v17)
    {
      [HKAudiogramChartViewController contextView:a2 didSelectItemAtIndexPath:self];
    }

    v18 = [v13 items];
    v19 = [v18 objectAtIndex:{objc_msgSend(v7, "row")}];

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

- (id)graphViewControllerForIndex:(int64_t)a3
{
  v4 = objc_alloc_init(_HKAudiogramFrequencyAxisDimension);
  v5 = objc_alloc_init(HKNumericAxisConfiguration);
  [(HKAxisConfiguration *)v5 setMaxLabels:10];
  v6 = [HKScalarGraphViewController alloc];
  [(HKAudiogramChartViewController *)self chartHeight];
  v7 = [(HKScalarGraphViewController *)v6 initWithMinimumHeight:v4 labelDimension:3 labelEndings:v5 numericAxisConfigurationOverrides:?];
  v8 = [MEMORY[0x1E69DC888] hk_chartAxisLabelColor];
  v9 = [(HKGraphViewController *)v7 graphView];
  v10 = [v9 xAxis];
  v11 = [v10 preferredStyle];
  v12 = [MEMORY[0x1E69DB878] hk_roundedSystemFontWithSize:12.0 weight:*MEMORY[0x1E69DB970]];
  v13 = [HKAxisLabelStyle labelStyleWithColor:v8 font:v12 horizontalAlignment:1 verticalAlignment:3];
  [v11 setLabelStyle:v13];

  v14 = [(HKGraphViewController *)v7 graphView];
  v15 = [v14 xAxis];
  v16 = [v15 preferredStyle];
  [v16 setFillOuterPadding:0.0];

  v17 = [(HKGraphViewController *)v7 graphView];
  [v17 setMultiSeriesSelection:1];

  v18 = [(HKGraphViewController *)v7 graphView];
  [v18 setAxisInset:{0.0, 0.0, 0.0, 0.0}];

  v19 = [(HKGraphViewController *)v7 graphView];
  [(HKAudiogramChartViewController *)self _setupFixedFrequencyAxisForGraphView:v19];

  return v7;
}

- (id)graphSeriesForIndex:(int64_t)a3
{
  v5 = [(NSMutableArray *)self->_audiograms count];
  v6 = MEMORY[0x1E695E0F0];
  if ((a3 & 0x8000000000000000) == 0 && v5 > a3)
  {
    v7 = [(HKAudiogramChartViewController *)self audiograms];
    v8 = [v7 objectAtIndexedSubscript:a3];

    v6 = [(HKAudiogramChartViewController *)self _setupSeriesForAudiogramSample:v8];
  }

  return v6;
}

- (void)graphCollectionView:(id)a3 didChangeVisibleIndex:(int64_t)a4
{
  v6 = a3;
  audiograms = self->_audiograms;
  if (audiograms)
  {
    v11 = v6;
    audiograms = [(NSMutableArray *)audiograms count];
    v6 = v11;
    if (audiograms - 1 >= a4)
    {
      self->_currentAudiogramIndex = a4;
      v8 = [(NSMutableArray *)self->_audiograms objectAtIndexedSubscript:[(HKAudiogramChartViewController *)self currentAudiogramIndex]];
      [(HKAudiogramChartViewController *)self _updateOverlayPillsAndHeaderWithSample:v8];

      v9 = [(HKAudiogramChartViewController *)self _indexPathForCurrentSelections];
      contextView = self->_contextView;
      if (contextView)
      {
        if (v9)
        {
          [(HKDisplayTypeSectionedContextView *)contextView selectItemAtIndexPath:v9 animated:0 scrollPosition:0];
          [(HKAudiogramChartViewController *)self contextView:self->_contextView didSelectItemAtIndexPath:v9];
        }

        else
        {
          [(HKDisplayTypeSectionedContextView *)contextView deselectAllItemsAnimated:0];
          [(HKAudiogramChartViewController *)self _resetCurrentGraph];
        }
      }

      v6 = v11;
    }
  }

  MEMORY[0x1EEE66BB8](audiograms, v6);
}

- (id)_setupSeriesForAudiogramSample:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [v4 sensitivityPoints];
  v7 = [(HKAudiogramChartViewController *)self _audiogramSeriesWithSensitivityPoints:v6 seriesEar:2];
  [v5 hk_addNonNilObject:v7];

  v8 = [v4 sensitivityPoints];
  v9 = [(HKAudiogramChartViewController *)self _audiogramSeriesWithSensitivityPoints:v8 seriesEar:1];
  [v5 hk_addNonNilObject:v9];

  if (self->_selectedOverlayEar)
  {
    v10 = [v4 sensitivityPoints];
    v11 = [(HKAudiogramChartViewController *)self _audiogramPureToneAveragePointsSeriesWithSensitivityPoints:v10 seriesEar:self->_selectedOverlayEar];
    [v5 hk_addNonNilObject:v11];

    v12 = [(HKAudiogramChartViewController *)self _averageLevelOverlaySeriesWithAudiogram:v4 selectedEar:self->_selectedOverlayEar];
    [v5 hk_addNonNilObject:v12];
  }

  return v5;
}

- (id)_audiogramSeriesWithSensitivityPoints:(id)a3 seriesEar:(int64_t)a4
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__HKAudiogramChartViewController__audiogramSeriesWithSensitivityPoints_seriesEar___block_invoke;
  v11[3] = &__block_descriptor_40_e37_B16__0__HKAudiogramSensitivityPoint_8l;
  v11[4] = a4 != 1;
  v6 = [a3 hk_filter:v11];
  if ([v6 count])
  {
    v7 = a4 == 1;
    v8 = [HKAudiogramLineSeries audiogramLineSeriesForSeriesEar:a4 selectedEar:self->_selectedOverlayEar disableConnectionLines:0];
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

- (id)_audiogramPureToneAveragePointsSeriesWithSensitivityPoints:(id)a3 seriesEar:(int64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696C608] sharedBehavior];
  v8 = [v7 features];
  v9 = [v8 yodel];

  if (v9)
  {
    v10 = HKHearingLevelClassificationPureToneAverageFrequencies();
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __103__HKAudiogramChartViewController__audiogramPureToneAveragePointsSeriesWithSensitivityPoints_seriesEar___block_invoke;
    v19 = &unk_1E81BB578;
    v11 = v10;
    v20 = v11;
    v21 = a4 != 1;
    v12 = [v6 hk_filter:&v16];
    if ([v12 count])
    {
      v13 = [HKAudiogramLineSeries audiogramLineSeriesForSeriesEar:self->_selectedOverlayEar selectedEar:0 disableConnectionLines:1];
      v14 = [[HKAudiogramDataSource alloc] initWithSensitivityData:v12 forLeftEar:a4 == 1];
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

- (id)_averageLevelOverlaySeriesWithAudiogram:(id)a3 selectedEar:(int64_t)a4
{
  v4 = a4 == 1;
  v5 = MEMORY[0x1E69DC888];
  v6 = a3;
  v7 = [v5 hk_hearingHealthAudiogramAverageLineColor];
  v8 = [HKAudiogramAverageLevelSeries audiogramAverageLevelSeriesWithColor:v7];

  v9 = [[HKAudiogramAverageSensitivityDataSource alloc] initWithAudiogramSample:v6 isLeftEar:v4];
  [v8 setDataSource:v9];

  return v8;
}

- (void)_setupFixedFrequencyAxisForGraphView:(id)a3
{
  v3 = a3;
  v4 = [HKValueRange valueRangeWithMinValue:&unk_1F4384AE0 maxValue:&unk_1F4384AF0];
  [v3 setEffectiveAxisRange:v4 effectiveVisibleRangeCadence:v4 effectiveVisibleRangeActive:v4];
}

- (void)updateAnnotationDataSource:(id)a3 pointContexts:(id)a4
{
  v5 = self->_selectedOverlayEar != 0;
  v6 = a4;
  v7 = [(HKAudiogramChartViewController *)self _currentAudiogramSample];
  v9 = [v7 startDate];

  v8 = [(HKAudiogramChartViewController *)self annotationViewDataSource];
  [v8 updateWithPointSelectionContexts:v6 date:v9 isAverage:v5];
}

- (void)_addControllerAsChildController:(id)a3
{
  v4 = a3;
  [(HKAudiogramChartViewController *)self addChildViewController:v4];
  [v4 didMoveToParentViewController:self];
}

- (void)_pinView:(id)a3 toParentGuide:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [v7 leadingAnchor];
  v9 = [v6 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [(HKAudiogramChartViewController *)self setLeadingMarginConstraint:v10];

  v11 = [(HKAudiogramChartViewController *)self leadingMarginConstraint];
  [v11 setActive:1];

  v12 = [v7 trailingAnchor];
  v13 = [v6 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [(HKAudiogramChartViewController *)self setTrailingMarginConstraint:v14];

  v15 = [(HKAudiogramChartViewController *)self trailingMarginConstraint];
  [v15 setActive:1];

  v16 = [v7 topAnchor];
  v17 = [v6 topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  v21 = [v7 bottomAnchor];

  v19 = [v6 bottomAnchor];

  v20 = [v21 constraintEqualToAnchor:v19];
  [v20 setActive:1];
}

- (id)_findNavigationController
{
  v3 = [(HKAudiogramChartViewController *)self navigationController];

  if (v3)
  {
    v4 = [(HKAudiogramChartViewController *)self navigationController];
    goto LABEL_3;
  }

  v6 = [(HKAudiogramChartViewController *)self view];
  v4 = [v6 nextResponder];

  if (v4)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v4;
        v8 = [v7 navigationController];

        if (v8)
        {
          v4 = [v7 navigationController];

          break;
        }
      }

      v9 = [v4 nextResponder];

      v4 = v9;
    }

    while (v9);
  }

LABEL_3:

  return v4;
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

+ (BOOL)testChartPointCreation:(id)a3 leftEarSeries:(BOOL)a4 expectedChartPoints:(id)a5 failureMessage:(id *)a6
{
  v7 = a4;
  v49 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = [HKAudiogramChartPoint chartPointsFromSensitivityPoints:a3 isLeftEar:v7];
  v11 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v11 setNumberStyle:1];
  v12 = [v9 componentsSeparatedByString:@""];;
  v13 = [v12 count];
  if (v13 != [v10 count])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected point count doesn't match actual point count: %ld != %ld", objc_msgSend(v12, "count"), objc_msgSend(v10, "count")];
    *a6 = v37 = 0;
    goto LABEL_20;
  }

  v42 = v9;
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
  v41 = a6;
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
        *v41 = LABEL_18:;

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
      v30 = [v29 xValueAsGenericType];
      [v30 doubleValue];
      v32 = v31;

      v33 = [v10 objectAtIndexedSubscript:v16];
      v34 = [v33 yValue];
      [v34 doubleValue];
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

  v9 = v42;
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