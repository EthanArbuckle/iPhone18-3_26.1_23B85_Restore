@interface DADevice(DeviceMembership)
- (BOOL)isKnown;
@end

@implementation DADevice(DeviceMembership)

- (BOOL)isKnown
{
  bluetoothIdentifier = [self bluetoothIdentifier];
  if (bluetoothIdentifier)
  {
    networkEndpoint = [self networkEndpoint];
    v4 = networkEndpoint != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end