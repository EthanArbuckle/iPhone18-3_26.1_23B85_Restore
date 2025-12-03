@interface NPKNanoPassDaemonConnection
- (NPKNanoPassDaemonConnection)init;
- (id)_errorHandlerWithCompletion:(id)completion;
- (id)_remoteObjectProxySynchronous:(BOOL)synchronous withFailureHandler:(id)handler;
- (void)_addLegacyExpressModeEnabledUserNotificationForPassUniqueID:(id)d completion:(id)completion;
- (void)addRemoteDevicePendingProvisionings:(id)provisionings;
- (void)addUserNotificationForEnabledExpressMode:(unint64_t)mode passUniqueID:(id)d completion:(id)completion;
- (void)addUserNotificationOfType:(unint64_t)type passUniqueID:(id)d completion:(id)completion;
- (void)canAcceptInvitationOnRemoteDeviceForInvitation:(id)invitation completion:(id)completion;
- (void)canNotifyAboutExpressModeWithCompletion:(id)completion;
- (void)fetchIdentityProofingConfigurationForCountry:(id)country state:(id)state completion:(id)completion;
- (void)fetchRelevantPassInformationWithCompletion:(id)completion;
- (void)handleApplicationRedirectRequestOnPairedDeviceForPaymentPass:(id)pass transaction:(id)transaction;
- (void)handleMetadataRequestOnPairedDevice:(id)device withAssociatedApplicationIdentifiers:(id)identifiers completion:(id)completion;
- (void)remoteService:(id)service didEstablishConnection:(id)connection;
- (void)remoteService:(id)service didInterruptConnection:(id)connection;
- (void)remoteServiceDidResume:(id)resume;
- (void)remoteServiceDidSuspend:(id)suspend;
- (void)startSubcredentialProvisioningOnRemoteDeviceForInvitation:(id)invitation;
- (void)startSubcredentialProvisioningOnRemoteDeviceForMailboxAddress:(id)address activationCode:(id)code;
@end

@implementation NPKNanoPassDaemonConnection

- (NPKNanoPassDaemonConnection)init
{
  v15 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = NPKNanoPassDaemonConnection;
  v2 = [(NPKNanoPassDaemonConnection *)&v12 init];
  if (v2)
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v2;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] New connection created: %@", buf, 0xCu);
      }
    }

    v6 = objc_alloc(MEMORY[0x277D38348]);
    v7 = NPKNanoPassDaemonConnectionProtocolInterface();
    v8 = [v6 initWithMachServiceName:@"com.apple.NPKNanoPassDaemonConnection.XPC" remoteObjectInterface:v7 exportedObjectInterface:0 exportedObject:0];
    remoteService = v2->_remoteService;
    v2->_remoteService = v8;

    [(PKXPCService *)v2->_remoteService setDelegate:v2];
    [(PKXPCService *)v2->_remoteService setForceConnectionOnResume:1];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)handleMetadataRequestOnPairedDevice:(id)device withAssociatedApplicationIdentifiers:(id)identifiers completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  completionCopy = completion;
  if (completionCopy)
  {
    identifiersCopy = identifiers;
    v11 = pk_General_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = pk_General_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = deviceCopy;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection handleMetadataRequestOnPairedDevice %@", buf, 0xCu);
      }
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __115__NPKNanoPassDaemonConnection_handleMetadataRequestOnPairedDevice_withAssociatedApplicationIdentifiers_completion___block_invoke;
    v21[3] = &unk_279945198;
    v14 = completionCopy;
    v22 = v14;
    v15 = [(NPKNanoPassDaemonConnection *)self _remoteObjectProxySynchronous:0 withFailureHandler:v21];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __115__NPKNanoPassDaemonConnection_handleMetadataRequestOnPairedDevice_withAssociatedApplicationIdentifiers_completion___block_invoke_2;
    v17[3] = &unk_279945668;
    v18 = deviceCopy;
    selfCopy = self;
    v20 = v14;
    [v15 handleMetadataRequestOnPairedDevice:v18 withAssociatedApplicationIdentifiers:identifiersCopy completion:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __115__NPKNanoPassDaemonConnection_handleMetadataRequestOnPairedDevice_withAssociatedApplicationIdentifiers_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.NPKErrorDomain" code:-1000 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __115__NPKNanoPassDaemonConnection_handleMetadataRequestOnPairedDevice_withAssociatedApplicationIdentifiers_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_General_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v12 = 138412802;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection got response (%@, %@) for request %@", &v12, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleApplicationRedirectRequestOnPairedDeviceForPaymentPass:(id)pass transaction:(id)transaction
{
  v17 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  transactionCopy = transaction;
  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = passCopy;
      v15 = 2112;
      v16 = transactionCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection applicationRedirectRequestOnPairDevice %@-%@", &v13, 0x16u);
    }
  }

  v11 = [(NPKNanoPassDaemonConnection *)self _remoteObjectProxySynchronous:0 withFailureHandler:&__block_literal_global_1];
  [v11 handleApplicationRedirectRequestOnPairedDeviceForPaymentPass:passCopy transaction:transactionCopy];

  v12 = *MEMORY[0x277D85DE8];
}

void __104__NPKNanoPassDaemonConnection_handleApplicationRedirectRequestOnPairedDeviceForPaymentPass_transaction___block_invoke()
{
  v0 = pk_General_log();
  v1 = os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);

  if (v1)
  {
    v2 = pk_General_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&dword_25B300000, v2, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Failed to create remoteObjectProxy", v3, 2u);
    }
  }
}

- (void)canAcceptInvitationOnRemoteDeviceForInvitation:(id)invitation completion:(id)completion
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
      v11 = _Block_copy(completionCopy);
      *buf = 138412546;
      v24 = invitationCopy;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection canAcceptInvitationOnRemoteDeviceForInvitation: %@ completion: %@", buf, 0x16u);
    }
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __89__NPKNanoPassDaemonConnection_canAcceptInvitationOnRemoteDeviceForInvitation_completion___block_invoke;
  v21[3] = &unk_279945198;
  v12 = completionCopy;
  v22 = v12;
  v13 = [(NPKNanoPassDaemonConnection *)self _remoteObjectProxySynchronous:0 withFailureHandler:v21];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__NPKNanoPassDaemonConnection_canAcceptInvitationOnRemoteDeviceForInvitation_completion___block_invoke_58;
  v17[3] = &unk_2799456B0;
  selfCopy = self;
  v20 = v12;
  v18 = invitationCopy;
  v14 = v12;
  v15 = invitationCopy;
  [v13 canAcceptInvitationOnRemoteDeviceForInvitation:v15 completion:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __89__NPKNanoPassDaemonConnection_canAcceptInvitationOnRemoteDeviceForInvitation_completion___block_invoke(uint64_t a1)
{
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Failed to create remoteObjectProxy", v7, 2u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.NPKErrorDomain" code:-1000 userInfo:0];
    (*(v5 + 16))(v5, 0, v6);
  }
}

void __89__NPKNanoPassDaemonConnection_canAcceptInvitationOnRemoteDeviceForInvitation_completion___block_invoke_58(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"NO";
      v10 = *(a1 + 32);
      v13 = 138412802;
      if (a2)
      {
        v9 = @"YES";
      }

      v14 = v9;
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection got response (%@, %@) for invitation %@", &v13, 0x20u);
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, a2, v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)startSubcredentialProvisioningOnRemoteDeviceForInvitation:(id)invitation
{
  v12 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = invitationCopy;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection startSubcredentialProvisioningOnRemoteDeviceForInvitation: %@", &v10, 0xCu);
    }
  }

  v8 = [(NPKNanoPassDaemonConnection *)self _remoteObjectProxySynchronous:0 withFailureHandler:&__block_literal_global_67];
  [v8 startSubcredentialProvisioningOnRemoteDeviceForInvitation:invitationCopy];

  v9 = *MEMORY[0x277D85DE8];
}

void __89__NPKNanoPassDaemonConnection_startSubcredentialProvisioningOnRemoteDeviceForInvitation___block_invoke()
{
  v0 = pk_General_log();
  v1 = os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);

  if (v1)
  {
    v2 = pk_General_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&dword_25B300000, v2, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Failed to create remoteObjectProxy", v3, 2u);
    }
  }
}

- (void)startSubcredentialProvisioningOnRemoteDeviceForMailboxAddress:(id)address activationCode:(id)code
{
  v17 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  codeCopy = code;
  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138478083;
      v14 = addressCopy;
      v15 = 2113;
      v16 = codeCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection startSubcredentialProvisioningOnRemoteDeviceForMailboxAddress: %{private}@, activationCode: %{private}@", &v13, 0x16u);
    }
  }

  v11 = [(NPKNanoPassDaemonConnection *)self _remoteObjectProxySynchronous:0 withFailureHandler:&__block_literal_global_69];
  [v11 startSubcredentialProvisioningOnRemoteDeviceForMailboxAddress:addressCopy activationCode:codeCopy];

  v12 = *MEMORY[0x277D85DE8];
}

void __108__NPKNanoPassDaemonConnection_startSubcredentialProvisioningOnRemoteDeviceForMailboxAddress_activationCode___block_invoke()
{
  v0 = pk_General_log();
  v1 = os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);

  if (v1)
  {
    v2 = pk_General_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&dword_25B300000, v2, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Failed to create remoteObjectProxy", v3, 2u);
    }
  }
}

void __149__NPKNanoPassDaemonConnection_startSubcredentialProvisioningOnLocalDeviceMatchingInvitation_shouldFetchAnonymizationSaltFromRemoteDevice_completion___block_invoke(uint64_t a1)
{
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Failed to create remoteObjectProxy", v7, 2u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.NPKErrorDomain" code:-1000 userInfo:0];
    (*(v5 + 16))(v5, 0, v6);
  }
}

void __149__NPKNanoPassDaemonConnection_startSubcredentialProvisioningOnLocalDeviceMatchingInvitation_shouldFetchAnonymizationSaltFromRemoteDevice_completion___block_invoke_70(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_General_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v12 = 138412802;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection got response (%@, %@) for invitation %@", &v12, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addRemoteDevicePendingProvisionings:(id)provisionings
{
  v12 = *MEMORY[0x277D85DE8];
  provisioningsCopy = provisionings;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = provisioningsCopy;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection addRemoteDevicePendingProvisionings: %@", &v10, 0xCu);
    }
  }

  v8 = [(NPKNanoPassDaemonConnection *)self _remoteObjectProxySynchronous:0 withFailureHandler:&__block_literal_global_73];
  [v8 addRemoteDevicePendingProvisionings:provisioningsCopy];

  v9 = *MEMORY[0x277D85DE8];
}

void __67__NPKNanoPassDaemonConnection_addRemoteDevicePendingProvisionings___block_invoke()
{
  v0 = pk_General_log();
  v1 = os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);

  if (v1)
  {
    v2 = pk_General_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&dword_25B300000, v2, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Failed to create remoteObjectProxy", v3, 2u);
    }
  }
}

uint64_t __76__NPKNanoPassDaemonConnection_noteWillDeleteAccountsSynchronous_completion___block_invoke(uint64_t a1)
{
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Failed to create remoteObjectProxy", v6, 2u);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __76__NPKNanoPassDaemonConnection_noteWillDeleteAccountsSynchronous_completion___block_invoke_74(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v8[0] = 67109120;
      v8[1] = v5;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection finished noteWillDeleteAccountsSynchronous: %d", v8, 8u);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __78__NPKNanoPassDaemonConnection_identityPassPrearmStatusSynchronous_completion___block_invoke(uint64_t a1)
{
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Failed to create remoteObjectProxy", v6, 2u);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __78__NPKNanoPassDaemonConnection_identityPassPrearmStatusSynchronous_completion___block_invoke_75(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromNPKIDVDeviceCredentialPrearmStatus(a2);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Received identity Pass Prearm status: %@", &v10, 0xCu);
    }
  }

  result = (*(*(a1 + 40) + 16))();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)addUserNotificationOfType:(unint64_t)type passUniqueID:(id)d completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v10 = pk_General_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_General_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromNPKNanoPassbookUserNotificationType(type);
      v17 = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = dCopy;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Request to add user notification of type: %@ for passUniqueID: %@", &v17, 0x16u);
    }
  }

  if (type > 1)
  {
    if (type == 3)
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }

    if (type == 2)
    {
      v14 = 2;
    }

    else
    {
      v14 = v15;
    }
  }

  else
  {
    if (!type)
    {
      [(NPKNanoPassDaemonConnection *)self _addLegacyExpressModeEnabledUserNotificationForPassUniqueID:dCopy completion:completionCopy];
      goto LABEL_15;
    }

    v14 = type == 1;
  }

  [(NPKNanoPassDaemonConnection *)self addUserNotificationForEnabledExpressMode:v14 passUniqueID:dCopy completion:completionCopy];
LABEL_15:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)addUserNotificationForEnabledExpressMode:(unint64_t)mode passUniqueID:(id)d completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v10 = pk_General_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_General_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      modeCopy = mode;
      v27 = 2112;
      v28 = dCopy;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection started addUserNotificationForEnabledExpressMode: %lu, pass unique ID: %@", buf, 0x16u);
    }
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __96__NPKNanoPassDaemonConnection_addUserNotificationForEnabledExpressMode_passUniqueID_completion___block_invoke;
  v23[3] = &unk_279945198;
  v13 = completionCopy;
  v24 = v13;
  v14 = [(NPKNanoPassDaemonConnection *)self _remoteObjectProxySynchronous:0 withFailureHandler:v23];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __96__NPKNanoPassDaemonConnection_addUserNotificationForEnabledExpressMode_passUniqueID_completion___block_invoke_77;
  v18[3] = &unk_279945750;
  v21 = v13;
  modeCopy2 = mode;
  v19 = dCopy;
  selfCopy = self;
  v15 = v13;
  v16 = dCopy;
  [v14 addUserNotificationForEnabledExpressMode:mode passUniqueID:v16 completion:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __96__NPKNanoPassDaemonConnection_addUserNotificationForEnabledExpressMode_passUniqueID_completion___block_invoke(uint64_t a1)
{
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Failed to create remoteObjectProxy", v7, 2u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.NPKErrorDomain" code:-1000 userInfo:0];
    (*(v5 + 16))(v5, v6);
  }
}

void __96__NPKNanoPassDaemonConnection_addUserNotificationForEnabledExpressMode_passUniqueID_completion___block_invoke_77(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[7];
      v8 = a1[4];
      v11 = 134218498;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection finished addUserNotificationForEnabledExpressMode: %lu, passUniqueID: %@, error?: %@", &v11, 0x20u);
    }
  }

  v9 = a1[6];
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)canNotifyAboutExpressModeWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = _Block_copy(completionCopy);
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection started canNotifyAboutExpressModeWithCompletion %@", buf, 0xCu);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__NPKNanoPassDaemonConnection_canNotifyAboutExpressModeWithCompletion___block_invoke;
  v15[3] = &unk_279945198;
  v9 = completionCopy;
  v16 = v9;
  v10 = [(NPKNanoPassDaemonConnection *)self _remoteObjectProxySynchronous:0 withFailureHandler:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__NPKNanoPassDaemonConnection_canNotifyAboutExpressModeWithCompletion___block_invoke_79;
  v13[3] = &unk_2799451F0;
  v13[4] = self;
  v14 = v9;
  v11 = v9;
  [v10 canNotifyAboutExpressModeWithCompletion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __71__NPKNanoPassDaemonConnection_canNotifyAboutExpressModeWithCompletion___block_invoke(uint64_t a1)
{
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Failed to create remoteObjectProxy", v6, 2u);
    }
  }

  if (*(a1 + 32))
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.NPKErrorDomain" code:-1000 userInfo:0];
    (*(*(a1 + 32) + 16))(*(a1 + 32), v5 != 0);
  }
}

uint64_t __71__NPKNanoPassDaemonConnection_canNotifyAboutExpressModeWithCompletion___block_invoke_79(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"NO";
      if (a2)
      {
        v7 = @"YES";
      }

      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection got response with canNotify: %@", &v10, 0xCu);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)fetchRelevantPassInformationWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = _Block_copy(completionCopy);
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection started fetchRelevantPassInformationWithCompletion %@", buf, 0xCu);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__NPKNanoPassDaemonConnection_fetchRelevantPassInformationWithCompletion___block_invoke;
  v15[3] = &unk_279945198;
  v9 = completionCopy;
  v16 = v9;
  v10 = [(NPKNanoPassDaemonConnection *)self _remoteObjectProxySynchronous:0 withFailureHandler:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__NPKNanoPassDaemonConnection_fetchRelevantPassInformationWithCompletion___block_invoke_81;
  v13[3] = &unk_279945778;
  v13[4] = self;
  v14 = v9;
  v11 = v9;
  [v10 fetchRelevantPassInformationWithCompletion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __74__NPKNanoPassDaemonConnection_fetchRelevantPassInformationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Failed to create remoteObjectProxy", v6, 2u);
    }
  }

  if (*(a1 + 32))
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.NPKErrorDomain" code:-1000 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }
}

void __74__NPKNanoPassDaemonConnection_fetchRelevantPassInformationWithCompletion___block_invoke_81(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection got response with relevantPassInformation: %@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3, 0);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __135__NPKNanoPassDaemonConnection_insertBridgeBulletinWithTitle_message_actionURL_forPass_playSound_notificationIdentifier_expirationDate___block_invoke()
{
  v0 = pk_General_log();
  v1 = os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);

  if (v1)
  {
    v2 = pk_General_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&dword_25B300000, v2, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Failed to create remoteObjectProxy", v3, 2u);
    }
  }
}

- (void)fetchIdentityProofingConfigurationForCountry:(id)country state:(id)state completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  stateCopy = state;
  countryCopy = country;
  v11 = pk_General_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_General_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = _Block_copy(completionCopy);
      *buf = 138412290;
      v24 = v14;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection started fetchIdentityProofingConfigurationForCountry:state:completion %@", buf, 0xCu);
    }
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __93__NPKNanoPassDaemonConnection_fetchIdentityProofingConfigurationForCountry_state_completion___block_invoke;
  v21[3] = &unk_279945198;
  v15 = completionCopy;
  v22 = v15;
  v16 = [(NPKNanoPassDaemonConnection *)self _remoteObjectProxySynchronous:0 withFailureHandler:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __93__NPKNanoPassDaemonConnection_fetchIdentityProofingConfigurationForCountry_state_completion___block_invoke_85;
  v19[3] = &unk_2799457A0;
  v19[4] = self;
  v20 = v15;
  v17 = v15;
  [v16 fetchIdentityProofingConfigurationForCountry:countryCopy state:stateCopy completion:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __93__NPKNanoPassDaemonConnection_fetchIdentityProofingConfigurationForCountry_state_completion___block_invoke(uint64_t a1)
{
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Failed to create remoteObjectProxy", v7, 2u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.NPKErrorDomain" code:-1000 userInfo:0];
    (*(v5 + 16))(v5, 0, v6);
  }
}

void __93__NPKNanoPassDaemonConnection_fetchIdentityProofingConfigurationForCountry_state_completion___block_invoke_85(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_General_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection got response with configuration: %@, error: %@", &v12, 0x16u);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_remoteObjectProxySynchronous:(BOOL)synchronous withFailureHandler:(id)handler
{
  synchronousCopy = synchronous;
  v23 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  remoteService = [(NPKNanoPassDaemonConnection *)self remoteService];
  v8 = [(NPKNanoPassDaemonConnection *)self _errorHandlerWithCompletion:handlerCopy];
  if (synchronousCopy)
  {
    [remoteService synchronousRemoteObjectProxyWithErrorHandler:v8];
  }

  else
  {
    [remoteService remoteObjectProxyWithErrorHandler:v8];
  }
  v9 = ;

  if (!v9)
  {
    v10 = pk_General_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v12 = pk_General_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = 136446978;
        v16 = "[NPKNanoPassDaemonConnection _remoteObjectProxySynchronous:withFailureHandler:]";
        v17 = 2082;
        v18 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKNanoPassDaemonConnection.m";
        v19 = 2048;
        v20 = 307;
        v21 = 1024;
        v22 = synchronousCopy;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: [NPKNanoPassDaemonConnection _remoteObjectProxySynchronous:withFailureHandler:] (synchronous:%d) would have returned nil)", &v15, 0x26u);
      }
    }

    _NPKAssertAbort();
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_errorHandlerWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__NPKNanoPassDaemonConnection__errorHandlerWithCompletion___block_invoke;
  aBlock[3] = &unk_279945218;
  v9 = completionCopy;
  v4 = completionCopy;
  v5 = _Block_copy(aBlock);
  v6 = _Block_copy(v5);

  return v6;
}

void __59__NPKNanoPassDaemonConnection__errorHandlerWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Error on NPKNanoPassDaemonConnection connection: %@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_addLegacyExpressModeEnabledUserNotificationForPassUniqueID:(id)d completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = dCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Handling legacy express mode enabled codepath for pass unique ID: %@", buf, 0xCu);
    }
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __102__NPKNanoPassDaemonConnection__addLegacyExpressModeEnabledUserNotificationForPassUniqueID_completion___block_invoke;
  v21[3] = &unk_279945198;
  v11 = completionCopy;
  v22 = v11;
  v12 = [(NPKNanoPassDaemonConnection *)self _remoteObjectProxySynchronous:0 withFailureHandler:v21];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __102__NPKNanoPassDaemonConnection__addLegacyExpressModeEnabledUserNotificationForPassUniqueID_completion___block_invoke_88;
  v16[3] = &unk_279945750;
  v19 = v11;
  v20 = 0;
  v17 = dCopy;
  selfCopy = self;
  v13 = v11;
  v14 = dCopy;
  [v12 addUserNotificationOfType:0 passUniqueID:v14 completion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __102__NPKNanoPassDaemonConnection__addLegacyExpressModeEnabledUserNotificationForPassUniqueID_completion___block_invoke(uint64_t a1)
{
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Failed to create remoteObjectProxy", v7, 2u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.NPKErrorDomain" code:-1000 userInfo:0];
    (*(v5 + 16))(v5, v6);
  }
}

void __102__NPKNanoPassDaemonConnection__addLegacyExpressModeEnabledUserNotificationForPassUniqueID_completion___block_invoke_88(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[7];
      v8 = a1[4];
      v11 = 134218498;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection finished addUserNotificationOfType: %lu, passUniqueID: %@, error?: %@", &v11, 0x20u);
    }
  }

  v9 = a1[6];
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)remoteService:(id)service didEstablishConnection:(id)connection
{
  v15 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  connectionCopy = connection;
  v7 = pk_General_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = serviceCopy;
      v13 = 2112;
      v14 = connectionCopy;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Service %@ didEstablishConnection: %@", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)remoteService:(id)service didInterruptConnection:(id)connection
{
  v15 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  connectionCopy = connection;
  v7 = pk_General_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = serviceCopy;
      v13 = 2112;
      v14 = connectionCopy;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Service %@ didInterruptConnection: %@", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)remoteServiceDidResume:(id)resume
{
  v10 = *MEMORY[0x277D85DE8];
  resumeCopy = resume;
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = resumeCopy;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Service didResume: %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)remoteServiceDidSuspend:(id)suspend
{
  v10 = *MEMORY[0x277D85DE8];
  suspendCopy = suspend;
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = suspendCopy;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Service didSuspend: %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end