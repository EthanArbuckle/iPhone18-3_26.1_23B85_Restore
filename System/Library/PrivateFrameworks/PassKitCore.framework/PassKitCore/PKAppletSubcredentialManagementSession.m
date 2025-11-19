@interface PKAppletSubcredentialManagementSession
+ (id)createSessionWithDelegate:(id)a3;
- (id)trackSubcredential:(id)a3 deviceData:(id)a4 attestation:(id)a5;
- (id)trackSubcredential:(id)a3 encryptedContainer:(id)a4 withReceipt:(id)a5;
- (void)accountAttestationRequestForCredential:(id)a3 completion:(id)a4;
- (void)accountAttestationRequestForManufacturer:(id)a3 completion:(id)a4;
- (void)commitUpgradeForKeyWithCredential:(id)a3 versionType:(unint64_t)a4 version:(unint64_t)a5 completion:(id)a6;
- (void)credentialDidActivateWithCredential:(id)a3 completion:(id)a4;
- (void)deleteCredential:(id)a3 completionHandler:(id)a4;
- (void)hasUpgradeAvailableForKeyWithCredential:(id)a3 versionType:(unint64_t)a4 versions:(id)a5 completion:(id)a6;
- (void)immobilizerTokensCountForCredential:(id)a3 completion:(id)a4;
- (void)listCredentialsWithCompletion:(id)a3;
- (void)listReceivedSharingInvitationsWithCompletion:(id)a3;
- (void)listSharingInvitationsForKeyIdentifier:(id)a3 withCompletion:(id)a4;
- (void)preWarmForManufacturer:(id)a3 completion:(id)a4;
- (void)removeSharedCredentialsWithIdentifiers:(id)a3 credential:(id)a4 completion:(id)a5;
- (void)rescindInvitations:(id)a3 onCredential:(id)a4 withCompletion:(id)a5;
- (void)revertUpgradeForKeyWithCredential:(id)a3 versionType:(unint64_t)a4 version:(unint64_t)a5 completion:(id)a6;
- (void)revokeSharedCredentials:(id)a3 onCredential:(id)a4 withCompletion:(id)a5;
- (void)revokeSharesWithGroupIdentifiers:(id)a3 shouldCascade:(BOOL)a4 credential:(id)a5 completion:(id)a6;
- (void)setAccountAttestation:(id)a3 forUpgradeCredential:(id)a4 withCompletion:(id)a5;
- (void)signData:(id)a3 auth:(id)a4 bundleIdentifier:(id)a5 nonce:(id)a6 credential:(id)a7 completion:(id)a8;
- (void)updateCredentialConfigurationForCredential:(id)a3 configuration:(id)a4 completion:(id)a5;
- (void)upgradeKeyWithCredential:(id)a3 versionType:(unint64_t)a4 version:(unint64_t)a5 upgradeInformation:(id)a6 completion:(id)a7;
@end

@implementation PKAppletSubcredentialManagementSession

+ (id)createSessionWithDelegate:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKDASession *)[PKAppletSubcredentialManagementSession alloc] initWithDelegate:v4];

  v6 = [MEMORY[0x1E699A138] sharedManager];
  v7 = [v6 createManagementSessionWithDelegate:v5];

  if (v7)
  {
    [(PKDASession *)v5 setSession:v7];
    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      v13 = a1;
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

- (void)listCredentialsWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(PKDASession *)self state]== 2)
    {
      v5 = [(PKDASession *)self session];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __72__PKAppletSubcredentialManagementSession_listCredentialsWithCompletion___block_invoke;
      v7[3] = &unk_1E79C5440;
      v8 = v4;
      [v5 listKeysWithHandler:v7];
    }

    else
    {
      v6 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for enumeration operation", buf, 2u);
      }

      (*(v4 + 2))(v4, 0);
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

- (void)revokeSharedCredentials:(id)a3 onCredential:(id)a4 withCompletion:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PKDASession *)self state]== 2)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v8;
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

          v17 = [*(*(&v23 + 1) + 8 * v16) identifier];
          [v11 safelyAddObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v14);
    }

    v18 = [(PKDASession *)self session];
    v19 = [v9 identifier];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __94__PKAppletSubcredentialManagementSession_revokeSharedCredentials_onCredential_withCompletion___block_invoke;
    v21[3] = &unk_1E79DC470;
    v22 = v10;
    [v18 revokeKeysWithIdentifiers:v11 sharedByOwnerKeyWithIdentifier:v19 callback:v21];

    goto LABEL_14;
  }

  v20 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for revoke operation", buf, 2u);
  }

  if (v10)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v10 + 2))(v10, 0, v11);
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

- (void)revokeSharesWithGroupIdentifiers:(id)a3 shouldCascade:(BOOL)a4 credential:(id)a5 completion:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([(PKDASession *)self state]== 2)
  {
    if (v8)
    {
      v13 = 0;
    }

    else
    {
      v13 = v10;
    }

    if (v8)
    {
      v14 = v10;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    v16 = v13;
    v17 = [(PKDASession *)self session];
    v18 = [v11 identifier];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __111__PKAppletSubcredentialManagementSession_revokeSharesWithGroupIdentifiers_shouldCascade_credential_completion___block_invoke;
    v21[3] = &unk_1E79DC470;
    v22 = v12;
    [v17 revokeNodesWithGroupIdentifiers:v16 treesWithGroupIdentifier:v15 authorizedByKeyWithIdentifier:v18 callback:v21];

    v19 = v22;
    goto LABEL_13;
  }

  v20 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for revoke operation", buf, 2u);
  }

  if (v12)
  {
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v12 + 2))(v12, 0, v19);
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

- (void)rescindInvitations:(id)a3 onCredential:(id)a4 withCompletion:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PKDASession *)self state]== 2)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v8;
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

          v17 = [*(*(&v23 + 1) + 8 * v16) identifier];
          if (v17)
          {
            [v11 addObject:v17];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v14);
    }

    v18 = [(PKDASession *)self session];
    v19 = [v9 identifier];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __89__PKAppletSubcredentialManagementSession_rescindInvitations_onCredential_withCompletion___block_invoke;
    v21[3] = &unk_1E79C4450;
    v22 = v10;
    [v18 cancelInvitationsWithIdentifiers:v11 sentByOwnerKeyWithIdentifier:v19 callback:v21];

    goto LABEL_16;
  }

  v20 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for revoke operation", buf, 2u);
  }

  if (v10)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v10 + 2))(v10, v11);
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

- (id)trackSubcredential:(id)a3 encryptedContainer:(id)a4 withReceipt:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PKDASession *)self state]== 2)
  {
    v11 = PKDAAlishaKeyEncryptedRequestFromSubcredentialEncryptedRequest(v9);
    v12 = [(PKDASession *)self session];
    v13 = [v8 identifier];
    v14 = [v12 setTrackingReceipt:v10 vehicleMobilizationData:v11 forKeyWithIdentifier:v13];
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

- (id)trackSubcredential:(id)a3 deviceData:(id)a4 attestation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PKDASession *)self state]== 2)
  {
    v11 = [(PKDASession *)self session];
    v12 = [v8 identifier];
    v13 = [v11 setTrackingReceipt:v10 decryptedDeviceData:v9 forKeyWithIdentifier:v12];
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

- (void)signData:(id)a3 auth:(id)a4 bundleIdentifier:(id)a5 nonce:(id)a6 credential:(id)a7 completion:(id)a8
{
  v30 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v19)
  {
    if ([(PKDASession *)self state]== 2)
    {
      v20 = [v16 dataUsingEncoding:4];
      v25 = [v17 dataUsingEncoding:4];
      v21 = [v18 identifier];
      v22 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v21;
        _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "Requesting data signing for key identifier: %@", buf, 0xCu);
      }

      v23 = [(PKDASession *)self session];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __101__PKAppletSubcredentialManagementSession_signData_auth_bundleIdentifier_nonce_credential_completion___block_invoke;
      v26[3] = &unk_1E79E10F0;
      v27 = v19;
      [v23 signAppData:v14 appBundleIdentifier:v20 nonce:v25 auth:v15 keyIdentifier:v21 callback:v26];
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
      (*(v19 + 2))(v19, 0, 0, v20);
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

- (void)immobilizerTokensCountForCredential:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([(PKDASession *)self state]== 2)
    {
      v8 = [v6 identifier];
      v9 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v8;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Requesting immo token count for credential: %@", buf, 0xCu);
      }

      v10 = [(PKDASession *)self session];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __89__PKAppletSubcredentialManagementSession_immobilizerTokensCountForCredential_completion___block_invoke;
      v13[3] = &unk_1E79E1118;
      v14 = v8;
      v15 = v7;
      v11 = v8;
      [v10 countImmobilizerTokensForKeyWithIdentifier:v11 callback:v13];
    }

    else
    {
      v12 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for token count operation", buf, 2u);
      }

      (*(v7 + 2))(v7, 0, 0);
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

- (void)removeSharedCredentialsWithIdentifiers:(id)a3 credential:(id)a4 completion:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PKDASession *)self state]== 2)
  {
    v11 = [v9 identifier];
    v12 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = v11;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Removing shared credentials from KML (%@): %@", buf, 0x16u);
    }

    v13 = [(PKDASession *)self session];
    v14 = [v8 allObjects];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __103__PKAppletSubcredentialManagementSession_removeSharedCredentialsWithIdentifiers_credential_completion___block_invoke;
    v17[3] = &unk_1E79C4C70;
    v18 = v11;
    v19 = v10;
    v15 = v11;
    [v13 removeSharedKeysWithIdentifiers:v14 ownerKeyWithIdentifier:v15 callback:v17];

    goto LABEL_9;
  }

  v16 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for token count operation", buf, 2u);
  }

  if (v10)
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    (*(v10 + 2))(v10, v15);
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

- (void)listSharingInvitationsForKeyIdentifier:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKDASession *)self session];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __96__PKAppletSubcredentialManagementSession_listSharingInvitationsForKeyIdentifier_withCompletion___block_invoke;
  v10[3] = &unk_1E79C5440;
  v11 = v6;
  v9 = v6;
  [v8 listSharingInvitationsForKeyIdentifier:v7 callback:v10];
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

- (void)listReceivedSharingInvitationsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = [(PKDASession *)self session];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__PKAppletSubcredentialManagementSession_listReceivedSharingInvitationsWithCompletion___block_invoke;
  v9[3] = &unk_1E79C9BC8;
  v10 = v5;
  v11 = v4;
  v7 = v5;
  v8 = v4;
  [v6 listReceivedSharingInvitationsWithCallback:v9];
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

- (void)deleteCredential:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PKDASession *)self state]== 2)
  {
    v8 = [(PKDASession *)self session];
    [v8 deleteKey:v6 completionHandler:v7];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for revoke operation", v10, 2u);
    }

    if (v7)
    {
      (*(v7 + 2))(v7, 0, 0);
    }
  }
}

- (void)accountAttestationRequestForManufacturer:(id)a3 completion:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([(PKDASession *)self state]== 2)
    {
      v8 = [(PKDASession *)self session];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __94__PKAppletSubcredentialManagementSession_accountAttestationRequestForManufacturer_completion___block_invoke;
      v13[3] = &unk_1E79E1140;
      v15 = v7;
      v13[4] = self;
      v14 = v6;
      [v8 preWarmForManufacturer:v14 callback:v13];

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
      (*(v7 + 2))(v7, 0, v12);
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

- (void)accountAttestationRequestForCredential:(id)a3 completion:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([(PKDASession *)self state]== 2)
    {
      v8 = [(PKDASession *)self session];
      v9 = [v6 identifier];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __92__PKAppletSubcredentialManagementSession_accountAttestationRequestForCredential_completion___block_invoke;
      v14[3] = &unk_1E79DC448;
      v15 = v6;
      v16 = v7;
      [v8 requestBindingAttestationDataForKeyWithIdentifier:v9 callback:v14];

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
      (*(v7 + 2))(v7, 0, v13);
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

- (void)setAccountAttestation:(id)a3 forUpgradeCredential:(id)a4 withCompletion:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a4;
  v11 = a3;
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

    if (v9)
    {
      v14 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A278];
      v23 = @"Session not active";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v16 = [v14 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v15];
      v9[2](v9, v16);
    }
  }

  v17 = [(PKDASession *)self session];
  v18 = [v10 identifier];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __100__PKAppletSubcredentialManagementSession_setAccountAttestation_forUpgradeCredential_withCompletion___block_invoke;
  v20[3] = &unk_1E79C4450;
  v21 = v9;
  v19 = v9;
  [v17 setBindingAttestation:v11 forKeyWithIdentifier:v18 callback:v20];
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

- (void)preWarmForManufacturer:(id)a3 completion:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([(PKDASession *)self state]== 2)
    {
      v8 = [(PKDASession *)self session];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __76__PKAppletSubcredentialManagementSession_preWarmForManufacturer_completion___block_invoke;
      v13[3] = &unk_1E79C4C70;
      v14 = v6;
      v15 = v7;
      [v8 preWarmForManufacturer:v14 callback:v13];

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
      (*(v7 + 2))(v7, v12);
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

- (void)credentialDidActivateWithCredential:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([(PKDASession *)self state]== 2)
  {
    v9 = [(PKDASession *)self session];
    v10 = [v7 identifier];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __89__PKAppletSubcredentialManagementSession_credentialDidActivateWithCredential_completion___block_invoke;
    v13[3] = &unk_1E79C4C70;
    v14 = v7;
    v15 = v8;
    [v9 handleActivationForKeyWithIdentifier:v10 callback:v13];
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

    if (v8)
    {
      (*(v8 + 2))(v8, 0);
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

- (void)updateCredentialConfigurationForCredential:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([(PKDASession *)self state]== 2)
  {
    v12 = [v9 entitlement];
    v13 = [v12 activeCapabilityRole];

    if (v13)
    {
      v14 = [objc_alloc(MEMORY[0x1E699A100]) initWithKeyRole:v13];
    }

    else
    {
      v14 = 0;
    }

    v17 = [(PKDASession *)self session];
    v18 = [v9 identifier];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __110__PKAppletSubcredentialManagementSession_updateCredentialConfigurationForCredential_configuration_completion___block_invoke;
    v19[3] = &unk_1E79C4C70;
    v20 = v9;
    v21 = v11;
    [v17 updateConfiguration:v10 forKeyWithIdentifier:v18 additionalConfigurationData:v14 completionHandler:v19];
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

    if (v11)
    {
      (*(v11 + 2))(v11, 0);
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

- (void)hasUpgradeAvailableForKeyWithCredential:(id)a3 versionType:(unint64_t)a4 versions:(id)a5 completion:(id)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if ([(PKDASession *)self state]== 2)
  {
    v14 = [(PKDASession *)self session];
    v15 = [v11 identifier];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __114__PKAppletSubcredentialManagementSession_hasUpgradeAvailableForKeyWithCredential_versionType_versions_completion___block_invoke;
    v18[3] = &unk_1E79E1168;
    v19 = v13;
    [v14 hasUpgradeAvailableForKeyWithIdentifier:v15 versionType:2 * (a4 != 1) versions:v12 completionHandler:v18];
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

    if (v13)
    {
      *buf = a4;
      buf[8] = 0;
      v21 = 0;
      v22 = 0;
      (*(v13 + 2))(v13, buf, 0);
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

- (void)upgradeKeyWithCredential:(id)a3 versionType:(unint64_t)a4 version:(unint64_t)a5 upgradeInformation:(id)a6 completion:(id)a7
{
  v22 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a6;
  v15 = a7;
  if ([(PKDASession *)self state]== 2)
  {
    v16 = [(PKDASession *)self session];
    v17 = [v13 identifier];
    [v16 upgradeKeyWithIdentifier:v17 versionType:2 * (a4 != 1) version:a5 upgradeInformation:v14 completionHandler:v15];
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

    if (v15)
    {
      v15[2](v15, 0);
    }
  }
}

- (void)commitUpgradeForKeyWithCredential:(id)a3 versionType:(unint64_t)a4 version:(unint64_t)a5 completion:(id)a6
{
  v19 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  if ([(PKDASession *)self state]== 2)
  {
    v13 = [(PKDASession *)self session];
    v14 = [v11 identifier];
    [v13 commitUpgradeForKeyWithIdentifier:v14 versionType:2 * (a4 != 1) version:a5 completionHandler:v12];
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

    if (v12)
    {
      v12[2](v12, 0);
    }
  }
}

- (void)revertUpgradeForKeyWithCredential:(id)a3 versionType:(unint64_t)a4 version:(unint64_t)a5 completion:(id)a6
{
  v19 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  if ([(PKDASession *)self state]== 2)
  {
    v13 = [(PKDASession *)self session];
    v14 = [v11 identifier];
    [v13 revertUpgradeForKeyWithIdentifier:v14 versionType:2 * (a4 != 1) version:a5 completionHandler:v12];
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

    if (v12)
    {
      v12[2](v12, 0);
    }
  }
}

@end