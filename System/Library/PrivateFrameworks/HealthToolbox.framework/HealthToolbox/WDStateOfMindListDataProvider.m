@interface WDStateOfMindListDataProvider
- (id)sampleTypes;
- (id)textForObject:(id)a3;
@end

@implementation WDStateOfMindListDataProvider

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
  v3 = [a3 valenceClassification];

  return MEMORY[0x28216C818](v3);
}

@end