@interface HKOverlayRoomViewControllerLastQuantityContext
- (BOOL)isEqual:(id)a3;
- (HKOverlayRoomViewControllerLastQuantityContext)initWithOverlayChartController:(id)a3 applicationItems:(id)a4 mode:(int64_t)a5 attenuated:(BOOL)a6;
- (id)_buildContextWithTime:(id)a3 value:(id)a4 isUnitIncludedInValue:(BOOL)a5;
- (id)_buildFullTitle:(id)a3;
- (id)_buildLastQuantityDisplayType;
- (id)_buildLastValueDataSourceWithUnitController:(id)a3 displayType:(id)a4 healthStore:(id)a5;
- (id)_colorForDisplayType:(id)a3;
- (id)_stringValueFromQuantity:(id)a3 unit:(id)a4 isUnitIncludedInValue:(BOOL *)a5;
- (id)sampleTypeForDateRangeUpdates;
- (void)invalidateContextItem;
- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7;
@end

@implementation HKOverlayRoomViewControllerLastQuantityContext

- (HKOverlayRoomViewControllerLastQuantityContext)initWithOverlayChartController:(id)a3 applicationItems:(id)a4 mode:(int64_t)a5 attenuated:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v27.receiver = self;
  v27.super_class = HKOverlayRoomViewControllerLastQuantityContext;
  v13 = [(HKOverlayRoomViewControllerLastQuantityContext *)&v27 init];
  v14 = v13;
  if (v13)
  {
    v13->_attenuated = a6;
    objc_storeStrong(&v13->_overlayChartController, a3);
    objc_storeStrong(&v14->_applicationItems, a4);
    v15 = [v12 unitController];
    v16 = [v11 primaryDisplayType];
    v17 = [v12 healthStore];
    v18 = [(HKOverlayRoomViewControllerLastQuantityContext *)v14 _buildLastValueDataSourceWithUnitController:v15 displayType:v16 healthStore:v17];
    cacheDataSource = v14->_cacheDataSource;
    v14->_cacheDataSource = v18;

    v14->_overlayMode = a5;
    v20 = [(HKOverlayRoomViewControllerLastQuantityContext *)v14 _buildLastQuantityDisplayType];
    overlayDisplayType = v14->_overlayDisplayType;
    v14->_overlayDisplayType = v20;

    v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v23 = [v22 localizedStringForKey:@"NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v24 = [(HKOverlayRoomViewControllerLastQuantityContext *)v14 _buildContextWithTime:&stru_1F42FFBE0 value:v23 isUnitIncludedInValue:0];
    lastUpdatedContextItem = v14->_lastUpdatedContextItem;
    v14->_lastUpdatedContextItem = v24;
  }

  return v14;
}

- (id)sampleTypeForDateRangeUpdates
{
  v2 = [(HKOverlayRoomViewControllerLastQuantityContext *)self overlayChartController];
  v3 = [v2 primaryDisplayType];
  v4 = [v3 objectType];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7
{
  v8 = a7;
  v9 = [(HKOverlayRoomViewControllerLastQuantityContext *)self sampleTypeForDateRangeUpdates];
  v10 = [(HKOverlayRoomViewControllerLastQuantityContext *)self applicationItems];
  v11 = [v10 healthStore];

  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __133__HKOverlayRoomViewControllerLastQuantityContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
  v21 = &unk_1E81B5FF8;
  v12 = v8;
  v22 = self;
  v23 = v12;
  v13 = _Block_copy(&v18);
  if (self->_attenuated && ([v9 identifier], v14 = objc_claimAutoreleasedReturnValue(), v15 = *MEMORY[0x1E696BD08], v14, v14 == v15))
  {
    v16 = [MEMORY[0x1E696C1C0] queryForMostRecentAttenuatedEAEQuantityWithHealthStore:v11 completion:v13];
  }

  else
  {
    v16 = [MEMORY[0x1E696C1C0] queryForMostRecentQuantityOfType:v9 healthStore:v11 predicate:0 completion:{v13, v18, v19, v20, v21}];
  }

  v17 = v16;
  [v11 executeQuery:v16];
}

void __133__HKOverlayRoomViewControllerLastQuantityContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (a4)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __133__HKOverlayRoomViewControllerLastQuantityContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke_2;
    v12[3] = &unk_1E81B5FD0;
    v10 = v8;
    v11 = *(a1 + 32);
    v13 = v10;
    v14 = v11;
    v15 = v7;
    v16 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], v12);
  }
}

void __133__HKOverlayRoomViewControllerLastQuantityContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) endDate];
  v3 = [*(a1 + 40) applicationItems];
  v4 = [v3 dateCache];
  v5 = HKMostRecentSampleEndDateText(v2, v4, 0);

  v6 = [*(a1 + 40) applicationItems];
  v7 = [v6 unitController];
  v8 = [*(a1 + 40) overlayDisplayType];
  v9 = [v7 unitForDisplayType:v8];

  v12 = 0;
  v10 = [*(a1 + 40) _stringValueFromQuantity:*(a1 + 48) unit:v9 isUnitIncludedInValue:&v12];
  v11 = [*(a1 + 40) _buildContextWithTime:v5 value:v10 isUnitIncludedInValue:v12];
  [*(a1 + 40) setLastUpdatedContextItem:v11];

  (*(*(a1 + 56) + 16))();
}

- (void)invalidateContextItem
{
  v3 = [(HKOverlayRoomViewControllerLastQuantityContext *)self applicationItems];
  v4 = [v3 unitController];
  v5 = [(HKOverlayRoomViewControllerLastQuantityContext *)self overlayChartController];
  v6 = [v5 primaryDisplayType];
  v7 = [(HKOverlayRoomViewControllerLastQuantityContext *)self applicationItems];
  v8 = [v7 healthStore];
  v9 = [(HKOverlayRoomViewControllerLastQuantityContext *)self _buildLastValueDataSourceWithUnitController:v4 displayType:v6 healthStore:v8];
  cacheDataSource = self->_cacheDataSource;
  self->_cacheDataSource = v9;

  v11 = [(HKOverlayRoomViewControllerLastQuantityContext *)self _buildLastQuantityDisplayType];
  overlayDisplayType = self->_overlayDisplayType;
  self->_overlayDisplayType = v11;

  v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v13 = [v16 localizedStringForKey:@"NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v14 = [(HKOverlayRoomViewControllerLastQuantityContext *)self _buildContextWithTime:&stru_1F42FFBE0 value:v13 isUnitIncludedInValue:0];
  lastUpdatedContextItem = self->_lastUpdatedContextItem;
  self->_lastUpdatedContextItem = v14;
}

- (id)_buildLastQuantityDisplayType
{
  v3 = [(HKOverlayRoomViewControllerLastQuantityContext *)self overlayChartController];
  v4 = [v3 primaryDisplayType];

  v5 = [v4 objectType];
  v6 = [v5 identifier];

  v7 = [(HKOverlayRoomViewControllerLastQuantityContext *)self _colorForDisplayType:v4];
  v8 = [v4 hk_interactiveChartsFormatterForTimeScope:5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setOverrideStatFormatterItemOptions:&unk_1F4381060];
  }

  v9 = [(HKOverlayRoomViewControllerLastQuantityContext *)self overlayChartController];
  v10 = [(HKOverlayRoomViewControllerLastQuantityContext *)self applicationItems];
  v11 = [v10 displayTypeController];
  v12 = [v9 displayTypeForQuantityIdentifier:v6 timeScope:5 displayTypeController:v11 overlayColor:v7 cacheDataSource:self->_cacheDataSource alternateLineSeries:0 alternateFormatter:v8 seriesOptions:9];

  return v12;
}

- (id)_buildLastValueDataSourceWithUnitController:(id)a3 displayType:(id)a4 healthStore:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [HKMostRecentValueQuantityTypeDataSource alloc];
  v12 = [(HKInteractiveChartViewController *)self->_overlayChartController currentCalendar];
  v13 = [(HKMostRecentValueQuantityTypeDataSource *)v11 initWithUnitController:v8 displayType:v9 healthStore:v10 currentCalendar:v12 attenuated:self->_attenuated];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __118__HKOverlayRoomViewControllerLastQuantityContext__buildLastValueDataSourceWithUnitController_displayType_healthStore___block_invoke;
  v22[3] = &unk_1E81B6020;
  v23 = v8;
  v24 = v9;
  v14 = v9;
  v15 = v8;
  [(HKQuantityTypeDataSource *)v13 setUserInfoCreationBlock:v22];
  v16 = MEMORY[0x1E696AEC0];
  v17 = [v14 objectType];
  v18 = [v17 identifier];
  v19 = [v16 stringWithFormat:@"LAST_QUANTITY_CONTEXT_%@", v18];

  v20 = [[HKInteractiveChartOverlayNamedDataSource alloc] initWithDataSource:v13 named:v19 withContextTitleForTimeScope:0];

  return v20;
}

HKInteractiveChartSinglePointData *__118__HKOverlayRoomViewControllerLastQuantityContext__buildLastValueDataSourceWithUnitController_displayType_healthStore___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 unitForDisplayType:v3];
  v6 = objc_alloc_init(HKInteractiveChartSinglePointData);
  v7 = [v4 mostRecentQuantity];
  [v7 doubleValueForUnit:v5];
  [(HKInteractiveChartSinglePointData *)v6 setValue:?];

  [(HKInteractiveChartSinglePointData *)v6 setUnit:v5];
  [(HKInteractiveChartSinglePointData *)v6 setRecordCount:1];
  v8 = [v4 statisticsInterval];

  [(HKInteractiveChartSinglePointData *)v6 setStatisticsInterval:v8];

  return v6;
}

- (id)_buildContextWithTime:(id)a3 value:(id)a4 isUnitIncludedInValue:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(HKOverlayRoomViewControllerLastQuantityContext *)self overlayChartController];
  v11 = [v10 primaryDisplayType];

  v12 = objc_alloc_init(HKDisplayTypeContextItem);
  if ([v8 length])
  {
    v13 = [(HKOverlayRoomViewControllerLastQuantityContext *)self _buildFullTitle:v8];
    [(HKDisplayTypeContextItem *)v12 setTitle:v13];
  }

  else
  {
    v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v14 = [v13 localizedStringForKey:@"LATEST_NO_TIME" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [(HKDisplayTypeContextItem *)v12 setTitle:v14];
  }

  v15 = [MEMORY[0x1E696AEC0] hk_chartOverlayAccessibilityIdentifier:@"Latest"];
  [(HKDisplayTypeContextItem *)v12 setAccessibilityIdentifier:v15];

  [(HKDisplayTypeContextItem *)v12 setInfoHidden:1];
  v16 = [(HKOverlayRoomViewControllerLastQuantityContext *)self applicationItems];
  v17 = [v16 unitController];
  v18 = [v17 localizedDisplayNameForDisplayType:v11];
  [(HKDisplayTypeContextItem *)v12 setUnit:v18];

  -[HKDisplayTypeContextItem setUseTightSpacingBetweenValueAndUnit:](v12, "setUseTightSpacingBetweenValueAndUnit:", [v11 contextItemShouldUseTightSpacingBetweenValueAndUnit]);
  [(HKDisplayTypeContextItem *)v12 setIsUnitIncludedInValue:v5];
  [(HKDisplayTypeContextItem *)v12 setValue:v9];

  v19 = [HKOverlayContextUtilities defaultMetricColorsForOverlayMode:[(HKOverlayRoomViewControllerLastQuantityContext *)self overlayMode]];
  [(HKDisplayTypeContextItem *)v12 setMetricColors:v19];

  v20 = +[HKOverlayContextUtilities selectedMetricColorsForCategory:](HKOverlayContextUtilities, "selectedMetricColorsForCategory:", [v11 categoryIdentifier]);
  [(HKDisplayTypeContextItem *)v12 setSelectedMetricColors:v20];

  return v12;
}

- (id)_buildFullTitle:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = MEMORY[0x1E696AAE8];
  v5 = a3;
  v6 = [v4 bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"LATEST_WITH_TIME" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v8 = [v3 stringWithFormat:v7, v5];

  return v8;
}

- (id)_colorForDisplayType:(id)a3
{
  v3 = +[HKDisplayCategory categoryWithID:](HKDisplayCategory, "categoryWithID:", [a3 categoryIdentifier]);
  v4 = [v3 color];

  return v4;
}

- (id)_stringValueFromQuantity:(id)a3 unit:(id)a4 isUnitIncludedInValue:(BOOL *)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [(HKOverlayRoomViewControllerLastQuantityContext *)self overlayChartController];
    v11 = [v10 primaryDisplayType];

    v12 = [v11 presentation];
    v13 = MEMORY[0x1E696AD98];
    [v8 doubleValueForUnit:v9];
    v14 = [v13 numberWithDouble:?];
    v15 = [v12 adjustedValueForDaemonValue:v14];

    v16 = [v11 hk_valueFormatterForUnit:v9];
    v17 = [(HKOverlayRoomViewControllerLastQuantityContext *)self applicationItems];
    v18 = [v17 unitController];
    v19 = [v16 stringFromValue:v15 displayType:v11 unitController:v18];

    if (a5)
    {
      *a5 = 1;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v19 = [v11 localizedStringForKey:@"NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  }

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    isKindOfClass = 1;
  }

  else
  {
    v3 = a3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end