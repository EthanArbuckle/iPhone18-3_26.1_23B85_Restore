@interface BCCollectionDetailDataMapper
- (id)cloudDataFromRecord:(id)a3;
@end

@implementation BCCollectionDetailDataMapper

- (id)cloudDataFromRecord:(id)a3
{
  v3 = a3;
  v4 = [[BCMutableCollectionDetail alloc] initWithRecord:v3];

  return v4;
}

@end