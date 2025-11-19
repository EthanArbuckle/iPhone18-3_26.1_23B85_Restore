@interface DDRTaskRemovePairedAirplayDevices
- (void)run;
@end

@implementation DDRTaskRemovePairedAirplayDevices

- (void)run
{
  v2 = APSClearLegacyAirPlayPairingInfo();

  _MRMediaRemoteClearAllAVRoutePasswords(v2);
}

@end