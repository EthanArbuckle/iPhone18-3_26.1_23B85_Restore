@interface MTSyncChangeStore
+ (id)inMemoryStore;
+ (id)persistentStoreForDataModel:(id)a3;
@end

@implementation MTSyncChangeStore

+ (id)persistentStoreForDataModel:(id)a3
{
  v3 = a3;
  v4 = [[MTPersistentSyncChangeStore alloc] initWithDataModel:v3];

  return v4;
}

+ (id)inMemoryStore
{
  v2 = objc_opt_new();

  return v2;
}

@end