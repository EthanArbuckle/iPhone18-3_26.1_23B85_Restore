@interface PKAppletSubcredentialManagementSession
+ (id)createSessionWithDelegate:(id)delegate;
- (id)trackSubcredential:(id)subcredential deviceData:(id)data attestation:(id)attestation;
- (id)trackSubcredential:(id)subcredential encryptedContainer:(id)container withReceipt:(id)receipt;
- (void)accountAttestationRequestForCredential:(id)credential completion:(id)completion;
- (void)accountAttestationRequestForManufacturer:(id)manufacturer completion:(id)completion;
- (void)commitUpgradeForKeyWithCredential:(id)credential versionType:(unint64_t)type version:(unint64_t)version completion:(id)completion;
- (void)credentialDidActivateWithCredential:(id)credential completion:(id)completion;
- (void)deleteCredential:(id)credential completionHandler:(id)handler;
- (void)hasUpgradeAvailableForKeyWithCredential:(id)credential versionType:(unint64_t)type versions:(id)versions completion:(id)completion;
- (void)immobilizerTokensCountForCredential:(id)credential completion:(id)completion;
- (void)listCredentialsWithCompletion:(id)completion;
- (void)listReceivedSharingInvitationsWithCompletion:(id)completion;
- (void)listSharingInvitationsForKeyIdentifier:(id)identifier withCompletion:(id)completion;
- (void)preWarmForManufacturer:(id)manufacturer completion:(id)completion;
- (void)removeSharedCredentialsWithIdentifiers:(id)identifiers credential:(id)credential completion:(id)completion;
- (void)rescindInvitations:(id)invitations onCredential:(id)credential withCompletion:(id)completion;
- (void)revertUpgradeForKeyWithCredential:(id)credential versionType:(unint64_t)type version:(unint64_t)version completion:(id)completion;
- (void)revokeSharedCredentials:(id)credentials onCredential:(id)credential withCompletion:(id)completion;
- (void)revokeSharesWithGroupIdentifiers:(id)identifiers shouldCascade:(BOOL)cascade credential:(id)credential completion:(id)completion;
- (void)setAccountAttestation:(id)attestation forUpgradeCredential:(id)credential withCompletion:(id)completion;
- (void)signData:(id)data auth:(id)auth bundleIdentifier:(id)identifier nonce:(id)nonce credential:(id)credential completion:(id)completion;
- (void)updateCredentialConfigurationForCredential:(id)credential configuration:(id)configuration completion:(id)completion;
- (void)upgradeKeyWithCredential:(id)credential versionType:(unint64_t)type version:(unint64_t)version upgradeInformation:(id)information completion:(id)completion;
@end

@implementation PKAppletSubcredentialManagementSession

+ (id)createSessionWithDelegate:(id)delegate
{
  v14 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v5 = [(PKDASession *)[PKAppletSubcredentialManagementSession alloc] initWithDelegate:delegateCopy];

  mEMORY[0x1E699A138] = [MEMORY[0x1E699A138] sharedManager];
  v7 = [mEMORY[0x1E699A138] createManagementSessionWithDelegate:v5];

  if (v7)
  {
    [(PKDASession *)v5 setSession:v7];
    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Starting management session: %p", &v12, 0xCu);
    }

    v9 = v5;
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Failed to create management session!", &v12, 2u);
    }

    [(PKDASession *)v5 setDelegate:0];
    v9 = 0;
  }

  return v9;
}

- (void)listCredentialsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(PKDASession *)self state]== 2)
    {
      session = [(PKDASession *)self session];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __72__PKAppletSubcredentialManagementSession_listCredentialsWithCompletion___block_invoke;
      v7[3] = &unk_1E79C5440;
      v8 = completionCopy;
      [session listKeysWithHandler:v7];
    }

    else
    {
      v6 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for enumeration operation", buf, 2u);
      }

      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

void __72__PKAppletSubcredentialManagementSession_listCredentialsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v20 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v7;
      _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "Failed to list keys with error: %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v27 = [v5 count];
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "list Credentials count: %lu", buf, 0xCu);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          v16 = [PKAppletSubcredential alloc];
          v17 = [(PKAppletSubcredential *)v16 initWithKeyInformation:v15, v21];
          if (v17)
          {
            [v8 addObject:v17];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    v18 = *(a1 + 32);
    v19 = [v8 copy];
    (*(v18 + 16))(v18, v19);
  }
}

- (void)revokeSharedCredentials:(id)credentials onCredential:(id)credential withCompletion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  credentialsCopy = credentials;
  credentialCopy = credential;
  completionCopy = completion;
  if ([(PKDASession *)self state]== 2)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = credentialsCopy;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        v16 = 0;
        do
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          identifier = [*(*(&v23 + 1) + 8 * v16) identifier];
          [v11 safelyAddObject:identifier];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v14);
    }

    session = [(PKDASession *)self session];
    identifier2 = [credentialCopy identifier];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __94__PKAppletSubcredentialManagementSession_revokeSharedCredentials_onCredential_withCompletion___block_invoke;
    v21[3] = &unk_1E79DC470;
    v22 = completionCopy;
    [session revokeKeysWithIdentifiers:v11 sharedByOwnerKeyWithIdentifier:identifier2 callback:v21];

    goto LABEL_14;
  }

  v20 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for revoke operation", buf, 2u);
  }

  if (completionCopy)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v11);
LABEL_14:
  }
}

void __94__PKAppletSubcredentialManagementSession_revokeSharedCredentials_onCredential_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v7;
      v10 = "Failed to revoke credentials with error: %@";
      v11 = v9;
      v12 = 12;
      goto LABEL_8;
    }
  }

  else
  {
    v8 = [[PKSubcredentialEncryptedContainer alloc] initWithRequest:v5];
    if (v8)
    {
      goto LABEL_10;
    }

    v9 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      v10 = "Failed to parse attestation while revoking credentials";
      v11 = v9;
      v12 = 2;
LABEL_8:
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, v10, &v14, v12);
    }
  }

  v8 = 0;
LABEL_10:
  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, v8, v7);
  }
}

- (void)revokeSharesWithGroupIdentifiers:(id)identifiers shouldCascade:(BOOL)cascade credential:(id)credential completion:(id)completion
{
  cascadeCopy = cascade;
  identifiersCopy = identifiers;
  credentialCopy = credential;
  completionCopy = completion;
  if ([(PKDASession *)self state]== 2)
  {
    if (cascadeCopy)
    {
      v13 = 0;
    }

    else
    {
      v13 = identifiersCopy;
    }

    if (cascadeCopy)
    {
      v14 = identifiersCopy;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    v16 = v13;
    session = [(PKDASession *)self session];
    identifier = [credentialCopy identifier];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __111__PKAppletSubcredentialManagementSession_revokeSharesWithGroupIdentifiers_shouldCascade_credential_completion___block_invoke;
    v21[3] = &unk_1E79DC470;
    v22 = completionCopy;
    [session revokeNodesWithGroupIdentifiers:v16 treesWithGroupIdentifier:v15 authorizedByKeyWithIdentifier:identifier callback:v21];

    v19 = v22;
    goto LABEL_13;
  }

  v20 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for revoke operation", buf, 2u);
  }

  if (completionCopy)
  {
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v19);
LABEL_13:
  }
}

void __111__PKAppletSubcredentialManagementSession_revokeSharesWithGroupIdentifiers_shouldCascade_credential_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v7;
      v10 = "Failed to revoke credentials with error: %@";
      v11 = v9;
      v12 = 12;
      goto LABEL_8;
    }
  }

  else
  {
    v8 = [[PKSubcredentialEncryptedContainer alloc] initWithRequest:v5];
    if (v8)
    {
      goto LABEL_10;
    }

    v9 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      v10 = "Failed to parse attestation while revoking credentials";
      v11 = v9;
      v12 = 2;
LABEL_8:
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, v10, &v14, v12);
    }
  }

  v8 = 0;
LABEL_10:
  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, v8, v7);
  }
}

- (void)rescindInvitations:(id)invitations onCredential:(id)credential withCompletion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  invitationsCopy = invitations;
  credentialCopy = credential;
  completionCopy = completion;
  if ([(PKDASession *)self state]== 2)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = invitationsCopy;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        v16 = 0;
        do
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          identifier = [*(*(&v23 + 1) + 8 * v16) identifier];
          if (identifier)
          {
            [v11 addObject:identifier];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v14);
    }

    session = [(PKDASession *)self session];
    identifier2 = [credentialCopy identifier];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __89__PKAppletSubcredentialManagementSession_rescindInvitations_onCredential_withCompletion___block_invoke;
    v21[3] = &unk_1E79C4450;
    v22 = completionCopy;
    [session cancelInvitationsWithIdentifiers:v11 sentByOwnerKeyWithIdentifier:identifier2 callback:v21];

    goto LABEL_16;
  }

  v20 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for revoke operation", buf, 2u);
  }

  if (completionCopy)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v11);
LABEL_16:
  }
}

void __89__PKAppletSubcredentialManagementSession_rescindInvitations_onCredential_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Failed to revoke invitations with error: %@", &v6, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (id)trackSubcredential:(id)subcredential encryptedContainer:(id)container withReceipt:(id)receipt
{
  subcredentialCopy = subcredential;
  containerCopy = container;
  receiptCopy = receipt;
  if ([(PKDASession *)self state]== 2)
  {
    v11 = PKDAAlishaKeyEncryptedRequestFromSubcredentialEncryptedRequest(containerCopy);
    session = [(PKDASession *)self session];
    identifier = [subcredentialCopy identifier];
    v14 = [session setTrackingReceipt:receiptCopy vehicleMobilizationData:v11 forKeyWithIdentifier:identifier];
  }

  else
  {
    v15 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for track operation", v17, 2u);
    }

    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
  }

  return v14;
}

- (id)trackSubcredential:(id)subcredential deviceData:(id)data attestation:(id)attestation
{
  subcredentialCopy = subcredential;
  dataCopy = data;
  attestationCopy = attestation;
  if ([(PKDASession *)self state]== 2)
  {
    session = [(PKDASession *)self session];
    identifier = [subcredentialCopy identifier];
    v13 = [session setTrackingReceipt:attestationCopy decryptedDeviceData:dataCopy forKeyWithIdentifier:identifier];
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for track operation", v16, 2u);
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
  }

  return v13;
}

- (void)signData:(id)data auth:(id)auth bundleIdentifier:(id)identifier nonce:(id)nonce credential:(id)credential completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  authCopy = auth;
  identifierCopy = identifier;
  nonceCopy = nonce;
  credentialCopy = credential;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(PKDASession *)self state]== 2)
    {
      v20 = [identifierCopy dataUsingEncoding:4];
      v25 = [nonceCopy dataUsingEncoding:4];
      identifier = [credentialCopy identifier];
      v22 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = identifier;
        _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "Requesting data signing for key identifier: %@", buf, 0xCu);
      }

      session = [(PKDASession *)self session];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __101__PKAppletSubcredentialManagementSession_signData_auth_bundleIdentifier_nonce_credential_completion___block_invoke;
      v26[3] = &unk_1E79E10F0;
      v27 = completionCopy;
      [session signAppData:dataCopy appBundleIdentifier:v20 nonce:v25 auth:authCopy keyIdentifier:identifier callback:v26];
    }

    else
    {
      v24 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for signing operation", buf, 2u);
      }

      v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, 0, v20);
    }
  }
}

void __101__PKAppletSubcredentialManagementSession_signData_auth_bundleIdentifier_nonce_credential_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Signing response with error: %@", &v11, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)immobilizerTokensCountForCredential:(id)credential completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(PKDASession *)self state]== 2)
    {
      identifier = [credentialCopy identifier];
      v9 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = identifier;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Requesting immo token count for credential: %@", buf, 0xCu);
      }

      session = [(PKDASession *)self session];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __89__PKAppletSubcredentialManagementSession_immobilizerTokensCountForCredential_completion___block_invoke;
      v13[3] = &unk_1E79E1118;
      v14 = identifier;
      v15 = completionCopy;
      v11 = identifier;
      [session countImmobilizerTokensForKeyWithIdentifier:v11 callback:v13];
    }

    else
    {
      v12 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for token count operation", buf, 2u);
      }

      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

uint64_t __89__PKAppletSubcredentialManagementSession_immobilizerTokensCountForCredential_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138412802;
    v10 = v7;
    v11 = 2048;
    v12 = a3;
    v13 = 2048;
    v14 = a2;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Got immo token count / depth for credential (%@): %lu / %lu", &v9, 0x20u);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)removeSharedCredentialsWithIdentifiers:(id)identifiers credential:(id)credential completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  credentialCopy = credential;
  completionCopy = completion;
  if ([(PKDASession *)self state]== 2)
  {
    identifier = [credentialCopy identifier];
    v12 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = identifier;
      v22 = 2112;
      v23 = identifiersCopy;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Removing shared credentials from KML (%@): %@", buf, 0x16u);
    }

    session = [(PKDASession *)self session];
    allObjects = [identifiersCopy allObjects];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __103__PKAppletSubcredentialManagementSession_removeSharedCredentialsWithIdentifiers_credential_completion___block_invoke;
    v17[3] = &unk_1E79C4C70;
    v18 = identifier;
    v19 = completionCopy;
    v15 = identifier;
    [session removeSharedKeysWithIdentifiers:allObjects ownerKeyWithIdentifier:v15 callback:v17];

    goto LABEL_9;
  }

  v16 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for token count operation", buf, 2u);
  }

  if (completionCopy)
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v15);
LABEL_9:
  }
}

void __103__PKAppletSubcredentialManagementSession_removeSharedCredentialsWithIdentifiers_credential_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Removed shared credentials from KML (%@): %@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

- (void)listSharingInvitationsForKeyIdentifier:(id)identifier withCompletion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  session = [(PKDASession *)self session];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __96__PKAppletSubcredentialManagementSession_listSharingInvitationsForKeyIdentifier_withCompletion___block_invoke;
  v10[3] = &unk_1E79C5440;
  v11 = completionCopy;
  v9 = completionCopy;
  [session listSharingInvitationsForKeyIdentifier:identifierCopy callback:v10];
}

void __96__PKAppletSubcredentialManagementSession_listSharingInvitationsForKeyIdentifier_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v22 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v7;
      _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "Failed to list sharing invitations with error: %@", buf, 0xCu);
    }

    v23 = *(a1 + 32);
    if (v23)
    {
      (*(v23 + 16))(v23, 0);
    }
  }

  else
  {
    v24 = a1;
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v32 = [v5 count];
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "list sharing invitations found %lu invites", buf, 0xCu);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = v5;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          v16 = [[PKPassCredentialShare alloc] initWithInvitationData:v15];
          v17 = [v15 sharingSessionIdentifier];
          v18 = [v17 UUIDString];

          v19 = [v8 objectForKeyedSubscript:v18];
          if (!v19)
          {
            v19 = objc_alloc_init(PKPassShare);
            [(PKPassShare *)v19 setIdentifier:v18];
            [(PKPassShare *)v19 setRecipientNickname:@"[Name]"];
            [v8 setObject:v19 forKeyedSubscript:v18];
          }

          [(PKPassShare *)v19 addCredentialShare:v16];
        }

        v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v12);
    }

    v20 = *(v24 + 32);
    if (v20)
    {
      v21 = [v8 allValues];
      (*(v20 + 16))(v20, v21);
    }

    v7 = 0;
    v5 = v25;
  }
}

- (void)listReceivedSharingInvitationsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  session = [(PKDASession *)self session];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__PKAppletSubcredentialManagementSession_listReceivedSharingInvitationsWithCompletion___block_invoke;
  v9[3] = &unk_1E79C9BC8;
  v10 = v5;
  v11 = completionCopy;
  v7 = v5;
  v8 = completionCopy;
  [session listReceivedSharingInvitationsWithCallback:v9];
}

void __87__PKAppletSubcredentialManagementSession_listReceivedSharingInvitationsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject(0x17uLL);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v5 || v6)
  {
    if (v8)
    {
      *buf = 138412290;
      v26 = v6;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Failed to list received sharing invitations with error: %@", buf, 0xCu);
    }

    v19 = *(a1 + 40);
    if (v19)
    {
      (*(v19 + 16))(v19, 0);
    }
  }

  else
  {
    if (v8)
    {
      *buf = 134217984;
      v26 = [v5 count];
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "list received invitations: %lu", buf, 0xCu);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [[PKPassCredentialShare alloc] initWithInvitationData:v14];
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [v14 invitationState];
            *buf = 134217984;
            v26 = v16;
            _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "list received DAKeySharingInvitationData state: %ld", buf, 0xCu);
          }

          if (v15)
          {
            [*(a1 + 32) addObject:v15];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    v17 = *(a1 + 40);
    v6 = 0;
    if (v17)
    {
      v18 = [*(a1 + 32) copy];
      (*(v17 + 16))(v17, v18);
    }
  }
}

- (void)deleteCredential:(id)credential completionHandler:(id)handler
{
  credentialCopy = credential;
  handlerCopy = handler;
  if ([(PKDASession *)self state]== 2)
  {
    session = [(PKDASession *)self session];
    [session deleteKey:credentialCopy completionHandler:handlerCopy];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for revoke operation", v10, 2u);
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }
}

- (void)accountAttestationRequestForManufacturer:(id)manufacturer completion:(id)completion
{
  v18[1] = *MEMORY[0x1E69E9840];
  manufacturerCopy = manufacturer;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(PKDASession *)self state]== 2)
    {
      session = [(PKDASession *)self session];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __94__PKAppletSubcredentialManagementSession_accountAttestationRequestForManufacturer_completion___block_invoke;
      v13[3] = &unk_1E79E1140;
      v15 = completionCopy;
      v13[4] = self;
      v14 = manufacturerCopy;
      [session preWarmForManufacturer:v14 callback:v13];

      v9 = v15;
    }

    else
    {
      v10 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for accepting sharing operation", buf, 2u);
      }

      v11 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A278];
      v18[0] = @"Session not active";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v12 = [v11 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v9];
      (*(completionCopy + 2))(completionCopy, 0, v12);
    }
  }
}

void __94__PKAppletSubcredentialManagementSession_accountAttestationRequestForManufacturer_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Failed to prewarm for binding attestation request data error: %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = [*(a1 + 32) session];
    v6 = *(a1 + 40);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __94__PKAppletSubcredentialManagementSession_accountAttestationRequestForManufacturer_completion___block_invoke_34;
    v7[3] = &unk_1E79DC448;
    v8 = v6;
    v9 = *(a1 + 48);
    [v5 requestBindingAttestationDataForManufacturer:v8 callback:v7];
  }
}

void __94__PKAppletSubcredentialManagementSession_accountAttestationRequestForManufacturer_completion___block_invoke_34(uint64_t a1, void *a2, void *a3)
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
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Failed to get binding attestation request for manufacturer (%@) with error: %@", &v11, 0x16u);
    }

    v8 = 0;
  }

  else
  {
    v8 = [[PKAppletSubcredentialAccountAttestationRequest alloc] initWithRequestData:v5];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)accountAttestationRequestForCredential:(id)credential completion:(id)completion
{
  v19[1] = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(PKDASession *)self state]== 2)
    {
      session = [(PKDASession *)self session];
      identifier = [credentialCopy identifier];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __92__PKAppletSubcredentialManagementSession_accountAttestationRequestForCredential_completion___block_invoke;
      v14[3] = &unk_1E79DC448;
      v15 = credentialCopy;
      v16 = completionCopy;
      [session requestBindingAttestationDataForKeyWithIdentifier:identifier callback:v14];

      v10 = v15;
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKAppletSubcredentialManagementSession: Session is in invalid state for account attestation", buf, 2u);
      }

      v12 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A278];
      v19[0] = @"Session not active";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v13 = [v12 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v10];
      (*(completionCopy + 2))(completionCopy, 0, v13);
    }
  }
}

void __92__PKAppletSubcredentialManagementSession_accountAttestationRequestForCredential_completion___block_invoke(uint64_t a1, void *a2, void *a3)
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
      v10 = [*(a1 + 32) identifier];
      v11 = 138412546;
      v12 = v10;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKAppletSubcredentialManagementSession: Failed to get binding attestation request for credential (%@) with error: %@", &v11, 0x16u);
    }

    v8 = 0;
  }

  else
  {
    v8 = [[PKAppletSubcredentialAccountAttestationRequest alloc] initWithRequestData:v5];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)setAccountAttestation:(id)attestation forUpgradeCredential:(id)credential withCompletion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  credentialCopy = credential;
  attestationCopy = attestation;
  if ([(PKDASession *)self state]!= 2)
  {
    v12 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromSelector(a2);
      *buf = 138412290;
      v25 = v13;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for %@", buf, 0xCu);
    }

    if (completionCopy)
    {
      v14 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A278];
      v23 = @"Session not active";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v16 = [v14 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v15];
      completionCopy[2](completionCopy, v16);
    }
  }

  session = [(PKDASession *)self session];
  identifier = [credentialCopy identifier];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __100__PKAppletSubcredentialManagementSession_setAccountAttestation_forUpgradeCredential_withCompletion___block_invoke;
  v20[3] = &unk_1E79C4450;
  v21 = completionCopy;
  v19 = completionCopy;
  [session setBindingAttestation:attestationCopy forKeyWithIdentifier:identifier callback:v20];
}

uint64_t __100__PKAppletSubcredentialManagementSession_setAccountAttestation_forUpgradeCredential_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)preWarmForManufacturer:(id)manufacturer completion:(id)completion
{
  v18[1] = *MEMORY[0x1E69E9840];
  manufacturerCopy = manufacturer;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(PKDASession *)self state]== 2)
    {
      session = [(PKDASession *)self session];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __76__PKAppletSubcredentialManagementSession_preWarmForManufacturer_completion___block_invoke;
      v13[3] = &unk_1E79C4C70;
      v14 = manufacturerCopy;
      v15 = completionCopy;
      [session preWarmForManufacturer:v14 callback:v13];

      v9 = v14;
    }

    else
    {
      v10 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for accepting sharing operation", buf, 2u);
      }

      v11 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A278];
      v18[0] = @"Session not active";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v12 = [v11 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v9];
      (*(completionCopy + 2))(completionCopy, v12);
    }
  }
}

void __76__PKAppletSubcredentialManagementSession_preWarmForManufacturer_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Failed to get binding attestation request for manufacturer (%@) with error: %@", &v6, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)credentialDidActivateWithCredential:(id)credential completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  completionCopy = completion;
  if ([(PKDASession *)self state]== 2)
  {
    session = [(PKDASession *)self session];
    identifier = [credentialCopy identifier];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __89__PKAppletSubcredentialManagementSession_credentialDidActivateWithCredential_completion___block_invoke;
    v13[3] = &unk_1E79C4C70;
    v14 = credentialCopy;
    v15 = completionCopy;
    [session handleActivationForKeyWithIdentifier:identifier callback:v13];
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      *buf = 138412290;
      v17 = v12;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for %@", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

void __89__PKAppletSubcredentialManagementSession_credentialDidActivateWithCredential_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) identifier];
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Failed to notify KML that credential %@ activated with error: %@", &v7, 0x16u);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

- (void)updateCredentialConfigurationForCredential:(id)credential configuration:(id)configuration completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  configurationCopy = configuration;
  completionCopy = completion;
  if ([(PKDASession *)self state]== 2)
  {
    entitlement = [credentialCopy entitlement];
    activeCapabilityRole = [entitlement activeCapabilityRole];

    if (activeCapabilityRole)
    {
      v14 = [objc_alloc(MEMORY[0x1E699A100]) initWithKeyRole:activeCapabilityRole];
    }

    else
    {
      v14 = 0;
    }

    session = [(PKDASession *)self session];
    identifier = [credentialCopy identifier];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __110__PKAppletSubcredentialManagementSession_updateCredentialConfigurationForCredential_configuration_completion___block_invoke;
    v19[3] = &unk_1E79C4C70;
    v20 = credentialCopy;
    v21 = completionCopy;
    [session updateConfiguration:configurationCopy forKeyWithIdentifier:identifier additionalConfigurationData:v14 completionHandler:v19];
  }

  else
  {
    v15 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromSelector(a2);
      *buf = 138412290;
      v23 = v16;
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for %@", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

void __110__PKAppletSubcredentialManagementSession_updateCredentialConfigurationForCredential_configuration_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) identifier];
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Failed to notify KML that credential %@ activated with error: %@", &v7, 0x16u);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

- (void)hasUpgradeAvailableForKeyWithCredential:(id)credential versionType:(unint64_t)type versions:(id)versions completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  versionsCopy = versions;
  completionCopy = completion;
  if ([(PKDASession *)self state]== 2)
  {
    session = [(PKDASession *)self session];
    identifier = [credentialCopy identifier];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __114__PKAppletSubcredentialManagementSession_hasUpgradeAvailableForKeyWithCredential_versionType_versions_completion___block_invoke;
    v18[3] = &unk_1E79E1168;
    v19 = completionCopy;
    [session hasUpgradeAvailableForKeyWithIdentifier:identifier versionType:2 * (type != 1) versions:versionsCopy completionHandler:v18];
  }

  else
  {
    v16 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromSelector(a2);
      *buf = 138412290;
      *&buf[4] = v17;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for %@", buf, 0xCu);
    }

    if (completionCopy)
    {
      *buf = type;
      buf[8] = 0;
      v21 = 0;
      v22 = 0;
      (*(completionCopy + 2))(completionCopy, buf, 0);
    }
  }
}

void __114__PKAppletSubcredentialManagementSession_hasUpgradeAvailableForKeyWithCredential_versionType_versions_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = *a2;
  v5 = *(a2 + 8);
  v8 = *(a2 + 16);
  v6 = a3;
  if (v4 > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_1ADB9B2F0[v4];
  }

  v9 = v7;
  v10 = v5;
  v11 = v8;
  (*(v3 + 16))(v3, &v9, v6);
}

- (void)upgradeKeyWithCredential:(id)credential versionType:(unint64_t)type version:(unint64_t)version upgradeInformation:(id)information completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  informationCopy = information;
  completionCopy = completion;
  if ([(PKDASession *)self state]== 2)
  {
    session = [(PKDASession *)self session];
    identifier = [credentialCopy identifier];
    [session upgradeKeyWithIdentifier:identifier versionType:2 * (type != 1) version:version upgradeInformation:informationCopy completionHandler:completionCopy];
  }

  else
  {
    v18 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = NSStringFromSelector(a2);
      v20 = 138412290;
      v21 = v19;
      _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for %@", &v20, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)commitUpgradeForKeyWithCredential:(id)credential versionType:(unint64_t)type version:(unint64_t)version completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  completionCopy = completion;
  if ([(PKDASession *)self state]== 2)
  {
    session = [(PKDASession *)self session];
    identifier = [credentialCopy identifier];
    [session commitUpgradeForKeyWithIdentifier:identifier versionType:2 * (type != 1) version:version completionHandler:completionCopy];
  }

  else
  {
    v15 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromSelector(a2);
      v17 = 138412290;
      v18 = v16;
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for %@", &v17, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)revertUpgradeForKeyWithCredential:(id)credential versionType:(unint64_t)type version:(unint64_t)version completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  completionCopy = completion;
  if ([(PKDASession *)self state]== 2)
  {
    session = [(PKDASession *)self session];
    identifier = [credentialCopy identifier];
    [session revertUpgradeForKeyWithIdentifier:identifier versionType:2 * (type != 1) version:version completionHandler:completionCopy];
  }

  else
  {
    v15 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromSelector(a2);
      v17 = 138412290;
      v18 = v16;
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for %@", &v17, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

@end