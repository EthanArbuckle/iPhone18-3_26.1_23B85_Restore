@interface MUIMailboxFiltersFormatter
- (id)_stringForFilters:(id)a3;
- (id)stringForObjectValue:(id)a3;
@end

@implementation MUIMailboxFiltersFormatter

- (id)_stringForFilters:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 ef_map:&__block_literal_global_25];
    v5 = _EFLocalizedString();
    v6 = [v4 componentsJoinedByString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)stringForObjectValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 ef_all:&__block_literal_global_4_1])
  {
    v5 = [(MUIMailboxFiltersFormatter *)self _stringForFilters:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __51__MUIMailboxFiltersFormatter_stringForObjectValue___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end