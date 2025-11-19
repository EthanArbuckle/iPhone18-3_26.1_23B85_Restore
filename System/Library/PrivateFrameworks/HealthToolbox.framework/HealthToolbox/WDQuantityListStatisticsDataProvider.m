@interface WDQuantityListStatisticsDataProvider
- (id)textForObject:(id)a3;
- (id)titleForSection:(unint64_t)a3;
@end

@implementation WDQuantityListStatisticsDataProvider

- (id)textForObject:(id)a3
{
  v4 = a3;
  v5 = [(WDSampleListStatisticsDataProvider *)self displayType];
  v6 = [(WDSampleListStatisticsDataProvider *)self unitController];
  v7 = [v6 unitForDisplayType:v5];

  v8 = [v5 objectType];
  v9 = [v8 aggregationStyle];

  if (v9 == 3)
  {
    v10 = sel_averageQuantity;
  }

  else
  {
    if (v9)
    {
      v18 = [v4 minimumQuantity];
      [v18 doubleValueForUnit:v7];
      v20 = v19;

      v21 = [v4 maximumQuantity];
      [v21 doubleValueForUnit:v7];
      v23 = v22;

      v24 = [v5 presentation];
      v25 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
      v15 = [v24 adjustedValueForDaemonValue:v25];

      v26 = [v5 presentation];
      v27 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
      v16 = [v26 adjustedValueForDaemonValue:v27];

      v28 = [(WDSampleListStatisticsDataProvider *)self unitController];
      v29 = HKFormattedStringFromValueForContext();

      v30 = [(WDSampleListStatisticsDataProvider *)self unitController];
      v31 = HKFormattedStringFromValueForContext();

      v32 = MEMORY[0x277CCACA8];
      v33 = WDBundle();
      v34 = [v33 localizedStringForKey:@"SHOW_ALL_DATA_MIN_MAX" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
      v17 = [v32 stringWithFormat:v34, v29, v31];

      goto LABEL_9;
    }

    v10 = sel_sumQuantity;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v17 = 0;
    goto LABEL_10;
  }

  [objc_msgSend(v4 performSelector:{v10), "doubleValueForUnit:", v7}];
  v12 = v11;
  v13 = [v5 presentation];
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
  v15 = [v13 adjustedValueForDaemonValue:v14];

  v16 = [(WDSampleListStatisticsDataProvider *)self unitController];
  v17 = HKFormattedStringFromValueForContext();
LABEL_9:

LABEL_10:

  return v17;
}

- (id)titleForSection:(unint64_t)a3
{
  v5 = [(WDSampleListStatisticsDataProvider *)self displayType];
  v6 = [(WDSampleListStatisticsDataProvider *)self unitController];
  v7 = HKFormatterIncludesUnitForDisplayTypeInContext();

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WDQuantityListStatisticsDataProvider;
    v8 = [(WDSampleListStatisticsDataProvider *)&v10 titleForSection:a3];
  }

  return v8;
}

@end