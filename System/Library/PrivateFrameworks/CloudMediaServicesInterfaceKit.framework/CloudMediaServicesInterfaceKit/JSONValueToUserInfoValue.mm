@interface JSONValueToUserInfoValue
@end

@implementation JSONValueToUserInfoValue

void ___JSONValueToUserInfoValue_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = _JSONValueToUserInfoValue(a3);
  [v4 setValue:v6 forKey:v5];
}

@end