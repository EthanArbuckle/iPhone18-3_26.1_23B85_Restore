@interface CPLProxyPullSessionOSLogDomain
@end

@implementation CPLProxyPullSessionOSLogDomain

uint64_t ____CPLProxyPullSessionOSLogDomain_block_invoke()
{
  v0 = _CPLOSLogSubsystem();
  __CPLProxyPullSessionOSLogDomain_result = os_log_create(v0, "client.session.pull.proxy");

  return MEMORY[0x1EEE66BB8]();
}

@end