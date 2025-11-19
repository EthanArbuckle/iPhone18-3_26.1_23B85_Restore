@interface ICSearchIndexImplementation
- (CSSearchableIndex)searchableIndex;
- (void)beginIndexBatch;
- (void)deleteAllSearchableItemsWithCompletionHandler:(id)a3;
- (void)deleteSearchableItemsWithDomainIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)deleteSearchableItemsWithIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)endIndexBatchWithClientState:(id)a3 completionHandler:(id)a4;
- (void)fetchLastClientStateWithCompletionHandler:(id)a3;
- (void)indexSearchableItems:(id)a3 completionHandler:(id)a4;
- (void)slowFetchAttributes:(id)a3 protectionClass:(id)a4 bundleID:(id)a5 identifiers:(id)a6 completionHandler:(id)a7;
@end

@implementation ICSearchIndexImplementation

- (CSSearchableIndex)searchableIndex
{
  searchableIndex = self->_searchableIndex;
  if (!searchableIndex)
  {
    v4 = objc_alloc(MEMORY[0x1E6964E78]);
    v5 = ICSearchableIndexName();
    v6 = ICNotesAppBundleIdentifier();
    v7 = [v4 initWithName:v5 bundleIdentifier:v6];
    v8 = self->_searchableIndex;
    self->_searchableIndex = v7;

    searchableIndex = self->_searchableIndex;
  }

  return searchableIndex;
}

- (void)beginIndexBatch
{
  v2 = [(ICSearchIndexImplementation *)self searchableIndex];
  [v2 beginIndexBatch];
}

- (void)endIndexBatchWithClientState:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICSearchIndexImplementation *)self searchableIndex];
  [v8 endIndexBatchWithClientState:v7 completionHandler:v6];
}

- (void)indexSearchableItems:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICSearchIndexImplementation *)self searchableIndex];
  [v8 indexSearchableItems:v7 completionHandler:v6];
}

- (void)deleteAllSearchableItemsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ICSearchIndexImplementation *)self searchableIndex];
  [v5 deleteAllSearchableItemsWithCompletionHandler:v4];
}

- (void)deleteSearchableItemsWithIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICSearchIndexImplementation *)self searchableIndex];
  [v8 deleteSearchableItemsWithIdentifiers:v7 completionHandler:v6];
}

- (void)deleteSearchableItemsWithDomainIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICSearchIndexImplementation *)self searchableIndex];
  [v8 deleteSearchableItemsWithDomainIdentifiers:v7 completionHandler:v6];
}

- (void)slowFetchAttributes:(id)a3 protectionClass:(id)a4 bundleID:(id)a5 identifiers:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(ICSearchIndexImplementation *)self searchableIndex];
  [v17 slowFetchAttributes:v16 protectionClass:v15 bundleID:v14 identifiers:v13 completionHandler:v12];
}

- (void)fetchLastClientStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ICSearchIndexImplementation *)self searchableIndex];
  [v5 fetchLastClientStateWithCompletionHandler:v4];
}

@end