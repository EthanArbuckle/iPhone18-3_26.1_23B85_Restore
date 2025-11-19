@interface NLStringTokenizerGetSubTokensOfCompound
@end

@implementation NLStringTokenizerGetSubTokensOfCompound

void *___NLStringTokenizerGetSubTokensOfCompound_block_invoke(void *result, uint64_t a2, _BYTE *a3)
{
  v3 = result[5];
  if (v3)
  {
    *(v3 + 16 * *(*(result[4] + 8) + 24)) = *a2;
  }

  v4 = result[6];
  if (v4)
  {
    *(v4 + 8 * *(*(result[4] + 8) + 24)) = *(a2 + 16);
  }

  if (++*(*(result[4] + 8) + 24) == result[7])
  {
    *a3 = 1;
  }

  return result;
}

@end