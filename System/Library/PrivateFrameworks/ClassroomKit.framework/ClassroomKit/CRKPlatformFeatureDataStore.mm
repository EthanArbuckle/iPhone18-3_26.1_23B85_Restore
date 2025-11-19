@interface CRKPlatformFeatureDataStore
+ (CRKFeatureDataStoreProtocol)sharedDataStore;
@end

@implementation CRKPlatformFeatureDataStore

+ (CRKFeatureDataStoreProtocol)sharedDataStore
{
  if (sharedDataStore_onceToken != -1)
  {
    +[CRKPlatformFeatureDataStore sharedDataStore];
  }

  v3 = sharedDataStore_dataStore;

  return v3;
}

void __46__CRKPlatformFeatureDataStore_sharedDataStore__block_invoke()
{
  v2 = objc_opt_new();
  v0 = [v2 makeFeatureDataStore];
  v1 = sharedDataStore_dataStore;
  sharedDataStore_dataStore = v0;
}

@end