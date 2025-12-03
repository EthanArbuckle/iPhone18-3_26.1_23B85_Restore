@interface ICSearchIndexImplementation
- (CSSearchableIndex)searchableIndex;
- (void)beginIndexBatch;
- (void)deleteAllSearchableItemsWithCompletionHandler:(id)handler;
- (void)deleteSearchableItemsWithDomainIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)deleteSearchableItemsWithIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)endIndexBatchWithClientState:(id)state completionHandler:(id)handler;
- (void)fetchLastClientStateWithCompletionHandler:(id)handler;
- (void)indexSearchableItems:(id)items completionHandler:(id)handler;
- (void)slowFetchAttributes:(id)attributes protectionClass:(id)class bundleID:(id)d identifiers:(id)identifiers completionHandler:(id)handler;
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
  searchableIndex = [(ICSearchIndexImplementation *)self searchableIndex];
  [searchableIndex beginIndexBatch];
}

- (void)endIndexBatchWithClientState:(id)state completionHandler:(id)handler
{
  handlerCopy = handler;
  stateCopy = state;
  searchableIndex = [(ICSearchIndexImplementation *)self searchableIndex];
  [searchableIndex endIndexBatchWithClientState:stateCopy completionHandler:handlerCopy];
}

- (void)indexSearchableItems:(id)items completionHandler:(id)handler
{
  handlerCopy = handler;
  itemsCopy = items;
  searchableIndex = [(ICSearchIndexImplementation *)self searchableIndex];
  [searchableIndex indexSearchableItems:itemsCopy completionHandler:handlerCopy];
}

- (void)deleteAllSearchableItemsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  searchableIndex = [(ICSearchIndexImplementation *)self searchableIndex];
  [searchableIndex deleteAllSearchableItemsWithCompletionHandler:handlerCopy];
}

- (void)deleteSearchableItemsWithIdentifiers:(id)identifiers completionHandler:(id)handler
{
  handlerCopy = handler;
  identifiersCopy = identifiers;
  searchableIndex = [(ICSearchIndexImplementation *)self searchableIndex];
  [searchableIndex deleteSearchableItemsWithIdentifiers:identifiersCopy completionHandler:handlerCopy];
}

- (void)deleteSearchableItemsWithDomainIdentifiers:(id)identifiers completionHandler:(id)handler
{
  handlerCopy = handler;
  identifiersCopy = identifiers;
  searchableIndex = [(ICSearchIndexImplementation *)self searchableIndex];
  [searchableIndex deleteSearchableItemsWithDomainIdentifiers:identifiersCopy completionHandler:handlerCopy];
}

- (void)slowFetchAttributes:(id)attributes protectionClass:(id)class bundleID:(id)d identifiers:(id)identifiers completionHandler:(id)handler
{
  handlerCopy = handler;
  identifiersCopy = identifiers;
  dCopy = d;
  classCopy = class;
  attributesCopy = attributes;
  searchableIndex = [(ICSearchIndexImplementation *)self searchableIndex];
  [searchableIndex slowFetchAttributes:attributesCopy protectionClass:classCopy bundleID:dCopy identifiers:identifiersCopy completionHandler:handlerCopy];
}

- (void)fetchLastClientStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  searchableIndex = [(ICSearchIndexImplementation *)self searchableIndex];
  [searchableIndex fetchLastClientStateWithCompletionHandler:handlerCopy];
}

@end