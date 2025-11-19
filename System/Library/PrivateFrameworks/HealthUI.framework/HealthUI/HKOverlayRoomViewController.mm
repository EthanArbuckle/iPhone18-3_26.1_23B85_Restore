@interface HKOverlayRoomViewController
- (BOOL)_canSelectOverlayLocation:(id)a3 previousSelection:(id)a4;
- (BOOL)_containersContainHealthFactorsSection:(id)a3;
- (BOOL)_currentSelectedContextValidForTimeScope:(int64_t)a3;
- (BOOL)_isInPortraitLayout;
- (BOOL)_shouldInstallDefaultOverlayDeselectionTimerForMode:(int64_t)a3 initialSelectedLocation:(id)a4;
- (BOOL)_shouldStackSingleModeWithShowAllFiltersOverlayAreaVertically;
- (BOOL)_shouldUpdateContextItemsForChanges:(id)a3;
- (BOOL)contextView:(id)a3 canSelectItemAtIndexPath:(id)a4;
- (BOOL)factorDisplayTypeIsActive:(id)a3;
- (BOOL)healthFactorsEnabled;
- (BOOL)selectOverlayButtonForTestingNamed:(id)a3;
- (HKOverlayRoomViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 factorDisplayTypes:(id)a5 mode:(int64_t)a6;
- (NSDirectionalEdgeInsets)_edgeInsetsForWidthDesignation;
- (NSString)description;
- (id)_addHealthFactorsIfNecessary:(id)a3;
- (id)_bottomMostDisplayType:(id)a3;
- (id)_computeRevisedRatiosGivenRatio:(double)a3;
- (id)_contextViewBackgroundColor;
- (id)_createOverlayStackView;
- (id)_createOverlaysWithOptionalSegmentedControllerStackView;
- (id)_currentChartEffectiveVisibleRange;
- (id)_currentIndexPath;
- (id)_evenStackedProportions;
- (id)_findMinimumSizeView;
- (id)_findNavigationController;
- (id)_healthFactorsMeasurementSectionTitle;
- (id)_healthFactorsSectionTitle;
- (id)_indexesOfLargestProportions:(id)a3;
- (id)_segmentedControlTitles;
- (id)_selectedOverlayContextWithLocation:(id)a3;
- (id)_setupSegmentedControl;
- (id)buildFactorContextForDisplayType:(id)a3 factorDisplayType:(id)a4 overlayChartController:(id)a5 currentCalendarOverride:(id)a6 applicationItems:(id)a7 overlayMode:(int64_t)a8 allowsDeselection:(BOOL)a9;
- (id)buildFactorContextSectionForChartController;
- (id)buildFactorContextsAllowingDeselection:(BOOL)a3;
- (id)combineFactors:(id)a3 standardFactors:(id)a4;
- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5;
- (id)controllerTitleWithApplicationItems:(id)a3;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5;
- (id)initialSelectedContextForMode:(int64_t)a3 containerIndex:(int64_t)a4;
- (id)overlayButtonNamesForTesting;
- (id)overlayButtonValueForTesting;
- (id)primaryDisplayTypeWithApplicationItems:(id)a3;
- (id)restorationStateDictionary;
- (id)showAllFiltersButtonTitle;
- (int64_t)_contextItemCount;
- (int64_t)_findOverlayResolution:(id)a3;
- (int64_t)_widthDesignationFromTraitCollection:(id)a3;
- (int64_t)containerIndexForHealthFactors;
- (int64_t)segmentedControlSelectedIndex;
- (unint64_t)_fullModeTransitionToSizeClass:(int64_t)a3;
- (unint64_t)_singleModeTransitionToSizeClass:(int64_t)a3;
- (unint64_t)filteredInteractiveChartOptionsForMode:(int64_t)a3;
- (void)_callPrepareOnOverlayContexts;
- (void)_configureChartAreaMargins;
- (void)_configureChartHeightUsingDefault;
- (void)_configureChartHeightUsingViewRatio;
- (void)_configureMainAreaHorizontally;
- (void)_configureMainAreaVertically;
- (void)_configureOverlayAreaHorizontally;
- (void)_configureOverlayAreaMargins;
- (void)_configureOverlayAreaVertically;
- (void)_configureOverlaysWithOptionalSegmentHorizontalMarginsForModeFull;
- (void)_configureOverlaysWithOptionalSegmentTopMarginForModeFull;
- (void)_configureStackViewsUsingHorizontalSizeClass:(int64_t)a3;
- (void)_didDismissShowAllFilters;
- (void)_disableDefaultOverlaySelection;
- (void)_disableDefaultOverlaySelectionIfNecessary;
- (void)_enumerateContextItemsWithBlock:(id)a3;
- (void)_handlePresentationControllerDismissalDidEnd:(id)a3;
- (void)_handlePresentationControllerPresentationTransitionDidEnd:(id)a3;
- (void)_horizontalSizeClassChanged:(id)a3;
- (void)_installBaseDisplayType:(id)a3 autoscale:(BOOL)a4;
- (void)_installDefaultOverlayDeselectionTimer;
- (void)_invalidateDefaultOverlayDeselectionTimer;
- (void)_layoutSegmentedControl;
- (void)_pauseDefaultOverlayDeselectionTimerIfNecessary;
- (void)_refreshContextItemsAndUpdateChart:(BOOL)a3;
- (void)_refreshUpdatedItemsWithChartUpdate:(BOOL)a3 invalidateChartItems:(BOOL)a4;
- (void)_registerPresentationControllerTransitionNotificationsForOverlayDeselectionTimer;
- (void)_restartDefaultOverlayDeselectionTimerIfNecessary;
- (void)_restoreStackingProportions;
- (void)_selectContextItemAtLocation:(id)a3 animated:(BOOL)a4;
- (void)_selectPreferredItem;
- (void)_setupInterface;
- (void)_setupOverlayContainers;
- (void)_setupOverlayContextItems;
- (void)_setupPrimaryDisplayType;
- (void)_setupStackingProportionsForContext:(id)a3;
- (void)_setupTopLevelChartView;
- (void)_setupTopLevelOverlaysWithOptionalSegmentView;
- (void)_subscribeToSampleTypeUpdates;
- (void)_unregisterPresentationControllerTransitionNotificationsForOverlayDeselectionTimer;
- (void)_unselectCurrentContext;
- (void)_updateChartForOverlaySelection:(id)a3 previousSelection:(id)a4 animated:(BOOL)a5;
- (void)_updateContextTiles;
- (void)_willPresentShowAllFilters;
- (void)contextView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)contextView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)contextView:(id)a3 didTapOnInfoButtonAtIndex:(int64_t)a4;
- (void)dealloc;
- (void)didUpdateFromDateZoom:(int64_t)a3 toDateZoom:(int64_t)a4 newVisibleRange:(id)a5;
- (void)didUpdateSeriesWithNewValueRange:(id)a3;
- (void)didUpdateVisibleValueRange:(id)a3 changeContext:(int64_t)a4;
- (void)fetchContextItemsIfNeededWithDateInterval:(id)a3 completion:(id)a4;
- (void)reloadOverlayContextItems;
- (void)restoreUserActivityState:(id)a3;
- (void)sampleTypeDateRangeController:(id)a3 didUpdateDateRanges:(id)a4;
- (void)saveRestorationState;
- (void)segmentedControlValueChanged:(id)a3;
- (void)setSegmentedControlSelectedIndex:(unint64_t)a3;
- (void)showAllFiltersWithCompletion:(id)a3;
- (void)updateController:(id)a3 didReceiveUpdateForType:(id)a4 samplesAdded:(id)a5 objectsRemoved:(id)a6 recoveringFromError:(BOOL)a7;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation HKOverlayRoomViewController

- (HKOverlayRoomViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 factorDisplayTypes:(id)a5 mode:(int64_t)a6
{
  v47[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v46.receiver = self;
  v46.super_class = HKOverlayRoomViewController;
  v14 = [(HKOverlayRoomViewController *)&v46 initWithNibName:0 bundle:0];
  if (v14)
  {
    if (v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = [MEMORY[0x1E695DF00] date];
    }

    v16 = v15;
    objc_storeStrong(&v14->_applicationItems, a4);
    v17 = [v12 timeScopeController];
    v14->_currentChartTimeScope = [v17 selectedTimeScope];

    v18 = MEMORY[0x1E696AB80];
    v19 = [MEMORY[0x1E695DEE8] currentCalendar];
    v20 = [v18 hk_dateIntervalForDayFromDate:v16 calendar:v19];
    currentChartDateInterval = v14->_currentChartDateInterval;
    v14->_currentChartDateInterval = v20;

    currentSelectedContextLocation = v14->_currentSelectedContextLocation;
    v14->_currentSelectedContextLocation = 0;

    objc_storeStrong(&v14->_displayDate, a3);
    v14->_controllerMode = a6;
    v14->_userHasOverriddenPreferredOverlay = 0;
    primaryDisplayType = v14->_primaryDisplayType;
    v14->_primaryDisplayType = 0;

    overlayContextSectionContainers = v14->_overlayContextSectionContainers;
    v14->_overlayContextSectionContainers = MEMORY[0x1E695E0F0];

    initialSelectedContextLocation = v14->_initialSelectedContextLocation;
    v14->_initialSelectedContextLocation = 0;

    v14->_showAllFiltersVisible = 0;
    showAllFiltersActivity = v14->_showAllFiltersActivity;
    v14->_showAllFiltersActivity = 0;

    restorationContextLocation = v14->_restorationContextLocation;
    v14->_restorationContextLocation = 0;

    segmentedControl = v14->_segmentedControl;
    v14->_segmentedControl = 0;

    topLevelChartView = v14->_topLevelChartView;
    v14->_topLevelChartView = 0;

    topLevelOverlaysWithOptionalSegmentView = v14->_topLevelOverlaysWithOptionalSegmentView;
    v14->_topLevelOverlaysWithOptionalSegmentView = 0;

    v14->_topLevelAxis = 1;
    chartOverlayStackView = v14->_chartOverlayStackView;
    v14->_chartOverlayStackView = 0;

    v32 = HKCreateSerialDispatchQueue();
    contextUpdateQueue = v14->_contextUpdateQueue;
    v14->_contextUpdateQueue = v32;

    v14->_shouldSelectInitialOverlay = 1;
    v14->_additionalChartOptions = 0;
    initialVisibleDateRange = v14->_initialVisibleDateRange;
    v14->_initialVisibleDateRange = 0;

    v14->_previousHorizontalSizeClass = 0;
    v14->_previousWidthDesignation = 1;
    v35 = [(HKOverlayRoomViewController *)v14 navigationItem];
    [v35 setLargeTitleDisplayMode:2];

    singleContextMaximumSizeView = v14->_singleContextMaximumSizeView;
    v14->_singleContextMaximumSizeView = 0;

    v37 = [_TtC8HealthUI45HKInteractiveChartInteractionAnalyticsManager alloc];
    v38 = [v12 healthStore];
    v39 = [(HKInteractiveChartInteractionAnalyticsManager *)v37 initWithHealthStore:v38];
    analyticsManager = v14->_analyticsManager;
    v14->_analyticsManager = v39;

    v47[0] = objc_opt_class();
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
    v42 = [(HKOverlayRoomViewController *)v14 registerForTraitChanges:v41 withTarget:v14 action:sel__horizontalSizeClassChanged_];
    traitChangeRegistration = v14->_traitChangeRegistration;
    v14->_traitChangeRegistration = v42;

    objc_storeStrong(&v14->_factorDisplayTypes, a5);
    previousStackHeights = v14->_previousStackHeights;
    v14->_previousStackHeights = 0;
  }

  return v14;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"class %@ (%p)", v5, self];

  return v6;
}

- (id)controllerTitleWithApplicationItems:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HKOverlayRoomViewController.m" lineNumber:208 description:@"Subclasses must implement controllerTitleWithApplicationItems"];

  return @"**NO**TITLE**";
}

- (id)primaryDisplayTypeWithApplicationItems:(id)a3
{
  v5 = MEMORY[0x1E696AAA8];
  v6 = a3;
  v7 = [v5 currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"HKOverlayRoomViewController.m" lineNumber:214 description:@"Subclasses must implement primaryDisplayTypeWithApplicationItems:"];

  v8 = [v6 displayTypeController];

  v9 = [v8 displayTypeWithIdentifier:&unk_1F43821E8];

  return v9;
}

- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"HKOverlayRoomViewController.m" lineNumber:221 description:@"Subclasses must implement contextSectionContainersForMode:applicationItems:overlayChartController"];

  return MEMORY[0x1E695E0F0];
}

- (id)initialSelectedContextForMode:(int64_t)a3 containerIndex:(int64_t)a4
{
  v6 = [(HKOverlayRoomViewController *)self preferredInitialOverlayIndex];
  if (v6 && [(HKOverlayRoomViewController *)self containerIndexForHealthFactors]!= a4)
  {
    v7 = -[HKOverlayContextLocation initWithContainerIndex:sectionIndex:itemIndex:]([HKOverlayContextLocation alloc], "initWithContainerIndex:sectionIndex:itemIndex:", a4, 0, [v6 integerValue]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"HKOverlayRoomViewController.m" lineNumber:248 description:@"Subclasses must implement createViewControllerMode:displayDate:applicationItems:"];

  return 0;
}

- (id)showAllFiltersButtonTitle
{
  v2 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  v3 = [v2 localization];
  v4 = [v3 displayName];

  if (v4 && ([v4 isEqualToString:&stru_1F42FFBE0] & 1) == 0)
  {
    v7 = MEMORY[0x1E696AEC0];
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v8 = [v5 localizedStringForKey:@"SHOW_MORE_%@_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v6 = [v7 localizedStringWithFormat:v8, v4];
  }

  else
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v6 = [v5 localizedStringForKey:@"SHOW_MORE_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  }

  return v6;
}

- (unint64_t)filteredInteractiveChartOptionsForMode:(int64_t)a3
{
  result = [(HKOverlayRoomViewController *)self additionalChartOptions];
  if (a3 == 3)
  {
    result |= 0x2000uLL;
  }

  return result;
}

- (id)buildFactorContextSectionForChartController
{
  v3 = [(HKOverlayRoomViewController *)self buildFactorContextsAllowingDeselection:1];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 activeFactorContexts];
    v6 = [v4 inactiveFactorContexts];
    v7 = [v5 arrayByAddingObjectsFromArray:v6];

    v8 = [HKOverlayContextSection alloc];
    v9 = [(HKOverlayRoomViewController *)self _healthFactorsSectionTitle];
    v10 = [(HKOverlayContextSection *)v8 initWithSectionTitle:v9 overlayContextItems:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)buildFactorContextsAllowingDeselection:(BOOL)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(HKOverlayRoomViewController *)self healthFactorsEnabled])
  {
    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [(HKOverlayRoomViewController *)self primaryDisplayType];

    if (!v6)
    {
      [(HKOverlayRoomViewController *)a2 buildFactorContextsAllowingDeselection:?];
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = [(HKOverlayRoomViewController *)self factorDisplayTypes];
    v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          v12 = [(HKOverlayRoomViewController *)self primaryDisplayType];
          v13 = [(HKOverlayRoomViewController *)self chartController];
          v14 = [(HKOverlayRoomViewController *)self applicationItems];
          LOBYTE(v19) = a3;
          v15 = [(HKOverlayRoomViewController *)self buildFactorContextForDisplayType:v12 factorDisplayType:v11 overlayChartController:v13 currentCalendarOverride:0 applicationItems:v14 overlayMode:[(HKOverlayRoomViewController *)self controllerMode] allowsDeselection:v19];

          if (v15)
          {
            if ([(HKOverlayRoomViewController *)self factorDisplayTypeIsActive:v11])
            {
              v16 = v22;
            }

            else
            {
              v16 = v21;
            }

            [v16 addObject:v15];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
    }

    v17 = [[HKOverlayRoomActiveInactiveFactorContexts alloc] initWithActiveFactorContexts:v22 inactiveFactorContexts:v21];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)factorDisplayTypeIsActive:(id)a3
{
  v4 = [a3 sampleType];
  if (v4)
  {
    v5 = [(HKOverlayRoomViewController *)self applicationItems];
    v6 = [v5 sampleDateRangeController];

    v7 = [v6 dateRangeForSampleType:v4];
    if (v7)
    {
      v8 = v7;
      v9 = [MEMORY[0x1E695DF00] now];
      v10 = [v8 containsValue:v9 exclusiveStart:0 exclusiveEnd:0];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)combineFactors:(id)a3 standardFactors:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 activeFactorContexts];
  v8 = [v7 arrayByAddingObjectsFromArray:v5];

  v9 = [v6 inactiveFactorContexts];

  v10 = [v8 arrayByAddingObjectsFromArray:v9];

  return v10;
}

- (id)buildFactorContextForDisplayType:(id)a3 factorDisplayType:(id)a4 overlayChartController:(id)a5 currentCalendarOverride:(id)a6 applicationItems:(id)a7 overlayMode:(int64_t)a8 allowsDeselection:(BOOL)a9
{
  v14 = a3;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v14;
    LOBYTE(v22) = a9;
    v20 = [[HKOverlayRoomFactorContext alloc] initWithPrimaryInteractiveChartDisplayType:v19 factorDisplayType:v18 overlayChartController:v17 currentCalendarOverride:v16 applicationItems:v15 overlayMode:a8 allowsDeselection:v22];
  }

  else
  {
    LOBYTE(v22) = a9;
    v20 = [[HKOverlayRoomFactorContext alloc] initWithPrimaryDisplayType:v14 factorDisplayType:v18 overlayChartController:v17 currentCalendarOverride:v16 applicationItems:v15 overlayMode:a8 allowsDeselection:v22];
  }

  return v20;
}

- (id)_addHealthFactorsIfNecessary:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if ([(HKOverlayRoomViewController *)self supportsHealthFactors])
  {
    v5 = v4;
    if (![(HKOverlayRoomViewController *)self _containersContainHealthFactorsSection:v4])
    {
      v5 = v4;
      if ([(HKOverlayRoomViewController *)self controllerMode]== 3)
      {
        if ([v4 count] == 1)
        {
          v6 = [(HKOverlayRoomViewController *)self buildFactorContextsAllowingDeselection:1];
          v7 = v6;
          if (v6)
          {
            v8 = [v6 activeFactorContexts];
            v9 = [v7 inactiveFactorContexts];
            v22 = [v8 arrayByAddingObjectsFromArray:v9];

            v10 = [[HKOverlayContextSection alloc] initWithSectionTitle:0 overlayContextItems:v22];
            v11 = [HKOverlayContextSectionContainer alloc];
            v12 = [(HKOverlayRoomViewController *)self _healthFactorsSectionTitle];
            v26[0] = v10;
            v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
            v14 = [(HKOverlayContextSectionContainer *)v11 initWithContainerTitle:v12 overlayContextSections:v13];

            v15 = [v4 firstObject];
            v16 = [HKOverlayContextSectionContainer alloc];
            v17 = [(HKOverlayRoomViewController *)self _healthFactorsMeasurementSectionTitle];
            v18 = [v15 overlayContextSections];
            v19 = [v15 primaryDisplayType];
            v20 = [(HKOverlayContextSectionContainer *)v16 initWithContainerTitle:v17 overlayContextSections:v18 primaryDisplayType:v19];

            v25[0] = v20;
            v25[1] = v14;
            v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];

LABEL_10:
            goto LABEL_11;
          }
        }

        else
        {
          _HKInitializeLogging();
          v7 = HKUILogCharting();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v24 = self;
            _os_log_impl(&dword_1C3942000, v7, OS_LOG_TYPE_DEFAULT, "HKOverlayRoomViewController %@: Supports health factors but does not define a location for the factor contexts", buf, 0xCu);
          }
        }

        v5 = v4;
        goto LABEL_10;
      }
    }
  }

LABEL_11:

  return v5;
}

- (int64_t)containerIndexForHealthFactors
{
  v3 = [(HKOverlayRoomViewController *)self _healthFactorsSectionTitle];
  v4 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
      v8 = [v7 objectAtIndexedSubscript:v6];

      v9 = [v8 localizedContainerTitle];
      v10 = [v9 isEqualToString:v3];

      if (v10)
      {
        break;
      }

      ++v6;
      v11 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
      v12 = [v11 count];

      if (v6 >= v12)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v6 = -1;
  }

  return v6;
}

- (BOOL)_containersContainHealthFactorsSection:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v5)
  {
    v6 = *v38;
    v26 = self;
    v24 = *v38;
    do
    {
      v7 = 0;
      v25 = v5;
      do
      {
        if (*v38 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v37 + 1) + 8 * v7);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v9 = [v8 overlayContextSections];
        v28 = [v9 countByEnumeratingWithState:&v33 objects:v42 count:16];
        if (v28)
        {
          v10 = *v34;
          v27 = *v34;
          while (2)
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v34 != v10)
              {
                objc_enumerationMutation(v9);
              }

              v12 = *(*(&v33 + 1) + 8 * i);
              v13 = [v12 localizedSectionTitle];
              v14 = [(HKOverlayRoomViewController *)self _healthFactorsSectionTitle];
              v15 = [v13 isEqualToString:v14];

              if (v15)
              {
LABEL_27:

                v22 = 1;
                goto LABEL_29;
              }

              v31 = 0u;
              v32 = 0u;
              v29 = 0u;
              v30 = 0u;
              v16 = [v12 overlayContextItems];
              v17 = [v16 countByEnumeratingWithState:&v29 objects:v41 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v30;
                while (2)
                {
                  for (j = 0; j != v18; ++j)
                  {
                    if (*v30 != v19)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v21 = *(*(&v29 + 1) + 8 * j);
                    if (objc_opt_respondsToSelector() & 1) != 0 && ([v21 healthFactorContext])
                    {

                      goto LABEL_27;
                    }
                  }

                  v18 = [v16 countByEnumeratingWithState:&v29 objects:v41 count:16];
                  if (v18)
                  {
                    continue;
                  }

                  break;
                }
              }

              v10 = v27;
              self = v26;
            }

            v6 = v24;
            v28 = [v9 countByEnumeratingWithState:&v33 objects:v42 count:16];
            if (v28)
            {
              continue;
            }

            break;
          }
        }

        ++v7;
      }

      while (v7 != v25);
      v5 = [v4 countByEnumeratingWithState:&v37 objects:v43 count:16];
      v22 = 0;
    }

    while (v5);
  }

  else
  {
    v22 = 0;
  }

LABEL_29:

  return v22;
}

- (id)_healthFactorsSectionTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"HEALTH_EVENTS_SECTION_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pregnancy"];

  return v3;
}

- (id)_healthFactorsMeasurementSectionTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"HEALTH_EVENTS_MEASUREMENT_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pregnancy"];

  return v3;
}

- (BOOL)healthFactorsEnabled
{
  if (![(HKOverlayRoomViewController *)self supportsHealthFactors])
  {
    return 0;
  }

  v3 = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  if (v3)
  {
    v4 = [(HKOverlayRoomViewController *)self factorDisplayTypes];
    v5 = [v4 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HKOverlayRoomViewController;
  [(HKOverlayRoomViewController *)&v5 viewDidLoad];
  [(HKOverlayRoomViewController *)self _setupPrimaryDisplayType];
  [(HKOverlayRoomViewController *)self _setupInterface];
  [(HKOverlayRoomViewController *)self _setupOverlayContextItems];
  v3 = [(HKOverlayRoomViewController *)self applicationItems];
  v4 = [v3 sampleDateRangeController];
  [v4 addObserver:self];

  [(HKOverlayRoomViewController *)self _subscribeToSampleTypeUpdates];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HKOverlayRoomViewController;
  [(HKOverlayRoomViewController *)&v3 viewDidLayoutSubviews];
  [(HKOverlayRoomViewController *)self _layoutSegmentedControl];
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = HKOverlayRoomViewController;
  [(HKOverlayRoomViewController *)&v7 viewDidAppear:a3];
  v4 = [(UIViewController *)self hk_viewIsHidden];
  v5 = [(HKOverlayRoomViewController *)self restorationUserActivity];

  if (v5)
  {
    if (!v4)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__HKOverlayRoomViewController_viewDidAppear___block_invoke;
      block[3] = &unk_1E81B55A8;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __45__HKOverlayRoomViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 restorationUserActivity];
  [v1 restoreUserActivityState:v2];
}

- (void)dealloc
{
  v3 = [(HKOverlayRoomViewController *)self applicationItems];
  v4 = [v3 sampleDateRangeController];
  [v4 removeObserver:self];

  v5 = [(HKOverlayRoomViewController *)self applicationItems];
  v6 = [v5 sampleTypeUpdateController];
  v7 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  v8 = [v7 sampleType];
  [v6 removeObserver:self forType:v8];

  v9 = [(HKOverlayRoomViewController *)self traitChangeRegistration];
  [(HKOverlayRoomViewController *)self unregisterForTraitChanges:v9];

  v10.receiver = self;
  v10.super_class = HKOverlayRoomViewController;
  [(HKOverlayRoomViewController *)&v10 dealloc];
}

- (void)reloadOverlayContextItems
{
  [(HKOverlayRoomViewController *)self _unselectCurrentContext];
  [(HKOverlayRoomViewController *)self _setupOverlayContainers];

  [(HKOverlayRoomViewController *)self _setupOverlayContextItems];
}

- (void)_updateContextTiles
{
  v3 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
  v4 = [v3 count];

  if (!v4)
  {
    return;
  }

  v5 = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];

  if (v5)
  {
    v6 = [(HKOverlayRoomViewController *)self sectionedContextView];
    v7 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
    v8 = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
LABEL_6:
    v10 = v8;
    v11 = [v7 objectAtIndexedSubscript:{objc_msgSend(v8, "containerIndex")}];
    v12 = [v11 overlayContextSections];
    [v6 setDisplayTypeContextSections:v12];

    goto LABEL_7;
  }

  v9 = [(HKOverlayRoomViewController *)self initialSelectedContextLocation];

  v6 = [(HKOverlayRoomViewController *)self sectionedContextView];
  v7 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
  if (v9)
  {
    v8 = [(HKOverlayRoomViewController *)self initialSelectedContextLocation];
    goto LABEL_6;
  }

  v10 = [v7 objectAtIndexedSubscript:{-[HKOverlayRoomViewController segmentedControlSelectedIndex](self, "segmentedControlSelectedIndex")}];
  v11 = [v10 overlayContextSections];
  [v6 setDisplayTypeContextSections:v11];
LABEL_7:

  if (![(HKOverlayRoomViewController *)self userHasOverriddenPreferredOverlay])
  {

    [(HKOverlayRoomViewController *)self _selectPreferredItem];
  }
}

- (void)_selectPreferredItem
{
  v3 = [(HKOverlayRoomViewController *)self initialSelectedContextLocation];
  if (v3)
  {
    v4 = v3;
    v5 = [(HKOverlayRoomViewController *)self initialSelectedContextLocation];
    v6 = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
    v7 = [v5 isEqual:v6];

    if ((v7 & 1) == 0)
    {
      v8 = [(HKOverlayRoomViewController *)self initialSelectedContextLocation];
      [(HKOverlayRoomViewController *)self setCurrentSelectedContextLocation:v8];

      v9 = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
      -[HKOverlayRoomViewController setSegmentedControlSelectedIndex:](self, "setSegmentedControlSelectedIndex:", [v9 containerIndex]);

      v10 = MEMORY[0x1E696AC88];
      v11 = [(HKOverlayRoomViewController *)self initialSelectedContextLocation];
      v12 = [v11 itemIndex];
      v13 = [(HKOverlayRoomViewController *)self initialSelectedContextLocation];
      v16 = [v10 indexPathForRow:v12 inSection:{objc_msgSend(v13, "sectionIndex")}];

      v14 = [(HKOverlayRoomViewController *)self sectionedContextView];
      [v14 selectItemAtIndexPath:v16 animated:0 scrollPosition:0];

      v15 = [(HKOverlayRoomViewController *)self initialSelectedContextLocation];
      [(HKOverlayRoomViewController *)self _updateChartForOverlaySelection:v15 previousSelection:0];
    }
  }
}

- (void)_setupPrimaryDisplayType
{
  v3 = [(HKOverlayRoomViewController *)self applicationItems];
  v7 = [(HKOverlayRoomViewController *)self primaryDisplayTypeWithApplicationItems:v3];

  v4 = [v7 presentation];
  v5 = [v4 copyWithIsCriticalForAutoscale:1];
  v6 = [v7 copyWithPresentation:v5];
  [(HKOverlayRoomViewController *)self setPrimaryDisplayType:v6];
}

- (id)createChartOverlayViewController
{
  v3 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  v4 = [v3 hk_interactiveChartOptions];

  v5 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(HKOverlayRoomViewController *)self primaryDisplayType];
    v8 = [v7 baseDisplayType];
    v9 = v8;
    if (v8)
    {
      v4 = [v8 hk_interactiveChartOptions];
    }
  }

  if (-[HKOverlayRoomViewController conformsToProtocol:](self, "conformsToProtocol:", &unk_1F43B2A78) && (-[HKOverlayRoomViewController getChartSummaryTrendModelToModify](self, "getChartSummaryTrendModelToModify"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 selectTrendInitially], v10, (v11 & 1) != 0) || self->_controllerMode == 3)
  {
    v4 |= 0x2000uLL;
  }

  v12 = [(HKOverlayRoomViewController *)self additionalChartOptions]| v4;
  v13 = [(HKOverlayRoomViewController *)self prefersOpaqueLegends];
  v14 = v12 | 0x10000;
  if (!v13)
  {
    v14 = v12;
  }

  v29 = v14;
  v28 = [HKInteractiveChartOverlayViewController alloc];
  v32 = [(HKOverlayRoomViewController *)self applicationItems];
  v33 = [v32 healthStore];
  v26 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  v31 = [(HKOverlayRoomViewController *)self applicationItems];
  v15 = [v31 unitController];
  v30 = [(HKOverlayRoomViewController *)self applicationItems];
  v16 = [v30 dateCache];
  v27 = [(HKOverlayRoomViewController *)self applicationItems];
  v17 = [v27 chartDataCacheController];
  v18 = [(HKOverlayRoomViewController *)self applicationItems];
  v19 = [v18 timeScopeController];
  v20 = [(HKOverlayRoomViewController *)self applicationItems];
  v21 = [v20 sampleDateRangeController];
  v22 = [(HKOverlayRoomViewController *)self displayDate];
  v23 = v16;
  v24 = [(HKInteractiveChartOverlayViewController *)v28 initWithHealthStore:v33 primaryDisplayType:v26 unitPreferenceController:v15 dateCache:v16 chartDataCacheController:v17 selectedTimeScopeController:v19 sampleTypeDateRangeController:v21 initialXValue:v22 currentCalendarOverride:0 options:v29];

  [(HKInteractiveChartViewController *)v24 setCurrentOverlayLocationProvider:self];

  return v24;
}

- (id)_segmentedControlTitles
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if (v9)
        {
          v10 = [*(*(&v16 + 1) + 8 * i) localizedContainerTitle];
          if (v10)
          {
            v11 = v10;
            v12 = [v9 localizedContainerTitle];
            v13 = [v12 length];

            if (v13)
            {
              v14 = [v9 localizedContainerTitle];
              [v3 addObject:v14];
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_setupInterface
{
  [(HKOverlayRoomViewController *)self _setupTopLevelChartView];
  [(HKOverlayRoomViewController *)self _setupOverlayContainers];
  [(HKOverlayRoomViewController *)self _setupTopLevelOverlaysWithOptionalSegmentView];
  v3 = [(HKOverlayRoomViewController *)self traitCollection];
  v4 = [v3 horizontalSizeClass];

  [(HKOverlayRoomViewController *)self _configureStackViewsUsingHorizontalSizeClass:v4];
  v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v6 = [(HKOverlayRoomViewController *)self view];
  [v6 setBackgroundColor:v5];

  v7 = [MEMORY[0x1E696AEC0] hk_chartOverlayAccessibilityIdentifier:@"Top"];
  v8 = [(HKOverlayRoomViewController *)self view];
  [v8 setAccessibilityIdentifier:v7];

  v10 = [(HKOverlayRoomViewController *)self applicationItems];
  v9 = [(HKOverlayRoomViewController *)self controllerTitleWithApplicationItems:v10];
  [(HKOverlayRoomViewController *)self setTitle:v9];
}

- (void)_setupTopLevelChartView
{
  v59[9] = *MEMORY[0x1E69E9840];
  v3 = [(HKOverlayRoomViewController *)self createChartOverlayViewController];
  [(HKOverlayRoomViewController *)self setChartController:v3];

  v4 = [(HKOverlayRoomViewController *)self chartController];
  [v4 addChartViewObserver:self];

  v5 = [(HKOverlayRoomViewController *)self chartController];
  [(HKOverlayRoomViewController *)self addChildViewController:v5];

  v6 = [(HKOverlayRoomViewController *)self chartController];
  v7 = [v6 view];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [(HKOverlayRoomViewController *)self initialVisibleDateRange];
  v9 = [(HKOverlayRoomViewController *)self chartController];
  [v9 setInitialVisibleDateRange:v8];

  v10 = objc_alloc(MEMORY[0x1E69DD250]);
  v11 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  topLevelChartView = self->_topLevelChartView;
  self->_topLevelChartView = v11;

  [(UIView *)self->_topLevelChartView setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [(HKOverlayRoomViewController *)self view];
  [v13 addSubview:self->_topLevelChartView];

  [(UIView *)self->_topLevelChartView addSubview:v7];
  v14 = [v7 bottomAnchor];
  v15 = [(UIView *)self->_topLevelChartView bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  chartControllerViewToTopLevelChartViewBottomConstraint = self->_chartControllerViewToTopLevelChartViewBottomConstraint;
  self->_chartControllerViewToTopLevelChartViewBottomConstraint = v16;

  v18 = [(UIView *)self->_topLevelChartView trailingAnchor];
  v19 = [(HKOverlayRoomViewController *)self view];
  v20 = [v19 safeAreaLayoutGuide];
  v21 = [v20 trailingAnchor];
  v22 = [v18 constraintEqualToAnchor:v21];
  topLevelChartViewTrailingConstraint = self->_topLevelChartViewTrailingConstraint;
  self->_topLevelChartViewTrailingConstraint = v22;

  v24 = [(UIView *)self->_topLevelChartView leadingAnchor];
  v25 = [(HKOverlayRoomViewController *)self view];
  v26 = [v25 safeAreaLayoutGuide];
  v27 = [v26 leadingAnchor];
  v28 = [v24 constraintEqualToAnchor:v27];
  topLevelChartViewLeadingConstraint = self->_topLevelChartViewLeadingConstraint;
  self->_topLevelChartViewLeadingConstraint = v28;

  v30 = [(UIView *)self->_topLevelChartView bottomAnchor];
  v31 = [v7 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  topLevelChartViewBottomConstraint = self->_topLevelChartViewBottomConstraint;
  self->_topLevelChartViewBottomConstraint = v32;

  v34 = [v7 heightAnchor];
  v35 = [v34 constraintGreaterThanOrEqualToConstant:100.0];
  chartControllerViewHeightConstraint = self->_chartControllerViewHeightConstraint;
  self->_chartControllerViewHeightConstraint = v35;

  v52 = MEMORY[0x1E696ACD8];
  v37 = self->_topLevelChartViewTrailingConstraint;
  v59[0] = self->_topLevelChartViewLeadingConstraint;
  v59[1] = v37;
  v57 = [(UIView *)self->_topLevelChartView topAnchor];
  v58 = [(HKOverlayRoomViewController *)self view];
  v56 = [v58 safeAreaLayoutGuide];
  v55 = [v56 topAnchor];
  v54 = [v57 constraintEqualToAnchor:v55];
  v38 = self->_topLevelChartViewBottomConstraint;
  v59[2] = v54;
  v59[3] = v38;
  v39 = v7;
  v51 = [v7 leadingAnchor];
  v50 = [(UIView *)self->_topLevelChartView leadingAnchor];
  v40 = [v51 constraintEqualToAnchor:v50];
  v59[4] = v40;
  v53 = v39;
  v41 = [v39 trailingAnchor];
  v42 = [(UIView *)self->_topLevelChartView trailingAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];
  v59[5] = v43;
  v44 = [v39 topAnchor];
  v45 = [(UIView *)self->_topLevelChartView topAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];
  v47 = self->_chartControllerViewToTopLevelChartViewBottomConstraint;
  v59[6] = v46;
  v59[7] = v47;
  v59[8] = self->_chartControllerViewHeightConstraint;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:9];
  [v52 activateConstraints:v48];

  v49 = [MEMORY[0x1E696AEC0] hk_chartOverlayAccessibilityIdentifier:@"Top.Chart"];
  [(UIView *)self->_topLevelChartView setAccessibilityIdentifier:v49];
}

- (void)_setupTopLevelOverlaysWithOptionalSegmentView
{
  v59[4] = *MEMORY[0x1E69E9840];
  v3 = [(HKOverlayRoomViewController *)self _createOverlaysWithOptionalSegmentedControllerStackView];
  overlaysWithOptionalSegmentController = self->_overlaysWithOptionalSegmentController;
  self->_overlaysWithOptionalSegmentController = v3;

  [(UIStackView *)self->_overlaysWithOptionalSegmentController setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = objc_alloc(MEMORY[0x1E69DD250]);
  v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  topLevelOverlaysWithOptionalSegmentView = self->_topLevelOverlaysWithOptionalSegmentView;
  self->_topLevelOverlaysWithOptionalSegmentView = v6;

  [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [(HKOverlayRoomViewController *)self _contextViewBackgroundColor];
  [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView setBackgroundColor:v8];

  [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView addSubview:self->_overlaysWithOptionalSegmentController];
  v9 = [(UIStackView *)self->_overlaysWithOptionalSegmentController leadingAnchor];
  v10 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  overlaysWithOptionalSegmentLeadingConstraint = self->_overlaysWithOptionalSegmentLeadingConstraint;
  self->_overlaysWithOptionalSegmentLeadingConstraint = v11;

  v13 = [(UIStackView *)self->_overlaysWithOptionalSegmentController trailingAnchor];
  v14 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  overlaysWithOptionalSegmentTrailingConstraint = self->_overlaysWithOptionalSegmentTrailingConstraint;
  self->_overlaysWithOptionalSegmentTrailingConstraint = v15;

  v17 = [(HKOverlayRoomViewController *)self segmentedControl];
  if (v17)
  {
    v18 = 15.0;
  }

  else
  {
    v18 = 0.0;
  }

  v19 = [(UIStackView *)self->_overlaysWithOptionalSegmentController topAnchor];
  v20 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView safeAreaLayoutGuide];
  v21 = [v20 topAnchor];
  v22 = [v19 constraintEqualToAnchor:v21 constant:v18];
  overlaysWithOptionalSegmentTopConstraint = self->_overlaysWithOptionalSegmentTopConstraint;
  self->_overlaysWithOptionalSegmentTopConstraint = v22;

  v24 = MEMORY[0x1E696ACD8];
  v25 = self->_overlaysWithOptionalSegmentTrailingConstraint;
  v59[0] = self->_overlaysWithOptionalSegmentLeadingConstraint;
  v59[1] = v25;
  v59[2] = self->_overlaysWithOptionalSegmentTopConstraint;
  v26 = [(UIStackView *)self->_overlaysWithOptionalSegmentController bottomAnchor];
  v27 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  v59[3] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:4];
  [v24 activateConstraints:v29];

  v30 = [(HKOverlayRoomViewController *)self view];
  [v30 addSubview:self->_topLevelOverlaysWithOptionalSegmentView];

  v31 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView leadingAnchor];
  v32 = [(HKOverlayRoomViewController *)self view];
  v33 = [v32 safeAreaLayoutGuide];
  v34 = [v33 leadingAnchor];
  v35 = [v31 constraintEqualToAnchor:v34];
  topLevelOverlaysWithOptionalSegmentViewLeadingConstraint = self->_topLevelOverlaysWithOptionalSegmentViewLeadingConstraint;
  self->_topLevelOverlaysWithOptionalSegmentViewLeadingConstraint = v35;

  v37 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView trailingAnchor];
  v38 = [(HKOverlayRoomViewController *)self view];
  v39 = [v38 safeAreaLayoutGuide];
  v40 = [v39 trailingAnchor];
  v41 = [v37 constraintEqualToAnchor:v40];
  topLevelOverlaysWithOptionalSegmentViewTrailingConstraint = self->_topLevelOverlaysWithOptionalSegmentViewTrailingConstraint;
  self->_topLevelOverlaysWithOptionalSegmentViewTrailingConstraint = v41;

  v43 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView topAnchor];
  v44 = [(UIView *)self->_topLevelChartView bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];
  topLevelOverlaysWithOptionalSegmentViewTopConstraint = self->_topLevelOverlaysWithOptionalSegmentViewTopConstraint;
  self->_topLevelOverlaysWithOptionalSegmentViewTopConstraint = v45;

  v47 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView widthAnchor];
  v48 = [v47 constraintEqualToConstant:336.0];
  topLevelOverlaysWithOptionalSegmentViewWidthConstraint = self->_topLevelOverlaysWithOptionalSegmentViewWidthConstraint;
  self->_topLevelOverlaysWithOptionalSegmentViewWidthConstraint = v48;

  v50 = MEMORY[0x1E696ACD8];
  v51 = self->_topLevelOverlaysWithOptionalSegmentViewTrailingConstraint;
  v58[0] = self->_topLevelOverlaysWithOptionalSegmentViewLeadingConstraint;
  v58[1] = v51;
  v58[2] = self->_topLevelOverlaysWithOptionalSegmentViewTopConstraint;
  v52 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView bottomAnchor];
  v53 = [(HKOverlayRoomViewController *)self view];
  v54 = [v53 bottomAnchor];
  v55 = [v52 constraintEqualToAnchor:v54];
  v58[3] = v55;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:4];
  [v50 activateConstraints:v56];

  v57 = [MEMORY[0x1E696AEC0] hk_chartOverlayAccessibilityIdentifier:@"Top.OverlaysWithOptionalSegment"];
  [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView setAccessibilityIdentifier:v57];
}

- (id)_createOverlaysWithOptionalSegmentedControllerStackView
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(HKOverlayRoomViewController *)self _setupSegmentedControl];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(HKOverlayRoomViewController *)self _createOverlayStackView];
  chartOverlayStackView = self->_chartOverlayStackView;
  self->_chartOverlayStackView = v5;

  [v3 addObject:self->_chartOverlayStackView];
  v7 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v3];
  [v7 setAxis:1];

  return v7;
}

- (id)_createOverlayStackView
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(HKOverlayRoomViewController *)self supportsShowAllFilters];
  if ([(HKOverlayRoomViewController *)self _contextItemCount]>= 1)
  {
    v5 = [[HKDisplayTypeSectionedContextView alloc] initWithStyle:[(HKOverlayRoomViewController *)self controllerMode]];
    [(HKOverlayRoomViewController *)self setSectionedContextView:v5];

    v6 = [(HKOverlayRoomViewController *)self _contextViewBackgroundColor];
    v7 = [(HKOverlayRoomViewController *)self sectionedContextView];
    [v7 setBackgroundColor:v6];

    v8 = [(HKOverlayRoomViewController *)self sectionedContextView];
    [v8 setDelegate:self];

    v9 = [(HKOverlayRoomViewController *)self sectionedContextView];
    [(HKOverlayRoomViewController *)self _layoutNoVerticalExpansion:v9];

    if ([(HKOverlayRoomViewController *)self controllerMode]!= 1 || v4)
    {
      [(HKOverlayRoomViewController *)self sectionedContextView];
    }

    else
    {
      v10 = [HKMaximumSizeView alloc];
      v11 = [(HKOverlayRoomViewController *)self sectionedContextView];
      v12 = [(HKMaximumSizeView *)v10 initWithView:v11 maximumSize:*MEMORY[0x1E69DE788], *MEMORY[0x1E69DE788]];
      [(HKOverlayRoomViewController *)self setSingleContextMaximumSizeView:v12];

      [(HKOverlayRoomViewController *)self singleContextMaximumSizeView];
    }
    v13 = ;
    [v3 addObject:v13];

    if ([(HKOverlayRoomViewController *)self controllerMode]== 3)
    {
      v14 = [(HKOverlayRoomViewController *)self sectionedContextView];
      [v14 setUseHorizontalInsets:1];

      v15 = [MEMORY[0x1E696C608] sharedBehavior];
      v16 = [v15 isiPad];

      if (v16)
      {
        v17 = [(HKOverlayRoomViewController *)self sectionedContextView];
        [v17 setUseTopInsetsWithNoHeader:0];
      }
    }
  }

  if (v4)
  {
    v18 = [(HKOverlayRoomViewController *)self showAllFiltersButtonTitle];
    v19 = [MEMORY[0x1E69DC738] hk_chartShowMoreDataButtonWithTitleOverride:v18 target:self action:sel__showAllFilters_];
    [(HKOverlayRoomViewController *)self _layoutNoVerticalExpansion:v19];
    [v3 addObject:v19];
  }

  v20 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v3];
  [v20 setLayoutMarginsRelativeArrangement:1];
  v21 = [(HKOverlayRoomViewController *)self _contextViewBackgroundColor];
  [v20 setBackgroundColor:v21];

  return v20;
}

- (unint64_t)_fullModeTransitionToSizeClass:(int64_t)a3
{
  if (a3 < 2)
  {
    return 2 * ([(HKOverlayRoomViewController *)self previousHorizontalSizeClass]!= 1);
  }

  if (a3 == 2)
  {
    return [(HKOverlayRoomViewController *)self previousHorizontalSizeClass]!= 2;
  }

  return 0;
}

- (unint64_t)_singleModeTransitionToSizeClass:(int64_t)a3
{
  if ([(HKOverlayRoomViewController *)self previousHorizontalSizeClass]&& [(HKOverlayRoomViewController *)self previousHorizontalSizeClass]== a3)
  {
    return 0;
  }

  if (a3 == 2)
  {
    return 1;
  }

  return 2;
}

- (int64_t)_widthDesignationFromTraitCollection:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForNSIntegerTrait:objc_opt_class()];

  return v4;
}

- (BOOL)_shouldStackSingleModeWithShowAllFiltersOverlayAreaVertically
{
  v3 = [(HKOverlayRoomViewController *)self traitCollection];
  v4 = [(HKOverlayRoomViewController *)self _widthDesignationFromTraitCollection:v3];

  return (v4 - 7) < 0xFFFFFFFFFFFFFFFDLL;
}

- (void)_configureStackViewsUsingHorizontalSizeClass:(int64_t)a3
{
  v5 = [(HKOverlayRoomViewController *)self controllerMode];
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        goto LABEL_34;
      }

      v6 = [(HKOverlayRoomViewController *)self supportsShowAllFilters];
      v7 = [(HKOverlayRoomViewController *)self _singleModeTransitionToSizeClass:a3];
      if (v7 != 2)
      {
        if (v7 == 1)
        {
          [(HKOverlayRoomViewController *)self _configureMainAreaVertically];
          if (!v6)
          {
            goto LABEL_14;
          }
        }

        else if (v7 || !v6)
        {
          goto LABEL_34;
        }

        if ([(HKOverlayRoomViewController *)self _shouldStackSingleModeWithShowAllFiltersOverlayAreaVertically])
        {
          goto LABEL_21;
        }

LABEL_14:
        [(HKOverlayRoomViewController *)self _configureOverlayAreaHorizontally];
        goto LABEL_34;
      }

LABEL_20:
      [(HKOverlayRoomViewController *)self _configureMainAreaVertically];
LABEL_21:
      [(HKOverlayRoomViewController *)self _configureOverlayAreaVertically];
      goto LABEL_34;
    }

LABEL_11:
    v8 = [(HKOverlayRoomViewController *)self _singleModeTransitionToSizeClass:a3];
    if (v8 != 2)
    {
      if (v8 != 1)
      {
        goto LABEL_34;
      }

      [(HKOverlayRoomViewController *)self _configureMainAreaVertically];
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  if (v5 != 3)
  {
    if (v5 != 2)
    {
      goto LABEL_34;
    }

    goto LABEL_11;
  }

  v9 = [(HKOverlayRoomViewController *)self _fullModeTransitionToSizeClass:a3];
  if (v9 >= 2)
  {
    if (v9 != 2)
    {
      goto LABEL_30;
    }

    [(HKOverlayRoomViewController *)self _configureMainAreaVertically];
  }

  else
  {
    if (a3 != 2)
    {
      goto LABEL_30;
    }

    v10 = [(HKOverlayRoomViewController *)self _isInPortraitLayout];
    if ([(HKOverlayRoomViewController *)self topLevelAxis]!= v10)
    {
      if (v10)
      {
        [(HKOverlayRoomViewController *)self _configureMainAreaVertically];
      }

      else
      {
        [(HKOverlayRoomViewController *)self _configureMainAreaHorizontally];
      }
    }

    v11 = [(HKOverlayRoomViewController *)self chartOverlayStackView];
    v12 = [v11 axis];

    if (v12 == 1)
    {
      goto LABEL_30;
    }
  }

  [(HKOverlayRoomViewController *)self _configureOverlayAreaVertically];
LABEL_30:
  v13 = [(HKOverlayRoomViewController *)self _fullViewRatioModeToAxis:[(HKOverlayRoomViewController *)self topLevelAxis]];
  if (v13 == 1)
  {
    [(HKOverlayRoomViewController *)self _configureChartHeightUsingDefault];
  }

  else if (!v13)
  {
    [(HKOverlayRoomViewController *)self _configureChartHeightUsingViewRatio];
  }

LABEL_34:

  [(HKOverlayRoomViewController *)self setPreviousHorizontalSizeClass:a3];
}

- (BOOL)_isInPortraitLayout
{
  v3 = [(HKOverlayRoomViewController *)self view];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = self;
  v13 = [(HKOverlayRoomViewController *)v12 parentViewController];

  if (v13)
  {
    do
    {
      v14 = [(HKOverlayRoomViewController *)v12 parentViewController];

      v15 = [(HKOverlayRoomViewController *)v14 parentViewController];

      v12 = v14;
    }

    while (v15);
  }

  else
  {
    v14 = v12;
  }

  v16 = [(HKOverlayRoomViewController *)v14 presentationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v18 = [(HKOverlayRoomViewController *)v14 presentationController];
    [v18 frameOfPresentedViewInContainerView];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v30.origin.x = v20;
    v30.origin.y = v22;
    v30.size.width = v24;
    v30.size.height = v26;
    if (!CGRectIsNull(v30))
    {
      v5 = v20;
      v7 = v22;
      v9 = v24;
      v11 = v26;
    }
  }

  v31.origin.x = v5;
  v31.origin.y = v7;
  v31.size.width = v9;
  v31.size.height = v11;
  Width = CGRectGetWidth(v31);
  v32.origin.x = v5;
  v32.origin.y = v7;
  v32.size.width = v9;
  v32.size.height = v11;
  v28 = Width < CGRectGetHeight(v32);

  return v28;
}

- (id)_findMinimumSizeView
{
  v2 = [(HKOverlayRoomViewController *)self chartController];
  v3 = [v2 view];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_configureChartHeightUsingViewRatio
{
  v3 = [(HKOverlayRoomViewController *)self _findMinimumSizeView];
  if (v3)
  {
    v26 = v3;
    [(HKOverlayRoomViewController *)self _edgeInsetsForWidthDesignation];
    v5 = v4;
    v7 = v6;
    v8 = [(HKOverlayRoomViewController *)self view];
    [v8 frame];
    v10 = v9 - v7 - v5;

    v11 = [(HKOverlayRoomViewController *)self chartController];
    [v11 minimumHeightForWidth:v10 chartWidthToHeightRatio:1.5];
    v13 = v12;

    v14 = 100.0;
    if (v13 >= 100.0)
    {
      v14 = v13;
    }

    [v26 setMinimumHeight:v14];
    [(NSLayoutConstraint *)self->_chartControllerViewHeightConstraint setActive:0];
    v15 = [(HKOverlayRoomViewController *)self view];
    v16 = [v15 safeAreaLayoutGuide];
    [v16 layoutFrame];
    v18 = v17 * 0.5;

    [(HKInteractiveChartViewController *)self->_chartController heightForChartHeight:v18];
    v20 = v19;
    v21 = [(HKOverlayRoomViewController *)self chartController];
    v22 = [v21 view];
    v23 = [v22 heightAnchor];
    v24 = [v23 constraintLessThanOrEqualToConstant:v20];
    chartControllerViewHeightConstraint = self->_chartControllerViewHeightConstraint;
    self->_chartControllerViewHeightConstraint = v24;

    [(NSLayoutConstraint *)self->_chartControllerViewHeightConstraint setActive:1];
    v3 = v26;
  }
}

- (void)_configureChartHeightUsingDefault
{
  v3 = [(HKOverlayRoomViewController *)self _findMinimumSizeView];
  if (v3)
  {
    v12 = v3;
    v4 = [(HKOverlayRoomViewController *)self chartController];
    [v4 minimumHeightForChart];
    v6 = v5;

    if (v6 < 100.0)
    {
      v6 = 100.0;
    }

    [v12 setMinimumHeight:v6];
    [(NSLayoutConstraint *)self->_chartControllerViewHeightConstraint setActive:0];
    v7 = [(HKOverlayRoomViewController *)self chartController];
    v8 = [v7 view];
    v9 = [v8 heightAnchor];
    v10 = [v9 constraintGreaterThanOrEqualToConstant:v6];
    chartControllerViewHeightConstraint = self->_chartControllerViewHeightConstraint;
    self->_chartControllerViewHeightConstraint = v10;

    [(NSLayoutConstraint *)self->_chartControllerViewHeightConstraint setActive:1];
    v3 = v12;
  }
}

- (void)_configureMainAreaVertically
{
  v51[7] = *MEMORY[0x1E69E9840];
  v3 = [(HKOverlayRoomViewController *)self chartController];
  v49 = [v3 view];

  topLevelChartViewTrailingConstraint = self->_topLevelChartViewTrailingConstraint;
  v5 = MEMORY[0x1E696ACD8];
  topLevelChartViewBottomConstraint = self->_topLevelChartViewBottomConstraint;
  v51[0] = self->_topLevelChartViewLeadingConstraint;
  v51[1] = topLevelChartViewTrailingConstraint;
  topLevelOverlaysWithOptionalSegmentViewLeadingConstraint = self->_topLevelOverlaysWithOptionalSegmentViewLeadingConstraint;
  v51[2] = topLevelChartViewBottomConstraint;
  v51[3] = topLevelOverlaysWithOptionalSegmentViewLeadingConstraint;
  topLevelOverlaysWithOptionalSegmentViewTopConstraint = self->_topLevelOverlaysWithOptionalSegmentViewTopConstraint;
  v51[4] = self->_topLevelOverlaysWithOptionalSegmentViewTrailingConstraint;
  v51[5] = topLevelOverlaysWithOptionalSegmentViewTopConstraint;
  v51[6] = self->_topLevelOverlaysWithOptionalSegmentViewWidthConstraint;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:7];
  [v5 deactivateConstraints:v9];

  v10 = [(UIView *)self->_topLevelChartView leadingAnchor];
  v11 = [(HKOverlayRoomViewController *)self view];
  v12 = [v11 safeAreaLayoutGuide];
  v13 = [v12 leadingAnchor];
  v14 = [v10 constraintEqualToAnchor:v13];
  topLevelChartViewLeadingConstraint = self->_topLevelChartViewLeadingConstraint;
  self->_topLevelChartViewLeadingConstraint = v14;

  v16 = [(UIView *)self->_topLevelChartView trailingAnchor];
  v17 = [(HKOverlayRoomViewController *)self view];
  v18 = [v17 safeAreaLayoutGuide];
  v19 = [v18 trailingAnchor];
  v20 = [v16 constraintEqualToAnchor:v19];
  v21 = self->_topLevelChartViewTrailingConstraint;
  self->_topLevelChartViewTrailingConstraint = v20;

  v22 = [(UIView *)self->_topLevelChartView bottomAnchor];
  v23 = [v49 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  v25 = self->_topLevelChartViewBottomConstraint;
  self->_topLevelChartViewBottomConstraint = v24;

  v26 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView leadingAnchor];
  v27 = [(HKOverlayRoomViewController *)self view];
  v28 = [v27 safeAreaLayoutGuide];
  v29 = [v28 leadingAnchor];
  v30 = [v26 constraintEqualToAnchor:v29];
  v31 = self->_topLevelOverlaysWithOptionalSegmentViewLeadingConstraint;
  self->_topLevelOverlaysWithOptionalSegmentViewLeadingConstraint = v30;

  v32 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView trailingAnchor];
  v33 = [(HKOverlayRoomViewController *)self view];
  v34 = [v33 safeAreaLayoutGuide];
  v35 = [v34 trailingAnchor];
  v36 = [v32 constraintEqualToAnchor:v35];
  topLevelOverlaysWithOptionalSegmentViewTrailingConstraint = self->_topLevelOverlaysWithOptionalSegmentViewTrailingConstraint;
  self->_topLevelOverlaysWithOptionalSegmentViewTrailingConstraint = v36;

  v38 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView topAnchor];
  v39 = [(UIView *)self->_topLevelChartView bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];
  v41 = self->_topLevelOverlaysWithOptionalSegmentViewTopConstraint;
  self->_topLevelOverlaysWithOptionalSegmentViewTopConstraint = v40;

  v42 = MEMORY[0x1E696ACD8];
  v43 = self->_topLevelChartViewTrailingConstraint;
  v44 = self->_topLevelChartViewBottomConstraint;
  v50[0] = self->_topLevelChartViewLeadingConstraint;
  v50[1] = v43;
  v45 = self->_topLevelOverlaysWithOptionalSegmentViewLeadingConstraint;
  v46 = self->_topLevelOverlaysWithOptionalSegmentViewTrailingConstraint;
  v50[2] = v44;
  v50[3] = v45;
  v47 = self->_topLevelOverlaysWithOptionalSegmentViewTopConstraint;
  v50[4] = v46;
  v50[5] = v47;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:6];
  [v42 activateConstraints:v48];

  [(HKOverlayRoomViewController *)self setTopLevelAxis:1];
}

- (void)_configureMainAreaHorizontally
{
  v61[6] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ACD8];
  topLevelChartViewTrailingConstraint = self->_topLevelChartViewTrailingConstraint;
  v61[0] = self->_topLevelChartViewLeadingConstraint;
  v61[1] = topLevelChartViewTrailingConstraint;
  topLevelOverlaysWithOptionalSegmentViewLeadingConstraint = self->_topLevelOverlaysWithOptionalSegmentViewLeadingConstraint;
  v61[2] = self->_topLevelChartViewBottomConstraint;
  v61[3] = topLevelOverlaysWithOptionalSegmentViewLeadingConstraint;
  topLevelOverlaysWithOptionalSegmentViewTopConstraint = self->_topLevelOverlaysWithOptionalSegmentViewTopConstraint;
  v61[4] = self->_topLevelOverlaysWithOptionalSegmentViewTrailingConstraint;
  v61[5] = topLevelOverlaysWithOptionalSegmentViewTopConstraint;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:6];
  [v3 deactivateConstraints:v7];

  v8 = [(HKOverlayRoomViewController *)self view];
  LODWORD(v7) = [v8 hk_isLeftToRight];

  v9 = [(UIView *)self->_topLevelChartView leadingAnchor];
  if (v7)
  {
    v10 = [(HKOverlayRoomViewController *)self view];
    v11 = [v10 safeAreaLayoutGuide];
    v12 = [v11 leadingAnchor];
    v13 = [v9 constraintEqualToAnchor:v12];
    topLevelChartViewLeadingConstraint = self->_topLevelChartViewLeadingConstraint;
    self->_topLevelChartViewLeadingConstraint = v13;

    v15 = [(UIView *)self->_topLevelChartView trailingAnchor];
    v16 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView leadingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v18 = self->_topLevelChartViewTrailingConstraint;
    self->_topLevelChartViewTrailingConstraint = v17;

    v19 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView leadingAnchor];
    v20 = [(UIView *)self->_topLevelChartView trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v22 = self->_topLevelOverlaysWithOptionalSegmentViewLeadingConstraint;
    self->_topLevelOverlaysWithOptionalSegmentViewLeadingConstraint = v21;

    v23 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView trailingAnchor];
    v24 = [(HKOverlayRoomViewController *)self view];
    v25 = [v24 safeAreaLayoutGuide];
    v26 = [v25 trailingAnchor];
    v27 = [v23 constraintEqualToAnchor:v26];
    topLevelOverlaysWithOptionalSegmentViewTrailingConstraint = self->_topLevelOverlaysWithOptionalSegmentViewTrailingConstraint;
    self->_topLevelOverlaysWithOptionalSegmentViewTrailingConstraint = v27;
  }

  else
  {
    v29 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView trailingAnchor];
    v30 = [v9 constraintEqualToAnchor:v29];
    v31 = self->_topLevelChartViewLeadingConstraint;
    self->_topLevelChartViewLeadingConstraint = v30;

    v32 = [(UIView *)self->_topLevelChartView trailingAnchor];
    v33 = [(HKOverlayRoomViewController *)self view];
    v34 = [v33 safeAreaLayoutGuide];
    v35 = [v34 trailingAnchor];
    v36 = [v32 constraintEqualToAnchor:v35];
    v37 = self->_topLevelChartViewTrailingConstraint;
    self->_topLevelChartViewTrailingConstraint = v36;

    v38 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView leadingAnchor];
    v39 = [(HKOverlayRoomViewController *)self view];
    v40 = [v39 safeAreaLayoutGuide];
    v41 = [v40 leadingAnchor];
    v42 = [v38 constraintEqualToAnchor:v41];
    v43 = self->_topLevelOverlaysWithOptionalSegmentViewLeadingConstraint;
    self->_topLevelOverlaysWithOptionalSegmentViewLeadingConstraint = v42;

    v23 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView trailingAnchor];
    v24 = [(UIView *)self->_topLevelChartView leadingAnchor];
    v44 = [v23 constraintEqualToAnchor:v24];
    v25 = self->_topLevelOverlaysWithOptionalSegmentViewTrailingConstraint;
    self->_topLevelOverlaysWithOptionalSegmentViewTrailingConstraint = v44;
  }

  v45 = [(UIView *)self->_topLevelChartView bottomAnchor];
  v46 = [(HKOverlayRoomViewController *)self view];
  v47 = [v46 bottomAnchor];
  v48 = [v45 constraintEqualToAnchor:v47];
  topLevelChartViewBottomConstraint = self->_topLevelChartViewBottomConstraint;
  self->_topLevelChartViewBottomConstraint = v48;

  v50 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView topAnchor];
  v51 = [(HKOverlayRoomViewController *)self view];
  v52 = [v51 topAnchor];
  v53 = [v50 constraintEqualToAnchor:v52];
  v54 = self->_topLevelOverlaysWithOptionalSegmentViewTopConstraint;
  self->_topLevelOverlaysWithOptionalSegmentViewTopConstraint = v53;

  v55 = MEMORY[0x1E696ACD8];
  v56 = self->_topLevelChartViewTrailingConstraint;
  v60[0] = self->_topLevelChartViewLeadingConstraint;
  v60[1] = v56;
  v57 = self->_topLevelOverlaysWithOptionalSegmentViewLeadingConstraint;
  v60[2] = self->_topLevelChartViewBottomConstraint;
  v60[3] = v57;
  v58 = self->_topLevelOverlaysWithOptionalSegmentViewTopConstraint;
  v60[4] = self->_topLevelOverlaysWithOptionalSegmentViewTrailingConstraint;
  v60[5] = v58;
  v60[6] = self->_topLevelOverlaysWithOptionalSegmentViewWidthConstraint;
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:7];
  [v55 activateConstraints:v59];

  [(HKOverlayRoomViewController *)self setTopLevelAxis:0];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v6.receiver = self;
  v6.super_class = HKOverlayRoomViewController;
  [(HKOverlayRoomViewController *)&v6 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  v5 = [(HKOverlayRoomViewController *)self sectionedContextView];
  [v5 setNeedsLayout];
}

- (void)_configureOverlayAreaVertically
{
  v3 = [(HKOverlayRoomViewController *)self supportsShowAllFilters];
  v4 = [(HKOverlayRoomViewController *)self chartOverlayStackView];
  [v4 setAxis:1];

  v5 = [(HKOverlayRoomViewController *)self chartOverlayStackView];
  [v5 setDistribution:0];

  v6 = [(HKOverlayRoomViewController *)self chartOverlayStackView];
  [v6 setAlignment:0];

  v7 = [(HKOverlayRoomViewController *)self sectionedContextView];
  [v7 setUseBottomInsets:!v3];

  v8 = [(HKOverlayRoomViewController *)self singleContextMaximumSizeView];

  if (v8)
  {
    v9 = *MEMORY[0x1E69DE788];
    v10 = [(HKOverlayRoomViewController *)self singleContextMaximumSizeView];
    [v10 setMaximumSize:{v9, v9}];
  }
}

- (void)_configureOverlayAreaHorizontally
{
  v3 = [(HKOverlayRoomViewController *)self chartOverlayStackView];
  [v3 setAxis:0];

  v4 = [(HKOverlayRoomViewController *)self chartOverlayStackView];
  [v4 setDistribution:1];

  v5 = [(HKOverlayRoomViewController *)self chartOverlayStackView];
  [v5 setAlignment:3];

  v6 = [(HKOverlayRoomViewController *)self sectionedContextView];
  [v6 setUseBottomInsets:1];

  v7 = [(HKOverlayRoomViewController *)self singleContextMaximumSizeView];

  if (v7)
  {
    v8 = *MEMORY[0x1E69DE788];
    v9 = [(HKOverlayRoomViewController *)self singleContextMaximumSizeView];
    [v9 setMaximumSize:{375.0, v8}];
  }
}

- (NSDirectionalEdgeInsets)_edgeInsetsForWidthDesignation
{
  v3 = [(HKOverlayRoomViewController *)self traitCollection];
  [(HKOverlayRoomViewController *)self _widthDesignationFromTraitCollection:v3];

  v4 = HKCollectionViewLayoutDefaultLayoutMarginsForWidthDesignation();
  result.trailing = v7;
  result.bottom = v6;
  result.leading = v5;
  result.top = v4;
  return result;
}

- (void)_configureChartAreaMargins
{
  v3 = [MEMORY[0x1E696C608] sharedBehavior];
  v4 = [v3 isiPad];

  if (v4)
  {
    v5 = [(HKOverlayRoomViewController *)self chartController];
    v11 = [v5 view];

    if (self->_controllerMode == 3)
    {
      v6 = -14.0;
    }

    else
    {
      v6 = 0.0;
    }

    [(NSLayoutConstraint *)self->_chartControllerViewToTopLevelChartViewBottomConstraint setActive:0];
    v7 = [v11 heightAnchor];
    v8 = [(UIView *)self->_topLevelChartView heightAnchor];
    v9 = [v7 constraintEqualToAnchor:v8 constant:v6];
    chartControllerViewToTopLevelChartViewBottomConstraint = self->_chartControllerViewToTopLevelChartViewBottomConstraint;
    self->_chartControllerViewToTopLevelChartViewBottomConstraint = v9;

    [(NSLayoutConstraint *)self->_chartControllerViewToTopLevelChartViewBottomConstraint setActive:1];
  }
}

- (void)_configureOverlayAreaMargins
{
  controllerMode = self->_controllerMode;
  if (controllerMode >= 3)
  {
    if (controllerMode == 3)
    {
      v12 = [(HKOverlayRoomViewController *)self view];
      [v12 safeAreaInsets];
      v14 = v13;

      v15 = [(HKOverlayRoomViewController *)self chartOverlayStackView];
      [v15 setDirectionalLayoutMargins:{0.0, 0.0, -v14, 0.0}];

      [(HKOverlayRoomViewController *)self _configureOverlaysWithOptionalSegmentHorizontalMarginsForModeFull];

      [(HKOverlayRoomViewController *)self _configureOverlaysWithOptionalSegmentTopMarginForModeFull];
    }
  }

  else
  {
    [(HKOverlayRoomViewController *)self _edgeInsetsForWidthDesignation];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v16 = [(HKOverlayRoomViewController *)self chartOverlayStackView];
    [v16 setDirectionalLayoutMargins:{v5, v7, v9, v11}];
  }
}

- (void)_configureOverlaysWithOptionalSegmentHorizontalMarginsForModeFull
{
  if (self->_controllerMode == 3)
  {
    v3 = [MEMORY[0x1E696C608] sharedBehavior];
    v4 = [v3 isiPad];

    if (v4)
    {
      [(NSLayoutConstraint *)self->_overlaysWithOptionalSegmentLeadingConstraint setActive:0];
      [(NSLayoutConstraint *)self->_overlaysWithOptionalSegmentTrailingConstraint setActive:0];
      v5 = [(HKOverlayRoomViewController *)self topLevelAxis];
      v6 = [(UIStackView *)self->_overlaysWithOptionalSegmentController leadingAnchor];
      if (v5 == 1)
      {
        v7 = [(HKOverlayRoomViewController *)self view];
        v8 = [v7 readableContentGuide];
        v9 = [v8 leadingAnchor];
        v10 = [v6 constraintEqualToAnchor:v9 constant:-15.0];
        overlaysWithOptionalSegmentLeadingConstraint = self->_overlaysWithOptionalSegmentLeadingConstraint;
        self->_overlaysWithOptionalSegmentLeadingConstraint = v10;

        v12 = [(UIStackView *)self->_overlaysWithOptionalSegmentController trailingAnchor];
        v13 = [(HKOverlayRoomViewController *)self view];
        v14 = [v13 readableContentGuide];
        v15 = [v14 trailingAnchor];
        v16 = [v12 constraintEqualToAnchor:v15 constant:15.0];
        overlaysWithOptionalSegmentTrailingConstraint = self->_overlaysWithOptionalSegmentTrailingConstraint;
        self->_overlaysWithOptionalSegmentTrailingConstraint = v16;
      }

      else
      {
        v18 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView leadingAnchor];
        v19 = [v6 constraintEqualToAnchor:v18];
        v20 = self->_overlaysWithOptionalSegmentLeadingConstraint;
        self->_overlaysWithOptionalSegmentLeadingConstraint = v19;

        v12 = [(UIStackView *)self->_overlaysWithOptionalSegmentController trailingAnchor];
        v13 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView trailingAnchor];
        v21 = [v12 constraintEqualToAnchor:v13];
        v14 = self->_overlaysWithOptionalSegmentTrailingConstraint;
        self->_overlaysWithOptionalSegmentTrailingConstraint = v21;
      }

      [(NSLayoutConstraint *)self->_overlaysWithOptionalSegmentLeadingConstraint setActive:1];
      v22 = self->_overlaysWithOptionalSegmentTrailingConstraint;

      [(NSLayoutConstraint *)v22 setActive:1];
    }
  }
}

- (void)_configureOverlaysWithOptionalSegmentTopMarginForModeFull
{
  if (self->_controllerMode != 3)
  {
    return;
  }

  v3 = [MEMORY[0x1E696C608] sharedBehavior];
  v4 = [v3 isiPad];

  if (!v4)
  {
    return;
  }

  [(NSLayoutConstraint *)self->_overlaysWithOptionalSegmentTopConstraint setActive:0];
  if (self->_segmentedControl)
  {
    [(HKDisplayTypeSectionedContextView *)self->_sectionedContextView contentViewTopInset];
    v5 = 16.0;
    if (v6 != 16.0)
    {
      [(HKDisplayTypeSectionedContextView *)self->_sectionedContextView setContentViewTopInset:16.0];
    }

    v7 = [(HKOverlayRoomViewController *)self topLevelAxis];
    if (v7 == 1)
    {
      goto LABEL_16;
    }

    if (!v7)
    {
      v5 = 10.5;
LABEL_16:
      [(NSLayoutConstraint *)self->_overlaysWithOptionalSegmentTopConstraint setConstant:v5];
    }
  }

  else
  {
    v8 = [(HKOverlayRoomViewController *)self topLevelAxis];
    if (!v8)
    {
      [(HKDisplayTypeSectionedContextView *)self->_sectionedContextView contentViewTopInset];
      v5 = 10.5;
      if (v10 != 0.0)
      {
        [(HKDisplayTypeSectionedContextView *)self->_sectionedContextView setContentViewTopInset:0.0];
      }

      goto LABEL_16;
    }

    if (v8 == 1)
    {
      [(HKDisplayTypeSectionedContextView *)self->_sectionedContextView contentViewTopInset];
      v5 = 0.0;
      if (v9 != 26.0)
      {
        [(HKDisplayTypeSectionedContextView *)self->_sectionedContextView setContentViewTopInset:26.0];
        [(HKDisplayTypeSectionedContextView *)self->_sectionedContextView scrollToTop];
      }

      goto LABEL_16;
    }
  }

  overlaysWithOptionalSegmentTopConstraint = self->_overlaysWithOptionalSegmentTopConstraint;

  [(NSLayoutConstraint *)overlaysWithOptionalSegmentTopConstraint setActive:1];
}

- (void)_horizontalSizeClassChanged:(id)a3
{
  v3 = [(HKOverlayRoomViewController *)self view];
  [v3 setNeedsLayout];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = HKOverlayRoomViewController;
  [(HKOverlayRoomViewController *)&v4 viewWillLayoutSubviews];
  v3 = [(HKOverlayRoomViewController *)self traitCollection];
  -[HKOverlayRoomViewController _configureStackViewsUsingHorizontalSizeClass:](self, "_configureStackViewsUsingHorizontalSizeClass:", [v3 horizontalSizeClass]);

  [(HKOverlayRoomViewController *)self _configureChartAreaMargins];
  [(HKOverlayRoomViewController *)self _configureOverlayAreaMargins];
}

- (id)_contextViewBackgroundColor
{
  v2 = [(HKOverlayRoomViewController *)self controllerMode];
  if (v2 >= 3)
  {
    if (v2 == 3)
    {
      v2 = [MEMORY[0x1E69DC888] hk_chartOverlayBackgroundColor];
    }
  }

  else
  {
    v2 = [MEMORY[0x1E69DC888] clearColor];
  }

  return v2;
}

- (id)_setupSegmentedControl
{
  v41[5] = *MEMORY[0x1E69E9840];
  v3 = [(HKOverlayRoomViewController *)self _segmentedControlTitles];
  if ([v3 count])
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCF38]) initWithItems:v3];
    [(HKOverlayRoomViewController *)self setSegmentedControl:v4];

    v5 = [MEMORY[0x1E696AEC0] hk_chartOverlayAccessibilityIdentifier:@"SegmentedControl"];
    [(HKOverlayRoomViewController *)self segmentedControl];
    v6 = v40 = v3;
    [v6 setAccessibilityIdentifier:v5];

    v7 = [(HKOverlayRoomViewController *)self segmentedControl];
    [v7 addTarget:self action:sel_segmentedControlValueChanged_ forControlEvents:4096];

    v8 = [(HKOverlayRoomViewController *)self segmentedControl];
    [v8 setSelectedSegmentIndex:0];

    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    segmentedControlContainer = self->_segmentedControlContainer;
    self->_segmentedControlContainer = v9;

    v11 = [(HKOverlayRoomViewController *)self _contextViewBackgroundColor];
    [(UIView *)self->_segmentedControlContainer setBackgroundColor:v11];

    v12 = [(HKOverlayRoomViewController *)self segmentedControl];
    LODWORD(v13) = 1148846080;
    [v12 setContentHuggingPriority:1 forAxis:v13];

    v14 = [(HKOverlayRoomViewController *)self segmentedControl];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

    v15 = self->_segmentedControlContainer;
    v16 = [(HKOverlayRoomViewController *)self segmentedControl];
    [(UIView *)v15 addSubview:v16];

    v31 = MEMORY[0x1E696ACD8];
    v39 = [(HKOverlayRoomViewController *)self segmentedControl];
    v38 = [v39 leadingAnchor];
    v37 = [(UIView *)self->_segmentedControlContainer leadingAnchor];
    v36 = [v38 constraintEqualToAnchor:v37 constant:15.0];
    v41[0] = v36;
    v35 = [(HKOverlayRoomViewController *)self segmentedControl];
    v34 = [v35 trailingAnchor];
    v33 = [(UIView *)self->_segmentedControlContainer trailingAnchor];
    v32 = [v34 constraintEqualToAnchor:v33 constant:-15.0];
    v41[1] = v32;
    v30 = [(HKOverlayRoomViewController *)self segmentedControl];
    v29 = [v30 topAnchor];
    v28 = [(UIView *)self->_segmentedControlContainer topAnchor];
    v27 = [v29 constraintEqualToAnchor:v28];
    v41[2] = v27;
    v17 = [(HKOverlayRoomViewController *)self segmentedControl];
    v18 = [v17 heightAnchor];
    v19 = [v18 constraintGreaterThanOrEqualToConstant:28.0];
    v41[3] = v19;
    v20 = [(HKOverlayRoomViewController *)self segmentedControl];
    v21 = [v20 bottomAnchor];
    v22 = [(UIView *)self->_segmentedControlContainer bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:-10.0];
    v41[4] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:5];
    [v31 activateConstraints:v24];

    v3 = v40;
    v25 = self->_segmentedControlContainer;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (void)_layoutSegmentedControl
{
  v51[1] = *MEMORY[0x1E69E9840];
  v3 = [(HKOverlayRoomViewController *)self segmentedControl];
  if (v3)
  {
    v4 = v3;
    v5 = [(HKOverlayRoomViewController *)self segmentedControlContainer];

    if (v5)
    {
      v6 = [(HKOverlayRoomViewController *)self segmentedControlContainer];
      [v6 bounds];
      v8 = v7;

      if (v8 > 0.0)
      {
        v9 = [(HKOverlayRoomViewController *)self _segmentedControlTitles];
        v10 = *MEMORY[0x1E69DB648];
        v50 = *MEMORY[0x1E69DB648];
        v11 = *MEMORY[0x1E69DB958];
        v12 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0 weight:*MEMORY[0x1E69DB958]];
        v51[0] = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];

        v14 = [(HKOverlayRoomViewController *)self segmentedControlContainer];
        [v14 bounds];
        v16 = v15 + -30.0;

        v17 = [v9 count];
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v18 = v9;
        v19 = [v18 countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = v16 / v17 + -10.0;
          v22 = *v42;
          v23 = 0.0;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v42 != v22)
              {
                objc_enumerationMutation(v18);
              }

              [*(*(&v41 + 1) + 8 * i) sizeWithAttributes:{v13, v41}];
              v26 = v25;
              if (v25 >= v21)
              {
                v27 = [(HKOverlayRoomViewController *)self segmentedControl];
                [v27 setApportionsSegmentWidthsByContent:1];
              }

              v23 = v23 + v26;
            }

            v20 = [v18 countByEnumeratingWithState:&v41 objects:v49 count:16];
          }

          while (v20);
        }

        else
        {
          v23 = 0.0;
        }

        v28 = [(HKOverlayRoomViewController *)self segmentedControl];
        [v28 layoutMargins];
        v30 = v29;
        v31 = [(HKOverlayRoomViewController *)self segmentedControl];
        [v31 layoutMargins];
        v33 = v30 + v32 + ([v18 count] - 1) * 11.0;

        if (v23 < v16 - v33)
        {
          v34 = 14.0;
        }

        else
        {
          v34 = 11.0;
        }

        v47 = v10;
        v35 = [MEMORY[0x1E69DB878] systemFontOfSize:v34 weight:{*MEMORY[0x1E69DB978], v41}];
        v48 = v35;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];

        v45 = v10;
        v37 = [MEMORY[0x1E69DB878] systemFontOfSize:v34 weight:v11];
        v46 = v37;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];

        v39 = [(HKOverlayRoomViewController *)self segmentedControl];
        [v39 setTitleTextAttributes:v36 forState:0];

        v40 = [(HKOverlayRoomViewController *)self segmentedControl];
        [v40 setTitleTextAttributes:v38 forState:4];
      }
    }
  }
}

- (void)_setupOverlayContainers
{
  v3 = [(HKOverlayRoomViewController *)self controllerMode];
  v4 = [(HKOverlayRoomViewController *)self applicationItems];
  v5 = [(HKOverlayRoomViewController *)self chartController];
  v7 = [(HKOverlayRoomViewController *)self contextSectionContainersForMode:v3 applicationItems:v4 overlayChartController:v5];

  v6 = [(HKOverlayRoomViewController *)self _addHealthFactorsIfNecessary:v7];
  [(HKOverlayRoomViewController *)self setOverlayContextSectionContainers:v6];
}

- (void)_setupOverlayContextItems
{
  [(HKOverlayRoomViewController *)self _callPrepareOnOverlayContexts];
  if (self->_shouldSelectInitialOverlay)
  {
    v3 = [(HKOverlayRoomViewController *)self initialSelectedContextForMode:[(HKOverlayRoomViewController *)self controllerMode] containerIndex:[(HKOverlayRoomViewController *)self initialSelectedContainerIndexForMode:[(HKOverlayRoomViewController *)self controllerMode]]];
    [(HKOverlayRoomViewController *)self setInitialSelectedContextLocation:v3];

    v4 = [(HKOverlayRoomViewController *)self controllerMode];
    v5 = [(HKOverlayRoomViewController *)self initialSelectedContextLocation];
    LODWORD(v4) = [(HKOverlayRoomViewController *)self _shouldInstallDefaultOverlayDeselectionTimerForMode:v4 initialSelectedLocation:v5];

    if (v4)
    {
      [(HKOverlayRoomViewController *)self _installDefaultOverlayDeselectionTimer];
    }
  }

  [(HKOverlayRoomViewController *)self _updateContextTiles];

  [(HKOverlayRoomViewController *)self _refreshContextItemsAndUpdateChart:1];
}

- (void)_callPrepareOnOverlayContexts
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __60__HKOverlayRoomViewController__callPrepareOnOverlayContexts__block_invoke;
  v2[3] = &unk_1E81B5DF8;
  v2[4] = self;
  [(HKOverlayRoomViewController *)self _enumerateContextItemsWithBlock:v2];
}

void __60__HKOverlayRoomViewController__callPrepareOnOverlayContexts__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) _findOverlayResolution:v6];
    v4 = [*(a1 + 32) currentChartDateInterval];
    v5 = [*(a1 + 32) chartController];
    [v6 prepareContextForDateInterval:v4 overlayController:v5 timeScope:objc_msgSend(*(a1 + 32) resolution:{"currentChartTimeScope"), v3}];
  }
}

- (void)_subscribeToSampleTypeUpdates
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  v4 = [v3 isActivitySummary];

  if (v4)
  {
    return;
  }

  v5 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  v6 = [v5 sampleType];
  v7 = [v6 identifier];
  v8 = *MEMORY[0x1E696C6A8];

  if (v7 == v8)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v16 = [MEMORY[0x1E696C3D0] associatedBalanceMetricsTypes];
    v17 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v37;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v36 + 1) + 8 * i);
          v22 = [(HKOverlayRoomViewController *)self applicationItems];
          v23 = [v22 sampleTypeUpdateController];
          [v23 addObserver:self forType:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v18);
    }

    goto LABEL_22;
  }

  v9 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  v10 = [v9 sampleType];
  v11 = [v10 identifier];
  v12 = *MEMORY[0x1E696C6B0];

  if (v11 == v12)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v16 = [MEMORY[0x1E696C3D0] associatedSleepScoreTypes];
    v24 = [v16 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v33;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v33 != v26)
          {
            objc_enumerationMutation(v16);
          }

          v28 = *(*(&v32 + 1) + 8 * j);
          v29 = [(HKOverlayRoomViewController *)self applicationItems];
          v30 = [v29 sampleTypeUpdateController];
          [v30 addObserver:self forType:v28];
        }

        v25 = [v16 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v25);
    }

LABEL_22:

    return;
  }

  v31 = [(HKOverlayRoomViewController *)self applicationItems];
  v13 = [v31 sampleTypeUpdateController];
  v14 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  v15 = [v14 sampleType];
  [v13 addObserver:self forType:v15];
}

- (void)showAllFiltersWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKOverlayRoomViewController *)self _findNavigationController];
  if (v5)
  {
    v6 = [(HKOverlayRoomViewController *)self applicationItems];
    v7 = [HKOverlayRoomApplicationItems applicationItemsWithItems:v6];

    v8 = objc_alloc_init(HKSelectedTimeScopeController);
    [(HKSelectedTimeScopeController *)v8 setSelectedTimeScope:[(HKOverlayRoomViewController *)self currentChartTimeScope]];
    [v7 setTimeScopeController:v8];
    v9 = [(HKOverlayRoomViewController *)self displayDate];
    v10 = [(HKOverlayRoomViewController *)self createViewControllerForMode:3 displayDate:v9 applicationItems:v7];

    if (v10)
    {
      v11 = [(HKOverlayRoomViewController *)self showAllFiltersActivity];
      [v10 setRestorationUserActivity:v11];

      v12 = [v10 currentChartTimeScope];
      if (v12 == [(HKOverlayRoomViewController *)self currentChartTimeScope])
      {
        v13 = [(HKOverlayRoomViewController *)self _currentChartEffectiveVisibleRange];
        [v10 setInitialVisibleDateRange:v13];
      }

      if ([v10 shouldSelectInitialOverlay])
      {
        [v10 setShouldSelectInitialOverlay:1];
      }

      else
      {
        v14 = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
        [v10 setShouldSelectInitialOverlay:v14 != 0];
      }

      v15 = [[HKModalNavigationController alloc] initWithRootViewController:v10];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __60__HKOverlayRoomViewController_showAllFiltersWithCompletion___block_invoke;
      v16[3] = &unk_1E81B55A8;
      v16[4] = self;
      [(HKModalNavigationController *)v15 setCompletion:v16];
      [(HKOverlayRoomViewController *)self _willPresentShowAllFilters];
      [v5 hk_presentModalCardViewController:v15 fullScreen:1 animated:1 completion:v4];
    }

    else if (v4)
    {
      v4[2](v4);
    }
  }

  else if (v4)
  {
    v4[2](v4);
  }
}

- (id)overlayButtonNamesForTesting
{
  v47 = *MEMORY[0x1E69E9840];
  v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
  v25 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v25)
  {
    v3 = 0;
    v24 = *v41;
    do
    {
      v4 = 0;
      do
      {
        if (*v41 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v4;
        v5 = *(*(&v40 + 1) + 8 * v4);
        v6 = [v5 localizedContainerTitle];
        if (v6)
        {
          v7 = [v5 localizedContainerTitle];
        }

        else
        {
          v7 = @"default";
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v27 = [v5 overlayContextSections];
        v29 = [v27 countByEnumeratingWithState:&v36 objects:v45 count:16];
        if (v29)
        {
          v28 = *v37;
          do
          {
            v8 = 0;
            do
            {
              if (*v37 != v28)
              {
                objc_enumerationMutation(v27);
              }

              v30 = v8;
              v9 = *(*(&v36 + 1) + 8 * v8);
              v10 = [v9 localizedSectionTitle];
              if (v10)
              {
                v11 = [v9 localizedSectionTitle];
              }

              else
              {
                v11 = @"default";
              }

              v34 = 0u;
              v35 = 0u;
              v32 = 0u;
              v33 = 0u;
              v12 = [v9 overlayContextItems];
              v13 = [v12 countByEnumeratingWithState:&v32 objects:v44 count:16];
              if (v13)
              {
                v14 = v13;
                v15 = *v33;
                do
                {
                  for (i = 0; i != v14; ++i)
                  {
                    if (*v33 != v15)
                    {
                      objc_enumerationMutation(v12);
                    }

                    v17 = [*(*(&v32 + 1) + 8 * i) contextItemForLastUpdate];
                    v18 = [v17 accessibilityIdentifier];

                    if (v18 && [v18 length])
                    {
                      v19 = 0x1E696A000;
                    }

                    else
                    {
                      v19 = 0x1E696A000uLL;
                      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"button_%ld", v3];

                      v18 = v20;
                    }

                    v21 = [*(v19 + 3776) stringWithFormat:@"%@||%@||%@", v7, v11, v18];
                    [v31 addObject:v21];
                    ++v3;
                  }

                  v14 = [v12 countByEnumeratingWithState:&v32 objects:v44 count:16];
                }

                while (v14);
              }

              v8 = v30 + 1;
            }

            while (v30 + 1 != v29);
            v29 = [v27 countByEnumeratingWithState:&v36 objects:v45 count:16];
          }

          while (v29);
        }

        v4 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v25);
  }

  return v31;
}

- (BOOL)selectOverlayButtonForTestingNamed:(id)a3
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 componentsSeparatedByString:@"||"];
  if ([v5 count] == 3)
  {
    v33 = v5;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
    v36 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
    if (v36)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v35 = *v60;
      do
      {
        v9 = 0;
        do
        {
          if (*v60 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v37 = v9;
          v10 = *(*(&v59 + 1) + 8 * v9);
          v11 = [v10 localizedContainerTitle];
          if (v11)
          {
            v46 = [v10 localizedContainerTitle];
          }

          else
          {
            v46 = @"default";
          }

          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v38 = [v10 overlayContextSections];
          v40 = [v38 countByEnumeratingWithState:&v55 objects:v64 count:16];
          if (v40)
          {
            v49 = 0;
            v39 = *v56;
            v12 = 0x1E696A000uLL;
            v42 = v6;
            do
            {
              v13 = 0;
              do
              {
                if (*v56 != v39)
                {
                  objc_enumerationMutation(v38);
                }

                v41 = v13;
                v14 = *(*(&v55 + 1) + 8 * v13);
                v15 = [v14 localizedSectionTitle];
                if (v15)
                {
                  v48 = [v14 localizedSectionTitle];
                }

                else
                {
                  v48 = @"default";
                }

                v53 = 0u;
                v54 = 0u;
                v51 = 0u;
                v52 = 0u;
                v43 = [v14 overlayContextItems];
                v50 = [v43 countByEnumeratingWithState:&v51 objects:v63 count:16];
                if (v50)
                {
                  v16 = 0;
                  v47 = *v52;
                  do
                  {
                    for (i = 0; i != v50; ++i)
                    {
                      if (*v52 != v47)
                      {
                        objc_enumerationMutation(v43);
                      }

                      v18 = [*(*(&v51 + 1) + 8 * i) contextItemForLastUpdate];
                      v19 = [v18 accessibilityIdentifier];

                      if (!v19 || ![v19 length])
                      {
                        v20 = [*(v12 + 3776) stringWithFormat:@"button_%ld", v7];

                        v19 = v20;
                      }

                      v21 = [*(v12 + 3776) stringWithFormat:@"%@||%@||%@", v46, v48, v19];
                      if ([v21 isEqualToString:v4])
                      {
                        v45 = v7;
                        v22 = [[HKOverlayContextLocation alloc] initWithContainerIndex:v6 sectionIndex:v49 itemIndex:v16];
                        [(HKOverlayRoomViewController *)self setUserHasOverriddenPreferredOverlay:1];
                        v23 = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
                        v44 = v22;
                        [(HKOverlayRoomViewController *)self _updateChartForOverlaySelection:v22 previousSelection:v23];

                        if (v6 != [(HKOverlayRoomViewController *)self segmentedControlSelectedIndex])
                        {
                          [(HKOverlayRoomViewController *)self setSegmentedControlSelectedIndex:v6];
                          v24 = [(HKOverlayRoomViewController *)self sectionedContextView];
                          v25 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
                          v26 = [v25 objectAtIndexedSubscript:v6];
                          [v26 overlayContextSections];
                          v27 = self;
                          v29 = v28 = v4;
                          [v24 setDisplayTypeContextSections:v29];

                          v4 = v28;
                          self = v27;
                          v6 = v42;
                        }

                        v30 = [MEMORY[0x1E696AC88] indexPathForRow:v16 inSection:v49];
                        v31 = [(HKOverlayRoomViewController *)self sectionedContextView];
                        [v31 selectItemAtIndexPath:v30 animated:0 scrollPosition:0];

                        v8 = 1;
                        v7 = v45;
                        v12 = 0x1E696A000;
                      }

                      ++v7;
                      ++v16;
                    }

                    v50 = [v43 countByEnumeratingWithState:&v51 objects:v63 count:16];
                  }

                  while (v50);
                }

                ++v49;
                v13 = v41 + 1;
              }

              while (v41 + 1 != v40);
              v40 = [v38 countByEnumeratingWithState:&v55 objects:v64 count:16];
            }

            while (v40);
          }

          ++v6;
          v9 = v37 + 1;
        }

        while (v37 + 1 != v36);
        v36 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
      }

      while (v36);
    }

    else
    {
      v8 = 0;
    }

    v5 = v33;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (id)overlayButtonValueForTesting
{
  v3 = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
  v4 = [(HKOverlayRoomViewController *)self _selectedOverlayContextWithLocation:v3];

  if (v4 && ([v4 contextItemForLastUpdate], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v5 attributedLabelTextOverride];

    if (v7)
    {
      v8 = [v6 attributedLabelTextOverride];
      v9 = [v8 attributedLabelText];
      v10 = [v9 string];
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v11 = [v6 valueContext];

      if (v11)
      {
        v12 = [v6 valueContext];
        [v8 addObject:v12];
      }

      v13 = [v6 value];

      if (v13)
      {
        v14 = [v6 value];
        [v8 addObject:v14];
      }

      v15 = [v6 unit];

      if (v15)
      {
        v16 = [v6 unit];
        [v8 addObject:v16];
      }

      v10 = [v8 componentsJoinedByString:@"::"];
    }
  }

  else
  {
    v10 = @"NoOverlayButtonValue";
  }

  return v10;
}

- (void)_willPresentShowAllFilters
{
  [(HKOverlayRoomViewController *)self setShowAllFiltersVisible:1];
  [(HKOverlayRoomViewController *)self saveRestorationState];
  v3 = [_TtC8HealthUI43HKInteractiveChartInteractionAnalyticsEvent alloc];
  v4 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  v5 = [(HKInteractiveChartInteractionAnalyticsEvent *)v3 initWithShowMoreDataForDisplayType:v4];

  [(HKInteractiveChartInteractionAnalyticsManager *)self->_analyticsManager submitWithEvent:v5];
}

- (void)_didDismissShowAllFilters
{
  [(HKOverlayRoomViewController *)self setShowAllFiltersActivity:0];
  [(HKOverlayRoomViewController *)self setShowAllFiltersVisible:0];

  [(HKOverlayRoomViewController *)self saveRestorationState];
}

- (id)_currentChartEffectiveVisibleRange
{
  v2 = [(HKOverlayRoomViewController *)self chartController];
  v3 = [v2 primaryGraphViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 graphView];
    v5 = [v4 effectiveVisibleRangeCadence];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_findNavigationController
{
  v3 = [(HKOverlayRoomViewController *)self navigationController];

  if (v3)
  {
    v4 = [(HKOverlayRoomViewController *)self navigationController];
    goto LABEL_3;
  }

  v6 = [(HKOverlayRoomViewController *)self view];
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

- (void)_selectContextItemAtLocation:(id)a3 animated:(BOOL)a4
{
  if (a3)
  {
    v4 = a4;
    [(HKOverlayRoomViewController *)self setCurrentSelectedContextLocation:?];
    v6 = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
    -[HKOverlayRoomViewController setSegmentedControlSelectedIndex:](self, "setSegmentedControlSelectedIndex:", [v6 containerIndex]);

    v8 = [(HKOverlayRoomViewController *)self sectionedContextView];
    v7 = [(HKOverlayRoomViewController *)self _currentIndexPath];
    [v8 selectItemAtIndexPath:v7 animated:v4 scrollPosition:0];
  }
}

- (id)_currentIndexPath
{
  v3 = MEMORY[0x1E696AC88];
  v4 = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
  v5 = [v4 itemIndex];
  v6 = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
  v7 = [v3 indexPathForRow:v5 inSection:{objc_msgSend(v6, "sectionIndex")}];

  return v7;
}

- (void)fetchContextItemsIfNeededWithDateInterval:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(HKOverlayRoomViewController *)self _contextItemCount]>= 1)
  {
    v8 = dispatch_group_create();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __84__HKOverlayRoomViewController_fetchContextItemsIfNeededWithDateInterval_completion___block_invoke;
    v13[3] = &unk_1E81B5E20;
    v14 = v8;
    v15 = self;
    v16 = v6;
    v9 = v8;
    [(HKOverlayRoomViewController *)self _enumerateContextItemsWithBlock:v13];
    v10 = [(HKOverlayRoomViewController *)self contextUpdateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__HKOverlayRoomViewController_fetchContextItemsIfNeededWithDateInterval_completion___block_invoke_3;
    block[3] = &unk_1E81B5E48;
    block[4] = self;
    v12 = v7;
    dispatch_group_notify(v9, v10, block);
  }
}

void __84__HKOverlayRoomViewController_fetchContextItemsIfNeededWithDateInterval_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v5 = [*(a1 + 40) _findOverlayResolution:v4];
  v6 = *(a1 + 48);
  v7 = [*(a1 + 40) chartController];
  v8 = [*(a1 + 40) currentChartTimeScope];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__HKOverlayRoomViewController_fetchContextItemsIfNeededWithDateInterval_completion___block_invoke_2;
  v9[3] = &unk_1E81B59C0;
  v10 = *(a1 + 32);
  [v4 updateContextItemForDateInterval:v6 overlayController:v7 timeScope:v8 resolution:v5 completion:v9];
}

void __84__HKOverlayRoomViewController_fetchContextItemsIfNeededWithDateInterval_completion___block_invoke_3(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __84__HKOverlayRoomViewController_fetchContextItemsIfNeededWithDateInterval_completion___block_invoke_4;
  v2[3] = &unk_1E81B5E48;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

uint64_t __84__HKOverlayRoomViewController_fetchContextItemsIfNeededWithDateInterval_completion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _updateContextTiles];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (int64_t)_contextItemCount
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v9 = [v8 overlayContextSections];
        v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v17;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v17 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = [*(*(&v16 + 1) + 8 * j) overlayContextItems];
              v5 += [v14 count];
            }

            v11 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v11);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)_findOverlayResolution:(id)a3
{
  v4 = a3;
  v5 = [(HKOverlayRoomViewController *)self chartController];
  v6 = [v5 primaryGraphViewController];
  v7 = [v6 graphView];

  if (v7)
  {
    v8 = [v7 resolutionFromTraitCollectionAttributes];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 resolutionForTimeScope:-[HKOverlayRoomViewController currentChartTimeScope](self traitResolution:{"currentChartTimeScope"), v8}];

  return v9;
}

- (BOOL)_canSelectOverlayLocation:(id)a3 previousSelection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "containerIndex")}];
  v10 = [v9 overlayContextSections];
  v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v6, "sectionIndex")}];

  if (v7)
  {
    v12 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
    v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v7, "containerIndex")}];
    v14 = [v13 overlayContextSections];
    v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v7, "sectionIndex")}];
  }

  else
  {
    v15 = 0;
  }

  v16 = [v11 overlayContextItems];
  v17 = [v16 objectAtIndexedSubscript:{objc_msgSend(v6, "itemIndex")}];

  v18 = [v15 overlayContextItems];
  v19 = [v18 objectAtIndexedSubscript:{objc_msgSend(v7, "itemIndex")}];

  if (v17 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v20 = [v17 contextItemForLastUpdate];
    v21 = [(HKOverlayRoomViewController *)self currentChartTimeScope];
    [(HKOverlayRoomViewController *)self chartController];
    v22 = v25 = v11;
    v23 = [v17 canSelectOverlayContextItem:v20 isDeselecting:v17 == v19 timeScope:v21 chartController:v22];

    v11 = v25;
  }

  else
  {
    v23 = 1;
  }

  return v23;
}

- (void)_updateChartForOverlaySelection:(id)a3 previousSelection:(id)a4 animated:(BOOL)a5
{
  v87 = a5;
  v94 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v8, "containerIndex")}];
    v11 = [v10 overlayContextSections];
    v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v8, "sectionIndex")}];

    v13 = [v12 overlayContextItems];
    v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v8, "itemIndex")}];

    v83 = [objc_opt_class() conformsToProtocol:&unk_1F43EAEB0];
    if (v83)
    {
      v90 = v14;
    }

    else
    {
      v90 = 0;
    }
  }

  else
  {
    v83 = 0;
    v90 = 0;
    v14 = 0;
  }

  v86 = v8;
  if (!v7)
  {
    v22 = [(HKOverlayRoomViewController *)self segmentedControlSelectedIndex];
    v85 = 0;
    v20 = 0;
    v89 = 0;
    v23 = 0;
    goto LABEL_17;
  }

  v15 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
  v16 = [v15 objectAtIndexedSubscript:{objc_msgSend(v7, "containerIndex")}];
  v17 = [v16 overlayContextSections];
  v18 = [v17 objectAtIndexedSubscript:{objc_msgSend(v7, "sectionIndex")}];

  v19 = [v18 overlayContextItems];
  v20 = [v19 objectAtIndexedSubscript:{objc_msgSend(v7, "itemIndex")}];

  if (objc_opt_respondsToSelector())
  {
    v21 = [v20 baseDisplayTypeForOverlay:self->_currentChartTimeScope];
  }

  else
  {
    v24 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
    v25 = [v24 objectAtIndexedSubscript:{objc_msgSend(v7, "containerIndex")}];
    v21 = [v25 primaryDisplayType];
  }

  v26 = [v21 presentation];
  v27 = [v26 copyWithIsCriticalForAutoscale:1];
  v91 = [v21 copyWithPresentation:v27];

  v23 = [objc_opt_class() conformsToProtocol:&unk_1F43EAEB0];
  if (v23)
  {
    v89 = v20;
    v28 = [v89 stackedBaseDisplayTypeForOverlay:self->_currentChartTimeScope];
    v29 = [v28 presentation];
    v30 = v7;
    v31 = [v29 copyWithIsCriticalForAutoscale:1];
    v85 = [v28 copyWithPresentation:v31];

    v7 = v30;
  }

  else
  {
    v89 = 0;
    v85 = 0;
  }

  v8 = v86;

  v32 = [(HKOverlayRoomViewController *)self segmentedControlSelectedIndex];
  if (!v91)
  {
    v22 = v32;
LABEL_17:
    v33 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
    v34 = [v33 count];

    if (v34 <= v22)
    {
      v91 = 0;
    }

    else
    {
      v35 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
      v36 = [v35 objectAtIndexedSubscript:v22];

      v37 = [v36 primaryDisplayType];
      v38 = [v37 presentation];
      v39 = v7;
      v40 = [v38 copyWithIsCriticalForAutoscale:1];
      v91 = [v37 copyWithPresentation:v40];

      v7 = v39;
    }
  }

  if (!v14)
  {
    v41 = 0;
    if (v20)
    {
      goto LABEL_22;
    }

LABEL_30:
    v43 = 0;
    goto LABEL_31;
  }

  v41 = [v14 contextItemForLastUpdate];
  if (!v20)
  {
    goto LABEL_30;
  }

LABEL_22:
  v42 = [v20 contextItemForLastUpdate];
  v43 = v42;
  if (v42 && v41 && v42 == v41 && v87)
  {
    _HKInitializeLogging();
    v44 = HKUILogCharting();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = [v43 description];
      *buf = 138477827;
      v93 = v45;
      _os_log_impl(&dword_1C3942000, v44, OS_LOG_TYPE_DEFAULT, "HKOverlayRoomViewController skipping redundant update during animation for selected context item: %{private}@", buf, 0xCu);
    }

    goto LABEL_90;
  }

LABEL_31:
  if (v87)
  {
    v46 = [(HKOverlayRoomViewController *)self chartController];
    [v46 installGraphViewSnapshot];

    v47 = [(HKOverlayRoomViewController *)self chartController];
    [v47 removeGraphViewSnapshotAnimated:1];
  }

  if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v48 = [(HKOverlayRoomViewController *)self chartController];
    [v14 overlayStateWillChange:0 contextItem:v41 chartController:v48];
  }

  v88 = v41;
  if (v90 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v49 = [(HKOverlayRoomViewController *)self chartController];
    [v90 stackedOverlayStateWillChange:0 contextItem:v41 chartController:v49];
  }

  if (v20 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v50 = [(HKOverlayRoomViewController *)self chartController];
    [v20 overlayStateWillChange:1 contextItem:v43 chartController:v50];
  }

  if (v89 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v51 = [(HKOverlayRoomViewController *)self chartController];
    [v89 stackedOverlayStateWillChange:1 contextItem:v43 chartController:v51];
  }

  [(HKOverlayRoomViewController *)self didChangeFromContextItem:v41 toContextItem:v43];
  [(HKOverlayRoomViewController *)self setCurrentSelectedContextLocation:v7];
  if (v23)
  {
    if (v83)
    {
      v52 = [(HKOverlayRoomViewController *)self chartController];
      [v52 clearDisplayTypeStack];

      [(HKOverlayRoomViewController *)self _restoreStackingProportions];
    }

    [(HKOverlayRoomViewController *)self _setupStackingProportionsForContext:v89];
    v53 = [(HKOverlayRoomViewController *)self chartController];
    [v53 installStackedDisplayType:v85];

    v54 = [(HKOverlayRoomViewController *)self chartController];
    [v54 updateCurrentValueViewWithVisibleRange];
  }

  else if (v83)
  {
    v55 = [(HKOverlayRoomViewController *)self chartController];
    [v55 clearDisplayTypeStack];

    [(HKOverlayRoomViewController *)self _restoreStackingProportions];
  }

  v84 = v7;
  v56 = [(HKOverlayRoomViewController *)self chartController];
  v57 = [(HKOverlayRoomViewController *)self chartController];
  v58 = [v56 currentDisplayTypesForStackOffset:{objc_msgSend(v57, "primaryDisplayTypeStackIndex")}];

  v82 = v58;
  v59 = [v58 firstObject];
  v60 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  if (v59 == v60)
  {
    v62 = 1;
  }

  else
  {
    v61 = [(HKOverlayRoomViewController *)self primaryDisplayType];
    v62 = [v61 isEqual:v59];
  }

  v63 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  v64 = [v63 isActivitySummary];

  v65 = v23;
  if ((v64 & 1) == 0)
  {
    v65 = v23;
    if ((v62 & 1) == 0)
    {
      if (v20 || (objc_opt_respondsToSelector() & 1) == 0 || (v65 = v23, ([v14 unselectedContextShouldUseContextBaseType] & 1) == 0))
      {
        v66 = [(HKOverlayRoomViewController *)self primaryDisplayType];
        [(HKOverlayRoomViewController *)self _installBaseDisplayType:v66 autoscale:v23 ^ 1u];

        v65 = 1;
      }
    }
  }

  if (v91)
  {
    v67 = [(HKOverlayRoomViewController *)self primaryDisplayType];
    if (v67)
    {
      v68 = v67;
      v69 = [(HKOverlayRoomViewController *)self primaryDisplayType];
      v70 = [v69 isActivitySummary];

      if ((v70 & 1) == 0)
      {
        [(HKOverlayRoomViewController *)self _installBaseDisplayType:v91 autoscale:v23 ^ 1u];
        v65 = 1;
      }
    }
  }

  if (v91 != v59)
  {
    v71 = [(HKOverlayRoomViewController *)self chartController];
    [v71 updateCurrentValueViewWithVisibleRange];
  }

  if (v20)
  {
    v72 = [v20 overlayDisplayTypeForTimeScope:self->_currentChartTimeScope];
  }

  else
  {
    v72 = 0;
  }

  v73 = [(HKOverlayRoomViewController *)self chartController];
  [v73 installOverlayDisplayType:v72];

  if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v74 = [(HKOverlayRoomViewController *)self chartController];
    [v14 overlayStateDidChange:0 contextItem:v88 chartController:v74];
  }

  if (v90 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v75 = [(HKOverlayRoomViewController *)self chartController];
    [v90 stackedOverlayStateDidChange:0 contextItem:v88 chartController:v75];
  }

  if (v20)
  {
    if (objc_opt_respondsToSelector())
    {
      v76 = [(HKOverlayRoomViewController *)self chartController];
      [v20 overlayStateDidChange:1 contextItem:v43 chartController:v76];
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && (!v86 || ([v86 isEqual:v84] & 1) == 0))
    {
      v77 = [(HKOverlayRoomViewController *)self chartController];
      [v20 overlayWasExplicitlySelected:v43 chartController:v77];
    }
  }

  if (v89 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v78 = [(HKOverlayRoomViewController *)self chartController];
    [v89 stackedOverlayStateDidChange:1 contextItem:v43 chartController:v78];
  }

  if (v65)
  {
    v79 = [(HKOverlayRoomViewController *)self chartController];
    v80 = [v79 primaryGraphViewController];
    v81 = [v80 graphView];
    [v81 resetAndRedraw];
  }

  v7 = v84;
  v8 = v86;
  if (v84 | v86)
  {
    [(HKOverlayRoomViewController *)self setRestorationContextLocation:v84];
    [(HKOverlayRoomViewController *)self saveRestorationState];
  }

  v41 = v88;
LABEL_90:
}

- (id)_bottomMostDisplayType:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = v4;
  v7 = v6;
  v8 = v6;
  if (isKindOfClass)
  {
    v9 = [v6 baseDisplayType];

    if (v9)
    {
      v10 = [v7 baseDisplayType];
      v8 = [(HKOverlayRoomViewController *)self _bottomMostDisplayType:v10];
    }

    else
    {
      v8 = v7;
    }
  }

  return v8;
}

- (void)_installBaseDisplayType:(id)a3 autoscale:(BOOL)a4
{
  v4 = a4;
  v15 = a3;
  v6 = [(HKOverlayRoomViewController *)self chartController];
  [v6 clearOverlayDisplayTypeWithAutomaticAutoscale:v4];

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v7 addObject:v15];
  v8 = [(HKOverlayRoomViewController *)self chartController];
  v9 = [(HKOverlayRoomViewController *)self chartController];
  v10 = [v8 currentDisplayTypesForStackOffset:{objc_msgSend(v9, "primaryDisplayTypeStackIndex")}];

  if ([v10 count] >= 2)
  {
    v11 = 1;
    do
    {
      v12 = [v10 objectAtIndexedSubscript:v11];
      [v7 addObject:v12];

      ++v11;
    }

    while (v11 < [v10 count]);
  }

  v13 = [(HKOverlayRoomViewController *)self chartController];
  v14 = [(HKOverlayRoomViewController *)self chartController];
  [v13 replaceCurrentDisplayTypesWithTypes:v7 stackOffset:objc_msgSend(v14 resetDateRange:"primaryDisplayTypeStackIndex") automaticAutoScale:{0, v4}];
}

- (void)_setupStackingProportionsForContext:(id)a3
{
  v14 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v14 stackedHeight];
    v5 = [v4 kind];
    if (v5 == 1)
    {
      v10 = [(HKOverlayRoomViewController *)self chartController];
      v11 = [v10 stackedDisplayTypeHeights];

      if (v11)
      {
        v12 = [(HKOverlayRoomViewController *)self chartController];
        v13 = [v12 stackedDisplayTypeHeights];
        v6 = [v13 arrayByAddingObject:v4];
      }

      else
      {
        v12 = [(HKOverlayRoomViewController *)self _evenStackedProportions];
        v6 = [v12 arrayByAddingObject:v4];
      }

      if (!v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v5)
      {
        goto LABEL_6;
      }

      [v4 heightValue];
      v6 = [(HKOverlayRoomViewController *)self _computeRevisedRatiosGivenRatio:?];
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v7 = [(HKOverlayRoomViewController *)self chartController];
    v8 = [v7 stackedDisplayTypeHeights];
    [(HKOverlayRoomViewController *)self setPreviousStackHeights:v8];

    v9 = [(HKOverlayRoomViewController *)self chartController];
    [v9 setStackedDisplayTypeHeights:v6];

LABEL_6:
  }

  MEMORY[0x1EEE66BB8]();
}

- (id)_computeRevisedRatiosGivenRatio:(double)a3
{
  v5 = [(HKOverlayRoomViewController *)self chartController];
  v6 = [v5 stackedDisplayTypeHeights];

  if (!v6)
  {
    v6 = [(HKOverlayRoomViewController *)self _evenStackedProportions];
  }

  v7 = [(HKOverlayRoomViewController *)self _indexesOfLargestProportions:v6];
  if ([v7 count])
  {
    v8 = [v7 count];
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([v6 count])
    {
      v10 = 0;
      v11 = a3 / v8;
      do
      {
        v12 = [v6 objectAtIndexedSubscript:v10];
        v13 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
        v14 = [v7 containsObject:v13];

        if (v14)
        {
          v15 = [HKInteractiveChartStackHeight alloc];
          [v12 heightValue];
          v17 = [(HKInteractiveChartStackHeight *)v15 initWithKind:0 heightValue:v16 - v11];
          [v9 addObject:v17];
        }

        else
        {
          [v9 addObject:v12];
        }

        ++v10;
      }

      while (v10 < [v6 count]);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_restoreStackingProportions
{
  v3 = [(HKOverlayRoomViewController *)self previousStackHeights];
  v4 = [(HKOverlayRoomViewController *)self chartController];
  [v4 setStackedDisplayTypeHeights:v3];

  [(HKOverlayRoomViewController *)self setPreviousStackHeights:0];
}

- (id)_evenStackedProportions
{
  v2 = [(HKOverlayRoomViewController *)self chartController];
  v3 = [v2 stackOffsetCount];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v3 >= 1)
    {
      v5 = 1.0 / v3;
      do
      {
        v6 = [[HKInteractiveChartStackHeight alloc] initWithKind:0 heightValue:v5];
        [v4 addObject:v6];

        --v3;
      }

      while (v3);
    }
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (id)_indexesOfLargestProportions:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v3 count])
  {
    v5 = 0;
    v6 = -1.0;
    while (1)
    {
      v7 = [v3 objectAtIndexedSubscript:v5];
      if (![v7 kind])
      {
        [v7 heightValue];
        v9 = v8;
        if (vabdd_f64(v8, v6) < 0.01)
        {
          goto LABEL_7;
        }

        if (v8 - v6 > 0.0)
        {
          break;
        }
      }

LABEL_8:

      if (++v5 >= [v3 count])
      {
        goto LABEL_9;
      }
    }

    [v4 removeAllObjects];
    v6 = v9;
LABEL_7:
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
    [v4 addObject:v10];

    goto LABEL_8;
  }

LABEL_9:

  return v4;
}

- (BOOL)contextView:(id)a3 canSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [HKOverlayContextLocation alloc];
  v7 = [(HKOverlayRoomViewController *)self segmentedControlSelectedIndex];
  v8 = [v5 section];
  v9 = [v5 row];

  v10 = [(HKOverlayContextLocation *)v6 initWithContainerIndex:v7 sectionIndex:v8 itemIndex:v9];
  v11 = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
  LOBYTE(self) = [(HKOverlayRoomViewController *)self _canSelectOverlayLocation:v10 previousSelection:v11];

  return self;
}

- (void)contextView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  [(HKOverlayRoomViewController *)self setUserHasOverriddenPreferredOverlay:1];
  v11 = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
  v6 = [HKOverlayContextLocation alloc];
  v7 = [(HKOverlayRoomViewController *)self segmentedControlSelectedIndex];
  v8 = [v5 section];
  v9 = [v5 row];

  v10 = [(HKOverlayContextLocation *)v6 initWithContainerIndex:v7 sectionIndex:v8 itemIndex:v9];
  [(HKOverlayRoomViewController *)self _updateChartForOverlaySelection:v10 previousSelection:v11 animated:1];
  [(HKOverlayRoomViewController *)self _disableDefaultOverlaySelectionIfNecessary];
}

- (void)contextView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  [(HKOverlayRoomViewController *)self setUserHasOverriddenPreferredOverlay:1, a4];
  v5 = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
  [(HKOverlayRoomViewController *)self _updateChartForOverlaySelection:0 previousSelection:v5 animated:1];
  [(HKOverlayRoomViewController *)self _disableDefaultOverlaySelectionIfNecessary];
}

- (void)contextView:(id)a3 didTapOnInfoButtonAtIndex:(int64_t)a4
{
  v6 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  if (v6)
  {
    v16 = v6;
    v7 = [(HKOverlayRoomViewController *)self factorDisplayTypes];
    if (v7)
    {
      v8 = v7;
      v9 = [(HKOverlayRoomViewController *)self factorDisplayTypes];
      v10 = [v9 count];

      if (v10 <= a4)
      {
        return;
      }

      v11 = [(HKOverlayRoomViewController *)self factorDisplayTypes];
      v16 = [v11 objectAtIndexedSubscript:a4];

      v12 = [(HKOverlayRoomViewController *)self primaryDisplayType];
      v13 = [(HKOverlayRoomViewController *)self applicationItems];
      v14 = [v13 healthStore];
      v15 = [HKInteractiveChartInfographicFactory infographicViewControllerForDisplayType:v12 factorDisplayType:v16 healthStore:v14];

      if (v15)
      {
        [(UIViewController *)self hk_presentModalCardViewController:v15 fullScreen:0 animated:1 completion:0];
      }
    }
  }
}

- (void)segmentedControlValueChanged:(id)a3
{
  v4 = a3;
  v5 = [(HKOverlayRoomViewController *)self controllerMode];
  v6 = [v4 selectedSegmentIndex];

  v7 = [(HKOverlayRoomViewController *)self initialSelectedContextForMode:v5 containerIndex:v6];
  [(HKOverlayRoomViewController *)self setInitialSelectedContextLocation:v7];

  v8 = [(HKOverlayRoomViewController *)self initialSelectedContextLocation];

  [(HKOverlayRoomViewController *)self _unselectCurrentContext];
  [(HKOverlayRoomViewController *)self _updateContextTiles];
  if (v8)
  {
    [(HKOverlayRoomViewController *)self _selectPreferredItem];
  }

  v9 = [(HKOverlayRoomViewController *)self sectionedContextView];
  [v9 scrollToTop];

  v10 = [(HKOverlayRoomViewController *)self chartController];
  [v10 updateCurrentValueViewWithVisibleRange];
}

- (int64_t)segmentedControlSelectedIndex
{
  v3 = [(HKOverlayRoomViewController *)self segmentedControl];

  if (!v3)
  {
    return 0;
  }

  v4 = [(HKOverlayRoomViewController *)self segmentedControl];
  v5 = [v4 selectedSegmentIndex];

  return v5;
}

- (void)setSegmentedControlSelectedIndex:(unint64_t)a3
{
  v4 = [(HKOverlayRoomViewController *)self segmentedControl];
  [v4 setSelectedSegmentIndex:a3];
}

- (void)didUpdateFromDateZoom:(int64_t)a3 toDateZoom:(int64_t)a4 newVisibleRange:(id)a5
{
  v7 = a5;
  [(HKOverlayRoomViewController *)self _invalidateDefaultOverlayDeselectionTimer];
  [(HKOverlayRoomViewController *)self setCurrentChartTimeScope:a4];
  v8 = [MEMORY[0x1E696AB80] hk_dateIntervalWithValueRange:v7];
  [(HKOverlayRoomViewController *)self setCurrentChartDateInterval:v8];

  objc_initWeak(&location, self);
  v9 = [(HKOverlayRoomViewController *)self currentChartDateInterval];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__HKOverlayRoomViewController_didUpdateFromDateZoom_toDateZoom_newVisibleRange___block_invoke;
  v10[3] = &unk_1E81B5E70;
  objc_copyWeak(v11, &location);
  v10[4] = self;
  v11[1] = a4;
  [(HKOverlayRoomViewController *)self fetchContextItemsIfNeededWithDateInterval:v9 completion:v10];

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __80__HKOverlayRoomViewController_didUpdateFromDateZoom_toDateZoom_newVisibleRange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    if ([*(a1 + 32) _currentSelectedContextValidForTimeScope:*(a1 + 48)])
    {
      v3 = [v6 currentSelectedContextLocation];
      [v6 _selectContextItemAtLocation:v3 animated:0];

      v4 = [v6 currentSelectedContextLocation];
      v5 = [v6 currentSelectedContextLocation];
      [v6 _updateChartForOverlaySelection:v4 previousSelection:v5];
    }

    else
    {
      [*(a1 + 32) setUserHasOverriddenPreferredOverlay:1];
      [*(a1 + 32) _unselectCurrentContext];
    }

    WeakRetained = v6;
  }
}

- (BOOL)_currentSelectedContextValidForTimeScope:(int64_t)a3
{
  v5 = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];

  if (!v5)
  {
    return 1;
  }

  v6 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
  v7 = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
  v8 = [v6 objectAtIndexedSubscript:{objc_msgSend(v7, "containerIndex")}];

  v9 = [v8 overlayContextSections];
  v10 = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
  v11 = [v9 objectAtIndexedSubscript:{objc_msgSend(v10, "sectionIndex")}];

  v12 = [v11 overlayContextItems];
  v13 = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
  v14 = [v12 objectAtIndexedSubscript:{objc_msgSend(v13, "itemIndex")}];

  if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v15 = [(HKOverlayRoomViewController *)self chartController];
    v16 = [v14 canSelectOverlayContextItem:v14 isDeselecting:0 timeScope:a3 chartController:v15];
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (void)didUpdateVisibleValueRange:(id)a3 changeContext:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 2)
  {
    v11 = v6;
    v8 = [MEMORY[0x1E696AB80] hk_dateIntervalWithValueRange:v6];
    v9 = [(HKOverlayRoomViewController *)self currentChartDateInterval];
    v10 = [v8 isEqual:v9];

    if ((v10 & 1) == 0)
    {
      [(HKOverlayRoomViewController *)self setCurrentChartDateInterval:v8];
      [(HKOverlayRoomViewController *)self _refreshContextItemsAndUpdateChart:0];
    }
  }

  else
  {
    if (a4 != 1)
    {
      goto LABEL_8;
    }

    v11 = v6;
    v6 = [(HKOverlayRoomViewController *)self _disableDefaultOverlaySelectionIfNecessary];
  }

  v7 = v11;
LABEL_8:

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (void)didUpdateSeriesWithNewValueRange:(id)a3
{
  if (a3)
  {
    [(HKOverlayRoomViewController *)self _refreshUpdatedItemsWithChartUpdate:0 invalidateChartItems:0];
  }
}

- (void)sampleTypeDateRangeController:(id)a3 didUpdateDateRanges:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__HKOverlayRoomViewController_sampleTypeDateRangeController_didUpdateDateRanges___block_invoke;
  v7[3] = &unk_1E81B5AD0;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

uint64_t __81__HKOverlayRoomViewController_sampleTypeDateRangeController_didUpdateDateRanges___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _shouldUpdateContextItemsForChanges:*(a1 + 40)];
  if (result)
  {
    [*(a1 + 32) _invalidateContextItems];
    v3 = *(a1 + 32);

    return [v3 _refreshContextItemsAndUpdateChart:1];
  }

  return result;
}

- (void)updateController:(id)a3 didReceiveUpdateForType:(id)a4 samplesAdded:(id)a5 objectsRemoved:(id)a6 recoveringFromError:(BOOL)a7
{
  v7 = a7;
  v10 = a5;
  if ([a6 count] || objc_msgSend(v10, "count") || v7)
  {
    [(HKOverlayRoomViewController *)self _refreshUpdatedItemsWithChartUpdate:1 invalidateChartItems:1];
  }
}

- (void)_refreshUpdatedItemsWithChartUpdate:(BOOL)a3 invalidateChartItems:(BOOL)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __88__HKOverlayRoomViewController__refreshUpdatedItemsWithChartUpdate_invalidateChartItems___block_invoke;
  v4[3] = &unk_1E81B5E98;
  v5 = a4;
  v4[4] = self;
  v6 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

uint64_t __88__HKOverlayRoomViewController__refreshUpdatedItemsWithChartUpdate_invalidateChartItems___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) _invalidateContextItems];
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 41);

  return [v2 _refreshContextItemsAndUpdateChart:v3];
}

- (void)restoreUserActivityState:(id)a3
{
  v4 = a3;
  v28 = [v4 userInfo];
  [(HKOverlayRoomViewController *)self setShowAllFiltersActivity:v4];

  v5 = [v28 objectForKeyedSubscript:@"HKOverlayRoomViewControllerRestorationShowAllFiltersKey"];
  if (-[HKOverlayRoomViewController supportsShowAllFilters](self, "supportsShowAllFilters") && [v5 BOOLValue])
  {
    [(HKOverlayRoomViewController *)self _showAllFilters];
  }

  v6 = [v28 objectForKeyedSubscript:@"HKOverlayRoomViewControllerRestorationModeKey"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 integerValue];
    if (v8 == [(HKOverlayRoomViewController *)self controllerMode])
    {
      v9 = [v28 objectForKeyedSubscript:@"HKOverlayRoomViewControllerRestorationContextContainer"];
      v10 = [v28 objectForKeyedSubscript:@"HKOverlayRoomViewControllerRestorationContextSection"];
      v11 = [v28 objectForKeyedSubscript:@"HKOverlayRoomViewControllerRestorationContextItemIndex"];
      if (!v9)
      {
        goto LABEL_18;
      }

      v12 = [v9 integerValue];
      if (v12 < 0)
      {
        goto LABEL_18;
      }

      v13 = v12;
      v14 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
      v15 = [v14 count];

      if (v13 >= v15)
      {
        goto LABEL_18;
      }

      v16 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
      v17 = [v16 objectAtIndexedSubscript:v13];

      if (v10)
      {
        v18 = [v10 integerValue];
        if ((v18 & 0x8000000000000000) == 0)
        {
          v19 = v18;
          v20 = [(HKOverlayContextLocation *)v17 overlayContextSections];
          v21 = [v20 count];

          if (v19 < v21)
          {
            v22 = [(HKOverlayContextLocation *)v17 overlayContextSections];
            v23 = [v22 objectAtIndexedSubscript:v19];

            if (v11)
            {
              v24 = [v11 integerValue];
              if ((v24 & 0x8000000000000000) == 0)
              {
                v25 = v24;
                v26 = [v23 overlayContextItems];
                v27 = [v26 count];

                if (v25 >= v27)
                {
LABEL_18:

                  goto LABEL_19;
                }

                v17 = -[HKOverlayContextLocation initWithContainerIndex:sectionIndex:itemIndex:]([HKOverlayContextLocation alloc], "initWithContainerIndex:sectionIndex:itemIndex:", [v9 integerValue], objc_msgSend(v10, "integerValue"), objc_msgSend(v11, "integerValue"));
                [(HKOverlayRoomViewController *)self _selectContextItemAtLocation:v17 animated:0];
                v23 = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
                [(HKOverlayRoomViewController *)self _updateChartForOverlaySelection:v23 previousSelection:0];
              }
            }
          }
        }
      }

      goto LABEL_18;
    }
  }

LABEL_19:
}

- (id)restorationStateDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(HKOverlayRoomViewController *)self showAllFiltersVisible]|| [(HKOverlayRoomViewController *)self controllerMode]== 3;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  [v3 setObject:v5 forKeyedSubscript:@"HKOverlayRoomViewControllerRestorationShowAllFiltersKey"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HKOverlayRoomViewController controllerMode](self, "controllerMode")}];
  [v3 setObject:v6 forKeyedSubscript:@"HKOverlayRoomViewControllerRestorationModeKey"];

  v7 = [(HKOverlayRoomViewController *)self restorationContextLocation];

  if (v7)
  {
    v8 = MEMORY[0x1E696AD98];
    v9 = [(HKOverlayRoomViewController *)self restorationContextLocation];
    v10 = [v8 numberWithInteger:{objc_msgSend(v9, "containerIndex")}];
    [v3 setObject:v10 forKeyedSubscript:@"HKOverlayRoomViewControllerRestorationContextContainer"];

    v11 = MEMORY[0x1E696AD98];
    v12 = [(HKOverlayRoomViewController *)self restorationContextLocation];
    v13 = [v11 numberWithInteger:{objc_msgSend(v12, "sectionIndex")}];
    [v3 setObject:v13 forKeyedSubscript:@"HKOverlayRoomViewControllerRestorationContextSection"];

    v14 = MEMORY[0x1E696AD98];
    v15 = [(HKOverlayRoomViewController *)self restorationContextLocation];
    v16 = [v14 numberWithInteger:{objc_msgSend(v15, "itemIndex")}];
    [v3 setObject:v16 forKeyedSubscript:@"HKOverlayRoomViewControllerRestorationContextItemIndex"];
  }

  return v3;
}

- (void)saveRestorationState
{
  v10 = [(HKOverlayRoomViewController *)self restorationStateDictionary];
  v3 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  v4 = [(HKOverlayRoomViewController *)self applicationItems];
  v5 = [v4 healthStore];
  v6 = [HKInteractiveChartViewController standardChartRestorationDictionary:v3 healthStore:v5];

  v7 = [HKInteractiveChartViewController mergeRestorationDictionary:v10 otherDictionary:v6];
  v8 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  v9 = [HKInteractiveChartViewController standardChartRestorationActivity:v7 primaryDisplayType:v8];

  [HKInteractiveChartViewController saveRestorationUserActivity:v9 viewController:self];
}

- (BOOL)_shouldUpdateContextItemsForChanges:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__HKOverlayRoomViewController__shouldUpdateContextItemsForChanges___block_invoke;
  v7[3] = &unk_1E81B5EC0;
  v9 = &v10;
  v5 = v4;
  v8 = v5;
  [(HKOverlayRoomViewController *)self _enumerateContextItemsWithBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __67__HKOverlayRoomViewController__shouldUpdateContextItemsForChanges___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 sampleTypeForDateRangeUpdates];
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24) == 1)
  {
    *(v4 + 24) = 1;
  }

  else
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
    *(*(*(a1 + 40) + 8) + 24) = v5 != 0;
  }

  if ([objc_opt_class() conformsToProtocol:&unk_1F43EAEB0])
  {
    v6 = [v9 stackedSampleTypeForDateRangeUpdates];
    v7 = *(*(a1 + 40) + 8);
    if (*(v7 + 24) == 1)
    {
      *(v7 + 24) = 1;
    }

    else
    {
      v8 = [*(a1 + 32) objectForKeyedSubscript:v6];
      *(*(*(a1 + 40) + 8) + 24) = v8 != 0;
    }
  }
}

- (void)_enumerateContextItemsWithBlock:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
  v20 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v20)
  {
    v19 = *v31;
    do
    {
      v5 = 0;
      do
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v5;
        v6 = *(*(&v30 + 1) + 8 * v5);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v7 = [v6 overlayContextSections];
        v8 = [v7 countByEnumeratingWithState:&v26 objects:v35 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v27;
          do
          {
            v11 = 0;
            do
            {
              if (*v27 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v26 + 1) + 8 * v11);
              v22 = 0u;
              v23 = 0u;
              v24 = 0u;
              v25 = 0u;
              v13 = [v12 overlayContextItems];
              v14 = [v13 countByEnumeratingWithState:&v22 objects:v34 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v23;
                do
                {
                  v17 = 0;
                  do
                  {
                    if (*v23 != v16)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v4[2](v4, *(*(&v22 + 1) + 8 * v17++));
                  }

                  while (v15 != v17);
                  v15 = [v13 countByEnumeratingWithState:&v22 objects:v34 count:16];
                }

                while (v15);
              }

              ++v11;
            }

            while (v11 != v9);
            v9 = [v7 countByEnumeratingWithState:&v26 objects:v35 count:16];
          }

          while (v9);
        }

        v5 = v21 + 1;
      }

      while (v21 + 1 != v20);
      v20 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v20);
  }
}

void __54__HKOverlayRoomViewController__invalidateContextItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 invalidateContextItem];
  }
}

- (void)_refreshContextItemsAndUpdateChart:(BOOL)a3
{
  objc_initWeak(&location, self);
  v5 = [(HKOverlayRoomViewController *)self currentChartDateInterval];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__HKOverlayRoomViewController__refreshContextItemsAndUpdateChart___block_invoke;
  v6[3] = &unk_1E81B5F08;
  objc_copyWeak(&v7, &location);
  v8 = a3;
  [(HKOverlayRoomViewController *)self fetchContextItemsIfNeededWithDateInterval:v5 completion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __66__HKOverlayRoomViewController__refreshContextItemsAndUpdateChart___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained currentSelectedContextLocation];
    [v6 _selectContextItemAtLocation:v3 animated:0];

    WeakRetained = v6;
    if (*(a1 + 40) == 1)
    {
      v4 = [v6 currentSelectedContextLocation];
      v5 = [v6 currentSelectedContextLocation];
      [v6 _updateChartForOverlaySelection:v4 previousSelection:v5];

      WeakRetained = v6;
    }
  }
}

- (void)_unselectCurrentContext
{
  v3 = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];

  if (v3)
  {
    v5 = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
    [(HKOverlayRoomViewController *)self _updateChartForOverlaySelection:0 previousSelection:v5 animated:1];
    v4 = [(HKOverlayRoomViewController *)self sectionedContextView];
    [v4 deselectAllItemsAnimated:0];
  }

  else
  {

    [(HKOverlayRoomViewController *)self _updateChartForOverlaySelection:0 previousSelection:0];
  }
}

- (id)_selectedOverlayContextWithLocation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (v6 = [v4 containerIndex], -[HKOverlayRoomViewController overlayContextSectionContainers](self, "overlayContextSectionContainers"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6 < v8))
  {
    v9 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v5, "containerIndex")}];

    v11 = [v5 sectionIndex];
    v12 = [v10 overlayContextSections];
    v13 = [v12 count];

    if (v11 >= v13)
    {
      v17 = 0;
    }

    else
    {
      v14 = [v10 overlayContextSections];
      v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v5, "sectionIndex")}];

      v16 = [v15 overlayContextItems];
      v17 = [v16 objectAtIndexedSubscript:{objc_msgSend(v5, "itemIndex")}];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)_shouldInstallDefaultOverlayDeselectionTimerForMode:(int64_t)a3 initialSelectedLocation:(id)a4
{
  v5 = [(HKOverlayRoomViewController *)self _selectedOverlayContextWithLocation:a4];
  v6 = v5;
  v7 = 0;
  if (a3 != 3)
  {
    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = 1;
      }
    }
  }

  return v7;
}

- (void)_installDefaultOverlayDeselectionTimer
{
  [(HKOverlayRoomViewController *)self _invalidateDefaultOverlayDeselectionTimer];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E695DFF0];
  v4 = _DefaultOverlayDeselectDelay();
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __69__HKOverlayRoomViewController__installDefaultOverlayDeselectionTimer__block_invoke;
  v9 = &unk_1E81B5F30;
  objc_copyWeak(&v10, &location);
  v5 = [v3 scheduledTimerWithTimeInterval:0 repeats:&v6 block:v4];
  [(HKOverlayRoomViewController *)self setDefaultOverlayDeselectTimer:v5, v6, v7, v8, v9];

  [(HKOverlayRoomViewController *)self _registerPresentationControllerTransitionNotificationsForOverlayDeselectionTimer];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __69__HKOverlayRoomViewController__installDefaultOverlayDeselectionTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _disableDefaultOverlaySelection];
}

- (void)_invalidateDefaultOverlayDeselectionTimer
{
  [(NSTimer *)self->_defaultOverlayDeselectTimer invalidate];
  defaultOverlayDeselectTimer = self->_defaultOverlayDeselectTimer;
  self->_defaultOverlayDeselectTimer = 0;
}

- (void)_disableDefaultOverlaySelection
{
  [(HKOverlayRoomViewController *)self setUserHasOverriddenPreferredOverlay:1];
  [(HKOverlayRoomViewController *)self _unselectCurrentContext];
  [(HKOverlayRoomViewController *)self _invalidateDefaultOverlayDeselectionTimer];

  [(HKOverlayRoomViewController *)self _unregisterPresentationControllerTransitionNotificationsForOverlayDeselectionTimer];
}

- (void)_disableDefaultOverlaySelectionIfNecessary
{
  if (self->_defaultOverlayDeselectTimer)
  {
    [(HKOverlayRoomViewController *)self _disableDefaultOverlaySelection];
  }
}

- (void)_registerPresentationControllerTransitionNotificationsForOverlayDeselectionTimer
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__handlePresentationControllerPresentationTransitionDidEnd_ name:*MEMORY[0x1E69DE2D8] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__handlePresentationControllerDismissalDidEnd_ name:*MEMORY[0x1E69DE2C8] object:0];
}

- (void)_unregisterPresentationControllerTransitionNotificationsForOverlayDeselectionTimer
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DE2D8] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69DE2C8] object:0];
}

- (void)_handlePresentationControllerPresentationTransitionDidEnd:(id)a3
{
  v4 = [a3 object];
  v5 = [(HKOverlayRoomViewController *)self presentedViewController];

  if (v4 == v5)
  {

    [(HKOverlayRoomViewController *)self _pauseDefaultOverlayDeselectionTimerIfNecessary];
  }
}

- (void)_handlePresentationControllerDismissalDidEnd:(id)a3
{
  v4 = [a3 object];
  v5 = [(HKOverlayRoomViewController *)self presentedViewController];

  if (v4 == v5)
  {

    [(HKOverlayRoomViewController *)self _restartDefaultOverlayDeselectionTimerIfNecessary];
  }
}

- (void)_pauseDefaultOverlayDeselectionTimerIfNecessary
{
  if ([(NSTimer *)self->_defaultOverlayDeselectTimer isValid])
  {
    v3 = [MEMORY[0x1E695DF00] distantFuture];
    [(NSTimer *)self->_defaultOverlayDeselectTimer setFireDate:v3];
  }
}

- (void)_restartDefaultOverlayDeselectionTimerIfNecessary
{
  if ([(NSTimer *)self->_defaultOverlayDeselectTimer isValid])
  {
    v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:_DefaultOverlayDeselectDelay()];
    [(NSTimer *)self->_defaultOverlayDeselectTimer setFireDate:v3];
  }
}

- (void)buildFactorContextsAllowingDeselection:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKOverlayRoomViewController.m" lineNumber:315 description:@"Nil primary display type"];
}

@end