@interface NSComparisonPredicate
@end

@implementation NSComparisonPredicate

uint64_t __70__NSComparisonPredicate_EmailFoundationAdditions__ef_containsKeyPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 expressionType] == 3)
  {
    v4 = [v3 keyPath];
    v5 = [v4 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __57__NSComparisonPredicate_EFSQLGeneratorPredicateNode__log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_6;
  log_log_6 = v1;
}

@end