@interface PSYServiceSyncSession
- (id)nps_pairedPdrDevice;
@end

@implementation PSYServiceSyncSession

- (id)nps_pairedPdrDevice
{
  v3 = +[NPSPairedDeviceRegistry registry];
  v4 = [(PSYServiceSyncSession *)self pairingID];
  v5 = [v3 deviceForPairingID:v4];

  return v5;
}

@end