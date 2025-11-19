@interface CNAutocompleteQueryResponseUniqueResultFinder
+ (id)findUniqueResults:(id)a3 duplicateResultHandler:(id)a4;
- (CNAutocompleteQueryResponseUniqueResultFinder)initWithResults:(id)a3 duplicateResultHandler:(id)a4;
- (id)findUniqueResults;
- (void)generateHashes;
- (void)indexHashes;
- (void)removeDuplicateResults;
- (void)resolveDuplicatesWithinIndexes:(id)a3;
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
  v3 = [MEMORY[0x277CCAB58] indexSet];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  hashes = self->_hashes;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __60__CNAutocompleteQueryResponseUniqueResultFinder_indexHashes__block_invoke;
  v17 = &unk_2781C4E80;
  v6 = v4;
  v18 = v6;
  v7 = v3;
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
  v9 = self;
  v6 = v3;
  [(NSMutableArray *)hashes enumerateObjectsAtIndexes:firstIndexes options:0 usingBlock:v7];
}

+ (id)findUniqueResults:(id)a3 duplicateResultHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithResults:v7 duplicateResultHandler:v6];

  v9 = [v8 findUniqueResults];

  return v9;
}

- (CNAutocompleteQueryResponseUniqueResultFinder)initWithResults:(id)a3 duplicateResultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = CNAutocompleteQueryResponseUniqueResultFinder;
  v8 = [(CNAutocompleteQueryResponseUniqueResultFinder *)&v15 init];
  if (v8)
  {
    v9 = [v6 mutableCopy];
    uniqueResults = v8->_uniqueResults;
    v8->_uniqueResults = v9;

    v11 = [v7 copy];
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

- (void)resolveDuplicatesWithinIndexes:(id)a3
{
  v11 = a3;
  v4 = [v11 count] >= 2;
  v5 = v11;
  if (v4)
  {
    v6 = [v11 firstIndex];
    v7 = [(NSMutableArray *)self->_uniqueResults objectAtIndex:v6];
    v8 = [v11 indexGreaterThanIndex:v6];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v8; i != 0x7FFFFFFFFFFFFFFFLL; i = [v11 indexGreaterThanIndex:i])
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

    v5 = v11;
  }
}

@end