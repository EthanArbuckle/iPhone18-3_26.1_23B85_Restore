@interface HKOverlayRoomViewControllerIntegratedContext
+ (id)distributionContextWithStyle:(int64_t)a3 namedPredicate:(id)a4 overlayChartController:(id)a5 applicationItems:(id)a6 optionalDelegate:(id)a7 options:(int64_t)a8 mode:(int64_t)a9;
+ (id)quantityContextWithIdentifier:(id)a3 overlayChartController:(id)a4 applicationItems:(id)a5 optionalDelegate:(id)a6 seriesOptions:(int64_t)a7 mode:(int64_t)a8;
+ (id)quantityContextWithIdentifier:(id)a3 overlayChartController:(id)a4 applicationItems:(id)a5 optionalDelegate:(id)a6 seriesOptions:(int64_t)a7 mode:(int64_t)a8 optionalBaseDisplayType:(id)a9;
- (BOOL)_obsoleteDateRange:(id)a3;
- (HKOverlayRoomViewControllerIntegratedContext)initWithOverlayChartController:(id)a3 applicationItems:(id)a4 mode:(int64_t)a5;
- (id)_buildMonitoringSampleType;
- (id)_minMaxValueFromChartPoints:(id)a3 displayType:(id)a4 unitPreferenceController:(id)a5 isUnitIncludedInValue:(BOOL *)a6;
- (id)buildContextItemWithValue:(id)a3 unit:(id)a4 valueContext:(id)a5 forTimeScope:(int64_t)a6 isUnitIncludedInValue:(BOOL)a7;
- (id)buildOverlayDisplayTypeForTimeScope:(int64_t)a3;
- (id)contextItemForLastUpdate;
- (id)overlayDisplayTypeForTimeScope:(int64_t)a3;
- (id)representativeDisplayType;
- (id)sampleTypeForDateRangeUpdates;
- (id)valueString:(id)a3 applicationItems:(id)a4 representativeDisplayType:(id)a5 isUnitIncludedInValue:(BOOL *)a6;
- (void)fetchCachedDataForTimeScope:(int64_t)a3 resolution:(int64_t)a4 dateInterval:(id)a5 completion:(id)a6;
- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7;
@end

@implementation HKOverlayRoomViewControllerIntegratedContext

+ (id)distributionContextWithStyle:(int64_t)a3 namedPredicate:(id)a4 overlayChartController:(id)a5 applicationItems:(id)a6 optionalDelegate:(id)a7 options:(int64_t)a8 mode:(int64_t)a9
{
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = [[HKOverlayRoomViewControllerDistributionContext alloc] initWithStyle:a3 namedPredicate:v17 overlayChartController:v16 applicationItems:v15 optionalDelegate:v14 options:a8 mode:a9];

  return v18;
}

+ (id)quantityContextWithIdentifier:(id)a3 overlayChartController:(id)a4 applicationItems:(id)a5 optionalDelegate:(id)a6 seriesOptions:(int64_t)a7 mode:(int64_t)a8
{
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[HKOverlayRoomViewControllerQuantityContext alloc] initWithQuantityIdentifier:v16 overlayChartController:v15 applicationItems:v14 optionalDelegate:v13 seriesOptions:a7 mode:a8 optionalBaseDisplayType:0];

  return v17;
}

+ (id)quantityContextWithIdentifier:(id)a3 overlayChartController:(id)a4 applicationItems:(id)a5 optionalDelegate:(id)a6 seriesOptions:(int64_t)a7 mode:(int64_t)a8 optionalBaseDisplayType:(id)a9
{
  v15 = a9;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[HKOverlayRoomViewControllerQuantityContext alloc] initWithQuantityIdentifier:v19 overlayChartController:v18 applicationItems:v17 optionalDelegate:v16 seriesOptions:a7 mode:a8 optionalBaseDisplayType:v15];

  return v20;
}

- (HKOverlayRoomViewControllerIntegratedContext)initWithOverlayChartController:(id)a3 applicationItems:(id)a4 mode:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = HKOverlayRoomViewControllerIntegratedContext;
  v11 = [(HKOverlayRoomViewControllerIntegratedContext *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_overlayChartController, a3);
    objc_storeStrong(&v12->_applicationItems, a4);
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    displayTypesForTimeScopes = v12->_displayTypesForTimeScopes;
    v12->_displayTypesForTimeScopes = v13;

    monitoringSampleType = v12->_monitoringSampleType;
    v12->_monitoringSampleType = 0;

    lastUpdatedContextItem = v12->_lastUpdatedContextItem;
    v12->_lastUpdatedContextItem = 0;

    v12->_overlayMode = a5;
  }

  return v12;
}

- (id)representativeDisplayType
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HKOverlayRoomViewController.m" lineNumber:2973 description:@"Subclasses must provide an implementation of representativeDisplayType:"];

  return 0;
}

- (id)buildContextItemWithValue:(id)a3 unit:(id)a4 valueContext:(id)a5 forTimeScope:(int64_t)a6 isUnitIncludedInValue:(BOOL)a7
{
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"HKOverlayRoomViewController.m" lineNumber:2978 description:@"Subclasses must provide an implementation of buildContextItemWithValue:unit:valueContext:forTimeScope:isUnitIncludedInValue:"];

  return 0;
}

- (id)buildOverlayDisplayTypeForTimeScope:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HKOverlayRoomViewController.m" lineNumber:2984 description:@"Subclasses must provide an implementation of buildOverlayDisplayTypeForTimeScope:"];

  return 0;
}

- (void)fetchCachedDataForTimeScope:(int64_t)a3 resolution:(int64_t)a4 dateInterval:(id)a5 completion:(id)a6
{
  v8 = MEMORY[0x1E696AAA8];
  v10 = a6;
  v9 = [v8 currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"HKOverlayRoomViewController.m" lineNumber:2992 description:@"Subclasses must provide an implementation of fetchCachedDataForTimeScope:resolution:dateInterval:completion:"];

  (*(v10 + 2))(v10, MEMORY[0x1E695E0F0], 0, 0);
}

- (id)valueString:(id)a3 applicationItems:(id)a4 representativeDisplayType:(id)a5 isUnitIncludedInValue:(BOOL *)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [a4 unitController];
  v13 = [(HKOverlayRoomViewControllerIntegratedContext *)self _minMaxValueFromChartPoints:v11 displayType:v10 unitPreferenceController:v12 isUnitIncludedInValue:a6];

  return v13;
}

- (id)sampleTypeForDateRangeUpdates
{
  v3 = [(HKOverlayRoomViewControllerIntegratedContext *)self monitoringSampleType];

  if (!v3)
  {
    v4 = [(HKOverlayRoomViewControllerIntegratedContext *)self _buildMonitoringSampleType];
    [(HKOverlayRoomViewControllerIntegratedContext *)self setMonitoringSampleType:v4];
  }

  return [(HKOverlayRoomViewControllerIntegratedContext *)self monitoringSampleType];
}

- (id)overlayDisplayTypeForTimeScope:(int64_t)a3
{
  v5 = [(HKOverlayRoomViewControllerIntegratedContext *)self displayTypesForTimeScopes];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [v5 objectForKey:v6];

  if (!v7)
  {
    v7 = [(HKOverlayRoomViewControllerIntegratedContext *)self buildOverlayDisplayTypeForTimeScope:a3];
    v8 = [(HKOverlayRoomViewControllerIntegratedContext *)self displayTypesForTimeScopes];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v8 setObject:v7 forKeyedSubscript:v9];
  }

  return v7;
}

- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a7;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __131__HKOverlayRoomViewControllerIntegratedContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
  v15[3] = &unk_1E81B5FA8;
  v15[4] = self;
  v16 = v11;
  v17 = v12;
  v18 = a5;
  v13 = v12;
  v14 = v11;
  [(HKOverlayRoomViewControllerIntegratedContext *)self fetchCachedDataForTimeScope:a5 resolution:a6 dateInterval:v14 completion:v15];
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

- (BOOL)_obsoleteDateRange:(id)a3
{
  v4 = a3;
  v5 = [(HKOverlayRoomViewControllerIntegratedContext *)self overlayChartController];
  v6 = [v5 primaryGraphViewController];
  v7 = [v6 graphView];
  v8 = [v7 effectiveVisibleRangeActive];

  v9 = [v8 startDate];
  v10 = [v8 endDate];
  v11 = [v4 startDate];
  v12 = [v4 endDate];

  v13 = [v9 compare:v11] || objc_msgSend(v10, "compare:", v12);
  return v13;
}

- (id)contextItemForLastUpdate
{
  v3 = [(HKOverlayRoomViewControllerIntegratedContext *)self lastUpdatedContextItem];

  if (!v3)
  {
    v4 = [(HKOverlayRoomViewControllerIntegratedContext *)self applicationItems];
    v5 = [v4 timeScopeController];
    v6 = [v5 selectedTimeScope];

    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v8 = [v7 localizedStringForKey:@"NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v9 = [(HKOverlayRoomViewControllerIntegratedContext *)self buildContextItemWithValue:v8 unit:0 valueContext:0 forTimeScope:v6 isUnitIncludedInValue:0];
    [(HKOverlayRoomViewControllerIntegratedContext *)self setLastUpdatedContextItem:v9];
  }

  return [(HKOverlayRoomViewControllerIntegratedContext *)self lastUpdatedContextItem];
}

- (id)_buildMonitoringSampleType
{
  v2 = [(HKOverlayRoomViewControllerIntegratedContext *)self representativeDisplayType];
  v3 = [v2 objectType];
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

- (id)_minMaxValueFromChartPoints:(id)a3 displayType:(id)a4 unitPreferenceController:(id)a5 isUnitIncludedInValue:(BOOL *)a6
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v12 = [v11 localizedStringForKey:@"NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  if (!v8 || ![v8 count])
  {
    v27 = v12;
    goto LABEL_26;
  }

  v34 = v12;
  v36 = v10;
  v37 = v9;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v13 = v8;
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
        v23 = [v20 minYValue];

        v16 = v23;
        if (v17)
        {
LABEL_13:
          v24 = [v20 maxYValue];
          v25 = [v24 compare:v17];

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

      v26 = [v20 maxYValue];

      v17 = v26;
    }

    v15 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
  }

  while (v15);
LABEL_20:

  v28 = objc_alloc_init(HKInteractiveChartNumberRangeFormatter);
  v29 = v28;
  if (a6)
  {
    *a6 = 1;
  }

  v10 = v36;
  v9 = v37;
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