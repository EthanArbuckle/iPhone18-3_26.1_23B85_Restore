@interface MXSessionSetProperty
@end

@implementation MXSessionSetProperty

uint64_t ___MXSessionSetProperty_block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) setPropertyForKey:*(a1 + 48) value:*(a1 + 56)];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end