@interface HKOverlayRoomViewControllerIntegratedContext
+ (id)distributionContextWithStyle:(int64_t)style namedPredicate:(id)predicate overlayChartController:(id)controller applicationItems:(id)items optionalDelegate:(id)delegate options:(int64_t)options mode:(int64_t)mode;
+ (id)quantityContextWithIdentifier:(id)identifier overlayChartController:(id)controller applicationItems:(id)items optionalDelegate:(id)delegate seriesOptions:(int64_t)options mode:(int64_t)mode;
+ (id)quantityContextWithIdentifier:(id)identifier overlayChartController:(id)controller applicationItems:(id)items optionalDelegate:(id)delegate seriesOptions:(int64_t)options mode:(int64_t)mode optionalBaseDisplayType:(id)type;
- (BOOL)_obsoleteDateRange:(id)range;
- (HKOverlayRoomViewControllerIntegratedContext)initWithOverlayChartController:(id)controller applicationItems:(id)items mode:(int64_t)mode;
- (id)_buildMonitoringSampleType;
- (id)_minMaxValueFromChartPoints:(id)points displayType:(id)type unitPreferenceController:(id)controller isUnitIncludedInValue:(BOOL *)value;
- (id)buildContextItemWithValue:(id)value unit:(id)unit valueContext:(id)context forTimeScope:(int64_t)scope isUnitIncludedInValue:(BOOL)inValue;
- (id)buildOverlayDisplayTypeForTimeScope:(int64_t)scope;
- (id)contextItemForLastUpdate;
- (id)overlayDisplayTypeForTimeScope:(int64_t)scope;
- (id)representativeDisplayType;
- (id)sampleTypeForDateRangeUpdates;
- (id)valueString:(id)string applicationItems:(id)items representativeDisplayType:(id)type isUnitIncludedInValue:(BOOL *)value;
- (void)fetchCachedDataForTimeScope:(int64_t)scope resolution:(int64_t)resolution dateInterval:(id)interval completion:(id)completion;
- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion;
@end

@implementation HKOverlayRoomViewControllerIntegratedContext

+ (id)distributionContextWithStyle:(int64_t)style namedPredicate:(id)predicate overlayChartController:(id)controller applicationItems:(id)items optionalDelegate:(id)delegate options:(int64_t)options mode:(int64_t)mode
{
  delegateCopy = delegate;
  itemsCopy = items;
  controllerCopy = controller;
  predicateCopy = predicate;
  v18 = [[HKOverlayRoomViewControllerDistributionContext alloc] initWithStyle:style namedPredicate:predicateCopy overlayChartController:controllerCopy applicationItems:itemsCopy optionalDelegate:delegateCopy options:options mode:mode];

  return v18;
}

+ (id)quantityContextWithIdentifier:(id)identifier overlayChartController:(id)controller applicationItems:(id)items optionalDelegate:(id)delegate seriesOptions:(int64_t)options mode:(int64_t)mode
{
  delegateCopy = delegate;
  itemsCopy = items;
  controllerCopy = controller;
  identifierCopy = identifier;
  v17 = [[HKOverlayRoomViewControllerQuantityContext alloc] initWithQuantityIdentifier:identifierCopy overlayChartController:controllerCopy applicationItems:itemsCopy optionalDelegate:delegateCopy seriesOptions:options mode:mode optionalBaseDisplayType:0];

  return v17;
}

+ (id)quantityContextWithIdentifier:(id)identifier overlayChartController:(id)controller applicationItems:(id)items optionalDelegate:(id)delegate seriesOptions:(int64_t)options mode:(int64_t)mode optionalBaseDisplayType:(id)type
{
  typeCopy = type;
  delegateCopy = delegate;
  itemsCopy = items;
  controllerCopy = controller;
  identifierCopy = identifier;
  v20 = [[HKOverlayRoomViewControllerQuantityContext alloc] initWithQuantityIdentifier:identifierCopy overlayChartController:controllerCopy applicationItems:itemsCopy optionalDelegate:delegateCopy seriesOptions:options mode:mode optionalBaseDisplayType:typeCopy];

  return v20;
}

- (HKOverlayRoomViewControllerIntegratedContext)initWithOverlayChartController:(id)controller applicationItems:(id)items mode:(int64_t)mode
{
  controllerCopy = controller;
  itemsCopy = items;
  v18.receiver = self;
  v18.super_class = HKOverlayRoomViewControllerIntegratedContext;
  v11 = [(HKOverlayRoomViewControllerIntegratedContext *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_overlayChartController, controller);
    objc_storeStrong(&v12->_applicationItems, items);
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    displayTypesForTimeScopes = v12->_displayTypesForTimeScopes;
    v12->_displayTypesForTimeScopes = v13;

    monitoringSampleType = v12->_monitoringSampleType;
    v12->_monitoringSampleType = 0;

    lastUpdatedContextItem = v12->_lastUpdatedContextItem;
    v12->_lastUpdatedContextItem = 0;

    v12->_overlayMode = mode;
  }

  return v12;
}

- (id)representativeDisplayType
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKOverlayRoomViewController.m" lineNumber:2973 description:@"Subclasses must provide an implementation of representativeDisplayType:"];

  return 0;
}

- (id)buildContextItemWithValue:(id)value unit:(id)unit valueContext:(id)context forTimeScope:(int64_t)scope isUnitIncludedInValue:(BOOL)inValue
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKOverlayRoomViewController.m" lineNumber:2978 description:@"Subclasses must provide an implementation of buildContextItemWithValue:unit:valueContext:forTimeScope:isUnitIncludedInValue:"];

  return 0;
}

- (id)buildOverlayDisplayTypeForTimeScope:(int64_t)scope
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKOverlayRoomViewController.m" lineNumber:2984 description:@"Subclasses must provide an implementation of buildOverlayDisplayTypeForTimeScope:"];

  return 0;
}

- (void)fetchCachedDataForTimeScope:(int64_t)scope resolution:(int64_t)resolution dateInterval:(id)interval completion:(id)completion
{
  v8 = MEMORY[0x1E696AAA8];
  completionCopy = completion;
  currentHandler = [v8 currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKOverlayRoomViewController.m" lineNumber:2992 description:@"Subclasses must provide an implementation of fetchCachedDataForTimeScope:resolution:dateInterval:completion:"];

  (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 0, 0);
}

- (id)valueString:(id)string applicationItems:(id)items representativeDisplayType:(id)type isUnitIncludedInValue:(BOOL *)value
{
  typeCopy = type;
  stringCopy = string;
  unitController = [items unitController];
  v13 = [(HKOverlayRoomViewControllerIntegratedContext *)self _minMaxValueFromChartPoints:stringCopy displayType:typeCopy unitPreferenceController:unitController isUnitIncludedInValue:value];

  return v13;
}

- (id)sampleTypeForDateRangeUpdates
{
  monitoringSampleType = [(HKOverlayRoomViewControllerIntegratedContext *)self monitoringSampleType];

  if (!monitoringSampleType)
  {
    _buildMonitoringSampleType = [(HKOverlayRoomViewControllerIntegratedContext *)self _buildMonitoringSampleType];
    [(HKOverlayRoomViewControllerIntegratedContext *)self setMonitoringSampleType:_buildMonitoringSampleType];
  }

  return [(HKOverlayRoomViewControllerIntegratedContext *)self monitoringSampleType];
}

- (id)overlayDisplayTypeForTimeScope:(int64_t)scope
{
  displayTypesForTimeScopes = [(HKOverlayRoomViewControllerIntegratedContext *)self displayTypesForTimeScopes];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:scope];
  v7 = [displayTypesForTimeScopes objectForKey:v6];

  if (!v7)
  {
    v7 = [(HKOverlayRoomViewControllerIntegratedContext *)self buildOverlayDisplayTypeForTimeScope:scope];
    displayTypesForTimeScopes2 = [(HKOverlayRoomViewControllerIntegratedContext *)self displayTypesForTimeScopes];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:scope];
    [displayTypesForTimeScopes2 setObject:v7 forKeyedSubscript:v9];
  }

  return v7;
}

- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion
{
  intervalCopy = interval;
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __131__HKOverlayRoomViewControllerIntegratedContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
  v15[3] = &unk_1E81B5FA8;
  v15[4] = self;
  v16 = intervalCopy;
  v17 = completionCopy;
  scopeCopy = scope;
  v13 = completionCopy;
  v14 = intervalCopy;
  [(HKOverlayRoomViewControllerIntegratedContext *)self fetchCachedDataForTimeScope:scope resolution:resolution dateInterval:v14 completion:v15];
}

void __131__HKOverlayRoomViewControllerIntegratedContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3)
  {
    if (![*(a1 + 32) _obsoleteDateRange:*(a1 + 40)])
    {
      v7 = [*(a1 + 32) representativeDisplayType];
      v28 = 0;
      v8 = *(a1 + 32);
      v9 = [v8 applicationItems];
      v10 = [v8 valueString:v5 applicationItems:v9 representativeDisplayType:v7 isUnitIncludedInValue:&v28];

      v11 = *(a1 + 32);
      v12 = [v11 applicationItems];
      v13 = [v11 unitString:v5 applicationItems:v12 representativeDisplayType:v7];

      v14 = *(a1 + 32);
      v15 = [v14 applicationItems];
      v16 = [v14 valueContextString:v5 applicationItems:v15 representativeDisplayType:v7];

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __131__HKOverlayRoomViewControllerIntegratedContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke_2;
      block[3] = &unk_1E81B5F80;
      block[4] = *(a1 + 32);
      v22 = v10;
      v23 = v13;
      v24 = v16;
      v17 = *(a1 + 48);
      v26 = *(a1 + 56);
      v27 = v28;
      v25 = v17;
      v18 = v16;
      v19 = v13;
      v20 = v10;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      goto LABEL_7;
    }

    v6 = *(*(a1 + 48) + 16);
  }

  else
  {
    v6 = *(*(a1 + 48) + 16);
  }

  v6();
LABEL_7:
}

uint64_t __131__HKOverlayRoomViewControllerIntegratedContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) buildContextItemWithValue:*(a1 + 40) unit:*(a1 + 48) valueContext:*(a1 + 56) forTimeScope:*(a1 + 72) isUnitIncludedInValue:*(a1 + 80)];
  [*(a1 + 32) setLastUpdatedContextItem:v2];

  v3 = *(*(a1 + 64) + 16);

  return v3();
}

- (BOOL)_obsoleteDateRange:(id)range
{
  rangeCopy = range;
  overlayChartController = [(HKOverlayRoomViewControllerIntegratedContext *)self overlayChartController];
  primaryGraphViewController = [overlayChartController primaryGraphViewController];
  graphView = [primaryGraphViewController graphView];
  effectiveVisibleRangeActive = [graphView effectiveVisibleRangeActive];

  startDate = [effectiveVisibleRangeActive startDate];
  endDate = [effectiveVisibleRangeActive endDate];
  startDate2 = [rangeCopy startDate];
  endDate2 = [rangeCopy endDate];

  v13 = [startDate compare:startDate2] || objc_msgSend(endDate, "compare:", endDate2);
  return v13;
}

- (id)contextItemForLastUpdate
{
  lastUpdatedContextItem = [(HKOverlayRoomViewControllerIntegratedContext *)self lastUpdatedContextItem];

  if (!lastUpdatedContextItem)
  {
    applicationItems = [(HKOverlayRoomViewControllerIntegratedContext *)self applicationItems];
    timeScopeController = [applicationItems timeScopeController];
    selectedTimeScope = [timeScopeController selectedTimeScope];

    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v8 = [v7 localizedStringForKey:@"NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v9 = [(HKOverlayRoomViewControllerIntegratedContext *)self buildContextItemWithValue:v8 unit:0 valueContext:0 forTimeScope:selectedTimeScope isUnitIncludedInValue:0];
    [(HKOverlayRoomViewControllerIntegratedContext *)self setLastUpdatedContextItem:v9];
  }

  return [(HKOverlayRoomViewControllerIntegratedContext *)self lastUpdatedContextItem];
}

- (id)_buildMonitoringSampleType
{
  representativeDisplayType = [(HKOverlayRoomViewControllerIntegratedContext *)self representativeDisplayType];
  objectType = [representativeDisplayType objectType];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objectType;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_minMaxValueFromChartPoints:(id)points displayType:(id)type unitPreferenceController:(id)controller isUnitIncludedInValue:(BOOL *)value
{
  v44 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  typeCopy = type;
  controllerCopy = controller;
  v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v12 = [v11 localizedStringForKey:@"NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  if (!pointsCopy || ![pointsCopy count])
  {
    v27 = v12;
    goto LABEL_26;
  }

  v34 = v12;
  v36 = controllerCopy;
  v37 = typeCopy;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v13 = pointsCopy;
  v14 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (!v14)
  {
    v16 = 0;
    v17 = 0;
    goto LABEL_20;
  }

  v15 = v14;
  v16 = 0;
  v17 = 0;
  v18 = *v40;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v40 != v18)
      {
        objc_enumerationMutation(v13);
      }

      v20 = *(*(&v39 + 1) + 8 * i);
      if (!v16 || ([*(*(&v39 + 1) + 8 * i) minYValue], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "compare:", v16), v21, v22 == -1))
      {
        minYValue = [v20 minYValue];

        v16 = minYValue;
        if (v17)
        {
LABEL_13:
          maxYValue = [v20 maxYValue];
          v25 = [maxYValue compare:v17];

          if (v25 != 1)
          {
            continue;
          }
        }
      }

      else if (v17)
      {
        goto LABEL_13;
      }

      maxYValue2 = [v20 maxYValue];

      v17 = maxYValue2;
    }

    v15 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
  }

  while (v15);
LABEL_20:

  v28 = objc_alloc_init(HKInteractiveChartNumberRangeFormatter);
  v29 = v28;
  if (value)
  {
    *value = 1;
  }

  controllerCopy = v36;
  typeCopy = v37;
  v30 = [(HKInteractiveChartNumberRangeFormatter *)v28 stringForMinimumValue:v16 maximumValue:v17 displayType:v37 unitPreferenceController:v36, v34];
  v31 = v30;
  v12 = v35;
  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = v35;
  }

  v27 = v32;

LABEL_26:

  return v27;
}

@end