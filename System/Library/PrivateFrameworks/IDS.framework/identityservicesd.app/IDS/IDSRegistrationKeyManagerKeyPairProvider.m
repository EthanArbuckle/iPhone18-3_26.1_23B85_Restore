@interface IDSRegistrationKeyManagerKeyPairProvider
- (void)copyRegistrationKeyPairForIdentifier:(id)a3 publicKey:(__SecKey *)a4 privateKey:(__SecKey *)a5 keyPairSignature:(id *)a6 isMigratedSignature:(BOOL *)a7 isUpgradePending:(BOOL *)a8;
@end

@implementation IDSRegistrationKeyManagerKeyPairProvider

- (void)copyRegistrationKeyPairForIdentifier:(id)a3 publicKey:(__SecKey *)a4 privateKey:(__SecKey *)a5 keyPairSignature:(id *)a6 isMigratedSignature:(BOOL *)a7 isUpgradePending:(BOOL *)a8
{
  _IDSAppleRegistrationCopyKeyPair();
  if (a6)
  {
    *a6 = 0;
  }
}

@end