@interface WDQuantityListStatisticsDataProvider
- (id)textForObject:(id)object;
- (id)titleForSection:(unint64_t)section;
@end

@implementation WDQuantityListStatisticsDataProvider

- (id)textForObject:(id)object
{
  objectCopy = object;
  displayType = [(WDSampleListStatisticsDataProvider *)self displayType];
  unitController = [(WDSampleListStatisticsDataProvider *)self unitController];
  v7 = [unitController unitForDisplayType:displayType];

  objectType = [displayType objectType];
  aggregationStyle = [objectType aggregationStyle];

  if (aggregationStyle == 3)
  {
    v10 = sel_averageQuantity;
  }

  else
  {
    if (aggregationStyle)
    {
      minimumQuantity = [objectCopy minimumQuantity];
      [minimumQuantity doubleValueForUnit:v7];
      v20 = v19;

      maximumQuantity = [objectCopy maximumQuantity];
      [maximumQuantity doubleValueForUnit:v7];
      v23 = v22;

      presentation = [displayType presentation];
      v25 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
      v15 = [presentation adjustedValueForDaemonValue:v25];

      presentation2 = [displayType presentation];
      v27 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
      unitController4 = [presentation2 adjustedValueForDaemonValue:v27];

      unitController2 = [(WDSampleListStatisticsDataProvider *)self unitController];
      v29 = HKFormattedStringFromValueForContext();

      unitController3 = [(WDSampleListStatisticsDataProvider *)self unitController];
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

  [objc_msgSend(objectCopy performSelector:{v10), "doubleValueForUnit:", v7}];
  v12 = v11;
  presentation3 = [displayType presentation];
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
  v15 = [presentation3 adjustedValueForDaemonValue:v14];

  unitController4 = [(WDSampleListStatisticsDataProvider *)self unitController];
  v17 = HKFormattedStringFromValueForContext();
LABEL_9:

LABEL_10:

  return v17;
}

- (id)titleForSection:(unint64_t)section
{
  displayType = [(WDSampleListStatisticsDataProvider *)self displayType];
  unitController = [(WDSampleListStatisticsDataProvider *)self unitController];
  v7 = HKFormatterIncludesUnitForDisplayTypeInContext();

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WDQuantityListStatisticsDataProvider;
    v8 = [(WDSampleListStatisticsDataProvider *)&v10 titleForSection:section];
  }

  return v8;
}

@end