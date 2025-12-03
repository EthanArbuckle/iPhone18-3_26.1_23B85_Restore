@interface IDSDevice(PKIDSManager)
- (BOOL)pk_isValidHandoffDevice;
- (id)pk_idsDestination;
- (uint64_t)pk_isApplePayCapable;
@end

@implementation IDSDevice(PKIDSManager)

- (id)pk_idsDestination
{
  v2 = IDSCopyIDForDevice();
  name = [self name];
  v4 = [PKIDSDestination destinationWithDeviceIdentifier:v2 name:name];

  return v4;
}

- (uint64_t)pk_isApplePayCapable
{
  nsuuid = [self nsuuid];
  if (nsuuid)
  {
    pk_isValidHandoffDevice = [self pk_isValidHandoffDevice];
  }

  else
  {
    pk_isValidHandoffDevice = 0;
  }

  return pk_isValidHandoffDevice;
}

- (BOOL)pk_isValidHandoffDevice
{
  if (![self supportsApplePay])
  {
    return 0;
  }

  v2 = [[PKRemoteDevice alloc] initWithIDSDevice:self];
  v3 = [(PKRemoteDevice *)v2 type]< 2;

  return v3;
}

@end