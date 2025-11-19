@interface CUIPSDSublayerInfo
@end

@implementation CUIPSDSublayerInfo

uint64_t __53___CUIPSDSublayerInfo_newWithSublayerCount_indexSet___block_invoke(uint64_t result, int a2)
{
  v2 = *(result + 40);
  v3 = *(*(result + 32) + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  *(v2 + 4 * v4) = a2;
  return result;
}

@end