@interface NSPredicate(FCCKConversion)
- (uint64_t)fcck_queryFiltersWithTranslator:()FCCKConversion error:;
@end

@implementation NSPredicate(FCCKConversion)

- (uint64_t)fcck_queryFiltersWithTranslator:()FCCKConversion error:
{
  NSClassFromString(&cfstr_Nstruepredicat.isa);
  if (objc_opt_isKindOfClass())
  {
    return MEMORY[0x1E695E0F0];
  }

  if (a4)
  {
    v6 = MEMORY[0x1E695B978];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *a4 = [v6 errorWithCode:1017 format:{@"Unexpected predicate type: %@", v8}];
  }

  return 0;
}

@end