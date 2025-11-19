@interface UIDiffableDataSourceApplyInsertUpdate
@end

@implementation UIDiffableDataSourceApplyInsertUpdate

uint64_t ___UIDiffableDataSourceApplyInsertUpdate_block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) destinationIdentifier];
  if ([*(a1 + 32) destinationIdentifierIsSectionIdentifier])
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = [*(a1 + 40) indexOfObject:v2];
LABEL_8:
    v5 = v4;
    goto LABEL_9;
  }

  if (v2)
  {
    v4 = [*(a1 + 48) sectionForGlobalIndex:(*(*(a1 + 64) + 16))()];
    goto LABEL_8;
  }

  v5 = [*(a1 + 40) count] - 1;
LABEL_9:
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v2)
    {
      goto LABEL_11;
    }

LABEL_18:
    v8 = [*(a1 + 56) count];
    goto LABEL_19;
  }

  v9 = [MEMORY[0x277CCA890] currentHandler];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyInsertUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)_block_invoke_2"}];
  [v9 handleFailureInFunction:v10 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:298 description:{@"Invalid parameter not satisfying: %@", @"section != NSNotFound"}];

  if (!v2)
  {
    goto LABEL_18;
  }

LABEL_11:
  if ([*(a1 + 32) destinationIdentifierIsSectionIdentifier])
  {
    v6 = [*(a1 + 48) rangeForSection:v5];
    v8 = v6 + v7;
  }

  else
  {
    v8 = (*(*(a1 + 64) + 16))();
    if ([*(a1 + 32) relativePosition] == 1)
    {
      ++v8;
    }
  }

LABEL_19:
  if (v5 >= [*(a1 + 48) numberOfSections])
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<_CVCCollectionUpdateItem>> * _Nonnull _UIDiffableDataSourceApplyInsertUpdate(_UIDiffableDataSourceUpdate *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, NSMutableOrderedSet *__strong _Nonnull, _UIDataSourceSnapshotter *__strong _Nonnull, BOOL)_block_invoke_2"}];
    [v18 handleFailureInFunction:v19 file:@"_UIDiffableDataSourceUpdate.m" lineNumber:318 description:@"Invalid section. Did you forget to create one?"];
  }

  v11 = [*(a1 + 56) count];
  v12 = *(a1 + 56);
  v13 = [*(a1 + 32) identifiers];
  _UIDiffableDataSourceInsertIdentifiersAtIndex(v12, v13, v8, 1);

  v14 = *(*(a1 + 72) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

  v16 = [*(a1 + 56) count] - v11;
  [*(a1 + 48) _incrementSectionCount:v5 byCount:v16];

  return v16;
}

uint64_t ___UIDiffableDataSourceApplyInsertUpdate_block_invoke(uint64_t a1, uint64_t a2)
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

@end