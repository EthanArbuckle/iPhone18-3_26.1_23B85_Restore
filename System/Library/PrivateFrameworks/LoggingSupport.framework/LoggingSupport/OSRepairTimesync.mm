@interface OSRepairTimesync
@end

@implementation OSRepairTimesync

BOOL ___OSRepairTimesync_block_invoke(uint64_t a1, const char *a2)
{
  v3 = _timesync_repair(*(a1 + 48), a2, &__block_literal_global_2104);
  if (v3 < 0)
  {
    **(a1 + 40) = *__error();
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return v3 >= 0;
}

@end