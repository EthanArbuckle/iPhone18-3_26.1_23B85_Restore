@interface HKOverlayRoomViewControllerQuantityContext
- (BOOL)isEqual:(id)a3;
- (HKOverlayRoomViewControllerIntegratedContextDelegate)optionalDelegate;
- (HKOverlayRoomViewControllerQuantityContext)initWithQuantityIdentifier:(id)a3 overlayChartController:(id)a4 applicationItems:(id)a5 optionalDelegate:(id)a6 seriesOptions:(int64_t)a7 mode:(int64_t)a8 optionalBaseDisplayType:(id)a9;
- (id)buildContextItemWithValue:(id)a3 unit:(id)a4 valueContext:(id)a5 forTimeScope:(int64_t)a6 isUnitIncludedInValue:(BOOL)a7;
- (id)buildOverlayDisplayTypeForTimeScope:(int64_t)a3;
- (id)representativeDisplayType;
- (id)unitString:(id)a3 applicationItems:(id)a4 representativeDisplayType:(id)a5;
- (id)valueContextString:(id)a3 applicationItems:(id)a4 representativeDisplayType:(id)a5;
- (id)valueString:(id)a3 applicationItems:(id)a4 representativeDisplayType:(id)a5 isUnitIncludedInValue:(BOOL *)a6;
- (void)fetchCachedDataForTimeScope:(int64_t)a3 resolution:(int64_t)a4 dateInterval:(id)a5 completion:(id)a6;
- (void)prepareContextForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6;
@end

@implementation HKOverlayRoomViewControllerQuantityContext

- (HKOverlayRoomViewControllerQuantityContext)initWithQuantityIdentifier:(id)a3 overlayChartController:(id)a4 applicationItems:(id)a5 optionalDelegate:(id)a6 seriesOptions:(int64_t)a7 mode:(int64_t)a8 optionalBaseDisplayType:(id)a9
{
  v16 = a3;
  v17 = a6;
  v18 = a9;
  v22.receiver = self;
  v22.super_class = HKOverlayRoomViewControllerQuantityContext;
  v19 = [(HKOverlayRoomViewControllerIntegratedContext *)&v22 initWithOverlayChartController:a4 applicationItems:a5 mode:a8];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_quantityTypeIdentifier, a3);
    objc_storeWeak(&v20->_optionalDelegate, v17);
    v20->_options = a7;
    objc_storeStrong(&v20->_optionalBaseDisplayType, a9);
  }

  return v20;
}

- (id)representativeDisplayType
{
  v3 = MEMORY[0x1E696C370];
  v4 = [(HKOverlayRoomViewControllerQuantityContext *)self quantityTypeIdentifier];
  v5 = [v3 quantityTypeForIdentifier:v4];

  v6 = [(HKOverlayRoomViewControllerIntegratedContext *)self applicationItems];
  v7 = [v6 displayTypeController];
  v8 = [v7 displayTypeForObjectType:v5];

  return v8;
}

- (id)buildContextItemWithValue:(id)a3 unit:(id)a4 valueContext:(id)a5 forTimeScope:(int64_t)a6 isUnitIncludedInValue:(BOOL)a7
{
  v34 = a7;
  v11 = a4;
  v12 = a5;
  v13 = a3;
  v14 = [(HKOverlayRoomViewControllerQuantityContext *)self representativeDisplayType];
  v15 = objc_alloc_init(HKDisplayTypeContextItem);
  v16 = [(HKOverlayRoomViewControllerQuantityContext *)self optionalDelegate];
  if (v16 && (v17 = v16, -[HKOverlayRoomViewControllerQuantityContext optionalDelegate](self, "optionalDelegate"), v18 = objc_claimAutoreleasedReturnValue(), [v18 cacheDataSource], v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v17, v19))
  {
    v20 = [(HKOverlayRoomViewControllerQuantityContext *)self optionalDelegate];
    v21 = [v20 cacheDataSource];
    v22 = [v21 contextTitleForTimeScope];
    v23 = v22[2](v22, a6);

    v24 = [MEMORY[0x1E696AEC0] hk_chartOverlayAccessibilityIdentifier:v23];
    [(HKDisplayTypeContextItem *)v15 setAccessibilityIdentifier:v24];
  }

  else
  {
    v25 = [v14 localization];
    v23 = [v25 shortenedDisplayName];

    v26 = MEMORY[0x1E696AEC0];
    v24 = [v14 displayTypeIdentifierString];
    v27 = [v26 hk_chartOverlayAccessibilityIdentifier:v24];
    [(HKDisplayTypeContextItem *)v15 setAccessibilityIdentifier:v27];
  }

  [(HKDisplayTypeContextItem *)v15 setTitle:v23];
  [(HKDisplayTypeContextItem *)v15 setInfoHidden:1];
  [(HKDisplayTypeContextItem *)v15 setValue:v13];

  [(HKDisplayTypeContextItem *)v15 setValueContext:v12];
  if (v11)
  {
    [(HKDisplayTypeContextItem *)v15 setUnit:v11];
  }

  else
  {
    v28 = [(HKOverlayRoomViewControllerIntegratedContext *)self applicationItems];
    v29 = [v28 unitController];
    v30 = [v29 localizedDisplayNameForDisplayType:v14];
    [(HKDisplayTypeContextItem *)v15 setUnit:v30];
  }

  -[HKDisplayTypeContextItem setUseTightSpacingBetweenValueAndUnit:](v15, "setUseTightSpacingBetweenValueAndUnit:", [v14 contextItemShouldUseTightSpacingBetweenValueAndUnit]);
  [(HKDisplayTypeContextItem *)v15 setIsUnitIncludedInValue:v34];
  v31 = [HKOverlayContextUtilities defaultMetricColorsForOverlayMode:[(HKOverlayRoomViewControllerIntegratedContext *)self overlayMode]];
  [(HKDisplayTypeContextItem *)v15 setMetricColors:v31];

  v32 = +[HKOverlayContextUtilities selectedMetricColorsForCategory:](HKOverlayContextUtilities, "selectedMetricColorsForCategory:", [v14 categoryIdentifier]);
  [(HKDisplayTypeContextItem *)v15 setSelectedMetricColors:v32];

  return v15;
}

- (id)buildOverlayDisplayTypeForTimeScope:(int64_t)a3
{
  v21 = [(HKOverlayRoomViewControllerQuantityContext *)self representativeDisplayType];
  v20 = [v21 color];
  v5 = [(HKOverlayRoomViewControllerQuantityContext *)self optionalDelegate];
  v6 = objc_opt_respondsToSelector();

  v17 = a3;
  if (v6)
  {
    v7 = [(HKOverlayRoomViewControllerQuantityContext *)self optionalDelegate];
    v19 = [v7 formatterForTimescope:a3];
  }

  else
  {
    v19 = 0;
  }

  v8 = [(HKOverlayRoomViewControllerIntegratedContext *)self overlayChartController];
  v9 = [(HKOverlayRoomViewControllerQuantityContext *)self quantityTypeIdentifier];
  v10 = [(HKOverlayRoomViewControllerIntegratedContext *)self applicationItems];
  v11 = [v10 displayTypeController];
  v12 = [(HKOverlayRoomViewControllerQuantityContext *)self optionalDelegate];
  v13 = [v12 cacheDataSource];
  v14 = [(HKOverlayRoomViewControllerQuantityContext *)self optionalDelegate];
  v15 = [v14 alternateLineSeries];
  v18 = [v8 displayTypeForQuantityIdentifier:v9 timeScope:v17 displayTypeController:v11 overlayColor:v20 cacheDataSource:v13 alternateLineSeries:v15 alternateFormatter:v19 seriesOptions:self->_options];

  return v18;
}

- (void)fetchCachedDataForTimeScope:(int64_t)a3 resolution:(int64_t)a4 dateInterval:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = [(HKOverlayRoomViewControllerIntegratedContext *)self overlayChartController];
  v12 = [(HKOverlayRoomViewControllerQuantityContext *)self quantityTypeIdentifier];
  v13 = [v10 startDate];
  v14 = [v10 endDate];

  v15 = [(HKOverlayRoomViewControllerQuantityContext *)self optionalDelegate];
  v16 = [v15 cacheDataSource];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __109__HKOverlayRoomViewControllerQuantityContext_fetchCachedDataForTimeScope_resolution_dateInterval_completion___block_invoke;
  v18[3] = &unk_1E81B5F58;
  v19 = v9;
  v17 = v9;
  [v11 cachedDataForQuantityIdentifier:v12 timeScope:a3 resolution:0 startDate:v13 endDate:v14 cacheDataSource:v16 completion:v18];
}

- (id)valueString:(id)a3 applicationItems:(id)a4 representativeDisplayType:(id)a5 isUnitIncludedInValue:(BOOL *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(HKOverlayRoomViewControllerQuantityContext *)self optionalDelegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(HKOverlayRoomViewControllerQuantityContext *)self optionalDelegate];
    v16 = [v15 valueString:v10 applicationItems:v11 representativeDisplayType:v12];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = HKOverlayRoomViewControllerQuantityContext;
    v16 = [(HKOverlayRoomViewControllerIntegratedContext *)&v18 valueString:v10 applicationItems:v11 representativeDisplayType:v12 isUnitIncludedInValue:a6];
  }

  return v16;
}

- (id)unitString:(id)a3 applicationItems:(id)a4 representativeDisplayType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HKOverlayRoomViewControllerQuantityContext *)self optionalDelegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(HKOverlayRoomViewControllerQuantityContext *)self optionalDelegate];
    v14 = [v13 unitString:v8 applicationItems:v9 representativeDisplayType:v10];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = HKOverlayRoomViewControllerQuantityContext;
    v14 = [(HKOverlayRoomViewControllerIntegratedContext *)&v16 unitString:v8 applicationItems:v9 representativeDisplayType:v10];
  }

  return v14;
}

- (id)valueContextString:(id)a3 applicationItems:(id)a4 representativeDisplayType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HKOverlayRoomViewControllerQuantityContext *)self optionalDelegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(HKOverlayRoomViewControllerQuantityContext *)self optionalDelegate];
    v14 = [v13 valueContextString:v8 applicationItems:v9 representativeDisplayType:v10];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = HKOverlayRoomViewControllerQuantityContext;
    v14 = [(HKOverlayRoomViewControllerIntegratedContext *)&v16 valueContextString:v8 applicationItems:v9 representativeDisplayType:v10];
  }

  return v14;
}

- (void)prepareContextForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6
{
  v18 = a3;
  v9 = [(HKOverlayRoomViewControllerQuantityContext *)self optionalBaseDisplayType];
  if (v9)
  {
    v10 = v9;
    v11 = [(HKOverlayRoomViewControllerQuantityContext *)self optionalBaseDisplayType];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v13 = [(HKOverlayRoomViewControllerQuantityContext *)self optionalBaseDisplayType];
      v14 = [v13 graphSeriesForTimeScope:a5];
      v15 = [v18 startDate];
      v16 = [v18 endDate];
      v17 = [HKValueRange valueRangeWithMinValue:v15 maxValue:v16];

      [v14 hasAnyDataLoadedInXAxisRange:v17 dateZoom:a5 resolution:a6];
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HKOverlayRoomViewControllerQuantityContext *)self quantityTypeIdentifier];
      v7 = [(HKOverlayRoomViewControllerQuantityContext *)v5 quantityTypeIdentifier];

      if (v6 == v7 && (v8 = [(HKOverlayRoomViewControllerQuantityContext *)self options], v8 == [(HKOverlayRoomViewControllerQuantityContext *)v5 options]))
      {
        v9 = [(HKOverlayRoomViewControllerQuantityContext *)self optionalDelegate];
        v10 = [v9 cacheDataSource];
        v11 = [v10 name];
        v12 = [(HKOverlayRoomViewControllerQuantityContext *)v5 optionalDelegate];
        v13 = [v12 cacheDataSource];
        v14 = [v13 name];
        v15 = v11 == v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (HKOverlayRoomViewControllerIntegratedContextDelegate)optionalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_optionalDelegate);

  return WeakRetained;
}

@end