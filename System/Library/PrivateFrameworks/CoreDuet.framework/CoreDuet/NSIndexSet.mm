@interface NSIndexSet
@end

@implementation NSIndexSet

uint64_t __61__NSIndexSet_CoreDuetConvencience___cd_commaSeparatedIndexes__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 32;
  v3 = *(a1 + 32);
  if (*(*(*(v4 + 8) + 8) + 24) != 1)
  {
    return [v3 appendFormat:@", %lu", a2];
  }

  result = [v3 appendFormat:@"%lu", a2];
  *(*(*(a1 + 40) + 8) + 24) = 0;
  return result;
}

@end