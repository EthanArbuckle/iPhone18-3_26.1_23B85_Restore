@interface NPKIDVRemoteDeviceConnectionCoordinator
- (NPKIDVRemoteDeviceConnectionCoordinator)init;
- (id)_outstandingRequestItemWithCompletion:(id)a3 errorHandler:(id)a4;
- (id)_safeQueue_outstandingRequestItemWithMessageIdentifier:(id)a3 remove:(BOOL)a4;
- (void)_inQueue_teardownCurrentRemoteDeviceConnection;
- (void)_safeQueue_resetCleanupTimerForOutstandingRequestItemWithMessageIdentifier:(id)a3;
- (void)_sendEstablishPrearmTrustRequest:(id)a3 item:(id)a4;
- (void)addNotificationResponse:(id)a3;
- (void)addNotificationWithType:(unint64_t)a3 documentType:(unint64_t)a4 issuerName:(id)a5 completion:(id)a6;
- (void)addObserver:(id)a3;
- (void)createCredentialInPartition:(id)a3 options:(id)a4 completion:(id)a5;
- (void)createCredentialResponse:(id)a3;
- (void)credentialIdentifiersInPartitions:(id)a3 completion:(id)a4;
- (void)deleteCredential:(id)a3 withConfiguredPartitions:(id)a4 completion:(id)a5;
- (void)deleteCredentialResponse:(id)a3;
- (void)deleteGlobalAuthACLResponse:(id)a3;
- (void)deleteGlobalAuthACLWithCompletion:(id)a3;
- (void)deletePIIHashDataForCredentialIdentifier:(id)a3 withConfiguredPartitions:(id)a4 completion:(id)a5;
- (void)deletePIIHashDataResponse:(id)a3;
- (void)establishPrearmTrustResponse:(id)a3;
- (void)establishPrearmTrustV2:(id)a3 completion:(id)a4;
- (void)establishPrearmTrustV2Response:(id)a3;
- (void)fetchPartitionsCredentialIdentifiersResponse:(id)a3;
- (void)fetchPropertiesOfCredentialResponse:(id)a3;
- (void)generateCredentialSigningKeyResponse:(id)a3;
- (void)generateKeyWithType:(unint64_t)a3 credentialIdentifier:(id)a4 withConfiguredPartitions:(id)a5 completion:(id)a6;
- (void)generatePresentmentKeysForCredential:(id)a3 numKeys:(int64_t)a4 withConfiguredPartitions:(id)a5 completion:(id)a6;
- (void)generatePresentmentKeysForCredentialResponse:(id)a3;
- (void)getCASDCertificateResponse:(id)a3;
- (void)getCASDCertificateWithCompletion:(id)a3;
- (void)handleHeartbeats:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)handlePrearmStatusUpdate:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)nonceForAuthorizationTokenResponse:(id)a3;
- (void)nonceForAuthorizationTokenWithCompletion:(id)a3;
- (void)prearmCredentialWithAuthorizationToken:(id)a3 completion:(id)a4;
- (void)prearmCredentialWithAuthorizationTokenResponse:(id)a3;
- (void)propertiesOfCredential:(id)a3 withConfiguredPartitions:(id)a4 completion:(id)a5;
- (void)provisionCredentialResponse:(id)a3;
- (void)provisionCredentialWithType:(unint64_t)a3 metadata:(id)a4 credentialIdentifier:(id)a5 attestations:(id)a6 supplementalData:(id)a7 completion:(id)a8;
- (void)removeObserver:(id)a3;
- (void)retrievePIIHashDataForCredentialIdentifier:(id)a3 withConfiguredPartitions:(id)a4 completion:(id)a5;
- (void)retrievePIIHashDataResponse:(id)a3;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)startCurrentRemoteDeviceConnection;
- (void)storePIIHashDataForCredentialIdentifier:(id)a3 data:(id)a4 withConfiguredPartitions:(id)a5 completion:(id)a6;
- (void)storePIIHashDataResponse:(id)a3;
- (void)teardownCurrentRemoteDeviceConnection;
- (void)updatePrearmStatus;
- (void)updateProofingConfiguration:(id)a3 completion:(id)a4;
- (void)updateProofingConfigurationResponse:(id)a3;
@end

@implementation NPKIDVRemoteDeviceConnectionCoordinator

- (NPKIDVRemoteDeviceConnectionCoordinator)init
{
  v12.receiver = self;
  v12.super_class = NPKIDVRemoteDeviceConnectionCoordinator;
  v2 = [(NPKIDVRemoteDeviceConnectionCoordinator *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.NanoPassKit.remoteDeviceConnection.IDSMessages", 0);
    IDSMessagesQueue = v2->_IDSMessagesQueue;
    v2->_IDSMessagesQueue = v3;

    v5 = dispatch_queue_create("com.apple.NanoPassKit.remoteDeviceConnection.observer", 0);
    observerQueue = v2->_observerQueue;
    v2->_observerQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    outstandingRequestItems = v2->_outstandingRequestItems;
    v2->_outstandingRequestItems = v7;

    v9 = [MEMORY[0x277CCAA50] pk_weakObjectsHashTableUsingPointerPersonality];
    observers = v2->_observers;
    v2->_observers = v9;
  }

  return v2;
}

- (void)startCurrentRemoteDeviceConnection
{
  IDSMessagesQueue = self->_IDSMessagesQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__NPKIDVRemoteDeviceConnectionCoordinator_startCurrentRemoteDeviceConnection__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(IDSMessagesQueue, block);
}

void __77__NPKIDVRemoteDeviceConnectionCoordinator_startCurrentRemoteDeviceConnection__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Will Start new IDV Remote Device IDS service", &v14, 2u);
    }
  }

  if (*(*(a1 + 32) + 8))
  {
    v5 = pk_Payment_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_Payment_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(*(a1 + 32) + 8);
        v14 = 138412290;
        v15 = v8;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Warning: NPKIDVRemoteDeviceService: We currently have an existing IDS service:%@ we will teardown it first", &v14, 0xCu);
      }
    }

    [*(a1 + 32) _inQueue_teardownCurrentRemoteDeviceConnection];
  }

  v9 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.applepay.identitycredential"];
  [v9 setProtobufAction:sel_createCredentialResponse_ forIncomingResponsesOfType:1];
  [v9 setProtobufAction:sel_generateCredentialSigningKeyResponse_ forIncomingResponsesOfType:4];
  [v9 setProtobufAction:sel_generatePresentmentKeysForCredentialResponse_ forIncomingResponsesOfType:14];
  [v9 setProtobufAction:sel_deleteCredentialResponse_ forIncomingResponsesOfType:3];
  [v9 setProtobufAction:sel_fetchPropertiesOfCredentialResponse_ forIncomingResponsesOfType:2];
  [v9 setProtobufAction:sel_fetchPartitionsCredentialIdentifiersResponse_ forIncomingResponsesOfType:5];
  [v9 setProtobufAction:sel_nonceForAuthorizationTokenResponse_ forIncomingResponsesOfType:6];
  [v9 setProtobufAction:sel_prearmCredentialWithAuthorizationTokenResponse_ forIncomingResponsesOfType:7];
  [v9 setProtobufAction:sel_provisionCredentialResponse_ forIncomingResponsesOfType:12];
  [v9 setProtobufAction:sel_handlePrearmStatusUpdate_service_account_fromID_context_ forIncomingRequestsOfType:8];
  [v9 setProtobufAction:sel_establishPrearmTrustResponse_ forIncomingResponsesOfType:9];
  [v9 setProtobufAction:sel_establishPrearmTrustV2Response_ forIncomingResponsesOfType:16];
  [v9 setProtobufAction:sel_deleteGlobalAuthACLResponse_ forIncomingResponsesOfType:11];
  [v9 setProtobufAction:sel_getCASDCertificateResponse_ forIncomingResponsesOfType:15];
  [v9 setProtobufAction:sel_storePIIHashDataResponse_ forIncomingResponsesOfType:19];
  [v9 setProtobufAction:sel_retrievePIIHashDataResponse_ forIncomingResponsesOfType:20];
  [v9 setProtobufAction:sel_deletePIIHashDataResponse_ forIncomingResponsesOfType:21];
  [v9 setProtobufAction:sel_addNotificationResponse_ forIncomingResponsesOfType:13];
  [v9 setProtobufAction:sel_updateProofingConfigurationResponse_ forIncomingResponsesOfType:17];
  [v9 setProtobufAction:sel_handleHeartbeats_service_account_fromID_context_ forIncomingRequestsOfType:0xFFFFLL];
  objc_storeStrong((*(a1 + 32) + 8), v9);
  [v9 addDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 16)];
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Did Start IDV Remote Device IDS service:%@", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)teardownCurrentRemoteDeviceConnection
{
  IDSMessagesQueue = self->_IDSMessagesQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__NPKIDVRemoteDeviceConnectionCoordinator_teardownCurrentRemoteDeviceConnection__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_sync(IDSMessagesQueue, block);
}

- (void)_inQueue_teardownCurrentRemoteDeviceConnection
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_IDSMessagesQueue);
  if ([(NSMutableDictionary *)self->_outstandingRequestItems count])
  {
    v3 = pk_Payment_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = pk_Payment_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        outstandingRequestItems = self->_outstandingRequestItems;
        v16 = 138412290;
        v17 = outstandingRequestItems;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Warning: NPKIDVRemoteDeviceService: outstandingRequestItems is not empty:%@. expected to timeout eventually.", &v16, 0xCu);
      }
    }
  }

  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      remoteDeviceIDSService = self->_remoteDeviceIDSService;
      v16 = 138412290;
      v17 = remoteDeviceIDSService;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Will teardownIDV Remote Device IDS service:%@", &v16, 0xCu);
    }
  }

  [self->_remoteDeviceIDSService removeDelegate:self];
  v11 = self->_remoteDeviceIDSService;
  self->_remoteDeviceIDSService = 0;

  v12 = pk_Payment_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_Payment_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Did teardownIDV Remote Device IDS service", &v16, 2u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)createCredentialResponse:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315394;
      v20 = "[NPKIDVRemoteDeviceConnectionCoordinator createCredentialResponse:]";
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", &v19, 0x16u);
    }
  }

  v8 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:v4];
  v9 = [v8 completion];

  if (v9)
  {
    v10 = [NPKIDVRemoteDeviceProtoCreateCredentialResponse alloc];
    v11 = [v4 data];
    v12 = [(NPKIDVRemoteDeviceProtoCreateCredentialResponse *)v10 initWithData:v11];

    v13 = [(NPKIDVRemoteDeviceProtoCreateCredentialResponse *)v12 errorData];
    v14 = objc_opt_class();
    v15 = NPKSecureUnarchiveObject(v13, v14);

    v16 = [v8 completion];
    v17 = [(NPKIDVRemoteDeviceProtoCreateCredentialResponse *)v12 credentialIdentifier];
    (v16)[2](v16, v17, v15);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)createCredentialInPartition:(id)a3 options:(id)a4 completion:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v30 = "[NPKIDVRemoteDeviceConnectionCoordinator createCredentialInPartition:options:completion:]";
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s", buf, 0xCu);
    }
  }

  v14 = objc_alloc_init(NPKIDVRemoteDeviceProtoCreateCredentialRequest);
  [(NPKIDVRemoteDeviceProtoCreateCredentialRequest *)v14 setPartitionIdentifier:v10];

  v15 = NPKSecureArchiveObject(v9);

  [(NPKIDVRemoteDeviceProtoCreateCredentialRequest *)v14 setCredentialOptionsData:v15];
  v16 = _Block_copy(v8);
  aBlock = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __90__NPKIDVRemoteDeviceConnectionCoordinator_createCredentialInPartition_options_completion___block_invoke;
  v27 = &unk_279945218;
  v28 = v8;
  v17 = v8;
  v18 = _Block_copy(&aBlock);
  v19 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v16 errorHandler:v18];

  v20 = MEMORY[0x277CCACA8];
  v21 = [MEMORY[0x277CCAD78] UUID];
  v22 = [v20 stringWithFormat:@"CreateCredential-%@", v21, aBlock, v25, v26, v27];

  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v14 withType:1 queueIdentifier:v22 requestItem:v19];
  v23 = *MEMORY[0x277D85DE8];
}

void __90__NPKIDVRemoteDeviceConnectionCoordinator_createCredentialInPartition_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while creating credential:%@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

- (void)generateCredentialSigningKeyResponse:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315394;
      v22 = "[NPKIDVRemoteDeviceConnectionCoordinator generateCredentialSigningKeyResponse:]";
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", &v21, 0x16u);
    }
  }

  v8 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:v4];
  v9 = [v8 completion];

  if (v9)
  {
    v10 = [NPKIDVRemoteDeviceProtoGenerateKeyResponse alloc];
    v11 = [v4 data];
    v12 = [(NPKIDVRemoteDeviceProtoGenerateKeyResponse *)v10 initWithData:v11];

    v13 = [(NPKIDVRemoteDeviceProtoGenerateKeyResponse *)v12 signingKeyData];
    getDCCredentialCryptoKeyClass();
    v14 = objc_opt_class();
    v15 = NPKSecureUnarchiveObject(v13, v14);

    v16 = [(NPKIDVRemoteDeviceProtoGenerateKeyResponse *)v12 errorData];
    v17 = objc_opt_class();
    v18 = NPKSecureUnarchiveObject(v16, v17);

    v19 = [v8 completion];
    (v19)[2](v19, v15, v18);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)generateKeyWithType:(unint64_t)a3 credentialIdentifier:(id)a4 withConfiguredPartitions:(id)a5 completion:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = pk_Payment_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v15 = pk_Payment_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v32 = "[NPKIDVRemoteDeviceConnectionCoordinator generateKeyWithType:credentialIdentifier:withConfiguredPartitions:completion:]";
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s", buf, 0xCu);
    }
  }

  v16 = objc_alloc_init(NPKIDVRemoteDeviceProtoGenerateKeyRequest);
  [(NPKIDVRemoteDeviceProtoGenerateKeyRequest *)v16 setCredentialIdentifier:v12];
  v17 = NSStringFromNPKIDVRemoteDeviceCredentialStorageKeyType(a3);
  [(NPKIDVRemoteDeviceProtoGenerateKeyRequest *)v16 setKeyTypeString:v17];

  v18 = [v11 allObjects];

  v19 = [v18 mutableCopy];
  [(NPKIDVRemoteDeviceProtoGenerateKeyRequest *)v16 setConfiguredPartitionsIdentifiers:v19];

  v20 = _Block_copy(v10);
  aBlock = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __120__NPKIDVRemoteDeviceConnectionCoordinator_generateKeyWithType_credentialIdentifier_withConfiguredPartitions_completion___block_invoke;
  v29 = &unk_279945218;
  v30 = v10;
  v21 = v10;
  v22 = _Block_copy(&aBlock);
  v23 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v20 errorHandler:v22];

  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"GenerateCredentialKey-%@", v12, aBlock, v27, v28, v29];

  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v16 withType:4 queueIdentifier:v24 requestItem:v23];
  v25 = *MEMORY[0x277D85DE8];
}

void __120__NPKIDVRemoteDeviceConnectionCoordinator_generateKeyWithType_credentialIdentifier_withConfiguredPartitions_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while Generating signing key:%@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

- (void)generatePresentmentKeysForCredentialResponse:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v35 = "[NPKIDVRemoteDeviceConnectionCoordinator generatePresentmentKeysForCredentialResponse:]";
      v36 = 2112;
      v37 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", buf, 0x16u);
    }
  }

  v8 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:v4];
  v9 = [v8 completion];

  if (v9)
  {
    v10 = [NPKIDVRemoteDeviceProtoGeneratePresentmentKeysResponse alloc];
    v11 = [v4 data];
    v12 = [(NPKIDVRemoteDeviceProtoGeneratePresentmentKeysResponse *)v10 initWithData:v11];

    v13 = objc_alloc(MEMORY[0x277CBEB18]);
    v14 = [(NPKIDVRemoteDeviceProtoGeneratePresentmentKeysResponse *)v12 presentmentKeysDatas];
    v15 = [v13 initWithCapacity:{objc_msgSend(v14, "count")}];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = [(NPKIDVRemoteDeviceProtoGeneratePresentmentKeysResponse *)v12 presentmentKeysDatas];
    v17 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v30;
      do
      {
        v20 = 0;
        do
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v29 + 1) + 8 * v20);
          getDCCredentialCryptoKeyClass();
          v22 = objc_opt_class();
          v23 = NPKSecureUnarchiveObject(v21, v22);
          [v15 safelyAddObject:v23];

          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v18);
    }

    v24 = [(NPKIDVRemoteDeviceProtoGeneratePresentmentKeysResponse *)v12 errorData];
    v25 = objc_opt_class();
    v26 = NPKSecureUnarchiveObject(v24, v25);

    v27 = [v8 completion];
    (v27)[2](v27, v15, v26);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)generatePresentmentKeysForCredential:(id)a3 numKeys:(int64_t)a4 withConfiguredPartitions:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = NPKPairedOrPairingDevice();
  v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"E63BF630-F388-4DCC-B73A-40EFB659A4C2"];
  v15 = [v13 supportsCapability:v14];

  if (a4 == 1 || (v15 & 1) == 0)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __124__NPKIDVRemoteDeviceConnectionCoordinator_generatePresentmentKeysForCredential_numKeys_withConfiguredPartitions_completion___block_invoke;
    aBlock[3] = &unk_279945808;
    v31 = v10;
    v16 = v10;
    v24 = _Block_copy(aBlock);
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self generateKeyWithType:3 credentialIdentifier:v12 withConfiguredPartitions:v11 completion:v24];

    v20 = v31;
  }

  else
  {
    v16 = objc_alloc_init(NPKIDVRemoteDeviceProtoGeneratePresentmentKeysRequest);
    [(NPKIDVRemoteDeviceProtoGeneratePresentmentKeysRequest *)v16 setCredentialIdentifier:v12];

    v17 = [v11 allObjects];

    v18 = [v17 mutableCopy];
    [(NPKIDVRemoteDeviceProtoGeneratePresentmentKeysRequest *)v16 setConfiguredPartitionsIdentifiers:v18];

    [(NPKIDVRemoteDeviceProtoGeneratePresentmentKeysRequest *)v16 setNumKeys:a4];
    v19 = _Block_copy(v10);
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __124__NPKIDVRemoteDeviceConnectionCoordinator_generatePresentmentKeysForCredential_numKeys_withConfiguredPartitions_completion___block_invoke_2;
    v28 = &unk_279945218;
    v29 = v10;
    v20 = v10;
    v21 = _Block_copy(&v25);
    v22 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v19 errorHandler:v21, v25, v26, v27, v28];

    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"GenerateCredentialKey-PresentmentKeys"];
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v16 withType:14 queueIdentifier:v23 requestItem:v22];
  }
}

void __124__NPKIDVRemoteDeviceConnectionCoordinator_generatePresentmentKeysForCredential_numKeys_withConfiguredPartitions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v10[0] = a2;
  v5 = MEMORY[0x277CBEA60];
  v6 = a3;
  v7 = a2;
  v8 = [v5 arrayWithObjects:v10 count:1];
  (*(v4 + 16))(v4, v8, v6);

  v9 = *MEMORY[0x277D85DE8];
}

void __124__NPKIDVRemoteDeviceConnectionCoordinator_generatePresentmentKeysForCredential_numKeys_withConfiguredPartitions_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while generating presentment keys:%@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

- (void)deleteCredentialResponse:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = "[NPKIDVRemoteDeviceConnectionCoordinator deleteCredentialResponse:]";
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", &v18, 0x16u);
    }
  }

  v8 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:v4];
  v9 = [v8 completion];

  if (v9)
  {
    v10 = [NPKIDVRemoteDeviceProtoDeleteCredentialResponse alloc];
    v11 = [v4 data];
    v12 = [(NPKIDVRemoteDeviceProtoDeleteCredentialResponse *)v10 initWithData:v11];

    v13 = [(NPKIDVRemoteDeviceProtoDeleteCredentialResponse *)v12 errorData];
    v14 = objc_opt_class();
    v15 = NPKSecureUnarchiveObject(v13, v14);

    v16 = [v8 completion];
    (v16)[2](v16, v15);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)deleteCredential:(id)a3 withConfiguredPartitions:(id)a4 completion:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v29 = "[NPKIDVRemoteDeviceConnectionCoordinator deleteCredential:withConfiguredPartitions:completion:]";
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s", buf, 0xCu);
    }
  }

  v14 = objc_alloc_init(NPKIDVRemoteDeviceProtoDeleteCredentialRequest);
  [(NPKIDVRemoteDeviceProtoDeleteCredentialRequest *)v14 setCredentialIdentifier:v10];
  v15 = [v9 allObjects];

  v16 = [v15 mutableCopy];
  [(NPKIDVRemoteDeviceProtoDeleteCredentialRequest *)v14 setConfiguredPartitionsIdentifiers:v16];

  v17 = _Block_copy(v8);
  aBlock = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __96__NPKIDVRemoteDeviceConnectionCoordinator_deleteCredential_withConfiguredPartitions_completion___block_invoke;
  v26 = &unk_279945218;
  v27 = v8;
  v18 = v8;
  v19 = _Block_copy(&aBlock);
  v20 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v17 errorHandler:v19];

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"DeleteCredential-%@", v10, aBlock, v24, v25, v26];

  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v14 withType:3 queueIdentifier:v21 requestItem:v20];
  v22 = *MEMORY[0x277D85DE8];
}

void __96__NPKIDVRemoteDeviceConnectionCoordinator_deleteCredential_withConfiguredPartitions_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while deleting credential:%@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

- (void)fetchPropertiesOfCredentialResponse:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[NPKIDVRemoteDeviceConnectionCoordinator fetchPropertiesOfCredentialResponse:]";
      *&buf[12] = 2112;
      *&buf[14] = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", buf, 0x16u);
    }
  }

  v8 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:v4];
  v9 = [v8 completion];
  v10 = v9 == 0;

  if (!v10)
  {
    v11 = [NPKIDVRemoteDeviceProtoCredentialPropertiesResponse alloc];
    v12 = [v4 data];
    v13 = [(NPKIDVRemoteDeviceProtoCredentialPropertiesResponse *)v11 initWithData:v12];

    v14 = [(NPKIDVRemoteDeviceProtoCredentialPropertiesResponse *)v13 credentialPropertiesData];
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v15 = getDCCredentialPropertiesClass_softClass;
    v27 = getDCCredentialPropertiesClass_softClass;
    if (!getDCCredentialPropertiesClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getDCCredentialPropertiesClass_block_invoke;
      v29 = &unk_2799457C8;
      v30 = &v24;
      __getDCCredentialPropertiesClass_block_invoke(buf);
      v15 = v25[3];
    }

    v16 = v15;
    _Block_object_dispose(&v24, 8);
    v17 = objc_opt_class();
    v18 = NPKSecureUnarchiveObject(v14, v17);

    v19 = [(NPKIDVRemoteDeviceProtoCredentialPropertiesResponse *)v13 errorData];
    v20 = objc_opt_class();
    v21 = NPKSecureUnarchiveObject(v19, v20);

    v22 = [v8 completion];
    (v22)[2](v22, v18, v21);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)propertiesOfCredential:(id)a3 withConfiguredPartitions:(id)a4 completion:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v31 = "[NPKIDVRemoteDeviceConnectionCoordinator propertiesOfCredential:withConfiguredPartitions:completion:]";
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s", buf, 0xCu);
    }
  }

  v14 = objc_alloc_init(NPKIDVRemoteDeviceProtoCredentialPropertiesRequest);
  [(NPKIDVRemoteDeviceProtoCredentialPropertiesRequest *)v14 setCredentialIdentifier:v10];

  v15 = [v9 allObjects];

  v16 = [v15 mutableCopy];
  [(NPKIDVRemoteDeviceProtoCredentialPropertiesRequest *)v14 setConfiguredPartitionsIdentifiers:v16];

  v17 = _Block_copy(v8);
  aBlock = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __102__NPKIDVRemoteDeviceConnectionCoordinator_propertiesOfCredential_withConfiguredPartitions_completion___block_invoke;
  v28 = &unk_279945218;
  v29 = v8;
  v18 = v8;
  v19 = _Block_copy(&aBlock);
  v20 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v17 errorHandler:v19];

  v21 = MEMORY[0x277CCACA8];
  v22 = [MEMORY[0x277CCAD78] UUID];
  v23 = [v21 stringWithFormat:@"CredentialProperties-%@", v22, aBlock, v26, v27, v28];

  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v14 withType:2 queueIdentifier:v23 requestItem:v20];
  v24 = *MEMORY[0x277D85DE8];
}

void __102__NPKIDVRemoteDeviceConnectionCoordinator_propertiesOfCredential_withConfiguredPartitions_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while fetching credential properties:%@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

- (void)fetchPartitionsCredentialIdentifiersResponse:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315394;
      v22 = "[NPKIDVRemoteDeviceConnectionCoordinator fetchPartitionsCredentialIdentifiersResponse:]";
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", &v21, 0x16u);
    }
  }

  v8 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:v4];
  v9 = [v8 completion];

  if (v9)
  {
    v10 = [NPKIDVRemoteDeviceProtoPartitionsCredentialIdentifiersResponse alloc];
    v11 = [v4 data];
    v12 = [(NPKIDVRemoteDeviceProtoPartitionsCredentialIdentifiersResponse *)v10 initWithData:v11];

    v13 = [(NPKIDVRemoteDeviceProtoPartitionsCredentialIdentifiersResponse *)v12 partitionsCredentialIdentifiersData];
    v14 = objc_opt_class();
    v15 = NPKSecureUnarchiveObject(v13, v14);

    v16 = [(NPKIDVRemoteDeviceProtoPartitionsCredentialIdentifiersResponse *)v12 errorData];
    v17 = objc_opt_class();
    v18 = NPKSecureUnarchiveObject(v16, v17);

    v19 = [v8 completion];
    (v19)[2](v19, v15, v18);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)credentialIdentifiersInPartitions:(id)a3 completion:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v27 = "[NPKIDVRemoteDeviceConnectionCoordinator credentialIdentifiersInPartitions:completion:]";
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s", buf, 0xCu);
    }
  }

  v11 = objc_alloc_init(NPKIDVRemoteDeviceProtoPartitionsCredentialIdentifiersRequest);
  v12 = [v7 mutableCopy];

  [(NPKIDVRemoteDeviceProtoPartitionsCredentialIdentifiersRequest *)v11 setPartitionsIdentifiers:v12];
  v13 = _Block_copy(v6);
  aBlock = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __88__NPKIDVRemoteDeviceConnectionCoordinator_credentialIdentifiersInPartitions_completion___block_invoke;
  v24 = &unk_279945218;
  v25 = v6;
  v14 = v6;
  v15 = _Block_copy(&aBlock);
  v16 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v13 errorHandler:v15];

  v17 = MEMORY[0x277CCACA8];
  v18 = [MEMORY[0x277CCAD78] UUID];
  v19 = [v17 stringWithFormat:@"partitionsCredentialsIdentifiers-%@", v18, aBlock, v22, v23, v24];

  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v11 withType:5 queueIdentifier:v19 requestItem:v16];
  v20 = *MEMORY[0x277D85DE8];
}

void __88__NPKIDVRemoteDeviceConnectionCoordinator_credentialIdentifiersInPartitions_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while fetching partition's credential identifiers:%@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

- (void)provisionCredentialResponse:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315394;
      v22 = "[NPKIDVRemoteDeviceConnectionCoordinator provisionCredentialResponse:]";
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", &v21, 0x16u);
    }
  }

  v8 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:v4];
  v9 = [v8 completion];

  if (v9)
  {
    v10 = [NPKIDVRemoteDeviceProtoProvisionCredentialResponse alloc];
    v11 = [v4 data];
    v12 = [(NPKIDVRemoteDeviceProtoProvisionCredentialResponse *)v10 initWithData:v11];

    if ([(NPKIDVRemoteDeviceProtoProvisionCredentialResponse *)v12 hasSecureElementPassData])
    {
      v13 = [(NPKIDVRemoteDeviceProtoProvisionCredentialResponse *)v12 secureElementPassData];
      v14 = objc_opt_class();
      v15 = NPKSecureUnarchiveObject(v13, v14);
    }

    else
    {
      v15 = 0;
    }

    if ([(NPKIDVRemoteDeviceProtoProvisionCredentialResponse *)v12 hasErrorData])
    {
      v16 = [(NPKIDVRemoteDeviceProtoProvisionCredentialResponse *)v12 errorData];
      v17 = objc_opt_class();
      v18 = NPKSecureUnarchiveObject(v16, v17);
    }

    else
    {
      v18 = 0;
    }

    v19 = [v8 completion];
    (v19)[2](v19, v15, v18);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)provisionCredentialWithType:(unint64_t)a3 metadata:(id)a4 credentialIdentifier:(id)a5 attestations:(id)a6 supplementalData:(id)a7 completion:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = objc_alloc_init(NPKIDVRemoteDeviceProtoProvisionCredentialRequest);
  v20 = v19;
  if (!a3)
  {
    v21 = 0;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v21 = 1;
LABEL_5:
    [(NPKIDVRemoteDeviceProtoProvisionCredentialRequest *)v19 setCredentialType:v21];
  }

  v22 = NPKSecureArchiveObject(v14);
  [(NPKIDVRemoteDeviceProtoProvisionCredentialRequest *)v20 setMetadataData:v22];

  [(NPKIDVRemoteDeviceProtoProvisionCredentialRequest *)v20 setCredentialIdentifier:v15];
  v23 = NPKSecureArchiveObject(v18);

  [(NPKIDVRemoteDeviceProtoProvisionCredentialRequest *)v20 setAttestationsData:v23];
  [(NPKIDVRemoteDeviceProtoProvisionCredentialRequest *)v20 setSupplementalData:v17];

  v24 = _Block_copy(v16);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __142__NPKIDVRemoteDeviceConnectionCoordinator_provisionCredentialWithType_metadata_credentialIdentifier_attestations_supplementalData_completion___block_invoke;
  aBlock[3] = &unk_279945150;
  v33 = v15;
  v34 = v16;
  v25 = v16;
  v26 = v15;
  v27 = _Block_copy(aBlock);
  v28 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v24 errorHandler:v27];

  v29 = MEMORY[0x277CCACA8];
  v30 = [MEMORY[0x277CCAD78] UUID];
  v31 = [v29 stringWithFormat:@"credentialProvisioning-%@", v30];

  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v20 withType:12 queueIdentifier:v31 requestItem:v28];
}

void __142__NPKIDVRemoteDeviceConnectionCoordinator_provisionCredentialWithType_metadata_credentialIdentifier_attestations_supplementalData_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while provisioning credential with identifier:%@ error:%@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)nonceForAuthorizationTokenResponse:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[NPKIDVRemoteDeviceConnectionCoordinator nonceForAuthorizationTokenResponse:]";
      *&buf[12] = 2112;
      *&buf[14] = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", buf, 0x16u);
    }
  }

  v8 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:v4];
  v9 = [v8 completion];
  v10 = v9 == 0;

  if (!v10)
  {
    v11 = [NPKIDVRemoteDeviceProtoNonceForAuthorizationTokenResponse alloc];
    v12 = [v4 data];
    v13 = [(NPKIDVRemoteDeviceProtoNonceForAuthorizationTokenResponse *)v11 initWithData:v12];

    v14 = [(NPKIDVRemoteDeviceProtoNonceForAuthorizationTokenResponse *)v13 nonceData];
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v15 = getDCCredentialNonceClass_softClass;
    v27 = getDCCredentialNonceClass_softClass;
    if (!getDCCredentialNonceClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getDCCredentialNonceClass_block_invoke;
      v29 = &unk_2799457C8;
      v30 = &v24;
      __getDCCredentialNonceClass_block_invoke(buf);
      v15 = v25[3];
    }

    v16 = v15;
    _Block_object_dispose(&v24, 8);
    v17 = objc_opt_class();
    v18 = NPKSecureUnarchiveObject(v14, v17);

    v19 = [(NPKIDVRemoteDeviceProtoNonceForAuthorizationTokenResponse *)v13 errorData];
    v20 = objc_opt_class();
    v21 = NPKSecureUnarchiveObject(v19, v20);

    v22 = [v8 completion];
    (v22)[2](v22, v18, v21);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)nonceForAuthorizationTokenWithCompletion:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[NPKIDVRemoteDeviceConnectionCoordinator nonceForAuthorizationTokenWithCompletion:]";
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s", buf, 0xCu);
    }
  }

  v8 = objc_alloc_init(NPKIDVRemoteDeviceProtoNonceForAuthorizationTokenRequest);
  v9 = _Block_copy(v4);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__NPKIDVRemoteDeviceConnectionCoordinator_nonceForAuthorizationTokenWithCompletion___block_invoke;
  aBlock[3] = &unk_279945218;
  v15 = v4;
  v10 = v4;
  v11 = _Block_copy(aBlock);
  v12 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v9 errorHandler:v11];

  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v8 withType:6 priority:300 queueIdentifier:@"nonceForAuthorizationToken" requestItem:v12];
  v13 = *MEMORY[0x277D85DE8];
}

void __84__NPKIDVRemoteDeviceConnectionCoordinator_nonceForAuthorizationTokenWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while fetching nonce for authentication token error:%@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

- (void)prearmCredentialWithAuthorizationTokenResponse:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = "[NPKIDVRemoteDeviceConnectionCoordinator prearmCredentialWithAuthorizationTokenResponse:]";
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", &v18, 0x16u);
    }
  }

  v8 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:v4];
  v9 = [v8 completion];

  if (v9)
  {
    v10 = [NPKIDVRemoteDeviceProtoPrearmCredentialResponse alloc];
    v11 = [v4 data];
    v12 = [(NPKIDVRemoteDeviceProtoPrearmCredentialResponse *)v10 initWithData:v11];

    v13 = [(NPKIDVRemoteDeviceProtoPrearmCredentialResponse *)v12 errorData];
    v14 = objc_opt_class();
    v15 = NPKSecureUnarchiveObject(v13, v14);

    v16 = [v8 completion];
    (v16)[2](v16, v15);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)prearmCredentialWithAuthorizationToken:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(NPKIDVRemoteDeviceProtoPrearmCredentialRequest);
  v9 = NPKSecureArchiveObject(v7);

  [(NPKIDVRemoteDeviceProtoPrearmCredentialRequest *)v8 setAuthorizationTokenData:v9];
  v10 = _Block_copy(v6);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__NPKIDVRemoteDeviceConnectionCoordinator_prearmCredentialWithAuthorizationToken_completion___block_invoke;
  aBlock[3] = &unk_279945218;
  v15 = v6;
  v11 = v6;
  v12 = _Block_copy(aBlock);
  v13 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v10 errorHandler:v12];

  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v8 withType:7 priority:300 queueIdentifier:@"prearmCredentialWithAuthorizationToken" requestItem:v13];
}

void __93__NPKIDVRemoteDeviceConnectionCoordinator_prearmCredentialWithAuthorizationToken_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while pre-arming credential with authentication token error:%@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

- (void)establishPrearmTrustResponse:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = "[NPKIDVRemoteDeviceConnectionCoordinator establishPrearmTrustResponse:]";
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", &v18, 0x16u);
    }
  }

  v8 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:v4];
  v9 = [v8 completion];

  if (v9)
  {
    v10 = [NPKIDVRemoteDeviceProtoEstablishPrearmTrustResponse alloc];
    v11 = [v4 data];
    v12 = [(NPKIDVRemoteDeviceProtoEstablishPrearmTrustResponse *)v10 initWithData:v11];

    if ([(NPKIDVRemoteDeviceProtoEstablishPrearmTrustResponse *)v12 hasErrorData])
    {
      v13 = [(NPKIDVRemoteDeviceProtoEstablishPrearmTrustResponse *)v12 errorData];
      v14 = objc_opt_class();
      v15 = NPKSecureUnarchiveObject(v13, v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = [v8 completion];
    (v16)[2](v16, v15);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)establishPrearmTrustV2Response:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[NPKIDVRemoteDeviceConnectionCoordinator establishPrearmTrustV2Response:]";
      *&buf[12] = 2112;
      *&buf[14] = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", buf, 0x16u);
    }
  }

  v8 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:v4];
  v9 = [v8 completion];
  v10 = v9 == 0;

  if (!v10)
  {
    v11 = [NPKIDVRemoteDeviceProtoEstablishPrearmTrustV2Response alloc];
    v12 = [v4 data];
    v13 = [(NPKIDVRemoteDeviceProtoEstablishPrearmTrustV2Response *)v11 initWithData:v12];

    if ([(NPKIDVRemoteDeviceProtoEstablishPrearmTrustV2Response *)v13 hasErrorData])
    {
      v14 = [(NPKIDVRemoteDeviceProtoEstablishPrearmTrustV2Response *)v13 errorData];
      v15 = objc_opt_class();
      v16 = NPKSecureUnarchiveObject(v14, v15);
    }

    else
    {
      v16 = 0;
    }

    v17 = [(NPKIDVRemoteDeviceProtoEstablishPrearmTrustV2Response *)v13 attestationData];
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v18 = getDCCredentialAttestationClass_softClass;
    v27 = getDCCredentialAttestationClass_softClass;
    if (!getDCCredentialAttestationClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getDCCredentialAttestationClass_block_invoke;
      v29 = &unk_2799457C8;
      v30 = &v24;
      __getDCCredentialAttestationClass_block_invoke(buf);
      v18 = v25[3];
    }

    v19 = v18;
    _Block_object_dispose(&v24, 8);
    v20 = objc_opt_class();
    v21 = NPKSecureUnarchiveObject(v17, v20);

    v22 = [v8 completion];
    (v22)[2](v22, v21, v16);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)establishPrearmTrustV2:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = NPKPairedOrPairingDevice();
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"E63BF630-F388-4DCC-B73A-40EFB659A4C2"];
  v10 = [v8 supportsCapability:v9];

  if (v10)
  {
    v11 = _Block_copy(v6);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__NPKIDVRemoteDeviceConnectionCoordinator_establishPrearmTrustV2_completion___block_invoke;
    aBlock[3] = &unk_279945218;
    v12 = &v27;
    v27 = v6;
    v13 = v6;
    v14 = _Block_copy(aBlock);
    v15 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v11 errorHandler:v14];

    v16 = objc_alloc_init(NPKIDVRemoteDeviceProtoEstablishPrearmTrustV2Request);
    v17 = NPKSecureArchiveObject(v7);

    [(NPKIDVRemoteDeviceProtoEstablishPrearmTrustV2Request *)v16 setTrustData:v17];
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v16 withType:16 queueIdentifier:@"establishPrearmTrustV2" requestItem:v15];
  }

  else
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __77__NPKIDVRemoteDeviceConnectionCoordinator_establishPrearmTrustV2_completion___block_invoke_163;
    v24[3] = &unk_279945218;
    v12 = &v25;
    v25 = v6;
    v18 = v6;
    v19 = _Block_copy(v24);
    v20 = _Block_copy(v19);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __77__NPKIDVRemoteDeviceConnectionCoordinator_establishPrearmTrustV2_completion___block_invoke_2;
    v22[3] = &unk_279945218;
    v23 = v19;
    v16 = v19;
    v21 = _Block_copy(v22);
    v15 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v20 errorHandler:v21];

    [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendEstablishPrearmTrustRequest:v7 item:v15];
  }
}

void __77__NPKIDVRemoteDeviceConnectionCoordinator_establishPrearmTrustV2_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while establishing prearm trust, error:%@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

void __77__NPKIDVRemoteDeviceConnectionCoordinator_establishPrearmTrustV2_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while establishing prearm trust, error:%@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_sendEstablishPrearmTrustRequest:(id)a3 item:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = objc_alloc_init(NPKIDVRemoteDeviceProtoEstablishPrearmTrustRequest);
  v8 = NPKSecureArchiveObject(v7);

  [(NPKIDVRemoteDeviceProtoEstablishPrearmTrustRequest *)v9 setTrustData:v8];
  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v9 withType:9 queueIdentifier:@"establishPrearmTrust" requestItem:v6];
}

- (void)handlePrearmStatusUpdate:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [NPKIDVRemoteDeviceProtoPrearmStatusUpdate alloc];
  v10 = [v8 data];

  v11 = [(NPKIDVRemoteDeviceProtoPrearmStatusUpdate *)v9 initWithData:v10];
  v12 = [(NPKIDVRemoteDeviceProtoPrearmStatusUpdate *)v11 prearmStatus]+ 1;
  if (v12 >= 4)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12 - 1;
  }

  v14 = pk_Payment_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = pk_Payment_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromNPKIDVDeviceCredentialPrearmStatus(v13);
      *buf = 138412290;
      v22 = v17;
      _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Received credential prearm status update:%@", buf, 0xCu);
    }
  }

  observerQueue = self->_observerQueue;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __99__NPKIDVRemoteDeviceConnectionCoordinator_handlePrearmStatusUpdate_service_account_fromID_context___block_invoke;
  v20[3] = &unk_279945830;
  v20[4] = self;
  v20[5] = v13;
  dispatch_async(observerQueue, v20);

  v19 = *MEMORY[0x277D85DE8];
}

void __99__NPKIDVRemoteDeviceConnectionCoordinator_handlePrearmStatusUpdate_service_account_fromID_context___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 40);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) remoteDeviceConnectionCoordinator:*(a1 + 32) didReceivePrearmStatusUpdate:{*(a1 + 40), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updatePrearmStatus
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[NPKIDVRemoteDeviceConnectionCoordinator updatePrearmStatus]";
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s", &v8, 0xCu);
    }
  }

  v6 = objc_alloc_init(NPKIDVRemoteDeviceProtoUpdatePrearmStatusRequest);
  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v6 withType:18 queueIdentifier:@"updatePrearmStatus" requestItem:0];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)deleteGlobalAuthACLResponse:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = "[NPKIDVRemoteDeviceConnectionCoordinator deleteGlobalAuthACLResponse:]";
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", &v18, 0x16u);
    }
  }

  v8 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:v4];
  v9 = [v8 completion];

  if (v9)
  {
    v10 = [NPKIDVRemoteDeviceProtoDeleteGlobalAuthACLResponse alloc];
    v11 = [v4 data];
    v12 = [(NPKIDVRemoteDeviceProtoDeleteGlobalAuthACLResponse *)v10 initWithData:v11];

    v13 = [(NPKIDVRemoteDeviceProtoDeleteGlobalAuthACLResponse *)v12 errorData];
    v14 = objc_opt_class();
    v15 = NPKSecureUnarchiveObject(v13, v14);

    v16 = [v8 completion];
    (v16)[2](v16, v15);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)deleteGlobalAuthACLWithCompletion:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[NPKIDVRemoteDeviceConnectionCoordinator deleteGlobalAuthACLWithCompletion:]";
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s", buf, 0xCu);
    }
  }

  v8 = objc_alloc_init(NPKIDVRemoteDeviceProtoDeleteGlobalAuthACLRequest);
  v9 = _Block_copy(v4);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__NPKIDVRemoteDeviceConnectionCoordinator_deleteGlobalAuthACLWithCompletion___block_invoke;
  aBlock[3] = &unk_279945218;
  v15 = v4;
  v10 = v4;
  v11 = _Block_copy(aBlock);
  v12 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v9 errorHandler:v11];

  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v8 withType:11 queueIdentifier:@"deleteGlobalAuthACL" requestItem:v12];
  v13 = *MEMORY[0x277D85DE8];
}

void __77__NPKIDVRemoteDeviceConnectionCoordinator_deleteGlobalAuthACLWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while deleting global auth ACL error:%@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)getCASDCertificateResponse:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315394;
      v21 = "[NPKIDVRemoteDeviceConnectionCoordinator getCASDCertificateResponse:]";
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", &v20, 0x16u);
    }
  }

  v8 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:v4];
  v9 = [v8 completion];

  if (v9)
  {
    v10 = [NPKIDVRemoteDeviceProtoCasdCertificateResponse alloc];
    v11 = [v4 data];
    v12 = [(NPKIDVRemoteDeviceProtoCasdCertificateResponse *)v10 initWithData:v11];

    v13 = [(NPKIDVRemoteDeviceProtoCasdCertificateResponse *)v12 errorData];
    if (v13)
    {
      v14 = [(NPKIDVRemoteDeviceProtoCasdCertificateResponse *)v12 errorData];
      v15 = objc_opt_class();
      v16 = NPKSecureUnarchiveObject(v14, v15);
    }

    else
    {
      v16 = 0;
    }

    v17 = [v8 completion];
    v18 = [(NPKIDVRemoteDeviceProtoCasdCertificateResponse *)v12 casdCertificate];
    (v17)[2](v17, v18, v16);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)getCASDCertificateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NPKIDVRemoteDeviceProtoCasdCertificateRequest);
  v6 = _Block_copy(v4);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__NPKIDVRemoteDeviceConnectionCoordinator_getCASDCertificateWithCompletion___block_invoke;
  aBlock[3] = &unk_279945218;
  v11 = v4;
  v7 = v4;
  v8 = _Block_copy(aBlock);
  v9 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v6 errorHandler:v8];

  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v5 withType:15 queueIdentifier:@"getCASDCertificate" requestItem:v9];
}

void __76__NPKIDVRemoteDeviceConnectionCoordinator_getCASDCertificateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while retrieving CASD certificate. Error: %@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

- (void)storePIIHashDataResponse:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = "[NPKIDVRemoteDeviceConnectionCoordinator storePIIHashDataResponse:]";
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", &v18, 0x16u);
    }
  }

  v8 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:v4];
  v9 = [v8 completion];

  if (v9)
  {
    v10 = [NPKIDVRemoteDeviceProtoStorePIIHashDataResponse alloc];
    v11 = [v4 data];
    v12 = [(NPKIDVRemoteDeviceProtoStorePIIHashDataResponse *)v10 initWithData:v11];

    v13 = [(NPKIDVRemoteDeviceProtoStorePIIHashDataResponse *)v12 errorData];
    v14 = objc_opt_class();
    v15 = NPKSecureUnarchiveObject(v13, v14);

    v16 = [v8 completion];
    (v16)[2](v16, v15);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)storePIIHashDataForCredentialIdentifier:(id)a3 data:(id)a4 withConfiguredPartitions:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(NPKIDVRemoteDeviceProtoStorePIIHashDataRequest);
  v15 = _Block_copy(v10);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __124__NPKIDVRemoteDeviceConnectionCoordinator_storePIIHashDataForCredentialIdentifier_data_withConfiguredPartitions_completion___block_invoke;
  aBlock[3] = &unk_279945218;
  v22 = v10;
  v16 = v10;
  v17 = _Block_copy(aBlock);
  v18 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v15 errorHandler:v17];

  [(NPKIDVRemoteDeviceProtoStorePIIHashDataRequest *)v14 setCredentialIdentifier:v13];
  v19 = [v11 allObjects];

  v20 = [v19 mutableCopy];
  [(NPKIDVRemoteDeviceProtoStorePIIHashDataRequest *)v14 setConfiguredPartitionsIdentifiers:v20];

  [(NPKIDVRemoteDeviceProtoStorePIIHashDataRequest *)v14 setPiiHashData:v12];
  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v14 withType:19 queueIdentifier:@"storePIIHashDataForCredentialIdentifier" requestItem:v18];
}

void __124__NPKIDVRemoteDeviceConnectionCoordinator_storePIIHashDataForCredentialIdentifier_data_withConfiguredPartitions_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while storing PII Hash with error:%@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)retrievePIIHashDataResponse:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315394;
      v20 = "[NPKIDVRemoteDeviceConnectionCoordinator retrievePIIHashDataResponse:]";
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", &v19, 0x16u);
    }
  }

  v8 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:v4];
  v9 = [v8 completion];

  if (v9)
  {
    v10 = [NPKIDVRemoteDeviceProtoRetrievePIIHashDataResponse alloc];
    v11 = [v4 data];
    v12 = [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataResponse *)v10 initWithData:v11];

    v13 = [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataResponse *)v12 errorData];
    v14 = objc_opt_class();
    v15 = NPKSecureUnarchiveObject(v13, v14);

    v16 = [v8 completion];
    v17 = [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataResponse *)v12 piiHashData];
    (v16)[2](v16, v17, v15);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)retrievePIIHashDataForCredentialIdentifier:(id)a3 withConfiguredPartitions:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(NPKIDVRemoteDeviceProtoRetrievePIIHashDataRequest);
  v12 = _Block_copy(v8);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __122__NPKIDVRemoteDeviceConnectionCoordinator_retrievePIIHashDataForCredentialIdentifier_withConfiguredPartitions_completion___block_invoke;
  aBlock[3] = &unk_279945218;
  v19 = v8;
  v13 = v8;
  v14 = _Block_copy(aBlock);
  v15 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v12 errorHandler:v14];

  [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataRequest *)v11 setCredentialIdentifier:v10];
  v16 = [v9 allObjects];

  v17 = [v16 mutableCopy];
  [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataRequest *)v11 setConfiguredPartitionsIdentifiers:v17];

  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v11 withType:20 queueIdentifier:@"retrievePIIHashDataForCredentialIdentifier" requestItem:v15];
}

void __122__NPKIDVRemoteDeviceConnectionCoordinator_retrievePIIHashDataForCredentialIdentifier_withConfiguredPartitions_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while retrieving PII Hash with error:%@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)deletePIIHashDataResponse:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = "[NPKIDVRemoteDeviceConnectionCoordinator deletePIIHashDataResponse:]";
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", &v18, 0x16u);
    }
  }

  v8 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:v4];
  v9 = [v8 completion];

  if (v9)
  {
    v10 = [NPKIDVRemoteDeviceProtoDeletePIIHashDataResponse alloc];
    v11 = [v4 data];
    v12 = [(NPKIDVRemoteDeviceProtoDeletePIIHashDataResponse *)v10 initWithData:v11];

    v13 = [(NPKIDVRemoteDeviceProtoDeletePIIHashDataResponse *)v12 errorData];
    v14 = objc_opt_class();
    v15 = NPKSecureUnarchiveObject(v13, v14);

    v16 = [v8 completion];
    (v16)[2](v16, v15);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)deletePIIHashDataForCredentialIdentifier:(id)a3 withConfiguredPartitions:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(NPKIDVRemoteDeviceProtoDeletePIIHashDataRequest);
  v12 = _Block_copy(v8);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __120__NPKIDVRemoteDeviceConnectionCoordinator_deletePIIHashDataForCredentialIdentifier_withConfiguredPartitions_completion___block_invoke;
  aBlock[3] = &unk_279945218;
  v19 = v8;
  v13 = v8;
  v14 = _Block_copy(aBlock);
  v15 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v12 errorHandler:v14];

  [(NPKIDVRemoteDeviceProtoDeletePIIHashDataRequest *)v11 setCredentialIdentifier:v10];
  v16 = [v9 allObjects];

  v17 = [v16 mutableCopy];
  [(NPKIDVRemoteDeviceProtoDeletePIIHashDataRequest *)v11 setConfiguredPartitionsIdentifiers:v17];

  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v11 withType:21 queueIdentifier:@"deletePIIHashDataForCredentialIdentifier" requestItem:v15];
}

void __120__NPKIDVRemoteDeviceConnectionCoordinator_deletePIIHashDataForCredentialIdentifier_withConfiguredPartitions_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while retrieving PII Hash with error:%@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addNotificationWithType:(unint64_t)a3 documentType:(unint64_t)a4 issuerName:(id)a5 completion:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = a5;
  v12 = pk_Payment_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_Payment_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v28 = "[NPKIDVRemoteDeviceConnectionCoordinator addNotificationWithType:documentType:issuerName:completion:]";
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s", buf, 0xCu);
    }
  }

  v15 = objc_alloc_init(NPKIDVRemoteDeviceProtoNotificationRequest);
  [(NPKIDVRemoteDeviceProtoNotificationRequest *)v15 setIssuerName:v11];

  if (a3 <= 8)
  {
    [(NPKIDVRemoteDeviceProtoNotificationRequest *)v15 setNotificationType:a3];
  }

  if (a4 <= 3)
  {
    [(NPKIDVRemoteDeviceProtoNotificationRequest *)v15 setDocumentType:(a4 - 1)];
  }

  v16 = _Block_copy(v10);
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __102__NPKIDVRemoteDeviceConnectionCoordinator_addNotificationWithType_documentType_issuerName_completion___block_invoke;
  v24 = &unk_279945128;
  v25 = v10;
  v26 = a3;
  v17 = v10;
  v18 = _Block_copy(&v21);
  v19 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v16 errorHandler:v18, v21, v22, v23, v24];

  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v15 withType:13 queueIdentifier:@"addExtendedNotification" requestItem:v19];
  v20 = *MEMORY[0x277D85DE8];
}

void __102__NPKIDVRemoteDeviceConnectionCoordinator_addNotificationWithType_documentType_issuerName_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromNPKIDVRemoteDeviceNotificationType(*(a1 + 40));
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while adding notification type:%@ error:%@", &v10, 0x16u);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addNotificationResponse:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315394;
      v20 = "[NPKIDVRemoteDeviceConnectionCoordinator addNotificationResponse:]";
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", &v19, 0x16u);
    }
  }

  v8 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:v4];
  v9 = [v8 completion];

  if (v9)
  {
    v10 = [NPKIDVRemoteDeviceProtoNotificationResponse alloc];
    v11 = [v4 data];
    v12 = [(NPKIDVRemoteDeviceProtoNotificationResponse *)v10 initWithData:v11];

    v13 = [(NPKIDVRemoteDeviceProtoNotificationResponse *)v12 errorData];
    if (v13)
    {
      v14 = [(NPKIDVRemoteDeviceProtoNotificationResponse *)v12 errorData];
      v15 = objc_opt_class();
      v16 = NPKSecureUnarchiveObject(v14, v15);
    }

    else
    {
      v16 = 0;
    }

    v17 = [v8 completion];
    (v17)[2](v17, v16);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateProofingConfiguration:(id)a3 completion:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v29 = "[NPKIDVRemoteDeviceConnectionCoordinator updateProofingConfiguration:completion:]";
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s", buf, 0xCu);
    }
  }

  v11 = objc_alloc_init(NPKIDVRemoteDeviceProtoUpdateProofingConfigurationRequest);
  v12 = v11;
  if (v6)
  {
    v13 = NPKSecureArchiveObject(v6);
    [(NPKIDVRemoteDeviceProtoUpdateProofingConfigurationRequest *)v12 setConfigurationData:v13];
  }

  else
  {
    [(NPKIDVRemoteDeviceProtoUpdateProofingConfigurationRequest *)v11 setConfigurationData:0];
  }

  v14 = _Block_copy(v7);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__NPKIDVRemoteDeviceConnectionCoordinator_updateProofingConfiguration_completion___block_invoke;
  aBlock[3] = &unk_279945150;
  v26 = v6;
  v27 = v7;
  v15 = v7;
  v16 = v6;
  v17 = _Block_copy(aBlock);
  v18 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v14 errorHandler:v17];

  v19 = MEMORY[0x277CCACA8];
  v20 = [v16 credentialIdentifier];
  v21 = v20;
  v22 = &stru_286C934F8;
  if (v20)
  {
    v22 = v20;
  }

  v23 = [v19 stringWithFormat:@"updateProofingConfiguration-%@", v22];

  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v12 withType:17 priority:200 queueIdentifier:v23 requestItem:v18 timeout:*MEMORY[0x277D18828]];
  v24 = *MEMORY[0x277D85DE8];
}

void __82__NPKIDVRemoteDeviceConnectionCoordinator_updateProofingConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while updating proofing configuration:%@. Error:%@", &v10, 0x16u);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateProofingConfigurationResponse:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315394;
      v20 = "[NPKIDVRemoteDeviceConnectionCoordinator updateProofingConfigurationResponse:]";
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", &v19, 0x16u);
    }
  }

  v8 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:v4];
  v9 = [v8 completion];

  if (v9)
  {
    v10 = [NPKIDVRemoteDeviceProtoUpdateProofingConfigurationResponse alloc];
    v11 = [v4 data];
    v12 = [(NPKIDVRemoteDeviceProtoUpdateProofingConfigurationResponse *)v10 initWithData:v11];

    v13 = [(NPKIDVRemoteDeviceProtoUpdateProofingConfigurationResponse *)v12 errorData];
    if (v13)
    {
      v14 = [(NPKIDVRemoteDeviceProtoUpdateProofingConfigurationResponse *)v12 errorData];
      v15 = objc_opt_class();
      v16 = NPKSecureUnarchiveObject(v14, v15);
    }

    else
    {
      v16 = 0;
    }

    v17 = [v8 completion];
    (v17)[2](v17, v16);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handleHeartbeats:(id)a3 service:(id)a4 account:(id)a5 fromID:(id)a6 context:(id)a7
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = pk_Payment_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v23 = "[NPKIDVRemoteDeviceConnectionCoordinator handleHeartbeats:service:account:fromID:context:]";
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s request:%@", buf, 0x16u);
    }
  }

  v12 = [NPKIDVRemoteDeviceProtoHeartbeatRequest alloc];
  v13 = [v8 data];
  v14 = [(NPKIDVRemoteDeviceProtoHeartbeatRequest *)v12 initWithData:v13];

  v15 = pk_Payment_log();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

  if (v16)
  {
    v17 = pk_Payment_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(NPKIDVRemoteDeviceProtoHeartbeatRequest *)v14 inProgressResponseIdentifiers];
      *buf = 138412290;
      v23 = v18;
      _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Received heartbeat for response identifiers:%@", buf, 0xCu);
    }
  }

  v19 = [(NPKIDVRemoteDeviceProtoHeartbeatRequest *)v14 inProgressResponseIdentifiers];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __91__NPKIDVRemoteDeviceConnectionCoordinator_handleHeartbeats_service_account_fromID_context___block_invoke;
  v21[3] = &unk_279945858;
  v21[4] = self;
  [v19 enumerateObjectsUsingBlock:v21];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__NPKIDVRemoteDeviceConnectionCoordinator_addObserver___block_invoke;
  v7[3] = &unk_2799454E0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(observerQueue, v7);
}

uint64_t __55__NPKIDVRemoteDeviceConnectionCoordinator_addObserver___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Register observer:%@ at:%@", &v9, 0x16u);
    }
  }

  result = [*(*(a1 + 40) + 40) addObject:*(a1 + 32)];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__NPKIDVRemoteDeviceConnectionCoordinator_removeObserver___block_invoke;
  v7[3] = &unk_2799454E0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(observerQueue, v7);
}

uint64_t __58__NPKIDVRemoteDeviceConnectionCoordinator_removeObserver___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Remove observer:%@ at:%@", &v9, 0x16u);
    }
  }

  result = [*(*(a1 + 40) + 40) removeObject:*(a1 + 32)];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: IDS service accounts changed: %@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: IDS service devices changed: %@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  v30 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = pk_Payment_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    v18 = pk_Payment_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138413314;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: IDS service incoming unhandled protobuf: %@ %@ %@ %@ %@", &v20, 0x34u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v34 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = pk_Payment_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    v18 = pk_Payment_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      v25 = v12;
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = v14;
      v30 = 1024;
      v31 = v8;
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: IDS service did send with success: %@ %@ %@ %d %@", buf, 0x30u);
    }
  }

  if (!v8)
  {
    IDSMessagesQueue = self->_IDSMessagesQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __95__NPKIDVRemoteDeviceConnectionCoordinator_service_account_identifier_didSendWithSuccess_error___block_invoke;
    block[3] = &unk_279945880;
    block[4] = self;
    v22 = v14;
    v23 = v15;
    dispatch_async(IDSMessagesQueue, block);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __95__NPKIDVRemoteDeviceConnectionCoordinator_service_account_identifier_didSendWithSuccess_error___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _safeQueue_outstandingRequestItemWithMessageIdentifier:*(a1 + 40) remove:1];
  v2 = [v4 errorHandler];

  if (v2)
  {
    v3 = [v4 errorHandler];
    v3[2](v3, *(a1 + 48));
  }
}

- (id)_outstandingRequestItemWithCompletion:(id)a3 errorHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[NPKIDVRemoteDeviceConnectionCoordinatorOutstandingRequestItem alloc] initWithtimeoutQueue:self->_IDSMessagesQueue];
  [(NPKIDVRemoteDeviceConnectionCoordinatorOutstandingRequestItem *)v8 setCompletion:v7];

  [(NPKIDVRemoteDeviceConnectionCoordinatorOutstandingRequestItem *)v8 setErrorHandler:v6];

  return v8;
}

void __110__NPKIDVRemoteDeviceConnectionCoordinator__sendRequest_withType_priority_queueIdentifier_requestItem_timeout___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = [*(a1 + 48) errorHandler];
  v7 = NPKProtoSendWithOptions(v3, v2, v4, 0, v5 & 1, v6, *(a1 + 56));

  if (v7)
  {
    if (*(a1 + 80))
    {
      objc_initWeak(location, *(a1 + 32));
      objc_initWeak(&from, *(a1 + 48));
      [*(a1 + 48) setMessageIdentifier:v7];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __110__NPKIDVRemoteDeviceConnectionCoordinator__sendRequest_withType_priority_queueIdentifier_requestItem_timeout___block_invoke_215;
      v14[3] = &unk_2799458A8;
      objc_copyWeak(&v15, &from);
      objc_copyWeak(&v16, location);
      [*(a1 + 48) setTimeoutHandler:v14];
      [*(a1 + 48) setOrResetCleanupTimer];
      [*(*(a1 + 32) + 24) setObject:*(a1 + 48) forKeyedSubscript:v7];
      objc_destroyWeak(&v16);
      objc_destroyWeak(&v15);
      objc_destroyWeak(&from);
      objc_destroyWeak(location);
    }
  }

  else
  {
    v8 = pk_Payment_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v10 = pk_Payment_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [*(a1 + 40) npkDescription];
        v12 = *(a1 + 64);
        *location = 138412546;
        *&location[4] = v11;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Fail to send protobuf:%@ queueIdentifier:%@", location, 0x16u);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __110__NPKIDVRemoteDeviceConnectionCoordinator__sendRequest_withType_priority_queueIdentifier_requestItem_timeout___block_invoke_215(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v4 = [WeakRetained messageIdentifier];

    if (v4)
    {
      v5 = pk_Payment_log();
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

      if (v6)
      {
        v7 = pk_Payment_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [WeakRetained messageIdentifier];
          v15 = 138412290;
          v16 = v8;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Warning: NPKIDVRemoteDeviceService: Timeout timer trigger for message with identifier %@", &v15, 0xCu);
        }
      }

      v9 = v3[3];
      v10 = [WeakRetained messageIdentifier];
      [v9 removeObjectForKey:v10];
    }
  }

  v11 = [WeakRetained errorHandler];

  if (v11)
  {
    v12 = [WeakRetained errorHandler];
    v13 = NPKIDVRemoteDeviceSessionError(-500, 0);
    (v12)[2](v12, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_safeQueue_outstandingRequestItemWithMessageIdentifier:(id)a3 remove:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  dispatch_assert_queue_V2(self->_IDSMessagesQueue);
  if (!v6)
  {
    v9 = pk_Payment_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v10)
    {
      v11 = pk_Payment_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v19) = 0;
        v12 = "Error: NPKIDVRemoteDeviceService: Missing IDS Message identifier";
        v13 = v11;
        v14 = 2;
LABEL_11:
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_ERROR, v12, &v19, v14);
      }

LABEL_12:
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  v7 = [(NSMutableDictionary *)self->_outstandingRequestItems objectForKeyedSubscript:v6];
  if (!v7)
  {
    v15 = pk_Payment_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

    if (v16)
    {
      v11 = pk_Payment_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v19 = 138412290;
        v20 = v6;
        v12 = "Error: NPKIDVRemoteDeviceService: Could not find completion handler for received Message Identifier:%@";
        v13 = v11;
        v14 = 12;
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v8 = v7;
  if (v4)
  {
    [v7 invalidateCleanupTimer];
    [(NSMutableDictionary *)self->_outstandingRequestItems removeObjectForKey:v6];
  }

LABEL_14:

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_safeQueue_resetCleanupTimerForOutstandingRequestItemWithMessageIdentifier:(id)a3
{
  v3 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemWithMessageIdentifier:a3 remove:0];
  [v3 setOrResetCleanupTimer];
}

@end