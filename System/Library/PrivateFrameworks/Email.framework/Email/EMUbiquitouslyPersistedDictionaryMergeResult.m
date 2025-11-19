@interface EMUbiquitouslyPersistedDictionaryMergeResult
- (EMUbiquitouslyPersistedDictionaryMergeResult)initWithChangedItems:(id)a3 deletedItems:(id)a4 requiresSynchronizing:(BOOL)a5;
@end

@implementation EMUbiquitouslyPersistedDictionaryMergeResult

- (EMUbiquitouslyPersistedDictionaryMergeResult)initWithChangedItems:(id)a3 deletedItems:(id)a4 requiresSynchronizing:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = EMUbiquitouslyPersistedDictionaryMergeResult;
  v11 = [(EMUbiquitouslyPersistedDictionaryMergeResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_changedItems, a3);
    objc_storeStrong(&v12->_deletedItems, a4);
    v12->_requiresSynchronizing = a5;
  }

  return v12;
}

@end