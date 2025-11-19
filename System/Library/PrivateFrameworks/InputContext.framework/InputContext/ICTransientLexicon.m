@interface ICTransientLexicon
@end

@implementation ICTransientLexicon

void __42___ICTransientLexicon_addEntity_forEntry___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = [*(*(a1 + 32) + 24) objectForKey:?];
  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:*(a1 + 40)];
    [*(*(a1 + 32) + 24) setObject:v5 forKey:v7];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3];
  [v5 addObject:v6];
}

void __49___ICTransientLexicon_TestingSupport__getEntries__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = LXEntryCopyString();
  [v1 addObject:v2];
}

void __42___ICTransientLexicon_sortKeyEquivalents___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [_ICTransientLexicon _mutableNamedEntitiesForLXEntry:?];
  v2 = [v3 allObjects];
  [v1 addObjectsFromArray:v2];
}

@end