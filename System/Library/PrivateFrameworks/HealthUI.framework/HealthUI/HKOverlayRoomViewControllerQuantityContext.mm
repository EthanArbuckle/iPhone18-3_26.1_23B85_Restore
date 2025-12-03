@interface HKOverlayRoomViewControllerQuantityContext
- (BOOL)isEqual:(id)equal;
- (HKOverlayRoomViewControllerIntegratedContextDelegate)optionalDelegate;
- (HKOverlayRoomViewControllerQuantityContext)initWithQuantityIdentifier:(id)identifier overlayChartController:(id)controller applicationItems:(id)items optionalDelegate:(id)delegate seriesOptions:(int64_t)options mode:(int64_t)mode optionalBaseDisplayType:(id)type;
- (id)buildContextItemWithValue:(id)value unit:(id)unit valueContext:(id)context forTimeScope:(int64_t)scope isUnitIncludedInValue:(BOOL)inValue;
- (id)buildOverlayDisplayTypeForTimeScope:(int64_t)scope;
- (id)representativeDisplayType;
- (id)unitString:(id)string applicationItems:(id)items representativeDisplayType:(id)type;
- (id)valueContextString:(id)string applicationItems:(id)items representativeDisplayType:(id)type;
- (id)valueString:(id)string applicationItems:(id)items representativeDisplayType:(id)type isUnitIncludedInValue:(BOOL *)value;
- (void)fetchCachedDataForTimeScope:(int64_t)scope resolution:(int64_t)resolution dateInterval:(id)interval completion:(id)completion;
- (void)prepareContextForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution;
@end

@implementation HKOverlayRoomViewControllerQuantityContext

- (HKOverlayRoomViewControllerQuantityContext)initWithQuantityIdentifier:(id)identifier overlayChartController:(id)controller applicationItems:(id)items optionalDelegate:(id)delegate seriesOptions:(int64_t)options mode:(int64_t)mode optionalBaseDisplayType:(id)type
{
  identifierCopy = identifier;
  delegateCopy = delegate;
  typeCopy = type;
  v22.receiver = self;
  v22.super_class = HKOverlayRoomViewControllerQuantityContext;
  v19 = [(HKOverlayRoomViewControllerIntegratedContext *)&v22 initWithOverlayChartController:controller applicationItems:items mode:mode];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_quantityTypeIdentifier, identifier);
    objc_storeWeak(&v20->_optionalDelegate, delegateCopy);
    v20->_options = options;
    objc_storeStrong(&v20->_optionalBaseDisplayType, type);
  }

  return v20;
}

- (id)representativeDisplayType
{
  v3 = MEMORY[0x1E696C370];
  quantityTypeIdentifier = [(HKOverlayRoomViewControllerQuantityContext *)self quantityTypeIdentifier];
  v5 = [v3 quantityTypeForIdentifier:quantityTypeIdentifier];

  applicationItems = [(HKOverlayRoomViewControllerIntegratedContext *)self applicationItems];
  displayTypeController = [applicationItems displayTypeController];
  v8 = [displayTypeController displayTypeForObjectType:v5];

  return v8;
}

- (id)buildContextItemWithValue:(id)value unit:(id)unit valueContext:(id)context forTimeScope:(int64_t)scope isUnitIncludedInValue:(BOOL)inValue
{
  inValueCopy = inValue;
  unitCopy = unit;
  contextCopy = context;
  valueCopy = value;
  representativeDisplayType = [(HKOverlayRoomViewControllerQuantityContext *)self representativeDisplayType];
  v15 = objc_alloc_init(HKDisplayTypeContextItem);
  optionalDelegate = [(HKOverlayRoomViewControllerQuantityContext *)self optionalDelegate];
  if (optionalDelegate && (v17 = optionalDelegate, -[HKOverlayRoomViewControllerQuantityContext optionalDelegate](self, "optionalDelegate"), v18 = objc_claimAutoreleasedReturnValue(), [v18 cacheDataSource], v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v17, v19))
  {
    optionalDelegate2 = [(HKOverlayRoomViewControllerQuantityContext *)self optionalDelegate];
    cacheDataSource = [optionalDelegate2 cacheDataSource];
    contextTitleForTimeScope = [cacheDataSource contextTitleForTimeScope];
    shortenedDisplayName = contextTitleForTimeScope[2](contextTitleForTimeScope, scope);

    displayTypeIdentifierString = [MEMORY[0x1E696AEC0] hk_chartOverlayAccessibilityIdentifier:shortenedDisplayName];
    [(HKDisplayTypeContextItem *)v15 setAccessibilityIdentifier:displayTypeIdentifierString];
  }

  else
  {
    localization = [representativeDisplayType localization];
    shortenedDisplayName = [localization shortenedDisplayName];

    v26 = MEMORY[0x1E696AEC0];
    displayTypeIdentifierString = [representativeDisplayType displayTypeIdentifierString];
    v27 = [v26 hk_chartOverlayAccessibilityIdentifier:displayTypeIdentifierString];
    [(HKDisplayTypeContextItem *)v15 setAccessibilityIdentifier:v27];
  }

  [(HKDisplayTypeContextItem *)v15 setTitle:shortenedDisplayName];
  [(HKDisplayTypeContextItem *)v15 setInfoHidden:1];
  [(HKDisplayTypeContextItem *)v15 setValue:valueCopy];

  [(HKDisplayTypeContextItem *)v15 setValueContext:contextCopy];
  if (unitCopy)
  {
    [(HKDisplayTypeContextItem *)v15 setUnit:unitCopy];
  }

  else
  {
    applicationItems = [(HKOverlayRoomViewControllerIntegratedContext *)self applicationItems];
    unitController = [applicationItems unitController];
    v30 = [unitController localizedDisplayNameForDisplayType:representativeDisplayType];
    [(HKDisplayTypeContextItem *)v15 setUnit:v30];
  }

  -[HKDisplayTypeContextItem setUseTightSpacingBetweenValueAndUnit:](v15, "setUseTightSpacingBetweenValueAndUnit:", [representativeDisplayType contextItemShouldUseTightSpacingBetweenValueAndUnit]);
  [(HKDisplayTypeContextItem *)v15 setIsUnitIncludedInValue:inValueCopy];
  v31 = [HKOverlayContextUtilities defaultMetricColorsForOverlayMode:[(HKOverlayRoomViewControllerIntegratedContext *)self overlayMode]];
  [(HKDisplayTypeContextItem *)v15 setMetricColors:v31];

  v32 = +[HKOverlayContextUtilities selectedMetricColorsForCategory:](HKOverlayContextUtilities, "selectedMetricColorsForCategory:", [representativeDisplayType categoryIdentifier]);
  [(HKDisplayTypeContextItem *)v15 setSelectedMetricColors:v32];

  return v15;
}

- (id)buildOverlayDisplayTypeForTimeScope:(int64_t)scope
{
  representativeDisplayType = [(HKOverlayRoomViewControllerQuantityContext *)self representativeDisplayType];
  color = [representativeDisplayType color];
  optionalDelegate = [(HKOverlayRoomViewControllerQuantityContext *)self optionalDelegate];
  v6 = objc_opt_respondsToSelector();

  scopeCopy = scope;
  if (v6)
  {
    optionalDelegate2 = [(HKOverlayRoomViewControllerQuantityContext *)self optionalDelegate];
    v19 = [optionalDelegate2 formatterForTimescope:scope];
  }

  else
  {
    v19 = 0;
  }

  overlayChartController = [(HKOverlayRoomViewControllerIntegratedContext *)self overlayChartController];
  quantityTypeIdentifier = [(HKOverlayRoomViewControllerQuantityContext *)self quantityTypeIdentifier];
  applicationItems = [(HKOverlayRoomViewControllerIntegratedContext *)self applicationItems];
  displayTypeController = [applicationItems displayTypeController];
  optionalDelegate3 = [(HKOverlayRoomViewControllerQuantityContext *)self optionalDelegate];
  cacheDataSource = [optionalDelegate3 cacheDataSource];
  optionalDelegate4 = [(HKOverlayRoomViewControllerQuantityContext *)self optionalDelegate];
  alternateLineSeries = [optionalDelegate4 alternateLineSeries];
  v18 = [overlayChartController displayTypeForQuantityIdentifier:quantityTypeIdentifier timeScope:scopeCopy displayTypeController:displayTypeController overlayColor:color cacheDataSource:cacheDataSource alternateLineSeries:alternateLineSeries alternateFormatter:v19 seriesOptions:self->_options];

  return v18;
}

- (void)fetchCachedDataForTimeScope:(int64_t)scope resolution:(int64_t)resolution dateInterval:(id)interval completion:(id)completion
{
  completionCopy = completion;
  intervalCopy = interval;
  overlayChartController = [(HKOverlayRoomViewControllerIntegratedContext *)self overlayChartController];
  quantityTypeIdentifier = [(HKOverlayRoomViewControllerQuantityContext *)self quantityTypeIdentifier];
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];

  optionalDelegate = [(HKOverlayRoomViewControllerQuantityContext *)self optionalDelegate];
  cacheDataSource = [optionalDelegate cacheDataSource];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __109__HKOverlayRoomViewControllerQuantityContext_fetchCachedDataForTimeScope_resolution_dateInterval_completion___block_invoke;
  v18[3] = &unk_1E81B5F58;
  v19 = completionCopy;
  v17 = completionCopy;
  [overlayChartController cachedDataForQuantityIdentifier:quantityTypeIdentifier timeScope:scope resolution:0 startDate:startDate endDate:endDate cacheDataSource:cacheDataSource completion:v18];
}

- (id)valueString:(id)string applicationItems:(id)items representativeDisplayType:(id)type isUnitIncludedInValue:(BOOL *)value
{
  stringCopy = string;
  itemsCopy = items;
  typeCopy = type;
  optionalDelegate = [(HKOverlayRoomViewControllerQuantityContext *)self optionalDelegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    optionalDelegate2 = [(HKOverlayRoomViewControllerQuantityContext *)self optionalDelegate];
    v16 = [optionalDelegate2 valueString:stringCopy applicationItems:itemsCopy representativeDisplayType:typeCopy];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = HKOverlayRoomViewControllerQuantityContext;
    v16 = [(HKOverlayRoomViewControllerIntegratedContext *)&v18 valueString:stringCopy applicationItems:itemsCopy representativeDisplayType:typeCopy isUnitIncludedInValue:value];
  }

  return v16;
}

- (id)unitString:(id)string applicationItems:(id)items representativeDisplayType:(id)type
{
  stringCopy = string;
  itemsCopy = items;
  typeCopy = type;
  optionalDelegate = [(HKOverlayRoomViewControllerQuantityContext *)self optionalDelegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    optionalDelegate2 = [(HKOverlayRoomViewControllerQuantityContext *)self optionalDelegate];
    v14 = [optionalDelegate2 unitString:stringCopy applicationItems:itemsCopy representativeDisplayType:typeCopy];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = HKOverlayRoomViewControllerQuantityContext;
    v14 = [(HKOverlayRoomViewControllerIntegratedContext *)&v16 unitString:stringCopy applicationItems:itemsCopy representativeDisplayType:typeCopy];
  }

  return v14;
}

- (id)valueContextString:(id)string applicationItems:(id)items representativeDisplayType:(id)type
{
  stringCopy = string;
  itemsCopy = items;
  typeCopy = type;
  optionalDelegate = [(HKOverlayRoomViewControllerQuantityContext *)self optionalDelegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    optionalDelegate2 = [(HKOverlayRoomViewControllerQuantityContext *)self optionalDelegate];
    v14 = [optionalDelegate2 valueContextString:stringCopy applicationItems:itemsCopy representativeDisplayType:typeCopy];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = HKOverlayRoomViewControllerQuantityContext;
    v14 = [(HKOverlayRoomViewControllerIntegratedContext *)&v16 valueContextString:stringCopy applicationItems:itemsCopy representativeDisplayType:typeCopy];
  }

  return v14;
}

- (void)prepareContextForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution
{
  intervalCopy = interval;
  optionalBaseDisplayType = [(HKOverlayRoomViewControllerQuantityContext *)self optionalBaseDisplayType];
  if (optionalBaseDisplayType)
  {
    v10 = optionalBaseDisplayType;
    optionalBaseDisplayType2 = [(HKOverlayRoomViewControllerQuantityContext *)self optionalBaseDisplayType];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      optionalBaseDisplayType3 = [(HKOverlayRoomViewControllerQuantityContext *)self optionalBaseDisplayType];
      v14 = [optionalBaseDisplayType3 graphSeriesForTimeScope:scope];
      startDate = [intervalCopy startDate];
      endDate = [intervalCopy endDate];
      v17 = [HKValueRange valueRangeWithMinValue:startDate maxValue:endDate];

      [v14 hasAnyDataLoadedInXAxisRange:v17 dateZoom:scope resolution:resolution];
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      quantityTypeIdentifier = [(HKOverlayRoomViewControllerQuantityContext *)self quantityTypeIdentifier];
      quantityTypeIdentifier2 = [(HKOverlayRoomViewControllerQuantityContext *)v5 quantityTypeIdentifier];

      if (quantityTypeIdentifier == quantityTypeIdentifier2 && (v8 = [(HKOverlayRoomViewControllerQuantityContext *)self options], v8 == [(HKOverlayRoomViewControllerQuantityContext *)v5 options]))
      {
        optionalDelegate = [(HKOverlayRoomViewControllerQuantityContext *)self optionalDelegate];
        cacheDataSource = [optionalDelegate cacheDataSource];
        name = [cacheDataSource name];
        optionalDelegate2 = [(HKOverlayRoomViewControllerQuantityContext *)v5 optionalDelegate];
        cacheDataSource2 = [optionalDelegate2 cacheDataSource];
        name2 = [cacheDataSource2 name];
        v15 = name == name2;
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