@interface _HKSleepDurationAmountContext
- (HKOverlaySleepRoomContextChangeDelegate)contextChangeDelegate;
- (_HKSleepDurationAmountContext)initWithBaseDisplayType:(id)a3 overlayChartController:(id)a4 contextChangeDelegate:(id)a5;
- (id)_amountStringFromCounts:(id)a3 timeScope:(int64_t)a4;
- (id)_contextItemWithAmountString:(id)a3;
- (id)_countsOfSleepDataFromChartPoints:(id)a3;
- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7;
@end

@implementation _HKSleepDurationAmountContext

- (_HKSleepDurationAmountContext)initWithBaseDisplayType:(id)a3 overlayChartController:(id)a4 contextChangeDelegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = _HKSleepDurationAmountContext;
  v12 = [(_HKSleepDurationAmountContext *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_overlayChartController, a4);
    objc_storeStrong(&v13->_baseDisplayType, a3);
    objc_storeWeak(&v13->_contextChangeDelegate, v11);
    v14 = [(_HKSleepDurationAmountContext *)v13 _contextItemWithAmountString:&stru_1F42FFBE0];
    lastUpdatedItem = v13->_lastUpdatedItem;
    v13->_lastUpdatedItem = v14;
  }

  return v13;
}

- (id)_contextItemWithAmountString:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(HKDisplayTypeContextItem);
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"SLEEP_DURATION_AMOUNTS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];
  [(HKDisplayTypeContextItem *)v4 setTitle:v6];

  v7 = [MEMORY[0x1E696AEC0] hk_chartOverlayAccessibilityIdentifier:@"SLEEP_DURATION_AMOUNTS"];
  [(HKDisplayTypeContextItem *)v4 setAccessibilityIdentifier:v7];

  [(HKDisplayTypeContextItem *)v4 setInfoHidden:1];
  [(HKDisplayTypeContextItem *)v4 setUnit:&stru_1F42FFBE0];
  [(HKDisplayTypeContextItem *)v4 setValue:v3];

  v8 = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
  v9 = [HKUIMetricColors defaultContextViewColorsUsingColor:v8];
  [(HKDisplayTypeContextItem *)v4 setMetricColors:v9];

  v10 = +[HKUIMetricColors sleepColors];
  [(HKDisplayTypeContextItem *)v4 setSelectedMetricColors:v10];

  return v4;
}

- (id)_countsOfSleepDataFromChartPoints:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = objc_alloc_init(_HKSleepDurationAmountCounts);
    [(_HKSleepDurationAmountCounts *)v5 setChartPointsWithSleepDataCount:0];
    [(_HKSleepDurationAmountCounts *)v5 setTotalChartPoints:0];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
            [v12 inBedValue];
            if (v13 > 2.22044605e-16 || ([v12 asleepValue], v14 > 2.22044605e-16))
            {
              [(_HKSleepDurationAmountCounts *)v5 setChartPointsWithSleepDataCount:[(_HKSleepDurationAmountCounts *)v5 chartPointsWithSleepDataCount]+ 1];
            }

            [(_HKSleepDurationAmountCounts *)v5 setTotalChartPoints:[(_HKSleepDurationAmountCounts *)v5 totalChartPoints]+ 1];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_amountStringFromCounts:(id)a3 timeScope:(int64_t)a4
{
  v5 = a3;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v12 = [v6 localizedStringForKey:@"SLEEP_AVERAGE_NO_DAY_COUNTS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];
    goto LABEL_16;
  }

  v6 = HKIntegerFormatter();
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "chartPointsWithSleepDataCount")}];
  v8 = [v6 stringFromNumber:v7];

  v9 = 0;
  if (a4 <= 3)
  {
    if (a4 < 3)
    {
      goto LABEL_9;
    }

    if (a4 != 3)
    {
      goto LABEL_14;
    }

    v13 = MEMORY[0x1E696AEC0];
    v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v15 = v14;
    v16 = @"SLEEP_AMOUNTS_WEEKS";
LABEL_13:
    v17 = [v14 localizedStringForKey:v16 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];
    v9 = [v13 localizedStringWithFormat:v17, objc_msgSend(v5, "totalChartPoints")];

    goto LABEL_14;
  }

  if ((a4 - 4) < 2)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v15 = v14;
    v16 = @"SLEEP_AMOUNTS_DAYS";
    goto LABEL_13;
  }

  if ((a4 - 7) < 2)
  {
LABEL_9:
    v9 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"UNSUPPORTED_SLEEP_COUNT"];
    goto LABEL_14;
  }

  if (a4 != 6)
  {
LABEL_14:
    v18 = MEMORY[0x1E696AEC0];
    v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v19 = [v11 localizedStringForKey:@"SLEEP_AMOUNTS_DAY_COUNT_%@_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];
    v12 = [v18 stringWithFormat:v19, v8, v9];

    goto LABEL_15;
  }

  v10 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v11 = [v9 localizedStringForKey:@"SLEEP_AMOUNTS_SINGLE_DAY_COUNT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];
  v12 = [v10 localizedStringWithFormat:v11, 1];
LABEL_15:

LABEL_16:

  return v12;
}

- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7
{
  v10 = a3;
  v11 = a7;
  v12 = [(_HKSleepDurationAmountContext *)self baseDisplayType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v14 = [(_HKSleepDurationAmountContext *)self baseDisplayType];
    v15 = [(_HKSleepDurationAmountContext *)self overlayChartController];
    v16 = [v14 graphSeriesForTimeScope:a5];
    v17 = [v10 startDate];
    v18 = [v10 endDate];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __116___HKSleepDurationAmountContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
    v19[3] = &unk_1E81B6E70;
    v19[4] = self;
    v21 = a5;
    v20 = v11;
    [v15 cachedDataForCustomGraphSeries:v16 timeScope:a5 resolution:0 startDate:v17 endDate:v18 completion:v19];
  }
}

- (HKOverlaySleepRoomContextChangeDelegate)contextChangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contextChangeDelegate);

  return WeakRetained;
}

@end