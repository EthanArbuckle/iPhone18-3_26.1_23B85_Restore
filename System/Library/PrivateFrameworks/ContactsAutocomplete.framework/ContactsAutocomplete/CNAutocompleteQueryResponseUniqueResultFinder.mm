@interface CNAutocompleteQueryResponseUniqueResultFinder
+ (id)findUniqueResults:(id)results duplicateResultHandler:(id)handler;
- (CNAutocompleteQueryResponseUniqueResultFinder)initWithResults:(id)results duplicateResultHandler:(id)handler;
- (id)findUniqueResults;
- (void)generateHashes;
- (void)indexHashes;
- (void)removeDuplicateResults;
- (void)resolveDuplicatesWithinIndexes:(id)indexes;
@end

@implementation CNAutocompleteQueryResponseUniqueResultFinder

- (id)findUniqueResults
{
  [(CNAutocompleteQueryResponseUniqueResultFinder *)self generateHashes];
  [(CNAutocompleteQueryResponseUniqueResultFinder *)self indexHashes];
  [(CNAutocompleteQueryResponseUniqueResultFinder *)self removeDuplicateResults];
  uniqueResults = self->_uniqueResults;
  uniqueResultIndexes = self->_uniqueResultIndexes;

  return [(NSMutableArray *)uniqueResults objectsAtIndexes:uniqueResultIndexes];
}

- (void)generateHashes
{
  v5 = [(NSMutableArray *)self->_uniqueResults _cn_map:CNAutocompleteResultStringForHashingTransform];
  v3 = [v5 mutableCopy];
  hashes = self->_hashes;
  self->_hashes = v3;
}

- (void)indexHashes
{
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  hashes = self->_hashes;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __60__CNAutocompleteQueryResponseUniqueResultFinder_indexHashes__block_invoke;
  v17 = &unk_2781C4E80;
  v6 = dictionary;
  v18 = v6;
  v7 = indexSet;
  v19 = v7;
  [(NSMutableArray *)hashes enumerateObjectsUsingBlock:&v14];
  hashIndex = self->_hashIndex;
  self->_hashIndex = v6;
  v9 = v6;

  firstIndexes = self->_firstIndexes;
  self->_firstIndexes = v7;
  v11 = v7;

  v12 = [(NSIndexSet *)self->_firstIndexes mutableCopy:v14];
  uniqueResultIndexes = self->_uniqueResultIndexes;
  self->_uniqueResultIndexes = v12;
}

- (void)removeDuplicateResults
{
  v3 = self->_hashIndex;
  hashes = self->_hashes;
  firstIndexes = self->_firstIndexes;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__CNAutocompleteQueryResponseUniqueResultFinder_removeDuplicateResults__block_invoke;
  v7[3] = &unk_2781C4E80;
  v8 = v3;
  selfCopy = self;
  v6 = v3;
  [(NSMutableArray *)hashes enumerateObjectsAtIndexes:firstIndexes options:0 usingBlock:v7];
}

+ (id)findUniqueResults:(id)results duplicateResultHandler:(id)handler
{
  handlerCopy = handler;
  resultsCopy = results;
  v8 = [[self alloc] initWithResults:resultsCopy duplicateResultHandler:handlerCopy];

  findUniqueResults = [v8 findUniqueResults];

  return findUniqueResults;
}

- (CNAutocompleteQueryResponseUniqueResultFinder)initWithResults:(id)results duplicateResultHandler:(id)handler
{
  resultsCopy = results;
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = CNAutocompleteQueryResponseUniqueResultFinder;
  v8 = [(CNAutocompleteQueryResponseUniqueResultFinder *)&v15 init];
  if (v8)
  {
    v9 = [resultsCopy mutableCopy];
    uniqueResults = v8->_uniqueResults;
    v8->_uniqueResults = v9;

    v11 = [handlerCopy copy];
    duplicateResultHandler = v8->_duplicateResultHandler;
    v8->_duplicateResultHandler = v11;

    v13 = v8;
  }

  return v8;
}

void __60__CNAutocompleteQueryResponseUniqueResultFinder_indexHashes__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) objectForKey:?];
  if (!v5)
  {
    v5 = [MEMORY[0x277CCAB58] indexSet];
    [*(a1 + 32) setObject:v5 forKey:v6];
    [*(a1 + 40) addIndex:a3];
  }

  [v5 addIndex:a3];
}

void __71__CNAutocompleteQueryResponseUniqueResultFinder_removeDuplicateResults__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKey:a2];
  [*(a1 + 40) resolveDuplicatesWithinIndexes:v3];
}

- (void)resolveDuplicatesWithinIndexes:(id)indexes
{
  indexesCopy = indexes;
  v4 = [indexesCopy count] >= 2;
  v5 = indexesCopy;
  if (v4)
  {
    firstIndex = [indexesCopy firstIndex];
    v7 = [(NSMutableArray *)self->_uniqueResults objectAtIndex:firstIndex];
    v8 = [indexesCopy indexGreaterThanIndex:firstIndex];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v8; i != 0x7FFFFFFFFFFFFFFFLL; i = [indexesCopy indexGreaterThanIndex:i])
      {
        v10 = [(NSMutableArray *)self->_uniqueResults objectAtIndexedSubscript:i];
        if ([v7 isEqual:v10])
        {
          (*(self->_duplicateResultHandler + 2))();
        }

        else
        {
          [(NSMutableIndexSet *)self->_uniqueResultIndexes addIndex:i];
        }
      }
    }

    v5 = indexesCopy;
  }
}

@end