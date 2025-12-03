@interface IDEGaugeDataProviderService_Energy
- (id)sampleAttributes:(id)attributes forPIDs:(id)ds;
- (id)startSamplingForPIDs:(id)ds;
- (id)stopSamplingForPIDs:(id)ds;
@end

@implementation IDEGaugeDataProviderService_Energy

- (id)startSamplingForPIDs:(id)ds
{
  dsCopy = ds;
  v4 = +[IDEDataProvider_Energy sharedDataProvider];
  v5 = [v4 startSamplingForPIDs:dsCopy];

  return v5;
}

- (id)sampleAttributes:(id)attributes forPIDs:(id)ds
{
  dsCopy = ds;
  attributesCopy = attributes;
  v7 = +[IDEDataProvider_Energy sharedDataProvider];
  v8 = [v7 captureAttributes:attributesCopy forPIDs:dsCopy];

  return v8;
}

- (id)stopSamplingForPIDs:(id)ds
{
  dsCopy = ds;
  v4 = +[IDEDataProvider_Energy sharedDataProvider];
  v5 = [v4 stopSamplingForPIDs:dsCopy];

  return v5;
}

@end