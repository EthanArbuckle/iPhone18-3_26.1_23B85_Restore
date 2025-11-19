@interface WDAudiogramListDataProvider
- (NSArray)audiogramSamples;
- (id)sampleTypes;
- (id)textForObject:(id)a3;
- (id)titleForSection:(unint64_t)a3;
@end

@implementation WDAudiogramListDataProvider

- (NSArray)audiogramSamples
{
  v2 = [(WDSampleListDataProvider *)self samples];
  v3 = [v2 allSamples];

  return v3;
}

- (id)sampleTypes
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCD720] audiogramSampleType];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)textForObject:(id)a3
{
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 features];
  v5 = [v4 yodel];

  v6 = HKHealthKitFrameworkBundle();
  v7 = v6;
  if (v5)
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

- (id)titleForSection:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = WDAudiogramListDataProvider;
  v3 = [(WDSampleListDataProvider *)&v5 titleForSection:a3];

  return v3;
}

@end