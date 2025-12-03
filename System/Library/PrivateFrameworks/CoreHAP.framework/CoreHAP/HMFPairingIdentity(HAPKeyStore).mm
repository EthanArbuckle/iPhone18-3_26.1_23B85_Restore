@interface HMFPairingIdentity(HAPKeyStore)
- (uint64_t)isControllerKey;
@end

@implementation HMFPairingIdentity(HAPKeyStore)

- (uint64_t)isControllerKey
{
  v2 = +[HAPSystemKeychainStore systemStore];
  v3 = [v2 getLocalPairingIdentity:0];

  identifier = [self identifier];
  identifier2 = [v3 identifier];
  v6 = [identifier isEqual:identifier2];

  return v6;
}

@end