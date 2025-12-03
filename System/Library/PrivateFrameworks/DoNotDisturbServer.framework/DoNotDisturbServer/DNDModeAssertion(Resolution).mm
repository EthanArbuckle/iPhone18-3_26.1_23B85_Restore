@interface DNDModeAssertion(Resolution)
- (id)resolveWithExpectedRemoteDeviceIdentifier:()Resolution localDeviceIdentifier:remoteDeviceIdentifier:;
@end

@implementation DNDModeAssertion(Resolution)

- (id)resolveWithExpectedRemoteDeviceIdentifier:()Resolution localDeviceIdentifier:remoteDeviceIdentifier:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  source = [self source];
  v12 = [source resolveWithExpectedRemoteDeviceIdentifier:v10 localDeviceIdentifier:v9 remoteDeviceIdentifier:v8];

  if (source == v12 || source && v12 && [source isEqual:v12])
  {
    selfCopy = self;
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x277D05938]);
    uUID = [self UUID];
    startDate = [self startDate];
    details = [self details];
    selfCopy = [v14 initWithUUID:uUID startDate:startDate details:details source:v12];
  }

  return selfCopy;
}

@end