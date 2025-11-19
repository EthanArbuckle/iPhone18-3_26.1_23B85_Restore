@interface LNArrayValueType
@end

@implementation LNArrayValueType

id __42__LNArrayValueType_CATSupport__cat_value___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 memberValueType];
  v5 = [v4 cat_value:v3];

  return v5;
}

@end