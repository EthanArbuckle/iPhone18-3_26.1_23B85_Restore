@interface DAKeyManagementSession
- (DAKeyManagementSession)initWithCoder:(id)a3;
- (DAKeyManagementSession)initWithDelegate:(id)a3;
- (id)sendTrackingReceipt:(void *)a3 otherJSONData:(void *)a4 forKeyWithIdentifier:;
- (id)setTrackingReceipt:(id)a3 decryptedDeviceData:(id)a4 forKeyWithIdentifier:(id)a5;
- (id)setTrackingReceipt:(id)a3 forKeyWithIdentifier:(id)a4;
- (id)setTrackingReceipt:(id)a3 slotIdentifier:(id)a4 confidentialMailboxData:(id)a5 ephemeralPublicKey:(id)a6 forKeyWithIdentifier:(id)a7;
- (id)setTrackingReceipt:(id)a3 vehicleMobilizationData:(id)a4 forKeyWithIdentifier:(id)a5;
- (void)cancelAllFriendInvitationsWithCompletionHandler:(id)a3;
- (void)cancelInvitationWithIdentifier:(id)a3 reason:(unint64_t)a4 callback:(id)a5;
- (void)cancelInvitationsWithIdentifiers:(id)a3 sentByOwnerKeyWithIdentifier:(id)a4 callback:(id)a5;
- (void)commitUpgradeForKeyWithIdentifier:(id)a3 versionType:(unint64_t)a4 version:(unint64_t)a5 completionHandler:(id)a6;
- (void)countImmobilizerTokensForKeyWithIdentifier:(id)a3 callback:(id)a4;
- (void)deleteKey:(id)a3 completionHandler:(id)a4;
- (void)didEnd:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)endPointPrivacyDecryption:(id)a3 encryptedData:(id)a4 publicKey:(id)a5 callback:(id)a6;
- (void)getPreTrackRequestForInvitationWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)getPreTrackRequestForKeyWithIdentifier:(id)a3 callback:(id)a4;
- (void)getSecondFactorRequestForConfigs:(id)a3 completionHandler:(id)a4;
- (void)handleActivationForKeyWithIdentifier:(id)a3 callback:(id)a4;
- (void)hasUpgradeAvailableForKeyWithIdentifier:(id)a3 versionType:(unint64_t)a4 versions:(id)a5 completionHandler:(id)a6;
- (void)listKeysWithHandler:(id)a3;
- (void)listKeysWithSession:(id)a3 seid:(id)a4 callback:(id)a5;
- (void)listReceivedSharingInvitationsWithCallback:(id)a3;
- (void)listSharingInvitationsForKeyIdentifier:(id)a3 callback:(id)a4;
- (void)localDeleteKey:(id)a3 completionHandler:(id)a4;
- (void)ppidRequestForInvitationWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)ppidRequestForInvitationWithIdentifier:(id)a3 fromMailboxIdentifier:(id)a4 completionHandler:(id)a5;
- (void)preWarmForManufacturer:(id)a3 callback:(id)a4;
- (void)readerInformationForInvitationWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)readerInformationForInvitationWithIdentifier:(id)a3 fromMailboxIdentifier:(id)a4 completionHandler:(id)a5;
- (void)removeSharedKeysWithIdentifiers:(id)a3 ownerKeyWithIdentifier:(id)a4 callback:(id)a5;
- (void)removeSharingInvitationWithId:(id)a3 completionHandler:(id)a4;
- (void)requestBindingAttestationDataForKeyWithIdentifier:(id)a3 callback:(id)a4;
- (void)requestBindingAttestationDataForManufacturer:(id)a3 callback:(id)a4;
- (void)revertUpgradeForKeyWithIdentifier:(id)a3 versionType:(unint64_t)a4 version:(unint64_t)a5 completionHandler:(id)a6;
- (void)revokeKeysWithIdentifiers:(id)a3 sharedByOwnerKeyWithIdentifier:(id)a4 callback:(id)a5;
- (void)revokeNodesWithGroupIdentifiers:(id)a3 treesWithGroupIdentifier:(id)a4 authorizedByKeyWithIdentifier:(id)a5 callback:(id)a6;
- (void)setBindingAttestation:(id)a3 forKeyWithIdentifier:(id)a4 callback:(id)a5;
- (void)setProductPlanIdentifier:(id)a3 forInvitationIdentifier:(id)a4 completion:(id)a5;
- (void)signAppData:(id)a3 appBundleIdentifier:(id)a4 nonce:(id)a5 auth:(id)a6 keyIdentifier:(id)a7 callback:(id)a8;
- (void)updateConfiguration:(id)a3 forKeyWithIdentifier:(id)a4 additionalConfigurationData:(id)a5 completionHandler:(id)a6;
- (void)updateConfiguration:(id)a3 forKeyWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)upgradeKeyWithIdentifier:(id)a3 versionType:(unint64_t)a4 version:(unint64_t)a5 upgradeInformation:(id)a6 completionHandler:(id)a7;
@end

@implementation DAKeyManagementSession

- (DAKeyManagementSession)initWithDelegate:(id)a3
{
  v4.receiver = self;
  v4.super_class = DAKeyManagementSession;
  return [(DASession *)&v4 initWithDelegate:a3];
}

- (void)preWarmForManufacturer:(id)a3 callback:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = KmlLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v18 = "[DAKeyManagementSession preWarmForManufacturer:callback:]";
    v19 = 1024;
    v20 = 55;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_DEBUG, "%s : %i : %@", buf, 0x1Cu);
  }

  if ([v5 length])
  {
    v14 = v6;
    SESEndPointPreWarmForAlisha();
    v8 = v14;
  }

  else
  {
    v9 = KmlLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[DAKeyManagementSession preWarmForManufacturer:callback:]";
      v19 = 1024;
      v20 = 57;
      _os_log_impl(&dword_248BF3000, v9, OS_LOG_TYPE_ERROR, "%s : %i : manufacturer is empty", buf, 0x12u);
    }

    v10 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA450];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(206)];
    v16 = v8;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v12 = [v10 errorWithDomain:@"DigitalAccessError" code:206 userInfo:v11];
    (*(v6 + 2))(v6, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __58__DAKeyManagementSession_preWarmForManufacturer_callback___block_invoke(uint64_t a1, void *a2)
{
  v5 = sesErrorToKmlError(a2, 0x13u);
  v3 = *(a1 + 32);
  v4 = kmlErrorToDAError(v5);
  (*(v3 + 16))(v3, v4);
}

- (void)requestBindingAttestationDataForManufacturer:(id)a3 callback:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = KmlLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v21 = "[DAKeyManagementSession requestBindingAttestationDataForManufacturer:callback:]";
    v22 = 1024;
    v23 = 74;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_INFO, "%s : %i : Manufacturer: %@", buf, 0x1Cu);
  }

  v8 = SESEndpointGetBindingAttestationRequestWithSession();
  v9 = 0;
  v10 = v9;
  if (v9)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = [v9 userInfo];
    v13 = [v11 errorWithDomain:@"DigitalAccessError" code:224 userInfo:v12];
    v14 = 0;
  }

  else
  {
    v15 = [DAKeyBindingAttestationRequestData alloc];
    v12 = [MEMORY[0x277CCAD78] UUID];
    v16 = [v8 subCAAttestation];
    v17 = [v8 casdECDSACertificate];
    v18 = [v8 casdRSACertificate];
    v14 = [(DAKeyBindingAttestationRequestData *)v15 initWithSharingSessionIdentifier:v12 subCaAttestation:v16 casd:v17 rsaCertData:v18];

    v13 = 0;
  }

  v6[2](v6, v14, v13);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)deleteKey:(id)a3 completionHandler:(id)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession deleteKey:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 98;
    *&buf[18] = 2112;
    *&buf[20] = v6;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : %@", buf, 0x1Cu);
  }

  if ([v6 length])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v25 = __Block_byref_object_dispose__1;
    v26 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__1;
    v22 = __Block_byref_object_dispose__1;
    v23 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __54__DAKeyManagementSession_deleteKey_completionHandler___block_invoke;
    v17[3] = &unk_278F6FB00;
    v17[4] = buf;
    v9 = [(DAKeyPairingSession *)self getKeyPairingProxy:v17];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__DAKeyManagementSession_deleteKey_completionHandler___block_invoke_15;
    v16[3] = &unk_278F702E0;
    v16[4] = buf;
    v16[5] = &v18;
    [v9 deleteKey:v6 callback:v16];

    v7[2](v7, v19[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = KmlLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession deleteKey:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 100;
      _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_ERROR, "%s : %i : keyIdentifier is empty", buf, 0x12u);
    }

    v11 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(206)];
    v28[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v14 = [v11 errorWithDomain:@"DigitalAccessError" code:206 userInfo:v13];

    (v7)[2](v7, 0, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __54__DAKeyManagementSession_deleteKey_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyManagementSession deleteKey:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 110;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __54__DAKeyManagementSession_deleteKey_completionHandler___block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = kmlErrorToDAError(a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)listKeysWithHandler:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v25 = 0;
  v4 = SESEndPointList();
  v5 = 0;
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  if (v5)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = [v5 userInfo];
    v9 = [v7 errorWithDomain:@"DigitalAccessError" code:209 userInfo:v8];

    v3[2](v3, 0, v9);
  }

  else
  {
    v20 = v4;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v4;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v32 count:16];
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
          v16 = KmlLogger();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = [v15 publicKeyIdentifier];
            *buf = 136315650;
            v27 = "[DAKeyManagementSession listKeysWithHandler:]";
            v28 = 1024;
            v29 = 128;
            v30 = 2112;
            v31 = v17;
            _os_log_impl(&dword_248BF3000, v16, OS_LOG_TYPE_INFO, "%s : %i : Key id = %@", buf, 0x1Cu);
          }

          v18 = [[DAKeyInformation alloc] initWithEndpoint:v15];
          [v6 addObject:v18];
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v32 count:16];
      }

      while (v12);
    }

    (v3)[2](v3, v6, 0);
    v4 = v20;
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)listKeysWithSession:(id)a3 seid:(id)a4 callback:(id)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = KmlLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v44 = "[DAKeyManagementSession listKeysWithSession:seid:callback:]";
    v45 = 1024;
    v46 = 141;
    _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_ERROR, "%s : %i : This API is deprecated, please use DAManager version instead", buf, 0x12u);
  }

  if (v7 && v8)
  {
    v39 = 0;
    v11 = SESEndPointListWithSession();
    v12 = 0;
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v11, "count")}];
    if (v12)
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = [v12 userInfo];
      v16 = [v14 errorWithDomain:@"DigitalAccessError" code:209 userInfo:v15];

      v9[2](v9, 0, v16);
    }

    else
    {
      v32 = v9;
      v33 = v8;
      v34 = v7;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v20 = v11;
      v21 = [v20 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v36;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v36 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v35 + 1) + 8 * i);
            v26 = KmlLogger();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              v27 = [v25 publicKeyIdentifier];
              *buf = 136315650;
              v44 = "[DAKeyManagementSession listKeysWithSession:seid:callback:]";
              v45 = 1024;
              v46 = 154;
              v47 = 2112;
              v48 = v27;
              _os_log_impl(&dword_248BF3000, v26, OS_LOG_TYPE_INFO, "%s : %i : Key id = %@", buf, 0x1Cu);
            }

            v28 = [[DAKeyInformation alloc] initWithEndpoint:v25];
            [v13 addObject:v28];
          }

          v22 = [v20 countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v22);
      }

      v11 = v20;

      v29 = KmlLogger();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [v13 count];
        *buf = 136315650;
        v44 = "[DAKeyManagementSession listKeysWithSession:seid:callback:]";
        v45 = 1024;
        v46 = 158;
        v47 = 2048;
        v48 = v30;
        _os_log_impl(&dword_248BF3000, v29, OS_LOG_TYPE_INFO, "%s : %i : listKeysWithSession: key count = %lu", buf, 0x1Cu);
      }

      v9 = v32;
      (v32)[2](v32, v13, 0);
      v8 = v33;
      v7 = v34;
    }
  }

  else
  {
    v17 = KmlLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v44 = "[DAKeyManagementSession listKeysWithSession:seid:callback:]";
      v45 = 1024;
      v46 = 143;
      v47 = 2112;
      v48 = v7;
      v49 = 2112;
      v50 = v8;
      _os_log_impl(&dword_248BF3000, v17, OS_LOG_TYPE_ERROR, "%s : %i : Null arguments provided. Session : %@, seid : %@", buf, 0x26u);
    }

    v18 = MEMORY[0x277CCA9B8];
    v41 = *MEMORY[0x277CCA450];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v42 = v11;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v19 = [v18 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v13];
    v9[2](v9, 0, v19);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)listSharingInvitationsForKeyIdentifier:(id)a3 callback:(id)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession listSharingInvitationsForKeyIdentifier:callback:]";
    *&buf[12] = 1024;
    *&buf[14] = 168;
    *&buf[18] = 2112;
    *&buf[20] = v6;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", buf, 0x1Cu);
  }

  if (v6)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v25 = __Block_byref_object_dispose__1;
    v26 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__1;
    v22 = __Block_byref_object_dispose__1;
    v23 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __74__DAKeyManagementSession_listSharingInvitationsForKeyIdentifier_callback___block_invoke;
    v17[3] = &unk_278F6FB00;
    v17[4] = buf;
    v9 = [(DAKeyPairingSession *)self getKeyPairingProxy:v17];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __74__DAKeyManagementSession_listSharingInvitationsForKeyIdentifier_callback___block_invoke_19;
    v16[3] = &unk_278F70308;
    v16[4] = buf;
    v16[5] = &v18;
    [v9 listSharingInvitationsForKeyIdentifier:v6 callback:v16];

    v7[2](v7, v19[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = KmlLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession listSharingInvitationsForKeyIdentifier:callback:]";
      *&buf[12] = 1024;
      *&buf[14] = 170;
      _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided.", buf, 0x12u);
    }

    v11 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v28[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v14 = [v11 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v13];
    (v7)[2](v7, 0, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __74__DAKeyManagementSession_listSharingInvitationsForKeyIdentifier_callback___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyManagementSession listSharingInvitationsForKeyIdentifier:callback:]_block_invoke";
    v16 = 1024;
    v17 = 179;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __74__DAKeyManagementSession_listSharingInvitationsForKeyIdentifier_callback___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = kmlErrorToDAError(a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

void __69__DAKeyManagementSession_listReceivedSharingInvitationsWithCallback___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyManagementSession listReceivedSharingInvitationsWithCallback:]_block_invoke";
    v16 = 1024;
    v17 = 197;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __69__DAKeyManagementSession_listReceivedSharingInvitationsWithCallback___block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = kmlErrorToDAError(a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)localDeleteKey:(id)a3 completionHandler:(id)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession localDeleteKey:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 209;
    *&buf[18] = 2112;
    *&buf[20] = v6;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : %@", buf, 0x1Cu);
  }

  if ([v6 length])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v19 = __Block_byref_object_dispose__1;
    v20 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59__DAKeyManagementSession_localDeleteKey_completionHandler___block_invoke;
    v17[3] = &unk_278F6FB00;
    v17[4] = buf;
    v9 = [(DAKeyPairingSession *)self getKeyPairingProxy:v17];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __59__DAKeyManagementSession_localDeleteKey_completionHandler___block_invoke_22;
    v16[3] = &unk_278F6FB00;
    v16[4] = buf;
    [v9 localDeleteKey:v6 callback:v16];

    v7[2](v7, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = KmlLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession localDeleteKey:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 212;
      _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_ERROR, "%s : %i : keyIdentifier is empty", buf, 0x12u);
    }

    v11 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(206)];
    v22[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v14 = [v11 errorWithDomain:@"DigitalAccessError" code:206 userInfo:v13];

    (v7)[2](v7, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __59__DAKeyManagementSession_localDeleteKey_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyManagementSession localDeleteKey:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 220;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __59__DAKeyManagementSession_localDeleteKey_completionHandler___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = kmlErrorToDAError(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void __74__DAKeyManagementSession_cancelAllFriendInvitationsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyManagementSession cancelAllFriendInvitationsWithCompletionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 236;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __74__DAKeyManagementSession_cancelAllFriendInvitationsWithCompletionHandler___block_invoke_23(uint64_t a1, void *a2)
{
  v3 = kmlErrorToDAError(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void __74__DAKeyManagementSession_removeSharingInvitationWithId_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyManagementSession removeSharingInvitationWithId:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 252;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __74__DAKeyManagementSession_removeSharingInvitationWithId_completionHandler___block_invoke_24(uint64_t a1, void *a2)
{
  v3 = kmlErrorToDAError(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)signAppData:(id)a3 appBundleIdentifier:(id)a4 nonce:(id)a5 auth:(id)a6 keyIdentifier:(id)a7 callback:(id)a8
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a8;
  v9 = KmlLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v18 = "[DAKeyManagementSession signAppData:appBundleIdentifier:nonce:auth:keyIdentifier:callback:]";
    v19 = 1024;
    v20 = 263;
    _os_log_impl(&dword_248BF3000, v9, OS_LOG_TYPE_ERROR, "%s : %i : Deprecated", buf, 0x12u);
  }

  v10 = MEMORY[0x277CCA9B8];
  v15 = *MEMORY[0x277CCA450];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(214), v15}];
  v16 = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v13 = [v10 errorWithDomain:@"DigitalAccessError" code:214 userInfo:v12];
  (*(v8 + 2))(v8, 0, 0, v13);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)countImmobilizerTokensForKeyWithIdentifier:(id)a3 callback:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession countImmobilizerTokensForKeyWithIdentifier:callback:]";
    *&buf[12] = 1024;
    *&buf[14] = 270;
    *&buf[18] = 2112;
    *&buf[20] = v6;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : KeyIdentifier: %@", buf, 0x1Cu);
  }

  if (v6)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    *&buf[24] = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v9 = [(DAKeyPairingSession *)self getKeyPairingProxy:?];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __78__DAKeyManagementSession_countImmobilizerTokensForKeyWithIdentifier_callback___block_invoke_25;
    v12[3] = &unk_278F70350;
    v12[4] = buf;
    v12[5] = &v13;
    [v9 countImmobilizerTokensForKeyWithIdentifier:v6 callback:v12];

    v7[2](v7, *(*&buf[8] + 24), v14[3]);
    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = KmlLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession countImmobilizerTokensForKeyWithIdentifier:callback:]";
      *&buf[12] = 1024;
      *&buf[14] = 272;
      _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v7[2](v7, 0, 0);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __78__DAKeyManagementSession_countImmobilizerTokensForKeyWithIdentifier_callback___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "[DAKeyManagementSession countImmobilizerTokensForKeyWithIdentifier:callback:]_block_invoke";
    v7 = 1024;
    v8 = 280;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __78__DAKeyManagementSession_countImmobilizerTokensForKeyWithIdentifier_callback___block_invoke_25(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = a3;
  return result;
}

- (void)cancelInvitationsWithIdentifiers:(id)a3 sentByOwnerKeyWithIdentifier:(id)a4 callback:(id)a5
{
  v25[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession cancelInvitationsWithIdentifiers:sentByOwnerKeyWithIdentifier:callback:]";
    *&buf[12] = 1024;
    *&buf[14] = 293;
    *&buf[18] = 2112;
    *&buf[20] = v9;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_DEBUG, "%s : %i : OwnerKeyIdentifier: %@", buf, 0x1Cu);
  }

  if (v8 && v9)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v22 = __Block_byref_object_dispose__1;
    v23 = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __97__DAKeyManagementSession_cancelInvitationsWithIdentifiers_sentByOwnerKeyWithIdentifier_callback___block_invoke;
    v20[3] = &unk_278F6FB00;
    v20[4] = buf;
    v12 = [(DAKeyPairingSession *)self getKeyPairingProxy:v20];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __97__DAKeyManagementSession_cancelInvitationsWithIdentifiers_sentByOwnerKeyWithIdentifier_callback___block_invoke_27;
    v19[3] = &unk_278F6FB00;
    v19[4] = buf;
    [v12 cancelInvitationsWithIdentifiers:v8 sentByOwnerKeyWithIdentifier:v9 callback:v19];

    v10[2](v10, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession cancelInvitationsWithIdentifiers:sentByOwnerKeyWithIdentifier:callback:]";
      *&buf[12] = 1024;
      *&buf[14] = 295;
      _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v25[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v17 = [v14 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v16];
    (v10)[2](v10, v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __97__DAKeyManagementSession_cancelInvitationsWithIdentifiers_sentByOwnerKeyWithIdentifier_callback___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyManagementSession cancelInvitationsWithIdentifiers:sentByOwnerKeyWithIdentifier:callback:]_block_invoke";
    v16 = 1024;
    v17 = 303;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __97__DAKeyManagementSession_cancelInvitationsWithIdentifiers_sentByOwnerKeyWithIdentifier_callback___block_invoke_27(uint64_t a1, void *a2)
{
  v3 = kmlErrorToDAError(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)cancelInvitationWithIdentifier:(id)a3 reason:(unint64_t)a4 callback:(id)a5
{
  v30[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = KmlLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession cancelInvitationWithIdentifier:reason:callback:]";
    *&buf[12] = 1024;
    *&buf[14] = 316;
    *&buf[18] = 2112;
    *&buf[20] = v8;
    _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_DEBUG, "%s : %i : invitationIdentifier: %@", buf, 0x1Cu);
  }

  if ([v8 length])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v27 = __Block_byref_object_dispose__1;
    v28 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__1;
    v24 = __Block_byref_object_dispose__1;
    v25 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __73__DAKeyManagementSession_cancelInvitationWithIdentifier_reason_callback___block_invoke;
    v19[3] = &unk_278F6FB00;
    v19[4] = buf;
    v11 = [(DAKeyPairingSession *)self getKeyPairingProxy:v19];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __73__DAKeyManagementSession_cancelInvitationWithIdentifier_reason_callback___block_invoke_28;
    v18[3] = &unk_278F70378;
    v18[4] = &v20;
    v18[5] = buf;
    [v11 cancelInvitationWithIdentifier:v8 reason:a4 callback:v18];

    v9[2](v9, v21[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v20, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v12 = KmlLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession cancelInvitationWithIdentifier:reason:callback:]";
      *&buf[12] = 1024;
      *&buf[14] = 318;
      _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v13 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v30[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v16 = [v13 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v15];
    (v9)[2](v9, 0, v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __73__DAKeyManagementSession_cancelInvitationWithIdentifier_reason_callback___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyManagementSession cancelInvitationWithIdentifier:reason:callback:]_block_invoke";
    v16 = 1024;
    v17 = 327;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __73__DAKeyManagementSession_cancelInvitationWithIdentifier_reason_callback___block_invoke_28(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v10 = a2;
  v6 = a3;
  v7 = kmlErrorToDAError(v6);

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)removeSharedKeysWithIdentifiers:(id)a3 ownerKeyWithIdentifier:(id)a4 callback:(id)a5
{
  v25[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession removeSharedKeysWithIdentifiers:ownerKeyWithIdentifier:callback:]";
    *&buf[12] = 1024;
    *&buf[14] = 341;
    *&buf[18] = 2112;
    *&buf[20] = v9;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_DEBUG, "%s : %i : OwnerKeyIdentifier: %@", buf, 0x1Cu);
  }

  if (v8 && v9)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v22 = __Block_byref_object_dispose__1;
    v23 = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __90__DAKeyManagementSession_removeSharedKeysWithIdentifiers_ownerKeyWithIdentifier_callback___block_invoke;
    v20[3] = &unk_278F6FB00;
    v20[4] = buf;
    v12 = [(DAKeyPairingSession *)self getKeyPairingProxy:v20];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __90__DAKeyManagementSession_removeSharedKeysWithIdentifiers_ownerKeyWithIdentifier_callback___block_invoke_30;
    v19[3] = &unk_278F6FB00;
    v19[4] = buf;
    [v12 removeSharedKeysWithIdentifiers:v8 ownerKeyWithIdentifier:v9 callback:v19];

    v10[2](v10, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession removeSharedKeysWithIdentifiers:ownerKeyWithIdentifier:callback:]";
      *&buf[12] = 1024;
      *&buf[14] = 343;
      _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v25[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v17 = [v14 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v16];
    (v10)[2](v10, v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __90__DAKeyManagementSession_removeSharedKeysWithIdentifiers_ownerKeyWithIdentifier_callback___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyManagementSession removeSharedKeysWithIdentifiers:ownerKeyWithIdentifier:callback:]_block_invoke";
    v16 = 1024;
    v17 = 350;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __90__DAKeyManagementSession_removeSharedKeysWithIdentifiers_ownerKeyWithIdentifier_callback___block_invoke_30(uint64_t a1, void *a2)
{
  v3 = kmlErrorToDAError(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)revokeKeysWithIdentifiers:(id)a3 sharedByOwnerKeyWithIdentifier:(id)a4 callback:(id)a5
{
  v32[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession revokeKeysWithIdentifiers:sharedByOwnerKeyWithIdentifier:callback:]";
    *&buf[12] = 1024;
    *&buf[14] = 363;
    *&buf[18] = 2112;
    *&buf[20] = v8;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_INFO, "%s : %i : keyIdentifier List: %@", buf, 0x1Cu);
  }

  v12 = [v8 count];
  if (v9 && v12)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v29 = __Block_byref_object_dispose__1;
    v30 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__1;
    v26 = __Block_byref_object_dispose__1;
    v27 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __92__DAKeyManagementSession_revokeKeysWithIdentifiers_sharedByOwnerKeyWithIdentifier_callback___block_invoke;
    v21[3] = &unk_278F6FB00;
    v21[4] = buf;
    v13 = [(DAKeyPairingSession *)self getKeyPairingProxy:v21];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __92__DAKeyManagementSession_revokeKeysWithIdentifiers_sharedByOwnerKeyWithIdentifier_callback___block_invoke_31;
    v20[3] = &unk_278F703A0;
    v20[4] = buf;
    v20[5] = &v22;
    [v13 remoteTerminateKeys:v8 nodeGroupIdentifiers:0 treeGroupIdentifiers:0 adminKey:v9 callback:v20];

    v10[2](v10, v23[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v22, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = KmlLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession revokeKeysWithIdentifiers:sharedByOwnerKeyWithIdentifier:callback:]";
      *&buf[12] = 1024;
      *&buf[14] = 365;
      _os_log_impl(&dword_248BF3000, v14, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v15 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v32[0] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v18 = [v15 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v17];
    (v10)[2](v10, 0, v18);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __92__DAKeyManagementSession_revokeKeysWithIdentifiers_sharedByOwnerKeyWithIdentifier_callback___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyManagementSession revokeKeysWithIdentifiers:sharedByOwnerKeyWithIdentifier:callback:]_block_invoke";
    v16 = 1024;
    v17 = 374;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __92__DAKeyManagementSession_revokeKeysWithIdentifiers_sharedByOwnerKeyWithIdentifier_callback___block_invoke_31(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = kmlErrorToDAError(a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)revokeNodesWithGroupIdentifiers:(id)a3 treesWithGroupIdentifier:(id)a4 authorizedByKeyWithIdentifier:(id)a5 callback:(id)a6
{
  v70[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v43 = a4;
  v10 = a5;
  v11 = a6;
  v12 = KmlLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession revokeNodesWithGroupIdentifiers:treesWithGroupIdentifier:authorizedByKeyWithIdentifier:callback:]";
    *&buf[12] = 1024;
    *&buf[14] = 393;
    *&buf[18] = 2112;
    *&buf[20] = v9;
    _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_INFO, "%s : %i : keyGroupIdentifier List: %@", buf, 0x1Cu);
  }

  v13 = KmlLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession revokeNodesWithGroupIdentifiers:treesWithGroupIdentifier:authorizedByKeyWithIdentifier:callback:]";
    *&buf[12] = 1024;
    *&buf[14] = 394;
    *&buf[18] = 2112;
    *&buf[20] = v43;
    _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_INFO, "%s : %i : treeGroupIdentifier List: %@", buf, 0x1Cu);
  }

  if ([v9 count])
  {
    if (!v10)
    {
LABEL_27:
      v26 = KmlLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[DAKeyManagementSession revokeNodesWithGroupIdentifiers:treesWithGroupIdentifier:authorizedByKeyWithIdentifier:callback:]";
        *&buf[12] = 1024;
        *&buf[14] = 397;
        _os_log_impl(&dword_248BF3000, v26, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
      }

      v27 = MEMORY[0x277CCA9B8];
      v69 = *MEMORY[0x277CCA450];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
      v70[0] = v28;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:&v69 count:1];
      v30 = [v27 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v29];
      v11[2](v11, 0, v30);

      goto LABEL_36;
    }
  }

  else
  {
    v14 = [v43 count];
    if (!v10 || !v14)
    {
      goto LABEL_27;
    }
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v15 = v9;
  v16 = [v15 countByEnumeratingWithState:&v56 objects:v68 count:16];
  if (v16)
  {
    v17 = *v57;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v57 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v56 + 1) + 8 * i);
        if ([v19 length] != 4)
        {
          v31 = KmlLogger();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "[DAKeyManagementSession revokeNodesWithGroupIdentifiers:treesWithGroupIdentifier:authorizedByKeyWithIdentifier:callback:]";
            *&buf[12] = 1024;
            *&buf[14] = 406;
            *&buf[18] = 2112;
            *&buf[20] = v19;
            _os_log_impl(&dword_248BF3000, v31, OS_LOG_TYPE_ERROR, "%s : %i : Invalid node group identifier (%@) provided, must be 2 bytes (4 chars)", buf, 0x1Cu);
          }

          v32 = MEMORY[0x277CCA9B8];
          v66 = *MEMORY[0x277CCA450];
          v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
          v67 = v33;
          v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
          v35 = [v32 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v34];
          v11[2](v11, 0, v35);

          goto LABEL_36;
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v56 objects:v68 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v20 = v43;
  v21 = [v20 countByEnumeratingWithState:&v52 objects:v65 count:16];
  if (v21)
  {
    v22 = *v53;
    while (2)
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v53 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v52 + 1) + 8 * j);
        if ([v24 length] != 4)
        {
          v36 = KmlLogger();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "[DAKeyManagementSession revokeNodesWithGroupIdentifiers:treesWithGroupIdentifier:authorizedByKeyWithIdentifier:callback:]";
            *&buf[12] = 1024;
            *&buf[14] = 414;
            *&buf[18] = 2112;
            *&buf[20] = v24;
            _os_log_impl(&dword_248BF3000, v36, OS_LOG_TYPE_ERROR, "%s : %i : Invalid tree group identifier (%@) provided, must be 2 bytes (4 chars)", buf, 0x1Cu);
          }

          v37 = MEMORY[0x277CCA9B8];
          v63 = *MEMORY[0x277CCA450];
          v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
          v64 = v38;
          v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
          v40 = [v37 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v39];
          v11[2](v11, 0, v40);

          goto LABEL_36;
        }
      }

      v21 = [v20 countByEnumeratingWithState:&v52 objects:v65 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__1;
  v61 = __Block_byref_object_dispose__1;
  v62 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__1;
  v50 = __Block_byref_object_dispose__1;
  v51 = 0;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __122__DAKeyManagementSession_revokeNodesWithGroupIdentifiers_treesWithGroupIdentifier_authorizedByKeyWithIdentifier_callback___block_invoke;
  v45[3] = &unk_278F6FB00;
  v45[4] = buf;
  v25 = [(DAKeyPairingSession *)self getKeyPairingProxy:v45];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __122__DAKeyManagementSession_revokeNodesWithGroupIdentifiers_treesWithGroupIdentifier_authorizedByKeyWithIdentifier_callback___block_invoke_33;
  v44[3] = &unk_278F703A0;
  v44[4] = buf;
  v44[5] = &v46;
  [v25 remoteTerminateKeys:0 nodeGroupIdentifiers:v15 treeGroupIdentifiers:v20 adminKey:v10 callback:v44];

  v11[2](v11, v47[5], *(*&buf[8] + 40));
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(buf, 8);
LABEL_36:

  v41 = *MEMORY[0x277D85DE8];
}

void __122__DAKeyManagementSession_revokeNodesWithGroupIdentifiers_treesWithGroupIdentifier_authorizedByKeyWithIdentifier_callback___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyManagementSession revokeNodesWithGroupIdentifiers:treesWithGroupIdentifier:authorizedByKeyWithIdentifier:callback:]_block_invoke";
    v16 = 1024;
    v17 = 424;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __122__DAKeyManagementSession_revokeNodesWithGroupIdentifiers_treesWithGroupIdentifier_authorizedByKeyWithIdentifier_callback___block_invoke_33(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = kmlErrorToDAError(a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)handleActivationForKeyWithIdentifier:(id)a3 callback:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = KmlLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315650;
    v12 = "[DAKeyManagementSession handleActivationForKeyWithIdentifier:callback:]";
    v13 = 1024;
    v14 = 441;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_DEBUG, "%s : %i : %@", &v11, 0x1Cu);
  }

  v8 = kmlUtilDataForHexString(v5);
  v9 = SESEndpointNotifyPassAdded();
  v6[2](v6, v9);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)hasUpgradeAvailableForKeyWithIdentifier:(id)a3 versionType:(unint64_t)a4 versions:(id)a5 completionHandler:(id)a6
{
  v45[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v35 = 0;
  v36 = &v35;
  v37 = 0x4010000000;
  v38 = &unk_248C35099;
  v39 = a4;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1;
  v33 = __Block_byref_object_dispose__1;
  v34 = 0;
  v13 = KmlLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession hasUpgradeAvailableForKeyWithIdentifier:versionType:versions:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 458;
    *&buf[18] = 2112;
    *&buf[20] = v10;
    _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", buf, 0x1Cu);
  }

  if (v10 && [v11 count])
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __105__DAKeyManagementSession_hasUpgradeAvailableForKeyWithIdentifier_versionType_versions_completionHandler___block_invoke;
    v28[3] = &unk_278F6FB00;
    v28[4] = &v29;
    v14 = [(DAKeyPairingSession *)self getKeyPairingProxy:v28];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __105__DAKeyManagementSession_hasUpgradeAvailableForKeyWithIdentifier_versionType_versions_completionHandler___block_invoke_34;
    v27[3] = &unk_278F703C8;
    v27[4] = &v29;
    v27[5] = &v35;
    [v14 hasUpgradeAvailableForKeyWithIdentifier:v10 versionType:a4 versions:v11 completionHandler:v27];

    v15 = v30[5];
    v16 = v12[2];
    v17 = *(v36 + 3);
    *buf = *(v36 + 2);
    *&buf[16] = v17;
    v16(v12, buf, v15);
  }

  else
  {
    v18 = KmlLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession hasUpgradeAvailableForKeyWithIdentifier:versionType:versions:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 460;
      _os_log_impl(&dword_248BF3000, v18, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v19 = v36;
    v20 = MEMORY[0x277CCA9B8];
    v44 = *MEMORY[0x277CCA450];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v45[0] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    v23 = [v20 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v22];
    v24 = v12[2];
    v25 = *(v19 + 3);
    *buf = *(v19 + 2);
    *&buf[16] = v25;
    v24(v12, buf, v23);
  }

  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);
  v26 = *MEMORY[0x277D85DE8];
}

void __105__DAKeyManagementSession_hasUpgradeAvailableForKeyWithIdentifier_versionType_versions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyManagementSession hasUpgradeAvailableForKeyWithIdentifier:versionType:versions:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 466;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __105__DAKeyManagementSession_hasUpgradeAvailableForKeyWithIdentifier_versionType_versions_completionHandler___block_invoke_34(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = KmlLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v17 = "[DAKeyManagementSession hasUpgradeAvailableForKeyWithIdentifier:versionType:versions:completionHandler:]_block_invoke";
    v18 = 1024;
    v19 = 472;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_DEBUG, "%s : %i : Result: %@", buf, 0x1Cu);
  }

  v8 = kmlErrorToDAError(v5);
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  [v6 availableVersionUpgradeValue];
  v11 = *(*(a1 + 40) + 8);
  v12 = v15;
  *(v11 + 32) = v14;
  *(v11 + 48) = v12;

  v13 = *MEMORY[0x277D85DE8];
}

- (void)upgradeKeyWithIdentifier:(id)a3 versionType:(unint64_t)a4 version:(unint64_t)a5 upgradeInformation:(id)a6 completionHandler:(id)a7
{
  v29[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = KmlLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession upgradeKeyWithIdentifier:versionType:version:upgradeInformation:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 486;
    *&buf[18] = 2112;
    *&buf[20] = v12;
    _os_log_impl(&dword_248BF3000, v15, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", buf, 0x1Cu);
  }

  if (v12)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v26 = __Block_byref_object_dispose__1;
    v27 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __108__DAKeyManagementSession_upgradeKeyWithIdentifier_versionType_version_upgradeInformation_completionHandler___block_invoke;
    v24[3] = &unk_278F6FB00;
    v24[4] = buf;
    v16 = [(DAKeyPairingSession *)self getKeyPairingProxy:v24];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __108__DAKeyManagementSession_upgradeKeyWithIdentifier_versionType_version_upgradeInformation_completionHandler___block_invoke_36;
    v23[3] = &unk_278F6FB00;
    v23[4] = buf;
    [v16 upgradeKeyWithIdentifier:v12 versionType:a4 version:a5 upgradeInformation:v13 completionHandler:v23];

    v14[2](v14, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v17 = KmlLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession upgradeKeyWithIdentifier:versionType:version:upgradeInformation:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 488;
      _os_log_impl(&dword_248BF3000, v17, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v18 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA450];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v29[0] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v21 = [v18 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v20];
    (v14)[2](v14, v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __108__DAKeyManagementSession_upgradeKeyWithIdentifier_versionType_version_upgradeInformation_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyManagementSession upgradeKeyWithIdentifier:versionType:version:upgradeInformation:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 495;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __108__DAKeyManagementSession_upgradeKeyWithIdentifier_versionType_version_upgradeInformation_completionHandler___block_invoke_36(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "[DAKeyManagementSession upgradeKeyWithIdentifier:versionType:version:upgradeInformation:completionHandler:]_block_invoke";
    v11 = 1024;
    v12 = 502;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_DEBUG, "%s : %i : Result: %@", &v9, 0x1Cu);
  }

  v5 = kmlErrorToDAError(v3);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *MEMORY[0x277D85DE8];
}

- (void)commitUpgradeForKeyWithIdentifier:(id)a3 versionType:(unint64_t)a4 version:(unint64_t)a5 completionHandler:(id)a6
{
  v26[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = KmlLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession commitUpgradeForKeyWithIdentifier:versionType:version:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 515;
    *&buf[18] = 2112;
    *&buf[20] = v10;
    _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", buf, 0x1Cu);
  }

  if (v10)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v23 = __Block_byref_object_dispose__1;
    v24 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __98__DAKeyManagementSession_commitUpgradeForKeyWithIdentifier_versionType_version_completionHandler___block_invoke;
    v21[3] = &unk_278F6FB00;
    v21[4] = buf;
    v13 = [(DAKeyPairingSession *)self getKeyPairingProxy:v21];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __98__DAKeyManagementSession_commitUpgradeForKeyWithIdentifier_versionType_version_completionHandler___block_invoke_37;
    v20[3] = &unk_278F6FB00;
    v20[4] = buf;
    [v13 finalizeUpgradeForKeyWithIdentifier:v10 versionType:a4 version:a5 revert:0 completionHandler:v20];

    v11[2](v11, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = KmlLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession commitUpgradeForKeyWithIdentifier:versionType:version:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 517;
      _os_log_impl(&dword_248BF3000, v14, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v15 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v26[0] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v18 = [v15 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v17];
    (v11)[2](v11, v18);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __98__DAKeyManagementSession_commitUpgradeForKeyWithIdentifier_versionType_version_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyManagementSession commitUpgradeForKeyWithIdentifier:versionType:version:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 524;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __98__DAKeyManagementSession_commitUpgradeForKeyWithIdentifier_versionType_version_completionHandler___block_invoke_37(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "[DAKeyManagementSession commitUpgradeForKeyWithIdentifier:versionType:version:completionHandler:]_block_invoke";
    v11 = 1024;
    v12 = 531;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_DEBUG, "%s : %i : Result: %@", &v9, 0x1Cu);
  }

  v5 = kmlErrorToDAError(v3);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *MEMORY[0x277D85DE8];
}

- (void)revertUpgradeForKeyWithIdentifier:(id)a3 versionType:(unint64_t)a4 version:(unint64_t)a5 completionHandler:(id)a6
{
  v26[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = KmlLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession revertUpgradeForKeyWithIdentifier:versionType:version:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 543;
    *&buf[18] = 2112;
    *&buf[20] = v10;
    _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", buf, 0x1Cu);
  }

  if (v10)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v23 = __Block_byref_object_dispose__1;
    v24 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __98__DAKeyManagementSession_revertUpgradeForKeyWithIdentifier_versionType_version_completionHandler___block_invoke;
    v21[3] = &unk_278F6FB00;
    v21[4] = buf;
    v13 = [(DAKeyPairingSession *)self getKeyPairingProxy:v21];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __98__DAKeyManagementSession_revertUpgradeForKeyWithIdentifier_versionType_version_completionHandler___block_invoke_38;
    v20[3] = &unk_278F6FB00;
    v20[4] = buf;
    [v13 finalizeUpgradeForKeyWithIdentifier:v10 versionType:a4 version:a5 revert:1 completionHandler:v20];

    v11[2](v11, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = KmlLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession revertUpgradeForKeyWithIdentifier:versionType:version:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 545;
      _os_log_impl(&dword_248BF3000, v14, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v15 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v26[0] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v18 = [v15 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v17];
    (v11)[2](v11, v18);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __98__DAKeyManagementSession_revertUpgradeForKeyWithIdentifier_versionType_version_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyManagementSession revertUpgradeForKeyWithIdentifier:versionType:version:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 552;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __98__DAKeyManagementSession_revertUpgradeForKeyWithIdentifier_versionType_version_completionHandler___block_invoke_38(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "[DAKeyManagementSession revertUpgradeForKeyWithIdentifier:versionType:version:completionHandler:]_block_invoke";
    v11 = 1024;
    v12 = 559;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_DEBUG, "%s : %i : Result: %@", &v9, 0x1Cu);
  }

  v5 = kmlErrorToDAError(v3);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateConfiguration:(id)a3 forKeyWithIdentifier:(id)a4 additionalConfigurationData:(id)a5 completionHandler:(id)a6
{
  v28[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = KmlLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession updateConfiguration:forKeyWithIdentifier:additionalConfigurationData:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 573;
    *&buf[18] = 2112;
    *&buf[20] = v11;
    _os_log_impl(&dword_248BF3000, v14, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", buf, 0x1Cu);
  }

  if (v11)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v25 = __Block_byref_object_dispose__1;
    v26 = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __113__DAKeyManagementSession_updateConfiguration_forKeyWithIdentifier_additionalConfigurationData_completionHandler___block_invoke;
    v23[3] = &unk_278F6FB00;
    v23[4] = buf;
    v15 = [(DAKeyPairingSession *)self getKeyPairingProxy:v23];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __113__DAKeyManagementSession_updateConfiguration_forKeyWithIdentifier_additionalConfigurationData_completionHandler___block_invoke_39;
    v22[3] = &unk_278F6FB00;
    v22[4] = buf;
    [v15 updateConfiguration:v10 forKeyWithIdentifier:v11 additionalConfigurationData:v12 completionHandler:v22];

    v13[2](v13, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v16 = KmlLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession updateConfiguration:forKeyWithIdentifier:additionalConfigurationData:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 575;
      _os_log_impl(&dword_248BF3000, v16, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v17 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v28[0] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v20 = [v17 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v19];
    (v13)[2](v13, v20);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __113__DAKeyManagementSession_updateConfiguration_forKeyWithIdentifier_additionalConfigurationData_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyManagementSession updateConfiguration:forKeyWithIdentifier:additionalConfigurationData:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 582;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __113__DAKeyManagementSession_updateConfiguration_forKeyWithIdentifier_additionalConfigurationData_completionHandler___block_invoke_39(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "[DAKeyManagementSession updateConfiguration:forKeyWithIdentifier:additionalConfigurationData:completionHandler:]_block_invoke";
    v11 = 1024;
    v12 = 588;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_DEBUG, "%s : %i : Result: %@", &v9, 0x1Cu);
  }

  v5 = kmlErrorToDAError(v3);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *MEMORY[0x277D85DE8];
}

- (id)sendTrackingReceipt:(void *)a3 otherJSONData:(void *)a4 forKeyWithIdentifier:
{
  v22[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    kmlUtilLogLargeData(@"Tracking Receipt Data", v8);
    if (v9)
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x3032000000;
      v18 = __Block_byref_object_copy__1;
      v19 = __Block_byref_object_dispose__1;
      v20 = 0;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __81__DAKeyManagementSession_sendTrackingReceipt_otherJSONData_forKeyWithIdentifier___block_invoke;
      v14[3] = &unk_278F6FB00;
      v14[4] = &v15;
      v10 = [a1 getRemoteProxy:v14];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __81__DAKeyManagementSession_sendTrackingReceipt_otherJSONData_forKeyWithIdentifier___block_invoke_43;
      v13[3] = &unk_278F6FB00;
      v13[4] = &v15;
      [v10 consumeTrackingReceipt:v7 otherJSONData:v8 forKeyWithIdentifier:v9 callback:v13];

      a1 = v16[5];
      _Block_object_dispose(&v15, 8);
    }

    else
    {
      [DAKeyManagementSession sendTrackingReceipt:v22 otherJSONData:&v15 forKeyWithIdentifier:?];
      a1 = v15;
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return a1;
}

void __81__DAKeyManagementSession_sendTrackingReceipt_otherJSONData_forKeyWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyManagementSession sendTrackingReceipt:otherJSONData:forKeyWithIdentifier:]_block_invoke";
    v16 = 1024;
    v17 = 608;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __81__DAKeyManagementSession_sendTrackingReceipt_otherJSONData_forKeyWithIdentifier___block_invoke_43(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "[DAKeyManagementSession sendTrackingReceipt:otherJSONData:forKeyWithIdentifier:]_block_invoke";
    v11 = 1024;
    v12 = 614;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_DEBUG, "%s : %i : Result: %@", &v9, 0x1Cu);
  }

  v5 = kmlErrorToDAError(v3);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *MEMORY[0x277D85DE8];
}

- (id)setTrackingReceipt:(id)a3 forKeyWithIdentifier:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315394;
    v14 = "[DAKeyManagementSession setTrackingReceipt:forKeyWithIdentifier:]";
    v15 = 1024;
    v16 = 628;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_ERROR, "%s : %i : Deprecated API, use setTrackingReceipt:decryptedDeviceData:forKeyWithIdentifier: instead", &v13, 0x12u);
  }

  v9 = KmlLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315650;
    v14 = "[DAKeyManagementSession setTrackingReceipt:forKeyWithIdentifier:]";
    v15 = 1024;
    v16 = 629;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_248BF3000, v9, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", &v13, 0x1Cu);
  }

  v10 = [(DAKeyManagementSession *)self sendTrackingReceipt:v7 otherJSONData:0 forKeyWithIdentifier:v6];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)setTrackingReceipt:(id)a3 vehicleMobilizationData:(id)a4 forKeyWithIdentifier:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v17 = 136315394;
    v18 = "[DAKeyManagementSession setTrackingReceipt:vehicleMobilizationData:forKeyWithIdentifier:]";
    v19 = 1024;
    v20 = 639;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_ERROR, "%s : %i : Deprecated API, use setTrackingReceipt:decryptedDeviceData:forKeyWithIdentifier: instead", &v17, 0x12u);
  }

  v12 = KmlLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315650;
    v18 = "[DAKeyManagementSession setTrackingReceipt:vehicleMobilizationData:forKeyWithIdentifier:]";
    v19 = 1024;
    v20 = 640;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", &v17, 0x1Cu);
  }

  v13 = [DAUtils decryptVehicleMobilizationData:v9 forKeyWithIdentifier:v8];

  v14 = [(DAKeyManagementSession *)self sendTrackingReceipt:v10 otherJSONData:v13 forKeyWithIdentifier:v8];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)setTrackingReceipt:(id)a3 slotIdentifier:(id)a4 confidentialMailboxData:(id)a5 ephemeralPublicKey:(id)a6 forKeyWithIdentifier:(id)a7
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = a7;
  v10 = a3;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v16 = 136315394;
    v17 = "[DAKeyManagementSession setTrackingReceipt:slotIdentifier:confidentialMailboxData:ephemeralPublicKey:forKeyWithIdentifier:]";
    v18 = 1024;
    v19 = 655;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_ERROR, "%s : %i : Deprecated API, use setTrackingReceipt:decryptedDeviceData:forKeyWithIdentifier: instead", &v16, 0x12u);
  }

  v12 = KmlLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v16 = 136315650;
    v17 = "[DAKeyManagementSession setTrackingReceipt:slotIdentifier:confidentialMailboxData:ephemeralPublicKey:forKeyWithIdentifier:]";
    v18 = 1024;
    v19 = 656;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", &v16, 0x1Cu);
  }

  v13 = [(DAKeyManagementSession *)self sendTrackingReceipt:v10 otherJSONData:0 forKeyWithIdentifier:v9];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)endPointPrivacyDecryption:(id)a3 encryptedData:(id)a4 publicKey:(id)a5 callback:(id)a6
{
  v34[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = KmlLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v28 = "[DAKeyManagementSession endPointPrivacyDecryption:encryptedData:publicKey:callback:]";
    v29 = 1024;
    v30 = 667;
    _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_INFO, "%s : %i : API Deprecated, please stop use", buf, 0x12u);
  }

  if (v9 && v10 && v11)
  {
    v14 = kmlUtilDataForHexString(v11);
    v15 = kmlUtilDataForHexString(v10);
    v16 = SESEndPointPrivacyDecryption();
    v17 = 0;
    v18 = KmlLogger();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (v17)
    {
      v26 = v11;
      if (v19)
      {
        *buf = 136315650;
        v28 = "[DAKeyManagementSession endPointPrivacyDecryption:encryptedData:publicKey:callback:]";
        v29 = 1024;
        v30 = 682;
        v31 = 2112;
        v32 = v17;
        _os_log_impl(&dword_248BF3000, v18, OS_LOG_TYPE_INFO, "%s : %i : endPointPrivacyDecryption: return error: %@", buf, 0x1Cu);
      }

      v20 = MEMORY[0x277CCA9B8];
      v21 = [v17 userInfo];
      v22 = [v20 errorWithDomain:@"DigitalAccessError" code:204 userInfo:v21];

      v12[2](v12, 0, v22);
      v11 = v26;
    }

    else
    {
      if (v19)
      {
        *buf = 136315650;
        v28 = "[DAKeyManagementSession endPointPrivacyDecryption:encryptedData:publicKey:callback:]";
        v29 = 1024;
        v30 = 679;
        v31 = 2112;
        v32 = v16;
        _os_log_impl(&dword_248BF3000, v18, OS_LOG_TYPE_INFO, "%s : %i : endPointPrivacyDecryption: got decrypted data: %@", buf, 0x1Cu);
      }

      (v12)[2](v12, v16, 0);
    }
  }

  else
  {
    v23 = KmlLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[DAKeyManagementSession endPointPrivacyDecryption:encryptedData:publicKey:callback:]";
      v29 = 1024;
      v30 = 669;
      _os_log_impl(&dword_248BF3000, v23, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v24 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA450];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v34[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v16 = [v24 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v15];
    v12[2](v12, 0, v16);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)updateConfiguration:(id)a3 forKeyWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[DAKeyManagementSession updateConfiguration:forKeyWithIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 692;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_INFO, "%s : %i : This API is deprecated, please use updateConfiguration:forKeyWithIdentifier:additionalConfigurationData:completionHandler instead", buf, 0x12u);
  }

  v12 = KmlLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession updateConfiguration:forKeyWithIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 693;
    *&buf[18] = 2112;
    *&buf[20] = v9;
    _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", buf, 0x1Cu);
  }

  if (v8 && v9)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v23 = __Block_byref_object_dispose__1;
    v24 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __85__DAKeyManagementSession_updateConfiguration_forKeyWithIdentifier_completionHandler___block_invoke;
    v21[3] = &unk_278F6FB00;
    v21[4] = buf;
    v13 = [(DAKeyPairingSession *)self getKeyPairingProxy:v21];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __85__DAKeyManagementSession_updateConfiguration_forKeyWithIdentifier_completionHandler___block_invoke_45;
    v20[3] = &unk_278F6FB00;
    v20[4] = buf;
    [v13 updateConfiguration:v8 forKeyWithIdentifier:v9 additionalConfigurationData:0 completionHandler:v20];

    v10[2](v10, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = KmlLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession updateConfiguration:forKeyWithIdentifier:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 695;
      _os_log_impl(&dword_248BF3000, v14, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v15 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v26[0] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v18 = [v15 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v17];
    (v10)[2](v10, v18);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __85__DAKeyManagementSession_updateConfiguration_forKeyWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyManagementSession updateConfiguration:forKeyWithIdentifier:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 702;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __85__DAKeyManagementSession_updateConfiguration_forKeyWithIdentifier_completionHandler___block_invoke_45(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "[DAKeyManagementSession updateConfiguration:forKeyWithIdentifier:completionHandler:]_block_invoke";
    v11 = 1024;
    v12 = 708;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_DEBUG, "%s : %i : Result: %@", &v9, 0x1Cu);
  }

  v5 = kmlErrorToDAError(v3);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *MEMORY[0x277D85DE8];
}

- (id)setTrackingReceipt:(id)a3 decryptedDeviceData:(id)a4 forKeyWithIdentifier:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315650;
    v16 = "[DAKeyManagementSession setTrackingReceipt:decryptedDeviceData:forKeyWithIdentifier:]";
    v17 = 1024;
    v18 = 721;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", &v15, 0x1Cu);
  }

  v12 = [(DAKeyManagementSession *)self sendTrackingReceipt:v10 otherJSONData:v9 forKeyWithIdentifier:v8];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)requestBindingAttestationDataForKeyWithIdentifier:(id)a3 callback:(id)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession requestBindingAttestationDataForKeyWithIdentifier:callback:]";
    *&buf[12] = 1024;
    *&buf[14] = 732;
    *&buf[18] = 2112;
    *&buf[20] = v6;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_INFO, "%s : %i : keyIdentifier: %@", buf, 0x1Cu);
  }

  if (v6)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v25 = __Block_byref_object_dispose__1;
    v26 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__1;
    v22 = __Block_byref_object_dispose__1;
    v23 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __85__DAKeyManagementSession_requestBindingAttestationDataForKeyWithIdentifier_callback___block_invoke;
    v17[3] = &unk_278F6FB00;
    v17[4] = buf;
    v9 = [(DAKeyPairingSession *)self getKeyPairingProxy:v17];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __85__DAKeyManagementSession_requestBindingAttestationDataForKeyWithIdentifier_callback___block_invoke_46;
    v16[3] = &unk_278F703F0;
    v16[4] = buf;
    v16[5] = &v18;
    [v9 requestBindingAttestationDataForKeyWithIdentifier:v6 callback:v16];

    v7[2](v7, v19[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = KmlLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession requestBindingAttestationDataForKeyWithIdentifier:callback:]";
      *&buf[12] = 1024;
      *&buf[14] = 734;
      _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v11 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v28[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v14 = [v11 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v13];
    (v7)[2](v7, 0, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __85__DAKeyManagementSession_requestBindingAttestationDataForKeyWithIdentifier_callback___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyManagementSession requestBindingAttestationDataForKeyWithIdentifier:callback:]_block_invoke";
    v16 = 1024;
    v17 = 743;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __85__DAKeyManagementSession_requestBindingAttestationDataForKeyWithIdentifier_callback___block_invoke_46(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = kmlErrorToDAError(a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)setBindingAttestation:(id)a3 forKeyWithIdentifier:(id)a4 callback:(id)a5
{
  v25[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession setBindingAttestation:forKeyWithIdentifier:callback:]";
    *&buf[12] = 1024;
    *&buf[14] = 757;
    *&buf[18] = 2112;
    *&buf[20] = v9;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_INFO, "%s : %i : keyIdentifier: %@", buf, 0x1Cu);
  }

  if (v8 && v9)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v22 = __Block_byref_object_dispose__1;
    v23 = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __78__DAKeyManagementSession_setBindingAttestation_forKeyWithIdentifier_callback___block_invoke;
    v20[3] = &unk_278F6FB00;
    v20[4] = buf;
    v12 = [(DAKeyPairingSession *)self getKeyPairingProxy:v20];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __78__DAKeyManagementSession_setBindingAttestation_forKeyWithIdentifier_callback___block_invoke_48;
    v19[3] = &unk_278F6FB00;
    v19[4] = buf;
    [v12 setBindingAttestation:v8 forKeyWithIdentifier:v9 callback:v19];

    v10[2](v10, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession setBindingAttestation:forKeyWithIdentifier:callback:]";
      *&buf[12] = 1024;
      *&buf[14] = 759;
      _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v25[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v17 = [v14 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v16];
    (v10)[2](v10, v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __78__DAKeyManagementSession_setBindingAttestation_forKeyWithIdentifier_callback___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyManagementSession setBindingAttestation:forKeyWithIdentifier:callback:]_block_invoke";
    v16 = 1024;
    v17 = 767;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __78__DAKeyManagementSession_setBindingAttestation_forKeyWithIdentifier_callback___block_invoke_48(uint64_t a1, void *a2)
{
  v3 = kmlErrorToDAError(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)getPreTrackRequestForInvitationWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession getPreTrackRequestForInvitationWithIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 779;
    *&buf[18] = 2112;
    *&buf[20] = v6;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : invitationIdentifier: %@", buf, 0x1Cu);
  }

  if ([v6 length])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v25 = __Block_byref_object_dispose__1;
    v26 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__1;
    v22 = __Block_byref_object_dispose__1;
    v23 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __90__DAKeyManagementSession_getPreTrackRequestForInvitationWithIdentifier_completionHandler___block_invoke;
    v17[3] = &unk_278F6FB00;
    v17[4] = buf;
    v9 = [(DAKeyPairingSession *)self getKeyPairingProxy:v17];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __90__DAKeyManagementSession_getPreTrackRequestForInvitationWithIdentifier_completionHandler___block_invoke_49;
    v16[3] = &unk_278F703A0;
    v16[4] = &v18;
    v16[5] = buf;
    [v9 getPreTrackRequestForInvitationWithIdentifier:v6 completionHandler:v16];

    v7[2](v7, v19[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = KmlLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession getPreTrackRequestForInvitationWithIdentifier:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 781;
      _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v11 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v28[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v14 = [v11 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v13];
    (v7)[2](v7, 0, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __90__DAKeyManagementSession_getPreTrackRequestForInvitationWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyManagementSession getPreTrackRequestForInvitationWithIdentifier:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 790;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __90__DAKeyManagementSession_getPreTrackRequestForInvitationWithIdentifier_completionHandler___block_invoke_49(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v10 = a2;
  v6 = a3;
  v7 = kmlErrorToDAError(v6);

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)getPreTrackRequestForKeyWithIdentifier:(id)a3 callback:(id)a4
{
  v29[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[DAKeyManagementSession getPreTrackRequestForKeyWithIdentifier:callback:]";
    *&buf[12] = 1024;
    *&buf[14] = 809;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_INFO, "%s : %i : This API is deprecated, use getPreTrackRequestForInvitationWithIdentifier: instead", buf, 0x12u);
  }

  v9 = KmlLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession getPreTrackRequestForKeyWithIdentifier:callback:]";
    *&buf[12] = 1024;
    *&buf[14] = 810;
    *&buf[18] = 2112;
    *&buf[20] = v6;
    _os_log_impl(&dword_248BF3000, v9, OS_LOG_TYPE_DEBUG, "%s : %i : keyIdentifier: %@", buf, 0x1Cu);
  }

  if (v6)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v26 = __Block_byref_object_dispose__1;
    v27 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__1;
    v23 = __Block_byref_object_dispose__1;
    v24 = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __74__DAKeyManagementSession_getPreTrackRequestForKeyWithIdentifier_callback___block_invoke;
    v18[3] = &unk_278F6FB00;
    v18[4] = buf;
    v10 = [(DAKeyPairingSession *)self getKeyPairingProxy:v18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __74__DAKeyManagementSession_getPreTrackRequestForKeyWithIdentifier_callback___block_invoke_50;
    v17[3] = &unk_278F703A0;
    v17[4] = &v19;
    v17[5] = buf;
    [v10 getPreTrackRequestForKeyWithIdentifier:v6 callback:v17];

    v7[2](v7, v20[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v19, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = KmlLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession getPreTrackRequestForKeyWithIdentifier:callback:]";
      *&buf[12] = 1024;
      *&buf[14] = 812;
      _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v12 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA450];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v29[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v15 = [v12 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v14];
    (v7)[2](v7, 0, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __74__DAKeyManagementSession_getPreTrackRequestForKeyWithIdentifier_callback___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyManagementSession getPreTrackRequestForKeyWithIdentifier:callback:]_block_invoke";
    v16 = 1024;
    v17 = 821;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __74__DAKeyManagementSession_getPreTrackRequestForKeyWithIdentifier_callback___block_invoke_50(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v10 = a2;
  v6 = a3;
  v7 = kmlErrorToDAError(v6);

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)ppidRequestForInvitationWithIdentifier:(id)a3 fromMailboxIdentifier:(id)a4 completionHandler:(id)a5
{
  v32[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[DAKeyManagementSession ppidRequestForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 835;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_INFO, "%s : %i : This method is deprecated, please use ppidRequestForInvitationWithIdentifier:completionHandler: instead", buf, 0x12u);
  }

  v12 = KmlLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession ppidRequestForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 836;
    *&buf[18] = 2112;
    *&buf[20] = v8;
    _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_DEBUG, "%s : %i : invitationIdentifier: %@", buf, 0x1Cu);
  }

  if (v8 | v9)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v29 = __Block_byref_object_dispose__1;
    v30 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__1;
    v26 = __Block_byref_object_dispose__1;
    v27 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __105__DAKeyManagementSession_ppidRequestForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler___block_invoke;
    v21[3] = &unk_278F6FB00;
    v21[4] = buf;
    v18 = [(DAKeyPairingSession *)self getKeyPairingProxy:v21];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __105__DAKeyManagementSession_ppidRequestForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler___block_invoke_51;
    v20[3] = &unk_278F703A0;
    v20[4] = &v22;
    v20[5] = buf;
    [v18 ppidRequestForInvitationWithIdentifier:v8 fromMailboxIdentifier:v9 completionHandler:v20];

    v10[2](v10, v23[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v22, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession ppidRequestForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 838;
      _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_ERROR, "%s : %i : Null arguments provided", buf, 0x12u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v32[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v17 = [v14 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v16];
    (v10)[2](v10, 0, v17);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __105__DAKeyManagementSession_ppidRequestForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyManagementSession ppidRequestForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 847;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __105__DAKeyManagementSession_ppidRequestForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler___block_invoke_51(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v10 = a2;
  v6 = a3;
  v7 = kmlErrorToDAError(v6);

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)readerInformationForInvitationWithIdentifier:(id)a3 fromMailboxIdentifier:(id)a4 completionHandler:(id)a5
{
  v32[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[DAKeyManagementSession readerInformationForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 861;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_INFO, "%s : %i : This method is deprecated, please use readerInformationForInvitationWithIdentifier:completionHandler: instead", buf, 0x12u);
  }

  v12 = KmlLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession readerInformationForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 862;
    *&buf[18] = 2112;
    *&buf[20] = v8;
    _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_DEBUG, "%s : %i : invitationIdentifier: %@", buf, 0x1Cu);
  }

  if (v8 | v9)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v29 = __Block_byref_object_dispose__1;
    v30 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__1;
    v26 = __Block_byref_object_dispose__1;
    v27 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __111__DAKeyManagementSession_readerInformationForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler___block_invoke;
    v21[3] = &unk_278F6FB00;
    v21[4] = buf;
    v18 = [(DAKeyPairingSession *)self getKeyPairingProxy:v21];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __111__DAKeyManagementSession_readerInformationForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler___block_invoke_52;
    v20[3] = &unk_278F70418;
    v20[4] = &v22;
    v20[5] = buf;
    [v18 readerInformationForInvitationWithIdentifier:v8 fromMailboxIdentifier:v9 completionHandler:v20];

    v10[2](v10, v23[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v22, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession readerInformationForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 864;
      _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_ERROR, "%s : %i : Null arguments provided", buf, 0x12u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v32[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v17 = [v14 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v16];
    (v10)[2](v10, 0, v17);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __111__DAKeyManagementSession_readerInformationForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyManagementSession readerInformationForInvitationWithIdentifier:fromMailboxIdentifier:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 873;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __111__DAKeyManagementSession_readerInformationForInvitationWithIdentifier_fromMailboxIdentifier_completionHandler___block_invoke_52(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v10 = a2;
  v6 = a3;
  v7 = kmlErrorToDAError(v6);

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)ppidRequestForInvitationWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession ppidRequestForInvitationWithIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 888;
    *&buf[18] = 2112;
    *&buf[20] = v6;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : invitationIdentifier: %@", buf, 0x1Cu);
  }

  if ([v6 length])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v25 = __Block_byref_object_dispose__1;
    v26 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__1;
    v22 = __Block_byref_object_dispose__1;
    v23 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __83__DAKeyManagementSession_ppidRequestForInvitationWithIdentifier_completionHandler___block_invoke;
    v17[3] = &unk_278F6FB00;
    v17[4] = buf;
    v9 = [(DAKeyPairingSession *)self getKeyPairingProxy:v17];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __83__DAKeyManagementSession_ppidRequestForInvitationWithIdentifier_completionHandler___block_invoke_54;
    v16[3] = &unk_278F703A0;
    v16[4] = &v18;
    v16[5] = buf;
    [v9 ppidRequestForInvitationWithIdentifier:v6 fromMailboxIdentifier:0 completionHandler:v16];

    v7[2](v7, v19[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = KmlLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession ppidRequestForInvitationWithIdentifier:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 890;
      _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_ERROR, "%s : %i : Null arguments provided", buf, 0x12u);
    }

    v11 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v28[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v14 = [v11 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v13];
    (v7)[2](v7, 0, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __83__DAKeyManagementSession_ppidRequestForInvitationWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyManagementSession ppidRequestForInvitationWithIdentifier:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 899;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __83__DAKeyManagementSession_ppidRequestForInvitationWithIdentifier_completionHandler___block_invoke_54(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v10 = a2;
  v6 = a3;
  v7 = kmlErrorToDAError(v6);

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)setProductPlanIdentifier:(id)a3 forInvitationIdentifier:(id)a4 completion:(id)a5
{
  v25[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession setProductPlanIdentifier:forInvitationIdentifier:completion:]";
    *&buf[12] = 1024;
    *&buf[14] = 915;
    *&buf[18] = 2112;
    *&buf[20] = v9;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_DEBUG, "%s : %i : invitationIdentifier: %@", buf, 0x1Cu);
  }

  if ([v9 length])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v22 = __Block_byref_object_dispose__1;
    v23 = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __86__DAKeyManagementSession_setProductPlanIdentifier_forInvitationIdentifier_completion___block_invoke;
    v20[3] = &unk_278F6FB00;
    v20[4] = buf;
    v12 = [(DAKeyPairingSession *)self getKeyPairingProxy:v20];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __86__DAKeyManagementSession_setProductPlanIdentifier_forInvitationIdentifier_completion___block_invoke_55;
    v19[3] = &unk_278F6FB00;
    v19[4] = buf;
    [v12 setProductPlanIdentifier:v8 forInvitationIdentifier:v9 completion:v19];

    v10[2](v10, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession setProductPlanIdentifier:forInvitationIdentifier:completion:]";
      *&buf[12] = 1024;
      *&buf[14] = 917;
      _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_ERROR, "%s : %i : Null arguments provided", buf, 0x12u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v25[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v17 = [v14 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v16];
    (v10)[2](v10, v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __86__DAKeyManagementSession_setProductPlanIdentifier_forInvitationIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyManagementSession setProductPlanIdentifier:forInvitationIdentifier:completion:]_block_invoke";
    v16 = 1024;
    v17 = 926;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __86__DAKeyManagementSession_setProductPlanIdentifier_forInvitationIdentifier_completion___block_invoke_55(uint64_t a1, void *a2)
{
  v3 = kmlErrorToDAError(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)readerInformationForInvitationWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "[DAKeyManagementSession readerInformationForInvitationWithIdentifier:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 938;
    *&buf[18] = 2112;
    *&buf[20] = v6;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : invitationIdentifier: %@", buf, 0x1Cu);
  }

  if ([v6 length])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    v25 = __Block_byref_object_dispose__1;
    v26 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__1;
    v22 = __Block_byref_object_dispose__1;
    v23 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __89__DAKeyManagementSession_readerInformationForInvitationWithIdentifier_completionHandler___block_invoke;
    v17[3] = &unk_278F6FB00;
    v17[4] = buf;
    v9 = [(DAKeyPairingSession *)self getKeyPairingProxy:v17];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __89__DAKeyManagementSession_readerInformationForInvitationWithIdentifier_completionHandler___block_invoke_56;
    v16[3] = &unk_278F70418;
    v16[4] = &v18;
    v16[5] = buf;
    [v9 readerInformationForInvitationWithIdentifier:v6 fromMailboxIdentifier:0 completionHandler:v16];

    v7[2](v7, v19[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = KmlLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession readerInformationForInvitationWithIdentifier:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 940;
      _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", buf, 0x12u);
    }

    v11 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v28[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v14 = [v11 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v13];
    (v7)[2](v7, 0, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __89__DAKeyManagementSession_readerInformationForInvitationWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyManagementSession readerInformationForInvitationWithIdentifier:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 949;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __89__DAKeyManagementSession_readerInformationForInvitationWithIdentifier_completionHandler___block_invoke_56(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v10 = a2;
  v6 = a3;
  v7 = kmlErrorToDAError(v6);

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)getSecondFactorRequestForConfigs:(id)a3 completionHandler:(id)a4
{
  v29[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "[DAKeyManagementSession getSecondFactorRequestForConfigs:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 962;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : ", buf, 0x12u);
  }

  if ([v6 count])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v25 = __Block_byref_object_copy__1;
    v26 = __Block_byref_object_dispose__1;
    v27 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__1;
    v22 = __Block_byref_object_dispose__1;
    v23 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __77__DAKeyManagementSession_getSecondFactorRequestForConfigs_completionHandler___block_invoke;
    v17[3] = &unk_278F6FB00;
    v17[4] = buf;
    v9 = [(DAKeyPairingSession *)self getKeyPairingProxy:v17];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __77__DAKeyManagementSession_getSecondFactorRequestForConfigs_completionHandler___block_invoke_57;
    v16[3] = &unk_278F70308;
    v16[4] = buf;
    v16[5] = &v18;
    [v9 getSecondFactorRequestForConfigs:v6 completionHandler:v16];

    v7[2](v7, v19[5], *(*&buf[8] + 40));
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = KmlLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[DAKeyManagementSession getSecondFactorRequestForConfigs:completionHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 964;
      _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_ERROR, "%s : %i : Null arguments provided", buf, 0x12u);
    }

    v11 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v29[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v14 = [v11 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v13];
    (v7)[2](v7, 0, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __77__DAKeyManagementSession_getSecondFactorRequestForConfigs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[DAKeyManagementSession getSecondFactorRequestForConfigs:completionHandler:]_block_invoke";
    v16 = 1024;
    v17 = 973;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : XPC Proxy error %@", buf, 0x1Cu);
  }

  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v12}];
  v13 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = [v5 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

void __77__DAKeyManagementSession_getSecondFactorRequestForConfigs_completionHandler___block_invoke_57(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = kmlErrorToDAError(a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)didEnd:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v9 = "[DAKeyManagementSession didEnd:]";
    v10 = 1024;
    v11 = 993;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_DEBUG, "%s : %i : ", buf, 0x12u);
  }

  v7.receiver = self;
  v7.super_class = DAKeyManagementSession;
  [(DASession *)&v7 didEnd:v4];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = DAKeyManagementSession;
  [(DASession *)&v3 encodeWithCoder:a3];
}

- (DAKeyManagementSession)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = DAKeyManagementSession;
  return [(DASession *)&v4 initWithCoder:a3];
}

- (void)listReceivedSharingInvitationsWithCallback:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "[DAKeyManagementSession listReceivedSharingInvitationsWithCallback:]";
    *&buf[12] = 1024;
    *&buf[14] = 191;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_DEBUG, "%s : %i : ", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  OUTLINED_FUNCTION_3_1();
  v20 = v6;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = v7;
  OUTLINED_FUNCTION_2_1();
  v16 = v8;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__DAKeyManagementSession_listReceivedSharingInvitationsWithCallback___block_invoke;
  v12[3] = &unk_278F6FB00;
  v12[4] = buf;
  v9 = [(DAKeyPairingSession *)self getKeyPairingProxy:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__DAKeyManagementSession_listReceivedSharingInvitationsWithCallback___block_invoke_21;
  v11[3] = &unk_278F70308;
  v11[4] = buf;
  v11[5] = &v13;
  [v9 listReceivedSharingInvitationsWithCallback:v11];

  v4[2](v4, v14[5], *(*&buf[8] + 40));
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(buf, 8);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)cancelAllFriendInvitationsWithCompletionHandler:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_4_1();
    *(&v25 + 6) = 231;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_DEBUG, "%s : %i : ", buf, 0x12u);
  }

  *buf = 0;
  *&v25 = buf;
  *(&v25 + 1) = 0x3032000000;
  OUTLINED_FUNCTION_3_1();
  v26 = v6;
  OUTLINED_FUNCTION_0_1();
  v20 = 3221225472;
  v21 = __74__DAKeyManagementSession_cancelAllFriendInvitationsWithCompletionHandler___block_invoke;
  v22 = &unk_278F6FB00;
  v23 = buf;
  v7 = [(DAKeyPairingSession *)self getKeyPairingProxy:v19];
  OUTLINED_FUNCTION_1_1();
  v18[2] = __74__DAKeyManagementSession_cancelAllFriendInvitationsWithCompletionHandler___block_invoke_23;
  v18[3] = &unk_278F6FB00;
  v18[4] = buf;
  [v8 cancelAllFriendInvitationsWithCompletionHandler:v18];

  v9 = v4[2](v4, *(v25 + 40));
  OUTLINED_FUNCTION_5_1(v9, v10, v11, v12, v13, v14, v15, v16, v18[0], v18[1]);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)removeSharingInvitationWithId:(id)a3 completionHandler:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_4_1();
    *(&v28 + 6) = 247;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : ", buf, 0x12u);
  }

  *buf = 0;
  *&v28 = buf;
  *(&v28 + 1) = 0x3032000000;
  OUTLINED_FUNCTION_2_1();
  v29 = v9;
  OUTLINED_FUNCTION_0_1();
  v23 = 3221225472;
  v24 = __74__DAKeyManagementSession_removeSharingInvitationWithId_completionHandler___block_invoke;
  v25 = &unk_278F6FB00;
  v26 = buf;
  v10 = [(DAKeyPairingSession *)self getKeyPairingProxy:v22];
  OUTLINED_FUNCTION_1_1();
  v21[2] = __74__DAKeyManagementSession_removeSharingInvitationWithId_completionHandler___block_invoke_24;
  v21[3] = &unk_278F6FB00;
  v21[4] = buf;
  [v11 removeSharingInvitationWithId:v6 completionHandler:v21];

  v12 = v7[2](v7, *(v28 + 40));
  OUTLINED_FUNCTION_5_1(v12, v13, v14, v15, v16, v17, v18, v19, v21[0], v21[1]);

  v20 = *MEMORY[0x277D85DE8];
}

- (void)sendTrackingReceipt:(void *)a1 otherJSONData:(void *)a2 forKeyWithIdentifier:(uint64_t *)a3 .cold.1(void *a1, void *a2, uint64_t *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = KmlLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315394;
    v12 = "[DAKeyManagementSession sendTrackingReceipt:otherJSONData:forKeyWithIdentifier:]";
    v13 = 1024;
    v14 = 602;
    _os_log_impl(&dword_248BF3000, v6, OS_LOG_TYPE_ERROR, "%s : %i : Null argument provided", &v11, 0x12u);
  }

  v7 = MEMORY[0x277CCA9B8];
  *a1 = *MEMORY[0x277CCA450];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
  *a2 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:a2 forKeys:a1 count:1];
  *a3 = [v7 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v9];

  v10 = *MEMORY[0x277D85DE8];
}

@end