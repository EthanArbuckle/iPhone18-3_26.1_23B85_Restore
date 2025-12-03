@interface MUIMailboxFiltersFormatter
- (id)_stringForFilters:(id)filters;
- (id)stringForObjectValue:(id)value;
@end

@implementation MUIMailboxFiltersFormatter

- (id)_stringForFilters:(id)filters
{
  filtersCopy = filters;
  if ([filtersCopy count])
  {
    v4 = [filtersCopy ef_map:&__block_literal_global_25];
    v5 = _EFLocalizedString();
    v6 = [v4 componentsJoinedByString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy ef_all:&__block_literal_global_4_1])
  {
    v5 = [(MUIMailboxFiltersFormatter *)self _stringForFilters:valueCopy];
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