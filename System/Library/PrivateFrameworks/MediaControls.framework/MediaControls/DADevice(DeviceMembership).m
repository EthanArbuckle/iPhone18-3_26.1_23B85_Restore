@interface DADevice(DeviceMembership)
- (BOOL)isKnown;
@end

@implementation DADevice(DeviceMembership)

- (BOOL)isKnown
{
  v2 = [a1 bluetoothIdentifier];
  if (v2)
  {
    v3 = [a1 networkEndpoint];
    v4 = v3 != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end