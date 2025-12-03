@interface PKPeerPaymentService
+ (PKPeerPaymentService)sharedInstance;
- (BOOL)hasRecurringPayments;
- (PKPeerPaymentAccount)account;
- (PKPeerPaymentPreferences)preferences;
- (PKPeerPaymentService)init;
- (PKPeerPaymentWebServiceContext)sharedPeerPaymentWebServiceContext;
- (id)_synchronousRemoteObjectProxyForSelector:(SEL)selector;
- (id)balanceForPass:(id)pass;
- (id)lastUsedAlternateFundingSourcePassUniqueIdentifier;
- (void)_accessObserversWithHandler:(id)handler;
- (void)_accountChanged:(id)changed;
- (void)_postAccountChangeNotificationIfNecessaryForAccount:(id)account previousAccount:(id)previousAccount;
- (void)_preferencesChanged:(id)changed;
- (void)accountWithCompletion:(id)completion;
- (void)checkTLKsMissingWithCompletion:(id)completion;
- (void)cloudStoreStatusWithCompletion:(id)completion;
- (void)counterpartImageDataForTransactionWithIdentifier:(id)identifier completion:(id)completion;
- (void)counterpartImageDataWithCompletion:(id)completion;
- (void)counterpartImageDataWithIdentifier:(id)identifier completion:(id)completion;
- (void)dealloc;
- (void)deleteAccountWithCompletion:(id)completion;
- (void)deleteAllCounterpartImageDataWithCompletion:(id)completion;
- (void)deleteAllRecurringPaymentsWithCompletion:(id)completion;
- (void)deletePeerPaymentPendingRequestsForPeerPaymentAccount;
- (void)deletePeerPaymentPendingRequestsForRequestTokens:(id)tokens;
- (void)deletePreferencesWithCompletion:(id)completion;
- (void)deleteRecurringPaymentsForIdentifiers:(id)identifiers completion:(id)completion;
- (void)deleteUserInfoWithCompletion:(id)completion;
- (void)downloadPassIfNecessaryWithCompletion:(id)completion;
- (void)encryptData:(id)data usingCertificateWithDestination:(unint64_t)destination completion:(id)completion;
- (void)encryptionCertificateForDestination:(unint64_t)destination forceUpdate:(BOOL)update completion:(id)completion;
- (void)fetchUserInfoWithCompletion:(id)completion;
- (void)initalizeCloudStoreIfNecessaryWithHandler:(id)handler;
- (void)insertOrUpdateDeviceOriginatedNearbyPeerPaymentTransactionWithIdentifier:(id)identifier memo:(id)memo counterpartAppearanceData:(id)data completion:(id)completion;
- (void)insertOrUpdateNearbyPeerPaymentSetupNotificationWithTransactionIdentifier:(id)identifier amount:(id)amount currency:(id)currency senderName:(id)name completion:(id)completion;
- (void)insertOrUpdatePeerPaymentPendingRequests:(id)requests shouldScheduleNotifications:(BOOL)notifications;
- (void)insertOrUpdateRecurringPayments:(id)payments completion:(id)completion;
- (void)insertOrUpdateUserInfo:(id)info completion:(id)completion;
- (void)peerPaymentPendingRequestsForPeerPaymentAccountWithCompletion:(id)completion;
- (void)peerPaymentPendingRequestsForRequestTokens:(id)tokens completion:(id)completion;
- (void)pendingRequestsChanged;
- (void)performRecurringPaymentAction:(unint64_t)action identifier:(id)identifier completion:(id)completion;
- (void)preferencesWithCompletion:(id)completion;
- (void)presentIdentityVerificationFlowWithResponse:(id)response orientation:(id)orientation completion:(id)completion;
- (void)presentPeerPaymentTermsAndConditionsWithAccount:(id)account orientation:(id)orientation completion:(id)completion;
- (void)presentReceiverFlowWithOrientation:(id)orientation host:(unint64_t)host completion:(id)completion;
- (void)presentRegistrationFlowWithAccount:(id)account amount:(id)amount state:(unint64_t)state senderAddress:(id)address orientation:(id)orientation hostSceneIdentifier:(id)identifier hostSceneBundleIdentifier:(id)bundleIdentifier completion:(id)self0;
- (void)presentSenderFlowWithHost:(unint64_t)host userInfo:(id)info completion:(id)completion;
- (void)receivedPeerPaymentMessageData:(id)data;
- (void)recurringPaymentsChanged;
- (void)recurringPaymentsWithCompletion:(id)completion;
- (void)registerDeviceWithCompletion:(id)completion;
- (void)registerDeviceWithForceReregister:(BOOL)reregister completion:(id)completion;
- (void)registerDeviceWithRegistrationURL:(id)l pushToken:(id)token forceReregister:(BOOL)reregister completion:(id)completion;
- (void)registerObserver:(id)observer;
- (void)registrationStatusWithCompletion:(id)completion;
- (void)remoteRegistrationRequest:(id)request forHandle:(id)handle completion:(id)completion;
- (void)reportFailureDiagnostic:(id)diagnostic completion:(id)completion;
- (void)resetApplePayManateeViewWithCompletion:(id)completion;
- (void)resumeAccountChangedNotifications;
- (void)setLastUsedAlternateFundingSourcePassUniqueIdentifier:(id)identifier;
- (void)setPreferences:(id)preferences completion:(id)completion;
- (void)setSharedPeerPaymentWebServiceContext:(id)context;
- (void)sharedPeerPaymentWebServiceContextWithCompletion:(id)completion;
- (void)suspendAccountChangedNotifications;
- (void)unregisterDeviceWithCompletion:(id)completion;
- (void)unregisterObserver:(id)observer;
- (void)updateAccountAndAssociatedAccountsWithCompletion:(id)completion;
- (void)updateAccountWithCompletion:(id)completion;
- (void)updateAssociatedAccountsWithCompletion:(id)completion;
- (void)updateAutoReloadAmount:(id)amount threshold:(id)threshold identifier:(id)identifier completion:(id)completion;
- (void)updateMessageReceivedDate:(id)date forTransactionWithIdentifier:(id)identifier;
- (void)updateMockAccountBalanceByAddingAmount:(id)amount completion:(id)completion;
- (void)updatePreferencesWithCompletion:(id)completion;
- (void)updateRecurringPaymentMemo:(id)memo identifier:(id)identifier completion:(id)completion;
- (void)updateRecurringPaymentStatus:(unint64_t)status identifier:(id)identifier completion:(id)completion;
- (void)updateRecurringPaymentsWithCompletion:(id)completion;
- (void)userInfoChanged;
- (void)userInfoWithCompletion:(id)completion;
@end

@implementation PKPeerPaymentService

+ (PKPeerPaymentService)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__PKPeerPaymentService_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_MergedGlobals_284 != -1)
  {
    dispatch_once(&_MergedGlobals_284, block);
  }

  v2 = qword_1ED6D22B0;

  return v2;
}

void __38__PKPeerPaymentService_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1ED6D22B0;
  qword_1ED6D22B0 = v1;
}

- (PKPeerPaymentService)init
{
  if (!PKSecureElementIsAvailable())
  {
    v14 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&dword_1AD337000, v14, OS_LOG_TYPE_ERROR, "Peer Payment Service isn't supported on this device.", v16, 2u);
    }

    v3 = 0;
    goto LABEL_7;
  }

  v17.receiver = self;
  v17.super_class = PKPeerPaymentService;
  v3 = [(PKPeerPaymentService *)&v17 init];
  if (v3)
  {
    v4 = [PKXPCService alloc];
    v5 = PDPeerPaymentServiceInterface();
    v6 = PKPeerPaymentServiceInterface();
    v7 = [(PKXPCService *)v4 initWithMachServiceName:@"com.apple.passd.peer-payment" remoteObjectInterface:v5 exportedObjectInterface:v6 exportedObject:v3];
    v8 = *(v3 + 1);
    *(v3 + 1) = v7;

    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__accountChanged_ name:@"PDPeerPaymentServiceAccountChangedDistributedNotification" object:0 suspensionBehavior:2];

    defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel__preferencesChanged_ name:@"PDPeerPaymentServicePreferencesChangedDistributedNotification" object:0 suspensionBehavior:2];

    v11 = dispatch_queue_create("com.apple.passkit.pkpeerpaymentservice.reply", 0);
    v12 = *(v3 + 4);
    *(v3 + 4) = v11;

    *(v3 + 5) = 0;
    pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    self = *(v3 + 6);
    *(v3 + 6) = pk_weakObjectsHashTableUsingPointerPersonality;
LABEL_7:
  }

  return v3;
}

- (PKPeerPaymentAccount)account
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__85;
  v16 = __Block_byref_object_dispose__85;
  v17 = 0;
  os_unfair_lock_lock(&self->_accountLock);
  objc_storeStrong(v13 + 5, self->_account);
  os_unfair_lock_unlock(&self->_accountLock);
  isAccountStateDirty = [v13[5] isAccountStateDirty];
  v5 = v13[5];
  if ((isAccountStateDirty & 1) != 0 || (v6 = [v5 isAccountOutOfDate], v5 = v13[5], (v5 == 0) | v6 & 1))
  {
    v7 = v5;
    v8 = [(PKPeerPaymentService *)self _synchronousRemoteObjectProxyForSelector:a2];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __31__PKPeerPaymentService_account__block_invoke;
    v11[3] = &unk_1E79E4498;
    v11[4] = &v12;
    [v8 accountWithCompletion:v11];

    os_unfair_lock_lock(&self->_accountLock);
    objc_storeStrong(&self->_account, v13[5]);
    [(PKPeerPaymentService *)self _postAccountChangeNotificationIfNecessaryForAccount:self->_account previousAccount:v7];
    os_unfair_lock_unlock(&self->_accountLock);

    v5 = v13[5];
  }

  v9 = v5;
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKPeerPaymentService;
  [(PKPeerPaymentService *)&v4 dealloc];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v5 = observerCopy;
    os_unfair_lock_lock(&self->_lockObservers);
    [(NSHashTable *)self->_observers addObject:v5];
    os_unfair_lock_unlock(&self->_lockObservers);
    observerCopy = v5;
  }
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v5 = observerCopy;
    os_unfair_lock_lock(&self->_lockObservers);
    [(NSHashTable *)self->_observers removeObject:v5];
    os_unfair_lock_unlock(&self->_lockObservers);
    observerCopy = v5;
  }
}

- (void)_accessObserversWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    os_unfair_lock_lock(&self->_lockObservers);
    allObjects = [(NSHashTable *)self->_observers allObjects];
    os_unfair_lock_unlock(&self->_lockObservers);
    replyQueue = self->_replyQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__PKPeerPaymentService__accessObserversWithHandler___block_invoke;
    v8[3] = &unk_1E79C4A40;
    v9 = allObjects;
    v10 = handlerCopy;
    v7 = allObjects;
    dispatch_async(replyQueue, v8);
  }
}

void __52__PKPeerPaymentService__accessObserversWithHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (PKPeerPaymentWebServiceContext)sharedPeerPaymentWebServiceContext
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__85;
  v13 = __Block_byref_object_dispose__85;
  v14 = 0;
  v2 = [(PKPeerPaymentService *)self _synchronousRemoteObjectProxyForSelector:a2];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__PKPeerPaymentService_sharedPeerPaymentWebServiceContext__block_invoke;
  v8[3] = &unk_1E79E4448;
  v8[4] = &v9;
  [v2 usingSynchronousProxy:1 fetchSharedPeerPaymentWebServiceContextWithHandler:v8];

  v3 = v10[5];
  if (!v3)
  {
    v4 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Failed to get a non nil shared peer payment web service context.", v7, 2u);
    }

    v3 = v10[5];
  }

  v5 = v3;
  _Block_object_dispose(&v9, 8);

  return v5;
}

- (void)setSharedPeerPaymentWebServiceContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    v6 = [(PKPeerPaymentService *)self _synchronousRemoteObjectProxyForSelector:a2];
    [v6 usingSynchronousProxy:1 setSharedPeerPaymentWebServiceContext:contextCopy withCompletion:&__block_literal_global_235];
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Attempt to set the shared peer payment web service context to nil. Ignoring.", v7, 2u);
    }
  }
}

- (void)sharedPeerPaymentWebServiceContextWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PKPeerPaymentService_sharedPeerPaymentWebServiceContextWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__PKPeerPaymentService_sharedPeerPaymentWebServiceContextWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79E4470;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 usingSynchronousProxy:0 fetchSharedPeerPaymentWebServiceContextWithHandler:v10];
}

void __73__PKPeerPaymentService_sharedPeerPaymentWebServiceContextWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__PKPeerPaymentService_sharedPeerPaymentWebServiceContextWithCompletion___block_invoke_30;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __73__PKPeerPaymentService_sharedPeerPaymentWebServiceContextWithCompletion___block_invoke_30(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __73__PKPeerPaymentService_sharedPeerPaymentWebServiceContextWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (PKPeerPaymentPreferences)preferences
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__85;
  v14 = __Block_byref_object_dispose__85;
  v15 = 0;
  os_unfair_lock_lock(&self->_accountLock);
  objc_storeStrong(v11 + 5, self->_preferences);
  os_unfair_lock_unlock(&self->_accountLock);
  if (([v11[5] isDirty] & 1) != 0 || (v4 = objc_msgSend(v11[5], "isOutOfDate"), v5 = v11[5], (v5 == 0) | v4 & 1))
  {
    v6 = [(PKPeerPaymentService *)self _synchronousRemoteObjectProxyForSelector:a2];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __35__PKPeerPaymentService_preferences__block_invoke;
    v9[3] = &unk_1E79E44C0;
    v9[4] = &v10;
    [v6 preferencesWithCompletion:v9];

    os_unfair_lock_lock(&self->_accountLock);
    objc_storeStrong(&self->_preferences, v11[5]);
    os_unfair_lock_unlock(&self->_accountLock);
    v5 = v11[5];
  }

  v7 = v5;
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (void)accountWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__PKPeerPaymentService_accountWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__PKPeerPaymentService_accountWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79D3C20;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 accountWithCompletion:v10];
}

void __46__PKPeerPaymentService_accountWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__PKPeerPaymentService_accountWithCompletion___block_invoke_33;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __46__PKPeerPaymentService_accountWithCompletion___block_invoke_33(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __46__PKPeerPaymentService_accountWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__PKPeerPaymentService_accountWithCompletion___block_invoke_3;
  v8[3] = &unk_1E79C4D60;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v3;
  v10 = v5;
  v6 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v12 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void __46__PKPeerPaymentService_accountWithCompletion___block_invoke_3(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 40));
  v3 = *(*(a1 + 32) + 16);
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  [*(a1 + 32) _postAccountChangeNotificationIfNecessaryForAccount:*(a1 + 40) previousAccount:v3];
  os_unfair_lock_unlock((*(a1 + 32) + 40));
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 40));
  }
}

- (void)preferencesWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__PKPeerPaymentService_preferencesWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__PKPeerPaymentService_preferencesWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79E44E8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 preferencesWithCompletion:v10];
}

void __50__PKPeerPaymentService_preferencesWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PKPeerPaymentService_preferencesWithCompletion___block_invoke_34;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __50__PKPeerPaymentService_preferencesWithCompletion___block_invoke_34(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __50__PKPeerPaymentService_preferencesWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__PKPeerPaymentService_preferencesWithCompletion___block_invoke_3;
  v8[3] = &unk_1E79C4D60;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v3;
  v10 = v5;
  v6 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v12 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

uint64_t __50__PKPeerPaymentService_preferencesWithCompletion___block_invoke_3(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 40));
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  os_unfair_lock_unlock((*(a1 + 32) + 40));
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)updateAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__PKPeerPaymentService_updateAccountWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__PKPeerPaymentService_updateAccountWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79D3C20;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 updateAccountWithCompletion:v10];
}

void __52__PKPeerPaymentService_updateAccountWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__PKPeerPaymentService_updateAccountWithCompletion___block_invoke_35;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __52__PKPeerPaymentService_updateAccountWithCompletion___block_invoke_35(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __52__PKPeerPaymentService_updateAccountWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__PKPeerPaymentService_updateAccountWithCompletion___block_invoke_3;
  v9[3] = &unk_1E79C4D60;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v3;
  v11 = v5;
  v12 = v6;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __52__PKPeerPaymentService_updateAccountWithCompletion___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    os_unfair_lock_lock((*(a1 + 40) + 40));
    v2 = *(a1 + 40);
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);
    v5 = *(v2 + 16);
    *(v2 + 16) = v4;
    v6 = v3;

    [*(a1 + 40) _postAccountChangeNotificationIfNecessaryForAccount:*(a1 + 32) previousAccount:v6];
    os_unfair_lock_unlock((*(a1 + 40) + 40));
  }

  result = *(a1 + 48);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

- (void)updateAssociatedAccountsWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__PKPeerPaymentService_updateAssociatedAccountsWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__PKPeerPaymentService_updateAssociatedAccountsWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79D3C20;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 updateAssociatedAccountsWithCompletion:v10];
}

void __63__PKPeerPaymentService_updateAssociatedAccountsWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PKPeerPaymentService_updateAssociatedAccountsWithCompletion___block_invoke_36;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __63__PKPeerPaymentService_updateAssociatedAccountsWithCompletion___block_invoke_36(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __63__PKPeerPaymentService_updateAssociatedAccountsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__PKPeerPaymentService_updateAssociatedAccountsWithCompletion___block_invoke_3;
  v9[3] = &unk_1E79C4D60;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v3;
  v11 = v5;
  v12 = v6;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __63__PKPeerPaymentService_updateAssociatedAccountsWithCompletion___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    os_unfair_lock_lock((*(a1 + 40) + 40));
    v2 = *(a1 + 40);
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);
    v5 = *(v2 + 16);
    *(v2 + 16) = v4;
    v6 = v3;

    [*(a1 + 40) _postAccountChangeNotificationIfNecessaryForAccount:*(a1 + 32) previousAccount:v6];
    os_unfair_lock_unlock((*(a1 + 40) + 40));
  }

  result = *(a1 + 48);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

- (void)updateAccountAndAssociatedAccountsWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PKPeerPaymentService_updateAccountAndAssociatedAccountsWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__PKPeerPaymentService_updateAccountAndAssociatedAccountsWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79D3C20;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 updateAccountAndAssociatedAccountsWithCompletion:v10];
}

void __73__PKPeerPaymentService_updateAccountAndAssociatedAccountsWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__PKPeerPaymentService_updateAccountAndAssociatedAccountsWithCompletion___block_invoke_37;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __73__PKPeerPaymentService_updateAccountAndAssociatedAccountsWithCompletion___block_invoke_37(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __73__PKPeerPaymentService_updateAccountAndAssociatedAccountsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__PKPeerPaymentService_updateAccountAndAssociatedAccountsWithCompletion___block_invoke_3;
  v9[3] = &unk_1E79C4D60;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v3;
  v11 = v5;
  v12 = v6;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __73__PKPeerPaymentService_updateAccountAndAssociatedAccountsWithCompletion___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    os_unfair_lock_lock((*(a1 + 40) + 40));
    v2 = *(a1 + 40);
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);
    v5 = *(v2 + 16);
    *(v2 + 16) = v4;
    v6 = v3;

    [*(a1 + 40) _postAccountChangeNotificationIfNecessaryForAccount:*(a1 + 32) previousAccount:v6];
    os_unfair_lock_unlock((*(a1 + 40) + 40));
  }

  result = *(a1 + 48);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

- (void)updatePreferencesWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PKPeerPaymentService_updatePreferencesWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__PKPeerPaymentService_updatePreferencesWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79E44E8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 updatePreferencesWithCompletion:v10];
}

void __56__PKPeerPaymentService_updatePreferencesWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__PKPeerPaymentService_updatePreferencesWithCompletion___block_invoke_38;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __56__PKPeerPaymentService_updatePreferencesWithCompletion___block_invoke_38(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __56__PKPeerPaymentService_updatePreferencesWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__PKPeerPaymentService_updatePreferencesWithCompletion___block_invoke_3;
  v9[3] = &unk_1E79C4D60;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v3;
  v11 = v5;
  v12 = v6;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __56__PKPeerPaymentService_updatePreferencesWithCompletion___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    os_unfair_lock_lock((*(a1 + 40) + 40));
    objc_storeStrong((*(a1 + 40) + 24), *(a1 + 32));
    os_unfair_lock_unlock((*(a1 + 40) + 40));
  }

  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)deleteAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__PKPeerPaymentService_deleteAccountWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__PKPeerPaymentService_deleteAccountWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C4A40;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 deleteAccountWithCompletion:v10];
}

void __52__PKPeerPaymentService_deleteAccountWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__PKPeerPaymentService_deleteAccountWithCompletion___block_invoke_39;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __52__PKPeerPaymentService_deleteAccountWithCompletion___block_invoke_39(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __52__PKPeerPaymentService_deleteAccountWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__PKPeerPaymentService_deleteAccountWithCompletion___block_invoke_3;
  v5[3] = &unk_1E79C4A40;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v8 = v4;
  dispatch_async(v2, block);
}

void __52__PKPeerPaymentService_deleteAccountWithCompletion___block_invoke_3(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 40));
  v5 = *(*(a1 + 32) + 16);
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  [*(a1 + 32) _postAccountChangeNotificationIfNecessaryForAccount:*(*(a1 + 32) + 16) previousAccount:v5];
  os_unfair_lock_unlock((*(a1 + 32) + 40));
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))();
  }
}

- (void)deletePreferencesWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PKPeerPaymentService_deletePreferencesWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__PKPeerPaymentService_deletePreferencesWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C4A40;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 deletePreferencesWithCompletion:v10];
}

void __56__PKPeerPaymentService_deletePreferencesWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__PKPeerPaymentService_deletePreferencesWithCompletion___block_invoke_40;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __56__PKPeerPaymentService_deletePreferencesWithCompletion___block_invoke_40(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __56__PKPeerPaymentService_deletePreferencesWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__PKPeerPaymentService_deletePreferencesWithCompletion___block_invoke_3;
  v5[3] = &unk_1E79C4A40;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v8 = v4;
  dispatch_async(v2, block);
}

uint64_t __56__PKPeerPaymentService_deletePreferencesWithCompletion___block_invoke_3(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 40));
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 40));
  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)setPreferences:(id)preferences completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__PKPeerPaymentService_setPreferences_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  preferencesCopy = preferences;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__PKPeerPaymentService_setPreferences_completion___block_invoke_2;
  v13[3] = &unk_1E79E4510;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 setPreferences:preferencesCopy completion:v13];
}

void __50__PKPeerPaymentService_setPreferences_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PKPeerPaymentService_setPreferences_completion___block_invoke_41;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __50__PKPeerPaymentService_setPreferences_completion___block_invoke_41(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __50__PKPeerPaymentService_setPreferences_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(0, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__PKPeerPaymentService_setPreferences_completion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __50__PKPeerPaymentService_setPreferences_completion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)suspendAccountChangedNotifications
{
  if (qword_1ED6D22B0 != self)
  {
    ++self->_accountChangedNotificationSuspensionCount;
  }
}

- (void)resumeAccountChangedNotifications
{
  if (qword_1ED6D22B0 != self)
  {
    --self->_accountChangedNotificationSuspensionCount;
  }
}

- (void)registrationStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__PKPeerPaymentService_registrationStatusWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__PKPeerPaymentService_registrationStatusWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79CA990;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 registrationStatusWithCompletion:v10];
}

void __57__PKPeerPaymentService_registrationStatusWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(21, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__PKPeerPaymentService_registrationStatusWithCompletion___block_invoke_43;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __57__PKPeerPaymentService_registrationStatusWithCompletion___block_invoke_43(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __57__PKPeerPaymentService_registrationStatusWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = dispatch_get_global_queue(21, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__PKPeerPaymentService_registrationStatusWithCompletion___block_invoke_3;
  v6[3] = &unk_1E79C4658;
  v7 = *(a1 + 40);
  v8 = a2;
  v6[4] = *(a1 + 32);
  v5 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v10 = v5;
  dispatch_async(v4, block);
}

uint64_t __57__PKPeerPaymentService_registrationStatusWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)presentIdentityVerificationFlowWithResponse:(id)response orientation:(id)orientation completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__PKPeerPaymentService_presentIdentityVerificationFlowWithResponse_orientation_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v21 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v20 = v10;
  orientationCopy = orientation;
  responseCopy = response;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  rawData = [responseCopy rawData];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __91__PKPeerPaymentService_presentIdentityVerificationFlowWithResponse_orientation_completion___block_invoke_2;
  v17[3] = &unk_1E79C4888;
  v17[4] = self;
  v18 = v10;
  v16 = v10;
  [v14 presentIdentityVerificationFlowWithResponseData:rawData orientation:orientationCopy completion:v17];
}

void __91__PKPeerPaymentService_presentIdentityVerificationFlowWithResponse_orientation_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__PKPeerPaymentService_presentIdentityVerificationFlowWithResponse_orientation_completion___block_invoke_45;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __91__PKPeerPaymentService_presentIdentityVerificationFlowWithResponse_orientation_completion___block_invoke_45(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __91__PKPeerPaymentService_presentIdentityVerificationFlowWithResponse_orientation_completion___block_invoke_2(uint64_t a1, char a2)
{
  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__PKPeerPaymentService_presentIdentityVerificationFlowWithResponse_orientation_completion___block_invoke_3;
  v7[3] = &unk_1E79C4540;
  v5 = *(a1 + 40);
  v9 = a2;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v11 = v6;
  dispatch_async(v4, block);
}

uint64_t __91__PKPeerPaymentService_presentIdentityVerificationFlowWithResponse_orientation_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)presentRegistrationFlowWithAccount:(id)account amount:(id)amount state:(unint64_t)state senderAddress:(id)address orientation:(id)orientation hostSceneIdentifier:(id)identifier hostSceneBundleIdentifier:(id)bundleIdentifier completion:(id)self0
{
  accountCopy = account;
  amountCopy = amount;
  addressCopy = address;
  orientationCopy = orientation;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  completionCopy = completion;
  v23 = completionCopy;
  if (accountCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __155__PKPeerPaymentService_presentRegistrationFlowWithAccount_amount_state_senderAddress_orientation_hostSceneIdentifier_hostSceneBundleIdentifier_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v37 = a2;
    v24 = completionCopy;
    aBlock[4] = self;
    v36 = v24;
    v29 = amountCopy;
    v25 = _Block_copy(aBlock);
    [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v25];
    v26 = v30 = v23;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __155__PKPeerPaymentService_presentRegistrationFlowWithAccount_amount_state_senderAddress_orientation_hostSceneIdentifier_hostSceneBundleIdentifier_completion___block_invoke_2;
    v33[3] = &unk_1E79C4888;
    v33[4] = self;
    v34 = v24;
    v27 = v29;
    [v26 presentRegistrationFlowWithAccount:accountCopy amount:v29 state:state senderAddress:addressCopy orientation:orientationCopy hostSceneIdentifier:identifierCopy hostSceneBundleIdentifier:bundleIdentifierCopy completion:v33];

    v23 = v30;
  }

  else
  {
    v27 = amountCopy;
    v28 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, "Cannot present registration flow will a nil account", buf, 2u);
    }

    if (v23)
    {
      v23[2](v23, 0);
    }
  }
}

void __155__PKPeerPaymentService_presentRegistrationFlowWithAccount_amount_state_senderAddress_orientation_hostSceneIdentifier_hostSceneBundleIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __155__PKPeerPaymentService_presentRegistrationFlowWithAccount_amount_state_senderAddress_orientation_hostSceneIdentifier_hostSceneBundleIdentifier_completion___block_invoke_47;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __155__PKPeerPaymentService_presentRegistrationFlowWithAccount_amount_state_senderAddress_orientation_hostSceneIdentifier_hostSceneBundleIdentifier_completion___block_invoke_47(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __155__PKPeerPaymentService_presentRegistrationFlowWithAccount_amount_state_senderAddress_orientation_hostSceneIdentifier_hostSceneBundleIdentifier_completion___block_invoke_2(uint64_t a1, char a2)
{
  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __155__PKPeerPaymentService_presentRegistrationFlowWithAccount_amount_state_senderAddress_orientation_hostSceneIdentifier_hostSceneBundleIdentifier_completion___block_invoke_3;
  v7[3] = &unk_1E79C4540;
  v5 = *(a1 + 40);
  v9 = a2;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v11 = v6;
  dispatch_async(v4, block);
}

uint64_t __155__PKPeerPaymentService_presentRegistrationFlowWithAccount_amount_state_senderAddress_orientation_hostSceneIdentifier_hostSceneBundleIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)presentPeerPaymentTermsAndConditionsWithAccount:(id)account orientation:(id)orientation completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  orientationCopy = orientation;
  completionCopy = completion;
  termsIdentifier = [accountCopy termsIdentifier];
  termsURL = [accountCopy termsURL];
  associatedPassUniqueID = [accountCopy associatedPassUniqueID];
  if (!termsURL)
  {
    v18 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 138412290;
    v26 = accountCopy;
    v19 = "Cannot present terms and conditions with a nil termsURL for acount %@";
    goto LABEL_11;
  }

  if (![termsIdentifier length])
  {
    v18 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 138412290;
    v26 = accountCopy;
    v19 = "Cannot present terms and conditions with a nil termsIdentifier for acount %@";
    goto LABEL_11;
  }

  if ([accountCopy termsAcceptanceRequired])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __95__PKPeerPaymentService_presentPeerPaymentTermsAndConditionsWithAccount_orientation_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v24 = a2;
    v15 = completionCopy;
    aBlock[4] = self;
    v23 = v15;
    v16 = _Block_copy(aBlock);
    v17 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v16];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __95__PKPeerPaymentService_presentPeerPaymentTermsAndConditionsWithAccount_orientation_completion___block_invoke_2;
    v20[3] = &unk_1E79C4888;
    v20[4] = self;
    v21 = v15;
    [v17 presentPeerPaymentTermsAndConditionsWithTermsURL:termsURL termsIdentifier:termsIdentifier passUniqueID:associatedPassUniqueID orientation:orientationCopy completion:v20];

    goto LABEL_14;
  }

  v18 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = accountCopy;
    v19 = "The user does not need to accept terms for account %@";
LABEL_11:
    _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
  }

LABEL_12:

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

LABEL_14:
}

void __95__PKPeerPaymentService_presentPeerPaymentTermsAndConditionsWithAccount_orientation_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __95__PKPeerPaymentService_presentPeerPaymentTermsAndConditionsWithAccount_orientation_completion___block_invoke_48;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __95__PKPeerPaymentService_presentPeerPaymentTermsAndConditionsWithAccount_orientation_completion___block_invoke_48(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __95__PKPeerPaymentService_presentPeerPaymentTermsAndConditionsWithAccount_orientation_completion___block_invoke_2(uint64_t a1, char a2)
{
  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __95__PKPeerPaymentService_presentPeerPaymentTermsAndConditionsWithAccount_orientation_completion___block_invoke_3;
  v7[3] = &unk_1E79C4540;
  v5 = *(a1 + 40);
  v9 = a2;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v11 = v6;
  dispatch_async(v4, block);
}

uint64_t __95__PKPeerPaymentService_presentPeerPaymentTermsAndConditionsWithAccount_orientation_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)receivedPeerPaymentMessageData:(id)data
{
  if (data)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__PKPeerPaymentService_receivedPeerPaymentMessageData___block_invoke;
    aBlock[3] = &unk_1E79CAED8;
    aBlock[4] = self;
    aBlock[5] = a2;
    dataCopy = data;
    v5 = _Block_copy(aBlock);
    v6 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v5];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__PKPeerPaymentService_receivedPeerPaymentMessageData___block_invoke_49;
    v7[3] = &unk_1E79C4E28;
    v7[4] = self;
    [v6 receivedPeerPaymentMessageData:dataCopy handler:v7];
  }
}

void __55__PKPeerPaymentService_receivedPeerPaymentMessageData___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &v4, 0xCu);
  }
}

- (void)updateMessageReceivedDate:(id)date forTransactionWithIdentifier:(id)identifier
{
  if (date)
  {
    if (identifier)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __79__PKPeerPaymentService_updateMessageReceivedDate_forTransactionWithIdentifier___block_invoke;
      aBlock[3] = &unk_1E79CAED8;
      aBlock[4] = self;
      aBlock[5] = a2;
      identifierCopy = identifier;
      dateCopy = date;
      v8 = _Block_copy(aBlock);
      v9 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v8];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __79__PKPeerPaymentService_updateMessageReceivedDate_forTransactionWithIdentifier___block_invoke_50;
      v10[3] = &unk_1E79C4E28;
      v10[4] = self;
      [v9 updateMessageReceivedDate:dateCopy forTransactionWithIdentifier:identifierCopy handler:v10];
    }
  }
}

void __79__PKPeerPaymentService_updateMessageReceivedDate_forTransactionWithIdentifier___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &v4, 0xCu);
  }
}

- (void)updateMockAccountBalanceByAddingAmount:(id)amount completion:(id)completion
{
  amountCopy = amount;
  completionCopy = completion;
  v9 = completionCopy;
  if (amountCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__PKPeerPaymentService_updateMockAccountBalanceByAddingAmount_completion___block_invoke;
    aBlock[3] = &unk_1E79C4658;
    v19 = a2;
    v10 = completionCopy;
    aBlock[4] = self;
    v18 = v10;
    v11 = _Block_copy(aBlock);
    v12 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v11];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __74__PKPeerPaymentService_updateMockAccountBalanceByAddingAmount_completion___block_invoke_2;
    v15[3] = &unk_1E79E4538;
    v15[4] = self;
    v16 = v10;
    [v12 updateMockAccountBalanceByAddingAmount:amountCopy completion:v15];
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Ignoring request to update mock account balance with nil amount", v14, 2u);
    }

    if (v9)
    {
      v9[2](v9, 0);
    }
  }
}

void __74__PKPeerPaymentService_updateMockAccountBalanceByAddingAmount_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__PKPeerPaymentService_updateMockAccountBalanceByAddingAmount_completion___block_invoke_51;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __74__PKPeerPaymentService_updateMockAccountBalanceByAddingAmount_completion___block_invoke_51(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __74__PKPeerPaymentService_updateMockAccountBalanceByAddingAmount_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__PKPeerPaymentService_updateMockAccountBalanceByAddingAmount_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __74__PKPeerPaymentService_updateMockAccountBalanceByAddingAmount_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (id)balanceForPass:(id)pass
{
  passCopy = pass;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__85;
  v14 = __Block_byref_object_dispose__85;
  v15 = 0;
  v6 = [(PKPeerPaymentService *)self _synchronousRemoteObjectProxyForSelector:a2];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__PKPeerPaymentService_balanceForPass___block_invoke;
  v9[3] = &unk_1E79E4560;
  v9[4] = &v10;
  [v6 balanceForPass:passCopy completion:v9];
  v7 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v7;
}

- (void)setLastUsedAlternateFundingSourcePassUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [(PKPeerPaymentService *)self _synchronousRemoteObjectProxyForSelector:a2];
  [v6 setLastUsedAlternateFundingSourcePassUniqueIdentifier:identifierCopy handler:&__block_literal_global_54_2];
}

- (id)lastUsedAlternateFundingSourcePassUniqueIdentifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__85;
  v11 = __Block_byref_object_dispose__85;
  v12 = 0;
  v3 = [(PKPeerPaymentService *)self _synchronousRemoteObjectProxyForSelector:a2];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__PKPeerPaymentService_lastUsedAlternateFundingSourcePassUniqueIdentifier__block_invoke;
  v6[3] = &unk_1E79E4588;
  v6[4] = self;
  v6[5] = &v7;
  [v3 lastUsedAlternateFundingSourcePassUniqueIdentifier:v6];
  v4 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)downloadPassIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PKPeerPaymentService_downloadPassIfNecessaryWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__PKPeerPaymentService_downloadPassIfNecessaryWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C4888;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 downloadPassIfNecessaryWithCompletion:v10];
}

void __62__PKPeerPaymentService_downloadPassIfNecessaryWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__PKPeerPaymentService_downloadPassIfNecessaryWithCompletion___block_invoke_56;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __62__PKPeerPaymentService_downloadPassIfNecessaryWithCompletion___block_invoke_56(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __62__PKPeerPaymentService_downloadPassIfNecessaryWithCompletion___block_invoke_2(uint64_t a1, char a2)
{
  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__PKPeerPaymentService_downloadPassIfNecessaryWithCompletion___block_invoke_3;
  v7[3] = &unk_1E79C4540;
  v5 = *(a1 + 40);
  v9 = a2;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v11 = v6;
  dispatch_async(v4, block);
}

uint64_t __62__PKPeerPaymentService_downloadPassIfNecessaryWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)registerDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__PKPeerPaymentService_registerDeviceWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__PKPeerPaymentService_registerDeviceWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C4A68;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 registerDeviceWithCompletion:v10];
}

void __53__PKPeerPaymentService_registerDeviceWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__PKPeerPaymentService_registerDeviceWithCompletion___block_invoke_57;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __53__PKPeerPaymentService_registerDeviceWithCompletion___block_invoke_57(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __53__PKPeerPaymentService_registerDeviceWithCompletion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__PKPeerPaymentService_registerDeviceWithCompletion___block_invoke_3;
  v11[3] = &unk_1E79C46F8;
  v7 = *(a1 + 40);
  v15 = a2;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v7;
  v9 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v17 = v9;
  v10 = v5;
  dispatch_async(v6, block);
}

uint64_t __53__PKPeerPaymentService_registerDeviceWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  return result;
}

- (void)registerDeviceWithForceReregister:(BOOL)reregister completion:(id)completion
{
  reregisterCopy = reregister;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PKPeerPaymentService_registerDeviceWithForceReregister_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v16 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v15 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v9];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__PKPeerPaymentService_registerDeviceWithForceReregister_completion___block_invoke_2;
  v12[3] = &unk_1E79C4A68;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v10 registerDeviceWithForceReregister:reregisterCopy completion:v12];
}

void __69__PKPeerPaymentService_registerDeviceWithForceReregister_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__PKPeerPaymentService_registerDeviceWithForceReregister_completion___block_invoke_59;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __69__PKPeerPaymentService_registerDeviceWithForceReregister_completion___block_invoke_59(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __69__PKPeerPaymentService_registerDeviceWithForceReregister_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__PKPeerPaymentService_registerDeviceWithForceReregister_completion___block_invoke_3;
  v11[3] = &unk_1E79C46F8;
  v7 = *(a1 + 40);
  v15 = a2;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v7;
  v9 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v17 = v9;
  v10 = v5;
  dispatch_async(v6, block);
}

uint64_t __69__PKPeerPaymentService_registerDeviceWithForceReregister_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  return result;
}

- (void)registerDeviceWithRegistrationURL:(id)l pushToken:(id)token forceReregister:(BOOL)reregister completion:(id)completion
{
  reregisterCopy = reregister;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__PKPeerPaymentService_registerDeviceWithRegistrationURL_pushToken_forceReregister_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v22 = a2;
  v12 = completionCopy;
  aBlock[4] = self;
  v21 = v12;
  tokenCopy = token;
  lCopy = l;
  v15 = _Block_copy(aBlock);
  v16 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v15];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __95__PKPeerPaymentService_registerDeviceWithRegistrationURL_pushToken_forceReregister_completion___block_invoke_2;
  v18[3] = &unk_1E79C4A68;
  v18[4] = self;
  v19 = v12;
  v17 = v12;
  [v16 registerDeviceWithRegistrationURL:lCopy pushToken:tokenCopy forceReregister:reregisterCopy completion:v18];
}

void __95__PKPeerPaymentService_registerDeviceWithRegistrationURL_pushToken_forceReregister_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __95__PKPeerPaymentService_registerDeviceWithRegistrationURL_pushToken_forceReregister_completion___block_invoke_60;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __95__PKPeerPaymentService_registerDeviceWithRegistrationURL_pushToken_forceReregister_completion___block_invoke_60(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __95__PKPeerPaymentService_registerDeviceWithRegistrationURL_pushToken_forceReregister_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __95__PKPeerPaymentService_registerDeviceWithRegistrationURL_pushToken_forceReregister_completion___block_invoke_3;
  v11[3] = &unk_1E79C46F8;
  v7 = *(a1 + 40);
  v15 = a2;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v7;
  v9 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v17 = v9;
  v10 = v5;
  dispatch_async(v6, block);
}

uint64_t __95__PKPeerPaymentService_registerDeviceWithRegistrationURL_pushToken_forceReregister_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  return result;
}

- (void)unregisterDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__PKPeerPaymentService_unregisterDeviceWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__PKPeerPaymentService_unregisterDeviceWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C4A68;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 unregisterDeviceWithCompletion:v10];
}

void __55__PKPeerPaymentService_unregisterDeviceWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__PKPeerPaymentService_unregisterDeviceWithCompletion___block_invoke_61;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __55__PKPeerPaymentService_unregisterDeviceWithCompletion___block_invoke_61(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __55__PKPeerPaymentService_unregisterDeviceWithCompletion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__PKPeerPaymentService_unregisterDeviceWithCompletion___block_invoke_3;
  v11[3] = &unk_1E79C46F8;
  v7 = *(a1 + 40);
  v15 = a2;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v7;
  v9 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v17 = v9;
  v10 = v5;
  dispatch_async(v6, block);
}

uint64_t __55__PKPeerPaymentService_unregisterDeviceWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  return result;
}

- (void)initalizeCloudStoreIfNecessaryWithHandler:(id)handler
{
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PKPeerPaymentService_initalizeCloudStoreIfNecessaryWithHandler___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = handlerCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__PKPeerPaymentService_initalizeCloudStoreIfNecessaryWithHandler___block_invoke_2;
  v10[3] = &unk_1E79C4A68;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 initalizeCloudStoreIfNecessaryWithHandler:v10];
}

void __66__PKPeerPaymentService_initalizeCloudStoreIfNecessaryWithHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PKPeerPaymentService_initalizeCloudStoreIfNecessaryWithHandler___block_invoke_62;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __66__PKPeerPaymentService_initalizeCloudStoreIfNecessaryWithHandler___block_invoke_62(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __66__PKPeerPaymentService_initalizeCloudStoreIfNecessaryWithHandler___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__PKPeerPaymentService_initalizeCloudStoreIfNecessaryWithHandler___block_invoke_3;
  v11[3] = &unk_1E79C46F8;
  v7 = *(a1 + 40);
  v15 = a2;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v7;
  v9 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v17 = v9;
  v10 = v5;
  dispatch_async(v6, block);
}

uint64_t __66__PKPeerPaymentService_initalizeCloudStoreIfNecessaryWithHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  return result;
}

- (void)cloudStoreStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__PKPeerPaymentService_cloudStoreStatusWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__PKPeerPaymentService_cloudStoreStatusWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79E2180;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 cloudStoreStatusWithCompletion:v10];
}

void __55__PKPeerPaymentService_cloudStoreStatusWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__PKPeerPaymentService_cloudStoreStatusWithCompletion___block_invoke_63;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __55__PKPeerPaymentService_cloudStoreStatusWithCompletion___block_invoke_63(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, 0);
  }

  return result;
}

void __55__PKPeerPaymentService_cloudStoreStatusWithCompletion___block_invoke_2(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = dispatch_get_global_queue(0, 0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__PKPeerPaymentService_cloudStoreStatusWithCompletion___block_invoke_3;
  v14[3] = &unk_1E79D1490;
  v10 = *(a1 + 40);
  v19 = a3;
  v15 = v7;
  v16 = v8;
  v17 = *(a1 + 32);
  v18 = v10;
  v11 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v21 = v11;
  v12 = v8;
  v13 = v7;
  dispatch_async(v9, block);
}

uint64_t __55__PKPeerPaymentService_cloudStoreStatusWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), *(a1 + 64), *(a1 + 40));
  }

  return result;
}

- (void)checkTLKsMissingWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__PKPeerPaymentService_checkTLKsMissingWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__PKPeerPaymentService_checkTLKsMissingWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C4A68;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 checkTLKsMissingWithCompletion:v10];
}

void __55__PKPeerPaymentService_checkTLKsMissingWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__PKPeerPaymentService_checkTLKsMissingWithCompletion___block_invoke_65;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __55__PKPeerPaymentService_checkTLKsMissingWithCompletion___block_invoke_65(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __55__PKPeerPaymentService_checkTLKsMissingWithCompletion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__PKPeerPaymentService_checkTLKsMissingWithCompletion___block_invoke_3;
  v11[3] = &unk_1E79C46F8;
  v7 = *(a1 + 40);
  v15 = a2;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v7;
  v9 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v17 = v9;
  v10 = v5;
  dispatch_async(v6, block);
}

uint64_t __55__PKPeerPaymentService_checkTLKsMissingWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  return result;
}

- (void)resetApplePayManateeViewWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__PKPeerPaymentService_resetApplePayManateeViewWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__PKPeerPaymentService_resetApplePayManateeViewWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C4A68;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 resetApplePayManateeViewWithCompletion:v10];
}

void __63__PKPeerPaymentService_resetApplePayManateeViewWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PKPeerPaymentService_resetApplePayManateeViewWithCompletion___block_invoke_66;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __63__PKPeerPaymentService_resetApplePayManateeViewWithCompletion___block_invoke_66(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __63__PKPeerPaymentService_resetApplePayManateeViewWithCompletion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__PKPeerPaymentService_resetApplePayManateeViewWithCompletion___block_invoke_3;
  v11[3] = &unk_1E79C46F8;
  v7 = *(a1 + 40);
  v15 = a2;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v7;
  v9 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v17 = v9;
  v10 = v5;
  dispatch_async(v6, block);
}

uint64_t __63__PKPeerPaymentService_resetApplePayManateeViewWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  return result;
}

- (void)remoteRegistrationRequest:(id)request forHandle:(id)handle completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__PKPeerPaymentService_remoteRegistrationRequest_forHandle_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v19 = v10;
  handleCopy = handle;
  requestCopy = request;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__PKPeerPaymentService_remoteRegistrationRequest_forHandle_completion___block_invoke_2;
  v16[3] = &unk_1E79C4860;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 remoteRegistrationRequest:requestCopy forHandle:handleCopy completion:v16];
}

void __71__PKPeerPaymentService_remoteRegistrationRequest_forHandle_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__PKPeerPaymentService_remoteRegistrationRequest_forHandle_completion___block_invoke_67;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __71__PKPeerPaymentService_remoteRegistrationRequest_forHandle_completion___block_invoke_67(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __71__PKPeerPaymentService_remoteRegistrationRequest_forHandle_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__PKPeerPaymentService_remoteRegistrationRequest_forHandle_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __71__PKPeerPaymentService_remoteRegistrationRequest_forHandle_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)_accountChanged:(id)changed
{
  if (self->_accountChangedNotificationSuspensionCount <= 0)
  {
    v5[5] = v3;
    v5[6] = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __40__PKPeerPaymentService__accountChanged___block_invoke;
    v5[3] = &unk_1E79E45B0;
    v5[4] = self;
    [(PKPeerPaymentService *)self accountWithCompletion:v5];
  }
}

- (void)_preferencesChanged:(id)changed
{
  os_unfair_lock_lock(&self->_accountLock);
  v4 = self->_preferences;
  os_unfair_lock_unlock(&self->_accountLock);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__PKPeerPaymentService__preferencesChanged___block_invoke;
  v6[3] = &unk_1E79E45D8;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(PKPeerPaymentService *)self preferencesWithCompletion:v6];
}

void __44__PKPeerPaymentService__preferencesChanged___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([v3 isEqual:*(a1 + 32)] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = v4;
    v6 = *(a1 + 40);
    if (v3)
    {
      v8 = @"preferences";
      v9[0] = v3;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
      [v5 postNotificationName:@"PKPeerPaymentServicePreferencesChangedNotification" object:v6 userInfo:v7];
    }

    else
    {
      [v4 postNotificationName:@"PKPeerPaymentServicePreferencesChangedNotification" object:v6 userInfo:0];
    }
  }
}

- (void)_postAccountChangeNotificationIfNecessaryForAccount:(id)account previousAccount:(id)previousAccount
{
  v14[1] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v7 = accountCopy;
  if (accountCopy && previousAccount)
  {
    if ([accountCopy isEqual:previousAccount])
    {
      goto LABEL_12;
    }
  }

  else if (accountCopy == previousAccount)
  {
    goto LABEL_12;
  }

  v8 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Posting PKPeerPaymentServiceAccountChangedNotification", v12, 2u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v10 = defaultCenter;
  if (v7)
  {
    v13 = @"account";
    v14[0] = v7;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v10 postNotificationName:@"PKPeerPaymentServiceAccountChangedNotification" object:self userInfo:v11];
  }

  else
  {
    [defaultCenter postNotificationName:@"PKPeerPaymentServiceAccountChangedNotification" object:self userInfo:0];
  }

LABEL_12:
}

- (id)_synchronousRemoteObjectProxyForSelector:(SEL)selector
{
  remoteService = self->_remoteService;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__PKPeerPaymentService__synchronousRemoteObjectProxyForSelector___block_invoke;
  v6[3] = &unk_1E79C9840;
  v6[4] = self;
  v6[5] = selector;
  v4 = [(PKXPCService *)remoteService synchronousRemoteObjectProxyWithErrorHandler:v6];

  return v4;
}

void __65__PKPeerPaymentService__synchronousRemoteObjectProxyForSelector___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &v4, 0xCu);
  }
}

- (void)peerPaymentPendingRequestsForRequestTokens:(id)tokens completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__PKPeerPaymentService_peerPaymentPendingRequestsForRequestTokens_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  tokensCopy = tokens;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__PKPeerPaymentService_peerPaymentPendingRequestsForRequestTokens_completion___block_invoke_2;
  v13[3] = &unk_1E79C4B08;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 peerPaymentPendingRequestsForRequestTokens:tokensCopy completion:v13];
}

void __78__PKPeerPaymentService_peerPaymentPendingRequestsForRequestTokens_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__PKPeerPaymentService_peerPaymentPendingRequestsForRequestTokens_completion___block_invoke_77;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __78__PKPeerPaymentService_peerPaymentPendingRequestsForRequestTokens_completion___block_invoke_77(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __78__PKPeerPaymentService_peerPaymentPendingRequestsForRequestTokens_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)peerPaymentPendingRequestsForPeerPaymentAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__PKPeerPaymentService_peerPaymentPendingRequestsForPeerPaymentAccountWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__PKPeerPaymentService_peerPaymentPendingRequestsForPeerPaymentAccountWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C4B08;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 peerPaymentPendingRequestsForPeerPaymentAccountWithCompletion:v10];
}

void __86__PKPeerPaymentService_peerPaymentPendingRequestsForPeerPaymentAccountWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__PKPeerPaymentService_peerPaymentPendingRequestsForPeerPaymentAccountWithCompletion___block_invoke_79;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __86__PKPeerPaymentService_peerPaymentPendingRequestsForPeerPaymentAccountWithCompletion___block_invoke_79(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __86__PKPeerPaymentService_peerPaymentPendingRequestsForPeerPaymentAccountWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)insertOrUpdatePeerPaymentPendingRequests:(id)requests shouldScheduleNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  v16 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__PKPeerPaymentService_insertOrUpdatePeerPaymentPendingRequests_shouldScheduleNotifications___block_invoke;
  aBlock[3] = &unk_1E79CAED8;
  aBlock[4] = self;
  aBlock[5] = a2;
  requestsCopy = requests;
  v8 = _Block_copy(aBlock);
  v9 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138412290;
    v15 = v10;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Calling [PKPeerPaymentService %@];", buf, 0xCu);
  }

  v11 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v8];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __93__PKPeerPaymentService_insertOrUpdatePeerPaymentPendingRequests_shouldScheduleNotifications___block_invoke_80;
  v12[3] = &unk_1E79C4E28;
  v12[4] = self;
  [v11 insertOrUpdatePeerPaymentPendingRequests:requestsCopy shouldScheduleNotifications:notificationsCopy completion:v12];
}

void __93__PKPeerPaymentService_insertOrUpdatePeerPaymentPendingRequests_shouldScheduleNotifications___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &v4, 0xCu);
  }
}

- (void)deletePeerPaymentPendingRequestsForRequestTokens:(id)tokens
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PKPeerPaymentService_deletePeerPaymentPendingRequestsForRequestTokens___block_invoke;
  aBlock[3] = &unk_1E79CAED8;
  aBlock[4] = self;
  aBlock[5] = a2;
  tokensCopy = tokens;
  v5 = _Block_copy(aBlock);
  v6 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__PKPeerPaymentService_deletePeerPaymentPendingRequestsForRequestTokens___block_invoke_81;
  v7[3] = &unk_1E79C4E28;
  v7[4] = self;
  [v6 deletePeerPaymentPendingRequestsForRequestTokens:tokensCopy completion:v7];
}

void __73__PKPeerPaymentService_deletePeerPaymentPendingRequestsForRequestTokens___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &v4, 0xCu);
  }
}

- (void)deletePeerPaymentPendingRequestsForPeerPaymentAccount
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PKPeerPaymentService_deletePeerPaymentPendingRequestsForPeerPaymentAccount__block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = a2;
  v3 = _Block_copy(aBlock);
  v4 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v3];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__PKPeerPaymentService_deletePeerPaymentPendingRequestsForPeerPaymentAccount__block_invoke_82;
  v5[3] = &unk_1E79C4E28;
  v5[4] = self;
  [v4 deletePeerPaymentPendingRequestsForPeerPaymentAccountWithCompletion:v5];
}

void __77__PKPeerPaymentService_deletePeerPaymentPendingRequestsForPeerPaymentAccount__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 32));
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &v4, 0xCu);
  }
}

- (void)pendingRequestsChanged
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Calling [PKPeerPaymentService %@];", &v6, 0xCu);
  }

  [(PKPeerPaymentService *)self _accessObserversWithHandler:&__block_literal_global_85_1];
}

void __46__PKPeerPaymentService_pendingRequestsChanged__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 pendingRequestsChanged];
  }
}

- (void)recurringPaymentsWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PKPeerPaymentService_recurringPaymentsWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__PKPeerPaymentService_recurringPaymentsWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C4B08;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 recurringPaymentsWithCompletion:v10];
}

void __56__PKPeerPaymentService_recurringPaymentsWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__PKPeerPaymentService_recurringPaymentsWithCompletion___block_invoke_88;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __56__PKPeerPaymentService_recurringPaymentsWithCompletion___block_invoke_88(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __56__PKPeerPaymentService_recurringPaymentsWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateAutoReloadAmount:(id)amount threshold:(id)threshold identifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__PKPeerPaymentService_updateAutoReloadAmount_threshold_identifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v23 = a2;
  v12 = completionCopy;
  aBlock[4] = self;
  v22 = v12;
  identifierCopy = identifier;
  thresholdCopy = threshold;
  amountCopy = amount;
  v16 = _Block_copy(aBlock);
  v17 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v16];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __79__PKPeerPaymentService_updateAutoReloadAmount_threshold_identifier_completion___block_invoke_2;
  v19[3] = &unk_1E79E4620;
  v19[4] = self;
  v20 = v12;
  v18 = v12;
  [v17 updateAutoReloadAmount:amountCopy threshold:thresholdCopy identifier:identifierCopy completion:v19];
}

void __79__PKPeerPaymentService_updateAutoReloadAmount_threshold_identifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__PKPeerPaymentService_updateAutoReloadAmount_threshold_identifier_completion___block_invoke_89;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __79__PKPeerPaymentService_updateAutoReloadAmount_threshold_identifier_completion___block_invoke_89(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __79__PKPeerPaymentService_updateAutoReloadAmount_threshold_identifier_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateRecurringPaymentsWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PKPeerPaymentService_updateRecurringPaymentsWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__PKPeerPaymentService_updateRecurringPaymentsWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C9BC8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 updateRecurringPaymentsWithCompletion:v10];
}

void __62__PKPeerPaymentService_updateRecurringPaymentsWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__PKPeerPaymentService_updateRecurringPaymentsWithCompletion___block_invoke_91;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __62__PKPeerPaymentService_updateRecurringPaymentsWithCompletion___block_invoke_91(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __62__PKPeerPaymentService_updateRecurringPaymentsWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)insertOrUpdateRecurringPayments:(id)payments completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__PKPeerPaymentService_insertOrUpdateRecurringPayments_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  paymentsCopy = payments;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__PKPeerPaymentService_insertOrUpdateRecurringPayments_completion___block_invoke_2;
  v13[3] = &unk_1E79C44A0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 insertOrUpdateRecurringPayments:paymentsCopy completion:v13];
}

void __67__PKPeerPaymentService_insertOrUpdateRecurringPayments_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__PKPeerPaymentService_insertOrUpdateRecurringPayments_completion___block_invoke_93;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __67__PKPeerPaymentService_insertOrUpdateRecurringPayments_completion___block_invoke_93(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __67__PKPeerPaymentService_insertOrUpdateRecurringPayments_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteRecurringPaymentsForIdentifiers:(id)identifiers completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PKPeerPaymentService_deleteRecurringPaymentsForIdentifiers_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  identifiersCopy = identifiers;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__PKPeerPaymentService_deleteRecurringPaymentsForIdentifiers_completion___block_invoke_2;
  v13[3] = &unk_1E79C44A0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 deleteRecurringPaymentsForIdentifiers:identifiersCopy completion:v13];
}

void __73__PKPeerPaymentService_deleteRecurringPaymentsForIdentifiers_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__PKPeerPaymentService_deleteRecurringPaymentsForIdentifiers_completion___block_invoke_94;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __73__PKPeerPaymentService_deleteRecurringPaymentsForIdentifiers_completion___block_invoke_94(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __73__PKPeerPaymentService_deleteRecurringPaymentsForIdentifiers_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteAllRecurringPaymentsWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__PKPeerPaymentService_deleteAllRecurringPaymentsWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__PKPeerPaymentService_deleteAllRecurringPaymentsWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C44A0;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 deleteAllRecurringPaymentsWithCompletion:v10];
}

void __65__PKPeerPaymentService_deleteAllRecurringPaymentsWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__PKPeerPaymentService_deleteAllRecurringPaymentsWithCompletion___block_invoke_95;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __65__PKPeerPaymentService_deleteAllRecurringPaymentsWithCompletion___block_invoke_95(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __65__PKPeerPaymentService_deleteAllRecurringPaymentsWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)performRecurringPaymentAction:(unint64_t)action identifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PKPeerPaymentService_performRecurringPaymentAction_identifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v19 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v18 = v10;
  identifierCopy = identifier;
  v12 = _Block_copy(aBlock);
  v13 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__PKPeerPaymentService_performRecurringPaymentAction_identifier_completion___block_invoke_2;
  v15[3] = &unk_1E79E4648;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 performRecurringPaymentAction:action identifier:identifierCopy completion:v15];
}

void __76__PKPeerPaymentService_performRecurringPaymentAction_identifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__PKPeerPaymentService_performRecurringPaymentAction_identifier_completion___block_invoke_96;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __76__PKPeerPaymentService_performRecurringPaymentAction_identifier_completion___block_invoke_96(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __76__PKPeerPaymentService_performRecurringPaymentAction_identifier_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateRecurringPaymentMemo:(id)memo identifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PKPeerPaymentService_updateRecurringPaymentMemo_identifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v20 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v19 = v10;
  identifierCopy = identifier;
  memoCopy = memo;
  v13 = _Block_copy(aBlock);
  v14 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v13];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__PKPeerPaymentService_updateRecurringPaymentMemo_identifier_completion___block_invoke_2;
  v16[3] = &unk_1E79E4620;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 updateRecurringPaymentMemo:memoCopy identifier:identifierCopy completion:v16];
}

void __73__PKPeerPaymentService_updateRecurringPaymentMemo_identifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__PKPeerPaymentService_updateRecurringPaymentMemo_identifier_completion___block_invoke_98;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __73__PKPeerPaymentService_updateRecurringPaymentMemo_identifier_completion___block_invoke_98(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __73__PKPeerPaymentService_updateRecurringPaymentMemo_identifier_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateRecurringPaymentStatus:(unint64_t)status identifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__PKPeerPaymentService_updateRecurringPaymentStatus_identifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v19 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v18 = v10;
  identifierCopy = identifier;
  v12 = _Block_copy(aBlock);
  v13 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__PKPeerPaymentService_updateRecurringPaymentStatus_identifier_completion___block_invoke_2;
  v15[3] = &unk_1E79E4620;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 updateRecurringPaymentStatus:status identifier:identifierCopy completion:v15];
}

void __75__PKPeerPaymentService_updateRecurringPaymentStatus_identifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__PKPeerPaymentService_updateRecurringPaymentStatus_identifier_completion___block_invoke_99;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __75__PKPeerPaymentService_updateRecurringPaymentStatus_identifier_completion___block_invoke_99(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __75__PKPeerPaymentService_updateRecurringPaymentStatus_identifier_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)recurringPaymentsChanged
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Calling [PKPeerPaymentService %@];", &v6, 0xCu);
  }

  [(PKPeerPaymentService *)self _accessObserversWithHandler:&__block_literal_global_101_0];
}

void __48__PKPeerPaymentService_recurringPaymentsChanged__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 recurringPaymentsChanged];
  }
}

- (BOOL)hasRecurringPayments
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(PKPeerPaymentService *)self _synchronousRemoteObjectProxyForSelector:a2];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__PKPeerPaymentService_hasRecurringPayments__block_invoke;
  v5[3] = &unk_1E79C8E40;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [v3 hasRecurringPayments:v5];
  LOBYTE(selfCopy) = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)encryptionCertificateForDestination:(unint64_t)destination forceUpdate:(BOOL)update completion:(id)completion
{
  updateCopy = update;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PKPeerPaymentService_encryptionCertificateForDestination_forceUpdate_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v18 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v17 = v10;
  v11 = _Block_copy(aBlock);
  v12 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v11];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__PKPeerPaymentService_encryptionCertificateForDestination_forceUpdate_completion___block_invoke_2;
  v14[3] = &unk_1E79E4670;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  [v12 encryptionCertificateForDestination:destination forceUpdate:updateCopy completion:v14];
}

void __83__PKPeerPaymentService_encryptionCertificateForDestination_forceUpdate_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__PKPeerPaymentService_encryptionCertificateForDestination_forceUpdate_completion___block_invoke_104;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __83__PKPeerPaymentService_encryptionCertificateForDestination_forceUpdate_completion___block_invoke_104(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __83__PKPeerPaymentService_encryptionCertificateForDestination_forceUpdate_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)encryptData:(id)data usingCertificateWithDestination:(unint64_t)destination completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__PKPeerPaymentService_encryptData_usingCertificateWithDestination_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v19 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v18 = v10;
  dataCopy = data;
  v12 = _Block_copy(aBlock);
  v13 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__PKPeerPaymentService_encryptData_usingCertificateWithDestination_completion___block_invoke_2;
  v15[3] = &unk_1E79E4698;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 encryptData:dataCopy usingCertificateWithDestination:destination completion:v15];
}

void __79__PKPeerPaymentService_encryptData_usingCertificateWithDestination_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__PKPeerPaymentService_encryptData_usingCertificateWithDestination_completion___block_invoke_106;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __79__PKPeerPaymentService_encryptData_usingCertificateWithDestination_completion___block_invoke_106(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __79__PKPeerPaymentService_encryptData_usingCertificateWithDestination_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)presentSenderFlowWithHost:(unint64_t)host userInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__PKPeerPaymentService_presentSenderFlowWithHost_userInfo_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v19 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v18 = v10;
  infoCopy = info;
  v12 = _Block_copy(aBlock);
  v13 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__PKPeerPaymentService_presentSenderFlowWithHost_userInfo_completion___block_invoke_2;
  v15[3] = &unk_1E79C4888;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 presentSenderFlowWithHost:host userInfo:infoCopy completion:v15];
}

void __70__PKPeerPaymentService_presentSenderFlowWithHost_userInfo_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PKPeerPaymentService_presentSenderFlowWithHost_userInfo_completion___block_invoke_108;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __70__PKPeerPaymentService_presentSenderFlowWithHost_userInfo_completion___block_invoke_108(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __70__PKPeerPaymentService_presentSenderFlowWithHost_userInfo_completion___block_invoke_2(uint64_t a1, char a2)
{
  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PKPeerPaymentService_presentSenderFlowWithHost_userInfo_completion___block_invoke_3;
  v7[3] = &unk_1E79C4540;
  v5 = *(a1 + 40);
  v9 = a2;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v11 = v6;
  dispatch_async(v4, block);
}

uint64_t __70__PKPeerPaymentService_presentSenderFlowWithHost_userInfo_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)presentReceiverFlowWithOrientation:(id)orientation host:(unint64_t)host completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__PKPeerPaymentService_presentReceiverFlowWithOrientation_host_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v19 = a2;
  v10 = completionCopy;
  aBlock[4] = self;
  v18 = v10;
  orientationCopy = orientation;
  v12 = _Block_copy(aBlock);
  v13 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__PKPeerPaymentService_presentReceiverFlowWithOrientation_host_completion___block_invoke_2;
  v15[3] = &unk_1E79C4888;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [v13 presentReceiverFlowWithOrientation:orientationCopy host:host completion:v15];
}

void __75__PKPeerPaymentService_presentReceiverFlowWithOrientation_host_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__PKPeerPaymentService_presentReceiverFlowWithOrientation_host_completion___block_invoke_109;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __75__PKPeerPaymentService_presentReceiverFlowWithOrientation_host_completion___block_invoke_109(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __75__PKPeerPaymentService_presentReceiverFlowWithOrientation_host_completion___block_invoke_2(uint64_t a1, char a2)
{
  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__PKPeerPaymentService_presentReceiverFlowWithOrientation_host_completion___block_invoke_3;
  v7[3] = &unk_1E79C4540;
  v5 = *(a1 + 40);
  v9 = a2;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v11 = v6;
  dispatch_async(v4, block);
}

uint64_t __75__PKPeerPaymentService_presentReceiverFlowWithOrientation_host_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)insertOrUpdateDeviceOriginatedNearbyPeerPaymentTransactionWithIdentifier:(id)identifier memo:(id)memo counterpartAppearanceData:(id)data completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __139__PKPeerPaymentService_insertOrUpdateDeviceOriginatedNearbyPeerPaymentTransactionWithIdentifier_memo_counterpartAppearanceData_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v23 = a2;
  v12 = completionCopy;
  aBlock[4] = self;
  v22 = v12;
  dataCopy = data;
  memoCopy = memo;
  identifierCopy = identifier;
  v16 = _Block_copy(aBlock);
  v17 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v16];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __139__PKPeerPaymentService_insertOrUpdateDeviceOriginatedNearbyPeerPaymentTransactionWithIdentifier_memo_counterpartAppearanceData_completion___block_invoke_2;
  v19[3] = &unk_1E79C4888;
  v19[4] = self;
  v20 = v12;
  v18 = v12;
  [v17 insertOrUpdateDeviceOriginatedNearbyPeerPaymentTransactionWithIdentifier:identifierCopy memo:memoCopy counterpartAppearanceData:dataCopy completion:v19];
}

void __139__PKPeerPaymentService_insertOrUpdateDeviceOriginatedNearbyPeerPaymentTransactionWithIdentifier_memo_counterpartAppearanceData_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __139__PKPeerPaymentService_insertOrUpdateDeviceOriginatedNearbyPeerPaymentTransactionWithIdentifier_memo_counterpartAppearanceData_completion___block_invoke_110;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __139__PKPeerPaymentService_insertOrUpdateDeviceOriginatedNearbyPeerPaymentTransactionWithIdentifier_memo_counterpartAppearanceData_completion___block_invoke_110(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __139__PKPeerPaymentService_insertOrUpdateDeviceOriginatedNearbyPeerPaymentTransactionWithIdentifier_memo_counterpartAppearanceData_completion___block_invoke_2(uint64_t a1, char a2)
{
  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __139__PKPeerPaymentService_insertOrUpdateDeviceOriginatedNearbyPeerPaymentTransactionWithIdentifier_memo_counterpartAppearanceData_completion___block_invoke_3;
  v7[3] = &unk_1E79C4540;
  v5 = *(a1 + 40);
  v9 = a2;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v11 = v6;
  dispatch_async(v4, block);
}

uint64_t __139__PKPeerPaymentService_insertOrUpdateDeviceOriginatedNearbyPeerPaymentTransactionWithIdentifier_memo_counterpartAppearanceData_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)insertOrUpdateNearbyPeerPaymentSetupNotificationWithTransactionIdentifier:(id)identifier amount:(id)amount currency:(id)currency senderName:(id)name completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __136__PKPeerPaymentService_insertOrUpdateNearbyPeerPaymentSetupNotificationWithTransactionIdentifier_amount_currency_senderName_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v26 = a2;
  v14 = completionCopy;
  aBlock[4] = self;
  v25 = v14;
  nameCopy = name;
  currencyCopy = currency;
  amountCopy = amount;
  identifierCopy = identifier;
  v19 = _Block_copy(aBlock);
  v20 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v19];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __136__PKPeerPaymentService_insertOrUpdateNearbyPeerPaymentSetupNotificationWithTransactionIdentifier_amount_currency_senderName_completion___block_invoke_2;
  v22[3] = &unk_1E79C4888;
  v22[4] = self;
  v23 = v14;
  v21 = v14;
  [v20 insertOrUpdateNearbyPeerPaymentSetupNotificationWithTransactionIdentifier:identifierCopy amount:amountCopy currency:currencyCopy senderName:nameCopy completion:v22];
}

void __136__PKPeerPaymentService_insertOrUpdateNearbyPeerPaymentSetupNotificationWithTransactionIdentifier_amount_currency_senderName_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __136__PKPeerPaymentService_insertOrUpdateNearbyPeerPaymentSetupNotificationWithTransactionIdentifier_amount_currency_senderName_completion___block_invoke_111;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __136__PKPeerPaymentService_insertOrUpdateNearbyPeerPaymentSetupNotificationWithTransactionIdentifier_amount_currency_senderName_completion___block_invoke_111(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __136__PKPeerPaymentService_insertOrUpdateNearbyPeerPaymentSetupNotificationWithTransactionIdentifier_amount_currency_senderName_completion___block_invoke_2(uint64_t a1, char a2)
{
  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __136__PKPeerPaymentService_insertOrUpdateNearbyPeerPaymentSetupNotificationWithTransactionIdentifier_amount_currency_senderName_completion___block_invoke_3;
  v7[3] = &unk_1E79C4540;
  v5 = *(a1 + 40);
  v9 = a2;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v11 = v6;
  dispatch_async(v4, block);
}

uint64_t __136__PKPeerPaymentService_insertOrUpdateNearbyPeerPaymentSetupNotificationWithTransactionIdentifier_amount_currency_senderName_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)counterpartImageDataWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__PKPeerPaymentService_counterpartImageDataWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__PKPeerPaymentService_counterpartImageDataWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C4B08;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 counterpartImageDataWithCompletion:v10];
}

void __59__PKPeerPaymentService_counterpartImageDataWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__PKPeerPaymentService_counterpartImageDataWithCompletion___block_invoke_112;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __59__PKPeerPaymentService_counterpartImageDataWithCompletion___block_invoke_112(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __59__PKPeerPaymentService_counterpartImageDataWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__PKPeerPaymentService_counterpartImageDataWithCompletion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __59__PKPeerPaymentService_counterpartImageDataWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)counterpartImageDataWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__PKPeerPaymentService_counterpartImageDataWithIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__PKPeerPaymentService_counterpartImageDataWithIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79E46C0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 counterpartImageDataWithIdentifier:identifierCopy completion:v13];
}

void __70__PKPeerPaymentService_counterpartImageDataWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PKPeerPaymentService_counterpartImageDataWithIdentifier_completion___block_invoke_113;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __70__PKPeerPaymentService_counterpartImageDataWithIdentifier_completion___block_invoke_113(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __70__PKPeerPaymentService_counterpartImageDataWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__PKPeerPaymentService_counterpartImageDataWithIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __70__PKPeerPaymentService_counterpartImageDataWithIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)counterpartImageDataForTransactionWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__PKPeerPaymentService_counterpartImageDataForTransactionWithIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  identifierCopy = identifier;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__PKPeerPaymentService_counterpartImageDataForTransactionWithIdentifier_completion___block_invoke_2;
  v13[3] = &unk_1E79E46C0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 counterpartImageDataForTransactionWithIdentifier:identifierCopy completion:v13];
}

void __84__PKPeerPaymentService_counterpartImageDataForTransactionWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__PKPeerPaymentService_counterpartImageDataForTransactionWithIdentifier_completion___block_invoke_115;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __84__PKPeerPaymentService_counterpartImageDataForTransactionWithIdentifier_completion___block_invoke_115(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __84__PKPeerPaymentService_counterpartImageDataForTransactionWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__PKPeerPaymentService_counterpartImageDataForTransactionWithIdentifier_completion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __84__PKPeerPaymentService_counterpartImageDataForTransactionWithIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)deleteAllCounterpartImageDataWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__PKPeerPaymentService_deleteAllCounterpartImageDataWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__PKPeerPaymentService_deleteAllCounterpartImageDataWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C44A0;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 deleteAllCounterpartImageDataWithCompletion:v10];
}

void __68__PKPeerPaymentService_deleteAllCounterpartImageDataWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__PKPeerPaymentService_deleteAllCounterpartImageDataWithCompletion___block_invoke_116;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __68__PKPeerPaymentService_deleteAllCounterpartImageDataWithCompletion___block_invoke_116(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __68__PKPeerPaymentService_deleteAllCounterpartImageDataWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__PKPeerPaymentService_deleteAllCounterpartImageDataWithCompletion___block_invoke_3;
  v5[3] = &unk_1E79C44A0;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v8 = v4;
  dispatch_async(v2, block);
}

uint64_t __68__PKPeerPaymentService_deleteAllCounterpartImageDataWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)reportFailureDiagnostic:(id)diagnostic completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__PKPeerPaymentService_reportFailureDiagnostic_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  diagnosticCopy = diagnostic;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__PKPeerPaymentService_reportFailureDiagnostic_completion___block_invoke_2;
  v13[3] = &unk_1E79C4A68;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 reportFailureDiagnostic:diagnosticCopy completion:v13];
}

void __59__PKPeerPaymentService_reportFailureDiagnostic_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__PKPeerPaymentService_reportFailureDiagnostic_completion___block_invoke_117;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __59__PKPeerPaymentService_reportFailureDiagnostic_completion___block_invoke_117(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __59__PKPeerPaymentService_reportFailureDiagnostic_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__PKPeerPaymentService_reportFailureDiagnostic_completion___block_invoke_3;
  v11[3] = &unk_1E79C46F8;
  v7 = *(a1 + 40);
  v15 = a2;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v7;
  v9 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v17 = v9;
  v10 = v5;
  dispatch_async(v6, block);
}

uint64_t __59__PKPeerPaymentService_reportFailureDiagnostic_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  return result;
}

- (void)userInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__PKPeerPaymentService_userInfoWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__PKPeerPaymentService_userInfoWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79E46E8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 userInfoWithCompletion:v10];
}

void __47__PKPeerPaymentService_userInfoWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__PKPeerPaymentService_userInfoWithCompletion___block_invoke_118;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __47__PKPeerPaymentService_userInfoWithCompletion___block_invoke_118(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __47__PKPeerPaymentService_userInfoWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__PKPeerPaymentService_userInfoWithCompletion___block_invoke_3;
  v9[3] = &unk_1E79C44F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v14 = v7;
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __47__PKPeerPaymentService_userInfoWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)fetchUserInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__PKPeerPaymentService_fetchUserInfoWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__PKPeerPaymentService_fetchUserInfoWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79E4710;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 fetchUserInfoWithCompletion:v10];
}

void __52__PKPeerPaymentService_fetchUserInfoWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__PKPeerPaymentService_fetchUserInfoWithCompletion___block_invoke_120;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __52__PKPeerPaymentService_fetchUserInfoWithCompletion___block_invoke_120(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __52__PKPeerPaymentService_fetchUserInfoWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(0, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__PKPeerPaymentService_fetchUserInfoWithCompletion___block_invoke_3;
  v12[3] = &unk_1E79C45E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 32);
  v16 = v8;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v18 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __52__PKPeerPaymentService_fetchUserInfoWithCompletion___block_invoke_3(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)insertOrUpdateUserInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__PKPeerPaymentService_insertOrUpdateUserInfo_completion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v17 = a2;
  v8 = completionCopy;
  aBlock[4] = self;
  v16 = v8;
  infoCopy = info;
  v10 = _Block_copy(aBlock);
  v11 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v10];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__PKPeerPaymentService_insertOrUpdateUserInfo_completion___block_invoke_2;
  v13[3] = &unk_1E79C44A0;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 insertOrUpdateUserInfo:infoCopy completion:v13];
}

void __58__PKPeerPaymentService_insertOrUpdateUserInfo_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__PKPeerPaymentService_insertOrUpdateUserInfo_completion___block_invoke_122;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __58__PKPeerPaymentService_insertOrUpdateUserInfo_completion___block_invoke_122(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __58__PKPeerPaymentService_insertOrUpdateUserInfo_completion___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__PKPeerPaymentService_insertOrUpdateUserInfo_completion___block_invoke_3;
  v5[3] = &unk_1E79C44A0;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v8 = v4;
  dispatch_async(v2, block);
}

uint64_t __58__PKPeerPaymentService_insertOrUpdateUserInfo_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteUserInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__PKPeerPaymentService_deleteUserInfoWithCompletion___block_invoke;
  aBlock[3] = &unk_1E79C4658;
  v14 = a2;
  v6 = completionCopy;
  aBlock[4] = self;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(PKPeerPaymentService *)self _remoteObjectProxyWithFailureHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__PKPeerPaymentService_deleteUserInfoWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79C44A0;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 deleteUserInfoWithCompletion:v10];
}

void __53__PKPeerPaymentService_deleteUserInfoWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "XPC Failure in [PKPeerPaymentService %@];", &buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__PKPeerPaymentService_deleteUserInfoWithCompletion___block_invoke_123;
  v7[3] = &unk_1E79C44A0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v7;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v10 = __dispatch_async_ar_block_invoke_23;
  v11 = &unk_1E79C4428;
  v12 = v6;
  dispatch_async(v4, &buf);
}

uint64_t __53__PKPeerPaymentService_deleteUserInfoWithCompletion___block_invoke_123(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __53__PKPeerPaymentService_deleteUserInfoWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__PKPeerPaymentService_deleteUserInfoWithCompletion___block_invoke_3;
  v5[3] = &unk_1E79C44A0;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_23;
  block[3] = &unk_1E79C4428;
  v8 = v4;
  dispatch_async(v2, block);
}

uint64_t __53__PKPeerPaymentService_deleteUserInfoWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)userInfoChanged
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Calling [PKPeerPaymentService %@];", &v6, 0xCu);
  }

  [(PKPeerPaymentService *)self _accessObserversWithHandler:&__block_literal_global_125_4];
}

void __39__PKPeerPaymentService_userInfoChanged__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 userInfoChanged];
  }
}

@end