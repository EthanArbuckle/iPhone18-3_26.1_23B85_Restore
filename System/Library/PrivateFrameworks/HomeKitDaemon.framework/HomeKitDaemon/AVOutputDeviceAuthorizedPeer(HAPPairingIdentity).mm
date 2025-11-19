@interface AVOutputDeviceAuthorizedPeer(HAPPairingIdentity)
- (id)hmd_pairingIdentity;
@end

@implementation AVOutputDeviceAuthorizedPeer(HAPPairingIdentity)

- (id)hmd_pairingIdentity
{
  v2 = [a1 hasAdministratorPrivileges];
  v3 = objc_alloc(MEMORY[0x277D0F8B0]);
  v4 = [a1 publicKey];
  v5 = [v3 initWithPairingKeyData:v4];

  v6 = objc_alloc(MEMORY[0x277CFEC20]);
  v7 = [a1 peerID];
  v8 = [v6 initWithIdentifier:v7 publicKey:v5 privateKey:0 permissions:v2];

  return v8;
}

@end