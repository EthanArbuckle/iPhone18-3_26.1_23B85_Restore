@interface DPPrioValueRandomizer
@end

@implementation DPPrioValueRandomizer

uint64_t __62___DPPrioValueRandomizer_randomize_withLocalEpsilon_metadata___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v5 = [*(a1 + 32) unsignedLongValue];
  if (v5 >= a3)
  {
    return 0;
  }

  v6 = v5;
  result = 1;
  *(a2 + 4 * v6) = 1;
  return result;
}

uint64_t __68___DPPrioValueRandomizer_randomizeVector_withLocalEpsilon_metadata___block_invoke(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = a3;
  if ([*(a1 + 32) length] != a3)
  {
    return 0;
  }

  v6 = [*(a1 + 32) bytes];
  if (!v3)
  {
    return 1;
  }

  do
  {
    v8 = *v6++;
    v7 = v8;
    v9 = v8 < 2;
    if (v8 > 1)
    {
      break;
    }

    *a2++ = v7;
    --v3;
  }

  while (v3);
  return v9;
}

@end