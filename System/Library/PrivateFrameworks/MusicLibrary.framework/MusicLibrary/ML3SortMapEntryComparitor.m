@interface ML3SortMapEntryComparitor
@end

@implementation ML3SortMapEntryComparitor

uint64_t _ML3SortMapEntryComparitor_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(a2 + 24);
  v5 = compareSortKeys(v4, v3);

  return v5;
}

@end