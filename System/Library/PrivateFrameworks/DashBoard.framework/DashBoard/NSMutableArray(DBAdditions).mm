@interface NSMutableArray(DBAdditions)
- (uint64_t)db_removeFirstObjectIfMatching:()DBAdditions;
- (uint64_t)db_removeFirstObjectsIfMatching:()DBAdditions;
- (void)db_mutatingMap:()DBAdditions;
@end

@implementation NSMutableArray(DBAdditions)

- (void)db_mutatingMap:()DBAdditions
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__NSMutableArray_DBAdditions__db_mutatingMap___block_invoke;
  v6[3] = &unk_278F041F8;
  v6[4] = a1;
  v7 = v4;
  v5 = v4;
  [a1 enumerateObjectsWithOptions:2 usingBlock:v6];
}

- (uint64_t)db_removeFirstObjectIfMatching:()DBAdditions
{
  v4 = a3;
  v5 = [a1 firstObject];
  v6 = [v5 isEqual:v4];

  if (v6)
  {
    [a1 removeObjectAtIndex:0];
  }

  return v6;
}

- (uint64_t)db_removeFirstObjectsIfMatching:()DBAdditions
{
  v4 = a3;
  v5 = [v4 count];
  if (v5 <= [a1 count] && (v6 = objc_msgSend(v4, "count"), objc_msgSend(a1, "subarrayWithRange:", 0, v6), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToArray:", v4), v7, v8))
  {
    [a1 removeObjectsInRange:{0, v6}];
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end