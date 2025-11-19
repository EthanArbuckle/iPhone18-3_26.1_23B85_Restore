@interface OSLogIndexEnumerator
@end

@implementation OSLogIndexEnumerator

uint64_t __81___OSLogIndexEnumerator_enumerateTracepointsInRange_timesync_options_usingBlock___block_invoke(void *a1, uint64_t a2)
{
  *(*(a1[5] + 8) + 24) = *(a2 + 8);
  v3 = *(a1[6] + 8);
  if ((*(v3 + 24) & 1) == 0)
  {
    if (*a2 == 1)
    {
      if (*(a2 + 64))
      {
        return 1;
      }
    }

    else if ((*a2 - 1) >= 2)
    {
      *(v3 + 24) = 1;
    }
  }

  v4 = a1[4];
  v5 = a1[8];
  if (((*(a1[4] + 16))() & 1) == 0)
  {
    result = 0;
    *(*(a1[7] + 8) + 24) = 0;
    return result;
  }

  return 1;
}

@end