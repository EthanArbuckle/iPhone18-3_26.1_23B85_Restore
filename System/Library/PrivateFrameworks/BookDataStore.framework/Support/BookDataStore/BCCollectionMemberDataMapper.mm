@interface BCCollectionMemberDataMapper
- (id)cloudDataFromRecord:(id)record;
@end

@implementation BCCollectionMemberDataMapper

- (id)cloudDataFromRecord:(id)record
{
  recordCopy = record;
  v4 = [[BCMutableCollectionMember alloc] initWithRecord:recordCopy];

  return v4;
}

@end