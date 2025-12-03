@interface HKOverlayRoomViewControllerLastQuantityContext
- (BOOL)isEqual:(id)equal;
- (HKOverlayRoomViewControllerLastQuantityContext)initWithOverlayChartController:(id)controller applicationItems:(id)items mode:(int64_t)mode attenuated:(BOOL)attenuated;
- (id)_buildContextWithTime:(id)time value:(id)value isUnitIncludedInValue:(BOOL)inValue;
- (id)_buildFullTitle:(id)title;
- (id)_buildLastQuantityDisplayType;
- (id)_buildLastValueDataSourceWithUnitController:(id)controller displayType:(id)type healthStore:(id)store;
- (id)_colorForDisplayType:(id)type;
- (id)_stringValueFromQuantity:(id)quantity unit:(id)unit isUnitIncludedInValue:(BOOL *)value;
- (id)sampleTypeForDateRangeUpdates;
- (void)invalidateContextItem;
- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion;
@end

@implementation HKOverlayRoomViewControllerLastQuantityContext

- (HKOverlayRoomViewControllerLastQuantityContext)initWithOverlayChartController:(id)controller applicationItems:(id)items mode:(int64_t)mode attenuated:(BOOL)attenuated
{
  controllerCopy = controller;
  itemsCopy = items;
  v27.receiver = self;
  v27.super_class = HKOverlayRoomViewControllerLastQuantityContext;
  v13 = [(HKOverlayRoomViewControllerLastQuantityContext *)&v27 init];
  v14 = v13;
  if (v13)
  {
    v13->_attenuated = attenuated;
    objc_storeStrong(&v13->_overlayChartController, controller);
    objc_storeStrong(&v14->_applicationItems, items);
    unitController = [itemsCopy unitController];
    primaryDisplayType = [controllerCopy primaryDisplayType];
    healthStore = [itemsCopy healthStore];
    v18 = [(HKOverlayRoomViewControllerLastQuantityContext *)v14 _buildLastValueDataSourceWithUnitController:unitController displayType:primaryDisplayType healthStore:healthStore];
    cacheDataSource = v14->_cacheDataSource;
    v14->_cacheDataSource = v18;

    v14->_overlayMode = mode;
    _buildLastQuantityDisplayType = [(HKOverlayRoomViewControllerLastQuantityContext *)v14 _buildLastQuantityDisplayType];
    overlayDisplayType = v14->_overlayDisplayType;
    v14->_overlayDisplayType = _buildLastQuantityDisplayType;

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
  overlayChartController = [(HKOverlayRoomViewControllerLastQuantityContext *)self overlayChartController];
  primaryDisplayType = [overlayChartController primaryDisplayType];
  objectType = [primaryDisplayType objectType];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectType;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion
{
  completionCopy = completion;
  sampleTypeForDateRangeUpdates = [(HKOverlayRoomViewControllerLastQuantityContext *)self sampleTypeForDateRangeUpdates];
  applicationItems = [(HKOverlayRoomViewControllerLastQuantityContext *)self applicationItems];
  healthStore = [applicationItems healthStore];

  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __133__HKOverlayRoomViewControllerLastQuantityContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
  v21 = &unk_1E81B5FF8;
  v12 = completionCopy;
  selfCopy = self;
  v23 = v12;
  v13 = _Block_copy(&v18);
  if (self->_attenuated && ([sampleTypeForDateRangeUpdates identifier], v14 = objc_claimAutoreleasedReturnValue(), v15 = *MEMORY[0x1E696BD08], v14, v14 == v15))
  {
    v16 = [MEMORY[0x1E696C1C0] queryForMostRecentAttenuatedEAEQuantityWithHealthStore:healthStore completion:v13];
  }

  else
  {
    v16 = [MEMORY[0x1E696C1C0] queryForMostRecentQuantityOfType:sampleTypeForDateRangeUpdates healthStore:healthStore predicate:0 completion:{v13, v18, v19, v20, v21}];
  }

  v17 = v16;
  [healthStore executeQuery:v16];
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
  applicationItems = [(HKOverlayRoomViewControllerLastQuantityContext *)self applicationItems];
  unitController = [applicationItems unitController];
  overlayChartController = [(HKOverlayRoomViewControllerLastQuantityContext *)self overlayChartController];
  primaryDisplayType = [overlayChartController primaryDisplayType];
  applicationItems2 = [(HKOverlayRoomViewControllerLastQuantityContext *)self applicationItems];
  healthStore = [applicationItems2 healthStore];
  v9 = [(HKOverlayRoomViewControllerLastQuantityContext *)self _buildLastValueDataSourceWithUnitController:unitController displayType:primaryDisplayType healthStore:healthStore];
  cacheDataSource = self->_cacheDataSource;
  self->_cacheDataSource = v9;

  _buildLastQuantityDisplayType = [(HKOverlayRoomViewControllerLastQuantityContext *)self _buildLastQuantityDisplayType];
  overlayDisplayType = self->_overlayDisplayType;
  self->_overlayDisplayType = _buildLastQuantityDisplayType;

  v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v13 = [v16 localizedStringForKey:@"NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v14 = [(HKOverlayRoomViewControllerLastQuantityContext *)self _buildContextWithTime:&stru_1F42FFBE0 value:v13 isUnitIncludedInValue:0];
  lastUpdatedContextItem = self->_lastUpdatedContextItem;
  self->_lastUpdatedContextItem = v14;
}

- (id)_buildLastQuantityDisplayType
{
  overlayChartController = [(HKOverlayRoomViewControllerLastQuantityContext *)self overlayChartController];
  primaryDisplayType = [overlayChartController primaryDisplayType];

  objectType = [primaryDisplayType objectType];
  identifier = [objectType identifier];

  v7 = [(HKOverlayRoomViewControllerLastQuantityContext *)self _colorForDisplayType:primaryDisplayType];
  v8 = [primaryDisplayType hk_interactiveChartsFormatterForTimeScope:5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setOverrideStatFormatterItemOptions:&unk_1F4381060];
  }

  overlayChartController2 = [(HKOverlayRoomViewControllerLastQuantityContext *)self overlayChartController];
  applicationItems = [(HKOverlayRoomViewControllerLastQuantityContext *)self applicationItems];
  displayTypeController = [applicationItems displayTypeController];
  v12 = [overlayChartController2 displayTypeForQuantityIdentifier:identifier timeScope:5 displayTypeController:displayTypeController overlayColor:v7 cacheDataSource:self->_cacheDataSource alternateLineSeries:0 alternateFormatter:v8 seriesOptions:9];

  return v12;
}

- (id)_buildLastValueDataSourceWithUnitController:(id)controller displayType:(id)type healthStore:(id)store
{
  controllerCopy = controller;
  typeCopy = type;
  storeCopy = store;
  v11 = [HKMostRecentValueQuantityTypeDataSource alloc];
  currentCalendar = [(HKInteractiveChartViewController *)self->_overlayChartController currentCalendar];
  v13 = [(HKMostRecentValueQuantityTypeDataSource *)v11 initWithUnitController:controllerCopy displayType:typeCopy healthStore:storeCopy currentCalendar:currentCalendar attenuated:self->_attenuated];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __118__HKOverlayRoomViewControllerLastQuantityContext__buildLastValueDataSourceWithUnitController_displayType_healthStore___block_invoke;
  v22[3] = &unk_1E81B6020;
  v23 = controllerCopy;
  v24 = typeCopy;
  v14 = typeCopy;
  v15 = controllerCopy;
  [(HKQuantityTypeDataSource *)v13 setUserInfoCreationBlock:v22];
  v16 = MEMORY[0x1E696AEC0];
  objectType = [v14 objectType];
  identifier = [objectType identifier];
  v19 = [v16 stringWithFormat:@"LAST_QUANTITY_CONTEXT_%@", identifier];

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

- (id)_buildContextWithTime:(id)time value:(id)value isUnitIncludedInValue:(BOOL)inValue
{
  inValueCopy = inValue;
  timeCopy = time;
  valueCopy = value;
  overlayChartController = [(HKOverlayRoomViewControllerLastQuantityContext *)self overlayChartController];
  primaryDisplayType = [overlayChartController primaryDisplayType];

  v12 = objc_alloc_init(HKDisplayTypeContextItem);
  if ([timeCopy length])
  {
    v13 = [(HKOverlayRoomViewControllerLastQuantityContext *)self _buildFullTitle:timeCopy];
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
  applicationItems = [(HKOverlayRoomViewControllerLastQuantityContext *)self applicationItems];
  unitController = [applicationItems unitController];
  v18 = [unitController localizedDisplayNameForDisplayType:primaryDisplayType];
  [(HKDisplayTypeContextItem *)v12 setUnit:v18];

  -[HKDisplayTypeContextItem setUseTightSpacingBetweenValueAndUnit:](v12, "setUseTightSpacingBetweenValueAndUnit:", [primaryDisplayType contextItemShouldUseTightSpacingBetweenValueAndUnit]);
  [(HKDisplayTypeContextItem *)v12 setIsUnitIncludedInValue:inValueCopy];
  [(HKDisplayTypeContextItem *)v12 setValue:valueCopy];

  v19 = [HKOverlayContextUtilities defaultMetricColorsForOverlayMode:[(HKOverlayRoomViewControllerLastQuantityContext *)self overlayMode]];
  [(HKDisplayTypeContextItem *)v12 setMetricColors:v19];

  v20 = +[HKOverlayContextUtilities selectedMetricColorsForCategory:](HKOverlayContextUtilities, "selectedMetricColorsForCategory:", [primaryDisplayType categoryIdentifier]);
  [(HKDisplayTypeContextItem *)v12 setSelectedMetricColors:v20];

  return v12;
}

- (id)_buildFullTitle:(id)title
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = MEMORY[0x1E696AAE8];
  titleCopy = title;
  v6 = [v4 bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"LATEST_WITH_TIME" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  titleCopy = [v3 stringWithFormat:v7, titleCopy];

  return titleCopy;
}

- (id)_colorForDisplayType:(id)type
{
  v3 = +[HKDisplayCategory categoryWithID:](HKDisplayCategory, "categoryWithID:", [type categoryIdentifier]);
  color = [v3 color];

  return color;
}

- (id)_stringValueFromQuantity:(id)quantity unit:(id)unit isUnitIncludedInValue:(BOOL *)value
{
  quantityCopy = quantity;
  unitCopy = unit;
  if (quantityCopy)
  {
    overlayChartController = [(HKOverlayRoomViewControllerLastQuantityContext *)self overlayChartController];
    primaryDisplayType = [overlayChartController primaryDisplayType];

    presentation = [primaryDisplayType presentation];
    v13 = MEMORY[0x1E696AD98];
    [quantityCopy doubleValueForUnit:unitCopy];
    v14 = [v13 numberWithDouble:?];
    v15 = [presentation adjustedValueForDaemonValue:v14];

    v16 = [primaryDisplayType hk_valueFormatterForUnit:unitCopy];
    applicationItems = [(HKOverlayRoomViewControllerLastQuantityContext *)self applicationItems];
    unitController = [applicationItems unitController];
    v19 = [v16 stringFromValue:v15 displayType:primaryDisplayType unitController:unitController];

    if (value)
    {
      *value = 1;
    }
  }

  else
  {
    primaryDisplayType = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v19 = [primaryDisplayType localizedStringForKey:@"NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  }

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    isKindOfClass = 1;
  }

  else
  {
    equalCopy = equal;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end