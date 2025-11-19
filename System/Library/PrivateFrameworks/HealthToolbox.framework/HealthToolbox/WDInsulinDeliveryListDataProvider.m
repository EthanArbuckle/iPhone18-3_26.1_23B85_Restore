@interface WDInsulinDeliveryListDataProvider
- (id)sampleTypes;
- (id)textForObject:(id)a3;
- (id)titleForSection:(unint64_t)a3;
@end

@implementation WDInsulinDeliveryListDataProvider

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
  v24[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WDSampleListDataProvider *)self displayType];
  v6 = [(WDSampleListDataProvider *)self unitController];
  v23 = v5;
  v7 = [v6 unitForDisplayType:v5];
  v8 = MEMORY[0x277CCABB0];
  v9 = [v4 quantity];
  [v9 doubleValueForUnit:v7];
  v10 = [v8 numberWithDouble:?];

  v11 = HKFormattedStringFromValue();
  v12 = [v6 localizedDisplayNameForUnit:v7 value:v10];
  v13 = [v4 metadata];

  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCC4C8]];
  v15 = [v14 integerValue];

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSULIN_DELIVERY_REASON_%zd", v15];
  v24[0] = v11;
  v24[1] = @" ";
  v24[2] = v12;
  v24[3] = @" ";
  v17 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v18 = [v17 localizedStringForKey:v16 value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
  v24[4] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:5];
  v20 = HKUIJoinStringsForLocale();

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)titleForSection:(unint64_t)a3
{
  if ([(WDSampleListDataProvider *)self numberOfObjectsForSection:a3])
  {
    v4 = [(WDSampleListDataProvider *)self displayType];
    v5 = [v4 localization];
    v6 = [v5 displayName];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end