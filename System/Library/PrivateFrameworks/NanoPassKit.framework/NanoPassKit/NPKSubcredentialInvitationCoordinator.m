@interface NPKSubcredentialInvitationCoordinator
+ (BOOL)canAddSecureElementPassWithConfiguration:(id)a3 outError:(id *)a4;
+ (BOOL)canAddSecureElementPassWithInvitation:(id)a3;
- (BOOL)_isInvitationUniqueForPairedReaderIdentifier:(id)a3;
- (NPKStandaloneFirstUnlockCoordinator)firstUnlockCoordinator;
- (NPKSubcredentialInvitationCoordinator)initWithCallbackQueue:(id)a3;
- (NPKWatchSubcredentialProvisioningService)subcredentialProvisioningService;
- (PKPaymentService)paymentService;
- (id)_errorWithCode:(int64_t)a3 message:(id)a4;
- (void)_endProvisioningWithPassForInvitation:(id)a3 error:(id)a4;
- (void)_fetchInvitationMatchingInvitation:(id)a3 completion:(id)a4;
- (void)_fetchInvitationWithIdentifier:(id)a3 completion:(id)a4;
- (void)_handleProvisioningAttemptForConfiguration:(id)a3 error:(id)a4;
- (void)_invokeCompletionWithPassForInvitation:(id)a3 error:(id)a4;
- (void)_makeConfigurationForInvitation:(id)a3 session:(id)a4 metadata:(id)a5 paymentWebService:(id)a6 completion:(id)a7;
- (void)_performBlockFollowingFirstUnlockWithBlock:(id)a3;
- (void)_queue_accountAttestationAnonymizationSaltWithCompletion:(id)a3;
- (void)_queue_canAcceptInvitation:(id)a3 completion:(id)a4;
- (void)_queue_declineRelatedInvitationsIfNecessaryForInvitation:(id)a3 completion:(id)a4;
- (void)_queue_deviceContainsInvitationMatchingInvitation:(id)a3 withTimeout:(unint64_t)a4 completion:(id)a5;
- (void)_queue_fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion:(id)a3;
- (void)_queue_listSubcredentialInvitationsWithCompletion:(id)a3;
- (void)_queue_registerCredentialsWithIdentifiers:(id)a3 completion:(id)a4;
- (void)_queue_removeSharingInvitation:(id)a3 completion:(id)a4;
- (void)_queue_requestSubcredentialInvitation:(id)a3 fromIDSHandle:(id)a4 completion:(id)a5;
- (void)_queue_revokeCredentialsWithIdentifiers:(id)a3 completion:(id)a4;
- (void)_queue_setAccountAttestationAnonymizationSalt:(id)a3 completion:(id)a4;
- (void)_queue_updateSubcredentialMetadataOnPass:(id)a3 withCredential:(id)a4 completion:(id)a5;
- (void)_setUpSharingSessionWithSubcredentialProvisioningController:(id)a3 forInvitation:(id)a4;
- (void)_setUpSubcredentialProvisioningController;
- (void)_startProvisioningForProvisioningController:(id)a3 withConfiguration:(id)a4;
- (void)accountAttestationAnonymizationSaltWithCompletion:(id)a3;
- (void)canAcceptInvitation:(id)a3 completion:(id)a4;
- (void)canAcceptInvitationOnRemoteDeviceForInvitation:(id)a3 completion:(id)a4;
- (void)declineRelatedInvitationsIfNecessaryForInvitation:(id)a3 completion:(id)a4;
- (void)deviceContainsInvitationMatchingInvitation:(id)a3 withTimeout:(unint64_t)a4 completion:(id)a5;
- (void)fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion:(id)a3;
- (void)listSubcredentialInvitationsWithCompletion:(id)a3;
- (void)registerCredentialsWithIdentifiers:(id)a3 completion:(id)a4;
- (void)removeSharingInvitation:(id)a3 completion:(id)a4;
- (void)requestSubcredentialInvitation:(id)a3 completion:(id)a4;
- (void)revokeCredentialsWithIdentifiers:(id)a3 completion:(id)a4;
- (void)setAccountAttestationAnonymizationSalt:(id)a3 completion:(id)a4;
- (void)startProvisioningWithInvitation:(id)a3 metadata:(id)a4 completion:(id)a5;
- (void)startProvisioningWithInvitationIdentifier:(id)a3 metadata:(id)a4 completion:(id)a5;
- (void)startProvisioningWithMailboxAddress:(id)a3 activationCode:(id)a4 completion:(id)a5;
- (void)startSubcredentialProvisioningOnLocalDeviceMatchingInvitation:(id)a3 shouldFetchAnonymizationSaltFromRemoteDevice:(BOOL)a4 completion:(id)a5;
- (void)startSubcredentialProvisioningOnRemoteDeviceForInvitation:(id)a3;
- (void)startSubcredentialProvisioningOnRemoteDeviceForMailboxAddress:(id)a3 activationCode:(id)a4;
- (void)subcredentialProvisioningController:(id)a3 didFinishWithError:(id)a4 inState:(int64_t)a5;
- (void)subcredentialProvisioningController:(id)a3 didFinishWithPass:(id)a4;
- (void)updateSubcredentialMetadataOnPass:(id)a3 withCredential:(id)a4 completion:(id)a5;
@end

@implementation NPKSubcredentialInvitationCoordinator

- (NPKSubcredentialInvitationCoordinator)initWithCallbackQueue:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NPKSubcredentialInvitationCoordinator;
  v5 = [(NPKSubcredentialInvitationCoordinator *)&v13 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.NPKSubcredentialInvitationCoordinator", 0);
    internalQueue = v5->_internalQueue;
    v5->_internalQueue = v6;

    if (v4)
    {
      v8 = v4;
      callbackQueue = v5->_callbackQueue;
      v5->_callbackQueue = v8;
    }

    else
    {
      v10 = MEMORY[0x277D85CD0];
      v11 = MEMORY[0x277D85CD0];
      callbackQueue = v5->_callbackQueue;
      v5->_callbackQueue = v10;
    }
  }

  return v5;
}

- (PKPaymentService)paymentService
{
  paymentService = self->_paymentService;
  if (!paymentService)
  {
    v4 = objc_alloc_init(MEMORY[0x277D380F0]);
    v5 = self->_paymentService;
    self->_paymentService = v4;

    paymentService = self->_paymentService;
  }

  return paymentService;
}

- (NPKStandaloneFirstUnlockCoordinator)firstUnlockCoordinator
{
  firstUnlockCoordinator = self->_firstUnlockCoordinator;
  if (!firstUnlockCoordinator)
  {
    v4 = [NPKStandaloneFirstUnlockCoordinator alloc];
    v5 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
    v6 = [(NPKStandaloneFirstUnlockCoordinator *)v4 initWithQueue:v5];
    v7 = self->_firstUnlockCoordinator;
    self->_firstUnlockCoordinator = v6;

    firstUnlockCoordinator = self->_firstUnlockCoordinator;
  }

  return firstUnlockCoordinator;
}

- (NPKWatchSubcredentialProvisioningService)subcredentialProvisioningService
{
  subcredentialProvisioningService = self->_subcredentialProvisioningService;
  if (!subcredentialProvisioningService)
  {
    v4 = objc_alloc_init(NPKWatchSubcredentialProvisioningService);
    v5 = self->_subcredentialProvisioningService;
    self->_subcredentialProvisioningService = v4;

    subcredentialProvisioningService = self->_subcredentialProvisioningService;
  }

  return subcredentialProvisioningService;
}

+ (BOOL)canAddSecureElementPassWithInvitation:(id)a3
{
  v4 = MEMORY[0x277D37CF0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setSupportedRadioTechnologies:{objc_msgSend(v5, "supportedRadioTechnologies")}];
  v7 = [v5 manufacturerIdentifier];
  [v6 setManufacturerIdentifier:v7];

  v8 = [v5 brandIdentifier];

  [v6 setIssuerIdentifier:v8];
  LOBYTE(a1) = [a1 canAddSecureElementPassWithConfiguration:v6 outError:0];

  return a1;
}

+ (BOOL)canAddSecureElementPassWithConfiguration:(id)a3 outError:(id *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D37FC0]);
    v7 = [v6 canAddSecureElementPassWithConfiguration:v5 outError:a4];
  }

  else
  {
    v8 = pk_General_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v15 = 138543618;
        v16 = v12;
        v17 = 2112;
        v18 = 0;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_ERROR, "Error: %{public}@: Expected to have a configuration but instead found %@!", &v15, 0x16u);
      }
    }

    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)canAcceptInvitation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__NPKSubcredentialInvitationCoordinator_canAcceptInvitation_completion___block_invoke;
  v11[3] = &unk_279945A98;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __72__NPKSubcredentialInvitationCoordinator_canAcceptInvitation_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = *(a1 + 32);
      v9 = _Block_copy(*(a1 + 40));
      *buf = 138543874;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Checking whether pass library can accept invitation: %@ completion: %@", buf, 0x20u);
    }
  }

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __72__NPKSubcredentialInvitationCoordinator_canAcceptInvitation_completion___block_invoke_60;
  v15 = &unk_279945A70;
  objc_copyWeak(&v17, (a1 + 48));
  v16 = *(a1 + 40);
  v10 = _Block_copy(&v12);
  [WeakRetained _queue_canAcceptInvitation:*(a1 + 32) completion:{v10, v12, v13, v14, v15}];

  objc_destroyWeak(&v17);
  v11 = *MEMORY[0x277D85DE8];
}

void __72__NPKSubcredentialInvitationCoordinator_canAcceptInvitation_completion___block_invoke_60(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__NPKSubcredentialInvitationCoordinator_canAcceptInvitation_completion___block_invoke_2;
  block[3] = &unk_279945A48;
  block[4] = WeakRetained;
  v8 = v3;
  v9 = *(a1 + 32);
  v6 = v3;
  dispatch_async(v5, block);
}

uint64_t __72__NPKSubcredentialInvitationCoordinator_canAcceptInvitation_completion___block_invoke_2(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = a1[5];
      v12 = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Invoking completion with error: %@", &v12, 0x16u);
    }
  }

  v9 = a1[5];
  result = (*(a1[6] + 16))();
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)listSubcredentialInvitationsWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__NPKSubcredentialInvitationCoordinator_listSubcredentialInvitationsWithCompletion___block_invoke;
  block[3] = &unk_279945468;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __84__NPKSubcredentialInvitationCoordinator_listSubcredentialInvitationsWithCompletion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138543362;
      v17 = v7;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Listing subcredential invitations", buf, 0xCu);
    }
  }

  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __84__NPKSubcredentialInvitationCoordinator_listSubcredentialInvitationsWithCompletion___block_invoke_63;
  v13 = &unk_279945AC0;
  objc_copyWeak(&v15, (a1 + 40));
  v14 = *(a1 + 32);
  v8 = _Block_copy(&v10);
  [WeakRetained _queue_listSubcredentialInvitationsWithCompletion:{v8, v10, v11, v12, v13}];

  objc_destroyWeak(&v15);
  v9 = *MEMORY[0x277D85DE8];
}

void __84__NPKSubcredentialInvitationCoordinator_listSubcredentialInvitationsWithCompletion___block_invoke_63(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__NPKSubcredentialInvitationCoordinator_listSubcredentialInvitationsWithCompletion___block_invoke_2;
  block[3] = &unk_279945A48;
  block[4] = WeakRetained;
  v8 = v3;
  v9 = *(a1 + 32);
  v6 = v3;
  dispatch_async(v5, block);
}

uint64_t __84__NPKSubcredentialInvitationCoordinator_listSubcredentialInvitationsWithCompletion___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [*(a1 + 40) description];
      v12 = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Invoking completion with invitations: %@", &v12, 0x16u);
    }
  }

  v9 = *(a1 + 40);
  result = (*(*(a1 + 48) + 16))();
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)startProvisioningWithInvitationIdentifier:(id)a3 metadata:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitationIdentifier_metadata_completion___block_invoke;
  aBlock[3] = &unk_279945B60;
  objc_copyWeak(&v24, &location);
  v11 = v8;
  v21 = v11;
  v12 = v9;
  v22 = v12;
  v13 = v10;
  v23 = v13;
  v14 = _Block_copy(aBlock);
  v15 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitationIdentifier_metadata_completion___block_invoke_5;
  block[3] = &unk_279945468;
  objc_copyWeak(&v19, &location);
  v18 = v14;
  v16 = v14;
  dispatch_async(v15, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitationIdentifier_metadata_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = _Block_copy(*(a1 + 48));
      *buf = 138544130;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Begin provisioning with invitation identifier: %@ metadata: %@ completion: %@", buf, 0x2Au);
    }
  }

  [WeakRetained setCompletion:*(a1 + 48)];
  [WeakRetained _setUpSubcredentialProvisioningController];
  v11 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitationIdentifier_metadata_completion___block_invoke_65;
  v13[3] = &unk_279945B38;
  objc_copyWeak(&v15, (a1 + 56));
  v14 = *(a1 + 40);
  [WeakRetained _fetchInvitationWithIdentifier:v11 completion:v13];

  objc_destroyWeak(&v15);
  v12 = *MEMORY[0x277D85DE8];
}

void __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitationIdentifier_metadata_completion___block_invoke_65(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitationIdentifier_metadata_completion___block_invoke_2;
  v6[3] = &unk_279945B10;
  v6[4] = WeakRetained;
  objc_copyWeak(&v9, (a1 + 40));
  v5 = v3;
  v7 = v5;
  v8 = *(a1 + 32);
  [WeakRetained canAcceptInvitation:v5 completion:v6];

  objc_destroyWeak(&v9);
}

void __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitationIdentifier_metadata_completion___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] internalQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitationIdentifier_metadata_completion___block_invoke_3;
  v6[3] = &unk_279945308;
  objc_copyWeak(&v10, a1 + 7);
  v7 = v3;
  v8 = a1[5];
  v9 = a1[6];
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v10);
}

void __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitationIdentifier_metadata_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (*(a1 + 32))
  {
    [WeakRetained _handleProvisioningAttemptForConfiguration:0 error:?];
  }

  else
  {
    v4 = [WeakRetained subcredentialProvisioningController];
    [v3 _setUpSharingSessionWithSubcredentialProvisioningController:v4 forInvitation:*(a1 + 40)];

    v5 = *(a1 + 40);
    v6 = [v3 sharingSession];
    v7 = *(a1 + 48);
    v8 = [v3 _paymentWebService];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitationIdentifier_metadata_completion___block_invoke_4;
    v9[3] = &unk_279945AE8;
    objc_copyWeak(&v10, (a1 + 56));
    [v3 _makeConfigurationForInvitation:v5 session:v6 metadata:v7 paymentWebService:v8 completion:v9];

    objc_destroyWeak(&v10);
  }
}

void __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitationIdentifier_metadata_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleProvisioningAttemptForConfiguration:v6 error:v5];
}

void __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitationIdentifier_metadata_completion___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performBlockFollowingFirstUnlockWithBlock:*(a1 + 32)];
}

- (void)startProvisioningWithInvitation:(id)a3 metadata:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitation_metadata_completion___block_invoke;
  aBlock[3] = &unk_279945B60;
  objc_copyWeak(&v24, &location);
  v11 = v8;
  v21 = v11;
  v12 = v9;
  v22 = v12;
  v13 = v10;
  v23 = v13;
  v14 = _Block_copy(aBlock);
  v15 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitation_metadata_completion___block_invoke_4;
  block[3] = &unk_279945468;
  objc_copyWeak(&v19, &location);
  v18 = v14;
  v16 = v14;
  dispatch_async(v15, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __93__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitation_metadata_completion___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = _Block_copy(*(a1 + 48));
      *buf = 138544130;
      v22 = v7;
      v23 = 2112;
      v24 = v8;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Begin provisioning with invitation: %@ metadata: %@ completion: %@", buf, 0x2Au);
    }
  }

  [WeakRetained setCompletion:*(a1 + 48)];
  [WeakRetained _setUpSubcredentialProvisioningController];
  if (*(a1 + 32))
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __93__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitation_metadata_completion___block_invoke_68;
    v18 = &unk_279945B88;
    objc_copyWeak(&v20, (a1 + 56));
    v19 = *(a1 + 40);
    v11 = _Block_copy(&v15);
    v12 = [*(a1 + 32) type];
    if (v12)
    {
      if (v12 == 1)
      {
        (*(v11 + 2))(v11, *(a1 + 32), 0);
      }
    }

    else
    {
      [WeakRetained deviceContainsInvitationMatchingInvitation:*(a1 + 32) withTimeout:60 completion:v11];
    }

    objc_destroyWeak(&v20);
  }

  else
  {
    v13 = [WeakRetained _errorWithCode:0 message:@"Unable to start provisioning - insufficient information"];
    [WeakRetained _handleProvisioningAttemptForConfiguration:0 error:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __93__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitation_metadata_completion___block_invoke_68(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitation_metadata_completion___block_invoke_2;
  block[3] = &unk_279945290;
  objc_copyWeak(&v10, (a1 + 40));
  v8 = v3;
  v9 = *(a1 + 32);
  v6 = v3;
  dispatch_async(v5, block);

  objc_destroyWeak(&v10);
}

void __93__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitation_metadata_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained subcredentialProvisioningController];
  [WeakRetained _setUpSharingSessionWithSubcredentialProvisioningController:v3 forInvitation:*(a1 + 32)];

  v4 = *(a1 + 32);
  v5 = [WeakRetained sharingSession];
  v6 = *(a1 + 40);
  v7 = [WeakRetained _paymentWebService];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __93__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitation_metadata_completion___block_invoke_3;
  v8[3] = &unk_279945AE8;
  objc_copyWeak(&v9, (a1 + 48));
  [WeakRetained _makeConfigurationForInvitation:v4 session:v5 metadata:v6 paymentWebService:v7 completion:v8];

  objc_destroyWeak(&v9);
}

void __93__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitation_metadata_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleProvisioningAttemptForConfiguration:v6 error:v5];
}

void __93__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitation_metadata_completion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performBlockFollowingFirstUnlockWithBlock:*(a1 + 32)];
}

- (void)deviceContainsInvitationMatchingInvitation:(id)a3 withTimeout:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v10 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __107__NPKSubcredentialInvitationCoordinator_deviceContainsInvitationMatchingInvitation_withTimeout_completion___block_invoke;
  block[3] = &unk_279945C00;
  objc_copyWeak(v16, &location);
  v16[1] = a4;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __107__NPKSubcredentialInvitationCoordinator_deviceContainsInvitationMatchingInvitation_withTimeout_completion___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = *(a1 + 56);
      v9 = *(a1 + 32);
      v10 = _Block_copy(*(a1 + 40));
      *buf = 138544130;
      v20 = v7;
      v21 = 2112;
      v22 = v9;
      v23 = 2048;
      v24 = v8;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Checking whether device contains invitation matching invitation: %@ timeout: %lu completion: %@", buf, 0x2Au);
    }
  }

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __107__NPKSubcredentialInvitationCoordinator_deviceContainsInvitationMatchingInvitation_withTimeout_completion___block_invoke_73;
  v16 = &unk_279945BD8;
  objc_copyWeak(&v18, (a1 + 48));
  v17 = *(a1 + 40);
  v11 = _Block_copy(&v13);
  [WeakRetained _queue_deviceContainsInvitationMatchingInvitation:*(a1 + 32) withTimeout:*(a1 + 56) completion:{v11, v13, v14, v15, v16}];

  objc_destroyWeak(&v18);
  v12 = *MEMORY[0x277D85DE8];
}

void __107__NPKSubcredentialInvitationCoordinator_deviceContainsInvitationMatchingInvitation_withTimeout_completion___block_invoke_73(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained callbackQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __107__NPKSubcredentialInvitationCoordinator_deviceContainsInvitationMatchingInvitation_withTimeout_completion___block_invoke_2;
  v11[3] = &unk_279945BB0;
  v11[4] = WeakRetained;
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 32);
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, v11);
}

uint64_t __107__NPKSubcredentialInvitationCoordinator_deviceContainsInvitationMatchingInvitation_withTimeout_completion___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [*(a1 + 40) description];
      v9 = [*(a1 + 48) description];
      v14 = 138543874;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Invoking completion with invitation: %@ error: %@", &v14, 0x20u);
    }
  }

  v10 = *(a1 + 48);
  v11 = *(a1 + 40);
  result = (*(*(a1 + 56) + 16))();
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)accountAttestationAnonymizationSaltWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__NPKSubcredentialInvitationCoordinator_accountAttestationAnonymizationSaltWithCompletion___block_invoke;
  block[3] = &unk_279945468;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __91__NPKSubcredentialInvitationCoordinator_accountAttestationAnonymizationSaltWithCompletion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138543362;
      v17 = v7;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Fetching account attestation anonymization salt", buf, 0xCu);
    }
  }

  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __91__NPKSubcredentialInvitationCoordinator_accountAttestationAnonymizationSaltWithCompletion___block_invoke_74;
  v13 = &unk_279945C28;
  objc_copyWeak(&v15, (a1 + 40));
  v14 = *(a1 + 32);
  v8 = _Block_copy(&v10);
  [WeakRetained _queue_accountAttestationAnonymizationSaltWithCompletion:{v8, v10, v11, v12, v13}];

  objc_destroyWeak(&v15);
  v9 = *MEMORY[0x277D85DE8];
}

void __91__NPKSubcredentialInvitationCoordinator_accountAttestationAnonymizationSaltWithCompletion___block_invoke_74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained callbackQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__NPKSubcredentialInvitationCoordinator_accountAttestationAnonymizationSaltWithCompletion___block_invoke_2;
  v11[3] = &unk_279945BB0;
  v11[4] = WeakRetained;
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 32);
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, v11);
}

uint64_t __91__NPKSubcredentialInvitationCoordinator_accountAttestationAnonymizationSaltWithCompletion___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [*(a1 + 40) description];
      v9 = [*(a1 + 48) description];
      v14 = 138543874;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Invoking completion with anonymizationSalt: %@ error: %@", &v14, 0x20u);
    }
  }

  v10 = *(a1 + 48);
  v11 = *(a1 + 40);
  result = (*(*(a1 + 56) + 16))();
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setAccountAttestationAnonymizationSalt:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__NPKSubcredentialInvitationCoordinator_setAccountAttestationAnonymizationSalt_completion___block_invoke;
  v11[3] = &unk_279945A98;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __91__NPKSubcredentialInvitationCoordinator_setAccountAttestationAnonymizationSalt_completion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = *(a1 + 32);
      *buf = 138543618;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Setting account attestation anonymization salt: %@", buf, 0x16u);
    }
  }

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __91__NPKSubcredentialInvitationCoordinator_setAccountAttestationAnonymizationSalt_completion___block_invoke_76;
  v14 = &unk_279945A70;
  objc_copyWeak(&v16, (a1 + 48));
  v15 = *(a1 + 40);
  v9 = _Block_copy(&v11);
  [WeakRetained _queue_setAccountAttestationAnonymizationSalt:*(a1 + 32) completion:{v9, v11, v12, v13, v14}];

  objc_destroyWeak(&v16);
  v10 = *MEMORY[0x277D85DE8];
}

void __91__NPKSubcredentialInvitationCoordinator_setAccountAttestationAnonymizationSalt_completion___block_invoke_76(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__NPKSubcredentialInvitationCoordinator_setAccountAttestationAnonymizationSalt_completion___block_invoke_2;
  block[3] = &unk_279945A48;
  block[4] = WeakRetained;
  v8 = v3;
  v9 = *(a1 + 32);
  v6 = v3;
  dispatch_async(v5, block);
}

uint64_t __91__NPKSubcredentialInvitationCoordinator_setAccountAttestationAnonymizationSalt_completion___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [*(a1 + 40) description];
      v12 = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Invoking completion with error: %@", &v12, 0x16u);
    }
  }

  v9 = *(a1 + 40);
  result = (*(*(a1 + 48) + 16))();
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)requestSubcredentialInvitation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__NPKSubcredentialInvitationCoordinator_requestSubcredentialInvitation_completion___block_invoke;
  v11[3] = &unk_279945A98;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __83__NPKSubcredentialInvitationCoordinator_requestSubcredentialInvitation_completion___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = *(a1 + 32);
      *buf = 138543618;
      v20 = v7;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Requesting subcredential invitation: %@", buf, 0x16u);
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__NPKSubcredentialInvitationCoordinator_requestSubcredentialInvitation_completion___block_invoke_77;
  aBlock[3] = &unk_279945C78;
  objc_copyWeak(&v18, (a1 + 48));
  v10 = *(a1 + 32);
  v9 = (a1 + 32);
  v16 = v10;
  v17 = v9[1];
  v11 = _Block_copy(aBlock);
  v12 = *v9;
  v13 = [*v9 originatorIDSHandle];
  [WeakRetained _queue_requestSubcredentialInvitation:v12 fromIDSHandle:v13 completion:v11];

  objc_destroyWeak(&v18);
  v14 = *MEMORY[0x277D85DE8];
}

void __83__NPKSubcredentialInvitationCoordinator_requestSubcredentialInvitation_completion___block_invoke_77(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = [WeakRetained callbackQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__NPKSubcredentialInvitationCoordinator_requestSubcredentialInvitation_completion___block_invoke_2;
  v8[3] = &unk_279945C50;
  v8[4] = WeakRetained;
  v9 = a1[4];
  v6 = a1[5];
  v10 = v3;
  v11 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

uint64_t __83__NPKSubcredentialInvitationCoordinator_requestSubcredentialInvitation_completion___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [*(a1 + 40) description];
      v12 = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Invoking completion with invitation: %@", &v12, 0x16u);
    }
  }

  v9 = *(a1 + 48);
  result = (*(*(a1 + 56) + 16))();
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)updateSubcredentialMetadataOnPass:(id)a3 withCredential:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__NPKSubcredentialInvitationCoordinator_updateSubcredentialMetadataOnPass_withCredential_completion___block_invoke;
  block[3] = &unk_279945B60;
  objc_copyWeak(&v19, &location);
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __101__NPKSubcredentialInvitationCoordinator_updateSubcredentialMetadataOnPass_withCredential_completion___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = _Block_copy(*(a1 + 48));
      *buf = 138544130;
      v20 = v7;
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Updating metadata on pass: %@ with credential: %@ completion: %@", buf, 0x2Au);
    }
  }

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __101__NPKSubcredentialInvitationCoordinator_updateSubcredentialMetadataOnPass_withCredential_completion___block_invoke_78;
  v16 = &unk_279945CA0;
  objc_copyWeak(&v18, (a1 + 56));
  v17 = *(a1 + 48);
  v11 = _Block_copy(&v13);
  [WeakRetained _queue_updateSubcredentialMetadataOnPass:*(a1 + 32) withCredential:*(a1 + 40) completion:{v11, v13, v14, v15, v16}];

  objc_destroyWeak(&v18);
  v12 = *MEMORY[0x277D85DE8];
}

void __101__NPKSubcredentialInvitationCoordinator_updateSubcredentialMetadataOnPass_withCredential_completion___block_invoke_78(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__NPKSubcredentialInvitationCoordinator_updateSubcredentialMetadataOnPass_withCredential_completion___block_invoke_2;
  block[3] = &unk_279945A48;
  block[4] = WeakRetained;
  v8 = v3;
  v9 = *(a1 + 32);
  v6 = v3;
  dispatch_async(v5, block);
}

uint64_t __101__NPKSubcredentialInvitationCoordinator_updateSubcredentialMetadataOnPass_withCredential_completion___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [*(a1 + 40) description];
      v12 = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Invoking completion with pass: %@", &v12, 0x16u);
    }
  }

  v9 = *(a1 + 40);
  result = (*(*(a1 + 48) + 16))();
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)registerCredentialsWithIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__NPKSubcredentialInvitationCoordinator_registerCredentialsWithIdentifiers_completion___block_invoke;
  v11[3] = &unk_279945A98;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __87__NPKSubcredentialInvitationCoordinator_registerCredentialsWithIdentifiers_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = *(a1 + 32);
      v9 = _Block_copy(*(a1 + 40));
      *buf = 138543874;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Registering credentials with identifiers: %@ completion: %@", buf, 0x20u);
    }
  }

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __87__NPKSubcredentialInvitationCoordinator_registerCredentialsWithIdentifiers_completion___block_invoke_80;
  v15 = &unk_279945CC8;
  objc_copyWeak(&v17, (a1 + 48));
  v16 = *(a1 + 40);
  v10 = _Block_copy(&v12);
  [WeakRetained _queue_registerCredentialsWithIdentifiers:*(a1 + 32) completion:{v10, v12, v13, v14, v15}];

  objc_destroyWeak(&v17);
  v11 = *MEMORY[0x277D85DE8];
}

void __87__NPKSubcredentialInvitationCoordinator_registerCredentialsWithIdentifiers_completion___block_invoke_80(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained callbackQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__NPKSubcredentialInvitationCoordinator_registerCredentialsWithIdentifiers_completion___block_invoke_2;
  v11[3] = &unk_279945BB0;
  v11[4] = WeakRetained;
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 32);
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, v11);
}

uint64_t __87__NPKSubcredentialInvitationCoordinator_registerCredentialsWithIdentifiers_completion___block_invoke_2(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = a1[5];
      v9 = a1[6];
      v14 = 138543874;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Invoking completion with passes: %@ errors: %@", &v14, 0x20u);
    }
  }

  v10 = a1[6];
  v11 = a1[5];
  result = (*(a1[7] + 16))();
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)revokeCredentialsWithIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85__NPKSubcredentialInvitationCoordinator_revokeCredentialsWithIdentifiers_completion___block_invoke;
  v11[3] = &unk_279945A98;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __85__NPKSubcredentialInvitationCoordinator_revokeCredentialsWithIdentifiers_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = *(a1 + 32);
      v9 = _Block_copy(*(a1 + 40));
      *buf = 138543874;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Revoking credentials with identifiers: %@ completion: %@", buf, 0x20u);
    }
  }

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __85__NPKSubcredentialInvitationCoordinator_revokeCredentialsWithIdentifiers_completion___block_invoke_82;
  v15 = &unk_279945D18;
  objc_copyWeak(&v17, (a1 + 48));
  v16 = *(a1 + 40);
  v10 = _Block_copy(&v12);
  [WeakRetained _queue_revokeCredentialsWithIdentifiers:*(a1 + 32) completion:{v10, v12, v13, v14, v15}];

  objc_destroyWeak(&v17);
  v11 = *MEMORY[0x277D85DE8];
}

void __85__NPKSubcredentialInvitationCoordinator_revokeCredentialsWithIdentifiers_completion___block_invoke_82(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__NPKSubcredentialInvitationCoordinator_revokeCredentialsWithIdentifiers_completion___block_invoke_2;
  block[3] = &unk_279945CF0;
  block[4] = WeakRetained;
  v8 = a2;
  v7 = *(a1 + 32);
  dispatch_async(v5, block);
}

uint64_t __85__NPKSubcredentialInvitationCoordinator_revokeCredentialsWithIdentifiers_completion___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = v7;
      v9 = @"NO";
      if (*(a1 + 48))
      {
        v9 = @"YES";
      }

      v13 = 138543618;
      v14 = v7;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Invoking completion with success: %@", &v13, 0x16u);
    }
  }

  v10 = *(a1 + 48);
  result = (*(*(a1 + 40) + 16))();
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)removeSharingInvitation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__NPKSubcredentialInvitationCoordinator_removeSharingInvitation_completion___block_invoke;
  v11[3] = &unk_279945A98;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __76__NPKSubcredentialInvitationCoordinator_removeSharingInvitation_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = *(a1 + 32);
      v9 = _Block_copy(*(a1 + 40));
      *buf = 138543874;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Removing sharing invitation: %@ completion: %@", buf, 0x20u);
    }
  }

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __76__NPKSubcredentialInvitationCoordinator_removeSharingInvitation_completion___block_invoke_90;
  v15 = &unk_279945D18;
  objc_copyWeak(&v17, (a1 + 48));
  v16 = *(a1 + 40);
  v10 = _Block_copy(&v12);
  [WeakRetained _queue_removeSharingInvitation:*(a1 + 32) completion:{v10, v12, v13, v14, v15}];

  objc_destroyWeak(&v17);
  v11 = *MEMORY[0x277D85DE8];
}

void __76__NPKSubcredentialInvitationCoordinator_removeSharingInvitation_completion___block_invoke_90(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__NPKSubcredentialInvitationCoordinator_removeSharingInvitation_completion___block_invoke_2;
  block[3] = &unk_279945CF0;
  block[4] = WeakRetained;
  v8 = a2;
  v7 = *(a1 + 32);
  dispatch_async(v5, block);
}

uint64_t __76__NPKSubcredentialInvitationCoordinator_removeSharingInvitation_completion___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = v7;
      v9 = @"NO";
      if (*(a1 + 48))
      {
        v9 = @"YES";
      }

      v13 = 138543618;
      v14 = v7;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Invoking completion with success: %@", &v13, 0x16u);
    }
  }

  v10 = *(a1 + 48);
  result = (*(*(a1 + 40) + 16))();
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)declineRelatedInvitationsIfNecessaryForInvitation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __102__NPKSubcredentialInvitationCoordinator_declineRelatedInvitationsIfNecessaryForInvitation_completion___block_invoke;
  v11[3] = &unk_279945A98;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __102__NPKSubcredentialInvitationCoordinator_declineRelatedInvitationsIfNecessaryForInvitation_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = *(a1 + 32);
      v9 = _Block_copy(*(a1 + 40));
      *buf = 138543874;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Declining related invitations if necessary for invitation: %@ completion: %@", buf, 0x20u);
    }
  }

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __102__NPKSubcredentialInvitationCoordinator_declineRelatedInvitationsIfNecessaryForInvitation_completion___block_invoke_91;
  v15 = &unk_279945D18;
  objc_copyWeak(&v17, (a1 + 48));
  v16 = *(a1 + 40);
  v10 = _Block_copy(&v12);
  [WeakRetained _queue_declineRelatedInvitationsIfNecessaryForInvitation:*(a1 + 32) completion:{v10, v12, v13, v14, v15}];

  objc_destroyWeak(&v17);
  v11 = *MEMORY[0x277D85DE8];
}

void __102__NPKSubcredentialInvitationCoordinator_declineRelatedInvitationsIfNecessaryForInvitation_completion___block_invoke_91(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__NPKSubcredentialInvitationCoordinator_declineRelatedInvitationsIfNecessaryForInvitation_completion___block_invoke_2;
  block[3] = &unk_279945CF0;
  block[4] = WeakRetained;
  v8 = a2;
  v7 = *(a1 + 32);
  dispatch_async(v5, block);
}

uint64_t __102__NPKSubcredentialInvitationCoordinator_declineRelatedInvitationsIfNecessaryForInvitation_completion___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = v7;
      v9 = @"NO";
      if (*(a1 + 48))
      {
        v9 = @"YES";
      }

      v13 = 138543618;
      v14 = v7;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Invoking completion with didDeclineInvitations: %@", &v13, 0x16u);
    }
  }

  v10 = *(a1 + 48);
  result = (*(*(a1 + 40) + 16))();
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __119__NPKSubcredentialInvitationCoordinator_fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion___block_invoke;
  block[3] = &unk_279945468;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __119__NPKSubcredentialInvitationCoordinator_fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = _Block_copy(*(a1 + 32));
      *buf = 138543618;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Initializing account attestation anonymization salt if necessary with completion: %@", buf, 0x16u);
    }
  }

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __119__NPKSubcredentialInvitationCoordinator_fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion___block_invoke_92;
  v14 = &unk_279945C28;
  objc_copyWeak(&v16, (a1 + 40));
  v15 = *(a1 + 32);
  v9 = _Block_copy(&v11);
  [WeakRetained _queue_fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion:{v9, v11, v12, v13, v14}];

  objc_destroyWeak(&v16);
  v10 = *MEMORY[0x277D85DE8];
}

void __119__NPKSubcredentialInvitationCoordinator_fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion___block_invoke_92(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained callbackQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __119__NPKSubcredentialInvitationCoordinator_fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion___block_invoke_2;
  v11[3] = &unk_279945BB0;
  v11[4] = WeakRetained;
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 32);
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, v11);
}

uint64_t __119__NPKSubcredentialInvitationCoordinator_fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion___block_invoke_2(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = a1[5];
      v9 = a1[6];
      v14 = 138543874;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Invoking completion with anonymization salt: %@ error: %@", &v14, 0x20u);
    }
  }

  v10 = a1[6];
  v11 = a1[5];
  result = (*(a1[7] + 16))();
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)canAcceptInvitationOnRemoteDeviceForInvitation:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Sending can accept invitation on remote device request for invitation: %@", &v15, 0x16u);
    }
  }

  v13 = [(NPKSubcredentialInvitationCoordinator *)self subcredentialProvisioningService];
  [v13 sendCanAcceptInvitationOnRemoteDeviceRequestForInvitation:v6 completion:v7];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)startSubcredentialProvisioningOnRemoteDeviceForInvitation:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __99__NPKSubcredentialInvitationCoordinator_startSubcredentialProvisioningOnRemoteDeviceForInvitation___block_invoke;
  v6[3] = &unk_279945D40;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(NPKSubcredentialInvitationCoordinator *)self accountAttestationAnonymizationSaltWithCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __99__NPKSubcredentialInvitationCoordinator_startSubcredentialProvisioningOnRemoteDeviceForInvitation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v5 || v6)
  {
    v10 = pk_General_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      if (!v11)
      {
        goto LABEL_13;
      }

      v12 = pk_General_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v20 = 138543618;
        v21 = v14;
        v22 = 2112;
        v23 = v6;
        v15 = "Warning: %{public}@: Expected to initiate subcredential provisioning on the remote device, but encountered an error: %@";
        v16 = v12;
        v17 = 22;
LABEL_11:
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, v15, &v20, v17);
      }
    }

    else
    {
      if (!v11)
      {
        goto LABEL_13;
      }

      v12 = pk_General_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v18 = objc_opt_class();
        v14 = NSStringFromClass(v18);
        v20 = 138543874;
        v21 = v14;
        v22 = 2112;
        v23 = 0;
        v24 = 2112;
        v25 = v6;
        v15 = "Warning: %{public}@: Expected to initiate subcredential provisioning on the remote device, but failed to obtain the anonymizationSalt: %@ error: %@";
        v16 = v12;
        v17 = 32;
        goto LABEL_11;
      }
    }

    goto LABEL_13;
  }

  v8 = objc_alloc_init(MEMORY[0x277D37D68]);
  [v8 setAnonymizationSalt:v5];
  v9 = [WeakRetained subcredentialProvisioningService];
  [v9 sendAcceptSubcredentialProvisioningRequestForInvitation:*(a1 + 32) metadata:v8];

LABEL_13:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)startProvisioningWithMailboxAddress:(id)a3 activationCode:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithMailboxAddress_activationCode_completion___block_invoke;
  aBlock[3] = &unk_279945D90;
  objc_copyWeak(&v25, &location);
  v11 = v8;
  v21 = v11;
  v12 = v9;
  v22 = v12;
  v13 = v10;
  v23 = self;
  v24 = v13;
  v14 = _Block_copy(aBlock);
  v15 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithMailboxAddress_activationCode_completion___block_invoke_98;
  v17[3] = &unk_279945468;
  objc_copyWeak(&v19, &location);
  v18 = v14;
  v16 = v14;
  dispatch_async(v15, v17);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithMailboxAddress_activationCode_completion___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = _Block_copy(*(a1 + 56));
      *buf = 138544131;
      v24 = v7;
      v25 = 2113;
      v26 = v8;
      v27 = 2113;
      v28 = v9;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Begin provisioning with mailbox address: %{private}@, activation code: %{private}@, completion: %@", buf, 0x2Au);
    }
  }

  [WeakRetained setCompletion:*(a1 + 56)];
  if ([*(a1 + 32) length])
  {
    v11 = objc_alloc_init(MEMORY[0x277D380F0]);
    v12 = *(a1 + 32);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithMailboxAddress_activationCode_completion___block_invoke_94;
    v17[3] = &unk_279945D68;
    v18 = v12;
    v19 = WeakRetained;
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v20 = v13;
    v21 = v14;
    v22 = v15;
    [v11 retrieveShareInvitationForMailboxAddress:v18 completion:v17];
  }

  else
  {
    v11 = [WeakRetained _errorWithCode:0 message:@"Unable to start provisioning - insufficient information"];
    [WeakRetained _handleProvisioningAttemptForConfiguration:0 error:v11];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithMailboxAddress_activationCode_completion___block_invoke_94(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = MEMORY[0x277D37D60];
    v9 = v5;
    v10 = [[v8 alloc] initWithCrossPlatformInvitation:v9];
    [v10 setActivationCode:*(a1 + 48)];
    [*(a1 + 56) startProvisioningWithInvitation:v10 metadata:0 completion:*(a1 + 64)];
  }

  else
  {
    v11 = pk_General_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

    if (v12)
    {
      v13 = pk_General_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 32);
        v16 = 138478339;
        v17 = v5;
        v18 = 2113;
        v19 = v14;
        v20 = 2112;
        v21 = v7;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_ERROR, "Error: Unable to start provisioning for invitation: %{private}@. mailboxAddress: %{private}@. Error: %@", &v16, 0x20u);
      }
    }

    [*(a1 + 40) _handleProvisioningAttemptForConfiguration:0 error:v7];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithMailboxAddress_activationCode_completion___block_invoke_98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performBlockFollowingFirstUnlockWithBlock:*(a1 + 32)];
}

- (void)startSubcredentialProvisioningOnRemoteDeviceForMailboxAddress:(id)a3 activationCode:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v8 = [(NPKSubcredentialInvitationCoordinator *)self subcredentialProvisioningService];
    [v8 sendAcceptSubcredentialProvisioningRequestForMailboxAddress:v6 activationCode:v7];
  }

  else
  {
    v9 = pk_General_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = pk_General_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v15 = 138543362;
        v16 = v13;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Expected to initiate subcredential provisioning on the remote device, but failed to obtain the mailboxAddress.", &v15, 0xCu);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)startSubcredentialProvisioningOnLocalDeviceMatchingInvitation:(id)a3 shouldFetchAnonymizationSaltFromRemoteDevice:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138543874;
      v47 = v14;
      v48 = 2112;
      v49 = v8;
      v50 = 2048;
      v51 = [v8 type];
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Start local device provisioning with invitation: %@ of type %lu", buf, 0x20u);
    }
  }

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __159__NPKSubcredentialInvitationCoordinator_startSubcredentialProvisioningOnLocalDeviceMatchingInvitation_shouldFetchAnonymizationSaltFromRemoteDevice_completion___block_invoke;
  aBlock[3] = &unk_279945DE0;
  objc_copyWeak(&v42, &location);
  v15 = v8;
  v39 = v15;
  v16 = v9;
  v40 = self;
  v41 = v16;
  v17 = _Block_copy(aBlock);
  if (v6)
  {
    v18 = [(NPKSubcredentialInvitationCoordinator *)self subcredentialProvisioningService];
    v19 = [v18 isPairedDeviceConnected];

    if (v19)
    {
      v20 = pk_General_log();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

      if (v21)
      {
        v22 = pk_General_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          *buf = 138543362;
          v47 = v24;
          _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Remote device is connected.", buf, 0xCu);
        }
      }

      v25 = [(NPKSubcredentialInvitationCoordinator *)self subcredentialProvisioningService];
      [v25 fetchAccountAttestationAnonymizationSaltOnRemoteDeviceWithCompletion:v17];
    }

    else
    {
      v26 = pk_General_log();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

      if (v27)
      {
        v28 = pk_General_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          *buf = 138543362;
          v47 = v30;
          _os_log_impl(&dword_25B300000, v28, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Remote device is not connected; failing immediately...", buf, 0xCu);
        }
      }

      v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v32 = [v31 localizedStringForKey:@"COMPANION_UNREACHABLE_ALERT_TITLE" value:&stru_286C934F8 table:@"NanoPassKit"];
      v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v34 = [v33 localizedStringForKey:@"COMPANION_UNREACHABLE_ALERT_MESSAGE" value:&stru_286C934F8 table:@"NanoPassKit"];
      v25 = PKDisplayableErrorCustom();

      v44 = *MEMORY[0x277CCA7E8];
      v45 = v25;
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v36 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D389E0] code:19 userInfo:v35];
      v17[2](v17, 0, v36);
    }
  }

  else
  {
    [(NPKSubcredentialInvitationCoordinator *)self fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion:v17];
  }

  objc_destroyWeak(&v42);
  objc_destroyWeak(&location);

  v37 = *MEMORY[0x277D85DE8];
}

void __159__NPKSubcredentialInvitationCoordinator_startSubcredentialProvisioningOnLocalDeviceMatchingInvitation_shouldFetchAnonymizationSaltFromRemoteDevice_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (!v5 || v6)
  {
    if (a1[6])
    {
      if (!v6)
      {
        if (v5)
        {
          v10 = @"An unknown error occurred!";
          v11 = 0;
        }

        else
        {
          v10 = @"Unable to start provisioning on local device without an anonymization salt";
          v11 = 3;
        }

        v6 = [a1[5] _errorWithCode:v11 message:v10];
      }

      (*(a1[6] + 2))();
    }
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277D37D68]);
    [v8 setAnonymizationSalt:v5];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __159__NPKSubcredentialInvitationCoordinator_startSubcredentialProvisioningOnLocalDeviceMatchingInvitation_shouldFetchAnonymizationSaltFromRemoteDevice_completion___block_invoke_2;
    v12[3] = &unk_279945DB8;
    objc_copyWeak(&v16, a1 + 7);
    v13 = a1[4];
    v9 = v8;
    v14 = v9;
    v15 = a1[6];
    [WeakRetained setAccountAttestationAnonymizationSalt:v5 completion:v12];

    objc_destroyWeak(&v16);
    v6 = 0;
  }
}

void __159__NPKSubcredentialInvitationCoordinator_startSubcredentialProvisioningOnLocalDeviceMatchingInvitation_shouldFetchAnonymizationSaltFromRemoteDevice_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [WeakRetained startProvisioningWithInvitation:*(a1 + 32) metadata:*(a1 + 40) completion:*(a1 + 48)];
  }
}

- (void)subcredentialProvisioningController:(id)a3 didFinishWithError:(id)a4 inState:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  objc_initWeak(&location, self);
  v10 = [(NPKSubcredentialInvitationCoordinator *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__NPKSubcredentialInvitationCoordinator_subcredentialProvisioningController_didFinishWithError_inState___block_invoke;
  block[3] = &unk_279945E08;
  objc_copyWeak(v16, &location);
  v14 = v8;
  v15 = v9;
  v16[1] = a5;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __104__NPKSubcredentialInvitationCoordinator_subcredentialProvisioningController_didFinishWithError_inState___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = *(a1 + 56);
      v12 = 138544130;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2048;
      v19 = v10;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Subcredential provisioning controller %@ did finish with error: %@ in state: %lu", &v12, 0x2Au);
    }
  }

  [WeakRetained _endProvisioningWithPassForInvitation:0 error:*(a1 + 40)];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)subcredentialProvisioningController:(id)a3 didFinishWithPass:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(NPKSubcredentialInvitationCoordinator *)self callbackQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __95__NPKSubcredentialInvitationCoordinator_subcredentialProvisioningController_didFinishWithPass___block_invoke;
  v11[3] = &unk_279945290;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __95__NPKSubcredentialInvitationCoordinator_subcredentialProvisioningController_didFinishWithPass___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = 138543874;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Subcredential provisioning controller %@ did finish with pass: %@", &v11, 0x20u);
    }
  }

  [WeakRetained _endProvisioningWithPassForInvitation:*(a1 + 40) error:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_canAcceptInvitation:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(NPKSubcredentialInvitationCoordinator *)self _paymentWebService];
  v10 = [v9 targetDevice];

  if (objc_opt_respondsToSelector())
  {
    v11 = [(NPKSubcredentialInvitationCoordinator *)self _paymentWebService];
    [v10 paymentWebService:v11 canAcceptInvitation:v6 withCompletionV2:v7];
LABEL_9:

    goto LABEL_10;
  }

  v12 = pk_General_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_General_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v18 = 138543362;
      v19 = v16;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Target device does not respond to -[paymentWebService:canAcceptInvitation:withCompletionV2:]", &v18, 0xCu);
    }
  }

  if (v7)
  {
    v11 = [(NPKSubcredentialInvitationCoordinator *)self _errorWithCode:1 message:@"Unable to attempt to accept invitation"];
    v7[2](v7, v11);
    goto LABEL_9;
  }

LABEL_10:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_queue_listSubcredentialInvitationsWithCompletion:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(NPKSubcredentialInvitationCoordinator *)self _paymentWebService];
  v7 = [v6 targetDevice];

  if (objc_opt_respondsToSelector())
  {
    v8 = [(NPKSubcredentialInvitationCoordinator *)self _paymentWebService];
    [v7 paymentWebService:v8 subcredentialInvitationsWithCompletion:v4];
  }

  else
  {
    v9 = pk_General_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = pk_General_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v15 = 138543362;
        v16 = v13;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Target device does not respond to -[paymentWebService:subcredentialInvitationsWithCompletion:]", &v15, 0xCu);
      }
    }

    if (v4)
    {
      v4[2](v4, 0);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_queue_deviceContainsInvitationMatchingInvitation:(id)a3 withTimeout:(unint64_t)a4 completion:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(v10);

  v11 = [(NPKSubcredentialInvitationCoordinator *)self _paymentWebService];
  v12 = [v11 targetDevice];

  if (objc_opt_respondsToSelector())
  {
    v13 = [(NPKSubcredentialInvitationCoordinator *)self _paymentWebService];
    [v12 paymentWebService:v13 matchingInvitationOnDevice:v8 withTimeout:a4 completion:v9];
LABEL_9:

    goto LABEL_10;
  }

  v14 = pk_General_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = pk_General_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Target device does not respond to -[paymentWebService:matchingInvitationOnDevice:withTimeout:completion:]", &v20, 0xCu);
    }
  }

  if (v9)
  {
    v13 = [(NPKSubcredentialInvitationCoordinator *)self _errorWithCode:2 message:@"Unable to check whether device has matching invitation"];
    v9[2](v9, 0, v13);
    goto LABEL_9;
  }

LABEL_10:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_queue_accountAttestationAnonymizationSaltWithCompletion:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(NPKSubcredentialInvitationCoordinator *)self _paymentWebService];
  v7 = [v6 targetDevice];

  if (objc_opt_respondsToSelector())
  {
    v8 = [(NPKSubcredentialInvitationCoordinator *)self _paymentWebService];
    [v7 paymentWebService:v8 accountAttestationAnonymizationSaltWithCompletion:v4];
LABEL_9:

    goto LABEL_10;
  }

  v9 = pk_General_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_General_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Target device does not respond to -[paymentWebService:accountAttestationAnonymizationSaltWithCompletion:]", &v15, 0xCu);
    }
  }

  if (v4)
  {
    v8 = [(NPKSubcredentialInvitationCoordinator *)self _errorWithCode:3 message:@"Unable to fetch account attestation"];
    v4[2](v4, 0, v8);
    goto LABEL_9;
  }

LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setAccountAttestationAnonymizationSalt:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(NPKSubcredentialInvitationCoordinator *)self _paymentWebService];
  v10 = [v9 targetDevice];

  if (objc_opt_respondsToSelector())
  {
    v11 = [(NPKSubcredentialInvitationCoordinator *)self _paymentWebService];
    [v10 paymentWebService:v11 setAccountAttestationAnonymizationSalt:v6 withCompletion:v7];
LABEL_9:

    goto LABEL_10;
  }

  v12 = pk_General_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_General_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v18 = 138543362;
      v19 = v16;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Target device does not respond to -[paymentWebService:setAccountAttestationAnonymizationSalt:withCompletion:]", &v18, 0xCu);
    }
  }

  if (v7)
  {
    v11 = [(NPKSubcredentialInvitationCoordinator *)self _errorWithCode:0 message:@"Unable to set anonymiztion salt for account attestaion"];
    v7[2](v7, v11);
    goto LABEL_9;
  }

LABEL_10:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_queue_requestSubcredentialInvitation:(id)a3 fromIDSHandle:(id)a4 completion:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(NPKSubcredentialInvitationCoordinator *)self _paymentWebService];
  v11 = [v10 targetDevice];

  if (objc_opt_respondsToSelector())
  {
    v12 = [(NPKSubcredentialInvitationCoordinator *)self _paymentWebService];
    [v11 paymentWebService:v12 requestSubcredentialInvitation:v7 completion:v8];
LABEL_9:

    goto LABEL_10;
  }

  v13 = pk_General_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v15 = pk_General_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v19 = 138543362;
      v20 = v17;
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Target device does not respond to -[paymentWebService:requestSubcredentialInvitation:completion:]", &v19, 0xCu);
    }
  }

  if (v8)
  {
    v12 = [(NPKSubcredentialInvitationCoordinator *)self _errorWithCode:2 message:@"Unable to request new invitation"];
    v8[2](v8, v12);
    goto LABEL_9;
  }

LABEL_10:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_queue_updateSubcredentialMetadataOnPass:(id)a3 withCredential:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [(NPKSubcredentialInvitationCoordinator *)self _paymentWebService];
  v13 = [v12 targetDevice];

  if (objc_opt_respondsToSelector())
  {
    v14 = [(NPKSubcredentialInvitationCoordinator *)self _paymentWebService];
    [v13 paymentWebService:v14 updateMetadataOnPass:v8 withCredential:v9 completion:v10];
  }

  else
  {
    v15 = pk_General_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v16)
    {
      v17 = pk_General_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v21 = 138543362;
        v22 = v19;
        _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Target device does not respond to -[paymentWebService:updateMetadataOnPass:withCredential:completion:]", &v21, 0xCu);
      }
    }

    if (v10)
    {
      v10[2](v10, 0);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_queue_registerCredentialsWithIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(NPKSubcredentialInvitationCoordinator *)self paymentService];
  [v9 registerCredentialsWithIdentifiers:v7 completion:v6];
}

- (void)_queue_revokeCredentialsWithIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(NPKSubcredentialInvitationCoordinator *)self paymentService];
  [v9 revokeCredentialsWithIdentifiers:v7 completion:v6];
}

- (void)_queue_removeSharingInvitation:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(NPKSubcredentialInvitationCoordinator *)self paymentService];
  [v9 removeSharingInvitation:v7 withCompletion:v6];
}

- (void)_queue_declineRelatedInvitationsIfNecessaryForInvitation:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(NPKSubcredentialInvitationCoordinator *)self paymentService];
  [v9 declineRelatedSharingInvitationsIfNecessary:v7 withCompletion:v6];
}

- (void)_queue_fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __126__NPKSubcredentialInvitationCoordinator__queue_fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion___block_invoke;
  v7[3] = &unk_279945C28;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [(NPKSubcredentialInvitationCoordinator *)self _queue_accountAttestationAnonymizationSaltWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __126__NPKSubcredentialInvitationCoordinator__queue_fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v5 || v6)
  {
    if (v6)
    {
      v14 = pk_General_log();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

      if (v15)
      {
        v16 = pk_General_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          *buf = 138543618;
          v32 = v18;
          v33 = 2112;
          v34 = v6;
          _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Failed to get anonymization salt: %@. Proceeding anyway...", buf, 0x16u);
        }
      }
    }

    v19 = [MEMORY[0x277D37CC8] createAnonymizationSalt];
    v20 = pk_General_log();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

    if (v21)
    {
      v22 = pk_General_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        *buf = 138543362;
        v32 = v24;
        _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: No salt found, setting default salt", buf, 0xCu);
      }
    }

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __126__NPKSubcredentialInvitationCoordinator__queue_fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion___block_invoke_150;
    v27[3] = &unk_279945C78;
    objc_copyWeak(&v30, (a1 + 40));
    v25 = v19;
    v28 = v25;
    v29 = *(a1 + 32);
    [WeakRetained setAccountAttestationAnonymizationSalt:v25 completion:v27];

    objc_destroyWeak(&v30);
  }

  else
  {
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
        v32 = v12;
        v33 = 2112;
        v34 = v5;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Found previously established anonymization salt: %@", buf, 0x16u);
      }
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      (*(v13 + 16))(v13, v5, 0);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __126__NPKSubcredentialInvitationCoordinator__queue_fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion___block_invoke_150(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = *(a1 + 32);
      v13 = 138543874;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Set default salt with salt: %@ error: %@", &v13, 0x20u);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, *(a1 + 32), v3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_setUpSubcredentialProvisioningController
{
  v3 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_alloc_init(MEMORY[0x277D382E0]);
  [(NPKSubcredentialInvitationCoordinator *)self setSubcredentialProvisioningController:v4];

  v5 = [(NPKSubcredentialInvitationCoordinator *)self subcredentialProvisioningController];
  [v5 setDelegate:self];
}

- (void)_setUpSharingSessionWithSubcredentialProvisioningController:(id)a3 forInvitation:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(v8);

  if (v6 && v7)
  {
    if ([v7 type] == 1)
    {
      [MEMORY[0x277D37D70] createPendingSessionWithDelegate:v6];
    }

    else
    {
      [MEMORY[0x277D37D70] createSessionWithDelegate:v6];
    }
    v11 = ;
    [(NPKSubcredentialInvitationCoordinator *)self setSharingSession:v11];
LABEL_10:

    goto LABEL_11;
  }

  v9 = pk_General_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_General_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v15 = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Expected to find a subcredential provisioning controller, but instead found nil!: %@", &v15, 0x16u);
    }

    goto LABEL_10;
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isInvitationUniqueForPairedReaderIdentifier:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D37FC0]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = [v4 passes];
  v6 = [v5 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v35 + 1) + 8 * i) paymentPass];
        v11 = [v10 pairedTerminalIdentifier];
        v12 = v11;
        if (v11 && ![(__CFString *)v11 caseInsensitiveCompare:v3])
        {
          v14 = pk_General_log();
          v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

          if (v15)
          {
            v16 = pk_General_log();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = objc_opt_class();
              v18 = NSStringFromClass(v17);
              v19 = [v10 uniqueID];
              *buf = 138544130;
              v40 = v18;
              v41 = 2112;
              v42 = v3;
              v43 = 2112;
              v44 = v12;
              v45 = 2112;
              v46 = v19;
              _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: The invitation's paired reader identifier (%@) matches the paired reader identifier (%@) of pass with unique ID %@", buf, 0x2Au);
            }
          }

          v20 = [v10 devicePrimaryPaymentApplication];
          [v20 state];
          IsPersonalized = PKPaymentApplicationStateIsPersonalized();

          v22 = [v10 effectiveContactlessPaymentApplicationState];
          v23 = pk_General_log();
          v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

          if (v24)
          {
            v25 = pk_General_log();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = objc_opt_class();
              v27 = NSStringFromClass(v26);
              v28 = [v10 uniqueID];
              v29 = v28;
              v30 = @"YES";
              *buf = 138544130;
              v40 = v27;
              if (IsPersonalized)
              {
                v31 = @"YES";
              }

              else
              {
                v31 = @"NO";
              }

              if (v22 != 2)
              {
                v30 = @"NO";
              }

              v41 = 2112;
              v42 = v28;
              v43 = 2112;
              v44 = v31;
              v45 = 2112;
              v46 = v30;
              _os_log_impl(&dword_25B300000, v25, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Pass with unique ID %@ is personalized: %@ personalizing: %@", buf, 0x2Au);
            }
          }

          if (IsPersonalized)
          {
            v32 = 1;
          }

          else
          {
            v32 = v22 == 2;
          }

          v13 = !v32;

          goto LABEL_31;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v35 objects:v47 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_31:

  v33 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)_fetchInvitationWithIdentifier:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(v8);

  if (v7)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __83__NPKSubcredentialInvitationCoordinator__fetchInvitationWithIdentifier_completion___block_invoke;
    v15[3] = &unk_279945E58;
    v16 = v6;
    v17 = v7;
    [(NPKSubcredentialInvitationCoordinator *)self listSubcredentialInvitationsWithCompletion:v15];

    v9 = v16;
  }

  else
  {
    v11 = pk_General_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (!v12)
    {
      goto LABEL_4;
    }

    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138543618;
      v19 = v14;
      v20 = 2112;
      v21 = 0;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Expected to return an invitation, but no completion block was provided: %@", buf, 0x16u);
    }
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
}

void __83__NPKSubcredentialInvitationCoordinator__fetchInvitationWithIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  v14 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__NPKSubcredentialInvitationCoordinator__fetchInvitationWithIdentifier_completion___block_invoke_154;
  v6[3] = &unk_279945E30;
  v7 = *(a1 + 32);
  v8 = &v9;
  [v3 enumerateObjectsUsingBlock:v6];
  (*(*(a1 + 40) + 16))(*(a1 + 40), v10[5], v4, v5);

  _Block_object_dispose(&v9, 8);
}

void __83__NPKSubcredentialInvitationCoordinator__fetchInvitationWithIdentifier_completion___block_invoke_154(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 identifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)_fetchInvitationMatchingInvitation:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(v8);

  if (v7)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __87__NPKSubcredentialInvitationCoordinator__fetchInvitationMatchingInvitation_completion___block_invoke;
    v15[3] = &unk_279945E58;
    v16 = v6;
    v17 = v7;
    [(NPKSubcredentialInvitationCoordinator *)self listSubcredentialInvitationsWithCompletion:v15];

    v9 = v16;
  }

  else
  {
    v11 = pk_General_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (!v12)
    {
      goto LABEL_4;
    }

    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138543618;
      v19 = v14;
      v20 = 2112;
      v21 = 0;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Expected to return an invitation, but no completion block was provided: %@", buf, 0x16u);
    }
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
}

void __87__NPKSubcredentialInvitationCoordinator__fetchInvitationMatchingInvitation_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  v14 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87__NPKSubcredentialInvitationCoordinator__fetchInvitationMatchingInvitation_completion___block_invoke_2;
  v6[3] = &unk_279945E30;
  v7 = *(a1 + 32);
  v8 = &v9;
  [v3 enumerateObjectsUsingBlock:v6];
  (*(*(a1 + 40) + 16))(*(a1 + 40), v10[5], v4, v5);

  _Block_object_dispose(&v9, 8);
}

void __87__NPKSubcredentialInvitationCoordinator__fetchInvitationMatchingInvitation_completion___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 isSameInvitationAsInvitation:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)_makeConfigurationForInvitation:(id)a3 session:(id)a4 metadata:(id)a5 paymentWebService:(id)a6 completion:(id)a7
{
  v46 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(v17);

  if (v16)
  {
    if (v12 && v13 && v15)
    {
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __119__NPKSubcredentialInvitationCoordinator__makeConfigurationForInvitation_session_metadata_paymentWebService_completion___block_invoke;
      v29[3] = &unk_279945E80;
      v30 = v13;
      v31 = v12;
      v32 = v14;
      v33 = v15;
      v34 = self;
      v35 = v16;
      [(NPKSubcredentialInvitationCoordinator *)self canAcceptInvitation:v31 completion:v29];

      v18 = v30;
    }

    else
    {
      v23 = pk_General_log();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

      if (v24)
      {
        v25 = pk_General_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          *buf = 138544386;
          v37 = v27;
          v38 = 2112;
          v39 = v13;
          v40 = 2112;
          v41 = v12;
          v42 = 2112;
          v43 = v14;
          v44 = 2112;
          v45 = v15;
          _os_log_impl(&dword_25B300000, v25, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Expected to make accept invitation configuration with a non-nil sharing session, invitation, and paymentWebService! sharingSession: %@ invitation: %@ metadata: %@ paymentWebService: %@", buf, 0x34u);
        }
      }

      v18 = [(NPKSubcredentialInvitationCoordinator *)self _errorWithCode:0 message:@"Unable to make invitation configuration - insufficient information"];
      (*(v16 + 2))(v16, 0, v18);
    }

LABEL_14:

    goto LABEL_15;
  }

  v19 = pk_General_log();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

  if (v20)
  {
    v18 = pk_General_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138543618;
      v37 = v22;
      v38 = 2112;
      v39 = 0;
      _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Expected to return a configuration, but no completion block was provided: %@", buf, 0x16u);
    }

    goto LABEL_14;
  }

LABEL_15:

  v28 = *MEMORY[0x277D85DE8];
}

void __119__NPKSubcredentialInvitationCoordinator__makeConfigurationForInvitation_session_metadata_paymentWebService_completion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = pk_General_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = pk_General_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 64);
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v13 = 138543618;
        v14 = v9;
        v15 = 2112;
        v16 = v3;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Unable to make accept invitation configuration for this invitation! error: %@", &v13, 0x16u);
      }
    }

    v10 = [*(a1 + 64) _errorWithCode:1 message:@"Unable to make invitation configuration - cannot accept invitation"];
    v11 = *(*(a1 + 72) + 16);
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277D382D8]) initWithSession:*(a1 + 32) invitation:*(a1 + 40) metadata:*(a1 + 48) declineRelatedInvitations:0 localDeviceWebService:*(a1 + 56) remoteDeviceWebService:0];
    v11 = *(*(a1 + 72) + 16);
  }

  v11();

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleProvisioningAttemptForConfiguration:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  if (v7)
  {
    v8 = [(NPKSubcredentialInvitationCoordinator *)self callbackQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __90__NPKSubcredentialInvitationCoordinator__handleProvisioningAttemptForConfiguration_error___block_invoke_2;
    v12[3] = &unk_279945240;
    v9 = &v14;
    objc_copyWeak(&v14, &location);
    v10 = &v13;
    v13 = v7;
    v11 = v12;
  }

  else
  {
    v8 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__NPKSubcredentialInvitationCoordinator__handleProvisioningAttemptForConfiguration_error___block_invoke;
    block[3] = &unk_279945240;
    v9 = &v17;
    objc_copyWeak(&v17, &location);
    v10 = &v16;
    v16 = v6;
    v11 = block;
  }

  dispatch_async(v8, v11);

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

void __90__NPKSubcredentialInvitationCoordinator__handleProvisioningAttemptForConfiguration_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained subcredentialProvisioningController];
  [WeakRetained _startProvisioningForProvisioningController:v2 withConfiguration:*(a1 + 32)];
}

void __90__NPKSubcredentialInvitationCoordinator__handleProvisioningAttemptForConfiguration_error___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _endProvisioningWithPassForInvitation:0 error:*(a1 + 32)];
}

- (void)_performBlockFollowingFirstUnlockWithBlock:(id)a3
{
  v4 = a3;
  if (NPKProtectedDataAvailable())
  {
    v4[2](v4);
  }

  else
  {
    v5 = [(NPKSubcredentialInvitationCoordinator *)self firstUnlockCoordinator];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __84__NPKSubcredentialInvitationCoordinator__performBlockFollowingFirstUnlockWithBlock___block_invoke;
    v6[3] = &unk_279945198;
    v7 = v4;
    [v5 performSubjectToFirstUnlock:v6];
  }
}

- (id)_errorWithCode:(int64_t)a3 message:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  if ((a3 - 1) > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_25B59A8F0[a3 - 1];
  }

  v5 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277D389E0];
  v13 = *MEMORY[0x277CCA470];
  v14[0] = a4;
  v7 = MEMORY[0x277CBEAC0];
  v8 = a4;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [v5 errorWithDomain:v6 code:v4 userInfo:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_startProvisioningForProvisioningController:(id)a3 withConfiguration:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(v8);

  v9 = pk_General_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_General_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138543874;
      v21 = v13;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Starting provisioning for provisioning controller: %@ with configuration: %@", buf, 0x20u);
    }
  }

  if (v6 && v7)
  {
    [v6 startProvisioningWithConfiguration:v7];
  }

  else
  {
    objc_initWeak(buf, self);
    v14 = [(NPKSubcredentialInvitationCoordinator *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __103__NPKSubcredentialInvitationCoordinator__startProvisioningForProvisioningController_withConfiguration___block_invoke;
    block[3] = &unk_279945290;
    objc_copyWeak(&v19, buf);
    v17 = v6;
    v18 = v7;
    dispatch_async(v14, block);

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __103__NPKSubcredentialInvitationCoordinator__startProvisioningForProvisioningController_withConfiguration___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v12 = 138543874;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Expected to start provisioning with a non-nil subcredential provisioning controller and configuration! subcredentialProvisioningController: %@ configuration: %@", &v12, 0x20u);
    }
  }

  v10 = [WeakRetained _errorWithCode:0 message:@"Unable to start provisioning - insufficient information"];
  [WeakRetained _endProvisioningWithPassForInvitation:0 error:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_endProvisioningWithPassForInvitation:(id)a3 error:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NPKSubcredentialInvitationCoordinator *)self callbackQueue];
  dispatch_assert_queue_V2(v8);

  v9 = pk_General_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_General_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v16 = 138543874;
      v17 = v13;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: End provisioning with pass: %@ error: %@", &v16, 0x20u);
    }
  }

  [(NPKSubcredentialInvitationCoordinator *)self _invokeCompletionWithPassForInvitation:v6 error:v7];
  [(NPKSubcredentialInvitationCoordinator *)self setSubcredentialProvisioningController:0];
  v14 = [(NPKSubcredentialInvitationCoordinator *)self sharingSession];
  [v14 endSession];

  [(NPKSubcredentialInvitationCoordinator *)self setSharingSession:0];
  [(NPKSubcredentialInvitationCoordinator *)self setFirstUnlockCoordinator:0];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_invokeCompletionWithPassForInvitation:(id)a3 error:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NPKSubcredentialInvitationCoordinator *)self callbackQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(NPKSubcredentialInvitationCoordinator *)self completion];
  [(NPKSubcredentialInvitationCoordinator *)self setCompletion:0];
  if (v9)
  {
    (v9)[2](v9, v6, v7);
  }

  else
  {
    v10 = pk_General_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = pk_General_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v16 = 138543362;
        v17 = v14;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Attempted to invoke completion handler, but no block was found!", &v16, 0xCu);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end