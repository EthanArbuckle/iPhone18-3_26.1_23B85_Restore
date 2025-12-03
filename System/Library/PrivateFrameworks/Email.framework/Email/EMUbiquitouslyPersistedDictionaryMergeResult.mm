@interface EMUbiquitouslyPersistedDictionaryMergeResult
- (EMUbiquitouslyPersistedDictionaryMergeResult)initWithChangedItems:(id)items deletedItems:(id)deletedItems requiresSynchronizing:(BOOL)synchronizing;
@end

@implementation EMUbiquitouslyPersistedDictionaryMergeResult

- (EMUbiquitouslyPersistedDictionaryMergeResult)initWithChangedItems:(id)items deletedItems:(id)deletedItems requiresSynchronizing:(BOOL)synchronizing
{
  itemsCopy = items;
  deletedItemsCopy = deletedItems;
  v14.receiver = self;
  v14.super_class = EMUbiquitouslyPersistedDictionaryMergeResult;
  v11 = [(EMUbiquitouslyPersistedDictionaryMergeResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_changedItems, items);
    objc_storeStrong(&v12->_deletedItems, deletedItems);
    v12->_requiresSynchronizing = synchronizing;
  }

  return v12;
}

@end