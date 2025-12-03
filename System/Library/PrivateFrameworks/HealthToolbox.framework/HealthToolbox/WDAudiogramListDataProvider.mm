@interface WDAudiogramListDataProvider
- (NSArray)audiogramSamples;
- (id)sampleTypes;
- (id)textForObject:(id)object;
- (id)titleForSection:(unint64_t)section;
@end

@implementation WDAudiogramListDataProvider

- (NSArray)audiogramSamples
{
  samples = [(WDSampleListDataProvider *)self samples];
  allSamples = [samples allSamples];

  return allSamples;
}

- (id)sampleTypes
{
  v6[1] = *MEMORY[0x277D85DE8];
  audiogramSampleType = [MEMORY[0x277CCD720] audiogramSampleType];
  v6[0] = audiogramSampleType;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)textForObject:(id)object
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  yodel = [features yodel];

  v6 = HKHealthKitFrameworkBundle();
  v7 = v6;
  if (yodel)
  {
    v8 = @"Localizable-Yodel";
  }

  else
  {
    v8 = *MEMORY[0x277CCC1B0];
  }

  v9 = [v6 localizedStringForKey:@"AUDIOGRAM" value:&stru_28641D9B8 table:v8];

  return v9;
}

- (id)titleForSection:(unint64_t)section
{
  v5.receiver = self;
  v5.super_class = WDAudiogramListDataProvider;
  v3 = [(WDSampleListDataProvider *)&v5 titleForSection:section];

  return v3;
}

@end