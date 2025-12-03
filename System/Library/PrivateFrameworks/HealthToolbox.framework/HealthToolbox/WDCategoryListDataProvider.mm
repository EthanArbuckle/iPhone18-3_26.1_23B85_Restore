@interface WDCategoryListDataProvider
- (id)sampleTypes;
- (id)textForObject:(id)object;
@end

@implementation WDCategoryListDataProvider

- (id)sampleTypes
{
  v7[1] = *MEMORY[0x277D85DE8];
  displayType = [(WDSampleListDataProvider *)self displayType];
  sampleType = [displayType sampleType];
  v7[0] = sampleType;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)textForObject:(id)object
{
  objectCopy = object;
  displayType = [(WDSampleListDataProvider *)self displayType];
  hk_enumeratedValueLabels = [displayType hk_enumeratedValueLabels];

  v7 = MEMORY[0x277CCABB0];
  value = [objectCopy value];

  v9 = [v7 numberWithInteger:value];
  v10 = [hk_enumeratedValueLabels objectForKeyedSubscript:v9];

  return v10;
}

@end