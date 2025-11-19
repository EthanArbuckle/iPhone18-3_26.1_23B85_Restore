@interface DIIdentityProvisioningSession
- (DIIdentityProvisioningSession)init;
- (void)generateIdentityProvisioningAttestationsWithCredential:(id)a3 pairingID:(id)a4 completion:(id)a5;
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

- (void)generateIdentityProvisioningAttestationsWithCredential:(id)a3 pairingID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DIIdentityProvisioningSession *)self provisioningSession];
  [v11 generateIdentityProvisioningAttestationsWithCredentialIdentifier:v10 pairingID:v9 completionHandler:v8];
}

@end