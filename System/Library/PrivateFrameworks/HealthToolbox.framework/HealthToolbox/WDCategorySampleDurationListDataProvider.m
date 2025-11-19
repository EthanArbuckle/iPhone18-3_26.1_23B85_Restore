@interface WDCategorySampleDurationListDataProvider
- (id)sampleTypes;
- (id)titleForSection:(unint64_t)a3;
@end

@implementation WDCategorySampleDurationListDataProvider

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