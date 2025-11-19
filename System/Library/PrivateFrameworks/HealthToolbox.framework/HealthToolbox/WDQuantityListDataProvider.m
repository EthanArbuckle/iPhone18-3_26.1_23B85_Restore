@interface WDQuantityListDataProvider
- (WDQuantityListDataProvider)initWithDisplayType:(id)a3 profile:(id)a4;
- (id)sampleTypes;
- (id)textForObject:(id)a3;
- (id)titleForSection:(unint64_t)a3;
@end

@implementation WDQuantityListDataProvider

- (WDQuantityListDataProvider)initWithDisplayType:(id)a3 profile:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = WDQuantityListDataProvider;
  v7 = [(WDSampleListDataProvider *)&v10 initWithDisplayType:v6 profile:a4];
  if (v7)
  {
    v8 = [v6 sampleType];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Attempt to create a quantity list provider with a non-quantity data group"];
    }
  }

  return v7;
}

- (id)sampleTypes
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [(WDSampleListDataProvider *)self displayType];
  v3 = [v2 sampleType];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)textForObject:(id)a3
{
  v4 = a3;
  v5 = [(WDSampleListDataProvider *)self displayType];
  v6 = [(WDSampleListDataProvider *)self unitController];
  v7 = [v6 unitForDisplayType:v5];

  v8 = [v4 quantity];

  [v8 doubleValueForUnit:v7];
  v10 = v9;

  v11 = [v5 presentation];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  v13 = [v11 adjustedValueForDaemonValue:v12];

  v14 = [(WDSampleListDataProvider *)self unitController];
  v15 = HKFormattedStringFromValueForContext();

  return v15;
}

- (id)titleForSection:(unint64_t)a3
{
  v5 = [(WDSampleListDataProvider *)self displayType];
  v6 = [(WDSampleListDataProvider *)self unitController];
  v7 = HKFormatterIncludesUnitForDisplayTypeInContext();

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WDQuantityListDataProvider;
    v8 = [(WDSampleListDataProvider *)&v10 titleForSection:a3];
  }

  return v8;
}

@end