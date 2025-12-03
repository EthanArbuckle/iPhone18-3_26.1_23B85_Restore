@interface HMSetupAccessoryPayload(HFAdditions)
- (uint64_t)hf_requiresEthernet;
@end

@implementation HMSetupAccessoryPayload(HFAdditions)

- (uint64_t)hf_requiresEthernet
{
  if ([self communicationProtocol] == 2)
  {
    return 0;
  }

  result = [self supportsIP];
  if (result)
  {
    return [self supportsWAC] ^ 1;
  }

  return result;
}

@end