@interface PKDAManager
+ (BOOL)isCarKeySupportedForManufacturerIdentifier:(id)a3 issuerIdentifier:(id)a4 productPlanIdentifier:(id)a5;
+ (BOOL)isSharingEnabledForManufacturerIdentifier:(id)a3 issuerIdentifier:(id)a4 productPlanIdentifier:(id)a5;
+ (void)aliroCompatibilityManifestWithCompletion:(id)a3;
- (BOOL)deletePrivacyKey:(id)a3 outError:(id *)a4;
- (BOOL)hasLongTermPrivacyKeyForGroupIdentifier:(id)a3;
- (PKDAManager)init;
- (id)createPrivacyKeyForGroupIdentifier:(id)a3 outError:(id *)a4;
- (id)decryptData:(id)a3 withCredential:(id)a4 ephemeralPublicKey:(id)a5;
- (id)decryptPayload:(id)a3 groupIdentifier:(id)a4 outError:(id *)a5;
- (id)privacyKeysForGroupIdentifier:(id)a3 privacyKeyIdentifier:(id)a4 outError:(id *)a5;
- (id)storeSEBlobForSubcredentialIdentifier:(id)a3 seBlob:(id)a4;
- (id)updateAliroCredentialDocumentStatusWithSession:(id)a3 seid:(id)a4 subcredentialIdentifier:(id)a5 isAccessDocumentPresent:(BOOL)a6 accessDocumentSignedDate:(id)a7 isRevocationDocumentPresent:(BOOL)a8 revocationDocumentSignedDate:(id)a9;
- (int64_t)_DAKeySharingAnalyticsFlowFromPKSharingInvitationFlow:(unint64_t)a3;
- (void)acceptCrossPlatformInvitationWithIdentifier:(id)a3 transportChannelIdentifier:(id)a4 activationCode:(id)a5 encryptedProductPlanIdentifierContainer:(id)a6 completion:(id)a7;
- (void)acceptInvitationWithIdentifier:(id)a3 activationCode:(id)a4 analyticsUpdateConfig:(id)a5 completion:(id)a6;
- (void)acceptInvitationWithIdentifier:(id)a3 activationCode:(id)a4 completion:(id)a5;
- (void)accountAttestationRequestForManufacturer:(id)a3 completion:(id)a4;
- (void)accountAttestionRequestForCredential:(id)a3 withCompletion:(id)a4;
- (void)commitUpgradeForKeyWithCredential:(id)a3 versionType:(unint64_t)a4 version:(unint64_t)a5 completion:(id)a6;
- (void)createAliroHomeKey:(id)a3 seid:(id)a4 readerIdentifier:(id)a5 readerPublicKey:(id)a6 homeIdentifier:(id)a7 withCompletion:(id)a8;
- (void)createAliroHydraKey:(id)a3 seid:(id)a4 serverParameters:(id)a5 withCompletion:(id)a6;
- (void)createInviteForShare:(id)a3 forCredential:(id)a4 analyticsUpdateConfig:(id)a5 authorization:(id)a6 completion:(id)a7;
- (void)createSilentInviteForSharingSessionIdentifier:(id)a3 completion:(id)a4;
- (void)credentialDidActivateWithCredential:(id)a3 completion:(id)a4;
- (void)declineSharingInvitation:(id)a3 completion:(id)a4;
- (void)declineSharingInvitationWithIdentifier:(id)a3 completion:(id)a4;
- (void)deleteCredential:(id)a3 completion:(id)a4;
- (void)deleteCredentials:(id)a3 completion:(id)a4;
- (void)deleteCredentialsForIdentifiers:(id)a3 completion:(id)a4;
- (void)deleteCredentialsForReaderIdentifiers:(id)a3 completion:(id)a4;
- (void)deviceCredentialForIdentifier:(id)a3 completion:(id)a4;
- (void)generateSEEncryptionCertificateForSubCredentialId:(id)a3 completion:(id)a4;
- (void)generateTransactionKeyWithParameters:(id)a3 withCompletion:(id)a4;
- (void)generateTransactionKeyWithSession:(id)a3 seid:(id)a4 readerIdentifier:(id)a5 readerPublicKey:(id)a6 completion:(id)a7;
- (void)getPretrackRequestForKeyWithIdentifier:(id)a3 withCompletion:(id)a4;
- (void)getPretrackShareDataForShare:(id)a3 withCompletion:(id)a4;
- (void)getProductPlanIdentifierRequestForInvitationWithIdentifier:(id)a3 fromMailboxIdentifier:(id)a4 completion:(id)a5;
- (void)handleOutstandingMessage:(id)a3 subcredentialIdentifier:(id)a4 credentialShareIdentifier:(id)a5 transportIdentifier:(id)a6 completion:(id)a7;
- (void)handleRecipientMessage:(id)a3 forInvitationIdentifier:(id)a4 completion:(id)a5;
- (void)hasUpgradeAvailableForKeyWithCredential:(id)a3 versionType:(unint64_t)a4 versions:(id)a5 completion:(id)a6;
- (void)immobilizerTokensCountForCredential:(id)a3 completion:(id)a4;
- (void)listCredentialsWithCompletion:(id)a3;
- (void)listCredentialsWithSession:(id)a3 seid:(id)a4 completion:(id)a5;
- (void)listDACredentialsWithSession:(id)a3 seid:(id)a4 completion:(id)a5;
- (void)outstandingInvitesForCredential:(id)a3 completion:(id)a4;
- (void)preWarmForManufacturer:(id)a3 completion:(id)a4;
- (void)prewarmWithManufacturerIdentifier:(id)a3 completion:(id)a4;
- (void)probeTerminalForPairingStatusWithCompletion:(id)a3;
- (void)rejectInvitation:(id)a3 completion:(id)a4;
- (void)removeSharedCredentialsWithIdentifiers:(id)a3 credential:(id)a4 completion:(id)a5;
- (void)rescindInvitations:(id)a3 onCredential:(id)a4 withCompletion:(id)a5;
- (void)retryActivationCode:(id)a3 forInvitationIdentifier:(id)a4 completion:(id)a5;
- (void)retryActivationCodeForCredentialIdentifier:(id)a3 activationCode:(id)a4 completion:(id)a5;
- (void)retryActivationCodeWithInvitationIdentifier:(id)a3 activationCode:(id)a4 completion:(id)a5;
- (void)revertUpgradeForKeyWithCredential:(id)a3 versionType:(unint64_t)a4 version:(unint64_t)a5 completion:(id)a6;
- (void)revokeSharedCredentials:(id)a3 onCredential:(id)a4 withCompletion:(id)a5;
- (void)revokeSharesWithGroupIdentifiers:(id)a3 shouldCascade:(BOOL)a4 credential:(id)a5 completion:(id)a6;
- (void)routingInformationForInvitationWithIdentifier:(id)a3 fromMailboxIdentifier:(id)a4 completionHandler:(id)a5;
- (void)setAccountAttestation:(id)a3 forCredential:(id)a4 withCompletion:(id)a5;
- (void)setAccountAttestation:(id)a3 forUpgradeCredential:(id)a4 withCompletion:(id)a5;
- (void)setEncryptedProductPlanIdentifierContainer:(id)a3 forInvitationIdentifier:(id)a4 completion:(id)a5;
- (void)setTransportChannelIdentifier:(id)a3 forCredential:(id)a4 forCredentialShare:(id)a5 completion:(id)a6;
- (void)signData:(id)a3 auth:(id)a4 bundleIdentifier:(id)a5 nonce:(id)a6 credential:(id)a7 completion:(id)a8;
- (void)startShareAcceptanceFlowWithInvitation:(id)a3 fromMailboxIdentifier:(id)a4 completion:(id)a5;
- (void)statusForReceivedSharingInvitationWithIdentifier:(id)a3 completion:(id)a4;
- (void)statusForSentSharingInvitationWithIdentifier:(id)a3 completion:(id)a4;
- (void)updateCredentialConfigurationForCredential:(id)a3 configuration:(id)a4 completion:(id)a5;
- (void)updateTrackingAttestation:(id)a3 forCredential:(id)a4 encryptedContainer:(id)a5 completion:(id)a6;
- (void)upgradeKeyWithCredential:(id)a3 versionType:(unint64_t)a4 version:(unint64_t)a5 upgradeInformation:(id)a6 completion:(id)a7;
@end

@implementation PKDAManager

- (PKDAManager)init
{
  v12.receiver = self;
  v12.super_class = PKDAManager;
  v2 = [(PKDAManager *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.passkit.damanager.work", 0);
    workQueue = v2->_workQueue;
    v2->_workQueue = v3;

    v5 = [[PKDAPairingSessionManager alloc] initWithQueue:v2->_workQueue sessionCreationBlock:&__block_literal_global_48];
    pairingSessionManager = v2->_pairingSessionManager;
    v2->_pairingSessionManager = v5;

    v7 = [[PKDASessionManager alloc] initWithQueue:v2->_workQueue sessionCreationBlock:&__block_literal_global_132_0];
    managementSessionManager = v2->_managementSessionManager;
    v2->_managementSessionManager = v7;

    v9 = [[PKDASessionManager alloc] initWithQueue:v2->_workQueue sessionCreationBlock:&__block_literal_global_135];
    sharingSessionManager = v2->_sharingSessionManager;
    v2->_sharingSessionManager = v9;
  }

  return v2;
}

+ (BOOL)isCarKeySupportedForManufacturerIdentifier:(id)a3 issuerIdentifier:(id)a4 productPlanIdentifier:(id)a5
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v5 = [MEMORY[0x1E699A138] isCarKeySupportedForManufacturer:a3 brand:a4 ppid:a5 error:&v9];
  v6 = v9;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKDAManager: Failed to check isCarKeySupported: %@", buf, 0xCu);
    }
  }

  return v5;
}

- (void)listCredentialsWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self->_managementSessionManager;
    managementSessionManager = self->_managementSessionManager;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__PKDAManager_listCredentialsWithCompletion___block_invoke;
    v8[3] = &unk_1E79CD108;
    v9 = v5;
    v10 = v4;
    v7 = v5;
    [(PKDASessionManager *)managementSessionManager performBlockWithSession:v8];
  }
}

void __45__PKDAManager_listCredentialsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__PKDAManager_listCredentialsWithCompletion___block_invoke_2;
  aBlock[3] = &unk_1E79CD5B8;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = v6;
  v7 = v6;
  v8 = _Block_copy(aBlock);
  v9 = v8;
  if (v5)
  {
    [v5 listCredentialsWithCompletion:v8];
  }

  else
  {
    (*(v8 + 2))(v8, 0);
  }
}

uint64_t __45__PKDAManager_listCredentialsWithCompletion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)listCredentialsWithSession:(id)a3 seid:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v8)
  {
    v9 = MEMORY[0x1E699A138];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__PKDAManager_listCredentialsWithSession_seid_completion___block_invoke;
    v10[3] = &unk_1E79C4BD0;
    v11 = v7;
    v12 = v8;
    [v9 listKeysWithSession:a3 seid:v11 callback:v10];
  }
}

void __58__PKDAManager_listCredentialsWithSession_seid_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v19 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      *buf = 138412546;
      v27 = v20;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "Failed to list keys on seid %@ with error: %@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [PKAppletSubcredential alloc];
          v16 = [(PKAppletSubcredential *)v15 initWithKeyInformation:v14, v21];
          if (v16)
          {
            [v8 addObject:v16];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v17 = *(a1 + 40);
    v18 = [v8 copy];
    (*(v17 + 16))(v17, v18);
  }
}

- (void)listDACredentialsWithSession:(id)a3 seid:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v8)
  {
    v9 = MEMORY[0x1E699A138];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__PKDAManager_listDACredentialsWithSession_seid_completion___block_invoke;
    v10[3] = &unk_1E79C4BD0;
    v11 = v7;
    v12 = v8;
    [v9 listKeysWithSession:a3 seid:v11 callback:v10];
  }
}

void __60__PKDAManager_listDACredentialsWithSession_seid_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = 138412546;
      v12 = v10;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Failed to list keys on seid %@ with error: %@", &v11, 0x16u);
    }

    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    v8 = *(*(a1 + 40) + 16);
  }

  v8();
}

- (void)revokeSharedCredentials:(id)a3 onCredential:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self->_managementSessionManager;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__PKDAManager_revokeSharedCredentials_onCredential_withCompletion___block_invoke;
  v16[3] = &unk_1E79CCF28;
  v17 = v11;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  v15 = v11;
  [(PKDASessionManager *)v15 performBlockWithSession:v16];
}

void __67__PKDAManager_revokeSharedCredentials_onCredential_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__PKDAManager_revokeSharedCredentials_onCredential_withCompletion___block_invoke_2;
  aBlock[3] = &unk_1E79CCF00;
  v13 = *(a1 + 32);
  v7 = v6;
  v14 = v7;
  v15 = *(a1 + 56);
  v8 = _Block_copy(aBlock);
  if (v5)
  {
    [v5 revokeSharedCredentials:*(a1 + 40) onCredential:*(a1 + 48) withCompletion:v8];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Unable to get session to revoke shared credentials with.", v11, 2u);
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKSubcredentialProvisioningErrorDomain" code:1 userInfo:0];
    v8[2](v8, 0, v10);
  }
}

void __67__PKDAManager_revokeSharedCredentials_onCredential_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))();
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v5);
  }
}

- (void)revokeSharesWithGroupIdentifiers:(id)a3 shouldCascade:(BOOL)a4 credential:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = self->_managementSessionManager;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__PKDAManager_revokeSharesWithGroupIdentifiers_shouldCascade_credential_completion___block_invoke;
  v18[3] = &unk_1E79CCF50;
  v19 = v13;
  v20 = v10;
  v23 = a4;
  v21 = v11;
  v22 = v12;
  v14 = v11;
  v15 = v10;
  v16 = v12;
  v17 = v13;
  [(PKDASessionManager *)v17 performBlockWithSession:v18];
}

void __84__PKDAManager_revokeSharesWithGroupIdentifiers_shouldCascade_credential_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__PKDAManager_revokeSharesWithGroupIdentifiers_shouldCascade_credential_completion___block_invoke_2;
  aBlock[3] = &unk_1E79CCF00;
  v13 = *(a1 + 32);
  v7 = v6;
  v14 = v7;
  v15 = *(a1 + 56);
  v8 = _Block_copy(aBlock);
  if (v5)
  {
    [v5 revokeSharesWithGroupIdentifiers:*(a1 + 40) shouldCascade:*(a1 + 64) credential:*(a1 + 48) completion:v8];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Unable to get session to revoke shared credentials with.", v11, 2u);
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKSubcredentialProvisioningErrorDomain" code:1 userInfo:0];
    v8[2](v8, 0, v10);
  }
}

void __84__PKDAManager_revokeSharesWithGroupIdentifiers_shouldCascade_credential_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))();
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v5);
  }
}

- (void)rescindInvitations:(id)a3 onCredential:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self->_managementSessionManager;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__PKDAManager_rescindInvitations_onCredential_withCompletion___block_invoke;
  v16[3] = &unk_1E79CCF28;
  v17 = v11;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  v15 = v11;
  [(PKDASessionManager *)v15 performBlockWithSession:v16];
}

void __62__PKDAManager_rescindInvitations_onCredential_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PKDAManager_rescindInvitations_onCredential_withCompletion___block_invoke_2;
  aBlock[3] = &unk_1E79CCF78;
  v13 = *(a1 + 32);
  v14 = *(a1 + 56);
  v7 = v6;
  v15 = v7;
  v8 = _Block_copy(aBlock);
  if (v5)
  {
    [v5 rescindInvitations:*(a1 + 40) onCredential:*(a1 + 48) withCompletion:v8];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Unable to get session to revoke shared credentials with.", v11, 2u);
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKSubcredentialProvisioningErrorDomain" code:1 userInfo:0];
    v8[2](v8, v10);
  }
}

void __62__PKDAManager_rescindInvitations_onCredential_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v6 = v3;
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v3 = v6;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
    v3 = v6;
  }
}

- (void)updateTrackingAttestation:(id)a3 forCredential:(id)a4 encryptedContainer:(id)a5 completion:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v12)
  {
    v16 = 0;
    goto LABEL_7;
  }

  v14 = [v12 data];
  v15 = [v12 rawEphemeralPublicKey];
  v16 = [(PKDAManager *)self decryptData:v14 withCredential:v11 ephemeralPublicKey:v15];

  if (v16)
  {
LABEL_7:
    v18 = self->_managementSessionManager;
    managementSessionManager = self->_managementSessionManager;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __85__PKDAManager_updateTrackingAttestation_forCredential_encryptedContainer_completion___block_invoke;
    v22[3] = &unk_1E79CCFA0;
    v23 = v18;
    v24 = v11;
    v25 = v16;
    v26 = v10;
    v27 = v13;
    v20 = v16;
    v21 = v18;
    [(PKDASessionManager *)managementSessionManager performBlockWithSession:v22];

    goto LABEL_8;
  }

  v17 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v11;
    _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Failed to decrypt data to track credential %@", buf, 0xCu);
  }

  (*(v13 + 2))(v13, 0);
LABEL_8:
}

void __85__PKDAManager_updateTrackingAttestation_forCredential_encryptedContainer_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 trackSubcredential:a1[5] deviceData:a1[6] attestation:a1[7]];
    v8 = v7 == 0;
    if (v7)
    {
      v9 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = a1[5];
        v12 = 138412546;
        v13 = v10;
        v14 = 2112;
        v15 = v7;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Failed to track credential %@: %@", &v12, 0x16u);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = a1[8];
  if (v11)
  {
    (*(v11 + 16))(v11, v8);
  }

  if (v6)
  {
    v6[2](v6);
  }
}

- (void)declineSharingInvitation:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 identifier];
  [(PKDAManager *)self declineSharingInvitationWithIdentifier:v7 completion:v6];
}

- (void)declineSharingInvitationWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = self->_sharingSessionManager;
    sharingSessionManager = self->_sharingSessionManager;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__PKDAManager_declineSharingInvitationWithIdentifier_completion___block_invoke;
    v11[3] = &unk_1E79CD4A0;
    v12 = v8;
    v13 = v6;
    v14 = v7;
    v10 = v8;
    [(PKDASessionManager *)sharingSessionManager performBlockWithSession:v11];
  }
}

void __65__PKDAManager_declineSharingInvitationWithIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__PKDAManager_declineSharingInvitationWithIdentifier_completion___block_invoke_2;
  v8[3] = &unk_1E79CCFC8;
  v9 = v5;
  v6 = *(a1 + 40);
  v10 = *(a1 + 48);
  v7 = v5;
  [a2 cancelSharingInvitationWithIdentifier:v6 completion:v8];
}

uint64_t __65__PKDAManager_declineSharingInvitationWithIdentifier_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)probeTerminalForPairingStatusWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self->_pairingSessionManager;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__PKDAManager_probeTerminalForPairingStatusWithCompletion___block_invoke;
    v7[3] = &unk_1E79CD018;
    v8 = v5;
    v9 = v4;
    v6 = v5;
    [(PKDASessionManager *)v6 performBlockWithSession:v7];
  }
}

void __59__PKDAManager_probeTerminalForPairingStatusWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__PKDAManager_probeTerminalForPairingStatusWithCompletion___block_invoke_2;
  aBlock[3] = &unk_1E79CCFF0;
  v17 = *(a1 + 40);
  v7 = v6;
  v18 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [*(a1 + 32) isProbingTerminalPairingStatus];
  v10 = PKLogFacilityTypeGetObject(0x17uLL);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *v15 = 0;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Already probing terminal", v15, 2u);
    }
  }

  else
  {
    if (v11)
    {
      *v15 = 0;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Probing terminal...", v15, 2u);
    }

    [*(a1 + 32) setProbingTerminalPairingStatus:1];
    if (!v5 || ([v5 probeTerminalForPairingStatus], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
    {
      (*(v8 + 2))(v8, 0, 0);
      goto LABEL_11;
    }
  }

  v12 = [*(a1 + 32) probingCompletionBlocks];
  v13 = _Block_copy(v8);
  [v12 addObject:v13];

LABEL_11:
}

uint64_t __59__PKDAManager_probeTerminalForPairingStatusWithCompletion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)prewarmWithManufacturerIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_pairingSessionManager;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__PKDAManager_prewarmWithManufacturerIdentifier_completion___block_invoke;
  v12[3] = &unk_1E79CD068;
  v14 = v6;
  v15 = v7;
  v13 = v8;
  v9 = v6;
  v10 = v7;
  v11 = v8;
  [(PKDASessionManager *)v11 performBlockWithSession:v12];
}

void __60__PKDAManager_prewarmWithManufacturerIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__PKDAManager_prewarmWithManufacturerIdentifier_completion___block_invoke_2;
  aBlock[3] = &unk_1E79CD040;
  v16 = *(a1 + 48);
  v7 = v6;
  v17 = v7;
  v8 = _Block_copy(aBlock);
  if (!v5)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = 1;
LABEL_7:
    v13 = [v11 errorWithDomain:@"PKSubcredentialProvisioningErrorDomain" code:v12 userInfo:0];
    v8[2](v8, v13);
    goto LABEL_11;
  }

  v9 = [*(a1 + 32) prewarmCompletion];

  if (v9)
  {
    v10 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Outstanding prewarm operation in progress", v14, 2u);
    }

    v11 = MEMORY[0x1E696ABC0];
    v12 = 0;
    goto LABEL_7;
  }

  v13 = [v5 prewarmWithManufacturerIdentifier:*(a1 + 40)];
  if (v13)
  {
    v8[2](v8, v13);
  }

  [*(a1 + 32) setPrewarmCompletion:v8];
LABEL_11:
}

void __60__PKDAManager_prewarmWithManufacturerIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v3 = v6;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
    v3 = v6;
  }
}

- (id)decryptData:(id)a3 withCredential:(id)a4 ephemeralPublicKey:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [v7 identifier];
  v11 = SESEndPointPrivacyDecryption();

  v12 = 0;
  v13 = v11;
  if (v12)
  {
    v14 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v7 identifier];
      *buf = 138412546;
      v19 = v15;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Failed to decrypt data for credential '%@' with error: %@", buf, 0x16u);
    }

    v13 = 0;
  }

  v16 = v13;

  return v13;
}

- (void)signData:(id)a3 auth:(id)a4 bundleIdentifier:(id)a5 nonce:(id)a6 credential:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v19)
  {
    managementSessionManager = self->_managementSessionManager;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __74__PKDAManager_signData_auth_bundleIdentifier_nonce_credential_completion___block_invoke;
    v22[3] = &unk_1E79CD0B8;
    v23 = v14;
    v24 = v15;
    v25 = v16;
    v26 = v17;
    v27 = v18;
    v28 = v19;
    v21 = managementSessionManager;
    [(PKDASessionManager *)v21 performBlockWithSession:v22];
  }
}

void __74__PKDAManager_signData_auth_bundleIdentifier_nonce_credential_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__PKDAManager_signData_auth_bundleIdentifier_nonce_credential_completion___block_invoke_2;
    v14[3] = &unk_1E79CD090;
    v11 = *(a1 + 64);
    v15 = *(a1 + 72);
    v16 = v6;
    [v5 signData:v7 auth:v8 bundleIdentifier:v9 nonce:v10 credential:v11 completion:v14];
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Failed to get session to sign with", v13, 2u);
    }

    (*(*(a1 + 72) + 16))();
    if (v6)
    {
      v6[2](v6);
    }
  }
}

uint64_t __74__PKDAManager_signData_auth_bundleIdentifier_nonce_credential_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)immobilizerTokensCountForCredential:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    managementSessionManager = self->_managementSessionManager;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__PKDAManager_immobilizerTokensCountForCredential_completion___block_invoke;
    v11[3] = &unk_1E79CD108;
    v13 = v7;
    v12 = v6;
    v10 = managementSessionManager;
    [(PKDASessionManager *)v10 performBlockWithSession:v11];
  }
}

void __62__PKDAManager_immobilizerTokensCountForCredential_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__PKDAManager_immobilizerTokensCountForCredential_completion___block_invoke_150;
    v10[3] = &unk_1E79CD0E0;
    v11 = v6;
    v12 = *(a1 + 40);
    [v5 immobilizerTokensCountForCredential:v8 completion:v10];
  }

  else
  {
    if (v6)
    {
      v6[2](v6);
    }

    v9 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Failed to get session to count immo tokens with", buf, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __62__PKDAManager_immobilizerTokensCountForCredential_completion___block_invoke_150(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)removeSharedCredentialsWithIdentifiers:(id)a3 credential:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  managementSessionManager = self->_managementSessionManager;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __76__PKDAManager_removeSharedCredentialsWithIdentifiers_credential_completion___block_invoke;
  v16[3] = &unk_1E79CD288;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = managementSessionManager;
  [(PKDASessionManager *)v15 performBlockWithSession:v16];
}

void __76__PKDAManager_removeSharedCredentialsWithIdentifiers_credential_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __76__PKDAManager_removeSharedCredentialsWithIdentifiers_credential_completion___block_invoke_2;
    v13[3] = &unk_1E79CD040;
    v14 = *(a1 + 48);
    v15 = v6;
    [v5 removeSharedCredentialsWithIdentifiers:v7 credential:v8 completion:v13];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Failed to get session to count immo tokens with", v12, 2u);
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKSubcredentialProvisioningErrorDomain" code:1 userInfo:0];
      (*(v10 + 16))(v10, v11);
    }

    if (v6)
    {
      v6[2](v6);
    }
  }
}

void __76__PKDAManager_removeSharedCredentialsWithIdentifiers_credential_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v3 = v6;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
    v3 = v6;
  }
}

- (void)statusForSentSharingInvitationWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_managementSessionManager;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__PKDAManager_statusForSentSharingInvitationWithIdentifier_completion___block_invoke;
  v11[3] = &unk_1E79CD1A8;
  v9 = v7;
  v13 = v9;
  v10 = v6;
  v12 = v10;
  v14 = v15;
  [(PKDASessionManager *)v8 performBlockWithSession:v11];

  _Block_object_dispose(v15, 8);
}

void __71__PKDAManager_statusForSentSharingInvitationWithIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__PKDAManager_statusForSentSharingInvitationWithIdentifier_completion___block_invoke_2;
  aBlock[3] = &unk_1E79CD130;
  v19 = *(a1 + 40);
  v7 = v6;
  v20 = v7;
  v8 = _Block_copy(aBlock);
  if (v5)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__PKDAManager_statusForSentSharingInvitationWithIdentifier_completion___block_invoke_3;
    v13[3] = &unk_1E79CD180;
    v14 = *(a1 + 32);
    v9 = v5;
    v10 = *(a1 + 48);
    v15 = v9;
    v17 = v10;
    v16 = v8;
    [v9 listCredentialsWithCompletion:v13];
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Failed to get session to obtain sent sharing invitation status", v12, 2u);
    }

    (*(v8 + 2))(v8, *(*(*(a1 + 48) + 8) + 24));
  }
}

uint64_t __71__PKDAManager_statusForSentSharingInvitationWithIdentifier_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __71__PKDAManager_statusForSentSharingInvitationWithIdentifier_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412546;
    v27 = v5;
    v28 = 2048;
    v29 = [v3 count];
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "status for sent invitationIdentifier: %@, credentials count: %lu", buf, 0x16u);
  }

  oslog = v4;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v22 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v21 + 1) + 8 * v10);
      if (([v11 isSharedCredential] & 1) == 0)
      {
        v12 = *(a1 + 40);
        v13 = [v11 identifier];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __71__PKDAManager_statusForSentSharingInvitationWithIdentifier_completion___block_invoke_153;
        v18[3] = &unk_1E79CD158;
        v18[4] = v11;
        v14 = *(a1 + 32);
        v15 = *(a1 + 56);
        v19 = v14;
        v20 = v15;
        [v12 listSharingInvitationsForKeyIdentifier:v13 withCompletion:v18];
      }

      if (*(*(*(a1 + 56) + 8) + 24))
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      *buf = 138412290;
      v27 = v16;
      _os_log_impl(&dword_1AD337000, oslog, OS_LOG_TYPE_DEFAULT, "status for sent invitation identifier not found: %@", buf, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = 8;
  }

  (*(*(a1 + 48) + 16))();
}

void __71__PKDAManager_statusForSentSharingInvitationWithIdentifier_completion___block_invoke_153(void *a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    *buf = 138412546;
    v31 = v5;
    v32 = 2112;
    v33 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Checking status for credential: %@ \n shares: %@", buf, 0x16u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v3;
  v19 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v19)
  {
    v7 = *v25;
    v18 = *v25;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = [v9 credentialShares];
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v20 + 1) + 8 * j);
              v16 = [v15 identifier];
              v17 = [v16 isEqualToString:a1[5]];

              if (v17)
              {
                *(*(a1[6] + 8) + 24) = [v15 status];

                goto LABEL_20;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v7 = v18;
      }

      v19 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v19);
  }

LABEL_20:
}

- (void)outstandingInvitesForCredential:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  managementSessionManager = self->_managementSessionManager;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__PKDAManager_outstandingInvitesForCredential_completion___block_invoke;
  v12[3] = &unk_1E79CD108;
  v13 = v6;
  v14 = v7;
  v9 = v6;
  v10 = v7;
  v11 = managementSessionManager;
  [(PKDASessionManager *)v11 performBlockWithSession:v12];
}

void __58__PKDAManager_outstandingInvitesForCredential_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__PKDAManager_outstandingInvitesForCredential_completion___block_invoke_2;
  aBlock[3] = &unk_1E79CD1D0;
  v14 = *(a1 + 40);
  v15 = v5;
  v6 = v5;
  v7 = a2;
  v8 = _Block_copy(aBlock);
  v9 = [*(a1 + 32) identifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__PKDAManager_outstandingInvitesForCredential_completion___block_invoke_3;
  v11[3] = &unk_1E79C5468;
  v12 = v8;
  v10 = v8;
  [v7 listSharingInvitationsForKeyIdentifier:v9 withCompletion:v11];
}

void __58__PKDAManager_outstandingInvitesForCredential_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v3 = v6;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
    v3 = v6;
  }
}

- (void)statusForReceivedSharingInvitationWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_managementSessionManager;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__PKDAManager_statusForReceivedSharingInvitationWithIdentifier_completion___block_invoke;
  v11[3] = &unk_1E79CD1A8;
  v9 = v7;
  v13 = v9;
  v10 = v6;
  v12 = v10;
  v14 = v15;
  [(PKDASessionManager *)v8 performBlockWithSession:v11];

  _Block_object_dispose(v15, 8);
}

void __75__PKDAManager_statusForReceivedSharingInvitationWithIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__PKDAManager_statusForReceivedSharingInvitationWithIdentifier_completion___block_invoke_2;
  aBlock[3] = &unk_1E79CD130;
  v19 = *(a1 + 40);
  v7 = v6;
  v20 = v7;
  v8 = _Block_copy(aBlock);
  if (v5)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __75__PKDAManager_statusForReceivedSharingInvitationWithIdentifier_completion___block_invoke_3;
    v13[3] = &unk_1E79CD220;
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v14 = v9;
    v17 = v10;
    v15 = v5;
    v16 = v8;
    [v15 listReceivedSharingInvitationsWithCompletion:v13];
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Failed to get session to obtain received sharing invitation status", v12, 2u);
    }

    (*(v8 + 2))(v8, *(*(*(a1 + 48) + 8) + 24));
  }
}

uint64_t __75__PKDAManager_statusForReceivedSharingInvitationWithIdentifier_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __75__PKDAManager_statusForReceivedSharingInvitationWithIdentifier_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412546;
    v28 = v5;
    v29 = 2048;
    v30 = [v3 count];
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "status for received invitationIdentifier: %@, count: %lu", buf, 0x16u);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v28 = v11;
          _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "status for received invitation receipt: %@", buf, 0xCu);
        }

        v12 = *(a1 + 32);
        v13 = [v11 identifier];
        LODWORD(v12) = [v12 isEqualToString:v13];

        if (v12)
        {
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            v14 = *(a1 + 32);
            *buf = 138412290;
            v28 = v14;
            _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "status for received matched: %@", buf, 0xCu);
          }

          *(*(*(a1 + 56) + 8) + 24) = [v11 status];
          goto LABEL_17;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __75__PKDAManager_statusForReceivedSharingInvitationWithIdentifier_completion___block_invoke_154;
    v19[3] = &unk_1E79CD1F8;
    v15 = *(a1 + 40);
    v16 = *(a1 + 32);
    v17 = *(a1 + 56);
    v20 = v16;
    v21 = v17;
    [v15 listCredentialsWithCompletion:v19];

    if (!*(*(*(a1 + 56) + 8) + 24))
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        *buf = 138412290;
        v28 = v18;
        _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "status for received invitation identifier not found: %@", buf, 0xCu);
      }

      *(*(*(a1 + 56) + 8) + 24) = 8;
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __75__PKDAManager_statusForReceivedSharingInvitationWithIdentifier_completion___block_invoke_154(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = v3;
    v20 = 2048;
    v21 = [v3 count];
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "status for received listCredentials: %@, count: %lu", buf, 0x16u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v19 = v10;
          _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "status for received credential: %@", buf, 0xCu);
        }

        v11 = *(a1 + 32);
        v12 = [v10 invitationIdentifier];
        LODWORD(v11) = [v11 isEqualToString:v12];

        if (v11)
        {
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "status for received credential matched", buf, 2u);
          }

          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_17;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
}

- (void)generateTransactionKeyWithSession:(id)a3 seid:(id)a4 readerIdentifier:(id)a5 readerPublicKey:(id)a6 completion:(id)a7
{
  v25 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v13 && v14)
  {
    v20 = 0;
    v16 = [MEMORY[0x1E699A138] createHomeKey:v11 seid:v12 readerIdentifier:v13 readerPublicKey:v14 outError:&v20];
    v17 = v20;
    v18 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478083;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "PKDAManager GenerateTransactionKeyWithReaderIdentifier returned %{private}@ error: %@", buf, 0x16u);
    }

    v15[2](v15, v16, v17);
  }

  else
  {
    v19 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "PKDAManager GenerateTransactionKeyWithReaderIdentifier missing readerIdentifier or readerPublicKey", buf, 2u);
    }

    v15[2](v15, 0, 0);
  }
}

- (void)createAliroHomeKey:(id)a3 seid:(id)a4 readerIdentifier:(id)a5 readerPublicKey:(id)a6 homeIdentifier:(id)a7 withCompletion:(id)a8
{
  v28 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (v15 && v16)
  {
    v23 = 0;
    v19 = [MEMORY[0x1E699A138] createAliroHomeKey:v13 seid:v14 readerIdentifier:v15 readerPublicKey:v16 homeUUID:v17 outError:&v23];
    v20 = v23;
    v21 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478083;
      v25 = v19;
      v26 = 2112;
      v27 = v20;
      _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "PKDAManager createAliroHomeKey returned %{private}@ error: %@", buf, 0x16u);
    }

    v18[2](v18, v19, v20);
  }

  else
  {
    v22 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "PKDAManager createAliroHomeKey missing readerIdentifier or readerPublicKey", buf, 2u);
    }

    v18[2](v18, 0, 0);
  }
}

- (void)generateTransactionKeyWithParameters:(id)a3 withCompletion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v11 = 0;
    v7 = [MEMORY[0x1E699A138] createHydraKey:0 seid:0 serverParameters:v5 outError:&v11];
    v8 = v11;
    v9 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478083;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKDAManager GenerateTransactionKeyWithParameters returned %{private}@ error: %@", buf, 0x16u);
    }

    v6[2](v6, v7, v8);
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "PKDAManager GenerateTransactionKeyWithParameters missing parameters", buf, 2u);
    }

    v6[2](v6, 0, 0);
  }
}

- (void)createAliroHydraKey:(id)a3 seid:(id)a4 serverParameters:(id)a5 withCompletion:(id)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v10 && v11)
  {
    v17 = 0;
    v13 = [MEMORY[0x1E699A138] createAliroHydraKey:v9 seid:v10 serverParameters:v11 outError:&v17];
    v14 = v17;
    v15 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478083;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "PKDAManager createAliroHydraKey returned %{private}@ error: %@", buf, 0x16u);
    }

    v12[2](v12, v13, v14);
  }

  else
  {
    v16 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "PKDAManager createAliroHomeKey missing seid or serverParameters", buf, 2u);
    }

    v12[2](v12, 0, 0);
  }
}

- (id)updateAliroCredentialDocumentStatusWithSession:(id)a3 seid:(id)a4 subcredentialIdentifier:(id)a5 isAccessDocumentPresent:(BOOL)a6 accessDocumentSignedDate:(id)a7 isRevocationDocumentPresent:(BOOL)a8 revocationDocumentSignedDate:(id)a9
{
  v9 = a8;
  v11 = a6;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a9;
  if (v16)
  {
    v19 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v20 = v19;
    if (v17)
    {
      v21 = [v19 stringFromDate:v17];
      v22 = [v21 dataUsingEncoding:1];
      v37 = [v22 hexEncoding];

      if (v18)
      {
LABEL_4:
        v23 = [v20 stringFromDate:v18];
        [v23 dataUsingEncoding:1];
        v36 = v20;
        v24 = v16;
        v25 = v11;
        v26 = v18;
        v27 = v17;
        v28 = v15;
        v29 = v14;
        v31 = v30 = v9;
        v32 = [v31 hexEncoding];

        v9 = v30;
        v14 = v29;
        v15 = v28;
        v17 = v27;
        v18 = v26;
        v11 = v25;
        v16 = v24;
        v20 = v36;

LABEL_10:
        v34 = [MEMORY[0x1E699A138] updateAliroCredentialDocumentStatus:v14 seid:v15 keyIdentifier:v16 accessDocumentPresent:v11 accessDocumentSignedTimestamp:v37 revocationDocumentPresent:v9 revocationDocumentSignedTimestamp:v32];

        goto LABEL_11;
      }
    }

    else
    {
      v37 = 0;
      if (v18)
      {
        goto LABEL_4;
      }
    }

    v32 = 0;
    goto LABEL_10;
  }

  v33 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v33, OS_LOG_TYPE_DEFAULT, "PKDAManager updateAliroCredentialDocumentStatus missing keyIdentifier", buf, 2u);
  }

  v34 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKSubcredentialProvisioningErrorDomain" code:0 userInfo:0];
LABEL_11:

  return v34;
}

- (void)generateSEEncryptionCertificateForSubCredentialId:(id)a3 completion:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    if (v5)
    {
      v12 = 0;
      v7 = [MEMORY[0x1E699A138] getHydraEncryptionCert:v5 session:0 seid:0 outError:&v12];
      v8 = v12;
      v9 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v8;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKDAManager GenerateTransactionKeyWithParameters returned error: %@", buf, 0xCu);
      }

      if (v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = v7;
      }

      (v6)[2](v6, v10, v8);
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKDAManager GenerateSEEncryptionCertificateForSubCredentialId missing parameters", buf, 2u);
      }

      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKSubcredentialProvisioningErrorDomain" code:1 userInfo:0];
      v6[2](v6, 0, v8);
    }
  }
}

- (id)storeSEBlobForSubcredentialIdentifier:(id)a3 seBlob:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v14 = 0;
    v8 = [MEMORY[0x1E699A138] updateHydraKey:v5 session:0 seid:0 encryptedSEData:v6 outError:&v14];
    v9 = v14;
    v10 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"N";
      if (v8)
      {
        v11 = @"Y";
      }

      *buf = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "PKDAManager StoreSEBlobForSubcredentialIdentifier success: %@ error: %@", buf, 0x16u);
    }
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "PKDAManager StoreSEBlobForSubcredentialIdentifier missing parameters", buf, 2u);
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKSubcredentialProvisioningErrorDomain" code:1 userInfo:0];
  }

  return v9;
}

- (id)privacyKeysForGroupIdentifier:(id)a3 privacyKeyIdentifier:(id)a4 outError:(id *)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69C86E0];
  v8 = a4;
  v9 = a3;
  v10 = [v7 sharedManager];
  v18 = 0;
  v11 = [v10 privacyKeysForGroupIdentifier:v9 privacyKeyIdentifier:v8 outError:&v18];

  v12 = v18;
  if (v12)
  {
    v13 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v12;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Failed to get privacy keys: %@", buf, 0xCu);
    }

    if (a5)
    {
      v14 = v12;
      v15 = 0;
      *a5 = v12;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v16 = [v11 pk_arrayByApplyingBlock:&__block_literal_global_169];
    v15 = [v16 sortedArrayUsingComparator:&__block_literal_global_173];
  }

  return v15;
}

PKLongTermPrivacyKey *__75__PKDAManager_privacyKeysForGroupIdentifier_privacyKeyIdentifier_outError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKLongTermPrivacyKey alloc] initWithSESPrivacyKey:v2];

  return v3;
}

uint64_t __75__PKDAManager_privacyKeysForGroupIdentifier_privacyKeyIdentifier_outError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 creationDate];
  v6 = [v4 creationDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)createPrivacyKeyForGroupIdentifier:(id)a3 outError:(id *)a4
{
  v5 = MEMORY[0x1E69C86E0];
  v6 = a3;
  v7 = [v5 sharedManager];
  v8 = [v7 createPrivacyKeyForGroupIdentifier:v6 withOptions:0 outError:a4];

  v9 = [[PKLongTermPrivacyKey alloc] initWithSESPrivacyKey:v8];

  return v9;
}

- (BOOL)hasLongTermPrivacyKeyForGroupIdentifier:(id)a3
{
  v3 = MEMORY[0x1E69C86E0];
  v4 = a3;
  v5 = [v3 sharedManager];
  v11 = 0;
  v6 = [v5 privacyKeysForGroupIdentifier:v4 privacyKeyIdentifier:0 outError:&v11];

  v7 = v11;
  if ([v6 count])
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v9;
}

- (BOOL)deletePrivacyKey:(id)a3 outError:(id *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E69C86E0] sharedManager];
  v7 = [v5 groupIdentifier];
  v8 = [v5 keyIdentifier];
  v21 = 0;
  v9 = [v6 privacyKeysForGroupIdentifier:v7 privacyKeyIdentifier:v8 outError:&v21];
  v10 = v21;

  if (v10)
  {
    if (a4)
    {
      v11 = v10;
      *a4 = v10;
    }

    v12 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v5 keyIdentifier];
      *buf = 138412546;
      v23 = v13;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Failed to find privacy key with identifier %@: %@", buf, 0x16u);
    }

    v14 = 0;
  }

  else
  {
    v12 = [v9 firstObject];
    v20 = 0;
    v14 = [v6 deletePrivacyKey:v12 outError:&v20];
    v15 = v20;
    v10 = v15;
    if (a4 || (v14 & 1) == 0)
    {
      if (a4)
      {
        v16 = v15;
        *a4 = v10;
      }

      v17 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v5 keyIdentifier];
        *buf = 138412546;
        v23 = v18;
        v24 = 2112;
        v25 = v10;
        _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Failed to delete privacy key with identifier %@: %@", buf, 0x16u);
      }
    }

    else
    {
      v14 = 1;
    }
  }

  return v14;
}

- (id)decryptPayload:(id)a3 groupIdentifier:(id)a4 outError:(id *)a5
{
  v7 = MEMORY[0x1E69C86E0];
  v8 = a4;
  v9 = a3;
  v10 = [v7 sharedManager];
  v11 = [v10 decryptPayload:v9 withGroupIdentifier:v8 outError:a5];

  return v11;
}

- (void)credentialDidActivateWithCredential:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  managementSessionManager = self->_managementSessionManager;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__PKDAManager_credentialDidActivateWithCredential_completion___block_invoke;
  v12[3] = &unk_1E79CD108;
  v13 = v6;
  v14 = v7;
  v9 = v6;
  v10 = v7;
  v11 = managementSessionManager;
  [(PKDASessionManager *)v11 performBlockWithSession:v12];
}

void __62__PKDAManager_credentialDidActivateWithCredential_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__PKDAManager_credentialDidActivateWithCredential_completion___block_invoke_2;
    v10[3] = &unk_1E79CD040;
    v11 = v5;
    v12 = *(a1 + 40);
    [a2 credentialDidActivateWithCredential:v7 completion:v10];
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKSubcredentialProvisioningErrorDomain" code:1 userInfo:0];
    (*(v8 + 16))(v8, v9);
  }
}

void __62__PKDAManager_credentialDidActivateWithCredential_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)updateCredentialConfigurationForCredential:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  managementSessionManager = self->_managementSessionManager;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __83__PKDAManager_updateCredentialConfigurationForCredential_configuration_completion___block_invoke;
  v16[3] = &unk_1E79CD288;
  v18 = v9;
  v19 = v10;
  v17 = v8;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  v15 = managementSessionManager;
  [(PKDASessionManager *)v15 performBlockWithSession:v16];
}

void __83__PKDAManager_updateCredentialConfigurationForCredential_configuration_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __83__PKDAManager_updateCredentialConfigurationForCredential_configuration_completion___block_invoke_2;
    v11[3] = &unk_1E79CD040;
    v12 = v5;
    v13 = *(a1 + 48);
    [a2 updateCredentialConfigurationForCredential:v7 configuration:v8 completion:v11];
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKSubcredentialProvisioningErrorDomain" code:1 userInfo:0];
    (*(v9 + 16))(v9, v10);
  }
}

void __83__PKDAManager_updateCredentialConfigurationForCredential_configuration_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

+ (void)aliroCompatibilityManifestWithCompletion:(id)a3
{
  v3 = a3;
  v13 = 0;
  v4 = [MEMORY[0x1E699A138] getAliroSupportedProtocolVersions:&v13];
  v5 = v13;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = [PKAliroCompatibilityManifest alloc];
    v9 = [v4 bleAdvertisingVersions];
    v10 = [v4 supportedBLEUWBProtocolVersions];
    v11 = [v4 expeditedTransactionSupportedProtocolVersions];
    v12 = [(PKAliroCompatibilityManifest *)v8 initWithSupportedBLEAdvertisingVersions:v9 supportedBLEUWBProtocolVersions:v10 supportedExpeditedTransactionProtocolVersions:v11];

    v3[2](v3, v12, 0);
  }

  else
  {
    (v3)[2](v3, 0, v5);
  }
}

- (void)deleteCredentials:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 pk_createArrayByApplyingBlock:&__block_literal_global_177];
  [(PKDAManager *)self deleteCredentialsForIdentifiers:v7 completion:v6];
}

- (void)deleteCredentialsForIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  managementSessionManager = self->_managementSessionManager;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__PKDAManager_deleteCredentialsForIdentifiers_completion___block_invoke;
  v12[3] = &unk_1E79CD108;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  v11 = managementSessionManager;
  [(PKDASessionManager *)v11 performBlockWithSession:v12];
}

void __58__PKDAManager_deleteCredentialsForIdentifiers_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v23 = v5;
  if (v5)
  {
    v22 = v6;
    v8 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v10 = *(a1 + 32);
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v34;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v33 + 1) + 8 * i);
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __58__PKDAManager_deleteCredentialsForIdentifiers_completion___block_invoke_2;
          v29[3] = &unk_1E79CD2D8;
          v30 = v23;
          v31 = v15;
          v32 = v9;
          [(PKAsyncUnaryOperationComposer *)v8 addOperation:v29];
        }

        v12 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v12);
    }

    v16 = [MEMORY[0x1E695DFB0] null];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __58__PKDAManager_deleteCredentialsForIdentifiers_completion___block_invoke_182;
    v25[3] = &unk_1E79CD328;
    v17 = *(a1 + 40);
    v26 = v9;
    v27 = v17;
    v7 = v22;
    v28 = v22;
    v18 = v9;
    v19 = [(PKAsyncUnaryOperationComposer *)v8 evaluateWithInput:v16 completion:v25];
  }

  else
  {
    v20 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "Failed to get session to delete credentials", buf, 2u);
    }

    v21 = *(a1 + 40);
    if (v21)
    {
      (*(v21 + 16))(v21, 0);
    }

    v7[2](v7);
  }
}

void __58__PKDAManager_deleteCredentialsForIdentifiers_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__PKDAManager_deleteCredentialsForIdentifiers_completion___block_invoke_3;
  v13[3] = &unk_1E79CD2B0;
  v13[4] = v9;
  v10 = *(a1 + 48);
  v15 = v6;
  v16 = v7;
  v14 = v10;
  v11 = v6;
  v12 = v7;
  [v8 deleteCredential:v9 completionHandler:v13];
}

void __58__PKDAManager_deleteCredentialsForIdentifiers_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKDAManager error deleting credential %@, error: %@", &v9, 0x16u);
    }

    [*(a1 + 40) addObject:v6];
  }

  (*(*(a1 + 56) + 16))();
}

uint64_t __58__PKDAManager_deleteCredentialsForIdentifiers_completion___block_invoke_182(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    if ([*(a1 + 32) count])
    {
      v3 = *(a1 + 32);
    }

    else
    {
      v3 = 0;
    }

    (*(v2 + 16))(v2, v3);
  }

  v4 = *(*(a1 + 48) + 16);

  return v4();
}

- (void)deleteCredentialsForReaderIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  managementSessionManager = self->_managementSessionManager;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__PKDAManager_deleteCredentialsForReaderIdentifiers_completion___block_invoke;
  v12[3] = &unk_1E79CD108;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  v11 = managementSessionManager;
  [(PKDASessionManager *)v11 performBlockWithSession:v12];
}

void __64__PKDAManager_deleteCredentialsForReaderIdentifiers_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __64__PKDAManager_deleteCredentialsForReaderIdentifiers_completion___block_invoke_2;
    v21[3] = &unk_1E79CD300;
    v22 = *(a1 + 32);
    v23 = v7;
    v24 = v5;
    v9 = v8;
    v25 = v9;
    v10 = v7;
    [v24 listCredentialsWithCompletion:v21];
    v11 = [MEMORY[0x1E695DFB0] null];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __64__PKDAManager_deleteCredentialsForReaderIdentifiers_completion___block_invoke_184;
    v17[3] = &unk_1E79CD328;
    v19 = v6;
    v20 = *(a1 + 40);
    v18 = v9;
    v12 = v9;
    v13 = [(PKAsyncUnaryOperationComposer *)v10 evaluateWithInput:v11 completion:v17];
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Failed to get session to delete credentials", v16, 2u);
    }

    v6[2](v6);
    v15 = *(a1 + 40);
    if (v15)
    {
      (*(v15 + 16))(v15, 0);
    }
  }
}

void __64__PKDAManager_deleteCredentialsForReaderIdentifiers_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = *(a1 + 32);
        v10 = [v8 pairedReaderIdentifier];
        LODWORD(v9) = [v9 containsObject:v10];

        if (v9)
        {
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __64__PKDAManager_deleteCredentialsForReaderIdentifiers_completion___block_invoke_3;
          v12[3] = &unk_1E79CD2D8;
          v12[4] = v8;
          v11 = *(a1 + 40);
          v13 = *(a1 + 48);
          v14 = *(a1 + 56);
          [v11 addOperation:v12];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }
}

void __64__PKDAManager_deleteCredentialsForReaderIdentifiers_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) identifier];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__PKDAManager_deleteCredentialsForReaderIdentifiers_completion___block_invoke_4;
  v14[3] = &unk_1E79CD2B0;
  v15 = v8;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v17 = v6;
  v18 = v7;
  v16 = v10;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  [v9 deleteCredential:v13 completionHandler:v14];
}

void __64__PKDAManager_deleteCredentialsForReaderIdentifiers_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKDAManager error deleting credential %@, error: %@", &v9, 0x16u);
    }

    [*(a1 + 40) addObject:v6];
  }

  (*(*(a1 + 56) + 16))();
}

uint64_t __64__PKDAManager_deleteCredentialsForReaderIdentifiers_completion___block_invoke_184(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 48);
  if (v3)
  {
    if ([*(a1 + 32) count])
    {
      v4 = *(a1 + 32);
    }

    else
    {
      v4 = 0;
    }

    v5 = *(v3 + 16);

    return v5(v3, v4);
  }

  return result;
}

- (void)deleteCredential:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  managementSessionManager = self->_managementSessionManager;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__PKDAManager_deleteCredential_completion___block_invoke;
  v12[3] = &unk_1E79CD108;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  v11 = managementSessionManager;
  [(PKDASessionManager *)v11 performBlockWithSession:v12];
}

void __43__PKDAManager_deleteCredential_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __43__PKDAManager_deleteCredential_completion___block_invoke_2;
    v11[3] = &unk_1E79C4C20;
    v12 = v7;
    v13 = *(a1 + 40);
    [v5 deleteCredential:v12 completionHandler:v11];
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Failed to get session to delete credentials", v10, 2u);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, 0);
    }
  }

  v6[2](v6);
}

void __43__PKDAManager_deleteCredential_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKDAManager deleted credential %@, error: %@", &v10, 0x16u);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v6);
  }
}

- (void)createInviteForShare:(id)a3 forCredential:(id)a4 analyticsUpdateConfig:(id)a5 authorization:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (v16)
  {
    sharingSessionManager = self->_sharingSessionManager;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __97__PKDAManager_createInviteForShare_forCredential_analyticsUpdateConfig_authorization_completion___block_invoke;
    v20[3] = &unk_1E79CD428;
    v26 = v16;
    v21 = v12;
    v22 = v13;
    v23 = v15;
    v24 = self;
    v25 = v14;
    v19 = sharingSessionManager;
    [(PKDASessionManager *)v19 performBlockWithSession:v20];
  }
}

void __97__PKDAManager_createInviteForShare_forCredential_analyticsUpdateConfig_authorization_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __97__PKDAManager_createInviteForShare_forCredential_analyticsUpdateConfig_authorization_completion___block_invoke_2;
    v14[3] = &unk_1E79CD400;
    v20 = v6;
    v21 = *(a1 + 72);
    v11 = *(a1 + 40);
    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    v15 = v11;
    v16 = v12;
    v17 = v13;
    v18 = v5;
    v19 = *(a1 + 32);
    [v18 createInviteForShare:v8 forCredential:v9 authorization:v10 completion:v14];
  }

  else
  {
    (*(*(a1 + 72) + 16))();
  }
}

void __97__PKDAManager_createInviteForShare_forCredential_analyticsUpdateConfig_authorization_completion___block_invoke_2(id *a1, void *a2, void *a3)
{
  v43[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(a1[9] + 2))();
    (*(a1[10] + 2))();
  }

  else
  {
    v7 = [a1[4] identifier];
    v8 = [v5 pk_arrayByApplyingBlock:&__block_literal_global_187_1];
    v9 = [objc_alloc(MEMORY[0x1E699A128]) initWithSharingFlow:{objc_msgSend(a1[5], "_DAKeySharingAnalyticsFlowFromPKSharingInvitationFlow:", objc_msgSend(a1[6], "sharingInvitationFlow"))}];
    v10 = [objc_alloc(MEMORY[0x1E699A140]) initWithInvitationIdentifiers:v8 keyIdentifier:v7 recipientFlow:0 analyticsData:v9];
    [a1[7] updateSharingAnalyticsWithConfig:v10 completion:&__block_literal_global_191];
    v11 = [a1[8] sharedEntitlements];
    v12 = [v11 pk_containsObjectPassingTest:&__block_literal_global_194];

    if (v12)
    {
      v29 = v7;
      v30 = v9;
      v13 = [a1[8] activationOptions];
      v14 = [v13 optionOfType:4];
      v15 = [v5 firstObject];
      v16 = [v15 privateData];
      v17 = [v16 vehicleEnteredPasscode];

      v31 = v14;
      if (v14 && v17)
      {
        [v14 setValue:v17];
      }

      v28 = v17;
      v18 = [v13 options];
      v19 = [v18 pk_createArrayBySafelyApplyingBlock:&__block_literal_global_197];

      if (![v19 count])
      {
        v20 = [objc_alloc(MEMORY[0x1E699A120]) initForSecondFactorNone];
        v43[0] = v20;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
        v22 = v21 = v13;

        v19 = v22;
        v13 = v21;
      }

      v23 = PKLogFacilityTypeGetObject(0x22uLL);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v40 = v13;
        v41 = 2112;
        v42 = v19;
        _os_log_debug_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEBUG, "Creating 2FA configurations from %@ \n Configs: %@", buf, 0x16u);
      }

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __97__PKDAManager_createInviteForShare_forCredential_analyticsUpdateConfig_authorization_completion___block_invoke_200;
      v36[3] = &unk_1E79CD3B0;
      v7 = v29;
      v37 = v29;
      v38 = v19;
      v24 = v19;
      v25 = [v8 pk_createArrayByApplyingBlock:v36];
      v26 = v13;
      v27 = a1[7];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __97__PKDAManager_createInviteForShare_forCredential_analyticsUpdateConfig_authorization_completion___block_invoke_2_203;
      v32[3] = &unk_1E79CD3D8;
      v34 = a1[9];
      v35 = a1[10];
      v33 = v5;
      [v27 getSecondFactorRequestForConfigs:v25 completion:v32];

      v9 = v30;
    }

    else
    {
      (*(a1[9] + 2))();
      (*(a1[10] + 2))();
    }
  }
}

id __97__PKDAManager_createInviteForShare_forCredential_analyticsUpdateConfig_authorization_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 genericData];
  v3 = [v2 sharingIdentifier];

  return v3;
}

BOOL __97__PKDAManager_createInviteForShare_forCredential_analyticsUpdateConfig_authorization_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 recipientCapabilityRole];
  v3 = v2 != 0;

  return v3;
}

id __97__PKDAManager_createInviteForShare_forCredential_analyticsUpdateConfig_authorization_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 value];
  v4 = [v2 type];

  v5 = 0;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v6 = [objc_alloc(MEMORY[0x1E699A120]) initForBringOtherKey];
    }

    else
    {
      if (v4 != 4)
      {
        goto LABEL_11;
      }

      v6 = [objc_alloc(MEMORY[0x1E699A120]) initForServerVerifiedPasscode:v3];
    }
  }

  else if (v4 == 1)
  {
    v6 = [objc_alloc(MEMORY[0x1E699A120]) initForDeviceVerifiedPasscode:v3 maxRetries:5];
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v6 = [objc_alloc(MEMORY[0x1E699A120]) initForVehicleVerifiedPasscode];
  }

  v5 = v6;
LABEL_11:

  return v5;
}

id __97__PKDAManager_createInviteForShare_forCredential_analyticsUpdateConfig_authorization_completion___block_invoke_200(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E699A148];
  v4 = a2;
  v5 = [[v3 alloc] initWithInvitationIdentifier:v4 keyIdentifier:*(a1 + 32) recipientFlow:0 secondFactorList:*(a1 + 40)];

  return v5;
}

void __97__PKDAManager_createInviteForShare_forCredential_analyticsUpdateConfig_authorization_completion___block_invoke_2_203(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = a2;
  v6(v5);
  (*(*(a1 + 48) + 16))();
}

- (int64_t)_DAKeySharingAnalyticsFlowFromPKSharingInvitationFlow:(unint64_t)a3
{
  if (a3 - 1 >= 6)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (void)setTransportChannelIdentifier:(id)a3 forCredential:(id)a4 forCredentialShare:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v13)
  {
    sharingSessionManager = self->_sharingSessionManager;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __89__PKDAManager_setTransportChannelIdentifier_forCredential_forCredentialShare_completion___block_invoke;
    v17[3] = &unk_1E79CD450;
    v21 = v13;
    v18 = v10;
    v19 = v11;
    v20 = v12;
    v16 = sharingSessionManager;
    [(PKDASessionManager *)v16 performBlockWithSession:v17];
  }
}

void __89__PKDAManager_setTransportChannelIdentifier_forCredential_forCredentialShare_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __89__PKDAManager_setTransportChannelIdentifier_forCredential_forCredentialShare_completion___block_invoke_2;
    v10[3] = &unk_1E79CD040;
    v11 = v5;
    v12 = *(a1 + 56);
    [a2 setTransportChannelIdentifier:v7 forCredential:v8 forCredentialShare:v9 completion:v10];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __89__PKDAManager_setTransportChannelIdentifier_forCredential_forCredentialShare_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3);
  (*(*(a1 + 40) + 16))();
}

- (void)handleOutstandingMessage:(id)a3 subcredentialIdentifier:(id)a4 credentialShareIdentifier:(id)a5 transportIdentifier:(id)a6 completion:(id)a7
{
  v10 = a5;
  v11 = a6;
  v12 = a7;
  if (v12)
  {
    v13 = PKDACarKeySharingMessageFromMessage(a3);
    if (v13)
    {
      v14 = MEMORY[0x1E699A138];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __121__PKDAManager_handleOutstandingMessage_subcredentialIdentifier_credentialShareIdentifier_transportIdentifier_completion___block_invoke;
      v16[3] = &unk_1E79C4450;
      v17 = v12;
      [v14 handleSharingMessage:v13 forInvitationIdentifier:v10 fromMailboxIdentifier:v11 completionHandler:v16];
    }

    else
    {
      v15 = PKLogFacilityTypeGetObject(0x1CuLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "PKDAManager: Error: unable to create DACarKeySharingMessage", buf, 2u);
      }

      (*(v12 + 2))(v12, 0);
    }
  }
}

- (void)routingInformationForInvitationWithIdentifier:(id)a3 fromMailboxIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    sharingSessionManager = self->_sharingSessionManager;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __101__PKDAManager_routingInformationForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler___block_invoke;
    v14[3] = &unk_1E79CD4A0;
    v17 = v10;
    v15 = v8;
    v16 = v9;
    v13 = sharingSessionManager;
    [(PKDASessionManager *)v13 performBlockWithSession:v14];
  }
}

void __101__PKDAManager_routingInformationForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __101__PKDAManager_routingInformationForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler___block_invoke_2;
    v9[3] = &unk_1E79CD478;
    v10 = v5;
    v11 = *(a1 + 48);
    [a2 routingInformationForInvitationWithIdentifier:v7 fromMailboxIdentifier:v8 completionHandler:v9];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __101__PKDAManager_routingInformationForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = a2;
  v6(v5);
  (*(*(a1 + 40) + 16))();
}

- (void)getProductPlanIdentifierRequestForInvitationWithIdentifier:(id)a3 fromMailboxIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    sharingSessionManager = self->_sharingSessionManager;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __107__PKDAManager_getProductPlanIdentifierRequestForInvitationWithIdentifier_fromMailboxIdentifier_completion___block_invoke;
    v14[3] = &unk_1E79CD4A0;
    v17 = v10;
    v15 = v8;
    v16 = v9;
    v13 = sharingSessionManager;
    [(PKDASessionManager *)v13 performBlockWithSession:v14];
  }
}

void __107__PKDAManager_getProductPlanIdentifierRequestForInvitationWithIdentifier_fromMailboxIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __107__PKDAManager_getProductPlanIdentifierRequestForInvitationWithIdentifier_fromMailboxIdentifier_completion___block_invoke_2;
    v9[3] = &unk_1E79CD4C8;
    v10 = v5;
    v11 = *(a1 + 48);
    [a2 getProductPlanIdentifierRequestForInvitationWithIdentifier:v7 fromMailboxIdentifier:v8 completion:v9];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __107__PKDAManager_getProductPlanIdentifierRequestForInvitationWithIdentifier_fromMailboxIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = a2;
  v6(v5);
  (*(*(a1 + 40) + 16))();
}

- (void)getPretrackShareDataForShare:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    sharingSessionManager = self->_sharingSessionManager;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__PKDAManager_getPretrackShareDataForShare_withCompletion___block_invoke;
    v11[3] = &unk_1E79CD540;
    v13 = v7;
    v12 = v6;
    v10 = sharingSessionManager;
    [(PKDASessionManager *)v10 performBlockWithSession:v11];
  }
}

void __59__PKDAManager_getPretrackShareDataForShare_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) activationOptions];
    v8 = [v7 optionOfType:4];

    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x1E699A120]);
      v10 = [v8 value];
      v11 = [v9 initForServerVerifiedPasscode:v10];

      v12 = PKLogFacilityTypeGetObject(0x22uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v23 = v8;
        v24 = 2112;
        v25 = v11;
        _os_log_debug_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEBUG, "Creating 2FA configuration from %@\nConfig: %@", buf, 0x16u);
      }

      v13 = [*(a1 + 32) credentialShares];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __59__PKDAManager_getPretrackShareDataForShare_withCompletion___block_invoke_205;
      v19[3] = &unk_1E79CD4F0;
      v20 = *(a1 + 32);
      v21 = v11;
      v14 = v11;
      v15 = [v13 pk_createArrayByApplyingBlock:v19];

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __59__PKDAManager_getPretrackShareDataForShare_withCompletion___block_invoke_2;
      v16[3] = &unk_1E79CD518;
      v17 = v6;
      v18 = *(a1 + 40);
      [v5 getSecondFactorRequestForConfigs:v15 completion:v16];
    }

    else
    {
      v6[2](v6);
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

id __59__PKDAManager_getPretrackShareDataForShare_withCompletion___block_invoke_205(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E699A148];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 identifier];

  v7 = [*(a1 + 32) subcredentialIdentifier];
  v11[0] = *(a1 + 40);
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [v5 initWithInvitationIdentifier:v6 keyIdentifier:v7 recipientFlow:1 secondFactorList:v8];

  return v9;
}

void __59__PKDAManager_getPretrackShareDataForShare_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = a2;
  v6(v5);
  v9 = *(a1 + 40);
  v10 = [v8 firstObject];

  (*(v9 + 16))(v9, v10, v7);
}

- (void)getPretrackRequestForKeyWithIdentifier:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    sharingSessionManager = self->_sharingSessionManager;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69__PKDAManager_getPretrackRequestForKeyWithIdentifier_withCompletion___block_invoke;
    v11[3] = &unk_1E79CD540;
    v13 = v7;
    v12 = v6;
    v10 = sharingSessionManager;
    [(PKDASessionManager *)v10 performBlockWithSession:v11];
  }
}

void __69__PKDAManager_getPretrackRequestForKeyWithIdentifier_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__PKDAManager_getPretrackRequestForKeyWithIdentifier_withCompletion___block_invoke_2;
    v8[3] = &unk_1E79CD4C8;
    v9 = v5;
    v10 = *(a1 + 40);
    [a2 getPretrackRequestForKeyWithIdentifier:v7 withCompletion:v8];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __69__PKDAManager_getPretrackRequestForKeyWithIdentifier_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = a2;
  v6(v5);
  (*(*(a1 + 40) + 16))();
}

- (void)startShareAcceptanceFlowWithInvitation:(id)a3 fromMailboxIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    sharingSessionManager = self->_sharingSessionManager;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __87__PKDAManager_startShareAcceptanceFlowWithInvitation_fromMailboxIdentifier_completion___block_invoke;
    v14[3] = &unk_1E79CD4A0;
    v17 = v10;
    v15 = v8;
    v16 = v9;
    v13 = sharingSessionManager;
    [(PKDASessionManager *)v13 performBlockWithSession:v14];
  }
}

void __87__PKDAManager_startShareAcceptanceFlowWithInvitation_fromMailboxIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = PKDACarKeySharingMessageFromMessage(*(a1 + 32));
    if (v7)
    {
      v8 = *(a1 + 40);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __87__PKDAManager_startShareAcceptanceFlowWithInvitation_fromMailboxIdentifier_completion___block_invoke_207;
      v10[3] = &unk_1E79CD040;
      v11 = v6;
      v12 = *(a1 + 48);
      [v5 startShareAcceptanceFlowWithInvitation:v7 fromMailboxIdentifier:v8 completion:v10];
    }

    else
    {
      v9 = PKLogFacilityTypeGetObject(0x1CuLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKDAManager: Error: unable to create DACarKeySharingMessage", buf, 2u);
      }

      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __87__PKDAManager_startShareAcceptanceFlowWithInvitation_fromMailboxIdentifier_completion___block_invoke_207(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3);
  (*(*(a1 + 40) + 16))();
}

- (void)acceptCrossPlatformInvitationWithIdentifier:(id)a3 transportChannelIdentifier:(id)a4 activationCode:(id)a5 encryptedProductPlanIdentifierContainer:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (v16)
  {
    sharingSessionManager = self->_sharingSessionManager;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __152__PKDAManager_acceptCrossPlatformInvitationWithIdentifier_transportChannelIdentifier_activationCode_encryptedProductPlanIdentifierContainer_completion___block_invoke;
    v20[3] = &unk_1E79CD428;
    v26 = v16;
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v25 = self;
    v19 = sharingSessionManager;
    [(PKDASessionManager *)v19 performBlockWithSession:v20];
  }
}

void __152__PKDAManager_acceptCrossPlatformInvitationWithIdentifier_transportChannelIdentifier_activationCode_encryptedProductPlanIdentifierContainer_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __152__PKDAManager_acceptCrossPlatformInvitationWithIdentifier_transportChannelIdentifier_activationCode_encryptedProductPlanIdentifierContainer_completion___block_invoke_2;
    v13[3] = &unk_1E79CD590;
    v14 = v5;
    v11 = *(a1 + 72);
    v12 = *(a1 + 64);
    v15 = v11;
    v13[4] = v12;
    [a2 acceptCrossPlatformInvitationWithIdentifier:v7 transportChannelIdentifier:v8 activationCode:v9 encryptedProductPlanIdentifierContainer:v10 completion:v13];
  }

  else
  {
    (*(*(a1 + 72) + 16))();
  }
}

void __152__PKDAManager_acceptCrossPlatformInvitationWithIdentifier_transportChannelIdentifier_activationCode_encryptedProductPlanIdentifierContainer_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 40);
  v9 = *(v8 + 16);
  v10 = a3;
  v11 = a2;
  v9(v8);
  v12 = PKCarKeyMessageFromDACarKeySharingMessage(v11);

  if (v7)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = [v10 identifier];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __152__PKDAManager_acceptCrossPlatformInvitationWithIdentifier_transportChannelIdentifier_activationCode_encryptedProductPlanIdentifierContainer_completion___block_invoke_3;
    v15[3] = &unk_1E79CD568;
    v18 = *(a1 + 48);
    v16 = v12;
    v17 = 0;
    [v13 deviceCredentialForIdentifier:v14 completion:v15];

    v10 = v18;
  }
}

- (void)deviceCredentialForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  managementSessionManager = self->_managementSessionManager;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__PKDAManager_deviceCredentialForIdentifier_completion___block_invoke;
  v11[3] = &unk_1E79CD108;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(PKDASessionManager *)managementSessionManager performBlockWithSession:v11];
}

void __56__PKDAManager_deviceCredentialForIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__PKDAManager_deviceCredentialForIdentifier_completion___block_invoke_2;
  v7[3] = &unk_1E79CD5B8;
  v9 = v5;
  v8 = *(a1 + 32);
  v10 = *(a1 + 40);
  v6 = v5;
  [a2 listCredentialsWithCompletion:v7];
}

void __56__PKDAManager_deviceCredentialForIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__PKDAManager_deviceCredentialForIdentifier_completion___block_invoke_3;
  v7[3] = &unk_1E79C7E70;
  v8 = *(a1 + 32);
  v6 = [v5 pk_firstObjectPassingTest:v7];

  (*(*(a1 + 48) + 16))();
}

uint64_t __56__PKDAManager_deviceCredentialForIdentifier_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = v2;
  v5 = v3;
  v6 = v5;
  if (v4 == v5)
  {
    v8 = 1;
  }

  else
  {
    if (v4)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = [v4 isEqualToString:v5];
    }
  }

  return v8;
}

- (void)accountAttestionRequestForCredential:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  managementSessionManager = self->_managementSessionManager;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__PKDAManager_accountAttestionRequestForCredential_withCompletion___block_invoke;
  v12[3] = &unk_1E79CD108;
  v13 = v6;
  v14 = v7;
  v9 = v6;
  v10 = v7;
  v11 = managementSessionManager;
  [(PKDASessionManager *)v11 performBlockWithSession:v12];
}

void __67__PKDAManager_accountAttestionRequestForCredential_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __67__PKDAManager_accountAttestionRequestForCredential_withCompletion___block_invoke_2;
    v8[3] = &unk_1E79CD5E0;
    v9 = v5;
    v10 = *(a1 + 40);
    [a2 accountAttestationRequestForCredential:v7 completion:v8];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __67__PKDAManager_accountAttestionRequestForCredential_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = a2;
  v6(v5);
  (*(*(a1 + 40) + 16))();
}

- (void)setAccountAttestation:(id)a3 forCredential:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  sharingSessionManager = self->_sharingSessionManager;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__PKDAManager_setAccountAttestation_forCredential_withCompletion___block_invoke;
  v16[3] = &unk_1E79CD4A0;
  v18 = v9;
  v19 = v10;
  v17 = v8;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  v15 = sharingSessionManager;
  [(PKDASessionManager *)v15 performBlockWithSession:v16];
}

void __66__PKDAManager_setAccountAttestation_forCredential_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__PKDAManager_setAccountAttestation_forCredential_withCompletion___block_invoke_2;
    v9[3] = &unk_1E79CD040;
    v10 = v5;
    v11 = *(a1 + 48);
    [a2 setAccountAttestation:v7 forCredential:v8 withCompletion:v9];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __66__PKDAManager_setAccountAttestation_forCredential_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3);
  (*(*(a1 + 40) + 16))();
}

- (void)setAccountAttestation:(id)a3 forUpgradeCredential:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  managementSessionManager = self->_managementSessionManager;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__PKDAManager_setAccountAttestation_forUpgradeCredential_withCompletion___block_invoke;
  v16[3] = &unk_1E79CD288;
  v18 = v9;
  v19 = v10;
  v17 = v8;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  v15 = managementSessionManager;
  [(PKDASessionManager *)v15 performBlockWithSession:v16];
}

void __73__PKDAManager_setAccountAttestation_forUpgradeCredential_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __73__PKDAManager_setAccountAttestation_forUpgradeCredential_withCompletion___block_invoke_2;
    v9[3] = &unk_1E79CD040;
    v10 = v5;
    v11 = *(a1 + 48);
    [a2 setAccountAttestation:v7 forUpgradeCredential:v8 withCompletion:v9];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __73__PKDAManager_setAccountAttestation_forUpgradeCredential_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3);
  (*(*(a1 + 40) + 16))();
}

- (void)retryActivationCodeForCredentialIdentifier:(id)a3 activationCode:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  sharingSessionManager = self->_sharingSessionManager;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__PKDAManager_retryActivationCodeForCredentialIdentifier_activationCode_completion___block_invoke;
  v16[3] = &unk_1E79CD4A0;
  v18 = v9;
  v19 = v10;
  v17 = v8;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  v15 = sharingSessionManager;
  [(PKDASessionManager *)v15 performBlockWithSession:v16];
}

void __84__PKDAManager_retryActivationCodeForCredentialIdentifier_activationCode_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __84__PKDAManager_retryActivationCodeForCredentialIdentifier_activationCode_completion___block_invoke_2;
    v9[3] = &unk_1E79CD040;
    v10 = v5;
    v11 = *(a1 + 48);
    [a2 retryActivationCodeForCredentialIdentifier:v7 activationCode:v8 completion:v9];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __84__PKDAManager_retryActivationCodeForCredentialIdentifier_activationCode_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
  v4 = [v3 domain];
  v5 = *MEMORY[0x1E699A0F8];
  v6 = v4;
  v7 = v6;
  if (v6 == v5)
  {
  }

  else
  {
    if (!v6 || !v5)
    {

LABEL_12:
      goto LABEL_13;
    }

    v8 = [v6 isEqualToString:v5];

    if (!v8)
    {
      goto LABEL_12;
    }
  }

  v9 = [v3 code];

  if (v9 != 116)
  {
LABEL_13:
    v11 = *(*(a1 + 40) + 16);
    goto LABEL_14;
  }

  v10 = PKLogFacilityTypeGetObject(0x22uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 0;
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "KML returned 'friend not ready for passcode' error. Ignoring error so that call and KML both think they are waiting on the sender.", v12, 2u);
  }

  v11 = *(*(a1 + 40) + 16);
LABEL_14:
  v11();
}

- (void)rejectInvitation:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = PKDACarKeySharingMessageFromMessage(a3);
  v7 = MEMORY[0x1E699A138];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__PKDAManager_rejectInvitation_completion___block_invoke;
  v9[3] = &unk_1E79CD608;
  v10 = v5;
  v8 = v5;
  [v7 rejectSharingInvitation:v6 completionHandler:v9];
}

void __43__PKDAManager_rejectInvitation_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = PKCarKeyMessageFromDACarKeySharingMessage(a2);
    (*(v2 + 16))(v2, v5, 0);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4);
  }
}

- (void)acceptInvitationWithIdentifier:(id)a3 activationCode:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(PKSubcredentialSharingAnalyticsData);
  [(PKDAManager *)self acceptInvitationWithIdentifier:v10 activationCode:v9 analyticsUpdateConfig:v11 completion:v8];
}

- (void)acceptInvitationWithIdentifier:(id)a3 activationCode:(id)a4 analyticsUpdateConfig:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v13)
  {
    sharingSessionManager = self->_sharingSessionManager;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __94__PKDAManager_acceptInvitationWithIdentifier_activationCode_analyticsUpdateConfig_completion___block_invoke;
    v17[3] = &unk_1E79CD658;
    v22 = v13;
    v18 = v10;
    v19 = v11;
    v20 = self;
    v21 = v12;
    v16 = sharingSessionManager;
    [(PKDASessionManager *)v16 performBlockWithSession:v17];
  }
}

void __94__PKDAManager_acceptInvitationWithIdentifier_activationCode_analyticsUpdateConfig_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __94__PKDAManager_acceptInvitationWithIdentifier_activationCode_analyticsUpdateConfig_completion___block_invoke_2;
    v10[3] = &unk_1E79CD630;
    v9 = *(a1 + 56);
    v10[4] = *(a1 + 48);
    v11 = v9;
    v12 = *(a1 + 32);
    v13 = v5;
    v14 = v6;
    v15 = *(a1 + 64);
    [v13 acceptInvitationWithIdentifier:v7 activationCode:v8 completion:v10];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void __94__PKDAManager_acceptInvitationWithIdentifier_activationCode_analyticsUpdateConfig_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E699A128];
  v4 = a2;
  v5 = [[v3 alloc] initWithSharingFlow:{objc_msgSend(*(a1 + 32), "_DAKeySharingAnalyticsFlowFromPKSharingInvitationFlow:", objc_msgSend(*(a1 + 40), "sharingInvitationFlow"))}];
  v6 = objc_alloc(MEMORY[0x1E699A140]);
  v10[0] = *(a1 + 48);
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8 = [*(a1 + 40) sharerKeyIdentifier];
  v9 = [v6 initWithInvitationIdentifiers:v7 keyIdentifier:v8 recipientFlow:1 analyticsData:v5];

  [*(a1 + 56) updateSharingAnalyticsWithConfig:v9 completion:&__block_literal_global_215];
  (*(*(a1 + 64) + 16))();
  (*(*(a1 + 72) + 16))();
}

- (void)retryActivationCode:(id)a3 forInvitationIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    sharingSessionManager = self->_sharingSessionManager;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __70__PKDAManager_retryActivationCode_forInvitationIdentifier_completion___block_invoke;
    v14[3] = &unk_1E79CD4A0;
    v17 = v10;
    v15 = v8;
    v16 = v9;
    v13 = sharingSessionManager;
    [(PKDASessionManager *)v13 performBlockWithSession:v14];
  }
}

void __70__PKDAManager_retryActivationCode_forInvitationIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__PKDAManager_retryActivationCode_forInvitationIdentifier_completion___block_invoke_2;
    v9[3] = &unk_1E79CD680;
    v10 = v5;
    v11 = *(a1 + 48);
    [a2 retryActivationCode:v7 forInvitationIdentifier:v8 completion:v9];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __70__PKDAManager_retryActivationCode_forInvitationIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3);
  (*(*(a1 + 40) + 16))();
}

- (void)handleRecipientMessage:(id)a3 forInvitationIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    sharingSessionManager = self->_sharingSessionManager;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __73__PKDAManager_handleRecipientMessage_forInvitationIdentifier_completion___block_invoke;
    v14[3] = &unk_1E79CD4A0;
    v17 = v10;
    v15 = v8;
    v16 = v9;
    v13 = sharingSessionManager;
    [(PKDASessionManager *)v13 performBlockWithSession:v14];
  }
}

void __73__PKDAManager_handleRecipientMessage_forInvitationIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = PKDACarKeySharingMessageFromMessage(*(a1 + 32));
    if (v7)
    {
      v8 = *(a1 + 40);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __73__PKDAManager_handleRecipientMessage_forInvitationIdentifier_completion___block_invoke_217;
      v10[3] = &unk_1E79CD680;
      v11 = v6;
      v12 = *(a1 + 48);
      [v5 handleRecipientMessage:v7 forInvitationIdentifier:v8 completion:v10];
    }

    else
    {
      v9 = PKLogFacilityTypeGetObject(0x1CuLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKDAManager: Error: unable to create DACarKeySharingMessage", buf, 2u);
      }

      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __73__PKDAManager_handleRecipientMessage_forInvitationIdentifier_completion___block_invoke_217(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3);
  (*(*(a1 + 40) + 16))();
}

- (void)retryActivationCodeWithInvitationIdentifier:(id)a3 activationCode:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    sharingSessionManager = self->_sharingSessionManager;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __85__PKDAManager_retryActivationCodeWithInvitationIdentifier_activationCode_completion___block_invoke;
    v14[3] = &unk_1E79CD4A0;
    v17 = v10;
    v15 = v9;
    v16 = v8;
    v13 = sharingSessionManager;
    [(PKDASessionManager *)v13 performBlockWithSession:v14];
  }
}

void __85__PKDAManager_retryActivationCodeWithInvitationIdentifier_activationCode_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __85__PKDAManager_retryActivationCodeWithInvitationIdentifier_activationCode_completion___block_invoke_2;
    v9[3] = &unk_1E79CD680;
    v10 = v5;
    v11 = *(a1 + 48);
    [a2 retryActivationCode:v7 forInvitationIdentifier:v8 completion:v9];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __85__PKDAManager_retryActivationCodeWithInvitationIdentifier_activationCode_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3);
  (*(*(a1 + 40) + 16))();
}

- (void)setEncryptedProductPlanIdentifierContainer:(id)a3 forInvitationIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    sharingSessionManager = self->_sharingSessionManager;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __93__PKDAManager_setEncryptedProductPlanIdentifierContainer_forInvitationIdentifier_completion___block_invoke;
    v14[3] = &unk_1E79CD4A0;
    v17 = v10;
    v15 = v8;
    v16 = v9;
    v13 = sharingSessionManager;
    [(PKDASessionManager *)v13 performBlockWithSession:v14];
  }
}

void __93__PKDAManager_setEncryptedProductPlanIdentifierContainer_forInvitationIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __93__PKDAManager_setEncryptedProductPlanIdentifierContainer_forInvitationIdentifier_completion___block_invoke_2;
    v9[3] = &unk_1E79CD040;
    v10 = v5;
    v11 = *(a1 + 48);
    [a2 setEncryptedProductPlanIdentifierContainer:v7 forInvitationIdentifier:v8 completion:v9];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __93__PKDAManager_setEncryptedProductPlanIdentifierContainer_forInvitationIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3);
  (*(*(a1 + 40) + 16))();
}

- (void)createSilentInviteForSharingSessionIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    sharingSessionManager = self->_sharingSessionManager;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__PKDAManager_createSilentInviteForSharingSessionIdentifier_completion___block_invoke;
    v11[3] = &unk_1E79CD540;
    v13 = v7;
    v12 = v6;
    v10 = sharingSessionManager;
    [(PKDASessionManager *)v10 performBlockWithSession:v11];
  }
}

void __72__PKDAManager_createSilentInviteForSharingSessionIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __72__PKDAManager_createSilentInviteForSharingSessionIdentifier_completion___block_invoke_2;
    v8[3] = &unk_1E79CD6A8;
    v9 = v5;
    v10 = *(a1 + 40);
    [a2 createSilentInviteForSharingSessionIdentifier:v7 completion:v8];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __72__PKDAManager_createSilentInviteForSharingSessionIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  (*(*(a1 + 32) + 16))();
  v7 = *(a1 + 40);
  if (v5)
  {
    v9[0] = v5;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    (*(v7 + 16))(v7, v8, 0);
  }

  else
  {
    (*(v7 + 16))(v7, 0, v6);
  }
}

- (void)accountAttestationRequestForManufacturer:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    managementSessionManager = self->_managementSessionManager;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__PKDAManager_accountAttestationRequestForManufacturer_completion___block_invoke;
    v11[3] = &unk_1E79CD108;
    v13 = v7;
    v12 = v6;
    v10 = managementSessionManager;
    [(PKDASessionManager *)v10 performBlockWithSession:v11];
  }
}

void __67__PKDAManager_accountAttestationRequestForManufacturer_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67__PKDAManager_accountAttestationRequestForManufacturer_completion___block_invoke_2;
    v10[3] = &unk_1E79CD5E0;
    v11 = v5;
    v12 = *(a1 + 40);
    [a2 accountAttestationRequestForManufacturer:v7 completion:v10];
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKSubcredentialProvisioningErrorDomain" code:1 userInfo:0];
    (*(v8 + 16))(v8, 0, v9);
  }
}

void __67__PKDAManager_accountAttestationRequestForManufacturer_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = a2;
  v6(v5);
  (*(*(a1 + 40) + 16))();
}

- (void)preWarmForManufacturer:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    managementSessionManager = self->_managementSessionManager;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49__PKDAManager_preWarmForManufacturer_completion___block_invoke;
    v11[3] = &unk_1E79CD108;
    v13 = v7;
    v12 = v6;
    v10 = managementSessionManager;
    [(PKDASessionManager *)v10 performBlockWithSession:v11];
  }
}

void __49__PKDAManager_preWarmForManufacturer_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__PKDAManager_preWarmForManufacturer_completion___block_invoke_2;
    v10[3] = &unk_1E79CD040;
    v11 = v5;
    v12 = *(a1 + 40);
    [a2 preWarmForManufacturer:v7 completion:v10];
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKSubcredentialProvisioningErrorDomain" code:1 userInfo:0];
    (*(v8 + 16))(v8, v9);
  }
}

void __49__PKDAManager_preWarmForManufacturer_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3);
  (*(*(a1 + 40) + 16))();
}

+ (BOOL)isSharingEnabledForManufacturerIdentifier:(id)a3 issuerIdentifier:(id)a4 productPlanIdentifier:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    v16 = 0;
    v10 = [MEMORY[0x1E699A138] isSharingEnabledForManufacturer:v7 brand:v8 ppid:v9 error:&v16];
    v11 = v16;
    v12 = PKLogFacilityTypeGetObject(0x17uLL);
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v11;
        _os_log_error_impl(&dword_1AD337000, v13, OS_LOG_TYPE_ERROR, "PKDAManager: Failed to check +[PKDAManager isSharingEnabledForManufacturerIdentifier:issuerIdentifier:productPlanIdentifier:]: %@", buf, 0xCu);
      }
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = NSStringFromBOOL();
      *buf = 138413058;
      v18 = v9;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v15;
      _os_log_debug_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEBUG, "PKDAManager: isSharingEnabledForManufacturerIdentifier: %@, issuerIdentifier: %@, productPlanIdentifier: %@, returned result: %@", buf, 0x2Au);
    }
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AD337000, v11, OS_LOG_TYPE_ERROR, "PKDAManager: Missing manufacturerIdentifier in +[PKDAManager isSharingEnabledForManufacturerIdentifier:issuerIdentifier:productPlanIdentifier:]", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (void)hasUpgradeAvailableForKeyWithCredential:(id)a3 versionType:(unint64_t)a4 versions:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (v12)
  {
    managementSessionManager = self->_managementSessionManager;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __87__PKDAManager_hasUpgradeAvailableForKeyWithCredential_versionType_versions_completion___block_invoke;
    v16[3] = &unk_1E79CD6F8;
    v19 = v12;
    v20 = a4;
    v17 = v10;
    v18 = v11;
    v15 = managementSessionManager;
    [(PKDASessionManager *)v15 performBlockWithSession:v16];
  }
}

void __87__PKDAManager_hasUpgradeAvailableForKeyWithCredential_versionType_versions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __87__PKDAManager_hasUpgradeAvailableForKeyWithCredential_versionType_versions_completion___block_invoke_2;
    v12[3] = &unk_1E79CD6D0;
    v13 = v5;
    v14 = *(a1 + 48);
    [a2 hasUpgradeAvailableForKeyWithCredential:v8 versionType:v7 versions:v9 completion:v12];

    v10 = v13;
  }

  else
  {
    v11 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKSubcredentialProvisioningErrorDomain" code:1 userInfo:0];
    (*(v11 + 16))(v11, &v15, v10);
  }
}

void __87__PKDAManager_hasUpgradeAvailableForKeyWithCredential_versionType_versions_completion___block_invoke_2(uint64_t a1, _OWORD *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a3;
  v6(v5);
  v8 = *(a1 + 40);
  v9 = *(v8 + 16);
  v10 = a2[1];
  v12[0] = *a2;
  v12[1] = v10;
  v9(v8, v12, v7, v11);
}

- (void)upgradeKeyWithCredential:(id)a3 versionType:(unint64_t)a4 version:(unint64_t)a5 upgradeInformation:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  managementSessionManager = self->_managementSessionManager;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __90__PKDAManager_upgradeKeyWithCredential_versionType_version_upgradeInformation_completion___block_invoke;
  v20[3] = &unk_1E79CD720;
  v23 = v14;
  v24 = a4;
  v25 = a5;
  v21 = v12;
  v22 = v13;
  v16 = v13;
  v17 = v12;
  v18 = v14;
  v19 = managementSessionManager;
  [(PKDASessionManager *)v19 performBlockWithSession:v20];
}

void __90__PKDAManager_upgradeKeyWithCredential_versionType_version_upgradeInformation_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __90__PKDAManager_upgradeKeyWithCredential_versionType_version_upgradeInformation_completion___block_invoke_2;
    v14[3] = &unk_1E79CD040;
    v15 = v6;
    v16 = *(a1 + 48);
    [v5 upgradeKeyWithCredential:v10 versionType:v8 version:v9 upgradeInformation:v11 completion:v14];
  }

  else
  {
    v12 = *(a1 + 48);
    if (v12)
    {
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKSubcredentialProvisioningErrorDomain" code:1 userInfo:0];
      (*(v12 + 16))(v12, v13);
    }
  }
}

void __90__PKDAManager_upgradeKeyWithCredential_versionType_version_upgradeInformation_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)commitUpgradeForKeyWithCredential:(id)a3 versionType:(unint64_t)a4 version:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  managementSessionManager = self->_managementSessionManager;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__PKDAManager_commitUpgradeForKeyWithCredential_versionType_version_completion___block_invoke;
  v16[3] = &unk_1E79CD748;
  v17 = v10;
  v18 = v11;
  v19 = a4;
  v20 = a5;
  v13 = v10;
  v14 = v11;
  v15 = managementSessionManager;
  [(PKDASessionManager *)v15 performBlockWithSession:v16];
}

void __80__PKDAManager_commitUpgradeForKeyWithCredential_versionType_version_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __80__PKDAManager_commitUpgradeForKeyWithCredential_versionType_version_completion___block_invoke_2;
    v13[3] = &unk_1E79CD040;
    v14 = v6;
    v15 = *(a1 + 40);
    [v5 commitUpgradeForKeyWithCredential:v8 versionType:v9 version:v10 completion:v13];
  }

  else
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKSubcredentialProvisioningErrorDomain" code:1 userInfo:0];
      (*(v11 + 16))(v11, v12);
    }
  }
}

void __80__PKDAManager_commitUpgradeForKeyWithCredential_versionType_version_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)revertUpgradeForKeyWithCredential:(id)a3 versionType:(unint64_t)a4 version:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  managementSessionManager = self->_managementSessionManager;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__PKDAManager_revertUpgradeForKeyWithCredential_versionType_version_completion___block_invoke;
  v16[3] = &unk_1E79CD748;
  v17 = v10;
  v18 = v11;
  v19 = a4;
  v20 = a5;
  v13 = v10;
  v14 = v11;
  v15 = managementSessionManager;
  [(PKDASessionManager *)v15 performBlockWithSession:v16];
}

void __80__PKDAManager_revertUpgradeForKeyWithCredential_versionType_version_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __80__PKDAManager_revertUpgradeForKeyWithCredential_versionType_version_completion___block_invoke_2;
    v13[3] = &unk_1E79CD040;
    v14 = v6;
    v15 = *(a1 + 40);
    [v5 revertUpgradeForKeyWithCredential:v8 versionType:v9 version:v10 completion:v13];
  }

  else
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKSubcredentialProvisioningErrorDomain" code:1 userInfo:0];
      (*(v11 + 16))(v11, v12);
    }
  }
}

void __80__PKDAManager_revertUpgradeForKeyWithCredential_versionType_version_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

@end