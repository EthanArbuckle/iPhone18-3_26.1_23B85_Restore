@interface CSStoreEnumerateUnits
@end

@implementation CSStoreEnumerateUnits

uint64_t ___CSStoreEnumerateUnits_block_invoke(uint64_t a1, _DWORD *a2, BOOL *a3)
{
  v7 = 0;
  v4 = a2[1];
  v5 = (4 * *a2);
  result = (*(*(a1 + 32) + 16))();
  *a3 = v7 != 0;
  return result;
}

@end