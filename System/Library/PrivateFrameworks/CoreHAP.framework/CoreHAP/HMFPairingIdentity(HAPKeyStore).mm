@interface HMFPairingIdentity(HAPKeyStore)
- (uint64_t)isControllerKey;
@end

@implementation HMFPairingIdentity(HAPKeyStore)

- (uint64_t)isControllerKey
{
  v2 = +[HAPSystemKeychainStore systemStore];
  v3 = [v2 getLocalPairingIdentity:0];

  v4 = [a1 identifier];
  v5 = [v3 identifier];
  v6 = [v4 isEqual:v5];

  return v6;
}

@end