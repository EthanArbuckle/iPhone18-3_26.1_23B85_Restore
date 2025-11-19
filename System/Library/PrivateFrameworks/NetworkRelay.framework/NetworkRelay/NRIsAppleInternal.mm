@interface NRIsAppleInternal
@end

@implementation NRIsAppleInternal

uint64_t ___NRIsAppleInternal_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  _NRIsAppleInternal_internal = result;
  return result;
}

@end