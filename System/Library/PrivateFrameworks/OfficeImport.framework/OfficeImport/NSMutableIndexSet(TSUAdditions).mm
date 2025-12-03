@interface NSMutableIndexSet(TSUAdditions)
- (void)tsu_intersectionWithIndexSet:()TSUAdditions;
- (void)tsu_moveIndexesInRange:()TSUAdditions toOffset:;
@end

@implementation NSMutableIndexSet(TSUAdditions)

- (void)tsu_moveIndexesInRange:()TSUAdditions toOffset:
{
  if (a5 < a3 || a5 - a3 >= a4)
  {
    v9 = a3 + a4;
    if (a3 + a4 != a5 && [self firstIndex] != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v9 >= a5)
      {
        v10 = 0;
      }

      else
      {
        v10 = a4;
      }

      v11 = a5 - v10;
      v12 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __67__NSMutableIndexSet_TSUAdditions__tsu_moveIndexesInRange_toOffset___block_invoke;
      v13[3] = &unk_2799C65A0;
      v13[4] = v12;
      v13[5] = a3;
      v13[6] = a4;
      v13[7] = v11;
      [self enumerateRangesInRange:a3 options:a4 usingBlock:{0, v13}];
      [self shiftIndexesStartingAtIndex:a3 + a4 by:-a4];
      [self shiftIndexesStartingAtIndex:v11 by:a4];
      [self addIndexes:v12];
    }
  }
}

- (void)tsu_intersectionWithIndexSet:()TSUAdditions
{
  if ([self count])
  {
    v5 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexesInRange:{objc_msgSend(self, "firstIndex"), objc_msgSend(self, "lastIndex") - objc_msgSend(self, "firstIndex") + 1}];
    [v5 removeIndexes:a3];
    [self removeIndexes:v5];
  }
}

@end