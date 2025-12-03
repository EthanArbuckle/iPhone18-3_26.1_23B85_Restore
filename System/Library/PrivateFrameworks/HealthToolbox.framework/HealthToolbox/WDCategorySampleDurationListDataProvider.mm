@interface WDCategorySampleDurationListDataProvider
- (id)sampleTypes;
- (id)titleForSection:(unint64_t)section;
@end

@implementation WDCategorySampleDurationListDataProvider

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

- (id)titleForSection:(unint64_t)section
{
  if ([(WDSampleListDataProvider *)self numberOfObjectsForSection:section])
  {
    displayType = [(WDSampleListDataProvider *)self displayType];
    localization = [displayType localization];
    displayName = [localization displayName];
  }

  else
  {
    displayName = 0;
  }

  return displayName;
}

@end