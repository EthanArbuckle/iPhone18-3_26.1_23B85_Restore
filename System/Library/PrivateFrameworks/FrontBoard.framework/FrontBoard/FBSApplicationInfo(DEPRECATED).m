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
  v5.receiver = a1;
  v5.super_class = &off_1F1C26950;
  v3 = objc_msgSendSuper2(&v5, sel__initWithBundleIdentifier_url_, @"com.apple.frontboard.appInfoTest", v2);

  return v3;
}

- (uint64_t)signatureState
{
  v2 = [a1 _signatureValidationService];
  v3 = [a1 _mapSignatureStateFromTrustState:{objc_msgSend(v2, "trustStateForApplication:", a1)}];

  return v3;
}

- (id)_signatureValidationService
{
  v2 = objc_alloc(MEMORY[0x1E699FB38]);
  v3 = [MEMORY[0x1E699FBC0] sharedInstance];
  v4 = [a1 signerIdentity];
  v5 = [v3 profilesForSignerIdentity:v4];
  v6 = [MEMORY[0x1E699FBC0] sharedInstance];
  v7 = [a1 bundleIdentifier];
  v8 = [v2 initWithApplicationInfo:a1 andProvisioningProfiles:v5 isManaged:{objc_msgSend(v6, "isManaged:", v7)}];

  return v8;
}

- (void)acceptApplicationSignatureIdentity
{
  v1 = [a1 signerIdentity];
  if (v1)
  {
    v7 = v1;
    MCProfileConnectionClass = getMCProfileConnectionClass();
    v3 = [MCProfileConnectionClass sharedConnection];
    v4 = [v3 trustedCodeSigningIdentities];
    v5 = [v4 mutableCopy];

    if (!v5)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    [v5 addObject:v7];
    v6 = [MCProfileConnectionClass sharedConnection];
    [v6 setTrustedCodeSigningIdentities:v5];

    v1 = v7;
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