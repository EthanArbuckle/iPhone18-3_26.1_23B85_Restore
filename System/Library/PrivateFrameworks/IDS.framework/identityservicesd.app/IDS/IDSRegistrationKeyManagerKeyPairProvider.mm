@interface IDSRegistrationKeyManagerKeyPairProvider
- (void)copyRegistrationKeyPairForIdentifier:(id)identifier publicKey:(__SecKey *)key privateKey:(__SecKey *)privateKey keyPairSignature:(id *)signature isMigratedSignature:(BOOL *)migratedSignature isUpgradePending:(BOOL *)pending;
@end

@implementation IDSRegistrationKeyManagerKeyPairProvider

- (void)copyRegistrationKeyPairForIdentifier:(id)identifier publicKey:(__SecKey *)key privateKey:(__SecKey *)privateKey keyPairSignature:(id *)signature isMigratedSignature:(BOOL *)migratedSignature isUpgradePending:(BOOL *)pending
{
  _IDSAppleRegistrationCopyKeyPair();
  if (signature)
  {
    *signature = 0;
  }
}

@end