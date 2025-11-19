@interface HMSetupAccessoryPayload(HFAdditions)
- (uint64_t)hf_requiresEthernet;
@end

@implementation HMSetupAccessoryPayload(HFAdditions)

- (uint64_t)hf_requiresEthernet
{
  if ([a1 communicationProtocol] == 2)
  {
    return 0;
  }

  result = [a1 supportsIP];
  if (result)
  {
    return [a1 supportsWAC] ^ 1;
  }

  return result;
}

@end