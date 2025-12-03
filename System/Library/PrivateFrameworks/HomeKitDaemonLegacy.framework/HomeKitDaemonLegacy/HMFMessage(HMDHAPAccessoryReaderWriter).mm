@interface HMFMessage(HMDHAPAccessoryReaderWriter)
- (uint64_t)isSingleReadWriteRequest;
@end

@implementation HMFMessage(HMDHAPAccessoryReaderWriter)

- (uint64_t)isSingleReadWriteRequest
{
  name = [self name];
  if ([name isEqualToString:@"kCharacteristicReadRequestKey"])
  {
    v3 = 1;
  }

  else
  {
    name2 = [self name];
    v3 = [name2 isEqualToString:@"kCharacteristicWriteRequestKey"];
  }

  return v3;
}

@end