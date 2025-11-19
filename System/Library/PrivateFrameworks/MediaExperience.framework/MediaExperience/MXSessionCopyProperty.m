@interface MXSessionCopyProperty
@end

@implementation MXSessionCopyProperty

uint64_t ___MXSessionCopyProperty_block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) copyPropertyForKey:*(a1 + 48) valueOut:*(a1 + 56)];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end