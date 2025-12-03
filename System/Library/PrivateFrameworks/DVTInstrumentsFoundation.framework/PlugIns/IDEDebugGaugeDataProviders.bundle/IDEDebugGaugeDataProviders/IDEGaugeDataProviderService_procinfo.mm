@interface IDEGaugeDataProviderService_procinfo
- (id)sampleAttributes:(id)attributes forPIDs:(id)ds;
@end

@implementation IDEGaugeDataProviderService_procinfo

- (id)sampleAttributes:(id)attributes forPIDs:(id)ds
{
  dsCopy = ds;
  attributesCopy = attributes;
  v7 = +[IDEDataProvider_procinfo sharedDataProvider];
  v8 = [v7 captureAttributes:attributesCopy forPIDs:dsCopy];

  return v8;
}

@end