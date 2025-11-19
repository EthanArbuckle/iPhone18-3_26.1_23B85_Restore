@interface HKSleepStagePercentageContext
+ (double)roundedSleepStageDurationPercentageFromDurations:(id)a3 withCategoryValue:(int64_t)a4;
- (HKOverlaySleepRoomContextChangeDelegate)contextChangeDelegate;
- (HKSleepStagePercentageContext)initWithSleepStage:(int64_t)a3 baseDisplayType:(id)a4 overlayDisplayType:(id)a5 overlayChartController:(id)a6 contextChangeDelegate:(id)a7;
- (double)_computePercentageValueFromChartPoints:(id)a3;
- (id)_contextItemWithPercentageString:(id)a3 timeScope:(int64_t)a4;
- (id)_percentageStringFromValue:(double)a3;
- (void)overlayStateDidChange:(BOOL)a3 contextItem:(id)a4 chartController:(id)a5;
- (void)overlayStateWillChange:(BOOL)a3 contextItem:(id)a4 chartController:(id)a5;
- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7;
@end

@implementation HKSleepStagePercentageContext

- (HKSleepStagePercentageContext)initWithSleepStage:(int64_t)a3 baseDisplayType:(id)a4 overlayDisplayType:(id)a5 overlayChartController:(id)a6 contextChangeDelegate:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v24.receiver = self;
  v24.super_class = HKSleepStagePercentageContext;
  v17 = [(HKSleepStagePercentageContext *)&v24 init];
  v18 = v17;
  if (v17)
  {
    v17->_sleepStage = a3;
    objc_storeStrong(&v17->_baseDisplayType, a4);
    objc_storeStrong(&v18->_overlayDisplayType, a5);
    objc_storeStrong(&v18->_overlayChartController, a6);
    objc_storeWeak(&v18->_contextChangeDelegate, v16);
    v19 = [(HKSleepStagePercentageContext *)v18 _contextItemWithPercentageString:&stru_1F42FFBE0 timeScope:5];
    lastUpdatedItem = v18->_lastUpdatedItem;
    v18->_lastUpdatedItem = v19;

    v21 = [MEMORY[0x1E696ADA0] hk_percentNumberFormatter];
    percentageFormatter = v18->_percentageFormatter;
    v18->_percentageFormatter = v21;

    [(NSNumberFormatter *)v18->_percentageFormatter setRoundingMode:2];
  }

  return v18;
}

- (void)overlayStateWillChange:(BOOL)a3 contextItem:(id)a4 chartController:(id)a5
{
  v5 = a3;
  v6 = [(HKSleepStagePercentageContext *)self contextChangeDelegate:a3];
  [v6 setStagePercentageContextWillBeSelected:v5];
}

- (void)overlayStateDidChange:(BOOL)a3 contextItem:(id)a4 chartController:(id)a5
{
  v5 = a3;
  v6 = [(HKSleepStagePercentageContext *)self contextChangeDelegate:a3];
  [v6 setStagePercentageContextSelected:v5];
}

- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7
{
  v10 = a3;
  v11 = a7;
  v12 = [(HKSleepStagePercentageContext *)self baseDisplayType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v14 = [(HKSleepStagePercentageContext *)self baseDisplayType];
    v15 = [(HKSleepStagePercentageContext *)self overlayChartController];
    v16 = [v14 graphSeriesForTimeScope:a5];
    v17 = [v10 startDate];
    v18 = [v10 endDate];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __116__HKSleepStagePercentageContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
    v19[3] = &unk_1E81B6E70;
    v19[4] = self;
    v21 = a5;
    v20 = v11;
    [v15 cachedDataForCustomGraphSeries:v16 timeScope:a5 resolution:0 startDate:v17 endDate:v18 completion:v19];
  }
}

void __116__HKSleepStagePercentageContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    [*(a1 + 32) _computePercentageValueFromChartPoints:a2];
    v6 = [*(a1 + 32) _percentageStringFromValue:?];
    v4 = [*(a1 + 32) _contextItemWithPercentageString:v6 timeScope:*(a1 + 48)];
    [*(a1 + 32) setLastUpdatedItem:v4];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

- (id)_contextItemWithPercentageString:(id)a3 timeScope:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(HKDisplayTypeContextItem);
  v8 = [HKSleepUtilities sleepStageContextTitleForSleepValue:[(HKSleepStagePercentageContext *)self sleepStage] timeScope:a4];
  [(HKDisplayTypeContextItem *)v7 setTitle:v8];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [(HKDisplayTypeContextItem *)v7 title];
  v11 = [v9 hk_chartOverlayAccessibilityIdentifier:v10];
  [(HKDisplayTypeContextItem *)v7 setAccessibilityIdentifier:v11];

  v12 = [MEMORY[0x1E69DC888] hk_sleepColorForSleepAnalysis:{-[HKSleepStagePercentageContext sleepStage](self, "sleepStage")}];
  v13 = [HKDisplayTypeContextItemTitleAccessory titleAccessoryWithImagedNamed:@"circle.fill" imageColor:v12];
  [(HKDisplayTypeContextItem *)v7 setTitleAccessory:v13];

  v14 = [MEMORY[0x1E69DC888] hk_sleepPrimaryTextColorForSleepAnalysis:{-[HKSleepStagePercentageContext sleepStage](self, "sleepStage")}];
  v15 = [HKDisplayTypeContextItemTitleAccessory titleAccessoryWithImagedNamed:@"circle" imageColor:v14];
  [(HKDisplayTypeContextItem *)v7 setSelectedTitleAccessory:v15];

  [(HKDisplayTypeContextItem *)v7 setInfoHidden:1];
  [(HKDisplayTypeContextItem *)v7 setUseTightSpacingBetweenValueAndUnit:1];
  [(HKDisplayTypeContextItem *)v7 setIsUnitIncludedInValue:1];
  v16 = [(NSNumberFormatter *)self->_percentageFormatter percentSymbol];
  [(HKDisplayTypeContextItem *)v7 setUnit:v16];

  [(HKDisplayTypeContextItem *)v7 setValue:v6];
  v17 = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
  v18 = [HKUIMetricColors defaultContextViewColorsUsingColor:v17];
  [(HKDisplayTypeContextItem *)v7 setMetricColors:v18];

  v19 = [HKUIMetricColors sleepColorsForSleepAnalysis:[(HKSleepStagePercentageContext *)self sleepStage]];
  [(HKDisplayTypeContextItem *)v7 setSelectedMetricColors:v19];

  return v7;
}

- (double)_computePercentageValueFromChartPoints:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v49;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v49 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v48 + 1) + 8 * i) userInfo];
        v12 = [v11 chartPointInfoProvider];
        v13 = [v12 sleepDaySummaries];
        [v5 addObjectsFromArray:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v8);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v45;
    v18 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v45 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v24 = *(*(&v44 + 1) + 8 * j);
        [v24 awakeDuration];
        v21 = v21 + v25;
        [v24 remSleepDuration];
        v20 = v20 + v26;
        [v24 coreSleepDuration];
        v19 = v19 + v27;
        [v24 deepSleepDuration];
        v18 = v18 + v28;
        [v24 awakeDuration];
        v30 = v29;
        [v24 remSleepDuration];
        v32 = v30 + v31;
        [v24 coreSleepDuration];
        v34 = v32 + v33;
        [v24 deepSleepDuration];
        v22 = v22 + v34 + v35;
      }

      v16 = [v14 countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v16);
  }

  else
  {
    v18 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
  }

  v52[0] = &unk_1F4383C10;
  v36 = [MEMORY[0x1E696AD98] numberWithDouble:v21 / v22 * 100.0];
  v53[0] = v36;
  v52[1] = &unk_1F4383C28;
  v37 = [MEMORY[0x1E696AD98] numberWithDouble:v20 / v22 * 100.0];
  v53[1] = v37;
  v52[2] = &unk_1F4383C40;
  v38 = [MEMORY[0x1E696AD98] numberWithDouble:v19 / v22 * 100.0];
  v53[2] = v38;
  v52[3] = &unk_1F4383C58;
  v39 = [MEMORY[0x1E696AD98] numberWithDouble:v18 / v22 * 100.0];
  v53[3] = v39;
  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:4];

  [objc_opt_class() roundedSleepStageDurationPercentageFromDurations:v40 withCategoryValue:{-[HKSleepStagePercentageContext sleepStage](self, "sleepStage")}];
  if (v22 <= 2.22507386e-308)
  {
    v42 = -1.0;
  }

  else
  {
    v42 = v41;
  }

  return v42;
}

+ (double)roundedSleepStageDurationPercentageFromDurations:(id)a3 withCategoryValue:(int64_t)a4
{
  v73 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (!v9)
  {
    v20 = 0.0;
    v18 = v8;
LABEL_28:

    goto LABEL_29;
  }

  v10 = v9;
  v63 = v6;
  v11 = 0;
  v12 = *v67;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v67 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v66 + 1) + 8 * i);
      v15 = [v8 objectForKeyedSubscript:v14];
      [v15 doubleValue];
      v17 = v16;

      if (v17 >= 1.0)
      {
        v11 += v17;
      }

      else
      {
        [v7 addObject:v14];
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v66 objects:v72 count:16];
  }

  while (v10);

  if (v11)
  {
    if (v11 == 100)
    {
      v6 = v63;
      v18 = [v8 objectForKeyedSubscript:v63];
      [v18 doubleValue];
      v20 = v19;
    }

    else
    {
      if ([v7 count])
      {
        v21 = 99;
      }

      else
      {
        v21 = 100;
      }

      v22 = v21 - v11;
      v70[0] = &unk_1F4383C10;
      v23 = MEMORY[0x1E696AD98];
      v64 = [v8 objectForKeyedSubscript:&unk_1F4383C10];
      [v64 doubleValue];
      v25 = v24;
      v61 = [v8 objectForKeyedSubscript:&unk_1F4383C10];
      v60 = [v23 numberWithDouble:{v25 - objc_msgSend(v61, "integerValue")}];
      v71[0] = v60;
      v70[1] = &unk_1F4383C28;
      v26 = MEMORY[0x1E696AD98];
      v59 = [v8 objectForKeyedSubscript:&unk_1F4383C28];
      [v59 doubleValue];
      v28 = v27;
      v58 = [v8 objectForKeyedSubscript:&unk_1F4383C28];
      v57 = [v26 numberWithDouble:{v28 - objc_msgSend(v58, "integerValue")}];
      v71[1] = v57;
      v70[2] = &unk_1F4383C40;
      v29 = MEMORY[0x1E696AD98];
      v30 = [v8 objectForKeyedSubscript:&unk_1F4383C40];
      [v30 doubleValue];
      v32 = v31;
      v33 = [v8 objectForKeyedSubscript:&unk_1F4383C40];
      v34 = [v29 numberWithDouble:{v32 - objc_msgSend(v33, "integerValue")}];
      v71[2] = v34;
      v70[3] = &unk_1F4383C58;
      v35 = MEMORY[0x1E696AD98];
      v36 = [v8 objectForKeyedSubscript:&unk_1F4383C58];
      [v36 doubleValue];
      v38 = v37;
      v39 = [v8 objectForKeyedSubscript:&unk_1F4383C58];
      v40 = [v35 numberWithDouble:{v38 - objc_msgSend(v39, "integerValue")}];
      v71[3] = v40;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:4];

      v62 = v41;
      v42 = [v41 keysSortedByValueUsingComparator:&__block_literal_global_50];
      v65 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v8];
      v43 = [v42 count];
      if (v22 >= 1 && v43 >= 1)
      {
        v44 = 0;
        v45 = v43 & 0x7FFFFFFF;
        do
        {
          v46 = [v42 objectAtIndexedSubscript:v44];
          v47 = [v7 containsObject:v46];

          if (v47)
          {
            ++v22;
          }

          else
          {
            v48 = MEMORY[0x1E696AD98];
            v49 = [v42 objectAtIndexedSubscript:v44];
            v50 = [v8 objectForKey:v49];
            [v50 doubleValue];
            v52 = [v48 numberWithDouble:v51 + 1.0];
            v53 = [v42 objectAtIndexedSubscript:v44];
            [v65 setObject:v52 forKey:v53];
          }

          ++v44;
        }

        while (v44 < v22 && v44 < v45);
      }

      v6 = v63;
      v54 = [v65 objectForKeyedSubscript:v63];
      [v54 doubleValue];
      v20 = v55;

      v18 = v62;
    }

    goto LABEL_28;
  }

  v20 = 0.0;
  v6 = v63;
LABEL_29:

  return v20;
}

- (id)_percentageStringFromValue:(double)a3
{
  if (a3 == -1.0)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:{@"com.apple.HealthUI", -1.0}];
    v5 = v4;
    v6 = @"NO_DATA_PERCENT";
  }

  else
  {
    if (a3 <= 2.22507386e-308 || a3 >= 1.0)
    {
      v5 = [(HKSleepStagePercentageContext *)self percentageFormatter];
      v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3 / 100.0];
      v9 = [v5 stringFromNumber:v8];

      goto LABEL_10;
    }

    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v5 = v4;
    v6 = @"LESS_THAN_1_PERCENT";
  }

  v9 = [v4 localizedStringForKey:v6 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Acacia"];
LABEL_10:

  return v9;
}

- (HKOverlaySleepRoomContextChangeDelegate)contextChangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contextChangeDelegate);

  return WeakRetained;
}

@end