@interface BCCollectionDetailDataMapper
- (id)cloudDataFromRecord:(id)record;
@end

@implementation BCCollectionDetailDataMapper

- (id)cloudDataFromRecord:(id)record
{
  recordCopy = record;
  v4 = [[BCMutableCollectionDetail alloc] initWithRecord:recordCopy];

  return v4;
}

@end