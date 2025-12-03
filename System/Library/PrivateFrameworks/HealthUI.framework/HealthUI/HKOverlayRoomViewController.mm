@interface HKOverlayRoomViewController
- (BOOL)_canSelectOverlayLocation:(id)location previousSelection:(id)selection;
- (BOOL)_containersContainHealthFactorsSection:(id)section;
- (BOOL)_currentSelectedContextValidForTimeScope:(int64_t)scope;
- (BOOL)_isInPortraitLayout;
- (BOOL)_shouldInstallDefaultOverlayDeselectionTimerForMode:(int64_t)mode initialSelectedLocation:(id)location;
- (BOOL)_shouldStackSingleModeWithShowAllFiltersOverlayAreaVertically;
- (BOOL)_shouldUpdateContextItemsForChanges:(id)changes;
- (BOOL)contextView:(id)view canSelectItemAtIndexPath:(id)path;
- (BOOL)factorDisplayTypeIsActive:(id)active;
- (BOOL)healthFactorsEnabled;
- (BOOL)selectOverlayButtonForTestingNamed:(id)named;
- (HKOverlayRoomViewController)initWithDisplayDate:(id)date applicationItems:(id)items factorDisplayTypes:(id)types mode:(int64_t)mode;
- (NSDirectionalEdgeInsets)_edgeInsetsForWidthDesignation;
- (NSString)description;
- (id)_addHealthFactorsIfNecessary:(id)necessary;
- (id)_bottomMostDisplayType:(id)type;
- (id)_computeRevisedRatiosGivenRatio:(double)ratio;
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
- (id)_indexesOfLargestProportions:(id)proportions;
- (id)_segmentedControlTitles;
- (id)_selectedOverlayContextWithLocation:(id)location;
- (id)_setupSegmentedControl;
- (id)buildFactorContextForDisplayType:(id)type factorDisplayType:(id)displayType overlayChartController:(id)controller currentCalendarOverride:(id)override applicationItems:(id)items overlayMode:(int64_t)mode allowsDeselection:(BOOL)deselection;
- (id)buildFactorContextSectionForChartController;
- (id)buildFactorContextsAllowingDeselection:(BOOL)deselection;
- (id)combineFactors:(id)factors standardFactors:(id)standardFactors;
- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller;
- (id)controllerTitleWithApplicationItems:(id)items;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items;
- (id)initialSelectedContextForMode:(int64_t)mode containerIndex:(int64_t)index;
- (id)overlayButtonNamesForTesting;
- (id)overlayButtonValueForTesting;
- (id)primaryDisplayTypeWithApplicationItems:(id)items;
- (id)restorationStateDictionary;
- (id)showAllFiltersButtonTitle;
- (int64_t)_contextItemCount;
- (int64_t)_findOverlayResolution:(id)resolution;
- (int64_t)_widthDesignationFromTraitCollection:(id)collection;
- (int64_t)containerIndexForHealthFactors;
- (int64_t)segmentedControlSelectedIndex;
- (unint64_t)_fullModeTransitionToSizeClass:(int64_t)class;
- (unint64_t)_singleModeTransitionToSizeClass:(int64_t)class;
- (unint64_t)filteredInteractiveChartOptionsForMode:(int64_t)mode;
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
- (void)_configureStackViewsUsingHorizontalSizeClass:(int64_t)class;
- (void)_didDismissShowAllFilters;
- (void)_disableDefaultOverlaySelection;
- (void)_disableDefaultOverlaySelectionIfNecessary;
- (void)_enumerateContextItemsWithBlock:(id)block;
- (void)_handlePresentationControllerDismissalDidEnd:(id)end;
- (void)_handlePresentationControllerPresentationTransitionDidEnd:(id)end;
- (void)_horizontalSizeClassChanged:(id)changed;
- (void)_installBaseDisplayType:(id)type autoscale:(BOOL)autoscale;
- (void)_installDefaultOverlayDeselectionTimer;
- (void)_invalidateDefaultOverlayDeselectionTimer;
- (void)_layoutSegmentedControl;
- (void)_pauseDefaultOverlayDeselectionTimerIfNecessary;
- (void)_refreshContextItemsAndUpdateChart:(BOOL)chart;
- (void)_refreshUpdatedItemsWithChartUpdate:(BOOL)update invalidateChartItems:(BOOL)items;
- (void)_registerPresentationControllerTransitionNotificationsForOverlayDeselectionTimer;
- (void)_restartDefaultOverlayDeselectionTimerIfNecessary;
- (void)_restoreStackingProportions;
- (void)_selectContextItemAtLocation:(id)location animated:(BOOL)animated;
- (void)_selectPreferredItem;
- (void)_setupInterface;
- (void)_setupOverlayContainers;
- (void)_setupOverlayContextItems;
- (void)_setupPrimaryDisplayType;
- (void)_setupStackingProportionsForContext:(id)context;
- (void)_setupTopLevelChartView;
- (void)_setupTopLevelOverlaysWithOptionalSegmentView;
- (void)_subscribeToSampleTypeUpdates;
- (void)_unregisterPresentationControllerTransitionNotificationsForOverlayDeselectionTimer;
- (void)_unselectCurrentContext;
- (void)_updateChartForOverlaySelection:(id)selection previousSelection:(id)previousSelection animated:(BOOL)animated;
- (void)_updateContextTiles;
- (void)_willPresentShowAllFilters;
- (void)contextView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)contextView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)contextView:(id)view didTapOnInfoButtonAtIndex:(int64_t)index;
- (void)dealloc;
- (void)didUpdateFromDateZoom:(int64_t)zoom toDateZoom:(int64_t)dateZoom newVisibleRange:(id)range;
- (void)didUpdateSeriesWithNewValueRange:(id)range;
- (void)didUpdateVisibleValueRange:(id)range changeContext:(int64_t)context;
- (void)fetchContextItemsIfNeededWithDateInterval:(id)interval completion:(id)completion;
- (void)reloadOverlayContextItems;
- (void)restoreUserActivityState:(id)state;
- (void)sampleTypeDateRangeController:(id)controller didUpdateDateRanges:(id)ranges;
- (void)saveRestorationState;
- (void)segmentedControlValueChanged:(id)changed;
- (void)setSegmentedControlSelectedIndex:(unint64_t)index;
- (void)showAllFiltersWithCompletion:(id)completion;
- (void)updateController:(id)controller didReceiveUpdateForType:(id)type samplesAdded:(id)added objectsRemoved:(id)removed recoveringFromError:(BOOL)error;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation HKOverlayRoomViewController

- (HKOverlayRoomViewController)initWithDisplayDate:(id)date applicationItems:(id)items factorDisplayTypes:(id)types mode:(int64_t)mode
{
  v47[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  itemsCopy = items;
  typesCopy = types;
  v46.receiver = self;
  v46.super_class = HKOverlayRoomViewController;
  v14 = [(HKOverlayRoomViewController *)&v46 initWithNibName:0 bundle:0];
  if (v14)
  {
    if (dateCopy)
    {
      date = dateCopy;
    }

    else
    {
      date = [MEMORY[0x1E695DF00] date];
    }

    v16 = date;
    objc_storeStrong(&v14->_applicationItems, items);
    timeScopeController = [itemsCopy timeScopeController];
    v14->_currentChartTimeScope = [timeScopeController selectedTimeScope];

    v18 = MEMORY[0x1E696AB80];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v20 = [v18 hk_dateIntervalForDayFromDate:v16 calendar:currentCalendar];
    currentChartDateInterval = v14->_currentChartDateInterval;
    v14->_currentChartDateInterval = v20;

    currentSelectedContextLocation = v14->_currentSelectedContextLocation;
    v14->_currentSelectedContextLocation = 0;

    objc_storeStrong(&v14->_displayDate, date);
    v14->_controllerMode = mode;
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
    navigationItem = [(HKOverlayRoomViewController *)v14 navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];

    singleContextMaximumSizeView = v14->_singleContextMaximumSizeView;
    v14->_singleContextMaximumSizeView = 0;

    v37 = [_TtC8HealthUI45HKInteractiveChartInteractionAnalyticsManager alloc];
    healthStore = [itemsCopy healthStore];
    v39 = [(HKInteractiveChartInteractionAnalyticsManager *)v37 initWithHealthStore:healthStore];
    analyticsManager = v14->_analyticsManager;
    v14->_analyticsManager = v39;

    v47[0] = objc_opt_class();
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
    v42 = [(HKOverlayRoomViewController *)v14 registerForTraitChanges:v41 withTarget:v14 action:sel__horizontalSizeClassChanged_];
    traitChangeRegistration = v14->_traitChangeRegistration;
    v14->_traitChangeRegistration = v42;

    objc_storeStrong(&v14->_factorDisplayTypes, types);
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

- (id)controllerTitleWithApplicationItems:(id)items
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKOverlayRoomViewController.m" lineNumber:208 description:@"Subclasses must implement controllerTitleWithApplicationItems"];

  return @"**NO**TITLE**";
}

- (id)primaryDisplayTypeWithApplicationItems:(id)items
{
  v5 = MEMORY[0x1E696AAA8];
  itemsCopy = items;
  currentHandler = [v5 currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKOverlayRoomViewController.m" lineNumber:214 description:@"Subclasses must implement primaryDisplayTypeWithApplicationItems:"];

  displayTypeController = [itemsCopy displayTypeController];

  v9 = [displayTypeController displayTypeWithIdentifier:&unk_1F43821E8];

  return v9;
}

- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKOverlayRoomViewController.m" lineNumber:221 description:@"Subclasses must implement contextSectionContainersForMode:applicationItems:overlayChartController"];

  return MEMORY[0x1E695E0F0];
}

- (id)initialSelectedContextForMode:(int64_t)mode containerIndex:(int64_t)index
{
  preferredInitialOverlayIndex = [(HKOverlayRoomViewController *)self preferredInitialOverlayIndex];
  if (preferredInitialOverlayIndex && [(HKOverlayRoomViewController *)self containerIndexForHealthFactors]!= index)
  {
    v7 = -[HKOverlayContextLocation initWithContainerIndex:sectionIndex:itemIndex:]([HKOverlayContextLocation alloc], "initWithContainerIndex:sectionIndex:itemIndex:", index, 0, [preferredInitialOverlayIndex integerValue]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKOverlayRoomViewController.m" lineNumber:248 description:@"Subclasses must implement createViewControllerMode:displayDate:applicationItems:"];

  return 0;
}

- (id)showAllFiltersButtonTitle
{
  primaryDisplayType = [(HKOverlayRoomViewController *)self primaryDisplayType];
  localization = [primaryDisplayType localization];
  displayName = [localization displayName];

  if (displayName && ([displayName isEqualToString:&stru_1F42FFBE0] & 1) == 0)
  {
    v7 = MEMORY[0x1E696AEC0];
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v8 = [v5 localizedStringForKey:@"SHOW_MORE_%@_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v6 = [v7 localizedStringWithFormat:v8, displayName];
  }

  else
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v6 = [v5 localizedStringForKey:@"SHOW_MORE_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  }

  return v6;
}

- (unint64_t)filteredInteractiveChartOptionsForMode:(int64_t)mode
{
  result = [(HKOverlayRoomViewController *)self additionalChartOptions];
  if (mode == 3)
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
    activeFactorContexts = [v3 activeFactorContexts];
    inactiveFactorContexts = [v4 inactiveFactorContexts];
    v7 = [activeFactorContexts arrayByAddingObjectsFromArray:inactiveFactorContexts];

    v8 = [HKOverlayContextSection alloc];
    _healthFactorsSectionTitle = [(HKOverlayRoomViewController *)self _healthFactorsSectionTitle];
    v10 = [(HKOverlayContextSection *)v8 initWithSectionTitle:_healthFactorsSectionTitle overlayContextItems:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)buildFactorContextsAllowingDeselection:(BOOL)deselection
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(HKOverlayRoomViewController *)self healthFactorsEnabled])
  {
    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    primaryDisplayType = [(HKOverlayRoomViewController *)self primaryDisplayType];

    if (!primaryDisplayType)
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
          primaryDisplayType2 = [(HKOverlayRoomViewController *)self primaryDisplayType];
          chartController = [(HKOverlayRoomViewController *)self chartController];
          applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
          LOBYTE(v19) = deselection;
          v15 = [(HKOverlayRoomViewController *)self buildFactorContextForDisplayType:primaryDisplayType2 factorDisplayType:v11 overlayChartController:chartController currentCalendarOverride:0 applicationItems:applicationItems overlayMode:[(HKOverlayRoomViewController *)self controllerMode] allowsDeselection:v19];

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

- (BOOL)factorDisplayTypeIsActive:(id)active
{
  sampleType = [active sampleType];
  if (sampleType)
  {
    applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
    sampleDateRangeController = [applicationItems sampleDateRangeController];

    v7 = [sampleDateRangeController dateRangeForSampleType:sampleType];
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

- (id)combineFactors:(id)factors standardFactors:(id)standardFactors
{
  standardFactorsCopy = standardFactors;
  factorsCopy = factors;
  activeFactorContexts = [factorsCopy activeFactorContexts];
  v8 = [activeFactorContexts arrayByAddingObjectsFromArray:standardFactorsCopy];

  inactiveFactorContexts = [factorsCopy inactiveFactorContexts];

  v10 = [v8 arrayByAddingObjectsFromArray:inactiveFactorContexts];

  return v10;
}

- (id)buildFactorContextForDisplayType:(id)type factorDisplayType:(id)displayType overlayChartController:(id)controller currentCalendarOverride:(id)override applicationItems:(id)items overlayMode:(int64_t)mode allowsDeselection:(BOOL)deselection
{
  typeCopy = type;
  itemsCopy = items;
  overrideCopy = override;
  controllerCopy = controller;
  displayTypeCopy = displayType;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = typeCopy;
    LOBYTE(v22) = deselection;
    v20 = [[HKOverlayRoomFactorContext alloc] initWithPrimaryInteractiveChartDisplayType:v19 factorDisplayType:displayTypeCopy overlayChartController:controllerCopy currentCalendarOverride:overrideCopy applicationItems:itemsCopy overlayMode:mode allowsDeselection:v22];
  }

  else
  {
    LOBYTE(v22) = deselection;
    v20 = [[HKOverlayRoomFactorContext alloc] initWithPrimaryDisplayType:typeCopy factorDisplayType:displayTypeCopy overlayChartController:controllerCopy currentCalendarOverride:overrideCopy applicationItems:itemsCopy overlayMode:mode allowsDeselection:v22];
  }

  return v20;
}

- (id)_addHealthFactorsIfNecessary:(id)necessary
{
  v26[1] = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  v5 = necessaryCopy;
  if ([(HKOverlayRoomViewController *)self supportsHealthFactors])
  {
    v5 = necessaryCopy;
    if (![(HKOverlayRoomViewController *)self _containersContainHealthFactorsSection:necessaryCopy])
    {
      v5 = necessaryCopy;
      if ([(HKOverlayRoomViewController *)self controllerMode]== 3)
      {
        if ([necessaryCopy count] == 1)
        {
          v6 = [(HKOverlayRoomViewController *)self buildFactorContextsAllowingDeselection:1];
          v7 = v6;
          if (v6)
          {
            activeFactorContexts = [v6 activeFactorContexts];
            inactiveFactorContexts = [v7 inactiveFactorContexts];
            v22 = [activeFactorContexts arrayByAddingObjectsFromArray:inactiveFactorContexts];

            v10 = [[HKOverlayContextSection alloc] initWithSectionTitle:0 overlayContextItems:v22];
            v11 = [HKOverlayContextSectionContainer alloc];
            _healthFactorsSectionTitle = [(HKOverlayRoomViewController *)self _healthFactorsSectionTitle];
            v26[0] = v10;
            v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
            v14 = [(HKOverlayContextSectionContainer *)v11 initWithContainerTitle:_healthFactorsSectionTitle overlayContextSections:v13];

            firstObject = [necessaryCopy firstObject];
            v16 = [HKOverlayContextSectionContainer alloc];
            _healthFactorsMeasurementSectionTitle = [(HKOverlayRoomViewController *)self _healthFactorsMeasurementSectionTitle];
            overlayContextSections = [firstObject overlayContextSections];
            primaryDisplayType = [firstObject primaryDisplayType];
            v20 = [(HKOverlayContextSectionContainer *)v16 initWithContainerTitle:_healthFactorsMeasurementSectionTitle overlayContextSections:overlayContextSections primaryDisplayType:primaryDisplayType];

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
            selfCopy = self;
            _os_log_impl(&dword_1C3942000, v7, OS_LOG_TYPE_DEFAULT, "HKOverlayRoomViewController %@: Supports health factors but does not define a location for the factor contexts", buf, 0xCu);
          }
        }

        v5 = necessaryCopy;
        goto LABEL_10;
      }
    }
  }

LABEL_11:

  return v5;
}

- (int64_t)containerIndexForHealthFactors
{
  _healthFactorsSectionTitle = [(HKOverlayRoomViewController *)self _healthFactorsSectionTitle];
  overlayContextSectionContainers = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
  v5 = [overlayContextSectionContainers count];

  if (v5)
  {
    v6 = 0;
    while (1)
    {
      overlayContextSectionContainers2 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
      v8 = [overlayContextSectionContainers2 objectAtIndexedSubscript:v6];

      localizedContainerTitle = [v8 localizedContainerTitle];
      v10 = [localizedContainerTitle isEqualToString:_healthFactorsSectionTitle];

      if (v10)
      {
        break;
      }

      ++v6;
      overlayContextSectionContainers3 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
      v12 = [overlayContextSectionContainers3 count];

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

- (BOOL)_containersContainHealthFactorsSection:(id)section
{
  v44 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  sectionCopy = section;
  v5 = [sectionCopy countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v5)
  {
    v6 = *v38;
    selfCopy = self;
    v24 = *v38;
    do
    {
      v7 = 0;
      v25 = v5;
      do
      {
        if (*v38 != v6)
        {
          objc_enumerationMutation(sectionCopy);
        }

        v8 = *(*(&v37 + 1) + 8 * v7);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        overlayContextSections = [v8 overlayContextSections];
        v28 = [overlayContextSections countByEnumeratingWithState:&v33 objects:v42 count:16];
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
                objc_enumerationMutation(overlayContextSections);
              }

              v12 = *(*(&v33 + 1) + 8 * i);
              localizedSectionTitle = [v12 localizedSectionTitle];
              _healthFactorsSectionTitle = [(HKOverlayRoomViewController *)self _healthFactorsSectionTitle];
              v15 = [localizedSectionTitle isEqualToString:_healthFactorsSectionTitle];

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
              overlayContextItems = [v12 overlayContextItems];
              v17 = [overlayContextItems countByEnumeratingWithState:&v29 objects:v41 count:16];
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
                      objc_enumerationMutation(overlayContextItems);
                    }

                    v21 = *(*(&v29 + 1) + 8 * j);
                    if (objc_opt_respondsToSelector() & 1) != 0 && ([v21 healthFactorContext])
                    {

                      goto LABEL_27;
                    }
                  }

                  v18 = [overlayContextItems countByEnumeratingWithState:&v29 objects:v41 count:16];
                  if (v18)
                  {
                    continue;
                  }

                  break;
                }
              }

              v10 = v27;
              self = selfCopy;
            }

            v6 = v24;
            v28 = [overlayContextSections countByEnumeratingWithState:&v33 objects:v42 count:16];
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
      v5 = [sectionCopy countByEnumeratingWithState:&v37 objects:v43 count:16];
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

  factorDisplayTypes = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  if (factorDisplayTypes)
  {
    factorDisplayTypes2 = [(HKOverlayRoomViewController *)self factorDisplayTypes];
    v5 = [factorDisplayTypes2 count] != 0;
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
  applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
  sampleDateRangeController = [applicationItems sampleDateRangeController];
  [sampleDateRangeController addObserver:self];

  [(HKOverlayRoomViewController *)self _subscribeToSampleTypeUpdates];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HKOverlayRoomViewController;
  [(HKOverlayRoomViewController *)&v3 viewDidLayoutSubviews];
  [(HKOverlayRoomViewController *)self _layoutSegmentedControl];
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = HKOverlayRoomViewController;
  [(HKOverlayRoomViewController *)&v7 viewDidAppear:appear];
  hk_viewIsHidden = [(UIViewController *)self hk_viewIsHidden];
  restorationUserActivity = [(HKOverlayRoomViewController *)self restorationUserActivity];

  if (restorationUserActivity)
  {
    if (!hk_viewIsHidden)
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
  applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
  sampleDateRangeController = [applicationItems sampleDateRangeController];
  [sampleDateRangeController removeObserver:self];

  applicationItems2 = [(HKOverlayRoomViewController *)self applicationItems];
  sampleTypeUpdateController = [applicationItems2 sampleTypeUpdateController];
  primaryDisplayType = [(HKOverlayRoomViewController *)self primaryDisplayType];
  sampleType = [primaryDisplayType sampleType];
  [sampleTypeUpdateController removeObserver:self forType:sampleType];

  traitChangeRegistration = [(HKOverlayRoomViewController *)self traitChangeRegistration];
  [(HKOverlayRoomViewController *)self unregisterForTraitChanges:traitChangeRegistration];

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
  overlayContextSectionContainers = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
  v4 = [overlayContextSectionContainers count];

  if (!v4)
  {
    return;
  }

  currentSelectedContextLocation = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];

  if (currentSelectedContextLocation)
  {
    sectionedContextView = [(HKOverlayRoomViewController *)self sectionedContextView];
    overlayContextSectionContainers2 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
    currentSelectedContextLocation2 = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
LABEL_6:
    v10 = currentSelectedContextLocation2;
    overlayContextSections2 = [overlayContextSectionContainers2 objectAtIndexedSubscript:{objc_msgSend(currentSelectedContextLocation2, "containerIndex")}];
    overlayContextSections = [overlayContextSections2 overlayContextSections];
    [sectionedContextView setDisplayTypeContextSections:overlayContextSections];

    goto LABEL_7;
  }

  initialSelectedContextLocation = [(HKOverlayRoomViewController *)self initialSelectedContextLocation];

  sectionedContextView = [(HKOverlayRoomViewController *)self sectionedContextView];
  overlayContextSectionContainers2 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
  if (initialSelectedContextLocation)
  {
    currentSelectedContextLocation2 = [(HKOverlayRoomViewController *)self initialSelectedContextLocation];
    goto LABEL_6;
  }

  v10 = [overlayContextSectionContainers2 objectAtIndexedSubscript:{-[HKOverlayRoomViewController segmentedControlSelectedIndex](self, "segmentedControlSelectedIndex")}];
  overlayContextSections2 = [v10 overlayContextSections];
  [sectionedContextView setDisplayTypeContextSections:overlayContextSections2];
LABEL_7:

  if (![(HKOverlayRoomViewController *)self userHasOverriddenPreferredOverlay])
  {

    [(HKOverlayRoomViewController *)self _selectPreferredItem];
  }
}

- (void)_selectPreferredItem
{
  initialSelectedContextLocation = [(HKOverlayRoomViewController *)self initialSelectedContextLocation];
  if (initialSelectedContextLocation)
  {
    v4 = initialSelectedContextLocation;
    initialSelectedContextLocation2 = [(HKOverlayRoomViewController *)self initialSelectedContextLocation];
    currentSelectedContextLocation = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
    v7 = [initialSelectedContextLocation2 isEqual:currentSelectedContextLocation];

    if ((v7 & 1) == 0)
    {
      initialSelectedContextLocation3 = [(HKOverlayRoomViewController *)self initialSelectedContextLocation];
      [(HKOverlayRoomViewController *)self setCurrentSelectedContextLocation:initialSelectedContextLocation3];

      currentSelectedContextLocation2 = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
      -[HKOverlayRoomViewController setSegmentedControlSelectedIndex:](self, "setSegmentedControlSelectedIndex:", [currentSelectedContextLocation2 containerIndex]);

      v10 = MEMORY[0x1E696AC88];
      initialSelectedContextLocation4 = [(HKOverlayRoomViewController *)self initialSelectedContextLocation];
      itemIndex = [initialSelectedContextLocation4 itemIndex];
      initialSelectedContextLocation5 = [(HKOverlayRoomViewController *)self initialSelectedContextLocation];
      v16 = [v10 indexPathForRow:itemIndex inSection:{objc_msgSend(initialSelectedContextLocation5, "sectionIndex")}];

      sectionedContextView = [(HKOverlayRoomViewController *)self sectionedContextView];
      [sectionedContextView selectItemAtIndexPath:v16 animated:0 scrollPosition:0];

      initialSelectedContextLocation6 = [(HKOverlayRoomViewController *)self initialSelectedContextLocation];
      [(HKOverlayRoomViewController *)self _updateChartForOverlaySelection:initialSelectedContextLocation6 previousSelection:0];
    }
  }
}

- (void)_setupPrimaryDisplayType
{
  applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
  v7 = [(HKOverlayRoomViewController *)self primaryDisplayTypeWithApplicationItems:applicationItems];

  presentation = [v7 presentation];
  v5 = [presentation copyWithIsCriticalForAutoscale:1];
  v6 = [v7 copyWithPresentation:v5];
  [(HKOverlayRoomViewController *)self setPrimaryDisplayType:v6];
}

- (id)createChartOverlayViewController
{
  primaryDisplayType = [(HKOverlayRoomViewController *)self primaryDisplayType];
  hk_interactiveChartOptions = [primaryDisplayType hk_interactiveChartOptions];

  primaryDisplayType2 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    primaryDisplayType3 = [(HKOverlayRoomViewController *)self primaryDisplayType];
    baseDisplayType = [primaryDisplayType3 baseDisplayType];
    v9 = baseDisplayType;
    if (baseDisplayType)
    {
      hk_interactiveChartOptions = [baseDisplayType hk_interactiveChartOptions];
    }
  }

  if (-[HKOverlayRoomViewController conformsToProtocol:](self, "conformsToProtocol:", &unk_1F43B2A78) && (-[HKOverlayRoomViewController getChartSummaryTrendModelToModify](self, "getChartSummaryTrendModelToModify"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 selectTrendInitially], v10, (v11 & 1) != 0) || self->_controllerMode == 3)
  {
    hk_interactiveChartOptions |= 0x2000uLL;
  }

  v12 = [(HKOverlayRoomViewController *)self additionalChartOptions]| hk_interactiveChartOptions;
  prefersOpaqueLegends = [(HKOverlayRoomViewController *)self prefersOpaqueLegends];
  v14 = v12 | 0x10000;
  if (!prefersOpaqueLegends)
  {
    v14 = v12;
  }

  v29 = v14;
  v28 = [HKInteractiveChartOverlayViewController alloc];
  applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
  healthStore = [applicationItems healthStore];
  primaryDisplayType4 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  applicationItems2 = [(HKOverlayRoomViewController *)self applicationItems];
  unitController = [applicationItems2 unitController];
  applicationItems3 = [(HKOverlayRoomViewController *)self applicationItems];
  dateCache = [applicationItems3 dateCache];
  applicationItems4 = [(HKOverlayRoomViewController *)self applicationItems];
  chartDataCacheController = [applicationItems4 chartDataCacheController];
  applicationItems5 = [(HKOverlayRoomViewController *)self applicationItems];
  timeScopeController = [applicationItems5 timeScopeController];
  applicationItems6 = [(HKOverlayRoomViewController *)self applicationItems];
  sampleDateRangeController = [applicationItems6 sampleDateRangeController];
  displayDate = [(HKOverlayRoomViewController *)self displayDate];
  v23 = dateCache;
  v24 = [(HKInteractiveChartOverlayViewController *)v28 initWithHealthStore:healthStore primaryDisplayType:primaryDisplayType4 unitPreferenceController:unitController dateCache:dateCache chartDataCacheController:chartDataCacheController selectedTimeScopeController:timeScopeController sampleTypeDateRangeController:sampleDateRangeController initialXValue:displayDate currentCalendarOverride:0 options:v29];

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
  overlayContextSectionContainers = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
  v5 = [overlayContextSectionContainers countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(overlayContextSectionContainers);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if (v9)
        {
          localizedContainerTitle = [*(*(&v16 + 1) + 8 * i) localizedContainerTitle];
          if (localizedContainerTitle)
          {
            v11 = localizedContainerTitle;
            localizedContainerTitle2 = [v9 localizedContainerTitle];
            v13 = [localizedContainerTitle2 length];

            if (v13)
            {
              localizedContainerTitle3 = [v9 localizedContainerTitle];
              [v3 addObject:localizedContainerTitle3];
            }
          }
        }
      }

      v6 = [overlayContextSectionContainers countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  traitCollection = [(HKOverlayRoomViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  [(HKOverlayRoomViewController *)self _configureStackViewsUsingHorizontalSizeClass:horizontalSizeClass];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view = [(HKOverlayRoomViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  v7 = [MEMORY[0x1E696AEC0] hk_chartOverlayAccessibilityIdentifier:@"Top"];
  view2 = [(HKOverlayRoomViewController *)self view];
  [view2 setAccessibilityIdentifier:v7];

  applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
  v9 = [(HKOverlayRoomViewController *)self controllerTitleWithApplicationItems:applicationItems];
  [(HKOverlayRoomViewController *)self setTitle:v9];
}

- (void)_setupTopLevelChartView
{
  v59[9] = *MEMORY[0x1E69E9840];
  createChartOverlayViewController = [(HKOverlayRoomViewController *)self createChartOverlayViewController];
  [(HKOverlayRoomViewController *)self setChartController:createChartOverlayViewController];

  chartController = [(HKOverlayRoomViewController *)self chartController];
  [chartController addChartViewObserver:self];

  chartController2 = [(HKOverlayRoomViewController *)self chartController];
  [(HKOverlayRoomViewController *)self addChildViewController:chartController2];

  chartController3 = [(HKOverlayRoomViewController *)self chartController];
  view = [chartController3 view];

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  initialVisibleDateRange = [(HKOverlayRoomViewController *)self initialVisibleDateRange];
  chartController4 = [(HKOverlayRoomViewController *)self chartController];
  [chartController4 setInitialVisibleDateRange:initialVisibleDateRange];

  v10 = objc_alloc(MEMORY[0x1E69DD250]);
  v11 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  topLevelChartView = self->_topLevelChartView;
  self->_topLevelChartView = v11;

  [(UIView *)self->_topLevelChartView setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(HKOverlayRoomViewController *)self view];
  [view2 addSubview:self->_topLevelChartView];

  [(UIView *)self->_topLevelChartView addSubview:view];
  bottomAnchor = [view bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_topLevelChartView bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  chartControllerViewToTopLevelChartViewBottomConstraint = self->_chartControllerViewToTopLevelChartViewBottomConstraint;
  self->_chartControllerViewToTopLevelChartViewBottomConstraint = v16;

  trailingAnchor = [(UIView *)self->_topLevelChartView trailingAnchor];
  view3 = [(HKOverlayRoomViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  topLevelChartViewTrailingConstraint = self->_topLevelChartViewTrailingConstraint;
  self->_topLevelChartViewTrailingConstraint = v22;

  leadingAnchor = [(UIView *)self->_topLevelChartView leadingAnchor];
  view4 = [(HKOverlayRoomViewController *)self view];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  topLevelChartViewLeadingConstraint = self->_topLevelChartViewLeadingConstraint;
  self->_topLevelChartViewLeadingConstraint = v28;

  bottomAnchor3 = [(UIView *)self->_topLevelChartView bottomAnchor];
  bottomAnchor4 = [view bottomAnchor];
  v32 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  topLevelChartViewBottomConstraint = self->_topLevelChartViewBottomConstraint;
  self->_topLevelChartViewBottomConstraint = v32;

  heightAnchor = [view heightAnchor];
  v35 = [heightAnchor constraintGreaterThanOrEqualToConstant:100.0];
  chartControllerViewHeightConstraint = self->_chartControllerViewHeightConstraint;
  self->_chartControllerViewHeightConstraint = v35;

  v52 = MEMORY[0x1E696ACD8];
  v37 = self->_topLevelChartViewTrailingConstraint;
  v59[0] = self->_topLevelChartViewLeadingConstraint;
  v59[1] = v37;
  topAnchor = [(UIView *)self->_topLevelChartView topAnchor];
  view5 = [(HKOverlayRoomViewController *)self view];
  safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v54 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v38 = self->_topLevelChartViewBottomConstraint;
  v59[2] = v54;
  v59[3] = v38;
  v39 = view;
  leadingAnchor3 = [view leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_topLevelChartView leadingAnchor];
  v40 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v59[4] = v40;
  v53 = v39;
  trailingAnchor3 = [v39 trailingAnchor];
  trailingAnchor4 = [(UIView *)self->_topLevelChartView trailingAnchor];
  v43 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v59[5] = v43;
  topAnchor3 = [v39 topAnchor];
  topAnchor4 = [(UIView *)self->_topLevelChartView topAnchor];
  v46 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
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
  _createOverlaysWithOptionalSegmentedControllerStackView = [(HKOverlayRoomViewController *)self _createOverlaysWithOptionalSegmentedControllerStackView];
  overlaysWithOptionalSegmentController = self->_overlaysWithOptionalSegmentController;
  self->_overlaysWithOptionalSegmentController = _createOverlaysWithOptionalSegmentedControllerStackView;

  [(UIStackView *)self->_overlaysWithOptionalSegmentController setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = objc_alloc(MEMORY[0x1E69DD250]);
  v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  topLevelOverlaysWithOptionalSegmentView = self->_topLevelOverlaysWithOptionalSegmentView;
  self->_topLevelOverlaysWithOptionalSegmentView = v6;

  [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView setTranslatesAutoresizingMaskIntoConstraints:0];
  _contextViewBackgroundColor = [(HKOverlayRoomViewController *)self _contextViewBackgroundColor];
  [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView setBackgroundColor:_contextViewBackgroundColor];

  [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView addSubview:self->_overlaysWithOptionalSegmentController];
  leadingAnchor = [(UIStackView *)self->_overlaysWithOptionalSegmentController leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  overlaysWithOptionalSegmentLeadingConstraint = self->_overlaysWithOptionalSegmentLeadingConstraint;
  self->_overlaysWithOptionalSegmentLeadingConstraint = v11;

  trailingAnchor = [(UIStackView *)self->_overlaysWithOptionalSegmentController trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  overlaysWithOptionalSegmentTrailingConstraint = self->_overlaysWithOptionalSegmentTrailingConstraint;
  self->_overlaysWithOptionalSegmentTrailingConstraint = v15;

  segmentedControl = [(HKOverlayRoomViewController *)self segmentedControl];
  if (segmentedControl)
  {
    v18 = 15.0;
  }

  else
  {
    v18 = 0.0;
  }

  topAnchor = [(UIStackView *)self->_overlaysWithOptionalSegmentController topAnchor];
  safeAreaLayoutGuide = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v18];
  overlaysWithOptionalSegmentTopConstraint = self->_overlaysWithOptionalSegmentTopConstraint;
  self->_overlaysWithOptionalSegmentTopConstraint = v22;

  v24 = MEMORY[0x1E696ACD8];
  v25 = self->_overlaysWithOptionalSegmentTrailingConstraint;
  v59[0] = self->_overlaysWithOptionalSegmentLeadingConstraint;
  v59[1] = v25;
  v59[2] = self->_overlaysWithOptionalSegmentTopConstraint;
  bottomAnchor = [(UIStackView *)self->_overlaysWithOptionalSegmentController bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView bottomAnchor];
  v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v59[3] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:4];
  [v24 activateConstraints:v29];

  view = [(HKOverlayRoomViewController *)self view];
  [view addSubview:self->_topLevelOverlaysWithOptionalSegmentView];

  leadingAnchor3 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView leadingAnchor];
  view2 = [(HKOverlayRoomViewController *)self view];
  safeAreaLayoutGuide2 = [view2 safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide2 leadingAnchor];
  v35 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  topLevelOverlaysWithOptionalSegmentViewLeadingConstraint = self->_topLevelOverlaysWithOptionalSegmentViewLeadingConstraint;
  self->_topLevelOverlaysWithOptionalSegmentViewLeadingConstraint = v35;

  trailingAnchor3 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView trailingAnchor];
  view3 = [(HKOverlayRoomViewController *)self view];
  safeAreaLayoutGuide3 = [view3 safeAreaLayoutGuide];
  trailingAnchor4 = [safeAreaLayoutGuide3 trailingAnchor];
  v41 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  topLevelOverlaysWithOptionalSegmentViewTrailingConstraint = self->_topLevelOverlaysWithOptionalSegmentViewTrailingConstraint;
  self->_topLevelOverlaysWithOptionalSegmentViewTrailingConstraint = v41;

  topAnchor3 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView topAnchor];
  bottomAnchor3 = [(UIView *)self->_topLevelChartView bottomAnchor];
  v45 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3];
  topLevelOverlaysWithOptionalSegmentViewTopConstraint = self->_topLevelOverlaysWithOptionalSegmentViewTopConstraint;
  self->_topLevelOverlaysWithOptionalSegmentViewTopConstraint = v45;

  widthAnchor = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView widthAnchor];
  v48 = [widthAnchor constraintEqualToConstant:336.0];
  topLevelOverlaysWithOptionalSegmentViewWidthConstraint = self->_topLevelOverlaysWithOptionalSegmentViewWidthConstraint;
  self->_topLevelOverlaysWithOptionalSegmentViewWidthConstraint = v48;

  v50 = MEMORY[0x1E696ACD8];
  v51 = self->_topLevelOverlaysWithOptionalSegmentViewTrailingConstraint;
  v58[0] = self->_topLevelOverlaysWithOptionalSegmentViewLeadingConstraint;
  v58[1] = v51;
  v58[2] = self->_topLevelOverlaysWithOptionalSegmentViewTopConstraint;
  bottomAnchor4 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView bottomAnchor];
  view4 = [(HKOverlayRoomViewController *)self view];
  bottomAnchor5 = [view4 bottomAnchor];
  v55 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v58[3] = v55;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:4];
  [v50 activateConstraints:v56];

  v57 = [MEMORY[0x1E696AEC0] hk_chartOverlayAccessibilityIdentifier:@"Top.OverlaysWithOptionalSegment"];
  [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView setAccessibilityIdentifier:v57];
}

- (id)_createOverlaysWithOptionalSegmentedControllerStackView
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _setupSegmentedControl = [(HKOverlayRoomViewController *)self _setupSegmentedControl];
  if (_setupSegmentedControl)
  {
    [v3 addObject:_setupSegmentedControl];
  }

  _createOverlayStackView = [(HKOverlayRoomViewController *)self _createOverlayStackView];
  chartOverlayStackView = self->_chartOverlayStackView;
  self->_chartOverlayStackView = _createOverlayStackView;

  [v3 addObject:self->_chartOverlayStackView];
  v7 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v3];
  [v7 setAxis:1];

  return v7;
}

- (id)_createOverlayStackView
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  supportsShowAllFilters = [(HKOverlayRoomViewController *)self supportsShowAllFilters];
  if ([(HKOverlayRoomViewController *)self _contextItemCount]>= 1)
  {
    v5 = [[HKDisplayTypeSectionedContextView alloc] initWithStyle:[(HKOverlayRoomViewController *)self controllerMode]];
    [(HKOverlayRoomViewController *)self setSectionedContextView:v5];

    _contextViewBackgroundColor = [(HKOverlayRoomViewController *)self _contextViewBackgroundColor];
    sectionedContextView = [(HKOverlayRoomViewController *)self sectionedContextView];
    [sectionedContextView setBackgroundColor:_contextViewBackgroundColor];

    sectionedContextView2 = [(HKOverlayRoomViewController *)self sectionedContextView];
    [sectionedContextView2 setDelegate:self];

    sectionedContextView3 = [(HKOverlayRoomViewController *)self sectionedContextView];
    [(HKOverlayRoomViewController *)self _layoutNoVerticalExpansion:sectionedContextView3];

    if ([(HKOverlayRoomViewController *)self controllerMode]!= 1 || supportsShowAllFilters)
    {
      [(HKOverlayRoomViewController *)self sectionedContextView];
    }

    else
    {
      v10 = [HKMaximumSizeView alloc];
      sectionedContextView4 = [(HKOverlayRoomViewController *)self sectionedContextView];
      v12 = [(HKMaximumSizeView *)v10 initWithView:sectionedContextView4 maximumSize:*MEMORY[0x1E69DE788], *MEMORY[0x1E69DE788]];
      [(HKOverlayRoomViewController *)self setSingleContextMaximumSizeView:v12];

      [(HKOverlayRoomViewController *)self singleContextMaximumSizeView];
    }
    v13 = ;
    [v3 addObject:v13];

    if ([(HKOverlayRoomViewController *)self controllerMode]== 3)
    {
      sectionedContextView5 = [(HKOverlayRoomViewController *)self sectionedContextView];
      [sectionedContextView5 setUseHorizontalInsets:1];

      mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
      isiPad = [mEMORY[0x1E696C608] isiPad];

      if (isiPad)
      {
        sectionedContextView6 = [(HKOverlayRoomViewController *)self sectionedContextView];
        [sectionedContextView6 setUseTopInsetsWithNoHeader:0];
      }
    }
  }

  if (supportsShowAllFilters)
  {
    showAllFiltersButtonTitle = [(HKOverlayRoomViewController *)self showAllFiltersButtonTitle];
    v19 = [MEMORY[0x1E69DC738] hk_chartShowMoreDataButtonWithTitleOverride:showAllFiltersButtonTitle target:self action:sel__showAllFilters_];
    [(HKOverlayRoomViewController *)self _layoutNoVerticalExpansion:v19];
    [v3 addObject:v19];
  }

  v20 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v3];
  [v20 setLayoutMarginsRelativeArrangement:1];
  _contextViewBackgroundColor2 = [(HKOverlayRoomViewController *)self _contextViewBackgroundColor];
  [v20 setBackgroundColor:_contextViewBackgroundColor2];

  return v20;
}

- (unint64_t)_fullModeTransitionToSizeClass:(int64_t)class
{
  if (class < 2)
  {
    return 2 * ([(HKOverlayRoomViewController *)self previousHorizontalSizeClass]!= 1);
  }

  if (class == 2)
  {
    return [(HKOverlayRoomViewController *)self previousHorizontalSizeClass]!= 2;
  }

  return 0;
}

- (unint64_t)_singleModeTransitionToSizeClass:(int64_t)class
{
  if ([(HKOverlayRoomViewController *)self previousHorizontalSizeClass]&& [(HKOverlayRoomViewController *)self previousHorizontalSizeClass]== class)
  {
    return 0;
  }

  if (class == 2)
  {
    return 1;
  }

  return 2;
}

- (int64_t)_widthDesignationFromTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [collectionCopy valueForNSIntegerTrait:objc_opt_class()];

  return v4;
}

- (BOOL)_shouldStackSingleModeWithShowAllFiltersOverlayAreaVertically
{
  traitCollection = [(HKOverlayRoomViewController *)self traitCollection];
  v4 = [(HKOverlayRoomViewController *)self _widthDesignationFromTraitCollection:traitCollection];

  return (v4 - 7) < 0xFFFFFFFFFFFFFFFDLL;
}

- (void)_configureStackViewsUsingHorizontalSizeClass:(int64_t)class
{
  controllerMode = [(HKOverlayRoomViewController *)self controllerMode];
  if (controllerMode <= 1)
  {
    if (controllerMode)
    {
      if (controllerMode != 1)
      {
        goto LABEL_34;
      }

      supportsShowAllFilters = [(HKOverlayRoomViewController *)self supportsShowAllFilters];
      v7 = [(HKOverlayRoomViewController *)self _singleModeTransitionToSizeClass:class];
      if (v7 != 2)
      {
        if (v7 == 1)
        {
          [(HKOverlayRoomViewController *)self _configureMainAreaVertically];
          if (!supportsShowAllFilters)
          {
            goto LABEL_14;
          }
        }

        else if (v7 || !supportsShowAllFilters)
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
    v8 = [(HKOverlayRoomViewController *)self _singleModeTransitionToSizeClass:class];
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

  if (controllerMode != 3)
  {
    if (controllerMode != 2)
    {
      goto LABEL_34;
    }

    goto LABEL_11;
  }

  v9 = [(HKOverlayRoomViewController *)self _fullModeTransitionToSizeClass:class];
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
    if (class != 2)
    {
      goto LABEL_30;
    }

    _isInPortraitLayout = [(HKOverlayRoomViewController *)self _isInPortraitLayout];
    if ([(HKOverlayRoomViewController *)self topLevelAxis]!= _isInPortraitLayout)
    {
      if (_isInPortraitLayout)
      {
        [(HKOverlayRoomViewController *)self _configureMainAreaVertically];
      }

      else
      {
        [(HKOverlayRoomViewController *)self _configureMainAreaHorizontally];
      }
    }

    chartOverlayStackView = [(HKOverlayRoomViewController *)self chartOverlayStackView];
    axis = [chartOverlayStackView axis];

    if (axis == 1)
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

  [(HKOverlayRoomViewController *)self setPreviousHorizontalSizeClass:class];
}

- (BOOL)_isInPortraitLayout
{
  view = [(HKOverlayRoomViewController *)self view];
  [view frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  selfCopy = self;
  parentViewController = [(HKOverlayRoomViewController *)selfCopy parentViewController];

  if (parentViewController)
  {
    do
    {
      parentViewController2 = [(HKOverlayRoomViewController *)selfCopy parentViewController];

      v14ParentViewController = [(HKOverlayRoomViewController *)parentViewController2 parentViewController];

      selfCopy = parentViewController2;
    }

    while (v14ParentViewController);
  }

  else
  {
    parentViewController2 = selfCopy;
  }

  presentationController = [(HKOverlayRoomViewController *)parentViewController2 presentationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    presentationController2 = [(HKOverlayRoomViewController *)parentViewController2 presentationController];
    [presentationController2 frameOfPresentedViewInContainerView];
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
  chartController = [(HKOverlayRoomViewController *)self chartController];
  view = [chartController view];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = view;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_configureChartHeightUsingViewRatio
{
  _findMinimumSizeView = [(HKOverlayRoomViewController *)self _findMinimumSizeView];
  if (_findMinimumSizeView)
  {
    v26 = _findMinimumSizeView;
    [(HKOverlayRoomViewController *)self _edgeInsetsForWidthDesignation];
    v5 = v4;
    v7 = v6;
    view = [(HKOverlayRoomViewController *)self view];
    [view frame];
    v10 = v9 - v7 - v5;

    chartController = [(HKOverlayRoomViewController *)self chartController];
    [chartController minimumHeightForWidth:v10 chartWidthToHeightRatio:1.5];
    v13 = v12;

    v14 = 100.0;
    if (v13 >= 100.0)
    {
      v14 = v13;
    }

    [v26 setMinimumHeight:v14];
    [(NSLayoutConstraint *)self->_chartControllerViewHeightConstraint setActive:0];
    view2 = [(HKOverlayRoomViewController *)self view];
    safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
    [safeAreaLayoutGuide layoutFrame];
    v18 = v17 * 0.5;

    [(HKInteractiveChartViewController *)self->_chartController heightForChartHeight:v18];
    v20 = v19;
    chartController2 = [(HKOverlayRoomViewController *)self chartController];
    view3 = [chartController2 view];
    heightAnchor = [view3 heightAnchor];
    v24 = [heightAnchor constraintLessThanOrEqualToConstant:v20];
    chartControllerViewHeightConstraint = self->_chartControllerViewHeightConstraint;
    self->_chartControllerViewHeightConstraint = v24;

    [(NSLayoutConstraint *)self->_chartControllerViewHeightConstraint setActive:1];
    _findMinimumSizeView = v26;
  }
}

- (void)_configureChartHeightUsingDefault
{
  _findMinimumSizeView = [(HKOverlayRoomViewController *)self _findMinimumSizeView];
  if (_findMinimumSizeView)
  {
    v12 = _findMinimumSizeView;
    chartController = [(HKOverlayRoomViewController *)self chartController];
    [chartController minimumHeightForChart];
    v6 = v5;

    if (v6 < 100.0)
    {
      v6 = 100.0;
    }

    [v12 setMinimumHeight:v6];
    [(NSLayoutConstraint *)self->_chartControllerViewHeightConstraint setActive:0];
    chartController2 = [(HKOverlayRoomViewController *)self chartController];
    view = [chartController2 view];
    heightAnchor = [view heightAnchor];
    v10 = [heightAnchor constraintGreaterThanOrEqualToConstant:v6];
    chartControllerViewHeightConstraint = self->_chartControllerViewHeightConstraint;
    self->_chartControllerViewHeightConstraint = v10;

    [(NSLayoutConstraint *)self->_chartControllerViewHeightConstraint setActive:1];
    _findMinimumSizeView = v12;
  }
}

- (void)_configureMainAreaVertically
{
  v51[7] = *MEMORY[0x1E69E9840];
  chartController = [(HKOverlayRoomViewController *)self chartController];
  view = [chartController view];

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

  leadingAnchor = [(UIView *)self->_topLevelChartView leadingAnchor];
  view2 = [(HKOverlayRoomViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  topLevelChartViewLeadingConstraint = self->_topLevelChartViewLeadingConstraint;
  self->_topLevelChartViewLeadingConstraint = v14;

  trailingAnchor = [(UIView *)self->_topLevelChartView trailingAnchor];
  view3 = [(HKOverlayRoomViewController *)self view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v21 = self->_topLevelChartViewTrailingConstraint;
  self->_topLevelChartViewTrailingConstraint = v20;

  bottomAnchor = [(UIView *)self->_topLevelChartView bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v25 = self->_topLevelChartViewBottomConstraint;
  self->_topLevelChartViewBottomConstraint = v24;

  leadingAnchor3 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView leadingAnchor];
  view4 = [(HKOverlayRoomViewController *)self view];
  safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide3 leadingAnchor];
  v30 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v31 = self->_topLevelOverlaysWithOptionalSegmentViewLeadingConstraint;
  self->_topLevelOverlaysWithOptionalSegmentViewLeadingConstraint = v30;

  trailingAnchor3 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView trailingAnchor];
  view5 = [(HKOverlayRoomViewController *)self view];
  safeAreaLayoutGuide4 = [view5 safeAreaLayoutGuide];
  trailingAnchor4 = [safeAreaLayoutGuide4 trailingAnchor];
  v36 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  topLevelOverlaysWithOptionalSegmentViewTrailingConstraint = self->_topLevelOverlaysWithOptionalSegmentViewTrailingConstraint;
  self->_topLevelOverlaysWithOptionalSegmentViewTrailingConstraint = v36;

  topAnchor = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView topAnchor];
  bottomAnchor3 = [(UIView *)self->_topLevelChartView bottomAnchor];
  v40 = [topAnchor constraintEqualToAnchor:bottomAnchor3];
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

  view = [(HKOverlayRoomViewController *)self view];
  LODWORD(v7) = [view hk_isLeftToRight];

  leadingAnchor = [(UIView *)self->_topLevelChartView leadingAnchor];
  if (v7)
  {
    view2 = [(HKOverlayRoomViewController *)self view];
    safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    topLevelChartViewLeadingConstraint = self->_topLevelChartViewLeadingConstraint;
    self->_topLevelChartViewLeadingConstraint = v13;

    trailingAnchor = [(UIView *)self->_topLevelChartView trailingAnchor];
    leadingAnchor3 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView leadingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3];
    v18 = self->_topLevelChartViewTrailingConstraint;
    self->_topLevelChartViewTrailingConstraint = v17;

    leadingAnchor4 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView leadingAnchor];
    trailingAnchor2 = [(UIView *)self->_topLevelChartView trailingAnchor];
    v21 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor2];
    v22 = self->_topLevelOverlaysWithOptionalSegmentViewLeadingConstraint;
    self->_topLevelOverlaysWithOptionalSegmentViewLeadingConstraint = v21;

    trailingAnchor3 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView trailingAnchor];
    view3 = [(HKOverlayRoomViewController *)self view];
    safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
    trailingAnchor4 = [safeAreaLayoutGuide2 trailingAnchor];
    v27 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    topLevelOverlaysWithOptionalSegmentViewTrailingConstraint = self->_topLevelOverlaysWithOptionalSegmentViewTrailingConstraint;
    self->_topLevelOverlaysWithOptionalSegmentViewTrailingConstraint = v27;
  }

  else
  {
    trailingAnchor5 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView trailingAnchor];
    v30 = [leadingAnchor constraintEqualToAnchor:trailingAnchor5];
    v31 = self->_topLevelChartViewLeadingConstraint;
    self->_topLevelChartViewLeadingConstraint = v30;

    trailingAnchor6 = [(UIView *)self->_topLevelChartView trailingAnchor];
    view4 = [(HKOverlayRoomViewController *)self view];
    safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
    trailingAnchor7 = [safeAreaLayoutGuide3 trailingAnchor];
    v36 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
    v37 = self->_topLevelChartViewTrailingConstraint;
    self->_topLevelChartViewTrailingConstraint = v36;

    leadingAnchor5 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView leadingAnchor];
    view5 = [(HKOverlayRoomViewController *)self view];
    safeAreaLayoutGuide4 = [view5 safeAreaLayoutGuide];
    leadingAnchor6 = [safeAreaLayoutGuide4 leadingAnchor];
    v42 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v43 = self->_topLevelOverlaysWithOptionalSegmentViewLeadingConstraint;
    self->_topLevelOverlaysWithOptionalSegmentViewLeadingConstraint = v42;

    trailingAnchor3 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView trailingAnchor];
    view3 = [(UIView *)self->_topLevelChartView leadingAnchor];
    v44 = [trailingAnchor3 constraintEqualToAnchor:view3];
    safeAreaLayoutGuide2 = self->_topLevelOverlaysWithOptionalSegmentViewTrailingConstraint;
    self->_topLevelOverlaysWithOptionalSegmentViewTrailingConstraint = v44;
  }

  bottomAnchor = [(UIView *)self->_topLevelChartView bottomAnchor];
  view6 = [(HKOverlayRoomViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v48 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  topLevelChartViewBottomConstraint = self->_topLevelChartViewBottomConstraint;
  self->_topLevelChartViewBottomConstraint = v48;

  topAnchor = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView topAnchor];
  view7 = [(HKOverlayRoomViewController *)self view];
  topAnchor2 = [view7 topAnchor];
  v53 = [topAnchor constraintEqualToAnchor:topAnchor2];
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v6.receiver = self;
  v6.super_class = HKOverlayRoomViewController;
  [(HKOverlayRoomViewController *)&v6 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  sectionedContextView = [(HKOverlayRoomViewController *)self sectionedContextView];
  [sectionedContextView setNeedsLayout];
}

- (void)_configureOverlayAreaVertically
{
  supportsShowAllFilters = [(HKOverlayRoomViewController *)self supportsShowAllFilters];
  chartOverlayStackView = [(HKOverlayRoomViewController *)self chartOverlayStackView];
  [chartOverlayStackView setAxis:1];

  chartOverlayStackView2 = [(HKOverlayRoomViewController *)self chartOverlayStackView];
  [chartOverlayStackView2 setDistribution:0];

  chartOverlayStackView3 = [(HKOverlayRoomViewController *)self chartOverlayStackView];
  [chartOverlayStackView3 setAlignment:0];

  sectionedContextView = [(HKOverlayRoomViewController *)self sectionedContextView];
  [sectionedContextView setUseBottomInsets:!supportsShowAllFilters];

  singleContextMaximumSizeView = [(HKOverlayRoomViewController *)self singleContextMaximumSizeView];

  if (singleContextMaximumSizeView)
  {
    v9 = *MEMORY[0x1E69DE788];
    singleContextMaximumSizeView2 = [(HKOverlayRoomViewController *)self singleContextMaximumSizeView];
    [singleContextMaximumSizeView2 setMaximumSize:{v9, v9}];
  }
}

- (void)_configureOverlayAreaHorizontally
{
  chartOverlayStackView = [(HKOverlayRoomViewController *)self chartOverlayStackView];
  [chartOverlayStackView setAxis:0];

  chartOverlayStackView2 = [(HKOverlayRoomViewController *)self chartOverlayStackView];
  [chartOverlayStackView2 setDistribution:1];

  chartOverlayStackView3 = [(HKOverlayRoomViewController *)self chartOverlayStackView];
  [chartOverlayStackView3 setAlignment:3];

  sectionedContextView = [(HKOverlayRoomViewController *)self sectionedContextView];
  [sectionedContextView setUseBottomInsets:1];

  singleContextMaximumSizeView = [(HKOverlayRoomViewController *)self singleContextMaximumSizeView];

  if (singleContextMaximumSizeView)
  {
    v8 = *MEMORY[0x1E69DE788];
    singleContextMaximumSizeView2 = [(HKOverlayRoomViewController *)self singleContextMaximumSizeView];
    [singleContextMaximumSizeView2 setMaximumSize:{375.0, v8}];
  }
}

- (NSDirectionalEdgeInsets)_edgeInsetsForWidthDesignation
{
  traitCollection = [(HKOverlayRoomViewController *)self traitCollection];
  [(HKOverlayRoomViewController *)self _widthDesignationFromTraitCollection:traitCollection];

  v4 = HKCollectionViewLayoutDefaultLayoutMarginsForWidthDesignation();
  result.trailing = v7;
  result.bottom = v6;
  result.leading = v5;
  result.top = v4;
  return result;
}

- (void)_configureChartAreaMargins
{
  mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
  isiPad = [mEMORY[0x1E696C608] isiPad];

  if (isiPad)
  {
    chartController = [(HKOverlayRoomViewController *)self chartController];
    view = [chartController view];

    if (self->_controllerMode == 3)
    {
      v6 = -14.0;
    }

    else
    {
      v6 = 0.0;
    }

    [(NSLayoutConstraint *)self->_chartControllerViewToTopLevelChartViewBottomConstraint setActive:0];
    heightAnchor = [view heightAnchor];
    heightAnchor2 = [(UIView *)self->_topLevelChartView heightAnchor];
    v9 = [heightAnchor constraintEqualToAnchor:heightAnchor2 constant:v6];
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
      view = [(HKOverlayRoomViewController *)self view];
      [view safeAreaInsets];
      v14 = v13;

      chartOverlayStackView = [(HKOverlayRoomViewController *)self chartOverlayStackView];
      [chartOverlayStackView setDirectionalLayoutMargins:{0.0, 0.0, -v14, 0.0}];

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
    chartOverlayStackView2 = [(HKOverlayRoomViewController *)self chartOverlayStackView];
    [chartOverlayStackView2 setDirectionalLayoutMargins:{v5, v7, v9, v11}];
  }
}

- (void)_configureOverlaysWithOptionalSegmentHorizontalMarginsForModeFull
{
  if (self->_controllerMode == 3)
  {
    mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
    isiPad = [mEMORY[0x1E696C608] isiPad];

    if (isiPad)
    {
      [(NSLayoutConstraint *)self->_overlaysWithOptionalSegmentLeadingConstraint setActive:0];
      [(NSLayoutConstraint *)self->_overlaysWithOptionalSegmentTrailingConstraint setActive:0];
      topLevelAxis = [(HKOverlayRoomViewController *)self topLevelAxis];
      leadingAnchor = [(UIStackView *)self->_overlaysWithOptionalSegmentController leadingAnchor];
      if (topLevelAxis == 1)
      {
        view = [(HKOverlayRoomViewController *)self view];
        readableContentGuide = [view readableContentGuide];
        leadingAnchor2 = [readableContentGuide leadingAnchor];
        v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-15.0];
        overlaysWithOptionalSegmentLeadingConstraint = self->_overlaysWithOptionalSegmentLeadingConstraint;
        self->_overlaysWithOptionalSegmentLeadingConstraint = v10;

        trailingAnchor = [(UIStackView *)self->_overlaysWithOptionalSegmentController trailingAnchor];
        view2 = [(HKOverlayRoomViewController *)self view];
        readableContentGuide2 = [view2 readableContentGuide];
        trailingAnchor2 = [readableContentGuide2 trailingAnchor];
        v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:15.0];
        overlaysWithOptionalSegmentTrailingConstraint = self->_overlaysWithOptionalSegmentTrailingConstraint;
        self->_overlaysWithOptionalSegmentTrailingConstraint = v16;
      }

      else
      {
        leadingAnchor3 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView leadingAnchor];
        v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor3];
        v20 = self->_overlaysWithOptionalSegmentLeadingConstraint;
        self->_overlaysWithOptionalSegmentLeadingConstraint = v19;

        trailingAnchor = [(UIStackView *)self->_overlaysWithOptionalSegmentController trailingAnchor];
        view2 = [(UIView *)self->_topLevelOverlaysWithOptionalSegmentView trailingAnchor];
        v21 = [trailingAnchor constraintEqualToAnchor:view2];
        readableContentGuide2 = self->_overlaysWithOptionalSegmentTrailingConstraint;
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

  mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
  isiPad = [mEMORY[0x1E696C608] isiPad];

  if (!isiPad)
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

    topLevelAxis = [(HKOverlayRoomViewController *)self topLevelAxis];
    if (topLevelAxis == 1)
    {
      goto LABEL_16;
    }

    if (!topLevelAxis)
    {
      v5 = 10.5;
LABEL_16:
      [(NSLayoutConstraint *)self->_overlaysWithOptionalSegmentTopConstraint setConstant:v5];
    }
  }

  else
  {
    topLevelAxis2 = [(HKOverlayRoomViewController *)self topLevelAxis];
    if (!topLevelAxis2)
    {
      [(HKDisplayTypeSectionedContextView *)self->_sectionedContextView contentViewTopInset];
      v5 = 10.5;
      if (v10 != 0.0)
      {
        [(HKDisplayTypeSectionedContextView *)self->_sectionedContextView setContentViewTopInset:0.0];
      }

      goto LABEL_16;
    }

    if (topLevelAxis2 == 1)
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

- (void)_horizontalSizeClassChanged:(id)changed
{
  view = [(HKOverlayRoomViewController *)self view];
  [view setNeedsLayout];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = HKOverlayRoomViewController;
  [(HKOverlayRoomViewController *)&v4 viewWillLayoutSubviews];
  traitCollection = [(HKOverlayRoomViewController *)self traitCollection];
  -[HKOverlayRoomViewController _configureStackViewsUsingHorizontalSizeClass:](self, "_configureStackViewsUsingHorizontalSizeClass:", [traitCollection horizontalSizeClass]);

  [(HKOverlayRoomViewController *)self _configureChartAreaMargins];
  [(HKOverlayRoomViewController *)self _configureOverlayAreaMargins];
}

- (id)_contextViewBackgroundColor
{
  controllerMode = [(HKOverlayRoomViewController *)self controllerMode];
  if (controllerMode >= 3)
  {
    if (controllerMode == 3)
    {
      controllerMode = [MEMORY[0x1E69DC888] hk_chartOverlayBackgroundColor];
    }
  }

  else
  {
    controllerMode = [MEMORY[0x1E69DC888] clearColor];
  }

  return controllerMode;
}

- (id)_setupSegmentedControl
{
  v41[5] = *MEMORY[0x1E69E9840];
  _segmentedControlTitles = [(HKOverlayRoomViewController *)self _segmentedControlTitles];
  if ([_segmentedControlTitles count])
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCF38]) initWithItems:_segmentedControlTitles];
    [(HKOverlayRoomViewController *)self setSegmentedControl:v4];

    v5 = [MEMORY[0x1E696AEC0] hk_chartOverlayAccessibilityIdentifier:@"SegmentedControl"];
    [(HKOverlayRoomViewController *)self segmentedControl];
    v6 = v40 = _segmentedControlTitles;
    [v6 setAccessibilityIdentifier:v5];

    segmentedControl = [(HKOverlayRoomViewController *)self segmentedControl];
    [segmentedControl addTarget:self action:sel_segmentedControlValueChanged_ forControlEvents:4096];

    segmentedControl2 = [(HKOverlayRoomViewController *)self segmentedControl];
    [segmentedControl2 setSelectedSegmentIndex:0];

    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    segmentedControlContainer = self->_segmentedControlContainer;
    self->_segmentedControlContainer = v9;

    _contextViewBackgroundColor = [(HKOverlayRoomViewController *)self _contextViewBackgroundColor];
    [(UIView *)self->_segmentedControlContainer setBackgroundColor:_contextViewBackgroundColor];

    segmentedControl3 = [(HKOverlayRoomViewController *)self segmentedControl];
    LODWORD(v13) = 1148846080;
    [segmentedControl3 setContentHuggingPriority:1 forAxis:v13];

    segmentedControl4 = [(HKOverlayRoomViewController *)self segmentedControl];
    [segmentedControl4 setTranslatesAutoresizingMaskIntoConstraints:0];

    v15 = self->_segmentedControlContainer;
    segmentedControl5 = [(HKOverlayRoomViewController *)self segmentedControl];
    [(UIView *)v15 addSubview:segmentedControl5];

    v31 = MEMORY[0x1E696ACD8];
    segmentedControl6 = [(HKOverlayRoomViewController *)self segmentedControl];
    leadingAnchor = [segmentedControl6 leadingAnchor];
    leadingAnchor2 = [(UIView *)self->_segmentedControlContainer leadingAnchor];
    v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:15.0];
    v41[0] = v36;
    segmentedControl7 = [(HKOverlayRoomViewController *)self segmentedControl];
    trailingAnchor = [segmentedControl7 trailingAnchor];
    trailingAnchor2 = [(UIView *)self->_segmentedControlContainer trailingAnchor];
    v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-15.0];
    v41[1] = v32;
    segmentedControl8 = [(HKOverlayRoomViewController *)self segmentedControl];
    topAnchor = [segmentedControl8 topAnchor];
    topAnchor2 = [(UIView *)self->_segmentedControlContainer topAnchor];
    v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v41[2] = v27;
    segmentedControl9 = [(HKOverlayRoomViewController *)self segmentedControl];
    heightAnchor = [segmentedControl9 heightAnchor];
    v19 = [heightAnchor constraintGreaterThanOrEqualToConstant:28.0];
    v41[3] = v19;
    segmentedControl10 = [(HKOverlayRoomViewController *)self segmentedControl];
    bottomAnchor = [segmentedControl10 bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_segmentedControlContainer bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
    v41[4] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:5];
    [v31 activateConstraints:v24];

    _segmentedControlTitles = v40;
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
  segmentedControl = [(HKOverlayRoomViewController *)self segmentedControl];
  if (segmentedControl)
  {
    v4 = segmentedControl;
    segmentedControlContainer = [(HKOverlayRoomViewController *)self segmentedControlContainer];

    if (segmentedControlContainer)
    {
      segmentedControlContainer2 = [(HKOverlayRoomViewController *)self segmentedControlContainer];
      [segmentedControlContainer2 bounds];
      v8 = v7;

      if (v8 > 0.0)
      {
        _segmentedControlTitles = [(HKOverlayRoomViewController *)self _segmentedControlTitles];
        v10 = *MEMORY[0x1E69DB648];
        v50 = *MEMORY[0x1E69DB648];
        v11 = *MEMORY[0x1E69DB958];
        v12 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0 weight:*MEMORY[0x1E69DB958]];
        v51[0] = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];

        segmentedControlContainer3 = [(HKOverlayRoomViewController *)self segmentedControlContainer];
        [segmentedControlContainer3 bounds];
        v16 = v15 + -30.0;

        v17 = [_segmentedControlTitles count];
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v18 = _segmentedControlTitles;
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
                segmentedControl2 = [(HKOverlayRoomViewController *)self segmentedControl];
                [segmentedControl2 setApportionsSegmentWidthsByContent:1];
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

        segmentedControl3 = [(HKOverlayRoomViewController *)self segmentedControl];
        [segmentedControl3 layoutMargins];
        v30 = v29;
        segmentedControl4 = [(HKOverlayRoomViewController *)self segmentedControl];
        [segmentedControl4 layoutMargins];
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

        segmentedControl5 = [(HKOverlayRoomViewController *)self segmentedControl];
        [segmentedControl5 setTitleTextAttributes:v36 forState:0];

        segmentedControl6 = [(HKOverlayRoomViewController *)self segmentedControl];
        [segmentedControl6 setTitleTextAttributes:v38 forState:4];
      }
    }
  }
}

- (void)_setupOverlayContainers
{
  controllerMode = [(HKOverlayRoomViewController *)self controllerMode];
  applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
  chartController = [(HKOverlayRoomViewController *)self chartController];
  v7 = [(HKOverlayRoomViewController *)self contextSectionContainersForMode:controllerMode applicationItems:applicationItems overlayChartController:chartController];

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

    controllerMode = [(HKOverlayRoomViewController *)self controllerMode];
    initialSelectedContextLocation = [(HKOverlayRoomViewController *)self initialSelectedContextLocation];
    LODWORD(controllerMode) = [(HKOverlayRoomViewController *)self _shouldInstallDefaultOverlayDeselectionTimerForMode:controllerMode initialSelectedLocation:initialSelectedContextLocation];

    if (controllerMode)
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
  primaryDisplayType = [(HKOverlayRoomViewController *)self primaryDisplayType];
  isActivitySummary = [primaryDisplayType isActivitySummary];

  if (isActivitySummary)
  {
    return;
  }

  primaryDisplayType2 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  sampleType = [primaryDisplayType2 sampleType];
  identifier = [sampleType identifier];
  v8 = *MEMORY[0x1E696C6A8];

  if (identifier == v8)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    associatedBalanceMetricsTypes = [MEMORY[0x1E696C3D0] associatedBalanceMetricsTypes];
    v17 = [associatedBalanceMetricsTypes countByEnumeratingWithState:&v36 objects:v41 count:16];
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
            objc_enumerationMutation(associatedBalanceMetricsTypes);
          }

          v21 = *(*(&v36 + 1) + 8 * i);
          applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
          sampleTypeUpdateController = [applicationItems sampleTypeUpdateController];
          [sampleTypeUpdateController addObserver:self forType:v21];
        }

        v18 = [associatedBalanceMetricsTypes countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v18);
    }

    goto LABEL_22;
  }

  primaryDisplayType3 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  sampleType2 = [primaryDisplayType3 sampleType];
  identifier2 = [sampleType2 identifier];
  v12 = *MEMORY[0x1E696C6B0];

  if (identifier2 == v12)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    associatedBalanceMetricsTypes = [MEMORY[0x1E696C3D0] associatedSleepScoreTypes];
    v24 = [associatedBalanceMetricsTypes countByEnumeratingWithState:&v32 objects:v40 count:16];
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
            objc_enumerationMutation(associatedBalanceMetricsTypes);
          }

          v28 = *(*(&v32 + 1) + 8 * j);
          applicationItems2 = [(HKOverlayRoomViewController *)self applicationItems];
          sampleTypeUpdateController2 = [applicationItems2 sampleTypeUpdateController];
          [sampleTypeUpdateController2 addObserver:self forType:v28];
        }

        v25 = [associatedBalanceMetricsTypes countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v25);
    }

LABEL_22:

    return;
  }

  applicationItems3 = [(HKOverlayRoomViewController *)self applicationItems];
  sampleTypeUpdateController3 = [applicationItems3 sampleTypeUpdateController];
  primaryDisplayType4 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  sampleType3 = [primaryDisplayType4 sampleType];
  [sampleTypeUpdateController3 addObserver:self forType:sampleType3];
}

- (void)showAllFiltersWithCompletion:(id)completion
{
  completionCopy = completion;
  _findNavigationController = [(HKOverlayRoomViewController *)self _findNavigationController];
  if (_findNavigationController)
  {
    applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
    v7 = [HKOverlayRoomApplicationItems applicationItemsWithItems:applicationItems];

    v8 = objc_alloc_init(HKSelectedTimeScopeController);
    [(HKSelectedTimeScopeController *)v8 setSelectedTimeScope:[(HKOverlayRoomViewController *)self currentChartTimeScope]];
    [v7 setTimeScopeController:v8];
    displayDate = [(HKOverlayRoomViewController *)self displayDate];
    v10 = [(HKOverlayRoomViewController *)self createViewControllerForMode:3 displayDate:displayDate applicationItems:v7];

    if (v10)
    {
      showAllFiltersActivity = [(HKOverlayRoomViewController *)self showAllFiltersActivity];
      [v10 setRestorationUserActivity:showAllFiltersActivity];

      currentChartTimeScope = [v10 currentChartTimeScope];
      if (currentChartTimeScope == [(HKOverlayRoomViewController *)self currentChartTimeScope])
      {
        _currentChartEffectiveVisibleRange = [(HKOverlayRoomViewController *)self _currentChartEffectiveVisibleRange];
        [v10 setInitialVisibleDateRange:_currentChartEffectiveVisibleRange];
      }

      if ([v10 shouldSelectInitialOverlay])
      {
        [v10 setShouldSelectInitialOverlay:1];
      }

      else
      {
        currentSelectedContextLocation = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
        [v10 setShouldSelectInitialOverlay:currentSelectedContextLocation != 0];
      }

      v15 = [[HKModalNavigationController alloc] initWithRootViewController:v10];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __60__HKOverlayRoomViewController_showAllFiltersWithCompletion___block_invoke;
      v16[3] = &unk_1E81B55A8;
      v16[4] = self;
      [(HKModalNavigationController *)v15 setCompletion:v16];
      [(HKOverlayRoomViewController *)self _willPresentShowAllFilters];
      [_findNavigationController hk_presentModalCardViewController:v15 fullScreen:1 animated:1 completion:completionCopy];
    }

    else if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
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
        localizedContainerTitle = [v5 localizedContainerTitle];
        if (localizedContainerTitle)
        {
          localizedContainerTitle2 = [v5 localizedContainerTitle];
        }

        else
        {
          localizedContainerTitle2 = @"default";
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        overlayContextSections = [v5 overlayContextSections];
        v29 = [overlayContextSections countByEnumeratingWithState:&v36 objects:v45 count:16];
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
                objc_enumerationMutation(overlayContextSections);
              }

              v30 = v8;
              v9 = *(*(&v36 + 1) + 8 * v8);
              localizedSectionTitle = [v9 localizedSectionTitle];
              if (localizedSectionTitle)
              {
                localizedSectionTitle2 = [v9 localizedSectionTitle];
              }

              else
              {
                localizedSectionTitle2 = @"default";
              }

              v34 = 0u;
              v35 = 0u;
              v32 = 0u;
              v33 = 0u;
              overlayContextItems = [v9 overlayContextItems];
              v13 = [overlayContextItems countByEnumeratingWithState:&v32 objects:v44 count:16];
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
                      objc_enumerationMutation(overlayContextItems);
                    }

                    contextItemForLastUpdate = [*(*(&v32 + 1) + 8 * i) contextItemForLastUpdate];
                    accessibilityIdentifier = [contextItemForLastUpdate accessibilityIdentifier];

                    if (accessibilityIdentifier && [accessibilityIdentifier length])
                    {
                      v19 = 0x1E696A000;
                    }

                    else
                    {
                      v19 = 0x1E696A000uLL;
                      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"button_%ld", v3];

                      accessibilityIdentifier = v20;
                    }

                    v21 = [*(v19 + 3776) stringWithFormat:@"%@||%@||%@", localizedContainerTitle2, localizedSectionTitle2, accessibilityIdentifier];
                    [v31 addObject:v21];
                    ++v3;
                  }

                  v14 = [overlayContextItems countByEnumeratingWithState:&v32 objects:v44 count:16];
                }

                while (v14);
              }

              v8 = v30 + 1;
            }

            while (v30 + 1 != v29);
            v29 = [overlayContextSections countByEnumeratingWithState:&v36 objects:v45 count:16];
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

- (BOOL)selectOverlayButtonForTestingNamed:(id)named
{
  v66 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  v5 = [namedCopy componentsSeparatedByString:@"||"];
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
          localizedContainerTitle = [v10 localizedContainerTitle];
          if (localizedContainerTitle)
          {
            localizedContainerTitle2 = [v10 localizedContainerTitle];
          }

          else
          {
            localizedContainerTitle2 = @"default";
          }

          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          overlayContextSections = [v10 overlayContextSections];
          v40 = [overlayContextSections countByEnumeratingWithState:&v55 objects:v64 count:16];
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
                  objc_enumerationMutation(overlayContextSections);
                }

                v41 = v13;
                v14 = *(*(&v55 + 1) + 8 * v13);
                localizedSectionTitle = [v14 localizedSectionTitle];
                if (localizedSectionTitle)
                {
                  localizedSectionTitle2 = [v14 localizedSectionTitle];
                }

                else
                {
                  localizedSectionTitle2 = @"default";
                }

                v53 = 0u;
                v54 = 0u;
                v51 = 0u;
                v52 = 0u;
                overlayContextItems = [v14 overlayContextItems];
                v50 = [overlayContextItems countByEnumeratingWithState:&v51 objects:v63 count:16];
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
                        objc_enumerationMutation(overlayContextItems);
                      }

                      contextItemForLastUpdate = [*(*(&v51 + 1) + 8 * i) contextItemForLastUpdate];
                      accessibilityIdentifier = [contextItemForLastUpdate accessibilityIdentifier];

                      if (!accessibilityIdentifier || ![accessibilityIdentifier length])
                      {
                        v20 = [*(v12 + 3776) stringWithFormat:@"button_%ld", v7];

                        accessibilityIdentifier = v20;
                      }

                      v21 = [*(v12 + 3776) stringWithFormat:@"%@||%@||%@", localizedContainerTitle2, localizedSectionTitle2, accessibilityIdentifier];
                      if ([v21 isEqualToString:namedCopy])
                      {
                        v45 = v7;
                        v22 = [[HKOverlayContextLocation alloc] initWithContainerIndex:v6 sectionIndex:v49 itemIndex:v16];
                        [(HKOverlayRoomViewController *)self setUserHasOverriddenPreferredOverlay:1];
                        currentSelectedContextLocation = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
                        v44 = v22;
                        [(HKOverlayRoomViewController *)self _updateChartForOverlaySelection:v22 previousSelection:currentSelectedContextLocation];

                        if (v6 != [(HKOverlayRoomViewController *)self segmentedControlSelectedIndex])
                        {
                          [(HKOverlayRoomViewController *)self setSegmentedControlSelectedIndex:v6];
                          sectionedContextView = [(HKOverlayRoomViewController *)self sectionedContextView];
                          overlayContextSectionContainers = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
                          v26 = [overlayContextSectionContainers objectAtIndexedSubscript:v6];
                          [v26 overlayContextSections];
                          selfCopy = self;
                          v29 = v28 = namedCopy;
                          [sectionedContextView setDisplayTypeContextSections:v29];

                          namedCopy = v28;
                          self = selfCopy;
                          v6 = v42;
                        }

                        v30 = [MEMORY[0x1E696AC88] indexPathForRow:v16 inSection:v49];
                        sectionedContextView2 = [(HKOverlayRoomViewController *)self sectionedContextView];
                        [sectionedContextView2 selectItemAtIndexPath:v30 animated:0 scrollPosition:0];

                        v8 = 1;
                        v7 = v45;
                        v12 = 0x1E696A000;
                      }

                      ++v7;
                      ++v16;
                    }

                    v50 = [overlayContextItems countByEnumeratingWithState:&v51 objects:v63 count:16];
                  }

                  while (v50);
                }

                ++v49;
                v13 = v41 + 1;
              }

              while (v41 + 1 != v40);
              v40 = [overlayContextSections countByEnumeratingWithState:&v55 objects:v64 count:16];
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
  currentSelectedContextLocation = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
  v4 = [(HKOverlayRoomViewController *)self _selectedOverlayContextWithLocation:currentSelectedContextLocation];

  if (v4 && ([v4 contextItemForLastUpdate], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    attributedLabelTextOverride = [v5 attributedLabelTextOverride];

    if (attributedLabelTextOverride)
    {
      attributedLabelTextOverride2 = [v6 attributedLabelTextOverride];
      attributedLabelText = [attributedLabelTextOverride2 attributedLabelText];
      string = [attributedLabelText string];
    }

    else
    {
      attributedLabelTextOverride2 = objc_alloc_init(MEMORY[0x1E695DF70]);
      valueContext = [v6 valueContext];

      if (valueContext)
      {
        valueContext2 = [v6 valueContext];
        [attributedLabelTextOverride2 addObject:valueContext2];
      }

      value = [v6 value];

      if (value)
      {
        value2 = [v6 value];
        [attributedLabelTextOverride2 addObject:value2];
      }

      unit = [v6 unit];

      if (unit)
      {
        unit2 = [v6 unit];
        [attributedLabelTextOverride2 addObject:unit2];
      }

      string = [attributedLabelTextOverride2 componentsJoinedByString:@"::"];
    }
  }

  else
  {
    string = @"NoOverlayButtonValue";
  }

  return string;
}

- (void)_willPresentShowAllFilters
{
  [(HKOverlayRoomViewController *)self setShowAllFiltersVisible:1];
  [(HKOverlayRoomViewController *)self saveRestorationState];
  v3 = [_TtC8HealthUI43HKInteractiveChartInteractionAnalyticsEvent alloc];
  primaryDisplayType = [(HKOverlayRoomViewController *)self primaryDisplayType];
  v5 = [(HKInteractiveChartInteractionAnalyticsEvent *)v3 initWithShowMoreDataForDisplayType:primaryDisplayType];

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
  chartController = [(HKOverlayRoomViewController *)self chartController];
  primaryGraphViewController = [chartController primaryGraphViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    graphView = [primaryGraphViewController graphView];
    effectiveVisibleRangeCadence = [graphView effectiveVisibleRangeCadence];
  }

  else
  {
    effectiveVisibleRangeCadence = 0;
  }

  return effectiveVisibleRangeCadence;
}

- (id)_findNavigationController
{
  navigationController = [(HKOverlayRoomViewController *)self navigationController];

  if (navigationController)
  {
    navigationController2 = [(HKOverlayRoomViewController *)self navigationController];
    goto LABEL_3;
  }

  view = [(HKOverlayRoomViewController *)self view];
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

- (void)_selectContextItemAtLocation:(id)location animated:(BOOL)animated
{
  if (location)
  {
    animatedCopy = animated;
    [(HKOverlayRoomViewController *)self setCurrentSelectedContextLocation:?];
    currentSelectedContextLocation = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
    -[HKOverlayRoomViewController setSegmentedControlSelectedIndex:](self, "setSegmentedControlSelectedIndex:", [currentSelectedContextLocation containerIndex]);

    sectionedContextView = [(HKOverlayRoomViewController *)self sectionedContextView];
    _currentIndexPath = [(HKOverlayRoomViewController *)self _currentIndexPath];
    [sectionedContextView selectItemAtIndexPath:_currentIndexPath animated:animatedCopy scrollPosition:0];
  }
}

- (id)_currentIndexPath
{
  v3 = MEMORY[0x1E696AC88];
  currentSelectedContextLocation = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
  itemIndex = [currentSelectedContextLocation itemIndex];
  currentSelectedContextLocation2 = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
  v7 = [v3 indexPathForRow:itemIndex inSection:{objc_msgSend(currentSelectedContextLocation2, "sectionIndex")}];

  return v7;
}

- (void)fetchContextItemsIfNeededWithDateInterval:(id)interval completion:(id)completion
{
  intervalCopy = interval;
  completionCopy = completion;
  if ([(HKOverlayRoomViewController *)self _contextItemCount]>= 1)
  {
    v8 = dispatch_group_create();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __84__HKOverlayRoomViewController_fetchContextItemsIfNeededWithDateInterval_completion___block_invoke;
    v13[3] = &unk_1E81B5E20;
    v14 = v8;
    selfCopy = self;
    v16 = intervalCopy;
    v9 = v8;
    [(HKOverlayRoomViewController *)self _enumerateContextItemsWithBlock:v13];
    contextUpdateQueue = [(HKOverlayRoomViewController *)self contextUpdateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__HKOverlayRoomViewController_fetchContextItemsIfNeededWithDateInterval_completion___block_invoke_3;
    block[3] = &unk_1E81B5E48;
    block[4] = self;
    v12 = completionCopy;
    dispatch_group_notify(v9, contextUpdateQueue, block);
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
  overlayContextSectionContainers = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
  v3 = [overlayContextSectionContainers countByEnumeratingWithState:&v20 objects:v25 count:16];
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
          objc_enumerationMutation(overlayContextSectionContainers);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        overlayContextSections = [v8 overlayContextSections];
        v10 = [overlayContextSections countByEnumeratingWithState:&v16 objects:v24 count:16];
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
                objc_enumerationMutation(overlayContextSections);
              }

              overlayContextItems = [*(*(&v16 + 1) + 8 * j) overlayContextItems];
              v5 += [overlayContextItems count];
            }

            v11 = [overlayContextSections countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v11);
        }
      }

      v4 = [overlayContextSectionContainers countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)_findOverlayResolution:(id)resolution
{
  resolutionCopy = resolution;
  chartController = [(HKOverlayRoomViewController *)self chartController];
  primaryGraphViewController = [chartController primaryGraphViewController];
  graphView = [primaryGraphViewController graphView];

  if (graphView)
  {
    resolutionFromTraitCollectionAttributes = [graphView resolutionFromTraitCollectionAttributes];
  }

  else
  {
    resolutionFromTraitCollectionAttributes = 0;
  }

  v9 = [resolutionCopy resolutionForTimeScope:-[HKOverlayRoomViewController currentChartTimeScope](self traitResolution:{"currentChartTimeScope"), resolutionFromTraitCollectionAttributes}];

  return v9;
}

- (BOOL)_canSelectOverlayLocation:(id)location previousSelection:(id)selection
{
  locationCopy = location;
  selectionCopy = selection;
  overlayContextSectionContainers = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
  v9 = [overlayContextSectionContainers objectAtIndexedSubscript:{objc_msgSend(locationCopy, "containerIndex")}];
  overlayContextSections = [v9 overlayContextSections];
  v11 = [overlayContextSections objectAtIndexedSubscript:{objc_msgSend(locationCopy, "sectionIndex")}];

  if (selectionCopy)
  {
    overlayContextSectionContainers2 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
    v13 = [overlayContextSectionContainers2 objectAtIndexedSubscript:{objc_msgSend(selectionCopy, "containerIndex")}];
    overlayContextSections2 = [v13 overlayContextSections];
    v15 = [overlayContextSections2 objectAtIndexedSubscript:{objc_msgSend(selectionCopy, "sectionIndex")}];
  }

  else
  {
    v15 = 0;
  }

  overlayContextItems = [v11 overlayContextItems];
  v17 = [overlayContextItems objectAtIndexedSubscript:{objc_msgSend(locationCopy, "itemIndex")}];

  overlayContextItems2 = [v15 overlayContextItems];
  v19 = [overlayContextItems2 objectAtIndexedSubscript:{objc_msgSend(selectionCopy, "itemIndex")}];

  if (v17 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    contextItemForLastUpdate = [v17 contextItemForLastUpdate];
    currentChartTimeScope = [(HKOverlayRoomViewController *)self currentChartTimeScope];
    [(HKOverlayRoomViewController *)self chartController];
    v22 = v25 = v11;
    v23 = [v17 canSelectOverlayContextItem:contextItemForLastUpdate isDeselecting:v17 == v19 timeScope:currentChartTimeScope chartController:v22];

    v11 = v25;
  }

  else
  {
    v23 = 1;
  }

  return v23;
}

- (void)_updateChartForOverlaySelection:(id)selection previousSelection:(id)previousSelection animated:(BOOL)animated
{
  animatedCopy = animated;
  v94 = *MEMORY[0x1E69E9840];
  selectionCopy = selection;
  previousSelectionCopy = previousSelection;
  if (previousSelectionCopy)
  {
    overlayContextSectionContainers = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
    v10 = [overlayContextSectionContainers objectAtIndexedSubscript:{objc_msgSend(previousSelectionCopy, "containerIndex")}];
    overlayContextSections = [v10 overlayContextSections];
    v12 = [overlayContextSections objectAtIndexedSubscript:{objc_msgSend(previousSelectionCopy, "sectionIndex")}];

    overlayContextItems = [v12 overlayContextItems];
    v14 = [overlayContextItems objectAtIndexedSubscript:{objc_msgSend(previousSelectionCopy, "itemIndex")}];

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

  v86 = previousSelectionCopy;
  if (!selectionCopy)
  {
    segmentedControlSelectedIndex = [(HKOverlayRoomViewController *)self segmentedControlSelectedIndex];
    v85 = 0;
    v20 = 0;
    v89 = 0;
    v23 = 0;
    goto LABEL_17;
  }

  overlayContextSectionContainers2 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
  v16 = [overlayContextSectionContainers2 objectAtIndexedSubscript:{objc_msgSend(selectionCopy, "containerIndex")}];
  overlayContextSections2 = [v16 overlayContextSections];
  v18 = [overlayContextSections2 objectAtIndexedSubscript:{objc_msgSend(selectionCopy, "sectionIndex")}];

  overlayContextItems2 = [v18 overlayContextItems];
  v20 = [overlayContextItems2 objectAtIndexedSubscript:{objc_msgSend(selectionCopy, "itemIndex")}];

  if (objc_opt_respondsToSelector())
  {
    primaryDisplayType = [v20 baseDisplayTypeForOverlay:self->_currentChartTimeScope];
  }

  else
  {
    overlayContextSectionContainers3 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
    v25 = [overlayContextSectionContainers3 objectAtIndexedSubscript:{objc_msgSend(selectionCopy, "containerIndex")}];
    primaryDisplayType = [v25 primaryDisplayType];
  }

  presentation = [primaryDisplayType presentation];
  v27 = [presentation copyWithIsCriticalForAutoscale:1];
  v91 = [primaryDisplayType copyWithPresentation:v27];

  v23 = [objc_opt_class() conformsToProtocol:&unk_1F43EAEB0];
  if (v23)
  {
    v89 = v20;
    v28 = [v89 stackedBaseDisplayTypeForOverlay:self->_currentChartTimeScope];
    presentation2 = [v28 presentation];
    v30 = selectionCopy;
    v31 = [presentation2 copyWithIsCriticalForAutoscale:1];
    v85 = [v28 copyWithPresentation:v31];

    selectionCopy = v30;
  }

  else
  {
    v89 = 0;
    v85 = 0;
  }

  previousSelectionCopy = v86;

  segmentedControlSelectedIndex2 = [(HKOverlayRoomViewController *)self segmentedControlSelectedIndex];
  if (!v91)
  {
    segmentedControlSelectedIndex = segmentedControlSelectedIndex2;
LABEL_17:
    overlayContextSectionContainers4 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
    v34 = [overlayContextSectionContainers4 count];

    if (v34 <= segmentedControlSelectedIndex)
    {
      v91 = 0;
    }

    else
    {
      overlayContextSectionContainers5 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
      v36 = [overlayContextSectionContainers5 objectAtIndexedSubscript:segmentedControlSelectedIndex];

      primaryDisplayType2 = [v36 primaryDisplayType];
      presentation3 = [primaryDisplayType2 presentation];
      v39 = selectionCopy;
      v40 = [presentation3 copyWithIsCriticalForAutoscale:1];
      v91 = [primaryDisplayType2 copyWithPresentation:v40];

      selectionCopy = v39;
    }
  }

  if (!v14)
  {
    contextItemForLastUpdate = 0;
    if (v20)
    {
      goto LABEL_22;
    }

LABEL_30:
    v43 = 0;
    goto LABEL_31;
  }

  contextItemForLastUpdate = [v14 contextItemForLastUpdate];
  if (!v20)
  {
    goto LABEL_30;
  }

LABEL_22:
  contextItemForLastUpdate2 = [v20 contextItemForLastUpdate];
  v43 = contextItemForLastUpdate2;
  if (contextItemForLastUpdate2 && contextItemForLastUpdate && contextItemForLastUpdate2 == contextItemForLastUpdate && animatedCopy)
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
  if (animatedCopy)
  {
    chartController = [(HKOverlayRoomViewController *)self chartController];
    [chartController installGraphViewSnapshot];

    chartController2 = [(HKOverlayRoomViewController *)self chartController];
    [chartController2 removeGraphViewSnapshotAnimated:1];
  }

  if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    chartController3 = [(HKOverlayRoomViewController *)self chartController];
    [v14 overlayStateWillChange:0 contextItem:contextItemForLastUpdate chartController:chartController3];
  }

  v88 = contextItemForLastUpdate;
  if (v90 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    chartController4 = [(HKOverlayRoomViewController *)self chartController];
    [v90 stackedOverlayStateWillChange:0 contextItem:contextItemForLastUpdate chartController:chartController4];
  }

  if (v20 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    chartController5 = [(HKOverlayRoomViewController *)self chartController];
    [v20 overlayStateWillChange:1 contextItem:v43 chartController:chartController5];
  }

  if (v89 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    chartController6 = [(HKOverlayRoomViewController *)self chartController];
    [v89 stackedOverlayStateWillChange:1 contextItem:v43 chartController:chartController6];
  }

  [(HKOverlayRoomViewController *)self didChangeFromContextItem:contextItemForLastUpdate toContextItem:v43];
  [(HKOverlayRoomViewController *)self setCurrentSelectedContextLocation:selectionCopy];
  if (v23)
  {
    if (v83)
    {
      chartController7 = [(HKOverlayRoomViewController *)self chartController];
      [chartController7 clearDisplayTypeStack];

      [(HKOverlayRoomViewController *)self _restoreStackingProportions];
    }

    [(HKOverlayRoomViewController *)self _setupStackingProportionsForContext:v89];
    chartController8 = [(HKOverlayRoomViewController *)self chartController];
    [chartController8 installStackedDisplayType:v85];

    chartController9 = [(HKOverlayRoomViewController *)self chartController];
    [chartController9 updateCurrentValueViewWithVisibleRange];
  }

  else if (v83)
  {
    chartController10 = [(HKOverlayRoomViewController *)self chartController];
    [chartController10 clearDisplayTypeStack];

    [(HKOverlayRoomViewController *)self _restoreStackingProportions];
  }

  v84 = selectionCopy;
  chartController11 = [(HKOverlayRoomViewController *)self chartController];
  chartController12 = [(HKOverlayRoomViewController *)self chartController];
  v58 = [chartController11 currentDisplayTypesForStackOffset:{objc_msgSend(chartController12, "primaryDisplayTypeStackIndex")}];

  v82 = v58;
  firstObject = [v58 firstObject];
  primaryDisplayType3 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  if (firstObject == primaryDisplayType3)
  {
    v62 = 1;
  }

  else
  {
    primaryDisplayType4 = [(HKOverlayRoomViewController *)self primaryDisplayType];
    v62 = [primaryDisplayType4 isEqual:firstObject];
  }

  primaryDisplayType5 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  isActivitySummary = [primaryDisplayType5 isActivitySummary];

  v65 = v23;
  if ((isActivitySummary & 1) == 0)
  {
    v65 = v23;
    if ((v62 & 1) == 0)
    {
      if (v20 || (objc_opt_respondsToSelector() & 1) == 0 || (v65 = v23, ([v14 unselectedContextShouldUseContextBaseType] & 1) == 0))
      {
        primaryDisplayType6 = [(HKOverlayRoomViewController *)self primaryDisplayType];
        [(HKOverlayRoomViewController *)self _installBaseDisplayType:primaryDisplayType6 autoscale:v23 ^ 1u];

        v65 = 1;
      }
    }
  }

  if (v91)
  {
    primaryDisplayType7 = [(HKOverlayRoomViewController *)self primaryDisplayType];
    if (primaryDisplayType7)
    {
      v68 = primaryDisplayType7;
      primaryDisplayType8 = [(HKOverlayRoomViewController *)self primaryDisplayType];
      isActivitySummary2 = [primaryDisplayType8 isActivitySummary];

      if ((isActivitySummary2 & 1) == 0)
      {
        [(HKOverlayRoomViewController *)self _installBaseDisplayType:v91 autoscale:v23 ^ 1u];
        v65 = 1;
      }
    }
  }

  if (v91 != firstObject)
  {
    chartController13 = [(HKOverlayRoomViewController *)self chartController];
    [chartController13 updateCurrentValueViewWithVisibleRange];
  }

  if (v20)
  {
    v72 = [v20 overlayDisplayTypeForTimeScope:self->_currentChartTimeScope];
  }

  else
  {
    v72 = 0;
  }

  chartController14 = [(HKOverlayRoomViewController *)self chartController];
  [chartController14 installOverlayDisplayType:v72];

  if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    chartController15 = [(HKOverlayRoomViewController *)self chartController];
    [v14 overlayStateDidChange:0 contextItem:v88 chartController:chartController15];
  }

  if (v90 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    chartController16 = [(HKOverlayRoomViewController *)self chartController];
    [v90 stackedOverlayStateDidChange:0 contextItem:v88 chartController:chartController16];
  }

  if (v20)
  {
    if (objc_opt_respondsToSelector())
    {
      chartController17 = [(HKOverlayRoomViewController *)self chartController];
      [v20 overlayStateDidChange:1 contextItem:v43 chartController:chartController17];
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && (!v86 || ([v86 isEqual:v84] & 1) == 0))
    {
      chartController18 = [(HKOverlayRoomViewController *)self chartController];
      [v20 overlayWasExplicitlySelected:v43 chartController:chartController18];
    }
  }

  if (v89 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    chartController19 = [(HKOverlayRoomViewController *)self chartController];
    [v89 stackedOverlayStateDidChange:1 contextItem:v43 chartController:chartController19];
  }

  if (v65)
  {
    chartController20 = [(HKOverlayRoomViewController *)self chartController];
    primaryGraphViewController = [chartController20 primaryGraphViewController];
    graphView = [primaryGraphViewController graphView];
    [graphView resetAndRedraw];
  }

  selectionCopy = v84;
  previousSelectionCopy = v86;
  if (v84 | v86)
  {
    [(HKOverlayRoomViewController *)self setRestorationContextLocation:v84];
    [(HKOverlayRoomViewController *)self saveRestorationState];
  }

  contextItemForLastUpdate = v88;
LABEL_90:
}

- (id)_bottomMostDisplayType:(id)type
{
  typeCopy = type;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = typeCopy;
  v7 = v6;
  v8 = v6;
  if (isKindOfClass)
  {
    baseDisplayType = [v6 baseDisplayType];

    if (baseDisplayType)
    {
      baseDisplayType2 = [v7 baseDisplayType];
      v8 = [(HKOverlayRoomViewController *)self _bottomMostDisplayType:baseDisplayType2];
    }

    else
    {
      v8 = v7;
    }
  }

  return v8;
}

- (void)_installBaseDisplayType:(id)type autoscale:(BOOL)autoscale
{
  autoscaleCopy = autoscale;
  typeCopy = type;
  chartController = [(HKOverlayRoomViewController *)self chartController];
  [chartController clearOverlayDisplayTypeWithAutomaticAutoscale:autoscaleCopy];

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v7 addObject:typeCopy];
  chartController2 = [(HKOverlayRoomViewController *)self chartController];
  chartController3 = [(HKOverlayRoomViewController *)self chartController];
  v10 = [chartController2 currentDisplayTypesForStackOffset:{objc_msgSend(chartController3, "primaryDisplayTypeStackIndex")}];

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

  chartController4 = [(HKOverlayRoomViewController *)self chartController];
  chartController5 = [(HKOverlayRoomViewController *)self chartController];
  [chartController4 replaceCurrentDisplayTypesWithTypes:v7 stackOffset:objc_msgSend(chartController5 resetDateRange:"primaryDisplayTypeStackIndex") automaticAutoScale:{0, autoscaleCopy}];
}

- (void)_setupStackingProportionsForContext:(id)context
{
  contextCopy = context;
  if (objc_opt_respondsToSelector())
  {
    stackedHeight = [contextCopy stackedHeight];
    kind = [stackedHeight kind];
    if (kind == 1)
    {
      chartController = [(HKOverlayRoomViewController *)self chartController];
      stackedDisplayTypeHeights = [chartController stackedDisplayTypeHeights];

      if (stackedDisplayTypeHeights)
      {
        chartController2 = [(HKOverlayRoomViewController *)self chartController];
        stackedDisplayTypeHeights2 = [chartController2 stackedDisplayTypeHeights];
        v6 = [stackedDisplayTypeHeights2 arrayByAddingObject:stackedHeight];
      }

      else
      {
        chartController2 = [(HKOverlayRoomViewController *)self _evenStackedProportions];
        v6 = [chartController2 arrayByAddingObject:stackedHeight];
      }

      if (!v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (kind)
      {
        goto LABEL_6;
      }

      [stackedHeight heightValue];
      v6 = [(HKOverlayRoomViewController *)self _computeRevisedRatiosGivenRatio:?];
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    chartController3 = [(HKOverlayRoomViewController *)self chartController];
    stackedDisplayTypeHeights3 = [chartController3 stackedDisplayTypeHeights];
    [(HKOverlayRoomViewController *)self setPreviousStackHeights:stackedDisplayTypeHeights3];

    chartController4 = [(HKOverlayRoomViewController *)self chartController];
    [chartController4 setStackedDisplayTypeHeights:v6];

LABEL_6:
  }

  MEMORY[0x1EEE66BB8]();
}

- (id)_computeRevisedRatiosGivenRatio:(double)ratio
{
  chartController = [(HKOverlayRoomViewController *)self chartController];
  stackedDisplayTypeHeights = [chartController stackedDisplayTypeHeights];

  if (!stackedDisplayTypeHeights)
  {
    stackedDisplayTypeHeights = [(HKOverlayRoomViewController *)self _evenStackedProportions];
  }

  v7 = [(HKOverlayRoomViewController *)self _indexesOfLargestProportions:stackedDisplayTypeHeights];
  if ([v7 count])
  {
    v8 = [v7 count];
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([stackedDisplayTypeHeights count])
    {
      v10 = 0;
      v11 = ratio / v8;
      do
      {
        v12 = [stackedDisplayTypeHeights objectAtIndexedSubscript:v10];
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

      while (v10 < [stackedDisplayTypeHeights count]);
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
  previousStackHeights = [(HKOverlayRoomViewController *)self previousStackHeights];
  chartController = [(HKOverlayRoomViewController *)self chartController];
  [chartController setStackedDisplayTypeHeights:previousStackHeights];

  [(HKOverlayRoomViewController *)self setPreviousStackHeights:0];
}

- (id)_evenStackedProportions
{
  chartController = [(HKOverlayRoomViewController *)self chartController];
  stackOffsetCount = [chartController stackOffsetCount];

  if (stackOffsetCount)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (stackOffsetCount >= 1)
    {
      v5 = 1.0 / stackOffsetCount;
      do
      {
        v6 = [[HKInteractiveChartStackHeight alloc] initWithKind:0 heightValue:v5];
        [v4 addObject:v6];

        --stackOffsetCount;
      }

      while (stackOffsetCount);
    }
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (id)_indexesOfLargestProportions:(id)proportions
{
  proportionsCopy = proportions;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([proportionsCopy count])
  {
    v5 = 0;
    v6 = -1.0;
    while (1)
    {
      v7 = [proportionsCopy objectAtIndexedSubscript:v5];
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

      if (++v5 >= [proportionsCopy count])
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

- (BOOL)contextView:(id)view canSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [HKOverlayContextLocation alloc];
  segmentedControlSelectedIndex = [(HKOverlayRoomViewController *)self segmentedControlSelectedIndex];
  section = [pathCopy section];
  v9 = [pathCopy row];

  v10 = [(HKOverlayContextLocation *)v6 initWithContainerIndex:segmentedControlSelectedIndex sectionIndex:section itemIndex:v9];
  currentSelectedContextLocation = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
  LOBYTE(self) = [(HKOverlayRoomViewController *)self _canSelectOverlayLocation:v10 previousSelection:currentSelectedContextLocation];

  return self;
}

- (void)contextView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  [(HKOverlayRoomViewController *)self setUserHasOverriddenPreferredOverlay:1];
  currentSelectedContextLocation = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
  v6 = [HKOverlayContextLocation alloc];
  segmentedControlSelectedIndex = [(HKOverlayRoomViewController *)self segmentedControlSelectedIndex];
  section = [pathCopy section];
  v9 = [pathCopy row];

  v10 = [(HKOverlayContextLocation *)v6 initWithContainerIndex:segmentedControlSelectedIndex sectionIndex:section itemIndex:v9];
  [(HKOverlayRoomViewController *)self _updateChartForOverlaySelection:v10 previousSelection:currentSelectedContextLocation animated:1];
  [(HKOverlayRoomViewController *)self _disableDefaultOverlaySelectionIfNecessary];
}

- (void)contextView:(id)view didDeselectItemAtIndexPath:(id)path
{
  [(HKOverlayRoomViewController *)self setUserHasOverriddenPreferredOverlay:1, path];
  currentSelectedContextLocation = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
  [(HKOverlayRoomViewController *)self _updateChartForOverlaySelection:0 previousSelection:currentSelectedContextLocation animated:1];
  [(HKOverlayRoomViewController *)self _disableDefaultOverlaySelectionIfNecessary];
}

- (void)contextView:(id)view didTapOnInfoButtonAtIndex:(int64_t)index
{
  primaryDisplayType = [(HKOverlayRoomViewController *)self primaryDisplayType];
  if (primaryDisplayType)
  {
    v16 = primaryDisplayType;
    factorDisplayTypes = [(HKOverlayRoomViewController *)self factorDisplayTypes];
    if (factorDisplayTypes)
    {
      v8 = factorDisplayTypes;
      factorDisplayTypes2 = [(HKOverlayRoomViewController *)self factorDisplayTypes];
      v10 = [factorDisplayTypes2 count];

      if (v10 <= index)
      {
        return;
      }

      factorDisplayTypes3 = [(HKOverlayRoomViewController *)self factorDisplayTypes];
      v16 = [factorDisplayTypes3 objectAtIndexedSubscript:index];

      primaryDisplayType2 = [(HKOverlayRoomViewController *)self primaryDisplayType];
      applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
      healthStore = [applicationItems healthStore];
      v15 = [HKInteractiveChartInfographicFactory infographicViewControllerForDisplayType:primaryDisplayType2 factorDisplayType:v16 healthStore:healthStore];

      if (v15)
      {
        [(UIViewController *)self hk_presentModalCardViewController:v15 fullScreen:0 animated:1 completion:0];
      }
    }
  }
}

- (void)segmentedControlValueChanged:(id)changed
{
  changedCopy = changed;
  controllerMode = [(HKOverlayRoomViewController *)self controllerMode];
  selectedSegmentIndex = [changedCopy selectedSegmentIndex];

  v7 = [(HKOverlayRoomViewController *)self initialSelectedContextForMode:controllerMode containerIndex:selectedSegmentIndex];
  [(HKOverlayRoomViewController *)self setInitialSelectedContextLocation:v7];

  initialSelectedContextLocation = [(HKOverlayRoomViewController *)self initialSelectedContextLocation];

  [(HKOverlayRoomViewController *)self _unselectCurrentContext];
  [(HKOverlayRoomViewController *)self _updateContextTiles];
  if (initialSelectedContextLocation)
  {
    [(HKOverlayRoomViewController *)self _selectPreferredItem];
  }

  sectionedContextView = [(HKOverlayRoomViewController *)self sectionedContextView];
  [sectionedContextView scrollToTop];

  chartController = [(HKOverlayRoomViewController *)self chartController];
  [chartController updateCurrentValueViewWithVisibleRange];
}

- (int64_t)segmentedControlSelectedIndex
{
  segmentedControl = [(HKOverlayRoomViewController *)self segmentedControl];

  if (!segmentedControl)
  {
    return 0;
  }

  segmentedControl2 = [(HKOverlayRoomViewController *)self segmentedControl];
  selectedSegmentIndex = [segmentedControl2 selectedSegmentIndex];

  return selectedSegmentIndex;
}

- (void)setSegmentedControlSelectedIndex:(unint64_t)index
{
  segmentedControl = [(HKOverlayRoomViewController *)self segmentedControl];
  [segmentedControl setSelectedSegmentIndex:index];
}

- (void)didUpdateFromDateZoom:(int64_t)zoom toDateZoom:(int64_t)dateZoom newVisibleRange:(id)range
{
  rangeCopy = range;
  [(HKOverlayRoomViewController *)self _invalidateDefaultOverlayDeselectionTimer];
  [(HKOverlayRoomViewController *)self setCurrentChartTimeScope:dateZoom];
  v8 = [MEMORY[0x1E696AB80] hk_dateIntervalWithValueRange:rangeCopy];
  [(HKOverlayRoomViewController *)self setCurrentChartDateInterval:v8];

  objc_initWeak(&location, self);
  currentChartDateInterval = [(HKOverlayRoomViewController *)self currentChartDateInterval];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__HKOverlayRoomViewController_didUpdateFromDateZoom_toDateZoom_newVisibleRange___block_invoke;
  v10[3] = &unk_1E81B5E70;
  objc_copyWeak(v11, &location);
  v10[4] = self;
  v11[1] = dateZoom;
  [(HKOverlayRoomViewController *)self fetchContextItemsIfNeededWithDateInterval:currentChartDateInterval completion:v10];

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

- (BOOL)_currentSelectedContextValidForTimeScope:(int64_t)scope
{
  currentSelectedContextLocation = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];

  if (!currentSelectedContextLocation)
  {
    return 1;
  }

  overlayContextSectionContainers = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
  currentSelectedContextLocation2 = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
  v8 = [overlayContextSectionContainers objectAtIndexedSubscript:{objc_msgSend(currentSelectedContextLocation2, "containerIndex")}];

  overlayContextSections = [v8 overlayContextSections];
  currentSelectedContextLocation3 = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
  v11 = [overlayContextSections objectAtIndexedSubscript:{objc_msgSend(currentSelectedContextLocation3, "sectionIndex")}];

  overlayContextItems = [v11 overlayContextItems];
  currentSelectedContextLocation4 = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
  v14 = [overlayContextItems objectAtIndexedSubscript:{objc_msgSend(currentSelectedContextLocation4, "itemIndex")}];

  if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    chartController = [(HKOverlayRoomViewController *)self chartController];
    v16 = [v14 canSelectOverlayContextItem:v14 isDeselecting:0 timeScope:scope chartController:chartController];
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (void)didUpdateVisibleValueRange:(id)range changeContext:(int64_t)context
{
  rangeCopy = range;
  v7 = rangeCopy;
  if (context == 2)
  {
    v11 = rangeCopy;
    v8 = [MEMORY[0x1E696AB80] hk_dateIntervalWithValueRange:rangeCopy];
    currentChartDateInterval = [(HKOverlayRoomViewController *)self currentChartDateInterval];
    v10 = [v8 isEqual:currentChartDateInterval];

    if ((v10 & 1) == 0)
    {
      [(HKOverlayRoomViewController *)self setCurrentChartDateInterval:v8];
      [(HKOverlayRoomViewController *)self _refreshContextItemsAndUpdateChart:0];
    }
  }

  else
  {
    if (context != 1)
    {
      goto LABEL_8;
    }

    v11 = rangeCopy;
    rangeCopy = [(HKOverlayRoomViewController *)self _disableDefaultOverlaySelectionIfNecessary];
  }

  v7 = v11;
LABEL_8:

  MEMORY[0x1EEE66BB8](rangeCopy, v7);
}

- (void)didUpdateSeriesWithNewValueRange:(id)range
{
  if (range)
  {
    [(HKOverlayRoomViewController *)self _refreshUpdatedItemsWithChartUpdate:0 invalidateChartItems:0];
  }
}

- (void)sampleTypeDateRangeController:(id)controller didUpdateDateRanges:(id)ranges
{
  rangesCopy = ranges;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__HKOverlayRoomViewController_sampleTypeDateRangeController_didUpdateDateRanges___block_invoke;
  v7[3] = &unk_1E81B5AD0;
  v7[4] = self;
  v8 = rangesCopy;
  v6 = rangesCopy;
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

- (void)updateController:(id)controller didReceiveUpdateForType:(id)type samplesAdded:(id)added objectsRemoved:(id)removed recoveringFromError:(BOOL)error
{
  errorCopy = error;
  addedCopy = added;
  if ([removed count] || objc_msgSend(addedCopy, "count") || errorCopy)
  {
    [(HKOverlayRoomViewController *)self _refreshUpdatedItemsWithChartUpdate:1 invalidateChartItems:1];
  }
}

- (void)_refreshUpdatedItemsWithChartUpdate:(BOOL)update invalidateChartItems:(BOOL)items
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __88__HKOverlayRoomViewController__refreshUpdatedItemsWithChartUpdate_invalidateChartItems___block_invoke;
  v4[3] = &unk_1E81B5E98;
  itemsCopy = items;
  v4[4] = self;
  updateCopy = update;
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

- (void)restoreUserActivityState:(id)state
{
  stateCopy = state;
  userInfo = [stateCopy userInfo];
  [(HKOverlayRoomViewController *)self setShowAllFiltersActivity:stateCopy];

  v5 = [userInfo objectForKeyedSubscript:@"HKOverlayRoomViewControllerRestorationShowAllFiltersKey"];
  if (-[HKOverlayRoomViewController supportsShowAllFilters](self, "supportsShowAllFilters") && [v5 BOOLValue])
  {
    [(HKOverlayRoomViewController *)self _showAllFilters];
  }

  v6 = [userInfo objectForKeyedSubscript:@"HKOverlayRoomViewControllerRestorationModeKey"];
  v7 = v6;
  if (v6)
  {
    integerValue = [v6 integerValue];
    if (integerValue == [(HKOverlayRoomViewController *)self controllerMode])
    {
      v9 = [userInfo objectForKeyedSubscript:@"HKOverlayRoomViewControllerRestorationContextContainer"];
      v10 = [userInfo objectForKeyedSubscript:@"HKOverlayRoomViewControllerRestorationContextSection"];
      v11 = [userInfo objectForKeyedSubscript:@"HKOverlayRoomViewControllerRestorationContextItemIndex"];
      if (!v9)
      {
        goto LABEL_18;
      }

      integerValue2 = [v9 integerValue];
      if (integerValue2 < 0)
      {
        goto LABEL_18;
      }

      v13 = integerValue2;
      overlayContextSectionContainers = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
      v15 = [overlayContextSectionContainers count];

      if (v13 >= v15)
      {
        goto LABEL_18;
      }

      overlayContextSectionContainers2 = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
      v17 = [overlayContextSectionContainers2 objectAtIndexedSubscript:v13];

      if (v10)
      {
        integerValue3 = [v10 integerValue];
        if ((integerValue3 & 0x8000000000000000) == 0)
        {
          v19 = integerValue3;
          overlayContextSections = [(HKOverlayContextLocation *)v17 overlayContextSections];
          v21 = [overlayContextSections count];

          if (v19 < v21)
          {
            overlayContextSections2 = [(HKOverlayContextLocation *)v17 overlayContextSections];
            currentSelectedContextLocation = [overlayContextSections2 objectAtIndexedSubscript:v19];

            if (v11)
            {
              integerValue4 = [v11 integerValue];
              if ((integerValue4 & 0x8000000000000000) == 0)
              {
                v25 = integerValue4;
                overlayContextItems = [currentSelectedContextLocation overlayContextItems];
                v27 = [overlayContextItems count];

                if (v25 >= v27)
                {
LABEL_18:

                  goto LABEL_19;
                }

                v17 = -[HKOverlayContextLocation initWithContainerIndex:sectionIndex:itemIndex:]([HKOverlayContextLocation alloc], "initWithContainerIndex:sectionIndex:itemIndex:", [v9 integerValue], objc_msgSend(v10, "integerValue"), objc_msgSend(v11, "integerValue"));
                [(HKOverlayRoomViewController *)self _selectContextItemAtLocation:v17 animated:0];
                currentSelectedContextLocation = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
                [(HKOverlayRoomViewController *)self _updateChartForOverlaySelection:currentSelectedContextLocation previousSelection:0];
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

  restorationContextLocation = [(HKOverlayRoomViewController *)self restorationContextLocation];

  if (restorationContextLocation)
  {
    v8 = MEMORY[0x1E696AD98];
    restorationContextLocation2 = [(HKOverlayRoomViewController *)self restorationContextLocation];
    v10 = [v8 numberWithInteger:{objc_msgSend(restorationContextLocation2, "containerIndex")}];
    [v3 setObject:v10 forKeyedSubscript:@"HKOverlayRoomViewControllerRestorationContextContainer"];

    v11 = MEMORY[0x1E696AD98];
    restorationContextLocation3 = [(HKOverlayRoomViewController *)self restorationContextLocation];
    v13 = [v11 numberWithInteger:{objc_msgSend(restorationContextLocation3, "sectionIndex")}];
    [v3 setObject:v13 forKeyedSubscript:@"HKOverlayRoomViewControllerRestorationContextSection"];

    v14 = MEMORY[0x1E696AD98];
    restorationContextLocation4 = [(HKOverlayRoomViewController *)self restorationContextLocation];
    v16 = [v14 numberWithInteger:{objc_msgSend(restorationContextLocation4, "itemIndex")}];
    [v3 setObject:v16 forKeyedSubscript:@"HKOverlayRoomViewControllerRestorationContextItemIndex"];
  }

  return v3;
}

- (void)saveRestorationState
{
  restorationStateDictionary = [(HKOverlayRoomViewController *)self restorationStateDictionary];
  primaryDisplayType = [(HKOverlayRoomViewController *)self primaryDisplayType];
  applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
  healthStore = [applicationItems healthStore];
  v6 = [HKInteractiveChartViewController standardChartRestorationDictionary:primaryDisplayType healthStore:healthStore];

  v7 = [HKInteractiveChartViewController mergeRestorationDictionary:restorationStateDictionary otherDictionary:v6];
  primaryDisplayType2 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  v9 = [HKInteractiveChartViewController standardChartRestorationActivity:v7 primaryDisplayType:primaryDisplayType2];

  [HKInteractiveChartViewController saveRestorationUserActivity:v9 viewController:self];
}

- (BOOL)_shouldUpdateContextItemsForChanges:(id)changes
{
  changesCopy = changes;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__HKOverlayRoomViewController__shouldUpdateContextItemsForChanges___block_invoke;
  v7[3] = &unk_1E81B5EC0;
  v9 = &v10;
  v5 = changesCopy;
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

- (void)_enumerateContextItemsWithBlock:(id)block
{
  v37 = *MEMORY[0x1E69E9840];
  blockCopy = block;
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
        overlayContextSections = [v6 overlayContextSections];
        v8 = [overlayContextSections countByEnumeratingWithState:&v26 objects:v35 count:16];
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
                objc_enumerationMutation(overlayContextSections);
              }

              v12 = *(*(&v26 + 1) + 8 * v11);
              v22 = 0u;
              v23 = 0u;
              v24 = 0u;
              v25 = 0u;
              overlayContextItems = [v12 overlayContextItems];
              v14 = [overlayContextItems countByEnumeratingWithState:&v22 objects:v34 count:16];
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
                      objc_enumerationMutation(overlayContextItems);
                    }

                    blockCopy[2](blockCopy, *(*(&v22 + 1) + 8 * v17++));
                  }

                  while (v15 != v17);
                  v15 = [overlayContextItems countByEnumeratingWithState:&v22 objects:v34 count:16];
                }

                while (v15);
              }

              ++v11;
            }

            while (v11 != v9);
            v9 = [overlayContextSections countByEnumeratingWithState:&v26 objects:v35 count:16];
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

- (void)_refreshContextItemsAndUpdateChart:(BOOL)chart
{
  objc_initWeak(&location, self);
  currentChartDateInterval = [(HKOverlayRoomViewController *)self currentChartDateInterval];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__HKOverlayRoomViewController__refreshContextItemsAndUpdateChart___block_invoke;
  v6[3] = &unk_1E81B5F08;
  objc_copyWeak(&v7, &location);
  chartCopy = chart;
  [(HKOverlayRoomViewController *)self fetchContextItemsIfNeededWithDateInterval:currentChartDateInterval completion:v6];

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
  currentSelectedContextLocation = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];

  if (currentSelectedContextLocation)
  {
    currentSelectedContextLocation2 = [(HKOverlayRoomViewController *)self currentSelectedContextLocation];
    [(HKOverlayRoomViewController *)self _updateChartForOverlaySelection:0 previousSelection:currentSelectedContextLocation2 animated:1];
    sectionedContextView = [(HKOverlayRoomViewController *)self sectionedContextView];
    [sectionedContextView deselectAllItemsAnimated:0];
  }

  else
  {

    [(HKOverlayRoomViewController *)self _updateChartForOverlaySelection:0 previousSelection:0];
  }
}

- (id)_selectedOverlayContextWithLocation:(id)location
{
  locationCopy = location;
  v5 = locationCopy;
  if (locationCopy && (v6 = [locationCopy containerIndex], -[HKOverlayRoomViewController overlayContextSectionContainers](self, "overlayContextSectionContainers"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6 < v8))
  {
    overlayContextSectionContainers = [(HKOverlayRoomViewController *)self overlayContextSectionContainers];
    v10 = [overlayContextSectionContainers objectAtIndexedSubscript:{objc_msgSend(v5, "containerIndex")}];

    sectionIndex = [v5 sectionIndex];
    overlayContextSections = [v10 overlayContextSections];
    v13 = [overlayContextSections count];

    if (sectionIndex >= v13)
    {
      v17 = 0;
    }

    else
    {
      overlayContextSections2 = [v10 overlayContextSections];
      v15 = [overlayContextSections2 objectAtIndexedSubscript:{objc_msgSend(v5, "sectionIndex")}];

      overlayContextItems = [v15 overlayContextItems];
      v17 = [overlayContextItems objectAtIndexedSubscript:{objc_msgSend(v5, "itemIndex")}];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)_shouldInstallDefaultOverlayDeselectionTimerForMode:(int64_t)mode initialSelectedLocation:(id)location
{
  v5 = [(HKOverlayRoomViewController *)self _selectedOverlayContextWithLocation:location];
  v6 = v5;
  v7 = 0;
  if (mode != 3)
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handlePresentationControllerPresentationTransitionDidEnd_ name:*MEMORY[0x1E69DE2D8] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__handlePresentationControllerDismissalDidEnd_ name:*MEMORY[0x1E69DE2C8] object:0];
}

- (void)_unregisterPresentationControllerTransitionNotificationsForOverlayDeselectionTimer
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE2D8] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x1E69DE2C8] object:0];
}

- (void)_handlePresentationControllerPresentationTransitionDidEnd:(id)end
{
  object = [end object];
  presentedViewController = [(HKOverlayRoomViewController *)self presentedViewController];

  if (object == presentedViewController)
  {

    [(HKOverlayRoomViewController *)self _pauseDefaultOverlayDeselectionTimerIfNecessary];
  }
}

- (void)_handlePresentationControllerDismissalDidEnd:(id)end
{
  object = [end object];
  presentedViewController = [(HKOverlayRoomViewController *)self presentedViewController];

  if (object == presentedViewController)
  {

    [(HKOverlayRoomViewController *)self _restartDefaultOverlayDeselectionTimerIfNecessary];
  }
}

- (void)_pauseDefaultOverlayDeselectionTimerIfNecessary
{
  if ([(NSTimer *)self->_defaultOverlayDeselectTimer isValid])
  {
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    [(NSTimer *)self->_defaultOverlayDeselectTimer setFireDate:distantFuture];
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