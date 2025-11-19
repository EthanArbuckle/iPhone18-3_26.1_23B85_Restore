@interface CRKFeatureDataStoreProvider
- (id)makeFeatureDataStore;
@end

@implementation CRKFeatureDataStoreProvider

- (id)makeFeatureDataStore
{
  v2 = objc_opt_new();

  return v2;
}

@end