@interface OSLogFileFindExhaustivePoint
@end

@implementation OSLogFileFindExhaustivePoint

uint64_t ___OSLogFileFindExhaustivePoint_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*a2 == 24587)
  {
    if (*(a2 + 4) > 0x10u)
    {
      result = 0;
      **(a1 + 48) = *(a2 + 32);
      return result;
    }

    result = 0;
    v4 = *(*(a1 + 32) + 8);
    v5 = 2;
LABEL_9:
    *(v4 + 24) = v5;
    return result;
  }

  if (*a2 != 4096)
  {
    return 1;
  }

  if (*(a2 + 8) <= 0xA7uLL)
  {
    result = 0;
    v4 = *(*(a1 + 32) + 8);
    v5 = 22;
    goto LABEL_9;
  }

  **(a1 + 40) = *(a2 + 144);
  if ((*(a2 + 52) & 2) == 0)
  {
    return 1;
  }

  result = 0;
  **(a1 + 48) = 0;
  return result;
}

@end