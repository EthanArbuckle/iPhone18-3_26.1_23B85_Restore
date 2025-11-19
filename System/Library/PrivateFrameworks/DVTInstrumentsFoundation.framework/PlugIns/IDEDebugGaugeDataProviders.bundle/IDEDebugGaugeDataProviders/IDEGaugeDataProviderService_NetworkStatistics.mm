@interface IDEGaugeDataProviderService_NetworkStatistics
- (id)sampleAttributes:(id)a3 forPIDs:(id)a4;
@end

@implementation IDEGaugeDataProviderService_NetworkStatistics

- (id)sampleAttributes:(id)a3 forPIDs:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IDEDataProvider_NetworkStatistics sharedDataProvider];
  v8 = [v7 captureAttributes:v6 forPIDs:v5];

  return v8;
}

@end