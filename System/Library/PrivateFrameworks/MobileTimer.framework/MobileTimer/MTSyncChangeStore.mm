@interface MTSyncChangeStore
+ (id)inMemoryStore;
+ (id)persistentStoreForDataModel:(id)model;
@end

@implementation MTSyncChangeStore

+ (id)persistentStoreForDataModel:(id)model
{
  modelCopy = model;
  v4 = [[MTPersistentSyncChangeStore alloc] initWithDataModel:modelCopy];

  return v4;
}

+ (id)inMemoryStore
{
  v2 = objc_opt_new();

  return v2;
}

@end