@interface FBSApplicationInfo(DEPRECATED)
- (id)_initForProfileManagerTesting;
- (id)_signatureValidationService;
- (uint64_t)_mapSignatureStateFromTrustState:()DEPRECATED;
- (uint64_t)signatureState;
- (void)acceptApplicationSignatureIdentity;
@end

@implementation FBSApplicationInfo(DEPRECATED)

- (id)_initForProfileManagerTesting
{
  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/"];
  v5.receiver = self;
  v5.super_class = &off_1F1C26950;
  v3 = objc_msgSendSuper2(&v5, sel__initWithBundleIdentifier_url_, @"com.apple.frontboard.appInfoTest", v2);

  return v3;
}

- (uint64_t)signatureState
{
  _signatureValidationService = [self _signatureValidationService];
  v3 = [self _mapSignatureStateFromTrustState:{objc_msgSend(_signatureValidationService, "trustStateForApplication:", self)}];

  return v3;
}

- (id)_signatureValidationService
{
  v2 = objc_alloc(MEMORY[0x1E699FB38]);
  mEMORY[0x1E699FBC0] = [MEMORY[0x1E699FBC0] sharedInstance];
  signerIdentity = [self signerIdentity];
  v5 = [mEMORY[0x1E699FBC0] profilesForSignerIdentity:signerIdentity];
  mEMORY[0x1E699FBC0]2 = [MEMORY[0x1E699FBC0] sharedInstance];
  bundleIdentifier = [self bundleIdentifier];
  v8 = [v2 initWithApplicationInfo:self andProvisioningProfiles:v5 isManaged:{objc_msgSend(mEMORY[0x1E699FBC0]2, "isManaged:", bundleIdentifier)}];

  return v8;
}

- (void)acceptApplicationSignatureIdentity
{
  signerIdentity = [self signerIdentity];
  if (signerIdentity)
  {
    v7 = signerIdentity;
    MCProfileConnectionClass = getMCProfileConnectionClass();
    mCProfileConnectionClass = [MCProfileConnectionClass sharedConnection];
    trustedCodeSigningIdentities = [mCProfileConnectionClass trustedCodeSigningIdentities];
    v5 = [trustedCodeSigningIdentities mutableCopy];

    if (!v5)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    [v5 addObject:v7];
    mCProfileConnectionClass2 = [MCProfileConnectionClass sharedConnection];
    [mCProfileConnectionClass2 setTrustedCodeSigningIdentities:v5];

    signerIdentity = v7;
  }
}

- (uint64_t)_mapSignatureStateFromTrustState:()DEPRECATED
{
  if (a3 > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_1A8A72070[a3];
  }
}

@end