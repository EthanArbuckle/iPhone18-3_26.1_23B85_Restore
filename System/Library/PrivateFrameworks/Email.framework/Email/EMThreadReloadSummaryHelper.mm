@interface EMThreadReloadSummaryHelper
- (id)summariesToReloadForChanges:(id)changes mailboxScope:(id)scope;
@end

@implementation EMThreadReloadSummaryHelper

- (id)summariesToReloadForChanges:(id)changes mailboxScope:(id)scope
{
  changesCopy = changes;
  scopeCopy = scope;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(changesCopy, "count")}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__EMThreadReloadSummaryHelper_summariesToReloadForChanges_mailboxScope___block_invoke;
  v13[3] = &unk_1E826FBA0;
  v8 = scopeCopy;
  v14 = v8;
  v9 = v7;
  v15 = v9;
  [changesCopy enumerateKeysAndObjectsUsingBlock:v13];
  v10 = v15;
  v11 = v9;

  return v9;
}

void __72__EMThreadReloadSummaryHelper_summariesToReloadForChanges_mailboxScope___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v4 = [v9 displayMessageItemID];
  if (v4)
  {
    v5 = [v9 summary];
    v6 = [MEMORY[0x1E695DFB0] null];

    if (v5 == v6)
    {
      v7 = [v9 displayMessageItemID];
      v8 = [[EMMessageObjectID alloc] initWithCollectionItemID:v7 mailboxScope:*(a1 + 32)];
      if (v8)
      {
        [*(a1 + 40) addObject:v8];
      }
    }
  }
}

@end