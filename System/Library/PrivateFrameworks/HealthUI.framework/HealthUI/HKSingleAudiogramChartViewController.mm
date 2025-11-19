@interface HKSingleAudiogramChartViewController
+ (id)_itemForHearingLossInfographicJapanDisclaimer;
+ (id)_itemForHearingLossInfographicWithHearingLossClassification:(unint64_t)a3;
+ (id)_itemForTitle:(id)a3 description:(id)a4;
+ (id)_localizedDescriptionForClassification:(unint64_t)a3;
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11;
+ (id)hearingLossInfographicViewController;
- (BOOL)_shouldShowEnhancedUI;
- (HKSingleAudiogramChartViewController)initWithApplicationItems:(id)a3 staticAudiogram:(id)a4 factorDisplayTypes:(id)a5 chartHeight:(double)a6 hideEnhancedUI:(BOOL)a7;
- (HKSingleAudiogramChartViewController)initWithHealthStore:(id)a3 staticAudiogram:(id)a4 selectedFrequency:(id)a5;
- (id)_annotationForFrequencyString:(id)a3;
- (id)_attributedLabelTextOverrideWithHearingLevelClassification:(id)a3 valueAndUnit:(id)a4 metricColors:(id)a5 selectedMetricColors:(id)a6;
- (id)_attributedLabelTextWithHearingLevelClassification:(id)a3 valueAndUnit:(id)a4 metricColors:(id)a5 selectedMetricColors:(id)a6 isSelected:(BOOL)a7;
- (id)_audiogramDisplayType;
- (id)_audiogramPureToneAveragePointsSeriesWithSensitivityPoints:(id)a3 selectedFrequency:(id)a4 seriesEar:(int64_t)a5;
- (id)_audiogramSeriesWithSensitivityPoints:(id)a3 seriesEar:(int64_t)a4 disabledStyleOverride:(BOOL)a5;
- (id)_averageLevelOverlaySeriesWithAudiogram:(id)a3 selectedEar:(int64_t)a4;
- (id)_averageSectionFromAudiogram:(id)a3;
- (id)_buildContextItemForEar:(int64_t)a3 metrics:(id)a4;
- (id)_earSpecificColorForEar:(int64_t)a3;
- (id)_findNavigationController;
- (id)_healthStore;
- (id)_indexPathForCurrentSelections;
- (id)_sectionsFromAudiogram:(id)a3;
- (id)_setupSeriesForAudiogramSample:(id)a3;
- (id)_unitController;
- (id)_updateController;
- (id)graphSeries;
- (id)newGraphViewController;
- (void)_addContextView;
- (void)_addControllerAsChildController:(id)a3;
- (void)_addHorizontalAxisAnnotationToGraphView:(id)a3 forSelectedFrequency:(id)a4;
- (void)_addShowMoreDataButton:(id)a3;
- (void)_pinView:(id)a3 toParentGuide:(id)a4 pinBottom:(BOOL)a5;
- (void)_setNeedsReloadSeries;
- (void)_setupFixedFrequencyAxisForGraphView:(id)a3;
- (void)_showMoreData:(id)a3;
- (void)_updateAudiogramSample:(id)a3 error:(id)a4;
- (void)_updateHeaderState;
- (void)_updateOverlayPillsAndHeader;
- (void)contextView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)didTapOnInfoButtonFromCurrentValueView:(id)a3;
- (void)graphView:(id)a3 didUpdateSelectedPoint:(id)a4;
- (void)graphViewDidEndSelection:(id)a3;
- (void)queryForAudiogram;
- (void)redrawCurrentCell;
- (void)updateAnnotationDataSource:(id)a3 pointContexts:(id)a4;
- (void)updateStaticAudiogram:(id)a3;
- (void)viewDidLoad;
@end

@implementation HKSingleAudiogramChartViewController

+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11
{
  v13 = a10;
  v14 = a5;
  v15 = [[a1 alloc] initWithApplicationItems:v14 staticAudiogram:0 factorDisplayTypes:v13 chartHeight:0 hideEnhancedUI:350.0];

  [v15 queryForAudiogram];

  return v15;
}

- (HKSingleAudiogramChartViewController)initWithHealthStore:(id)a3 staticAudiogram:(id)a4 selectedFrequency:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(HKOverlayRoomApplicationItems);
  v13 = [objc_alloc(MEMORY[0x1E696C518]) initWithHealthStore:v11];
  [(HKOverlayRoomApplicationItems *)v12 setUnitController:v13];

  v14 = [[HKSampleTypeUpdateController alloc] initWithHealthStore:v11];
  [(HKOverlayRoomApplicationItems *)v12 setSampleTypeUpdateController:v14];

  v15 = [HKDisplayTypeController sharedInstanceForHealthStore:v11];
  [(HKOverlayRoomApplicationItems *)v12 setDisplayTypeController:v15];

  [(HKOverlayRoomApplicationItems *)v12 setHealthStore:v11];
  v16 = [(HKSingleAudiogramChartViewController *)self initWithApplicationItems:v12 staticAudiogram:v10 factorDisplayTypes:0 chartHeight:1 hideEnhancedUI:350.0];

  if (v16)
  {
    v16->_isStatic = 1;
    v16->_isManualIngestion = 1;
    objc_storeStrong(&v16->_selectedFrequency, a5);
  }

  return v16;
}

- (HKSingleAudiogramChartViewController)initWithApplicationItems:(id)a3 staticAudiogram:(id)a4 factorDisplayTypes:(id)a5 chartHeight:(double)a6 hideEnhancedUI:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v35.receiver = self;
  v35.super_class = HKSingleAudiogramChartViewController;
  v16 = [(HKSingleAudiogramChartViewController *)&v35 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_applicationItems, a3);
    v17->_chartHeight = a6;
    objc_storeStrong(&v17->_audiogram, a4);
    currentValueView = v17->_currentValueView;
    v17->_currentValueView = 0;

    currentValueViewDataSource = v17->_currentValueViewDataSource;
    v17->_currentValueViewDataSource = 0;

    annotationViewDataSource = v17->_annotationViewDataSource;
    v17->_annotationViewDataSource = 0;

    v17->_selectedOverlayEar = 0;
    sections = v17->_sections;
    v17->_sections = 0;

    v17->_audiogramsFetched = v14 != 0;
    v17->_isStatic = v14 != 0;
    v22 = [(HKSingleAudiogramChartViewController *)v17 navigationItem];
    [v22 setLargeTitleDisplayMode:2];

    v23 = objc_alloc(MEMORY[0x1E696C178]);
    v24 = *MEMORY[0x1E696B8A0];
    v25 = [v13 healthStore];
    v26 = [v23 initWithFeatureIdentifier:v24 healthStore:v25];
    hearingTestFeatureStatus = v17->_hearingTestFeatureStatus;
    v17->_hearingTestFeatureStatus = v26;

    objc_storeStrong(&v17->_factorDisplayTypes, a5);
    v17->_hideEnhancedUI = a7;
    selectedFrequency = v17->_selectedFrequency;
    v17->_selectedFrequency = 0;

    graphSeriesCache = v17->_graphSeriesCache;
    v17->_graphSeriesCache = MEMORY[0x1E695E0F0];

    v30 = [HKAudiogramAnalyticsManager alloc];
    v31 = [(HKOverlayRoomApplicationItems *)v17->_applicationItems healthStore];
    v32 = [(HKAudiogramAnalyticsManager *)v30 initWithHealthStore:v31];
    analyticsManager = v17->_analyticsManager;
    v17->_analyticsManager = v32;
  }

  return v17;
}

- (void)dealloc
{
  v3 = [(HKSingleAudiogramChartViewController *)self _updateController];
  v4 = [MEMORY[0x1E696C3D0] audiogramSampleType];
  [v3 removeObserver:self forType:v4];

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
      v68 = self;
      _os_log_impl(&dword_1C3942000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Chart is not static, starting update observer.", buf, 0xCu);
    }

    v4 = [(HKSingleAudiogramChartViewController *)self _updateController];
    v5 = [MEMORY[0x1E696C3D0] audiogramSampleType];
    [v4 addObserver:self forType:v5];

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
  v10 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(UIStackView *)v9 setBackgroundColor:v10];

  v11 = [(UIStackView *)self->_stackView layer];
  [v11 setCornerRadius:26.0];

  if (![(HKSingleAudiogramChartViewController *)self _shouldShowManualIngestionUI])
  {
    v12 = [HKAudiogramCurrentValueViewDataSource alloc];
    v13 = [(HKSingleAudiogramChartViewController *)self applicationItems];
    v14 = [(HKAudiogramCurrentValueViewDataSource *)v12 initWithApplicationItems:v13];
    [(HKSingleAudiogramChartViewController *)self setCurrentValueViewDataSource:v14];

    v15 = [[HKInteractiveChartAnnotationView alloc] initWithContext:0];
    [(HKSingleAudiogramChartViewController *)self setCurrentValueView:v15];

    v16 = [(HKSingleAudiogramChartViewController *)self currentValueView];
    [v16 setShowsInfoButton:{-[HKSingleAudiogramChartViewController _shouldShowManualIngestionUI](self, "_shouldShowManualIngestionUI") ^ 1}];

    v17 = [(HKSingleAudiogramChartViewController *)self currentValueView];
    [v17 setDelegate:self];

    v18 = [(HKSingleAudiogramChartViewController *)self currentValueViewDataSource];
    v19 = [(HKSingleAudiogramChartViewController *)self currentValueView];
    [v19 setDataSource:v18];

    v20 = [(HKSingleAudiogramChartViewController *)self stackView];
    v21 = [(HKSingleAudiogramChartViewController *)self currentValueView];
    [v20 addArrangedSubview:v21];

    v22 = [(HKSingleAudiogramChartViewController *)self currentValueView];
    v23 = [v22 heightAnchor];
    v24 = [v23 constraintEqualToConstant:90.0];
    [v24 setActive:1];
  }

  v25 = [(HKSingleAudiogramChartViewController *)self newGraphViewController];
  [(HKSingleAudiogramChartViewController *)self setScalarGraphViewController:v25];

  v26 = [(HKSingleAudiogramChartViewController *)self scalarGraphViewController];
  v27 = [v26 view];
  v28 = [v27 heightAnchor];
  [(HKSingleAudiogramChartViewController *)self chartHeight];
  v29 = [v28 constraintEqualToConstant:?];
  [v29 setActive:1];

  v30 = [(HKSingleAudiogramChartViewController *)self scalarGraphViewController];
  [(HKSingleAudiogramChartViewController *)self _addControllerAsChildController:v30];

  v31 = [(HKSingleAudiogramChartViewController *)self stackView];
  v32 = [(HKSingleAudiogramChartViewController *)self scalarGraphViewController];
  v33 = [v32 view];
  [v31 addArrangedSubview:v33];

  if (![(HKSingleAudiogramChartViewController *)self _shouldShowManualIngestionUI])
  {
    [(HKSingleAudiogramChartViewController *)self _addContextView];
  }

  if ([(HKSingleAudiogramChartViewController *)self _shouldShowManualIngestionUI])
  {
    [(UIStackView *)self->_stackView setLayoutMarginsRelativeArrangement:1];
    [(UIStackView *)self->_stackView setLayoutMargins:26.0, 0.0, 26.0, 0.0];
  }

  v34 = [(HKSingleAudiogramChartViewController *)self view];
  [v34 addSubview:self->_stackView];

  v35 = [(HKSingleAudiogramChartViewController *)self stackView];
  v36 = [v35 heightAnchor];
  [(HKSingleAudiogramChartViewController *)self chartHeight];
  v38 = v37;
  v39 = [(HKSingleAudiogramChartViewController *)self currentValueView];
  [v39 frame];
  v41 = [v36 constraintGreaterThanOrEqualToConstant:v38 + v40];
  stackViewHeightConstraint = self->_stackViewHeightConstraint;
  self->_stackViewHeightConstraint = v41;

  [(NSLayoutConstraint *)self->_stackViewHeightConstraint setActive:1];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v43 = [(UIStackView *)self->_stackView arrangedSubviews];
  v44 = [v43 countByEnumeratingWithState:&v61 objects:v66 count:16];
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
          objc_enumerationMutation(v43);
        }

        v49 = *(*(&v61 + 1) + 8 * i);
        LODWORD(v45) = 1148846080;
        [v49 setContentCompressionResistancePriority:1 forAxis:v45];
        LODWORD(v50) = 1148846080;
        [v49 setContentHuggingPriority:1 forAxis:v50];
      }

      v46 = [v43 countByEnumeratingWithState:&v61 objects:v66 count:16];
    }

    while (v46);
  }

  if ([(HKSingleAudiogramChartViewController *)self _shouldShowEnhancedUI])
  {
    [(HKSingleAudiogramChartViewController *)self _addShowMoreDataButton:self->_stackView];
  }

  v51 = self->_stackView;
  v52 = [(HKSingleAudiogramChartViewController *)self view];
  v53 = [v52 safeAreaLayoutGuide];
  [(HKSingleAudiogramChartViewController *)self _pinView:v51 toParentGuide:v53 pinBottom:1];

  v54 = [HKAudiogramAnnotationViewDataSource alloc];
  v55 = [(HKSingleAudiogramChartViewController *)self applicationItems];
  v56 = [(HKAudiogramAnnotationViewDataSource *)v54 initWithApplicationItems:v55];
  [(HKSingleAudiogramChartViewController *)self setAnnotationViewDataSource:v56];

  v57 = [HKLollipopController alloc];
  v58 = [(HKSingleAudiogramChartViewController *)self annotationViewDataSource];
  v59 = [(HKSingleAudiogramChartViewController *)self stackView];
  v60 = [(HKLollipopController *)v57 initWithAnnotationDataSource:v58 parentView:v59 delegate:self];
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

- (void)_addShowMoreDataButton:(id)a3
{
  v4 = MEMORY[0x1E69DC738];
  v5 = a3;
  v10 = [v4 hk_chartShowMoreDataButtonWithTitleOverride:0 target:self action:sel__showMoreData_];
  LODWORD(v6) = 1144750080;
  [v10 setContentHuggingPriority:1 forAxis:v6];
  v7 = [v5 arrangedSubviews];
  v8 = [v5 arrangedSubviews];
  v9 = [v7 objectAtIndexedSubscript:{objc_msgSend(v8, "count") - 1}];

  [v5 addArrangedSubview:v10];
  [v5 setCustomSpacing:v9 afterView:0.0];
}

- (void)_showMoreData:(id)a3
{
  v4 = [(HKSingleAudiogramChartViewController *)self _findNavigationController];
  if (v4)
  {
    v12 = v4;
    v5 = [(HKSingleAudiogramChartViewController *)self applicationItems];
    v6 = [v5 timeScopeController];
    [v6 setSelectedTimeScope:2];

    v7 = [HKAudiogramLongitudinalOverlayRoomViewController alloc];
    v8 = [(HKSingleAudiogramChartViewController *)self applicationItems];
    v9 = [(HKSingleAudiogramChartViewController *)self factorDisplayTypes];
    v10 = [(HKAudiogramLongitudinalOverlayRoomViewController *)v7 initWithApplicationItems:v8 factorDisplayTypes:v9];

    v11 = [[HKModalNavigationController alloc] initWithRootViewController:v10];
    [v12 hk_presentModalCardViewController:v11 fullScreen:1 animated:1 completion:0];

    v4 = v12;
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
    v17 = self;
    _os_log_impl(&dword_1C3942000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Query for recent audiogram called.", buf, 0xCu);
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:*MEMORY[0x1E696BE30] ascending:0];
  v15 = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];

  v7 = objc_alloc(MEMORY[0x1E696C3C8]);
  v8 = [MEMORY[0x1E696C3D0] audiogramSampleType];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__HKSingleAudiogramChartViewController_queryForAudiogram__block_invoke;
  v12[3] = &unk_1E81BBD58;
  v13 = v4;
  v14 = self;
  v9 = v4;
  v10 = [v7 initWithSampleType:v8 predicate:0 limit:1 sortDescriptors:v6 resultsHandler:v12];

  v11 = [(HKSingleAudiogramChartViewController *)self _healthStore];
  [v11 executeQuery:v10];
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

- (void)updateStaticAudiogram:(id)a3
{
  v4 = a3;
  if ([(HKSingleAudiogramChartViewController *)self isStatic])
  {
    [(HKSingleAudiogramChartViewController *)self setAudiogram:v4];
    [(HKSingleAudiogramChartViewController *)self _updateOverlayPillsAndHeader];
  }
}

- (void)_updateAudiogramSample:(id)a3 error:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__HKSingleAudiogramChartViewController__updateAudiogramSample_error___block_invoke;
  v7[3] = &unk_1E81B5AD0;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
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
  v2 = [(HKSingleAudiogramChartViewController *)self applicationItems];
  v3 = [v2 displayTypeController];
  v4 = [MEMORY[0x1E696C3D0] audiogramSampleType];
  v5 = [v3 displayTypeForObjectType:v4];

  return v5;
}

- (id)_healthStore
{
  v2 = [(HKSingleAudiogramChartViewController *)self applicationItems];
  v3 = [v2 healthStore];

  return v3;
}

- (id)_unitController
{
  v2 = [(HKSingleAudiogramChartViewController *)self applicationItems];
  v3 = [v2 unitController];

  return v3;
}

- (id)_updateController
{
  v2 = [(HKSingleAudiogramChartViewController *)self applicationItems];
  v3 = [v2 sampleTypeUpdateController];

  return v3;
}

- (id)_sectionsFromAudiogram:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [(HKSingleAudiogramChartViewController *)self _averageSectionFromAudiogram:a3];
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
  v7 = [(HKSingleAudiogramChartViewController *)self _buildContextItemForEar:1 metrics:v6];

  v8 = [v4 hearingLevelSummary];

  v9 = [v8 rightEarMetrics];
  v10 = [(HKSingleAudiogramChartViewController *)self _buildContextItemForEar:2 metrics:v9];

  v11 = objc_alloc_init(_HKDisplayTypeAudiogramContextItemSection2);
  [(_HKDisplayTypeAudiogramContextItemSection2 *)v11 setTitle:0];
  v14[0] = v7;
  v14[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [(_HKDisplayTypeAudiogramContextItemSection2 *)v11 setItems:v12];

  return v11;
}

- (id)_buildContextItemForEar:(int64_t)a3 metrics:(id)a4
{
  v6 = a4;
  v7 = [(HKSingleAudiogramChartViewController *)self _earSpecificColorForEar:a3];
  v8 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  v9 = [HKUIMetricColors defaultContextViewColorsUsingColor:v8];

  v10 = [HKUIMetricColors categoryColorsWithColor:v7];
  v11 = objc_alloc_init(HKDisplayTypeContextAudiogramItem2);
  [(HKDisplayTypeContextItem *)v11 setInfoHidden:1];
  [(HKDisplayTypeContextItem *)v11 setMetricColors:v9];
  [(HKDisplayTypeContextItem *)v11 setSelectedMetricColors:v10];
  [(HKDisplayTypeContextAudiogramItem2 *)v11 setEar:a3];
  if (a3 == 1)
  {
    v12 = @"LeftAverage";
  }

  else
  {
    v12 = @"RightAverage";
  }

  if (a3 == 1)
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

  v17 = [v6 averageSensitivity];
  if (v17)
  {
    v32 = HKIntegerFormatter();
    [v17 _unit];
    v18 = v33 = self;
    [v17 doubleValueForUnit:v18];
    v20 = v19;

    v21 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
    v22 = [v32 stringFromNumber:v21];

    [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v23 = v34 = v7;
    v24 = [v23 localizedStringForKey:@"DECIBELS_HEARING_NUMBERLESS_UNIT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    [(HKDisplayTypeContextItem *)v11 setValue:v22];
    [(HKDisplayTypeContextItem *)v11 setUnit:v24];
    v25 = [v6 averageSensitivity];
    HKHearingLevelClassificationForSensitivity();
    v26 = v6;

    v27 = HKLocalizedStringForHearingLevelClassification();
    v28 = HKFormatValueAndUnit(v22, v24);
    v29 = [(HKSingleAudiogramChartViewController *)v33 _attributedLabelTextOverrideWithHearingLevelClassification:v27 valueAndUnit:v28 metricColors:v9 selectedMetricColors:v10];
    [(HKDisplayTypeContextItem *)v11 setAttributedLabelTextOverride:v29];

    v30 = v32;
    v6 = v26;

    v7 = v34;
  }

  else
  {
    v30 = HKUILocalizedString(@"NO_DATA");
    [(HKDisplayTypeContextItem *)v11 setValue:v30];
  }

  return v11;
}

- (id)_attributedLabelTextOverrideWithHearingLevelClassification:(id)a3 valueAndUnit:(id)a4 metricColors:(id)a5 selectedMetricColors:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(HKSingleAudiogramChartViewController *)self _attributedLabelTextWithHearingLevelClassification:v13 valueAndUnit:v12 metricColors:v11 selectedMetricColors:v10 isSelected:0];
  v15 = [(HKSingleAudiogramChartViewController *)self _attributedLabelTextWithHearingLevelClassification:v13 valueAndUnit:v12 metricColors:v11 selectedMetricColors:v10 isSelected:1];

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

- (void)_updateOverlayPillsAndHeader
{
  [(HKSingleAudiogramChartViewController *)self _resetCurrentGraph];
  contextView = self->_contextView;
  if (contextView)
  {
    v4 = [(HKSingleAudiogramChartViewController *)self audiogram];
    v5 = [(HKSingleAudiogramChartViewController *)self _sectionsFromAudiogram:v4];
    [(HKDisplayTypeSectionedContextView *)contextView setDisplayTypeContextSections:v5];
  }

  [(HKSingleAudiogramChartViewController *)self _updateHeaderState];
}

- (void)_updateHeaderState
{
  v3 = [(HKSingleAudiogramChartViewController *)self currentValueViewDataSource];
  v4 = [(HKSingleAudiogramChartViewController *)self audiogram];
  [v3 updateWithAudiogram:v4];

  LODWORD(v3) = [(HKSingleAudiogramChartViewController *)self _hasAudiogramData];
  v5 = [(HKSingleAudiogramChartViewController *)self currentValueView];
  v6 = v5;
  if (v3)
  {
    [v5 reloadData];
  }

  else
  {
    [v5 showNoDataStatus];
  }
}

- (void)_addHorizontalAxisAnnotationToGraphView:(id)a3 forSelectedFrequency:(id)a4
{
  if (a4)
  {
    v6 = a3;
    [a4 floatValue];
    v8 = v7;
    [HKAudiogramChartPoint axisValueFromFrequency:v7];
    v10 = v9;
    v14 = _formattedFrequencyStringForFrequency(0, 1, v8);
    v11 = [(HKSingleAudiogramChartViewController *)self _annotationForFrequencyString:v14];
    v12 = [v6 xAxis];

    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
    [v12 addAxisAnnotation:v11 modelCoordinate:v13];
  }
}

- (id)_annotationForFrequencyString:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DB878];
  v4 = *MEMORY[0x1E69DB970];
  v5 = a3;
  v6 = [v3 hk_roundedSystemFontWithSize:11.0 weight:v4];
  v7 = MEMORY[0x1E69DB878];
  [v6 pointSize];
  v8 = [v7 hk_roundedSystemFontWithSize:? weight:?];
  v13[0] = *MEMORY[0x1E69DB650];
  v9 = [MEMORY[0x1E69DC888] labelColor];
  v13[1] = *MEMORY[0x1E69DB648];
  v14[0] = v9;
  v14[1] = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:v10];

  return v11;
}

- (void)didTapOnInfoButtonFromCurrentValueView:(id)a3
{
  v4 = [objc_opt_class() hearingLossInfographicViewController];
  [(HKSingleAudiogramChartViewController *)self presentViewController:v4 animated:1 completion:0];
}

+ (id)hearingLossInfographicViewController
{
  v21[6] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v20 localizedStringForKey:@"HEARING_LEVEL_CLASSIFICATION_DESCRIPTION_INTRODUCTION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Yodel"];
  v5 = [a1 _itemForTitle:0 description:v4];
  v21[0] = v5;
  v6 = [a1 _itemForHearingLossInfographicWithHearingLossClassification:1];
  v21[1] = v6;
  v7 = [a1 _itemForHearingLossInfographicWithHearingLossClassification:2];
  v21[2] = v7;
  v8 = [a1 _itemForHearingLossInfographicWithHearingLossClassification:3];
  v21[3] = v8;
  v9 = [a1 _itemForHearingLossInfographicWithHearingLossClassification:4];
  v21[4] = v9;
  v10 = [a1 _itemForHearingLossInfographicWithHearingLossClassification:5];
  v21[5] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:6];
  v12 = [v3 initWithArray:v11];

  v13 = HKCurrentLocaleCountryCodeIfUnknown();
  LODWORD(v4) = [v13 isEqualToString:*MEMORY[0x1E696B738]];

  if (v4)
  {
    v14 = [a1 _itemForHearingLossInfographicJapanDisclaimer];
    [v12 addObject:v14];
  }

  v15 = [[HKInfographicViewController alloc] initWithItems:v12];
  v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v17 = [v16 localizedStringForKey:@"HEARING_LEVEL_CLASSIFICATIONS_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Yodel"];
  [(HKInfographicViewController *)v15 setTitle:v17];

  v18 = [[HKModalNavigationController alloc] initWithRootViewController:v15];

  return v18;
}

+ (id)_itemForTitle:(id)a3 description:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E696AD40];
  v7 = a4;
  v8 = objc_alloc_init(v6);
  if (v5)
  {
    v9 = HKInteractiveChartInfographicTitleAttributes();
    v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:v9];
    [v8 appendAttributedString:v10];
  }

  v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7];

  v12 = [[HKInfographicContentItem alloc] initWithTitle:v8 description:v11];

  return v12;
}

+ (id)_itemForHearingLossInfographicWithHearingLossClassification:(unint64_t)a3
{
  v5 = HKLocalizedStringForHearingLevelClassification();
  v6 = [a1 _localizedDescriptionForClassification:a3];
  v7 = [a1 _itemForTitle:v5 description:v6];

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

- (void)contextView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v17 = a3;
  v7 = a4;
  v8 = [(HKSingleAudiogramChartViewController *)self audiogram];

  if (v8)
  {
    if (![v7 section])
    {
      v9 = [v17 displayTypeContextSections];
      v10 = [v9 objectAtIndex:0];

      v11 = [v10 items];
      v12 = [v11 objectAtIndex:{objc_msgSend(v7, "row")}];
      v13 = objc_opt_class();
      v14 = objc_opt_class();

      if (v13 != v14)
      {
        [HKSingleAudiogramChartViewController contextView:a2 didSelectItemAtIndexPath:self];
      }

      v15 = [v10 items];
      v16 = [v15 objectAtIndex:{objc_msgSend(v7, "row")}];

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
  v4 = [(HKSingleAudiogramChartViewController *)self scalarGraphViewController];
  v3 = [v4 graphView];
  [v3 autoscaleYAxesAnimated:0 specificRange:0 onlyIfNeeded:0 completion:0];
}

- (void)_setNeedsReloadSeries
{
  graphSeriesCache = self->_graphSeriesCache;
  self->_graphSeriesCache = MEMORY[0x1E695E0F0];

  v5 = [(HKSingleAudiogramChartViewController *)self scalarGraphViewController];
  v4 = [v5 graphView];
  [v4 setNeedsReloadSeries];
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
  v7 = [MEMORY[0x1E69DC888] hk_chartAxisLabelColor];
  v8 = [(HKGraphViewController *)v6 graphView];
  v9 = [v8 xAxis];
  v10 = [v9 preferredStyle];
  v11 = [MEMORY[0x1E69DB878] hk_roundedSystemFontWithSize:11.0 weight:*MEMORY[0x1E69DB970]];
  v12 = [HKAxisLabelStyle labelStyleWithColor:v7 font:v11 horizontalAlignment:1 verticalAlignment:3];
  [v10 setLabelStyle:v12];

  v13 = [(HKGraphViewController *)v6 graphView];
  v14 = [v13 xAxis];
  v15 = [v14 preferredStyle];
  [v15 setFillOuterPadding:0.0];

  v16 = [(HKGraphViewController *)v6 graphView];
  [v16 setMultiSeriesSelection:1];

  v17 = [(HKGraphViewController *)v6 graphView];
  [v17 setAxisInset:{0.0, 0.0, 0.0, 0.0}];

  v18 = [(HKGraphViewController *)v6 graphView];
  [(HKSingleAudiogramChartViewController *)self _setupFixedFrequencyAxisForGraphView:v18];

  if ([(HKSingleAudiogramChartViewController *)self _shouldShowManualIngestionUI])
  {
    v19 = [(HKScalarGraphViewController *)v6 view];
    [v19 setUserInteractionEnabled:0];

    v20 = [(HKGraphViewController *)v6 graphView];
    [v20 setTilingDisabled:1];

    v21 = [(HKGraphViewController *)v6 graphView];
    [(HKSingleAudiogramChartViewController *)self _addHorizontalAxisAnnotationToGraphView:v21 forSelectedFrequency:self->_selectedFrequency];
  }

  v22 = [(HKGraphViewController *)v6 graphView];
  [v22 setDelegate:self];

  [(HKSingleAudiogramChartViewController *)self _setNeedsReloadSeries];
  return v6;
}

- (id)graphSeries
{
  v3 = [(HKSingleAudiogramChartViewController *)self audiogram];

  if (v3)
  {
    if ([(NSArray *)self->_graphSeriesCache count])
    {
      v4 = self->_graphSeriesCache;
    }

    else
    {
      v5 = [(HKSingleAudiogramChartViewController *)self audiogram];
      v6 = [(HKSingleAudiogramChartViewController *)self _setupSeriesForAudiogramSample:v5];
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

- (id)_setupSeriesForAudiogramSample:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = self->_selectedFrequency != 0;
  v7 = [v4 sensitivityPoints];
  v8 = [(HKSingleAudiogramChartViewController *)self _audiogramSeriesWithSensitivityPoints:v7 seriesEar:2 disabledStyleOverride:v6];
  [v5 hk_addNonNilObject:v8];

  v9 = [v4 sensitivityPoints];
  v10 = [(HKSingleAudiogramChartViewController *)self _audiogramSeriesWithSensitivityPoints:v9 seriesEar:1 disabledStyleOverride:v6];
  [v5 hk_addNonNilObject:v10];

  if (self->_selectedOverlayEar)
  {
    v11 = [v4 sensitivityPoints];
    v12 = [(HKSingleAudiogramChartViewController *)self _audiogramPureToneAveragePointsSeriesWithSensitivityPoints:v11 seriesEar:self->_selectedOverlayEar];
    [v5 hk_addNonNilObject:v12];

    v13 = [(HKSingleAudiogramChartViewController *)self _averageLevelOverlaySeriesWithAudiogram:v4 selectedEar:self->_selectedOverlayEar];
    [v5 hk_addNonNilObject:v13];
  }

  if (self->_selectedFrequency)
  {
    v14 = [v4 sensitivityPoints];
    v15 = [(HKSingleAudiogramChartViewController *)self _audiogramPureToneAveragePointsSeriesWithSensitivityPoints:v14 selectedFrequency:self->_selectedFrequency seriesEar:2];
    [v5 hk_addNonNilObject:v15];

    v16 = [v4 sensitivityPoints];
    v17 = [(HKSingleAudiogramChartViewController *)self _audiogramPureToneAveragePointsSeriesWithSensitivityPoints:v16 selectedFrequency:self->_selectedFrequency seriesEar:1];
    [v5 hk_addNonNilObject:v17];
  }

  return v5;
}

- (id)_audiogramSeriesWithSensitivityPoints:(id)a3 seriesEar:(int64_t)a4 disabledStyleOverride:(BOOL)a5
{
  v5 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __110__HKSingleAudiogramChartViewController__audiogramSeriesWithSensitivityPoints_seriesEar_disabledStyleOverride___block_invoke;
  v12[3] = &__block_descriptor_40_e37_B16__0__HKAudiogramSensitivityPoint_8l;
  v12[4] = a4 != 1;
  v8 = [a3 hk_filter:v12];
  if ([v8 count])
  {
    v9 = [HKAudiogramLineSeries audiogramLineSeriesForSeriesEar:a4 selectedEar:self->_selectedOverlayEar disableConnectionLines:0 disabledStyleOverride:v5 selectedFrequency:0];
    v10 = [[HKAudiogramDataSource alloc] initWithSensitivityData:v8 forLeftEar:a4 == 1];
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

- (id)_audiogramPureToneAveragePointsSeriesWithSensitivityPoints:(id)a3 selectedFrequency:(id)a4 seriesEar:(int64_t)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v23[0] = v8;
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
  v22 = a5 != 1;
  v12 = [v7 hk_filter:&v17];
  if ([v12 count])
  {
    v13 = a5 == 1;
    v14 = [HKAudiogramLineSeries audiogramLineSeriesForSeriesEar:a5 selectedEar:0 disableConnectionLines:1 disabledStyleOverride:0 selectedFrequency:v9];
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

- (id)_averageLevelOverlaySeriesWithAudiogram:(id)a3 selectedEar:(int64_t)a4
{
  v6 = a4 == 1;
  v7 = a3;
  v8 = [(HKSingleAudiogramChartViewController *)self _earSpecificColorForEar:a4];
  v9 = [HKAudiogramAverageLevelSeries audiogramAverageLevelSeriesWithColor:v8];
  v10 = [[HKAudiogramAverageSensitivityDataSource alloc] initWithAudiogramSample:v7 isLeftEar:v6];

  [v9 setDataSource:v10];

  return v9;
}

- (void)_setupFixedFrequencyAxisForGraphView:(id)a3
{
  v3 = a3;
  v4 = [HKValueRange valueRangeWithMinValue:&unk_1F4384B10 maxValue:&unk_1F4384B20];
  [v3 setEffectiveAxisRange:v4 effectiveVisibleRangeCadence:v4 effectiveVisibleRangeActive:v4];
}

- (void)updateAnnotationDataSource:(id)a3 pointContexts:(id)a4
{
  v5 = self->_selectedOverlayEar != 0;
  v6 = a4;
  v7 = [(HKSingleAudiogramChartViewController *)self audiogram];
  v9 = [v7 endDate];

  v8 = [(HKSingleAudiogramChartViewController *)self annotationViewDataSource];
  [v8 updateWithPointSelectionContexts:v6 date:v9 isAverage:v5];
}

- (void)graphView:(id)a3 didUpdateSelectedPoint:(id)a4
{
  v17 = a4;
  if ([HKLollipopController pointSelectionContextsHaveUserInfo:?])
  {
    v5 = [(HKSingleAudiogramChartViewController *)self lollipopController];
    v6 = [v5 isVisible];

    if (v6)
    {
      v7 = [(HKSingleAudiogramChartViewController *)self lollipopController];
      [v7 updateWithPointContexts:v17];
    }

    else
    {
      v8 = [(HKSingleAudiogramChartViewController *)self currentValueView];
      [v8 frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v7 = [(HKSingleAudiogramChartViewController *)self lollipopController];
      [v7 setVisibleWithRect:v17 pointContexts:1 animated:{v10, v12, v14, v16}];
    }
  }
}

- (void)graphViewDidEndSelection:(id)a3
{
  v3 = [(HKSingleAudiogramChartViewController *)self lollipopController];
  [v3 setInvisibleAnimated:1];
}

- (void)_addControllerAsChildController:(id)a3
{
  v4 = a3;
  [(HKSingleAudiogramChartViewController *)self addChildViewController:v4];
  [v4 didMoveToParentViewController:self];
}

- (void)_pinView:(id)a3 toParentGuide:(id)a4 pinBottom:(BOOL)a5
{
  v5 = a5;
  v23 = a3;
  v8 = a4;
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [v23 leadingAnchor];
  v10 = [v8 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [(HKSingleAudiogramChartViewController *)self setLeadingMarginConstraint:v11];

  v12 = [(HKSingleAudiogramChartViewController *)self leadingMarginConstraint];
  [v12 setActive:1];

  v13 = [v23 trailingAnchor];
  v14 = [v8 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [(HKSingleAudiogramChartViewController *)self setTrailingMarginConstraint:v15];

  v16 = [(HKSingleAudiogramChartViewController *)self trailingMarginConstraint];
  [v16 setActive:1];

  v17 = [v23 topAnchor];
  v18 = [v8 topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  [v19 setActive:1];

  if (v5)
  {
    v20 = [v23 bottomAnchor];
    v21 = [v8 bottomAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    [v22 setActive:1];
  }
}

- (id)_findNavigationController
{
  v3 = [(HKSingleAudiogramChartViewController *)self navigationController];

  if (v3)
  {
    v4 = [(HKSingleAudiogramChartViewController *)self navigationController];
    goto LABEL_3;
  }

  v6 = [(HKSingleAudiogramChartViewController *)self view];
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

- (id)_earSpecificColorForEar:(int64_t)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      self = [MEMORY[0x1E69DC888] hk_hearingHealthAudiogramLeftEarLineColor];
    }

    else if (a3 == 2)
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