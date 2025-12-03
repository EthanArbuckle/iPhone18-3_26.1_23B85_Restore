@interface DIIdentityProvisioningSession
- (DIIdentityProvisioningSession)init;
- (void)generateIdentityProvisioningAttestationsWithCredential:(id)credential pairingID:(id)d completion:(id)completion;
@end

@implementation DIIdentityProvisioningSession

- (DIIdentityProvisioningSession)init
{
  v5.receiver = self;
  v5.super_class = DIIdentityProvisioningSession;
  v2 = [(DIIdentityProvisioningSession *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC7CoreIDV27IdentityProvisioningSession);
    [(DIIdentityProvisioningSession *)v2 setProvisioningSession:v3];
  }

  return v2;
}

- (void)generateIdentityProvisioningAttestationsWithCredential:(id)credential pairingID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  credentialCopy = credential;
  provisioningSession = [(DIIdentityProvisioningSession *)self provisioningSession];
  [provisioningSession generateIdentityProvisioningAttestationsWithCredentialIdentifier:credentialCopy pairingID:dCopy completionHandler:completionCopy];
}

@end