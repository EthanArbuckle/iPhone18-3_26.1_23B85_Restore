@interface DCBiometricStore
- (DCBiometricStore)init;
- (void)bioBindingUnboundACL:(id)l;
- (void)boundAppletPresentmentACL:(id)l;
- (void)clearProgenitorKeyDesignationsWithCompletion:(id)completion;
- (void)credentialAuthenticationTokenStatus:(id)status;
- (void)deleteGlobalAuthACLWithCompletion:(id)completion;
- (void)deleteGlobalAuthACLWithOutcomeCompletion:(id)completion;
- (void)establishPrearmTrustV2:(id)v2 completion:(id)completion;
- (void)generatePhoneTokenWithNonce:(id)nonce keyBlob:(id)blob pairingID:(id)d completion:(id)completion;
- (void)generatePrearmTrustCertificateFromKeyBlob:(id)blob nonce:(id)nonce pairingID:(id)d completion:(id)completion;
- (void)generatePrearmTrustCertificateWithNonce:(id)nonce pairingID:(id)d completion:(id)completion;
- (void)getCASDCertificate:(id)certificate;
- (void)getGlobalProgenitorKeyAttestation:(id)attestation;
- (void)getGlobalThirdPartyProgenitorKeyAttestation:(id)attestation;
- (void)globalAuthACLTemplateUUIDsAndCredentialCountWithCompletion:(id)completion;
- (void)globalAuthACLTemplateUUIDsWithCompletion:(id)completion;
- (void)globalAuthACLWithCompletion:(id)completion;
- (void)migratePrearmTrustBlob:(id)blob completion:(id)completion;
- (void)nonceForAuthorizationTokenWithCompletion:(id)completion;
- (void)passcodeBindingUnboundACL:(id)l;
- (void)prearmCredentialWithAuthorizationToken:(id)token completion:(id)completion;
- (void)revokeCredentialAuthorizationToken:(id)token;
- (void)setGlobalAuthACL:(id)l ofType:(unint64_t)type completion:(id)completion;
- (void)setModifiedGlobalAuthACL:(id)l externalizedLAContext:(id)context completion:(id)completion;
@end

@implementation DCBiometricStore

- (DCBiometricStore)init
{
  v6.receiver = self;
  v6.super_class = DCBiometricStore;
  v2 = [(DCBiometricStore *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(DCBiometricStoreClient);
    client = v2->_client;
    v2->_client = v3;
  }

  return v2;
}

- (void)nonceForAuthorizationTokenWithCompletion:(id)completion
{
  completionCopy = completion;
  client = [(DCBiometricStore *)self client];
  [client nonceForAuthorizationTokenWithCompletion:completionCopy];
}

- (void)prearmCredentialWithAuthorizationToken:(id)token completion:(id)completion
{
  completionCopy = completion;
  tokenCopy = token;
  client = [(DCBiometricStore *)self client];
  [client prearmCredentialWithAuthorizationToken:tokenCopy completion:completionCopy];
}

- (void)establishPrearmTrustV2:(id)v2 completion:(id)completion
{
  completionCopy = completion;
  v2Copy = v2;
  client = [(DCBiometricStore *)self client];
  [client establishPrearmTrustV2:v2Copy completion:completionCopy];
}

- (void)revokeCredentialAuthorizationToken:(id)token
{
  tokenCopy = token;
  client = [(DCBiometricStore *)self client];
  [client revokeCredentialAuthorizationToken:tokenCopy];
}

- (void)bioBindingUnboundACL:(id)l
{
  lCopy = l;
  client = [(DCBiometricStore *)self client];
  [client bioBindingUnboundACL:lCopy];
}

- (void)passcodeBindingUnboundACL:(id)l
{
  lCopy = l;
  client = [(DCBiometricStore *)self client];
  [client passcodeBindingUnboundACL:lCopy];
}

- (void)setGlobalAuthACL:(id)l ofType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  client = [(DCBiometricStore *)self client];
  [client setGlobalAuthACL:lCopy ofType:type completion:completionCopy];
}

- (void)setModifiedGlobalAuthACL:(id)l externalizedLAContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  lCopy = l;
  client = [(DCBiometricStore *)self client];
  [client setModifiedGlobalAuthACL:lCopy externalizedLAContext:contextCopy completion:completionCopy];
}

- (void)globalAuthACLWithCompletion:(id)completion
{
  completionCopy = completion;
  client = [(DCBiometricStore *)self client];
  [client globalAuthACLWithCompletion:completionCopy];
}

- (void)deleteGlobalAuthACLWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__DCBiometricStore_deleteGlobalAuthACLWithCompletion___block_invoke;
  v6[3] = &unk_278E812A0;
  v7 = completionCopy;
  v5 = completionCopy;
  [(DCBiometricStore *)self deleteGlobalAuthACLWithOutcomeCompletion:v6];
}

- (void)deleteGlobalAuthACLWithOutcomeCompletion:(id)completion
{
  completionCopy = completion;
  client = [(DCBiometricStore *)self client];
  [client deleteGlobalAuthACLWithCompletion:completionCopy];
}

- (void)globalAuthACLTemplateUUIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  client = [(DCBiometricStore *)self client];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__DCBiometricStore_globalAuthACLTemplateUUIDsWithCompletion___block_invoke;
  v7[3] = &unk_278E812C8;
  v8 = completionCopy;
  v6 = completionCopy;
  [client globalAuthACLTemplateUUIDsWithCompletion:v7];
}

- (void)globalAuthACLTemplateUUIDsAndCredentialCountWithCompletion:(id)completion
{
  completionCopy = completion;
  client = [(DCBiometricStore *)self client];
  [client globalAuthACLTemplateUUIDsWithCompletion:completionCopy];
}

- (void)generatePhoneTokenWithNonce:(id)nonce keyBlob:(id)blob pairingID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  blobCopy = blob;
  nonceCopy = nonce;
  client = [(DCBiometricStore *)self client];
  [client generatePhoneTokenWithNonce:nonceCopy keyBlob:blobCopy pairingID:dCopy completion:completionCopy];
}

- (void)generatePrearmTrustCertificateWithNonce:(id)nonce pairingID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  nonceCopy = nonce;
  client = [(DCBiometricStore *)self client];
  [client generatePrearmTrustCertificateWithNonce:nonceCopy pairingID:dCopy completion:completionCopy];
}

- (void)generatePrearmTrustCertificateFromKeyBlob:(id)blob nonce:(id)nonce pairingID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  nonceCopy = nonce;
  blobCopy = blob;
  client = [(DCBiometricStore *)self client];
  [client generatePrearmTrustCertificateFromKeyBlob:blobCopy nonce:nonceCopy pairingID:dCopy completion:completionCopy];
}

- (void)migratePrearmTrustBlob:(id)blob completion:(id)completion
{
  completionCopy = completion;
  blobCopy = blob;
  client = [(DCBiometricStore *)self client];
  [client migratePrearmTrustBlob:blobCopy completion:completionCopy];
}

- (void)credentialAuthenticationTokenStatus:(id)status
{
  statusCopy = status;
  client = [(DCBiometricStore *)self client];
  [client credentialAuthenticationTokenStatus:statusCopy];
}

- (void)getCASDCertificate:(id)certificate
{
  certificateCopy = certificate;
  client = [(DCBiometricStore *)self client];
  [client getCASDCertificate:certificateCopy];
}

- (void)getGlobalProgenitorKeyAttestation:(id)attestation
{
  attestationCopy = attestation;
  client = [(DCBiometricStore *)self client];
  [client getGlobalProgenitorKeyAttestation:attestationCopy];
}

- (void)getGlobalThirdPartyProgenitorKeyAttestation:(id)attestation
{
  attestationCopy = attestation;
  client = [(DCBiometricStore *)self client];
  [client getGlobalThirdPartyProgenitorKeyAttestation:attestationCopy];
}

- (void)boundAppletPresentmentACL:(id)l
{
  lCopy = l;
  client = [(DCBiometricStore *)self client];
  [client boundAppletPresentmentACL:lCopy];
}

- (void)clearProgenitorKeyDesignationsWithCompletion:(id)completion
{
  completionCopy = completion;
  client = [(DCBiometricStore *)self client];
  [client clearProgenitorKeyDesignationsWithCompletion:completionCopy];
}

@end