@interface NSMutableDictionary(Merge)
- (uint64_t)mergeWith:()Merge overwriteConflicts:;
@end

@implementation NSMutableDictionary(Merge)

- (uint64_t)mergeWith:()Merge overwriteConflicts:
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__NSMutableDictionary_Merge__mergeWith_overwriteConflicts___block_invoke;
  v5[3] = &unk_278E230A8;
  v5[4] = a1;
  v6 = a4;
  return [a3 enumerateKeysAndObjectsUsingBlock:v5];
}

@end