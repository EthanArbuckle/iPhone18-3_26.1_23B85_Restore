@interface JustPositionOffset
@end

@implementation JustPositionOffset

uint64_t ___qsort_JustPositionOffset_t_block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*a2 == *a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (*a2 > *a3)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

void ___qsort_big_JustPositionOffset_t_block_invoke(uint64_t a1)
{
  madvise((**(a1 + 32) + 16 * *(*(a1 + 32) + 8)), 16 * (*(*(a1 + 32) + 16) - *(*(a1 + 32) + 8)), 4);
  v2 = *(a1 + 32);

  OSAtomicEnqueue(&qsort_cached_allocations, v2, 0);
}

@end