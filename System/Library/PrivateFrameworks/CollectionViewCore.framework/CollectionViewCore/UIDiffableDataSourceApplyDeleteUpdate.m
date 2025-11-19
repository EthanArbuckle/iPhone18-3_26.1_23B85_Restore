@interface UIDiffableDataSourceApplyDeleteUpdate
@end

@implementation UIDiffableDataSourceApplyDeleteUpdate

uint64_t ___UIDiffableDataSourceApplyDeleteUpdate_block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (!*(*(*(a1 + 48) + 8) + 40) && [*(a1 + 32) count] >= 0xB && (CVCIs__NSOrderedSetI(*(a1 + 32)) & 1) == 0)
  {
    v4 = [*(a1 + 40) identifiers];
    v5 = [v4 count];

    if (v5 >= 0xB)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEB70]) initWithOrderedSet:*(a1 + 32)];
      v7 = *(*(a1 + 48) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }
  }

  v9 = *(*(*(a1 + 48) + 8) + 40);
  if (!v9)
  {
    v9 = *(a1 + 32);
  }

  return [v9 indexOfObject:a2];
}

uint64_t ___UIDiffableDataSourceApplyDeleteUpdate_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!*(*(*(a1 + 48) + 8) + 40) && [*(a1 + 32) count] >= 0xB && (CVCIs__NSOrderedSetI(*(a1 + 32)) & 1) == 0)
  {
    v4 = [*(a1 + 40) identifiers];
    v5 = [v4 count];

    if (v5 >= 0xB)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEB70]) initWithOrderedSet:*(a1 + 32)];
      v7 = *(*(a1 + 48) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }
  }

  v9 = *(*(*(a1 + 48) + 8) + 40);
  if (!v9)
  {
    v9 = *(a1 + 32);
  }

  return [v9 indexOfObject:a2];
}

void ___UIDiffableDataSourceApplyDeleteUpdate_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) rangeForSection:a2];
  if (v5)
  {
    [*(a1 + 40) removeObjectsInRange:{v4, v5}];
  }

  [*(a1 + 32) _deleteSection:a2];
  if (*(a1 + 56) == 1)
  {
    v7 = [MEMORY[0x277CCAA70] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:a2];
    _CVCUpdateItemAlloc();
    v6 = [objc_claimAutoreleasedReturnValue() initWithInitialIndexPath:v7 finalIndexPath:0 updateAction:1];
    [*(a1 + 48) addObject:v6];
  }
}

@end