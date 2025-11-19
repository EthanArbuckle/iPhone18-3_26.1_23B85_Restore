@interface HKOverlayRoomViewControllerDistributionContext
- (BOOL)isEqual:(id)a3;
- (HKOverlayRoomViewControllerDistributionContext)initWithStyle:(int64_t)a3 namedPredicate:(id)a4 overlayChartController:(id)a5 applicationItems:(id)a6 optionalDelegate:(id)a7 options:(int64_t)a8 mode:(int64_t)a9;
- (HKOverlayRoomViewControllerIntegratedContextDelegate)optionalDelegate;
- (id)_computeTitleAndIdentifierFromStyleAndPredicate;
- (id)_representativeDisplayTypeForStyle:(int64_t)a3;
- (id)_selectedMetricColorsForDistributionStyle:(int64_t)a3;
- (id)buildContextItemWithValue:(id)a3 unit:(id)a4 valueContext:(id)a5 forTimeScope:(int64_t)a6 isUnitIncludedInValue:(BOOL)a7;
- (id)buildOverlayDisplayTypeForTimeScope:(int64_t)a3;
- (id)representativeDisplayType;
- (id)unitString:(id)a3 applicationItems:(id)a4 representativeDisplayType:(id)a5;
- (id)valueString:(id)a3 applicationItems:(id)a4 representativeDisplayType:(id)a5 isUnitIncludedInValue:(BOOL *)a6;
- (void)fetchCachedDataForTimeScope:(int64_t)a3 resolution:(int64_t)a4 dateInterval:(id)a5 completion:(id)a6;
@end

@implementation HKOverlayRoomViewControllerDistributionContext

- (HKOverlayRoomViewControllerDistributionContext)initWithStyle:(int64_t)a3 namedPredicate:(id)a4 overlayChartController:(id)a5 applicationItems:(id)a6 optionalDelegate:(id)a7 options:(int64_t)a8 mode:(int64_t)a9
{
  v34[8] = *MEMORY[0x1E69E9840];
  v16 = a4;
  v17 = a7;
  v32.receiver = self;
  v32.super_class = HKOverlayRoomViewControllerDistributionContext;
  v18 = [(HKOverlayRoomViewControllerIntegratedContext *)&v32 initWithOverlayChartController:a5 applicationItems:a6 mode:a9];
  v19 = v18;
  if (v18)
  {
    v18->_distributionStyle = a3;
    objc_storeWeak(&v18->_optionalDelegate, v17);
    v19->_options = a8;
    objc_storeStrong(&v19->_namedPredicate, a4);
    v33[0] = &unk_1F43821E8;
    v31 = v16;
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

    v16 = v31;
  }

  return v19;
}

- (id)representativeDisplayType
{
  v3 = [(HKOverlayRoomViewControllerDistributionContext *)self distributionStyle];

  return [(HKOverlayRoomViewControllerDistributionContext *)self _representativeDisplayTypeForStyle:v3];
}

- (id)valueString:(id)a3 applicationItems:(id)a4 representativeDisplayType:(id)a5 isUnitIncludedInValue:(BOOL *)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 firstObject];
  v14 = [v13 userInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v34.receiver = self;
    v34.super_class = HKOverlayRoomViewControllerDistributionContext;
    v29 = [(HKOverlayRoomViewControllerIntegratedContext *)&v34 valueString:v10 applicationItems:v11 representativeDisplayType:v12 isUnitIncludedInValue:a6];
    goto LABEL_21;
  }

  v33 = v11;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v16 = v10;
  v17 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (!v17)
  {

    goto LABEL_19;
  }

  v18 = v17;
  v31 = v12;
  v32 = v10;
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
      v23 = [v22 userInfo];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = [v22 userInfo];
        v25 = [v24 identifiers];

        if (!v25)
        {
          continue;
        }

        if (!v19)
        {
          v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        }

        v23 = [v22 userInfo];
        v26 = [v23 identifiers];
        [v19 addObjectsFromArray:v26];
      }
    }

    v18 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
  }

  while (v18);

  v12 = v31;
  v10 = v32;
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
  v11 = v33;

LABEL_21:

  return v29;
}

- (id)unitString:(id)a3 applicationItems:(id)a4 representativeDisplayType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HKOverlayRoomViewControllerDistributionContext *)self optionalDelegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(HKOverlayRoomViewControllerDistributionContext *)self optionalDelegate];
    v14 = [v13 unitString:v8 applicationItems:v9 representativeDisplayType:v10];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = HKOverlayRoomViewControllerDistributionContext;
    v14 = [(HKOverlayRoomViewControllerIntegratedContext *)&v16 unitString:v8 applicationItems:v9 representativeDisplayType:v10];
  }

  return v14;
}

- (id)buildContextItemWithValue:(id)a3 unit:(id)a4 valueContext:(id)a5 forTimeScope:(int64_t)a6 isUnitIncludedInValue:(BOOL)a7
{
  v7 = a7;
  v11 = a4;
  v12 = a5;
  v13 = a3;
  v14 = [(HKOverlayRoomViewControllerDistributionContext *)self representativeDisplayType];
  v15 = objc_alloc_init(HKDisplayTypeContextItem);
  v16 = [(HKOverlayRoomViewControllerDistributionContext *)self _computeTitleAndIdentifierFromStyleAndPredicate];
  v17 = [v16 title];
  [(HKDisplayTypeContextItem *)v15 setTitle:v17];

  v18 = [v16 accessibilityIdentifier];
  [(HKDisplayTypeContextItem *)v15 setAccessibilityIdentifier:v18];

  [(HKDisplayTypeContextItem *)v15 setInfoHidden:1];
  [(HKDisplayTypeContextItem *)v15 setValue:v13];

  [(HKDisplayTypeContextItem *)v15 setValueContext:v12];
  if (([v14 contextItemShouldDisplayEventCountForDistributionStyle:{-[HKOverlayRoomViewControllerDistributionContext distributionStyle](self, "distributionStyle")}] & 1) == 0)
  {
    v19 = [v14 objectType];
    v20 = [(HKOverlayRoomViewControllerIntegratedContext *)self applicationItems];
    v21 = [v20 healthStore];
    v22 = [v19 hk_metadataValueDisplayTypeInStore:v21];

    if (v11)
    {
      [(HKDisplayTypeContextItem *)v15 setUnit:v11];
    }

    else
    {
      v23 = [(HKOverlayRoomViewControllerIntegratedContext *)self applicationItems];
      v24 = [v23 unitController];
      v25 = [v24 localizedDisplayNameForDisplayType:v22];
      [(HKDisplayTypeContextItem *)v15 setUnit:v25];
    }

    -[HKDisplayTypeContextItem setUseTightSpacingBetweenValueAndUnit:](v15, "setUseTightSpacingBetweenValueAndUnit:", [v22 contextItemShouldUseTightSpacingBetweenValueAndUnit]);
    [(HKDisplayTypeContextItem *)v15 setIsUnitIncludedInValue:v7];
  }

  v26 = [HKOverlayContextUtilities defaultMetricColorsForOverlayMode:[(HKOverlayRoomViewControllerIntegratedContext *)self overlayMode]];
  [(HKDisplayTypeContextItem *)v15 setMetricColors:v26];

  v27 = [(HKOverlayRoomViewControllerDistributionContext *)self _selectedMetricColorsForDistributionStyle:[(HKOverlayRoomViewControllerDistributionContext *)self distributionStyle]];
  [(HKDisplayTypeContextItem *)v15 setSelectedMetricColors:v27];

  return v15;
}

- (id)buildOverlayDisplayTypeForTimeScope:(int64_t)a3
{
  v5 = [(HKOverlayRoomViewControllerDistributionContext *)self optionalDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(HKOverlayRoomViewControllerDistributionContext *)self optionalDelegate];
    v8 = [v7 formatterForTimescope:a3];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(HKOverlayRoomViewControllerDistributionContext *)self _selectedMetricColorsForDistributionStyle:[(HKOverlayRoomViewControllerDistributionContext *)self distributionStyle]];
  v10 = [v9 keyColor];

  v11 = [(HKOverlayRoomViewControllerIntegratedContext *)self overlayChartController];
  v12 = [(HKOverlayRoomViewControllerDistributionContext *)self distributionStyle];
  v13 = [(HKOverlayRoomViewControllerDistributionContext *)self options];
  v14 = [(HKOverlayRoomViewControllerDistributionContext *)self namedPredicate];
  v15 = [v11 displayTypeForQuantityDistributionStyle:v12 timeScope:a3 overlayColor:v10 options:v13 alternateFormatter:v8 namedPredicate:v14];

  return v15;
}

- (void)fetchCachedDataForTimeScope:(int64_t)a3 resolution:(int64_t)a4 dateInterval:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = [(HKOverlayRoomViewControllerIntegratedContext *)self overlayChartController];
  v13 = [(HKOverlayRoomViewControllerDistributionContext *)self distributionStyle];
  v14 = [v11 startDate];
  v15 = [v11 endDate];

  v16 = [(HKOverlayRoomViewControllerDistributionContext *)self namedPredicate];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __113__HKOverlayRoomViewControllerDistributionContext_fetchCachedDataForTimeScope_resolution_dateInterval_completion___block_invoke;
  v18[3] = &unk_1E81B5F58;
  v19 = v10;
  v17 = v10;
  [v12 cachedDataForQuantityDistributionStyle:v13 timeScope:a3 resolution:a4 startDate:v14 endDate:v15 namedPredicate:v16 completion:v18];
}

- (id)_representativeDisplayTypeForStyle:(int64_t)a3
{
  v3 = 0;
  if (a3 > 3)
  {
    if (a3 > 5)
    {
      if (a3 != 7)
      {
        if (a3 != 6)
        {
          goto LABEL_15;
        }

        goto LABEL_10;
      }

      v4 = [(HKOverlayRoomViewControllerIntegratedContext *)self applicationItems];
      v5 = [v4 displayTypeController];
      v6 = v5;
      v7 = &unk_1F43822F0;
    }

    else if (a3 == 4)
    {
      v4 = [(HKOverlayRoomViewControllerIntegratedContext *)self applicationItems];
      v5 = [v4 displayTypeController];
      v6 = v5;
      v7 = &unk_1F43822C0;
    }

    else
    {
      v4 = [(HKOverlayRoomViewControllerIntegratedContext *)self applicationItems];
      v5 = [v4 displayTypeController];
      v6 = v5;
      v7 = &unk_1F43822D8;
    }

LABEL_13:
    v3 = [v5 displayTypeWithIdentifier:v7];

    goto LABEL_14;
  }

  if (a3 >= 3)
  {
    if (a3 != 3)
    {
      goto LABEL_15;
    }

    v4 = [(HKOverlayRoomViewControllerIntegratedContext *)self applicationItems];
    v5 = [v4 displayTypeController];
    v6 = v5;
    v7 = &unk_1F43822A8;
    goto LABEL_13;
  }

LABEL_10:
  v4 = [(HKOverlayRoomViewControllerIntegratedContext *)self overlayChartController];
  v3 = [v4 primaryDisplayType];
LABEL_14:

LABEL_15:

  return v3;
}

- (id)_computeTitleAndIdentifierFromStyleAndPredicate
{
  v3 = [(HKOverlayRoomViewControllerDistributionContext *)self distributionStyle];
  v4 = 0;
  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 == 6)
      {
        v5 = [_HKContextTitleAndIdentifier alloc];
        v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v7 = [v6 localizedStringForKey:@"SLEEP" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v8 = MEMORY[0x1E696AEC0];
        v9 = @"Sleep";
      }

      else
      {
        if (v3 != 7)
        {
          goto LABEL_21;
        }

        v5 = [_HKContextTitleAndIdentifier alloc];
        v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v7 = [v6 localizedStringForKey:@"AUDIO_OVERLAY_HEADPHONES_NOTIFICATIONS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v8 = MEMORY[0x1E696AEC0];
        v9 = @"HeadphoneNotification";
      }
    }

    else if (v3 == 4)
    {
      v5 = [_HKContextTitleAndIdentifier alloc];
      v6 = HKHealthKitFrameworkBundle();
      v7 = [v6 localizedStringForKey:@"BRADYCARDIA" value:&stru_1F42FFBE0 table:*MEMORY[0x1E696B910]];
      v8 = MEMORY[0x1E696AEC0];
      v9 = @"LowHeartRate";
    }

    else
    {
      v5 = [_HKContextTitleAndIdentifier alloc];
      v6 = HKHealthKitFrameworkBundle();
      v7 = [v6 localizedStringForKey:@"AUDIO_EXPOSURE_EVENT" value:&stru_1F42FFBE0 table:*MEMORY[0x1E696B910]];
      v8 = MEMORY[0x1E696AEC0];
      v9 = @"NoiseNotification";
    }

    goto LABEL_19;
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v5 = [_HKContextTitleAndIdentifier alloc];
      v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v7 = [v6 localizedStringForKey:@"WORKOUT_SINGULAR" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v8 = MEMORY[0x1E696AEC0];
      v9 = @"Workouts";
    }

    else
    {
      v5 = [_HKContextTitleAndIdentifier alloc];
      v6 = HKHealthKitFrameworkBundle();
      v7 = [v6 localizedStringForKey:@"TACHYCARDIA" value:&stru_1F42FFBE0 table:*MEMORY[0x1E696B910]];
      v8 = MEMORY[0x1E696AEC0];
      v9 = @"HighHeartRate";
    }

    goto LABEL_19;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_21;
    }

    v5 = [_HKContextTitleAndIdentifier alloc];
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v7 = [v6 localizedStringForKey:@"BREATHE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v8 = MEMORY[0x1E696AEC0];
    v9 = @"Breathe";
    goto LABEL_19;
  }

  v10 = [(HKOverlayRoomViewControllerDistributionContext *)self namedPredicate];

  if (v10)
  {
    v11 = [_HKContextTitleAndIdentifier alloc];
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v7 = [(HKOverlayRoomViewControllerDistributionContext *)self namedPredicate];
    v12 = [v7 localizedNameKey];
    v13 = [v6 localizedStringForKey:v12 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v14 = MEMORY[0x1E696AEC0];
    v15 = [(HKOverlayRoomViewControllerDistributionContext *)self namedPredicate];
    v16 = [v15 localizedNameKey];
    v17 = [v14 hk_chartOverlayAccessibilityIdentifier:v16];
    v4 = [(_HKContextTitleAndIdentifier *)v11 initWithTitle:v13 accessibilityIdentifier:v17];

LABEL_20:
    goto LABEL_21;
  }

  if ((self->_options & 2) != 0)
  {
    v5 = [_HKContextTitleAndIdentifier alloc];
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v7 = [v6 localizedStringForKey:@"OVERLAY_RANGE_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v8 = MEMORY[0x1E696AEC0];
    v9 = @"Range";
LABEL_19:
    v12 = [v8 hk_chartOverlayAccessibilityIdentifier:v9];
    v4 = [(_HKContextTitleAndIdentifier *)v5 initWithTitle:v7 accessibilityIdentifier:v12];
    goto LABEL_20;
  }

  v4 = 0;
LABEL_21:

  return v4;
}

- (id)_selectedMetricColorsForDistributionStyle:(int64_t)a3
{
  if (a3)
  {
    v4 = [(HKOverlayRoomViewControllerDistributionContext *)self styleToMetricColors];
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v6 = [v4 objectForKeyedSubscript:v5];
  }

  else
  {
    v4 = [(HKOverlayRoomViewControllerDistributionContext *)self representativeDisplayType];
    v6 = +[HKOverlayContextUtilities selectedMetricColorsForCategory:](HKOverlayContextUtilities, "selectedMetricColorsForCategory:", [v4 categoryIdentifier]);
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HKOverlayRoomViewControllerDistributionContext *)self distributionStyle];
      if (v6 == [(HKOverlayRoomViewControllerDistributionContext *)v5 distributionStyle]&& (v7 = [(HKOverlayRoomViewControllerDistributionContext *)self options], v7 == [(HKOverlayRoomViewControllerDistributionContext *)v5 options]))
      {
        v8 = [(HKOverlayRoomViewControllerDistributionContext *)self optionalDelegate];
        v9 = [v8 cacheDataSource];
        v10 = [v9 name];
        v11 = [(HKOverlayRoomViewControllerDistributionContext *)v5 optionalDelegate];
        v12 = [v11 cacheDataSource];
        v13 = [v12 name];
        v14 = v10 == v13;
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