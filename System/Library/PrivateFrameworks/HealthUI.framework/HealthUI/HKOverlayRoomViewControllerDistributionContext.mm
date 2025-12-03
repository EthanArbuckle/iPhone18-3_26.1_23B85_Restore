@interface HKOverlayRoomViewControllerDistributionContext
- (BOOL)isEqual:(id)equal;
- (HKOverlayRoomViewControllerDistributionContext)initWithStyle:(int64_t)style namedPredicate:(id)predicate overlayChartController:(id)controller applicationItems:(id)items optionalDelegate:(id)delegate options:(int64_t)options mode:(int64_t)mode;
- (HKOverlayRoomViewControllerIntegratedContextDelegate)optionalDelegate;
- (id)_computeTitleAndIdentifierFromStyleAndPredicate;
- (id)_representativeDisplayTypeForStyle:(int64_t)style;
- (id)_selectedMetricColorsForDistributionStyle:(int64_t)style;
- (id)buildContextItemWithValue:(id)value unit:(id)unit valueContext:(id)context forTimeScope:(int64_t)scope isUnitIncludedInValue:(BOOL)inValue;
- (id)buildOverlayDisplayTypeForTimeScope:(int64_t)scope;
- (id)representativeDisplayType;
- (id)unitString:(id)string applicationItems:(id)items representativeDisplayType:(id)type;
- (id)valueString:(id)string applicationItems:(id)items representativeDisplayType:(id)type isUnitIncludedInValue:(BOOL *)value;
- (void)fetchCachedDataForTimeScope:(int64_t)scope resolution:(int64_t)resolution dateInterval:(id)interval completion:(id)completion;
@end

@implementation HKOverlayRoomViewControllerDistributionContext

- (HKOverlayRoomViewControllerDistributionContext)initWithStyle:(int64_t)style namedPredicate:(id)predicate overlayChartController:(id)controller applicationItems:(id)items optionalDelegate:(id)delegate options:(int64_t)options mode:(int64_t)mode
{
  v34[8] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  delegateCopy = delegate;
  v32.receiver = self;
  v32.super_class = HKOverlayRoomViewControllerDistributionContext;
  v18 = [(HKOverlayRoomViewControllerIntegratedContext *)&v32 initWithOverlayChartController:controller applicationItems:items mode:mode];
  v19 = v18;
  if (v18)
  {
    v18->_distributionStyle = style;
    objc_storeWeak(&v18->_optionalDelegate, delegateCopy);
    v19->_options = options;
    objc_storeStrong(&v19->_namedPredicate, predicate);
    v33[0] = &unk_1F43821E8;
    v31 = predicateCopy;
    v20 = +[HKUIMetricColors vitalsColors];
    v34[0] = v20;
    v33[1] = &unk_1F4382200;
    v21 = +[HKUIMetricColors mindfulnessColors];
    v34[1] = v21;
    v33[2] = &unk_1F4382218;
    v22 = +[HKUIMetricColors workoutContextViewColors];
    v34[2] = v22;
    v33[3] = &unk_1F4382230;
    v23 = +[HKUIMetricColors vitalsColors];
    v34[3] = v23;
    v33[4] = &unk_1F4382248;
    v24 = +[HKUIMetricColors vitalsColors];
    v34[4] = v24;
    v33[5] = &unk_1F4382260;
    v25 = +[HKUIMetricColors hearingHealthColors];
    v34[5] = v25;
    v33[6] = &unk_1F4382278;
    v26 = +[HKUIMetricColors hearingHealthColors];
    v34[6] = v26;
    v33[7] = &unk_1F4382290;
    v27 = +[HKUIMetricColors sleepColors];
    v34[7] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:8];
    styleToMetricColors = v19->_styleToMetricColors;
    v19->_styleToMetricColors = v28;

    predicateCopy = v31;
  }

  return v19;
}

- (id)representativeDisplayType
{
  distributionStyle = [(HKOverlayRoomViewControllerDistributionContext *)self distributionStyle];

  return [(HKOverlayRoomViewControllerDistributionContext *)self _representativeDisplayTypeForStyle:distributionStyle];
}

- (id)valueString:(id)string applicationItems:(id)items representativeDisplayType:(id)type isUnitIncludedInValue:(BOOL *)value
{
  v40 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  itemsCopy = items;
  typeCopy = type;
  firstObject = [stringCopy firstObject];
  userInfo = [firstObject userInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v34.receiver = self;
    v34.super_class = HKOverlayRoomViewControllerDistributionContext;
    v29 = [(HKOverlayRoomViewControllerIntegratedContext *)&v34 valueString:stringCopy applicationItems:itemsCopy representativeDisplayType:typeCopy isUnitIncludedInValue:value];
    goto LABEL_21;
  }

  v33 = itemsCopy;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v16 = stringCopy;
  v17 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (!v17)
  {

    goto LABEL_19;
  }

  v18 = v17;
  v31 = typeCopy;
  v32 = stringCopy;
  v19 = 0;
  v20 = *v36;
  do
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v36 != v20)
      {
        objc_enumerationMutation(v16);
      }

      v22 = *(*(&v35 + 1) + 8 * i);
      userInfo2 = [v22 userInfo];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        userInfo3 = [v22 userInfo];
        identifiers = [userInfo3 identifiers];

        if (!identifiers)
        {
          continue;
        }

        if (!v19)
        {
          v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        }

        userInfo2 = [v22 userInfo];
        identifiers2 = [userInfo2 identifiers];
        [v19 addObjectsFromArray:identifiers2];
      }
    }

    v18 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
  }

  while (v18);

  typeCopy = v31;
  stringCopy = v32;
  if (v19)
  {
    v27 = MEMORY[0x1E696ADA0];
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v19, "count")}];
    v29 = [v27 localizedStringFromNumber:v28 numberStyle:0];

    goto LABEL_20;
  }

LABEL_19:
  v19 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v29 = [v19 localizedStringForKey:@"NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
LABEL_20:
  itemsCopy = v33;

LABEL_21:

  return v29;
}

- (id)unitString:(id)string applicationItems:(id)items representativeDisplayType:(id)type
{
  stringCopy = string;
  itemsCopy = items;
  typeCopy = type;
  optionalDelegate = [(HKOverlayRoomViewControllerDistributionContext *)self optionalDelegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    optionalDelegate2 = [(HKOverlayRoomViewControllerDistributionContext *)self optionalDelegate];
    v14 = [optionalDelegate2 unitString:stringCopy applicationItems:itemsCopy representativeDisplayType:typeCopy];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = HKOverlayRoomViewControllerDistributionContext;
    v14 = [(HKOverlayRoomViewControllerIntegratedContext *)&v16 unitString:stringCopy applicationItems:itemsCopy representativeDisplayType:typeCopy];
  }

  return v14;
}

- (id)buildContextItemWithValue:(id)value unit:(id)unit valueContext:(id)context forTimeScope:(int64_t)scope isUnitIncludedInValue:(BOOL)inValue
{
  inValueCopy = inValue;
  unitCopy = unit;
  contextCopy = context;
  valueCopy = value;
  representativeDisplayType = [(HKOverlayRoomViewControllerDistributionContext *)self representativeDisplayType];
  v15 = objc_alloc_init(HKDisplayTypeContextItem);
  _computeTitleAndIdentifierFromStyleAndPredicate = [(HKOverlayRoomViewControllerDistributionContext *)self _computeTitleAndIdentifierFromStyleAndPredicate];
  title = [_computeTitleAndIdentifierFromStyleAndPredicate title];
  [(HKDisplayTypeContextItem *)v15 setTitle:title];

  accessibilityIdentifier = [_computeTitleAndIdentifierFromStyleAndPredicate accessibilityIdentifier];
  [(HKDisplayTypeContextItem *)v15 setAccessibilityIdentifier:accessibilityIdentifier];

  [(HKDisplayTypeContextItem *)v15 setInfoHidden:1];
  [(HKDisplayTypeContextItem *)v15 setValue:valueCopy];

  [(HKDisplayTypeContextItem *)v15 setValueContext:contextCopy];
  if (([representativeDisplayType contextItemShouldDisplayEventCountForDistributionStyle:{-[HKOverlayRoomViewControllerDistributionContext distributionStyle](self, "distributionStyle")}] & 1) == 0)
  {
    objectType = [representativeDisplayType objectType];
    applicationItems = [(HKOverlayRoomViewControllerIntegratedContext *)self applicationItems];
    healthStore = [applicationItems healthStore];
    v22 = [objectType hk_metadataValueDisplayTypeInStore:healthStore];

    if (unitCopy)
    {
      [(HKDisplayTypeContextItem *)v15 setUnit:unitCopy];
    }

    else
    {
      applicationItems2 = [(HKOverlayRoomViewControllerIntegratedContext *)self applicationItems];
      unitController = [applicationItems2 unitController];
      v25 = [unitController localizedDisplayNameForDisplayType:v22];
      [(HKDisplayTypeContextItem *)v15 setUnit:v25];
    }

    -[HKDisplayTypeContextItem setUseTightSpacingBetweenValueAndUnit:](v15, "setUseTightSpacingBetweenValueAndUnit:", [v22 contextItemShouldUseTightSpacingBetweenValueAndUnit]);
    [(HKDisplayTypeContextItem *)v15 setIsUnitIncludedInValue:inValueCopy];
  }

  v26 = [HKOverlayContextUtilities defaultMetricColorsForOverlayMode:[(HKOverlayRoomViewControllerIntegratedContext *)self overlayMode]];
  [(HKDisplayTypeContextItem *)v15 setMetricColors:v26];

  v27 = [(HKOverlayRoomViewControllerDistributionContext *)self _selectedMetricColorsForDistributionStyle:[(HKOverlayRoomViewControllerDistributionContext *)self distributionStyle]];
  [(HKDisplayTypeContextItem *)v15 setSelectedMetricColors:v27];

  return v15;
}

- (id)buildOverlayDisplayTypeForTimeScope:(int64_t)scope
{
  optionalDelegate = [(HKOverlayRoomViewControllerDistributionContext *)self optionalDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    optionalDelegate2 = [(HKOverlayRoomViewControllerDistributionContext *)self optionalDelegate];
    v8 = [optionalDelegate2 formatterForTimescope:scope];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(HKOverlayRoomViewControllerDistributionContext *)self _selectedMetricColorsForDistributionStyle:[(HKOverlayRoomViewControllerDistributionContext *)self distributionStyle]];
  keyColor = [v9 keyColor];

  overlayChartController = [(HKOverlayRoomViewControllerIntegratedContext *)self overlayChartController];
  distributionStyle = [(HKOverlayRoomViewControllerDistributionContext *)self distributionStyle];
  options = [(HKOverlayRoomViewControllerDistributionContext *)self options];
  namedPredicate = [(HKOverlayRoomViewControllerDistributionContext *)self namedPredicate];
  v15 = [overlayChartController displayTypeForQuantityDistributionStyle:distributionStyle timeScope:scope overlayColor:keyColor options:options alternateFormatter:v8 namedPredicate:namedPredicate];

  return v15;
}

- (void)fetchCachedDataForTimeScope:(int64_t)scope resolution:(int64_t)resolution dateInterval:(id)interval completion:(id)completion
{
  completionCopy = completion;
  intervalCopy = interval;
  overlayChartController = [(HKOverlayRoomViewControllerIntegratedContext *)self overlayChartController];
  distributionStyle = [(HKOverlayRoomViewControllerDistributionContext *)self distributionStyle];
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];

  namedPredicate = [(HKOverlayRoomViewControllerDistributionContext *)self namedPredicate];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __113__HKOverlayRoomViewControllerDistributionContext_fetchCachedDataForTimeScope_resolution_dateInterval_completion___block_invoke;
  v18[3] = &unk_1E81B5F58;
  v19 = completionCopy;
  v17 = completionCopy;
  [overlayChartController cachedDataForQuantityDistributionStyle:distributionStyle timeScope:scope resolution:resolution startDate:startDate endDate:endDate namedPredicate:namedPredicate completion:v18];
}

- (id)_representativeDisplayTypeForStyle:(int64_t)style
{
  primaryDisplayType = 0;
  if (style > 3)
  {
    if (style > 5)
    {
      if (style != 7)
      {
        if (style != 6)
        {
          goto LABEL_15;
        }

        goto LABEL_10;
      }

      applicationItems = [(HKOverlayRoomViewControllerIntegratedContext *)self applicationItems];
      displayTypeController = [applicationItems displayTypeController];
      v6 = displayTypeController;
      v7 = &unk_1F43822F0;
    }

    else if (style == 4)
    {
      applicationItems = [(HKOverlayRoomViewControllerIntegratedContext *)self applicationItems];
      displayTypeController = [applicationItems displayTypeController];
      v6 = displayTypeController;
      v7 = &unk_1F43822C0;
    }

    else
    {
      applicationItems = [(HKOverlayRoomViewControllerIntegratedContext *)self applicationItems];
      displayTypeController = [applicationItems displayTypeController];
      v6 = displayTypeController;
      v7 = &unk_1F43822D8;
    }

LABEL_13:
    primaryDisplayType = [displayTypeController displayTypeWithIdentifier:v7];

    goto LABEL_14;
  }

  if (style >= 3)
  {
    if (style != 3)
    {
      goto LABEL_15;
    }

    applicationItems = [(HKOverlayRoomViewControllerIntegratedContext *)self applicationItems];
    displayTypeController = [applicationItems displayTypeController];
    v6 = displayTypeController;
    v7 = &unk_1F43822A8;
    goto LABEL_13;
  }

LABEL_10:
  applicationItems = [(HKOverlayRoomViewControllerIntegratedContext *)self overlayChartController];
  primaryDisplayType = [applicationItems primaryDisplayType];
LABEL_14:

LABEL_15:

  return primaryDisplayType;
}

- (id)_computeTitleAndIdentifierFromStyleAndPredicate
{
  distributionStyle = [(HKOverlayRoomViewControllerDistributionContext *)self distributionStyle];
  v4 = 0;
  if (distributionStyle > 3)
  {
    if (distributionStyle > 5)
    {
      if (distributionStyle == 6)
      {
        v5 = [_HKContextTitleAndIdentifier alloc];
        v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        namedPredicate2 = [v6 localizedStringForKey:@"SLEEP" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v8 = MEMORY[0x1E696AEC0];
        v9 = @"Sleep";
      }

      else
      {
        if (distributionStyle != 7)
        {
          goto LABEL_21;
        }

        v5 = [_HKContextTitleAndIdentifier alloc];
        v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        namedPredicate2 = [v6 localizedStringForKey:@"AUDIO_OVERLAY_HEADPHONES_NOTIFICATIONS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v8 = MEMORY[0x1E696AEC0];
        v9 = @"HeadphoneNotification";
      }
    }

    else if (distributionStyle == 4)
    {
      v5 = [_HKContextTitleAndIdentifier alloc];
      v6 = HKHealthKitFrameworkBundle();
      namedPredicate2 = [v6 localizedStringForKey:@"BRADYCARDIA" value:&stru_1F42FFBE0 table:*MEMORY[0x1E696B910]];
      v8 = MEMORY[0x1E696AEC0];
      v9 = @"LowHeartRate";
    }

    else
    {
      v5 = [_HKContextTitleAndIdentifier alloc];
      v6 = HKHealthKitFrameworkBundle();
      namedPredicate2 = [v6 localizedStringForKey:@"AUDIO_EXPOSURE_EVENT" value:&stru_1F42FFBE0 table:*MEMORY[0x1E696B910]];
      v8 = MEMORY[0x1E696AEC0];
      v9 = @"NoiseNotification";
    }

    goto LABEL_19;
  }

  if (distributionStyle > 1)
  {
    if (distributionStyle == 2)
    {
      v5 = [_HKContextTitleAndIdentifier alloc];
      v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      namedPredicate2 = [v6 localizedStringForKey:@"WORKOUT_SINGULAR" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v8 = MEMORY[0x1E696AEC0];
      v9 = @"Workouts";
    }

    else
    {
      v5 = [_HKContextTitleAndIdentifier alloc];
      v6 = HKHealthKitFrameworkBundle();
      namedPredicate2 = [v6 localizedStringForKey:@"TACHYCARDIA" value:&stru_1F42FFBE0 table:*MEMORY[0x1E696B910]];
      v8 = MEMORY[0x1E696AEC0];
      v9 = @"HighHeartRate";
    }

    goto LABEL_19;
  }

  if (distributionStyle)
  {
    if (distributionStyle != 1)
    {
      goto LABEL_21;
    }

    v5 = [_HKContextTitleAndIdentifier alloc];
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    namedPredicate2 = [v6 localizedStringForKey:@"BREATHE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v8 = MEMORY[0x1E696AEC0];
    v9 = @"Breathe";
    goto LABEL_19;
  }

  namedPredicate = [(HKOverlayRoomViewControllerDistributionContext *)self namedPredicate];

  if (namedPredicate)
  {
    v11 = [_HKContextTitleAndIdentifier alloc];
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    namedPredicate2 = [(HKOverlayRoomViewControllerDistributionContext *)self namedPredicate];
    localizedNameKey = [namedPredicate2 localizedNameKey];
    v13 = [v6 localizedStringForKey:localizedNameKey value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v14 = MEMORY[0x1E696AEC0];
    namedPredicate3 = [(HKOverlayRoomViewControllerDistributionContext *)self namedPredicate];
    localizedNameKey2 = [namedPredicate3 localizedNameKey];
    v17 = [v14 hk_chartOverlayAccessibilityIdentifier:localizedNameKey2];
    v4 = [(_HKContextTitleAndIdentifier *)v11 initWithTitle:v13 accessibilityIdentifier:v17];

LABEL_20:
    goto LABEL_21;
  }

  if ((self->_options & 2) != 0)
  {
    v5 = [_HKContextTitleAndIdentifier alloc];
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    namedPredicate2 = [v6 localizedStringForKey:@"OVERLAY_RANGE_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v8 = MEMORY[0x1E696AEC0];
    v9 = @"Range";
LABEL_19:
    localizedNameKey = [v8 hk_chartOverlayAccessibilityIdentifier:v9];
    v4 = [(_HKContextTitleAndIdentifier *)v5 initWithTitle:namedPredicate2 accessibilityIdentifier:localizedNameKey];
    goto LABEL_20;
  }

  v4 = 0;
LABEL_21:

  return v4;
}

- (id)_selectedMetricColorsForDistributionStyle:(int64_t)style
{
  if (style)
  {
    styleToMetricColors = [(HKOverlayRoomViewControllerDistributionContext *)self styleToMetricColors];
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:style];
    v6 = [styleToMetricColors objectForKeyedSubscript:v5];
  }

  else
  {
    styleToMetricColors = [(HKOverlayRoomViewControllerDistributionContext *)self representativeDisplayType];
    v6 = +[HKOverlayContextUtilities selectedMetricColorsForCategory:](HKOverlayContextUtilities, "selectedMetricColorsForCategory:", [styleToMetricColors categoryIdentifier]);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      distributionStyle = [(HKOverlayRoomViewControllerDistributionContext *)self distributionStyle];
      if (distributionStyle == [(HKOverlayRoomViewControllerDistributionContext *)v5 distributionStyle]&& (v7 = [(HKOverlayRoomViewControllerDistributionContext *)self options], v7 == [(HKOverlayRoomViewControllerDistributionContext *)v5 options]))
      {
        optionalDelegate = [(HKOverlayRoomViewControllerDistributionContext *)self optionalDelegate];
        cacheDataSource = [optionalDelegate cacheDataSource];
        name = [cacheDataSource name];
        optionalDelegate2 = [(HKOverlayRoomViewControllerDistributionContext *)v5 optionalDelegate];
        cacheDataSource2 = [optionalDelegate2 cacheDataSource];
        name2 = [cacheDataSource2 name];
        v14 = name == name2;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (HKOverlayRoomViewControllerIntegratedContextDelegate)optionalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_optionalDelegate);

  return WeakRetained;
}

@end