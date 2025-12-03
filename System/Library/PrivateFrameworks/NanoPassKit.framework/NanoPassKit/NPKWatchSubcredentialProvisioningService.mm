@interface NPKWatchSubcredentialProvisioningService
- (NPKWatchSubcredentialProvisioningService)init;
- (void)canAcceptInvitationOnRemoteDeviceResponse:(id)response;
- (void)fetchAccountAttestationAnonymizationSaltOnRemoteDeviceWithCompletion:(id)completion;
- (void)fetchAccountAttestationAnonymizationSaltResponse:(id)response;
- (void)registerProtobufActionsForService:(id)service;
- (void)sendAcceptSubcredentialProvisioningRequestForInvitation:(id)invitation metadata:(id)metadata;
- (void)sendAcceptSubcredentialProvisioningRequestForMailboxAddress:(id)address activationCode:(id)code;
- (void)sendCanAcceptInvitationOnRemoteDeviceRequestForInvitation:(id)invitation completion:(id)completion;
@end

@implementation NPKWatchSubcredentialProvisioningService

- (NPKWatchSubcredentialProvisioningService)init
{
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: Expected to instantiate NPKWatchSubcredentialProvisioningService on watch.", v7, 2u);
    }
  }

  return 0;
}

- (void)registerProtobufActionsForService:(id)service
{
  serviceCopy = service;
  [serviceCopy setProtobufAction:sel_canAcceptInvitationOnRemoteDeviceResponse_ forIncomingResponsesOfType:73];
  [serviceCopy setProtobufAction:sel_fetchAccountAttestationAnonymizationSaltResponse_ forIncomingResponsesOfType:74];
}

- (void)sendCanAcceptInvitationOnRemoteDeviceRequestForInvitation:(id)invitation completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  completionCopy = completion;
  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = _Block_copy(completionCopy);
      *buf = 138543618;
      v24 = v12;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Sending can accept invitation on remote device request with completion: %@", buf, 0x16u);
    }
  }

  objc_initWeak(buf, self);
  subcredentialProvisioningQueue = [(NPKSubcredentialProvisioningService *)self subcredentialProvisioningQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __113__NPKWatchSubcredentialProvisioningService_sendCanAcceptInvitationOnRemoteDeviceRequestForInvitation_completion___block_invoke;
  v18[3] = &unk_279946CF8;
  objc_copyWeak(&v22, buf);
  selfCopy = self;
  v21 = completionCopy;
  v19 = invitationCopy;
  v15 = completionCopy;
  v16 = invitationCopy;
  dispatch_async(subcredentialProvisioningQueue, v18);

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);
  v17 = *MEMORY[0x277D85DE8];
}

void __113__NPKWatchSubcredentialProvisioningService_sendCanAcceptInvitationOnRemoteDeviceRequestForInvitation_completion___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = objc_alloc_init(NPKProtoCanAcceptInvitationRequest);
  v4 = NPKSecureArchiveObject(*(a1 + 32));
  [(NPKProtoCanAcceptInvitationRequest *)v3 setInvitationData:v4];

  v5 = objc_alloc(MEMORY[0x277D189F0]);
  v6 = [(NPKProtoCanAcceptInvitationRequest *)v3 data];
  v7 = [v5 initWithProtobufData:v6 type:73 isResponse:0];

  v8 = [WeakRetained sendProtobuf:v7 responseExpected:1];
  if (v8)
  {
    v9 = _Block_copy(*(a1 + 48));
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __113__NPKWatchSubcredentialProvisioningService_sendCanAcceptInvitationOnRemoteDeviceRequestForInvitation_completion___block_invoke_2;
    aBlock[3] = &unk_279946CD0;
    v21 = *(a1 + 48);
    aBlock[4] = WeakRetained;
    v10 = v8;
    v20 = v10;
    v11 = _Block_copy(aBlock);
    v12 = *(a1 + 40);
    v13 = _Block_copy(v9);
    [v12 trackOutstandingRequestWithMessageIdentifier:v10 completionHandler:v13 errorHandler:v11];
  }

  else
  {
    v15 = pk_General_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

    if (!v16)
    {
      goto LABEL_4;
    }

    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138543618;
      v23 = v18;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_ERROR, "Error: %{public}@: No message identifier for protobuf %@", buf, 0x16u);
    }
  }

LABEL_4:
  v14 = *MEMORY[0x277D85DE8];
}

void __113__NPKWatchSubcredentialProvisioningService_sendCanAcceptInvitationOnRemoteDeviceRequestForInvitation_completion___block_invoke_2(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a1[6];
  if (v2)
  {
    v3 = *(v2 + 16);
    v4 = *MEMORY[0x277D85DE8];

    v3();
  }

  else
  {
    v5 = pk_Payment_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_Payment_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a1[4];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = a1[5];
        v13 = 138543618;
        v14 = v10;
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: No response expected for message with identifier %@", &v13, 0x16u);
      }
    }

    v12 = *MEMORY[0x277D85DE8];
  }
}

- (void)canAcceptInvitationOnRemoteDeviceResponse:(id)response
{
  v39 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      npkDescription = [responseCopy npkDescription];
      v35 = 138543618;
      v36 = v9;
      v37 = 2112;
      v38 = npkDescription;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Received canAcceptInvitationOnRemoteDeviceResponse: incoming protobuf %@", &v35, 0x16u);
    }
  }

  context = [responseCopy context];
  incomingResponseIdentifier = [context incomingResponseIdentifier];

  if (!incomingResponseIdentifier)
  {
    v23 = pk_Payment_log();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

    if (v24)
    {
      v25 = pk_Payment_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v35 = 138543362;
        v36 = v27;
        v28 = "Error: %{public}@: No associated message ID in response";
        v29 = v25;
        v30 = OS_LOG_TYPE_ERROR;
LABEL_15:
        _os_log_impl(&dword_25B300000, v29, v30, v28, &v35, 0xCu);
      }

LABEL_16:
    }

LABEL_17:
    completionHandler = 0;
    v22 = 0;
    goto LABEL_18;
  }

  outstandingRequests = [(NPKSubcredentialProvisioningService *)self outstandingRequests];
  v14 = [outstandingRequests objectForKey:incomingResponseIdentifier];

  if (!v14)
  {
    v31 = pk_Payment_log();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);

    if (v32)
    {
      v25 = pk_Payment_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v33 = objc_opt_class();
        v27 = NSStringFromClass(v33);
        v35 = 138543362;
        v36 = v27;
        v28 = "Warning: %{public}@: Got response with no associated message handler";
        v29 = v25;
        v30 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v15 = [NPKProtoCanAcceptInvitationResponse alloc];
  data = [responseCopy data];
  v17 = [(NPKProtoCanAcceptInvitationResponse *)v15 initWithData:data];

  outstandingRequests2 = [(NPKSubcredentialProvisioningService *)self outstandingRequests];
  [outstandingRequests2 removeObjectForKey:incomingResponseIdentifier];

  completionHandler = [v14 completionHandler];
  errorData = [(NPKProtoCanAcceptInvitationResponse *)v17 errorData];
  v21 = objc_opt_class();
  v22 = NPKSecureUnarchiveObject(errorData, v21);

  if (completionHandler)
  {
    (completionHandler)[2](completionHandler, v22 == 0, v22);
  }

LABEL_18:

  v34 = *MEMORY[0x277D85DE8];
}

- (void)sendAcceptSubcredentialProvisioningRequestForInvitation:(id)invitation metadata:(id)metadata
{
  v25 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  metadataCopy = metadata;
  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138543618;
      v22 = v12;
      v23 = 2112;
      v24 = invitationCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Sending subcredential provisioning request for invitation: %@", buf, 0x16u);
    }
  }

  objc_initWeak(buf, self);
  subcredentialProvisioningQueue = [(NPKSubcredentialProvisioningService *)self subcredentialProvisioningQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __109__NPKWatchSubcredentialProvisioningService_sendAcceptSubcredentialProvisioningRequestForInvitation_metadata___block_invoke;
  block[3] = &unk_279945290;
  objc_copyWeak(&v20, buf);
  v18 = invitationCopy;
  v19 = metadataCopy;
  v14 = metadataCopy;
  v15 = invitationCopy;
  dispatch_async(subcredentialProvisioningQueue, block);

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
  v16 = *MEMORY[0x277D85DE8];
}

void __109__NPKWatchSubcredentialProvisioningService_sendAcceptSubcredentialProvisioningRequestForInvitation_metadata___block_invoke(void **a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = objc_alloc_init(NPKProtoAcceptSubcredentialInvitationRequest);
  v4 = NPKSecureArchiveObject(a1[4]);
  [(NPKProtoAcceptSubcredentialInvitationRequest *)v3 setInvitationData:v4];

  v5 = NPKSecureArchiveObject(a1[5]);
  [(NPKProtoAcceptSubcredentialInvitationRequest *)v3 setMetadataData:v5];

  v6 = objc_alloc(MEMORY[0x277D189F0]);
  v7 = [(NPKProtoAcceptSubcredentialInvitationRequest *)v3 data];
  v8 = [v6 initWithProtobufData:v7 type:122 isResponse:0];

  v9 = MEMORY[0x277CCACA8];
  v10 = [a1[4] identifier];
  v11 = [v9 stringWithFormat:@"%@-%@", @"SubcredentialProvisioning", v10];

  v24 = *MEMORY[0x277D18630];
  v25[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v13 = [WeakRetained sendProtobuf:v8 responseExpected:0 extraOptions:v12];
  if (!v13)
  {
    v14 = pk_General_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

    if (v15)
    {
      v16 = pk_General_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 138543618;
        v21 = v18;
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_ERROR, "Error: %{public}@: No message identifier for protobuf %@", buf, 0x16u);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)sendAcceptSubcredentialProvisioningRequestForMailboxAddress:(id)address activationCode:(id)code
{
  v31 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  codeCopy = code;
  v8 = [addressCopy length] == 0;
  v9 = pk_General_log();
  v10 = v9;
  if (v8)
  {
    v16 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v16)
    {
      v17 = pk_General_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        *buf = 138543362;
        v26 = v19;
        _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_ERROR, "Error: %{public}@: Unable to initiate subcredential provisioning request for empty mailbox address", buf, 0xCu);
      }
    }
  }

  else
  {
    v11 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = pk_General_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138543875;
        v26 = v14;
        v27 = 2113;
        v28 = addressCopy;
        v29 = 2113;
        v30 = codeCopy;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Sending subcredential provisioning request for mailbox address: %{private}@, activationCode: %{private}@", buf, 0x20u);
      }
    }

    objc_initWeak(buf, self);
    subcredentialProvisioningQueue = [(NPKSubcredentialProvisioningService *)self subcredentialProvisioningQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __119__NPKWatchSubcredentialProvisioningService_sendAcceptSubcredentialProvisioningRequestForMailboxAddress_activationCode___block_invoke;
    block[3] = &unk_279945290;
    objc_copyWeak(&v24, buf);
    v22 = addressCopy;
    v23 = codeCopy;
    dispatch_async(subcredentialProvisioningQueue, block);

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __119__NPKWatchSubcredentialProvisioningService_sendAcceptSubcredentialProvisioningRequestForMailboxAddress_activationCode___block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_alloc_init(NPKProtoAcceptSubcredentialInvitationWithMailboxAddressRequest);
  [(NPKProtoAcceptSubcredentialInvitationWithMailboxAddressRequest *)v3 setMailboxAddress:*(a1 + 32)];
  [(NPKProtoAcceptSubcredentialInvitationWithMailboxAddressRequest *)v3 setActivationCode:*(a1 + 40)];
  v4 = objc_alloc(MEMORY[0x277D189F0]);
  v5 = [(NPKProtoAcceptSubcredentialInvitationWithMailboxAddressRequest *)v3 data];
  v6 = [v4 initWithProtobufData:v5 type:126 isResponse:0];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"SubcredentialProvisioning", *(a1 + 32)];
  v20 = *MEMORY[0x277D18630];
  v21[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v9 = [WeakRetained sendProtobuf:v6 responseExpected:0 extraOptions:v8];
  if (!v9)
  {
    v10 = pk_General_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v12 = pk_General_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138543618;
        v17 = v14;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_ERROR, "Error: %{public}@: No message identifier for protobuf %@", buf, 0x16u);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)fetchAccountAttestationAnonymizationSaltOnRemoteDeviceWithCompletion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = _Block_copy(completionCopy);
      *buf = 138543618;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Sending fetch account attestation anonymization salt request with completion: %@", buf, 0x16u);
    }
  }

  objc_initWeak(buf, self);
  subcredentialProvisioningQueue = [(NPKSubcredentialProvisioningService *)self subcredentialProvisioningQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __113__NPKWatchSubcredentialProvisioningService_fetchAccountAttestationAnonymizationSaltOnRemoteDeviceWithCompletion___block_invoke;
  block[3] = &unk_279946D20;
  objc_copyWeak(&v16, buf);
  block[4] = self;
  v15 = completionCopy;
  v12 = completionCopy;
  dispatch_async(subcredentialProvisioningQueue, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
  v13 = *MEMORY[0x277D85DE8];
}

void __113__NPKWatchSubcredentialProvisioningService_fetchAccountAttestationAnonymizationSaltOnRemoteDeviceWithCompletion___block_invoke(uint64_t a1)
{
  v27[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_alloc_init(NPKProtoAccountAttestationAnonymizationSaltRequest);
  v4 = objc_alloc(MEMORY[0x277D189F0]);
  v5 = [(NPKProtoAccountAttestationAnonymizationSaltRequest *)v3 data];
  v6 = [v4 initWithProtobufData:v5 type:74 isResponse:0];

  v26 = *MEMORY[0x277D18630];
  v27[0] = @"SubcredentialProvisioning";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v8 = [WeakRetained sendProtobuf:v6 responseExpected:1 extraOptions:v7];
  if (v8)
  {
    v9 = _Block_copy(*(a1 + 40));
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __113__NPKWatchSubcredentialProvisioningService_fetchAccountAttestationAnonymizationSaltOnRemoteDeviceWithCompletion___block_invoke_2;
    aBlock[3] = &unk_279946CD0;
    v21 = *(a1 + 40);
    aBlock[4] = WeakRetained;
    v10 = v8;
    v20 = v10;
    v11 = _Block_copy(aBlock);
    v12 = *(a1 + 32);
    v13 = _Block_copy(v9);
    [v12 trackOutstandingRequestWithMessageIdentifier:v10 completionHandler:v13 errorHandler:v11];
  }

  else
  {
    v15 = pk_General_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

    if (!v16)
    {
      goto LABEL_4;
    }

    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138543618;
      v23 = v18;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_ERROR, "Error: %{public}@: No message identifier for protobuf %@", buf, 0x16u);
    }
  }

LABEL_4:
  v14 = *MEMORY[0x277D85DE8];
}

void __113__NPKWatchSubcredentialProvisioningService_fetchAccountAttestationAnonymizationSaltOnRemoteDeviceWithCompletion___block_invoke_2(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a1[6];
  if (v2)
  {
    v3 = *(v2 + 16);
    v4 = *MEMORY[0x277D85DE8];

    v3();
  }

  else
  {
    v5 = pk_Payment_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_Payment_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a1[4];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = a1[5];
        v13 = 138543618;
        v14 = v10;
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: No response expected for message with identifier %@", &v13, 0x16u);
      }
    }

    v12 = *MEMORY[0x277D85DE8];
  }
}

- (void)fetchAccountAttestationAnonymizationSaltResponse:(id)response
{
  v40 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      npkDescription = [responseCopy npkDescription];
      v36 = 138543618;
      v37 = v9;
      v38 = 2112;
      v39 = npkDescription;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Received accountAttestationAnonymizationSaltResponse: incoming protobuf %@", &v36, 0x16u);
    }
  }

  context = [responseCopy context];
  incomingResponseIdentifier = [context incomingResponseIdentifier];

  if (!incomingResponseIdentifier)
  {
    v24 = pk_Payment_log();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

    if (v25)
    {
      v26 = pk_Payment_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        v36 = 138543362;
        v37 = v28;
        v29 = "Error: %{public}@: No associated message ID in response";
        v30 = v26;
        v31 = OS_LOG_TYPE_ERROR;
LABEL_15:
        _os_log_impl(&dword_25B300000, v30, v31, v29, &v36, 0xCu);
      }

LABEL_16:
    }

LABEL_17:
    completionHandler = 0;
    anonymizationSalt = 0;
    v23 = 0;
    goto LABEL_18;
  }

  outstandingRequests = [(NPKSubcredentialProvisioningService *)self outstandingRequests];
  v14 = [outstandingRequests objectForKey:incomingResponseIdentifier];

  if (!v14)
  {
    v32 = pk_Payment_log();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);

    if (v33)
    {
      v26 = pk_Payment_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v34 = objc_opt_class();
        v28 = NSStringFromClass(v34);
        v36 = 138543362;
        v37 = v28;
        v29 = "Warning: %{public}@: Got response with no associated message handler";
        v30 = v26;
        v31 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v15 = [NPKProtoAccountAttestationAnonymizationSaltResponse alloc];
  data = [responseCopy data];
  v17 = [(NPKProtoAccountAttestationAnonymizationSaltResponse *)v15 initWithData:data];

  outstandingRequests2 = [(NPKSubcredentialProvisioningService *)self outstandingRequests];
  [outstandingRequests2 removeObjectForKey:incomingResponseIdentifier];

  completionHandler = [v14 completionHandler];
  anonymizationSalt = [(NPKProtoAccountAttestationAnonymizationSaltResponse *)v17 anonymizationSalt];
  errorData = [(NPKProtoAccountAttestationAnonymizationSaltResponse *)v17 errorData];
  v22 = objc_opt_class();
  v23 = NPKSecureUnarchiveObject(errorData, v22);

  if (completionHandler)
  {
    (completionHandler)[2](completionHandler, anonymizationSalt, v23);
  }

LABEL_18:

  v35 = *MEMORY[0x277D85DE8];
}

@end