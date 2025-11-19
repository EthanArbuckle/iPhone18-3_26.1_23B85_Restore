@interface CTCarrierSpaceLogDomain
@end

@implementation CTCarrierSpaceLogDomain

os_log_t ___CTCarrierSpaceLogDomain_block_invoke()
{
  result = os_log_create("com.apple.carrierspace", "client");
  _CTCarrierSpaceLogDomain_oslog = result;
  return result;
}

@end