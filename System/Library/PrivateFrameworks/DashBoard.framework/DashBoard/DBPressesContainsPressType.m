@interface DBPressesContainsPressType
@end

@implementation DBPressesContainsPressType

BOOL ___DBPressesContainsPressType_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 type];
  v5 = *(a1 + 32);

  return v4 == v5;
}

@end