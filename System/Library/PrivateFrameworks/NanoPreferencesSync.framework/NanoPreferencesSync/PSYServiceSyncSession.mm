@interface PSYServiceSyncSession
- (id)nps_pairedPdrDevice;
@end

@implementation PSYServiceSyncSession

- (id)nps_pairedPdrDevice
{
  v3 = +[NPSPairedDeviceRegistry registry];
  pairingID = [(PSYServiceSyncSession *)self pairingID];
  v5 = [v3 deviceForPairingID:pairingID];

  return v5;
}

@end