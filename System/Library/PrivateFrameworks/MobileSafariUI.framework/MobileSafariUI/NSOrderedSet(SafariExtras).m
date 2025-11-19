@interface NSOrderedSet(SafariExtras)
- (SetChange)safari_changeFromSet:()SafariExtras withModificationCheck:;
@end

@implementation NSOrderedSet(SafariExtras)

- (SetChange)safari_changeFromSet:()SafariExtras withModificationCheck:
{
  v6 = a3;
  v7 = a4;
  if (a1 == v6)
  {
    v10 = +[SetChange emptyChange];
    goto LABEL_9;
  }

  if ([a1 count])
  {
    if ([v6 count])
    {
      v12 = [(NSOrderedSet *)v6 safari_indexesNotInSet:a1];
      v13 = [(NSOrderedSet *)a1 safari_indexesNotInSet:v6];
      v14 = MEMORY[0x277CBEB58];
      v15 = [a1 count];
      if (v15 >= [v6 count])
      {
        v16 = v6;
      }

      else
      {
        v16 = a1;
      }

      v17 = [v14 setWithCapacity:{objc_msgSend(v16, "count")}];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __73__NSOrderedSet_SafariExtras__safari_changeFromSet_withModificationCheck___block_invoke;
      v22[3] = &unk_2781DC438;
      v22[4] = a1;
      v23 = v12;
      v24 = v13;
      v25 = v17;
      v26 = v7;
      v18 = v17;
      v19 = v13;
      v8 = v12;
      [v6 enumerateObjectsUsingBlock:v22];
      v20 = [SetChange alloc];
      v21 = [MEMORY[0x277CCAA78] indexSet];
      v10 = [(SetChange *)v20 initWithInsertedIndexes:v19 deletedIndexes:v8 modifiedIndexes:v21 moves:v18];

      goto LABEL_8;
    }

    v8 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(a1, "count")}];
    v9 = [[SetChange alloc] initAsInsertAllWithIndexes:v8];
  }

  else
  {
    v8 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(v6, "count")}];
    v9 = [[SetChange alloc] initAsDeleteAllWithIndexes:v8];
  }

  v10 = v9;
LABEL_8:

LABEL_9:

  return v10;
}

@end