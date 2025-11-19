@interface BCCollectionMemberDataMapper
- (id)cloudDataFromRecord:(id)a3;
@end

@implementation BCCollectionMemberDataMapper

- (id)cloudDataFromRecord:(id)a3
{
  v3 = a3;
  v4 = [[BCMutableCollectionMember alloc] initWithRecord:v3];

  return v4;
}

@end