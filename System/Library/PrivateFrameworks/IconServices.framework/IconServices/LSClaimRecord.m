@interface LSClaimRecord
@end

@implementation LSClaimRecord

uint64_t __64__LSClaimRecord_IconServicesAdditions___IS_iconProvideingRecord__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 identifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    v8 = [v5 iconDictionary];
    v9 = [v8 count];

    if (v9)
    {
      v7 = 1;
      *a3 = 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end