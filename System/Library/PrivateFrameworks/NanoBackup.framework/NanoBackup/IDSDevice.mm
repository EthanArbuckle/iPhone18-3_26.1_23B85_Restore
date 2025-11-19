@interface IDSDevice
- (id)nb_nrDevice;
@end

@implementation IDSDevice

- (id)nb_nrDevice
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = [v3 nonActiveDeviceForIDSDevice:self];

  return v4;
}

@end