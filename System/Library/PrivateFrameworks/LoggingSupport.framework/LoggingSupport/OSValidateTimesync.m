@interface OSValidateTimesync
@end

@implementation OSValidateTimesync

BOOL ___OSValidateTimesync_block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = _timesync_validate(*(a1 + 48), a2, 0, 0);
  v3 = *(*(*(a1 + 32) + 8) + 24);
  if ((v3 & 0x80000000) == 0)
  {
    return v3 != 0;
  }

  v5 = __error();
  result = 0;
  **(a1 + 40) = *v5;
  return result;
}

@end