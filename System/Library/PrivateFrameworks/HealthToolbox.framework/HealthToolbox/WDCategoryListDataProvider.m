@interface WDCategoryListDataProvider
- (id)sampleTypes;
- (id)textForObject:(id)a3;
@end

@implementation WDCategoryListDataProvider

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
  v6 = [v5 hk_enumeratedValueLabels];

  v7 = MEMORY[0x277CCABB0];
  v8 = [v4 value];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 objectForKeyedSubscript:v9];

  return v10;
}

@end