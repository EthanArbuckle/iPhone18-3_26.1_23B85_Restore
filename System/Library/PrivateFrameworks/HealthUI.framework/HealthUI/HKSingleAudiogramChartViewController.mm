@interface HKSingleAudiogramChartViewController
+ (id)_itemForHearingLossInfographicJapanDisclaimer;
+ (id)_itemForHearingLossInfographicWithHearingLossClassification:(unint64_t)classification;
+ (id)_itemForTitle:(id)title description:(id)description;
+ (id)_localizedDescriptionForClassification:(unint64_t)classification;
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1;
+ (id)hearingLossInfographicViewController;
- (BOOL)_shouldShowEnhancedUI;
- (HKSingleAudiogramChartViewController)initWithApplicationItems:(id)items staticAudiogram:(id)audiogram factorDisplayTypes:(id)types chartHeight:(double)height hideEnhancedUI:(BOOL)i;
- (HKSingleAudiogramChartViewController)initWithHealthStore:(id)store staticAudiogram:(id)audiogram selectedFrequency:(id)frequency;
- (id)_annotationForFrequencyString:(id)string;
- (id)_attributedLabelTextOverrideWithHearingLevelClassification:(id)classification valueAndUnit:(id)unit metricColors:(id)colors selectedMetricColors:(id)metricColors;
- (id)_attributedLabelTextWithHearingLevelClassification:(id)classification valueAndUnit:(id)unit metricColors:(id)colors selectedMetricColors:(id)metricColors isSelected:(BOOL)selected;
- (id)_audiogramDisplayType;
- (id)_audiogramPureToneAveragePointsSeriesWithSensitivityPoints:(id)points selectedFrequency:(id)frequency seriesEar:(int64_t)ear;
- (id)_audiogramSeriesWithSensitivityPoints:(id)points seriesEar:(int64_t)ear disabledStyleOverride:(BOOL)override;
- (id)_averageLevelOverlaySeriesWithAudiogram:(id)audiogram selectedEar:(int64_t)ear;
- (id)_averageSectionFromAudiogram:(id)audiogram;
- (id)_buildContextItemForEar:(int64_t)ear metrics:(id)metrics;
- (id)_earSpecificColorForEar:(int64_t)ear;
- (id)_findNavigationController;
- (id)_healthStore;
- (id)_indexPathForCurrentSelections;
- (id)_sectionsFromAudiogram:(id)audiogram;
- (id)_setupSeriesForAudiogramSample:(id)sample;
- (id)_unitController;
- (id)_updateController;
- (id)graphSeries;
- (id)newGraphViewController;
- (void)_addContextView;
- (void)_addControllerAsChildController:(id)controller;
- (void)_addHorizontalAxisAnnotationToGraphView:(id)view forSelectedFrequency:(id)frequency;
- (void)_addShowMoreDataButton:(id)button;
- (void)_pinView:(id)view toParentGuide:(id)guide pinBottom:(BOOL)bottom;
- (void)_setNeedsReloadSeries;
- (void)_setupFixedFrequencyAxisForGraphView:(id)view;
- (void)_showMoreData:(id)data;
- (void)_updateAudiogramSample:(id)sample error:(id)error;
- (void)_updateHeaderState;
- (void)_updateOverlayPillsAndHeader;
- (void)contextView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)didTapOnInfoButtonFromCurrentValueView:(id)view;
- (void)graphView:(id)view didUpdateSelectedPoint:(id)point;
- (void)graphViewDidEndSelection:(id)selection;
- (void)queryForAudiogram;
- (void)redrawCurrentCell;
- (void)updateAnnotationDataSource:(id)source pointContexts:(id)contexts;
- (void)updateStaticAudiogram:(id)audiogram;
- (void)viewDidLoad;
@end

@implementation HKSingleAudiogramChartViewController

+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1
{
  typesCopy = types;
  itemsCopy = items;
  v15 = [[self alloc] initWithApplicationItems:itemsCopy staticAudiogram:0 factorDisplayTypes:typesCopy chartHeight:0 hideEnhancedUI:350.0];

  [v15 queryForAudiogram];

  return v15;
}

- (HKSingleAudiogramChartViewController)initWithHealthStore:(id)store staticAudiogram:(id)audiogram selectedFrequency:(id)frequency
{
  frequencyCopy = frequency;
  audiogramCopy = audiogram;
  storeCopy = store;
  v12 = objc_alloc_init(HKOverlayRoomApplicationItems);
  v13 = [objc_alloc(MEMORY[0x1E696C518]) initWithHealthStore:storeCopy];
  [(HKOverlayRoomApplicationItems *)v12 setUnitController:v13];

  v14 = [[HKSampleTypeUpdateController alloc] initWithHealthStore:storeCopy];
  [(HKOverlayRoomApplicationItems *)v12 setSampleTypeUpdateController:v14];

  v15 = [HKDisplayTypeController sharedInstanceForHealthStore:storeCopy];
  [(HKOverlayRoomApplicationItems *)v12 setDisplayTypeController:v15];

  [(HKOverlayRoomApplicationItems *)v12 setHealthStore:storeCopy];
  v16 = [(HKSingleAudiogramChartViewController *)self initWithApplicationItems:v12 staticAudiogram:audiogramCopy factorDisplayTypes:0 chartHeight:1 hideEnhancedUI:350.0];

  if (v16)
  {
    v16->_isStatic = 1;
    v16->_isManualIngestion = 1;
    objc_storeStrong(&v16->_selectedFrequency, frequency);
  }

  return v16;
}

- (HKSingleAudiogramChartViewController)initWithApplicationItems:(id)items staticAudiogram:(id)audiogram factorDisplayTypes:(id)types chartHeight:(double)height hideEnhancedUI:(BOOL)i
{
  itemsCopy = items;
  audiogramCopy = audiogram;
  typesCopy = types;
  v35.receiver = self;
  v35.super_class = HKSingleAudiogramChartViewController;
  v16 = [(HKSingleAudiogramChartViewController *)&v35 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_applicationItems, items);
    v17->_chartHeight = height;
    objc_storeStrong(&v17->_audiogram, audiogram);
    currentValueView = v17->_currentValueView;
    v17->_currentValueView = 0;

    currentValueViewDataSource = v17->_currentValueViewDataSource;
    v17->_currentValueViewDataSource = 0;

    annotationViewDataSource = v17->_annotationViewDataSource;
    v17->_annotationViewDataSource = 0;

    v17->_selectedOverlayEar = 0;
    sections = v17->_sections;
    v17->_sections = 0;

    v17->_audiogramsFetched = audiogramCopy != 0;
    v17->_isStatic = audiogramCopy != 0;
    navigationItem = [(HKSingleAudiogramChartViewController *)v17 navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];

    v23 = objc_alloc(MEMORY[0x1E696C178]);
    v24 = *MEMORY[0x1E696B8A0];
    healthStore = [itemsCopy healthStore];
    v26 = [v23 initWithFeatureIdentifier:v24 healthStore:healthStore];
    hearingTestFeatureStatus = v17->_hearingTestFeatureStatus;
    v17->_hearingTestFeatureStatus = v26;

    objc_storeStrong(&v17->_factorDisplayTypes, types);
    v17->_hideEnhancedUI = i;
    selectedFrequency = v17->_selectedFrequency;
    v17->_selectedFrequency = 0;

    graphSeriesCache = v17->_graphSeriesCache;
    v17->_graphSeriesCache = MEMORY[0x1E695E0F0];

    v30 = [HKAudiogramAnalyticsManager alloc];
    healthStore2 = [(HKOverlayRoomApplicationItems *)v17->_applicationItems healthStore];
    v32 = [(HKAudiogramAnalyticsManager *)v30 initWithHealthStore:healthStore2];
    analyticsManager = v17->_analyticsManager;
    v17->_analyticsManager = v32;
  }

  return v17;
}

- (void)dealloc
{
  _updateController = [(HKSingleAudiogramChartViewController *)self _updateController];
  audiogramSampleType = [MEMORY[0x1E696C3D0] audiogramSampleType];
  [_updateController removeObserver:self forType:audiogramSampleType];

  v5.receiver = self;
  v5.super_class = HKSingleAudiogramChartViewController;
  [(HKSingleAudiogramChartViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v69 = *MEMORY[0x1E69E9840];
  if (![(HKSingleAudiogramChartViewController *)self isStatic])
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x1E696B950];
    if (os_log_type_enabled(*MEMORY[0x1E696B950], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1C3942000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Chart is not static, starting update observer.", buf, 0xCu);
    }

    _updateController = [(HKSingleAudiogramChartViewController *)self _updateController];
    audiogramSampleType = [MEMORY[0x1E696C3D0] audiogramSampleType];
    [_updateController addObserver:self forType:audiogramSampleType];

    [(HKSingleAudiogramChartViewController *)self queryForAudiogram];
  }

  v65.receiver = self;
  v65.super_class = HKSingleAudiogramChartViewController;
  [(HKSingleAudiogramChartViewController *)&v65 viewDidLoad];
  v6 = objc_alloc(MEMORY[0x1E69DCF90]);
  v7 = [v6 initWithArrangedSubviews:MEMORY[0x1E695E0F0]];
  stackView = self->_stackView;
  self->_stackView = v7;

  [(UIStackView *)self->_stackView setAxis:1];
  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView setDistribution:0];
  v9 = self->_stackView;
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(UIStackView *)v9 setBackgroundColor:systemBackgroundColor];

  layer = [(UIStackView *)self->_stackView layer];
  [layer setCornerRadius:26.0];

  if (![(HKSingleAudiogramChartViewController *)self _shouldShowManualIngestionUI])
  {
    v12 = [HKAudiogramCurrentValueViewDataSource alloc];
    applicationItems = [(HKSingleAudiogramChartViewController *)self applicationItems];
    v14 = [(HKAudiogramCurrentValueViewDataSource *)v12 initWithApplicationItems:applicationItems];
    [(HKSingleAudiogramChartViewController *)self setCurrentValueViewDataSource:v14];

    v15 = [[HKInteractiveChartAnnotationView alloc] initWithContext:0];
    [(HKSingleAudiogramChartViewController *)self setCurrentValueView:v15];

    currentValueView = [(HKSingleAudiogramChartViewController *)self currentValueView];
    [currentValueView setShowsInfoButton:{-[HKSingleAudiogramChartViewController _shouldShowManualIngestionUI](self, "_shouldShowManualIngestionUI") ^ 1}];

    currentValueView2 = [(HKSingleAudiogramChartViewController *)self currentValueView];
    [currentValueView2 setDelegate:self];

    currentValueViewDataSource = [(HKSingleAudiogramChartViewController *)self currentValueViewDataSource];
    currentValueView3 = [(HKSingleAudiogramChartViewController *)self currentValueView];
    [currentValueView3 setDataSource:currentValueViewDataSource];

    stackView = [(HKSingleAudiogramChartViewController *)self stackView];
    currentValueView4 = [(HKSingleAudiogramChartViewController *)self currentValueView];
    [stackView addArrangedSubview:currentValueView4];

    currentValueView5 = [(HKSingleAudiogramChartViewController *)self currentValueView];
    heightAnchor = [currentValueView5 heightAnchor];
    v24 = [heightAnchor constraintEqualToConstant:90.0];
    [v24 setActive:1];
  }

  newGraphViewController = [(HKSingleAudiogramChartViewController *)self newGraphViewController];
  [(HKSingleAudiogramChartViewController *)self setScalarGraphViewController:newGraphViewController];

  scalarGraphViewController = [(HKSingleAudiogramChartViewController *)self scalarGraphViewController];
  view = [scalarGraphViewController view];
  heightAnchor2 = [view heightAnchor];
  [(HKSingleAudiogramChartViewController *)self chartHeight];
  v29 = [heightAnchor2 constraintEqualToConstant:?];
  [v29 setActive:1];

  scalarGraphViewController2 = [(HKSingleAudiogramChartViewController *)self scalarGraphViewController];
  [(HKSingleAudiogramChartViewController *)self _addControllerAsChildController:scalarGraphViewController2];

  stackView2 = [(HKSingleAudiogramChartViewController *)self stackView];
  scalarGraphViewController3 = [(HKSingleAudiogramChartViewController *)self scalarGraphViewController];
  view2 = [scalarGraphViewController3 view];
  [stackView2 addArrangedSubview:view2];

  if (![(HKSingleAudiogramChartViewController *)self _shouldShowManualIngestionUI])
  {
    [(HKSingleAudiogramChartViewController *)self _addContextView];
  }

  if ([(HKSingleAudiogramChartViewController *)self _shouldShowManualIngestionUI])
  {
    [(UIStackView *)self->_stackView setLayoutMarginsRelativeArrangement:1];
    [(UIStackView *)self->_stackView setLayoutMargins:26.0, 0.0, 26.0, 0.0];
  }

  view3 = [(HKSingleAudiogramChartViewController *)self view];
  [view3 addSubview:self->_stackView];

  stackView3 = [(HKSingleAudiogramChartViewController *)self stackView];
  heightAnchor3 = [stackView3 heightAnchor];
  [(HKSingleAudiogramChartViewController *)self chartHeight];
  v38 = v37;
  currentValueView6 = [(HKSingleAudiogramChartViewController *)self currentValueView];
  [currentValueView6 frame];
  v41 = [heightAnchor3 constraintGreaterThanOrEqualToConstant:v38 + v40];
  stackViewHeightConstraint = self->_stackViewHeightConstraint;
  self->_stackViewHeightConstraint = v41;

  [(NSLayoutConstraint *)self->_stackViewHeightConstraint setActive:1];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  arrangedSubviews = [(UIStackView *)self->_stackView arrangedSubviews];
  v44 = [arrangedSubviews countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (v44)
  {
    v46 = v44;
    v47 = *v62;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v62 != v47)
        {
          objc_enumerationMutation(arrangedSubviews);
        }

        v49 = *(*(&v61 + 1) + 8 * i);
        LODWORD(v45) = 1148846080;
        [v49 setContentCompressionResistancePriority:1 forAxis:v45];
        LODWORD(v50) = 1148846080;
        [v49 setContentHuggingPriority:1 forAxis:v50];
      }

      v46 = [arrangedSubviews countByEnumeratingWithState:&v61 objects:v66 count:16];
    }

    while (v46);
  }

  if ([(HKSingleAudiogramChartViewController *)self _shouldShowEnhancedUI])
  {
    [(HKSingleAudiogramChartViewController *)self _addShowMoreDataButton:self->_stackView];
  }

  v51 = self->_stackView;
  view4 = [(HKSingleAudiogramChartViewController *)self view];
  safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
  [(HKSingleAudiogramChartViewController *)self _pinView:v51 toParentGuide:safeAreaLayoutGuide pinBottom:1];

  v54 = [HKAudiogramAnnotationViewDataSource alloc];
  applicationItems2 = [(HKSingleAudiogramChartViewController *)self applicationItems];
  v56 = [(HKAudiogramAnnotationViewDataSource *)v54 initWithApplicationItems:applicationItems2];
  [(HKSingleAudiogramChartViewController *)self setAnnotationViewDataSource:v56];

  v57 = [HKLollipopController alloc];
  annotationViewDataSource = [(HKSingleAudiogramChartViewController *)self annotationViewDataSource];
  stackView4 = [(HKSingleAudiogramChartViewController *)self stackView];
  v60 = [(HKLollipopController *)v57 initWithAnnotationDataSource:annotationViewDataSource parentView:stackView4 delegate:self];
  [(HKSingleAudiogramChartViewController *)self setLollipopController:v60];

  if (self->_audiogramsFetched)
  {
    [(HKSingleAudiogramChartViewController *)self _updateOverlayPillsAndHeader];
  }
}

- (void)_addContextView
{
  v3 = [[HKDisplayTypeSectionedContextView alloc] initWithStyle:2];
  contextView = self->_contextView;
  self->_contextView = v3;

  [(HKDisplayTypeSectionedContextView *)self->_contextView setUseBottomInsets:[(HKSingleAudiogramChartViewController *)self _shouldShowEnhancedUI]^ 1];
  [(HKDisplayTypeSectionedContextView *)self->_contextView setUseHorizontalInsets:1];
  [(HKDisplayTypeSectionedContextView *)self->_contextView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HKDisplayTypeSectionedContextView *)self->_contextView setDelegate:self];
  [(UIStackView *)self->_stackView addArrangedSubview:self->_contextView];
  [(HKDisplayTypeSectionedContextView *)self->_contextView setSemanticContentAttribute:3];
  v5 = self->_contextView;
  v6 = [(HKSingleAudiogramChartViewController *)self _sectionsFromAudiogram:0];
  [(HKDisplayTypeSectionedContextView *)v5 setDisplayTypeContextSections:v6];
}

- (BOOL)_shouldShowEnhancedUI
{
  if ([(HKSingleAudiogramChartViewController *)self hideEnhancedUI])
  {
    return 0;
  }

  else
  {
    return ![(HKSingleAudiogramChartViewController *)self _shouldShowManualIngestionUI];
  }
}

- (void)_addShowMoreDataButton:(id)button
{
  v4 = MEMORY[0x1E69DC738];
  buttonCopy = button;
  v10 = [v4 hk_chartShowMoreDataButtonWithTitleOverride:0 target:self action:sel__showMoreData_];
  LODWORD(v6) = 1144750080;
  [v10 setContentHuggingPriority:1 forAxis:v6];
  arrangedSubviews = [buttonCopy arrangedSubviews];
  arrangedSubviews2 = [buttonCopy arrangedSubviews];
  v9 = [arrangedSubviews objectAtIndexedSubscript:{objc_msgSend(arrangedSubviews2, "count") - 1}];

  [buttonCopy addArrangedSubview:v10];
  [buttonCopy setCustomSpacing:v9 afterView:0.0];
}

- (void)_showMoreData:(id)data
{
  _findNavigationController = [(HKSingleAudiogramChartViewController *)self _findNavigationController];
  if (_findNavigationController)
  {
    v12 = _findNavigationController;
    applicationItems = [(HKSingleAudiogramChartViewController *)self applicationItems];
    timeScopeController = [applicationItems timeScopeController];
    [timeScopeController setSelectedTimeScope:2];

    v7 = [HKAudiogramLongitudinalOverlayRoomViewController alloc];
    applicationItems2 = [(HKSingleAudiogramChartViewController *)self applicationItems];
    factorDisplayTypes = [(HKSingleAudiogramChartViewController *)self factorDisplayTypes];
    v10 = [(HKAudiogramLongitudinalOverlayRoomViewController *)v7 initWithApplicationItems:applicationItems2 factorDisplayTypes:factorDisplayTypes];

    v11 = [[HKModalNavigationController alloc] initWithRootViewController:v10];
    [v12 hk_presentModalCardViewController:v11 fullScreen:1 animated:1 completion:0];

    _findNavigationController = v12;
  }
}

- (void)queryForAudiogram
{
  v18 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = *MEMORY[0x1E696B950];
  if (os_log_type_enabled(*MEMORY[0x1E696B950], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1C3942000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Query for recent audiogram called.", buf, 0xCu);
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:*MEMORY[0x1E696BE30] ascending:0];
  v15 = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];

  v7 = objc_alloc(MEMORY[0x1E696C3C8]);
  audiogramSampleType = [MEMORY[0x1E696C3D0] audiogramSampleType];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__HKSingleAudiogramChartViewController_queryForAudiogram__block_invoke;
  v12[3] = &unk_1E81BBD58;
  v13 = v4;
  selfCopy2 = self;
  v9 = v4;
  v10 = [v7 initWithSampleType:audiogramSampleType predicate:0 limit:1 sortDescriptors:v6 resultsHandler:v12];

  _healthStore = [(HKSingleAudiogramChartViewController *)self _healthStore];
  [_healthStore executeQuery:v10];
}

void __57__HKSingleAudiogramChartViewController_queryForAudiogram__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    [*(a1 + 32) timeIntervalSinceNow];
    v9 = *(*(a1 + 40) + 1152);
    v10 = +[HKAudiogramPerformanceAnalytics metricForAudiogramQueryWithQueryDuration:audiogramCount:](HKAudiogramPerformanceAnalytics, "metricForAudiogramQueryWithQueryDuration:audiogramCount:", [v6 count], -v8);
    [v9 submitPerformanceAnalyticsWithMetric:v10];

    v11 = *(a1 + 40);
    v12 = [v6 firstObject];
    [v11 _updateAudiogramSample:v12 error:v7];
  }

  else
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x1E696B950];
    if (os_log_type_enabled(*MEMORY[0x1E696B950], OS_LOG_TYPE_ERROR))
    {
      __57__HKSingleAudiogramChartViewController_queryForAudiogram__block_invoke_cold_1(a1, v7, v13);
    }
  }
}

- (void)updateStaticAudiogram:(id)audiogram
{
  audiogramCopy = audiogram;
  if ([(HKSingleAudiogramChartViewController *)self isStatic])
  {
    [(HKSingleAudiogramChartViewController *)self setAudiogram:audiogramCopy];
    [(HKSingleAudiogramChartViewController *)self _updateOverlayPillsAndHeader];
  }
}

- (void)_updateAudiogramSample:(id)sample error:(id)error
{
  sampleCopy = sample;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__HKSingleAudiogramChartViewController__updateAudiogramSample_error___block_invoke;
  v7[3] = &unk_1E81B5AD0;
  v7[4] = self;
  v8 = sampleCopy;
  v6 = sampleCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __69__HKSingleAudiogramChartViewController__updateAudiogramSample_error___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = 1;
  *(*(a1 + 32) + 995) = 1;
  v3 = [*(a1 + 32) audiogram];
  if (v3 && *(a1 + 40))
  {
    v4 = [*(a1 + 32) audiogram];
    v5 = [v4 UUID];
    v6 = [v5 UUIDString];
    v7 = [*(a1 + 40) UUID];
    v8 = [v7 UUIDString];
    v2 = [v6 isEqualToString:v8] ^ 1;
  }

  _HKInitializeLogging();
  v9 = *MEMORY[0x1E696B950];
  if (os_log_type_enabled(*MEMORY[0x1E696B950], OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    v11 = *(a1 + 32);
    if (v2)
    {
      v10 = @"YES";
    }

    v12 = 138543618;
    v13 = v11;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_1C3942000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Should replace audiogram sample: %{public}@.", &v12, 0x16u);
  }

  if (v2)
  {
    [*(a1 + 32) setAudiogram:*(a1 + 40)];
    [*(a1 + 32) _updateOverlayPillsAndHeader];
  }
}

- (id)_audiogramDisplayType
{
  applicationItems = [(HKSingleAudiogramChartViewController *)self applicationItems];
  displayTypeController = [applicationItems displayTypeController];
  audiogramSampleType = [MEMORY[0x1E696C3D0] audiogramSampleType];
  v5 = [displayTypeController displayTypeForObjectType:audiogramSampleType];

  return v5;
}

- (id)_healthStore
{
  applicationItems = [(HKSingleAudiogramChartViewController *)self applicationItems];
  healthStore = [applicationItems healthStore];

  return healthStore;
}

- (id)_unitController
{
  applicationItems = [(HKSingleAudiogramChartViewController *)self applicationItems];
  unitController = [applicationItems unitController];

  return unitController;
}

- (id)_updateController
{
  applicationItems = [(HKSingleAudiogramChartViewController *)self applicationItems];
  sampleTypeUpdateController = [applicationItems sampleTypeUpdateController];

  return sampleTypeUpdateController;
}

- (id)_sectionsFromAudiogram:(id)audiogram
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [(HKSingleAudiogramChartViewController *)self _averageSectionFromAudiogram:audiogram];
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
  v7 = [(HKSingleAudiogramChartViewController *)self _buildContextItemForEar:1 metrics:leftEarMetrics];

  hearingLevelSummary2 = [audiogramCopy hearingLevelSummary];

  rightEarMetrics = [hearingLevelSummary2 rightEarMetrics];
  v10 = [(HKSingleAudiogramChartViewController *)self _buildContextItemForEar:2 metrics:rightEarMetrics];

  v11 = objc_alloc_init(_HKDisplayTypeAudiogramContextItemSection2);
  [(_HKDisplayTypeAudiogramContextItemSection2 *)v11 setTitle:0];
  v14[0] = v7;
  v14[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [(_HKDisplayTypeAudiogramContextItemSection2 *)v11 setItems:v12];

  return v11;
}

- (id)_buildContextItemForEar:(int64_t)ear metrics:(id)metrics
{
  metricsCopy = metrics;
  v7 = [(HKSingleAudiogramChartViewController *)self _earSpecificColorForEar:ear];
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  v9 = [HKUIMetricColors defaultContextViewColorsUsingColor:secondarySystemBackgroundColor];

  v10 = [HKUIMetricColors categoryColorsWithColor:v7];
  v11 = objc_alloc_init(HKDisplayTypeContextAudiogramItem2);
  [(HKDisplayTypeContextItem *)v11 setInfoHidden:1];
  [(HKDisplayTypeContextItem *)v11 setMetricColors:v9];
  [(HKDisplayTypeContextItem *)v11 setSelectedMetricColors:v10];
  [(HKDisplayTypeContextAudiogramItem2 *)v11 setEar:ear];
  if (ear == 1)
  {
    v12 = @"LeftAverage";
  }

  else
  {
    v12 = @"RightAverage";
  }

  if (ear == 1)
  {
    v13 = @"LEFT_AVERAGE_HEARING";
  }

  else
  {
    v13 = @"RIGHT_AVERAGE_HEARING";
  }

  v14 = [MEMORY[0x1E696AEC0] hk_chartOverlayAccessibilityIdentifier:v12];
  [(HKDisplayTypeContextItem *)v11 setAccessibilityIdentifier:v14];

  v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v16 = [v15 localizedStringForKey:v13 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(HKDisplayTypeContextItem *)v11 setTitle:v16];

  averageSensitivity = [metricsCopy averageSensitivity];
  if (averageSensitivity)
  {
    v32 = HKIntegerFormatter();
    [averageSensitivity _unit];
    v18 = v33 = self;
    [averageSensitivity doubleValueForUnit:v18];
    v20 = v19;

    v21 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
    v22 = [v32 stringFromNumber:v21];

    [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v23 = v34 = v7;
    v24 = [v23 localizedStringForKey:@"DECIBELS_HEARING_NUMBERLESS_UNIT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    [(HKDisplayTypeContextItem *)v11 setValue:v22];
    [(HKDisplayTypeContextItem *)v11 setUnit:v24];
    averageSensitivity2 = [metricsCopy averageSensitivity];
    HKHearingLevelClassificationForSensitivity();
    v26 = metricsCopy;

    v27 = HKLocalizedStringForHearingLevelClassification();
    v28 = HKFormatValueAndUnit(v22, v24);
    v29 = [(HKSingleAudiogramChartViewController *)v33 _attributedLabelTextOverrideWithHearingLevelClassification:v27 valueAndUnit:v28 metricColors:v9 selectedMetricColors:v10];
    [(HKDisplayTypeContextItem *)v11 setAttributedLabelTextOverride:v29];

    v30 = v32;
    metricsCopy = v26;

    v7 = v34;
  }

  else
  {
    v30 = HKUILocalizedString(@"NO_DATA");
    [(HKDisplayTypeContextItem *)v11 setValue:v30];
  }

  return v11;
}

- (id)_attributedLabelTextOverrideWithHearingLevelClassification:(id)classification valueAndUnit:(id)unit metricColors:(id)colors selectedMetricColors:(id)metricColors
{
  metricColorsCopy = metricColors;
  colorsCopy = colors;
  unitCopy = unit;
  classificationCopy = classification;
  v14 = [(HKSingleAudiogramChartViewController *)self _attributedLabelTextWithHearingLevelClassification:classificationCopy valueAndUnit:unitCopy metricColors:colorsCopy selectedMetricColors:metricColorsCopy isSelected:0];
  v15 = [(HKSingleAudiogramChartViewController *)self _attributedLabelTextWithHearingLevelClassification:classificationCopy valueAndUnit:unitCopy metricColors:colorsCopy selectedMetricColors:metricColorsCopy isSelected:1];

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

- (void)_updateOverlayPillsAndHeader
{
  [(HKSingleAudiogramChartViewController *)self _resetCurrentGraph];
  contextView = self->_contextView;
  if (contextView)
  {
    audiogram = [(HKSingleAudiogramChartViewController *)self audiogram];
    v5 = [(HKSingleAudiogramChartViewController *)self _sectionsFromAudiogram:audiogram];
    [(HKDisplayTypeSectionedContextView *)contextView setDisplayTypeContextSections:v5];
  }

  [(HKSingleAudiogramChartViewController *)self _updateHeaderState];
}

- (void)_updateHeaderState
{
  currentValueViewDataSource = [(HKSingleAudiogramChartViewController *)self currentValueViewDataSource];
  audiogram = [(HKSingleAudiogramChartViewController *)self audiogram];
  [currentValueViewDataSource updateWithAudiogram:audiogram];

  LODWORD(currentValueViewDataSource) = [(HKSingleAudiogramChartViewController *)self _hasAudiogramData];
  currentValueView = [(HKSingleAudiogramChartViewController *)self currentValueView];
  v6 = currentValueView;
  if (currentValueViewDataSource)
  {
    [currentValueView reloadData];
  }

  else
  {
    [currentValueView showNoDataStatus];
  }
}

- (void)_addHorizontalAxisAnnotationToGraphView:(id)view forSelectedFrequency:(id)frequency
{
  if (frequency)
  {
    viewCopy = view;
    [frequency floatValue];
    v8 = v7;
    [HKAudiogramChartPoint axisValueFromFrequency:v7];
    v10 = v9;
    v14 = _formattedFrequencyStringForFrequency(0, 1, v8);
    v11 = [(HKSingleAudiogramChartViewController *)self _annotationForFrequencyString:v14];
    xAxis = [viewCopy xAxis];

    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
    [xAxis addAxisAnnotation:v11 modelCoordinate:v13];
  }
}

- (id)_annotationForFrequencyString:(id)string
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DB878];
  v4 = *MEMORY[0x1E69DB970];
  stringCopy = string;
  v6 = [v3 hk_roundedSystemFontWithSize:11.0 weight:v4];
  v7 = MEMORY[0x1E69DB878];
  [v6 pointSize];
  v8 = [v7 hk_roundedSystemFontWithSize:? weight:?];
  v13[0] = *MEMORY[0x1E69DB650];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v13[1] = *MEMORY[0x1E69DB648];
  v14[0] = labelColor;
  v14[1] = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:stringCopy attributes:v10];

  return v11;
}

- (void)didTapOnInfoButtonFromCurrentValueView:(id)view
{
  hearingLossInfographicViewController = [objc_opt_class() hearingLossInfographicViewController];
  [(HKSingleAudiogramChartViewController *)self presentViewController:hearingLossInfographicViewController animated:1 completion:0];
}

+ (id)hearingLossInfographicViewController
{
  v21[6] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v20 localizedStringForKey:@"HEARING_LEVEL_CLASSIFICATION_DESCRIPTION_INTRODUCTION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Yodel"];
  v5 = [self _itemForTitle:0 description:v4];
  v21[0] = v5;
  v6 = [self _itemForHearingLossInfographicWithHearingLossClassification:1];
  v21[1] = v6;
  v7 = [self _itemForHearingLossInfographicWithHearingLossClassification:2];
  v21[2] = v7;
  v8 = [self _itemForHearingLossInfographicWithHearingLossClassification:3];
  v21[3] = v8;
  v9 = [self _itemForHearingLossInfographicWithHearingLossClassification:4];
  v21[4] = v9;
  v10 = [self _itemForHearingLossInfographicWithHearingLossClassification:5];
  v21[5] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:6];
  v12 = [v3 initWithArray:v11];

  v13 = HKCurrentLocaleCountryCodeIfUnknown();
  LODWORD(v4) = [v13 isEqualToString:*MEMORY[0x1E696B738]];

  if (v4)
  {
    _itemForHearingLossInfographicJapanDisclaimer = [self _itemForHearingLossInfographicJapanDisclaimer];
    [v12 addObject:_itemForHearingLossInfographicJapanDisclaimer];
  }

  v15 = [[HKInfographicViewController alloc] initWithItems:v12];
  v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v17 = [v16 localizedStringForKey:@"HEARING_LEVEL_CLASSIFICATIONS_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Yodel"];
  [(HKInfographicViewController *)v15 setTitle:v17];

  v18 = [[HKModalNavigationController alloc] initWithRootViewController:v15];

  return v18;
}

+ (id)_itemForTitle:(id)title description:(id)description
{
  titleCopy = title;
  v6 = MEMORY[0x1E696AD40];
  descriptionCopy = description;
  v8 = objc_alloc_init(v6);
  if (titleCopy)
  {
    v9 = HKInteractiveChartInfographicTitleAttributes();
    v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:titleCopy attributes:v9];
    [v8 appendAttributedString:v10];
  }

  v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:descriptionCopy];

  v12 = [[HKInfographicContentItem alloc] initWithTitle:v8 description:v11];

  return v12;
}

+ (id)_itemForHearingLossInfographicWithHearingLossClassification:(unint64_t)classification
{
  v5 = HKLocalizedStringForHearingLevelClassification();
  v6 = [self _localizedDescriptionForClassification:classification];
  v7 = [self _itemForTitle:v5 description:v6];

  return v7;
}

+ (id)_itemForHearingLossInfographicJapanDisclaimer
{
  v2 = objc_alloc(MEMORY[0x1E696AAB0]);
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"HEARING_LOSS_INFOGRAPHIC_JAPAN_DISCLAIMER_DESCRIPTION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Yodel"];
  v5 = HKInteractiveChartInfographicFootnoteAttributes();
  v6 = [v2 initWithString:v4 attributes:v5];

  v7 = [[HKInfographicTextItem alloc] initWithDescription:v6];

  return v7;
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

- (void)contextView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  audiogram = [(HKSingleAudiogramChartViewController *)self audiogram];

  if (audiogram)
  {
    if (![pathCopy section])
    {
      displayTypeContextSections = [viewCopy displayTypeContextSections];
      v10 = [displayTypeContextSections objectAtIndex:0];

      items = [v10 items];
      v12 = [items objectAtIndex:{objc_msgSend(pathCopy, "row")}];
      v13 = objc_opt_class();
      v14 = objc_opt_class();

      if (v13 != v14)
      {
        [HKSingleAudiogramChartViewController contextView:a2 didSelectItemAtIndexPath:self];
      }

      items2 = [v10 items];
      v16 = [items2 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

      self->_selectedOverlayEar = [v16 ear];
    }

    [(HKSingleAudiogramChartViewController *)self redrawCurrentCell];
  }

  else
  {
    self->_selectedOverlayEar = 0;
  }
}

- (void)redrawCurrentCell
{
  [(HKSingleAudiogramChartViewController *)self _setNeedsReloadSeries];
  scalarGraphViewController = [(HKSingleAudiogramChartViewController *)self scalarGraphViewController];
  graphView = [scalarGraphViewController graphView];
  [graphView autoscaleYAxesAnimated:0 specificRange:0 onlyIfNeeded:0 completion:0];
}

- (void)_setNeedsReloadSeries
{
  graphSeriesCache = self->_graphSeriesCache;
  self->_graphSeriesCache = MEMORY[0x1E695E0F0];

  scalarGraphViewController = [(HKSingleAudiogramChartViewController *)self scalarGraphViewController];
  graphView = [scalarGraphViewController graphView];
  [graphView setNeedsReloadSeries];
}

- (id)newGraphViewController
{
  v3 = objc_alloc_init(_HKAudiogramFrequencyAxisDimension2);
  v4 = objc_alloc_init(HKNumericAxisConfiguration);
  [(HKAxisConfiguration *)v4 setMaxLabels:10];
  [(HKAxisConfiguration *)v4 setHorizontalAxisLabelSpacePadding:&unk_1F4384B00];
  v5 = [HKScalarGraphViewController alloc];
  [(HKSingleAudiogramChartViewController *)self chartHeight];
  v6 = [(HKScalarGraphViewController *)v5 initWithMinimumHeight:v3 labelDimension:3 labelEndings:v4 numericAxisConfigurationOverrides:?];
  hk_chartAxisLabelColor = [MEMORY[0x1E69DC888] hk_chartAxisLabelColor];
  graphView = [(HKGraphViewController *)v6 graphView];
  xAxis = [graphView xAxis];
  preferredStyle = [xAxis preferredStyle];
  v11 = [MEMORY[0x1E69DB878] hk_roundedSystemFontWithSize:11.0 weight:*MEMORY[0x1E69DB970]];
  v12 = [HKAxisLabelStyle labelStyleWithColor:hk_chartAxisLabelColor font:v11 horizontalAlignment:1 verticalAlignment:3];
  [preferredStyle setLabelStyle:v12];

  graphView2 = [(HKGraphViewController *)v6 graphView];
  xAxis2 = [graphView2 xAxis];
  preferredStyle2 = [xAxis2 preferredStyle];
  [preferredStyle2 setFillOuterPadding:0.0];

  graphView3 = [(HKGraphViewController *)v6 graphView];
  [graphView3 setMultiSeriesSelection:1];

  graphView4 = [(HKGraphViewController *)v6 graphView];
  [graphView4 setAxisInset:{0.0, 0.0, 0.0, 0.0}];

  graphView5 = [(HKGraphViewController *)v6 graphView];
  [(HKSingleAudiogramChartViewController *)self _setupFixedFrequencyAxisForGraphView:graphView5];

  if ([(HKSingleAudiogramChartViewController *)self _shouldShowManualIngestionUI])
  {
    view = [(HKScalarGraphViewController *)v6 view];
    [view setUserInteractionEnabled:0];

    graphView6 = [(HKGraphViewController *)v6 graphView];
    [graphView6 setTilingDisabled:1];

    graphView7 = [(HKGraphViewController *)v6 graphView];
    [(HKSingleAudiogramChartViewController *)self _addHorizontalAxisAnnotationToGraphView:graphView7 forSelectedFrequency:self->_selectedFrequency];
  }

  graphView8 = [(HKGraphViewController *)v6 graphView];
  [graphView8 setDelegate:self];

  [(HKSingleAudiogramChartViewController *)self _setNeedsReloadSeries];
  return v6;
}

- (id)graphSeries
{
  audiogram = [(HKSingleAudiogramChartViewController *)self audiogram];

  if (audiogram)
  {
    if ([(NSArray *)self->_graphSeriesCache count])
    {
      v4 = self->_graphSeriesCache;
    }

    else
    {
      audiogram2 = [(HKSingleAudiogramChartViewController *)self audiogram];
      v6 = [(HKSingleAudiogramChartViewController *)self _setupSeriesForAudiogramSample:audiogram2];
      graphSeriesCache = self->_graphSeriesCache;
      self->_graphSeriesCache = v6;

      v4 = self->_graphSeriesCache;
    }
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (id)_setupSeriesForAudiogramSample:(id)sample
{
  sampleCopy = sample;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = self->_selectedFrequency != 0;
  sensitivityPoints = [sampleCopy sensitivityPoints];
  v8 = [(HKSingleAudiogramChartViewController *)self _audiogramSeriesWithSensitivityPoints:sensitivityPoints seriesEar:2 disabledStyleOverride:v6];
  [v5 hk_addNonNilObject:v8];

  sensitivityPoints2 = [sampleCopy sensitivityPoints];
  v10 = [(HKSingleAudiogramChartViewController *)self _audiogramSeriesWithSensitivityPoints:sensitivityPoints2 seriesEar:1 disabledStyleOverride:v6];
  [v5 hk_addNonNilObject:v10];

  if (self->_selectedOverlayEar)
  {
    sensitivityPoints3 = [sampleCopy sensitivityPoints];
    v12 = [(HKSingleAudiogramChartViewController *)self _audiogramPureToneAveragePointsSeriesWithSensitivityPoints:sensitivityPoints3 seriesEar:self->_selectedOverlayEar];
    [v5 hk_addNonNilObject:v12];

    v13 = [(HKSingleAudiogramChartViewController *)self _averageLevelOverlaySeriesWithAudiogram:sampleCopy selectedEar:self->_selectedOverlayEar];
    [v5 hk_addNonNilObject:v13];
  }

  if (self->_selectedFrequency)
  {
    sensitivityPoints4 = [sampleCopy sensitivityPoints];
    v15 = [(HKSingleAudiogramChartViewController *)self _audiogramPureToneAveragePointsSeriesWithSensitivityPoints:sensitivityPoints4 selectedFrequency:self->_selectedFrequency seriesEar:2];
    [v5 hk_addNonNilObject:v15];

    sensitivityPoints5 = [sampleCopy sensitivityPoints];
    v17 = [(HKSingleAudiogramChartViewController *)self _audiogramPureToneAveragePointsSeriesWithSensitivityPoints:sensitivityPoints5 selectedFrequency:self->_selectedFrequency seriesEar:1];
    [v5 hk_addNonNilObject:v17];
  }

  return v5;
}

- (id)_audiogramSeriesWithSensitivityPoints:(id)points seriesEar:(int64_t)ear disabledStyleOverride:(BOOL)override
{
  overrideCopy = override;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __110__HKSingleAudiogramChartViewController__audiogramSeriesWithSensitivityPoints_seriesEar_disabledStyleOverride___block_invoke;
  v12[3] = &__block_descriptor_40_e37_B16__0__HKAudiogramSensitivityPoint_8l;
  v12[4] = ear != 1;
  v8 = [points hk_filter:v12];
  if ([v8 count])
  {
    v9 = [HKAudiogramLineSeries audiogramLineSeriesForSeriesEar:ear selectedEar:self->_selectedOverlayEar disableConnectionLines:0 disabledStyleOverride:overrideCopy selectedFrequency:0];
    v10 = [[HKAudiogramDataSource alloc] initWithSensitivityData:v8 forLeftEar:ear == 1];
    [v9 setDataSource:v10];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

BOOL __110__HKSingleAudiogramChartViewController__audiogramSeriesWithSensitivityPoints_seriesEar_disabledStyleOverride___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 tests];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __110__HKSingleAudiogramChartViewController__audiogramSeriesWithSensitivityPoints_seriesEar_disabledStyleOverride___block_invoke_2;
  v7[3] = &__block_descriptor_40_e36_B16__0__HKAudiogramSensitivityTest_8l;
  v7[4] = *(a1 + 32);
  v4 = [v3 hk_filter:v7];
  v5 = [v4 firstObject];

  return v5 != 0;
}

- (id)_audiogramPureToneAveragePointsSeriesWithSensitivityPoints:(id)points selectedFrequency:(id)frequency seriesEar:(int64_t)ear
{
  v23[1] = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  frequencyCopy = frequency;
  v9 = frequencyCopy;
  if (frequencyCopy)
  {
    v23[0] = frequencyCopy;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  }

  else
  {
    v10 = HKHearingLevelClassificationPureToneAverageFrequencies();
  }

  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __127__HKSingleAudiogramChartViewController__audiogramPureToneAveragePointsSeriesWithSensitivityPoints_selectedFrequency_seriesEar___block_invoke;
  v20 = &unk_1E81BB578;
  v11 = v10;
  v21 = v11;
  v22 = ear != 1;
  v12 = [pointsCopy hk_filter:&v17];
  if ([v12 count])
  {
    v13 = ear == 1;
    v14 = [HKAudiogramLineSeries audiogramLineSeriesForSeriesEar:ear selectedEar:0 disableConnectionLines:1 disabledStyleOverride:0 selectedFrequency:v9];
    v15 = [[HKAudiogramDataSource alloc] initWithSensitivityData:v12 forLeftEar:v13];
    [v14 setDataSource:v15];

    [v14 setAllowsSelection:0];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

BOOL __127__HKSingleAudiogramChartViewController__audiogramPureToneAveragePointsSeriesWithSensitivityPoints_selectedFrequency_seriesEar___block_invoke(uint64_t a1, void *a2)
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
    v13[2] = __127__HKSingleAudiogramChartViewController__audiogramPureToneAveragePointsSeriesWithSensitivityPoints_selectedFrequency_seriesEar___block_invoke_2;
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
  v6 = ear == 1;
  audiogramCopy = audiogram;
  v8 = [(HKSingleAudiogramChartViewController *)self _earSpecificColorForEar:ear];
  v9 = [HKAudiogramAverageLevelSeries audiogramAverageLevelSeriesWithColor:v8];
  v10 = [[HKAudiogramAverageSensitivityDataSource alloc] initWithAudiogramSample:audiogramCopy isLeftEar:v6];

  [v9 setDataSource:v10];

  return v9;
}

- (void)_setupFixedFrequencyAxisForGraphView:(id)view
{
  viewCopy = view;
  v4 = [HKValueRange valueRangeWithMinValue:&unk_1F4384B10 maxValue:&unk_1F4384B20];
  [viewCopy setEffectiveAxisRange:v4 effectiveVisibleRangeCadence:v4 effectiveVisibleRangeActive:v4];
}

- (void)updateAnnotationDataSource:(id)source pointContexts:(id)contexts
{
  v5 = self->_selectedOverlayEar != 0;
  contextsCopy = contexts;
  audiogram = [(HKSingleAudiogramChartViewController *)self audiogram];
  endDate = [audiogram endDate];

  annotationViewDataSource = [(HKSingleAudiogramChartViewController *)self annotationViewDataSource];
  [annotationViewDataSource updateWithPointSelectionContexts:contextsCopy date:endDate isAverage:v5];
}

- (void)graphView:(id)view didUpdateSelectedPoint:(id)point
{
  pointCopy = point;
  if ([HKLollipopController pointSelectionContextsHaveUserInfo:?])
  {
    lollipopController = [(HKSingleAudiogramChartViewController *)self lollipopController];
    isVisible = [lollipopController isVisible];

    if (isVisible)
    {
      lollipopController2 = [(HKSingleAudiogramChartViewController *)self lollipopController];
      [lollipopController2 updateWithPointContexts:pointCopy];
    }

    else
    {
      currentValueView = [(HKSingleAudiogramChartViewController *)self currentValueView];
      [currentValueView frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      lollipopController2 = [(HKSingleAudiogramChartViewController *)self lollipopController];
      [lollipopController2 setVisibleWithRect:pointCopy pointContexts:1 animated:{v10, v12, v14, v16}];
    }
  }
}

- (void)graphViewDidEndSelection:(id)selection
{
  lollipopController = [(HKSingleAudiogramChartViewController *)self lollipopController];
  [lollipopController setInvisibleAnimated:1];
}

- (void)_addControllerAsChildController:(id)controller
{
  controllerCopy = controller;
  [(HKSingleAudiogramChartViewController *)self addChildViewController:controllerCopy];
  [controllerCopy didMoveToParentViewController:self];
}

- (void)_pinView:(id)view toParentGuide:(id)guide pinBottom:(BOOL)bottom
{
  bottomCopy = bottom;
  viewCopy = view;
  guideCopy = guide;
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingAnchor = [viewCopy leadingAnchor];
  leadingAnchor2 = [guideCopy leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [(HKSingleAudiogramChartViewController *)self setLeadingMarginConstraint:v11];

  leadingMarginConstraint = [(HKSingleAudiogramChartViewController *)self leadingMarginConstraint];
  [leadingMarginConstraint setActive:1];

  trailingAnchor = [viewCopy trailingAnchor];
  trailingAnchor2 = [guideCopy trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [(HKSingleAudiogramChartViewController *)self setTrailingMarginConstraint:v15];

  trailingMarginConstraint = [(HKSingleAudiogramChartViewController *)self trailingMarginConstraint];
  [trailingMarginConstraint setActive:1];

  topAnchor = [viewCopy topAnchor];
  topAnchor2 = [guideCopy topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v19 setActive:1];

  if (bottomCopy)
  {
    bottomAnchor = [viewCopy bottomAnchor];
    bottomAnchor2 = [guideCopy bottomAnchor];
    v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v22 setActive:1];
  }
}

- (id)_findNavigationController
{
  navigationController = [(HKSingleAudiogramChartViewController *)self navigationController];

  if (navigationController)
  {
    navigationController2 = [(HKSingleAudiogramChartViewController *)self navigationController];
    goto LABEL_3;
  }

  view = [(HKSingleAudiogramChartViewController *)self view];
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

- (id)_earSpecificColorForEar:(int64_t)ear
{
  if (ear)
  {
    if (ear == 1)
    {
      self = [MEMORY[0x1E69DC888] hk_hearingHealthAudiogramLeftEarLineColor];
    }

    else if (ear == 2)
    {
      self = [MEMORY[0x1E69DC888] hk_hearingHealthAudiogramRightEarLineColor];
    }
  }

  else
  {
    self = [MEMORY[0x1E69DC888] labelColor];
  }

  return self;
}

void __57__HKSingleAudiogramChartViewController_queryForAudiogram__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1C3942000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to retrieve audiogram: %{public}@", &v4, 0x16u);
}

- (void)contextView:(uint64_t)a1 didSelectItemAtIndexPath:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSingleAudiogramChartViewController.m" lineNumber:664 description:{@"We initialized audiogram items, and should get those back"}];
}

@end