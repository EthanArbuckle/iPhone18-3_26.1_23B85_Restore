@interface NSMutableDictionary
@end

@implementation NSMutableDictionary

void __59__NSMutableDictionary_Merge__mergeWith_overwriteConflicts___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];
  if (!v6)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 mergeWith:v5 overwriteConflicts:*(a1 + 40)];
      goto LABEL_7;
    }
  }

  if (*(a1 + 40) == 1)
  {
LABEL_6:
    [*(a1 + 32) setObject:v5 forKey:v7];
  }

LABEL_7:
}

@end