@interface AVOutputDeviceAuthorizedPeer(HAPPairingIdentity)
- (id)hmd_pairingIdentity;
@end

@implementation AVOutputDeviceAuthorizedPeer(HAPPairingIdentity)

- (id)hmd_pairingIdentity
{
  hasAdministratorPrivileges = [self hasAdministratorPrivileges];
  v3 = objc_alloc(MEMORY[0x277D0F8B0]);
  publicKey = [self publicKey];
  v5 = [v3 initWithPairingKeyData:publicKey];

  v6 = objc_alloc(MEMORY[0x277CFEC20]);
  peerID = [self peerID];
  v8 = [v6 initWithIdentifier:peerID publicKey:v5 privateKey:0 permissions:hasAdministratorPrivileges];

  return v8;
}

@end