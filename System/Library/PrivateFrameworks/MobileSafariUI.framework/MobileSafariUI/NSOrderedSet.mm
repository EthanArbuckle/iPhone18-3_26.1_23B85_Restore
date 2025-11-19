@interface NSOrderedSet
- (id)safari_indexesNotInSet:(void *)a1;
@end

@implementation NSOrderedSet

void __73__NSOrderedSet_SafariExtras__safari_changeFromSet_withModificationCheck___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = a2;
  v5 = [*(a1 + 32) indexOfObject:?];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    v7 = [*(a1 + 40) countOfIndexesInRange:{0, a3}];
    v8 = a3 - v7 + [*(a1 + 48) countOfIndexesInRange:{0, v6}];
    v9 = [*(a1 + 32) objectAtIndexedSubscript:v6];
    v10 = *(a1 + 64);
    if (v10)
    {
      v11 = (*(v10 + 16))(v10, v16, v9);
    }

    else
    {
      v11 = 0;
    }

    if (v6 != v8 && v6 != a3 || v11 != 0)
    {
      v14 = *(a1 + 56);
      v15 = [[IndexMove alloc] initWithIndexBeforeMove:a3 indexAfterMove:v6 modified:v11];
      [v14 addObject:v15];
    }
  }
}

- (id)safari_indexesNotInSet:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53__NSOrderedSet_SafariExtras__safari_indexesNotInSet___block_invoke;
    v6[3] = &unk_2781D95A8;
    v7 = v3;
    a1 = [a1 indexesOfObjectsPassingTest:v6];
  }

  return a1;
}

@end