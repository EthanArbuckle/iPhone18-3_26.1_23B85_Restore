@interface CPLProxyPushSessionOSLogDomain
@end

@implementation CPLProxyPushSessionOSLogDomain

uint64_t ____CPLProxyPushSessionOSLogDomain_block_invoke()
{
  v0 = _CPLOSLogSubsystem();
  __CPLProxyPushSessionOSLogDomain_result = os_log_create(v0, "client.session.push.proxy");

  return MEMORY[0x1EEE66BB8]();
}

@end