@interface NPKCompanionAgentConnection
+ (BOOL)isSetupAssistantProvisioningSupported;
+ (id)watchPaymentWebService;
+ (id)watchPeerPaymentWebService;
+ (id)watchProvisioningURLForPaymentPasses:(id)passes;
- (BOOL)isIssuerAppProvisioningSupported;
- (BOOL)pairedWatchHasApplicationWithBundleID:(id)d;
- (BOOL)shouldShowWatchExtensionInstallationForPaymentPass:(id)pass;
- (NPKCompanionAgentConnection)init;
- (NPKCompanionAgentConnectionDelegate)delegate;
- (id)_cachedPassForUniqueID:(id)d;
- (id)_cachedUniqueIDs;
- (id)_errorHandlerWithCompletion:(id)completion;
- (id)_installedCompanionApplicationBundleIDForPaymentPass:(id)pass;
- (id)_remoteObjectProxySynchronize:(BOOL)synchronize withFailureHandler:(id)handler;
- (id)passesOfType:(unint64_t)type;
- (id)peerPaymentAccountForDevice:(id)device;
- (id)sharedPaymentWebServiceContext;
- (id)sharedPaymentWebServiceContextForDevice:(id)device;
- (id)sharedPeerPaymentWebServiceContextForDevice:(id)device;
- (id)watchPaymentWebService;
- (unint64_t)_isApplePaySupportedInCurrentRegion;
- (void)_addPassToCache:(id)cache;
- (void)_applyPropertiesToPass:(id)pass;
- (void)_clearCaches;
- (void)_handleDefaultCardChanged:(id)changed;
- (void)_handleServerPaymentPassesChanged:(id)changed;
- (void)_invalidateCachedPassWithUniqueID:(id)d;
- (void)_removePassWithUniqueIDFromCache:(id)cache;
- (void)_savePaymentPass:(id)pass atURL:(id)l forDevice:(id)device completion:(id)completion;
- (void)_setCachedUniqueIDs:(id)ds;
- (void)_shouldShowApplePaySettingsForTinkerWithCompletion:(id)completion;
- (void)_shouldShowApplePaySettingsWithCompletion:(id)completion;
- (void)addPendingProvisionings:(id)provisionings identityTargetDeviceIdentifier:(id)identifier completion:(id)completion;
- (void)allPaymentApplicationUsageSummariesWithCompletion:(id)completion;
- (void)balanceReminderForBalance:(id)balance pass:(id)pass withCompletion:(id)completion;
- (void)balancesForPaymentPassWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)beginPairedWatchInstallationOfApplicationForPaymentPass:(id)pass completion:(id)completion;
- (void)beginPairedWatchInstallationOfWalletWithCompletion:(id)completion;
- (void)beginProvisioningFromWatchOfferForPaymentPass:(id)pass withCompletion:(id)completion;
- (void)beginProvisioningFromWatchOfferForPaymentPasses:(id)passes withCompletion:(id)completion;
- (void)bridgedClientInfoWithCompletion:(id)completion;
- (void)commutePlanReminderForCommutePlan:(id)plan pass:(id)pass withCompletion:(id)completion;
- (void)consistencyCheckWithCompletion:(id)completion;
- (void)currentSecureElementSnapshot:(id)snapshot;
- (void)currentSesdSnapshot:(id)snapshot;
- (void)dealloc;
- (void)defaultCardUniqueID:(id)d;
- (void)defaultPaymentApplicationForPassWithUniqueID:(id)d completion:(id)completion;
- (void)deletePaymentTransactionWithIdentifier:(id)identifier fromDevice:(id)device completion:(id)completion;
- (void)expressModeEnabledForPassIdentifier:(id)identifier completion:(id)completion;
- (void)fetchPendingTransactionForPassWithUniqueID:(id)d completion:(id)completion;
- (void)handleDeviceUnlockedForPendingProvisioningRequestFromGizmo;
- (void)handlePeerPaymentTermsAndConditionsRequestFromGizmo;
- (void)handlePendingUnpairingWithCompletion:(id)completion;
- (void)handlePendingiCloudSignoutWithCompletion:(id)completion;
- (void)hasActiveExternallySharedPasses:(id)passes;
- (void)hasActiveExternallySharedPassesWithCompletion:(id)completion;
- (void)identityPassesOfTypes:(id)types completion:(id)completion;
- (void)initiateLostModeExitAuthWithCompletion:(id)completion;
- (void)markAllAppletsForDeletionWithCompletion:(id)completion;
- (void)markPendingTransactionAsProcessedForPassWithUniqueID:(id)d;
- (void)noteWatchOfferShownForPaymentPass:(id)pass;
- (void)passesOfCardType:(int64_t)type completion:(id)completion;
- (void)paymentPassWithDeviceAccountIdentifier:(id)identifier completion:(id)completion;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didEnableMessageService:(BOOL)service;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didEnableTransactionService:(BOOL)service;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateBalanceReminder:(id)reminder forBalance:(id)balance;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithBalances:(id)balances;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithCredentials:(id)credentials forPaymentApplicationIdentifier:(id)applicationIdentifier;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitPassProperties:(id)properties;
- (void)paymentPassesWithPrimaryAccountIdentifier:(id)identifier completion:(id)completion;
- (void)presentStandaloneTransaction:(int64_t)transaction forPassUniqueIdentifier:(id)identifier terminalReaderIdentifier:(id)readerIdentifier completion:(id)completion;
- (void)provisionIdentityPassWithPassMetadata:(id)metadata policyIdentifier:(id)identifier targetDeviceIdentifier:(id)deviceIdentifier credentialIdentifier:(id)credentialIdentifier attestations:(id)attestations completion:(id)completion;
- (void)provisionIdentityPassWithPassMetadata:(id)metadata targetDeviceIdentifier:(id)identifier credentialIdentifier:(id)credentialIdentifier attestations:(id)attestations supplementalData:(id)data completion:(id)completion;
- (void)provisionPassForRemoteCredentialWithType:(int64_t)type andIdentifier:(id)identifier completion:(id)completion;
- (void)reclaimUnusedSEMemory:(id)memory;
- (void)reclaimUnusedSecureElementMemory:(id)memory;
- (void)redownloadAllPaymentPassesWithCompletion:(id)completion;
- (void)registerDeviceWithCompletion:(id)completion;
- (void)reloadPaymentPassesWithCompletion:(id)completion;
- (void)remoteService:(id)service didInterruptConnection:(id)connection;
- (void)removePass:(id)pass withCompletionHandler:(id)handler;
- (void)savePaymentPass:(id)pass forDevice:(id)device completion:(id)completion;
- (void)setBalanceReminder:(id)reminder forBalance:(id)balance pass:(id)pass completion:(id)completion;
- (void)setCommutePlanReminder:(id)reminder forCommutePlan:(id)plan pass:(id)pass completion:(id)completion;
- (void)setDefaultCardUniqueID:(id)d completion:(id)completion;
- (void)setDefaultPaymentApplication:(id)application forPassWithUniqueID:(id)d completion:(id)completion;
- (void)setDelegate:(id)delegate;
- (void)setPeerPaymentAccount:(id)account forDevice:(id)device;
- (void)setSharedPaymentWebServiceContext:(id)context forDevice:(id)device;
- (void)setSharedPeerPaymentWebServiceContext:(id)context forDevice:(id)device;
- (void)shouldShowApplePaySettingsWithCompletion:(id)completion;
- (void)shouldShowWatchOfferForPaymentPass:(id)pass withCompletion:(id)completion;
- (void)shouldShowWatchOfferForPaymentPasses:(id)passes withCompletion:(id)completion;
- (void)startBackgroundVerificationObserverForPass:(id)pass verificationMethod:(id)method;
- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction;
- (void)transactionSourceIdentifier:(id)identifier didRemoveTransactionWithIdentifier:(id)withIdentifier;
- (void)transactionsForTransactionSourceIdentifiers:(id)identifiers withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data startDate:(id)date endDate:(id)endDate orderedByDate:(int64_t)byDate limit:(int64_t)limit completion:(id)self0;
- (void)transitStateWithPassUniqueIdentifier:(id)identifier paymentApplication:(id)application completion:(id)completion;
- (void)trustedDeviceEnrollmentSignatureWithAccountDSID:(id)d sessionData:(id)data handler:(id)handler;
- (void)updateCredentials:(id)credentials forUniqueID:(id)d paymentApplicationIdentifier:(id)identifier completion:(id)completion;
- (void)updateSettings:(unint64_t)settings forPassWithUniqueID:(id)d;
- (void)willPassWithUniqueIdentifierAutomaticallyBecomeDefault:(id)default completion:(id)completion;
@end

@implementation NPKCompanionAgentConnection

- (NPKCompanionAgentConnection)init
{
  v26 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = NPKCompanionAgentConnection;
  v2 = [(NPKCompanionAgentConnection *)&v23 init];
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
        v25 = v2;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: New NPKCompanionAgentConnection created: %@", buf, 0xCu);
      }
    }

    v6 = objc_alloc(MEMORY[0x277D38348]);
    v7 = NPKCompanionServerProtocolInterface();
    v8 = NPKCompanionClientProtocolInterface();
    v9 = [v6 initWithMachServiceName:@"com.apple.NPKCompanionAgent.Server" remoteObjectInterface:v7 exportedObjectInterface:v8 exportedObject:v2];
    remoteService = v2->_remoteService;
    v2->_remoteService = v9;

    [(PKXPCService *)v2->_remoteService setDelegate:v2];
    v11 = dispatch_queue_create(0, 0);
    cacheQueue = v2->_cacheQueue;
    v2->_cacheQueue = v11;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    connectionAvailableActions = v2->_connectionAvailableActions;
    v2->_connectionAvailableActions = dictionary;

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter weak_addObserver:v2 selector:sel__handleServerPaymentPassesChanged_ name:@"com.apple.NPKCompanionServer.PaymentPassesChanged" object:0];

    v2->_notifyToken = -1;
    objc_initWeak(buf, v2);
    uTF8String = [@"com.apple.NPKCompanionServer.DefaultCardChanged" UTF8String];
    v17 = MEMORY[0x277D85CD0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __35__NPKCompanionAgentConnection_init__block_invoke;
    handler[3] = &unk_279944F20;
    objc_copyWeak(&v22, buf);
    notify_register_dispatch(uTF8String, &v2->_notifyToken, MEMORY[0x277D85CD0], handler);

    defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter2 weak_addObserver:v2 selector:sel__handleDefaultCardChanged_ name:@"com.apple.NPKCompanionServer.DefaultCardChanged" object:0];

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v2;
}

- (unint64_t)_isApplePaySupportedInCurrentRegion
{
  v3 = NPKDeviceRegion();
  if (v3)
  {
    v4 = NPKPairedOrPairingDevice();
    v5 = [(NPKCompanionAgentConnection *)self sharedPaymentWebServiceContextForDevice:v4];

    if (v5)
    {
      configuration = [v5 configuration];
      v7 = NPKSupportedRegionsForWebServiceConfiguration(configuration);

      v8 = PKStockholmSetupSupportedInRegion();
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection deallocating: %@", buf, 0xCu);
    }
  }

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter weak_removeObserver:self];

  if (notify_is_valid_token(self->_notifyToken))
  {
    notify_cancel(self->_notifyToken);
  }

  v8.receiver = self;
  v8.super_class = NPKCompanionAgentConnection;
  [(NPKCompanionAgentConnection *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

+ (id)watchProvisioningURLForPaymentPasses:(id)passes
{
  v36 = *MEMORY[0x277D85DE8];
  passesCopy = passes;
  v4 = objc_alloc_init(MEMORY[0x277CCACA8]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = passesCopy;
  v28 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v28)
  {
    v27 = *v30;
    do
    {
      v5 = 0;
      v6 = v4;
      do
      {
        if (*v30 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * v5);
        passTypeIdentifier = [v7 passTypeIdentifier];
        serialNumber = [v7 serialNumber];
        v10 = MEMORY[0x277CCAB68];
        uRLQueryAllowedCharacterSet = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
        v12 = [passTypeIdentifier stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];
        uRLQueryAllowedCharacterSet2 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
        v14 = [serialNumber stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet2];
        v15 = [v10 stringWithFormat:@"&passTypeIdentifier=%@&passSerialNumber=%@", v12, v14];

        v4 = [v6 stringByAppendingString:v15];

        ++v5;
        v6 = v4;
      }

      while (v28 != v5);
      v28 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v28);
  }

  v16 = MEMORY[0x277CCACA8];
  watchProvisioningURL = [self watchProvisioningURL];
  absoluteString = [watchProvisioningURL absoluteString];
  v19 = [v16 stringWithFormat:@"%@%@", absoluteString, v4];

  v20 = pk_General_log();
  LODWORD(watchProvisioningURL) = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

  if (watchProvisioningURL)
  {
    v21 = pk_General_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v19;
      _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_DEFAULT, "Notice: watchProvisioningURLForPaymentPasses returning URL: %@", buf, 0xCu);
    }
  }

  v22 = [MEMORY[0x277CBEBC0] URLWithString:v19];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (BOOL)isSetupAssistantProvisioningSupported
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = NPKPairedOrPairingDevice();
  v3 = v2;
  if (v2)
  {
    if (NPKIsTinkerDevice(v2))
    {
      v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"79770938-0C49-40BD-B593-4E04E7557E01"];
      LODWORD(v5) = [v3 supportsCapability:v4];
    }

    else
    {
      LODWORD(v5) = 1;
    }

    v8 = pk_General_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v7 = pk_General_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12[0] = 67109120;
        v12[1] = v5;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: isSetupAssistantProvisioningSupported:%d", v12, 8u);
      }

LABEL_12:
    }
  }

  else
  {
    v5 = pk_General_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    LOBYTE(v5) = 0;
    if (v6)
    {
      v7 = pk_General_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12[0]) = 0;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: isSetupAssistantProvisioningSupported:0. no pairing or paired device", v12, 2u);
      }

      LOBYTE(v5) = 0;
      goto LABEL_12;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isIssuerAppProvisioningSupported
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(NPKCompanionAgentConnection *)self _remoteObjectProxySynchronize:1 withFailureHandler:0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__NPKCompanionAgentConnection_isIssuerAppProvisioningSupported__block_invoke;
  v5[3] = &unk_27994AA80;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [v3 isIssuerAppProvisioningSupported:v5];
  LOBYTE(selfCopy) = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __63__NPKCompanionAgentConnection_isIssuerAppProvisioningSupported__block_invoke(uint64_t a1, char a2)
{
  v13 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(*(*(a1 + 40) + 8) + 24);
      v9 = 138412546;
      v10 = v6;
      v11 = 1024;
      v12 = v7;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Returning isIssuerAppProvisioningSupported %d", &v9, 0x12u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)watchPaymentWebService
{
  if (watchPaymentWebService_onceToken != -1)
  {
    +[NPKCompanionAgentConnection watchPaymentWebService];
  }

  v2 = +[NPKSharedWebServiceProvider sharedWebServiceProvider];
  [v2 loadWebService];
  webService = [v2 webService];

  return webService;
}

void __53__NPKCompanionAgentConnection_watchPaymentWebService__block_invoke()
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v0 = [MEMORY[0x277CCABD8] mainQueue];
  v1 = [v3 addObserverForName:@"NPKSharedWebServiceActiveDeviceDidChangeNotification" object:0 queue:v0 usingBlock:&__block_literal_global_95];
  v2 = watchPaymentWebService_notificationObserver;
  watchPaymentWebService_notificationObserver = v1;
}

void __53__NPKCompanionAgentConnection_watchPaymentWebService__block_invoke_2()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"com.apple.NanoPassKit.NPKCompanionAgentConnection.ActiveWatchWebServiceChanged" object:0];
}

+ (id)watchPeerPaymentWebService
{
  v2 = +[NPKSharedWebServiceProvider sharedWebServiceProvider];
  [v2 loadWebService];
  peerPaymentWebService = [v2 peerPaymentWebService];

  return peerPaymentWebService;
}

void __35__NPKCompanionAgentConnection_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDefaultCardChanged:0];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(PKXPCService *)self->_remoteService setForceConnectionOnResume:obj != 0];
    v5 = obj;
    if (obj)
    {
      v6 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:0];
      [v6 connect];

      v5 = obj;
    }
  }
}

- (void)_handleServerPaymentPassesChanged:(id)changed
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Server payment passes changed", buf, 0xCu);
    }
  }

  objc_initWeak(buf, self);
  cacheQueue = self->_cacheQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__NPKCompanionAgentConnection__handleServerPaymentPassesChanged___block_invoke;
  block[3] = &unk_279945030;
  objc_copyWeak(&v10, buf);
  dispatch_async(cacheQueue, block);
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __65__NPKCompanionAgentConnection__handleServerPaymentPassesChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _clearCaches];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__NPKCompanionAgentConnection__handleServerPaymentPassesChanged___block_invoke_2;
    block[3] = &unk_279944F98;
    block[4] = v2;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __65__NPKCompanionAgentConnection__handleServerPaymentPassesChanged___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"com.apple.NanoPassKit.NPKCompanionAgentConnection.PassesChanged" object:*(a1 + 32)];
}

- (void)_handleDefaultCardChanged:(id)changed
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): default card changed", buf, 0xCu);
    }
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__NPKCompanionAgentConnection__handleDefaultCardChanged___block_invoke;
  block[3] = &unk_279945030;
  objc_copyWeak(&v9, buf);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
  v7 = *MEMORY[0x277D85DE8];
}

void __57__NPKCompanionAgentConnection__handleDefaultCardChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    [v2 postNotificationName:@"com.apple.NanoPassKit.NPKCompanionAgentConnection.DefaultCardChanged" object:v3];

    WeakRetained = v3;
  }
}

- (void)shouldShowWatchOfferForPaymentPass:(id)pass withCompletion:(id)completion
{
  v77[2] = *MEMORY[0x277D85DE8];
  passCopy = pass;
  completionCopy = completion;
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];
  if (!NPKIsAddToWatchSupportedForCompanionPaymentPass(passCopy))
  {
    goto LABEL_25;
  }

  secureElementPass = [passCopy secureElementPass];
  v11 = NPKIsWatchOfferSupportedForCompanionPaymentPass(secureElementPass);

  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"6C4614A2-1ECC-4405-9FEE-B5F0A5666961"];
    v13 = [getActivePairedDevice supportsCapability:v12];

    if ((v13 & 1) == 0 && PKFelicaSecureElementIsAvailable())
    {
      secureElementIdentifiers = [MEMORY[0x277D38248] secureElementIdentifiers];
      if ([secureElementIdentifiers count]<= 1)
      {
      }

      else
      {
        primarySecureElementIdentifier = [MEMORY[0x277D38248] primarySecureElementIdentifier];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v77[0]) = 0;
        devicePaymentApplications = [passCopy devicePaymentApplications];
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = __81__NPKCompanionAgentConnection_shouldShowWatchOfferForPaymentPass_withCompletion___block_invoke;
        v73[3] = &unk_279945580;
        v17 = primarySecureElementIdentifier;
        v74 = v17;
        v75 = buf;
        [devicePaymentApplications enumerateObjectsUsingBlock:v73];

        if ((*(*&buf[8] + 24) & 1) == 0)
        {
          v30 = pk_Payment_log();
          v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);

          if (v31)
          {
            v32 = pk_Payment_log();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *v69 = 0;
              _os_log_impl(&dword_25B300000, v32, OS_LOG_TYPE_DEFAULT, "Notice: Card on Felica secure element cannot be transferred to non-Felica watch", v69, 2u);
            }
          }

          _Block_object_dispose(buf, 8);
          goto LABEL_24;
        }

        _Block_object_dispose(buf, 8);
      }
    }

    v23 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"BA0452A1-075E-4E13-B48F-E36DF2F88980"];
    v24 = [getActivePairedDevice supportsCapability:v23];

    if ((v24 & 1) != 0 || ([passCopy devicePrimaryPaymentApplication], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "paymentType") == 1003, v25, !v26))
    {
      v29 = 1;
      goto LABEL_26;
    }

    v27 = pk_Payment_log();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

    if (v28)
    {
      secureElementIdentifiers = pk_Payment_log();
      if (!os_log_type_enabled(secureElementIdentifiers, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v20 = "Notice: Unified access pass cannot be transferred to an unsupported watch";
      v21 = secureElementIdentifiers;
      v22 = 2;
      goto LABEL_11;
    }
  }

  else
  {
    v18 = pk_Payment_log();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (v19)
    {
      secureElementIdentifiers = pk_Payment_log();
      if (!os_log_type_enabled(secureElementIdentifiers, OS_LOG_TYPE_DEFAULT))
      {
LABEL_24:

        goto LABEL_25;
      }

      *buf = 138412290;
      *&buf[4] = passCopy;
      v20 = "Notice: Pass does not support Watch offer. %@";
      v21 = secureElementIdentifiers;
      v22 = 12;
LABEL_11:
      _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
      goto LABEL_24;
    }
  }

LABEL_25:
  v29 = 0;
LABEL_26:
  v33 = pk_Payment_log();
  v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

  if (v34)
  {
    v35 = pk_Payment_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      *buf = 138413058;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = uniqueID;
      *&buf[22] = 1024;
      LODWORD(v77[0]) = getActivePairedDevice != 0;
      WORD2(v77[0]) = 1024;
      *(v77 + 6) = v29;
      _os_log_impl(&dword_25B300000, v35, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Request to determine if we should show the watch offer for %@ (have paired watch %d can be transferred %d)", buf, 0x22u);
    }
  }

  v37 = v29 ^ 1;
  if (!getActivePairedDevice)
  {
    v37 = 1;
  }

  if (v37)
  {
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __81__NPKCompanionAgentConnection_shouldShowWatchOfferForPaymentPass_withCompletion___block_invoke_121;
    v46[3] = &unk_279945198;
    v47 = completionCopy;
    v42 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], v46);
  }

  else
  {
    v38 = dispatch_group_create();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v77[0] = 0;
    *v69 = 0;
    v70 = v69;
    v71 = 0x2020000000;
    v72 = 0;
    v67[0] = 0;
    v67[1] = v67;
    v67[2] = 0x2020000000;
    v68 = 0;
    v65[0] = 0;
    v65[1] = v65;
    v65[2] = 0x2020000000;
    v66 = 0;
    dispatch_group_enter(v38);
    v39 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__NPKCompanionAgentConnection_shouldShowWatchOfferForPaymentPass_withCompletion___block_invoke_116;
    block[3] = &unk_279946940;
    v64 = buf;
    block[4] = self;
    v40 = v38;
    v63 = v40;
    dispatch_async(v39, block);

    dispatch_group_enter(v40);
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __81__NPKCompanionAgentConnection_shouldShowWatchOfferForPaymentPass_withCompletion___block_invoke_2;
    v57[3] = &unk_27994AAE0;
    v60 = v67;
    v41 = passCopy;
    v58 = v41;
    v61 = v69;
    v42 = v40;
    v59 = v42;
    [(NPKCompanionAgentConnection *)self paymentPassUniqueIDsSynchronous:0 excludingDeactivated:1 reply:v57];
    pairedTerminalIdentifier = [v41 pairedTerminalIdentifier];
    if (pairedTerminalIdentifier)
    {
      dispatch_group_enter(v42);
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __81__NPKCompanionAgentConnection_shouldShowWatchOfferForPaymentPass_withCompletion___block_invoke_3;
      v54[3] = &unk_279949B80;
      v56 = v65;
      v55 = v42;
      [(NPKCompanionAgentConnection *)self passesWithReaderIdentifier:pairedTerminalIdentifier completion:v54];
    }

    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __81__NPKCompanionAgentConnection_shouldShowWatchOfferForPaymentPass_withCompletion___block_invoke_5;
    v48[3] = &unk_27994AB08;
    v50 = buf;
    v51 = v69;
    v52 = v67;
    v53 = v65;
    v48[4] = self;
    v49 = completionCopy;
    v44 = completionCopy;
    dispatch_group_notify(v42, MEMORY[0x277D85CD0], v48);

    _Block_object_dispose(v65, 8);
    _Block_object_dispose(v67, 8);
    _Block_object_dispose(v69, 8);
    _Block_object_dispose(buf, 8);
  }

  v45 = *MEMORY[0x277D85DE8];
}

void __81__NPKCompanionAgentConnection_shouldShowWatchOfferForPaymentPass_withCompletion___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 secureElementIdentifier];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void __81__NPKCompanionAgentConnection_shouldShowWatchOfferForPaymentPass_withCompletion___block_invoke_116(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _isApplePaySupportedInCurrentRegion];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void __81__NPKCompanionAgentConnection_shouldShowWatchOfferForPaymentPass_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  if (PKEnableDynamicSEAllocation())
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    v3 = [v10 count];
    v4 = NPKMaxPaymentCards();
    if (v3)
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 1;
    }

    v7 = !v5 && v3 >= v4;
    *(*(*(a1 + 48) + 8) + 24) = v7;
  }

  v8 = [*(a1 + 32) uniqueID];

  if (v8)
  {
    v9 = [*(a1 + 32) uniqueID];
    *(*(*(a1 + 56) + 8) + 24) = [v10 containsObject:v9];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __81__NPKCompanionAgentConnection_shouldShowWatchOfferForPaymentPass_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = [a2 pk_hasObjectPassingTest:&__block_literal_global_120];
  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t __81__NPKCompanionAgentConnection_shouldShowWatchOfferForPaymentPass_withCompletion___block_invoke_5(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1[6] + 8) + 24);
      if (v5 > 2)
      {
        v6 = @"unknown";
      }

      else
      {
        v6 = off_27994B148[v5];
      }

      v7 = *(*(a1[7] + 8) + 24);
      v8 = *(*(a1[8] + 8) + 24);
      v9 = *(*(a1[9] + 8) + 24);
      v13 = 138413058;
      v14 = v6;
      v15 = 1024;
      v16 = v7;
      v17 = 1024;
      v18 = v8;
      v19 = 1024;
      v20 = v9;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Should show watch offer: supported in region %@ hasPassOnWatchMatchingUniqueID %d hasMaximumPassesOnWatch %d hasPassOnWatchMatchingReaderIdentifier %d", &v13, 0x1Eu);
    }
  }

  if (*(*(a1[6] + 8) + 24) == 2 || (*(*(a1[7] + 8) + 24) & 1) != 0 || (*(*(a1[9] + 8) + 24) & 1) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(*(a1[8] + 8) + 24) ^ 1;
  }

  result = a1[5];
  if (result)
  {
    result = (*(result + 16))(result, v10 & 1);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __81__NPKCompanionAgentConnection_shouldShowWatchOfferForPaymentPass_withCompletion___block_invoke_121(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)shouldShowWatchOfferForPaymentPasses:(id)passes withCompletion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  passesCopy = passes;
  completionCopy = completion;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__23;
  v26[4] = __Block_byref_object_dispose__23;
  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = dispatch_group_create();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = passesCopy;
  v8 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v8)
  {
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        dispatch_group_enter(v7);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __83__NPKCompanionAgentConnection_shouldShowWatchOfferForPaymentPasses_withCompletion___block_invoke;
        v19[3] = &unk_27994AA80;
        v21 = v26;
        v20 = v7;
        [(NPKCompanionAgentConnection *)self shouldShowWatchOfferForPaymentPass:v11 withCompletion:v19];

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v8);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__NPKCompanionAgentConnection_shouldShowWatchOfferForPaymentPasses_withCompletion___block_invoke_2;
  block[3] = &unk_27994AB30;
  v17 = completionCopy;
  v18 = v26;
  v12 = completionCopy;
  dispatch_group_notify(v7, MEMORY[0x277D85CD0], block);

  _Block_object_dispose(v26, 8);
  v13 = *MEMORY[0x277D85DE8];
}

void __83__NPKCompanionAgentConnection_shouldShowWatchOfferForPaymentPasses_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  [v3 addObject:v4];

  v5 = *(a1 + 32);

  dispatch_group_leave(v5);
}

- (void)noteWatchOfferShownForPaymentPass:(id)pass
{
  v16 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      v12 = 138412546;
      selfCopy = self;
      v14 = 2112;
      v15 = uniqueID;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Note watch offer shown for %@", &v12, 0x16u);
    }
  }

  v9 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:0];
  uniqueID2 = [passCopy uniqueID];
  [v9 noteWatchOfferDisplayedForPaymentPassWithUniqueID:uniqueID2];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)beginProvisioningFromWatchOfferForPaymentPass:(id)pass withCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  v6 = MEMORY[0x277CBEA60];
  completionCopy = completion;
  passCopy2 = pass;
  v9 = [v6 arrayWithObjects:&passCopy count:1];

  [(NPKCompanionAgentConnection *)self beginProvisioningFromWatchOfferForPaymentPasses:v9 withCompletion:completionCopy, passCopy, v12];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)beginProvisioningFromWatchOfferForPaymentPasses:(id)passes withCompletion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  passesCopy = passes;
  completionCopy = completion;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v21 = 2112;
      v22 = passesCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Requesting that provisioning begin from watch offer for passes %@", buf, 0x16u);
    }
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __94__NPKCompanionAgentConnection_beginProvisioningFromWatchOfferForPaymentPasses_withCompletion___block_invoke;
  v17[3] = &unk_279945198;
  v11 = completionCopy;
  v18 = v11;
  v12 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __94__NPKCompanionAgentConnection_beginProvisioningFromWatchOfferForPaymentPasses_withCompletion___block_invoke_2;
  v15[3] = &unk_2799467A8;
  v15[4] = self;
  v16 = v11;
  v13 = v11;
  [v12 beginProvisioningFromWatchOfferForPaymentPasses:passesCopy withCompletion:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __94__NPKCompanionAgentConnection_beginProvisioningFromWatchOfferForPaymentPasses_withCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = PKDisplayableErrorForCommonType();
  (*(v1 + 16))(v1, 0, v2);
}

uint64_t __94__NPKCompanionAgentConnection_beginProvisioningFromWatchOfferForPaymentPasses_withCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)handleDeviceUnlockedForPendingProvisioningRequestFromGizmo
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): (account-pass-provisioning) handleDeviceUnlockedForPendingProvisioningRequestFromGizmo", &v8, 0xCu);
    }
  }

  v6 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:0];
  [v6 handleDeviceUnlockedForPendingProvisioningRequestFromGizmo];

  v7 = *MEMORY[0x277D85DE8];
}

void __88__NPKCompanionAgentConnection_provisionPassForAccountIdentifier_makeDefault_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = PKDisplayableErrorForCommonType();
  (*(v1 + 16))(v1, 0, v2);
}

uint64_t __88__NPKCompanionAgentConnection_provisionPassForAccountIdentifier_makeDefault_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)provisionPassForRemoteCredentialWithType:(int64_t)type andIdentifier:(id)identifier completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy = self;
      v23 = 2048;
      typeCopy = type;
      v25 = 2112;
      v26 = identifierCopy;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (apple-balance-pass-provisioning) (%@): provisionPassForRemoteCredentialType %ld identifier: %@", buf, 0x20u);
    }
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __97__NPKCompanionAgentConnection_provisionPassForRemoteCredentialWithType_andIdentifier_completion___block_invoke;
  v19[3] = &unk_279945198;
  v13 = completionCopy;
  v20 = v13;
  v14 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:v19];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __97__NPKCompanionAgentConnection_provisionPassForRemoteCredentialWithType_andIdentifier_completion___block_invoke_2;
  v17[3] = &unk_2799467A8;
  v17[4] = self;
  v18 = v13;
  v15 = v13;
  [v14 provisionPassForRemoteCredentialWithType:type andIdentifier:identifierCopy completion:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __97__NPKCompanionAgentConnection_provisionPassForRemoteCredentialWithType_andIdentifier_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = PKDisplayableErrorForCommonType();
  (*(v1 + 16))(v1, 0, v2);
}

uint64_t __97__NPKCompanionAgentConnection_provisionPassForRemoteCredentialWithType_andIdentifier_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)registerDeviceWithCompletion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Requesting registration of paired device", buf, 0xCu);
    }
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__NPKCompanionAgentConnection_registerDeviceWithCompletion___block_invoke;
  v14[3] = &unk_279945198;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__NPKCompanionAgentConnection_registerDeviceWithCompletion___block_invoke_2;
  v12[3] = &unk_27994AB58;
  v12[4] = self;
  v13 = v8;
  v10 = v8;
  [v9 registerDeviceWithCompletion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __60__NPKCompanionAgentConnection_registerDeviceWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = PKDisplayableErrorForCommonType();
  (*(v1 + 16))(v1, 0, 0, v2);
}

uint64_t __60__NPKCompanionAgentConnection_registerDeviceWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __93__NPKCompanionAgentConnection_noteProvisioningPreflightCompleteWithSuccess_error_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __90__NPKCompanionAgentConnection_paymentPassUniqueIDsSynchronous_excludingDeactivated_reply___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = pk_Payment_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = pk_Payment_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        *buf = 138412546;
        v14 = v7;
        v15 = 2112;
        v16 = v3;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Reply with unique IDs: %@", buf, 0x16u);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__NPKCompanionAgentConnection_paymentPassUniqueIDsSynchronous_excludingDeactivated_reply___block_invoke_133;
    block[3] = &unk_279945A48;
    block[4] = *(a1 + 32);
    v11 = v3;
    v12 = *(a1 + 40);
    dispatch_async(v8, block);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __90__NPKCompanionAgentConnection_paymentPassUniqueIDsSynchronous_excludingDeactivated_reply___block_invoke_133(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      v6 = a1[5];
      v10 = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Reply with unique IDs: %@", &v10, 0x16u);
    }
  }

  v7 = a1[5];
  result = (*(a1[6] + 16))();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void __90__NPKCompanionAgentConnection_paymentPassUniqueIDsSynchronous_excludingDeactivated_reply___block_invoke_134(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedUniqueIDs];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __90__NPKCompanionAgentConnection_paymentPassUniqueIDsSynchronous_excludingDeactivated_reply___block_invoke_135(uint64_t a1)
{
  if ([*(a1 + 32) queueAppropriateFailedActions])
  {
    v6 = +[NPKCompanionAgentConnectionDeferredActionHandler sharedDeferredActionHandler];
    v2 = *(a1 + 40);
    v3 = NPKPairedOrPairingDevice();
    v4 = [v6 deferredPaymentPassUniqueIDsForDevice:v3 excludingDeactivated:*(a1 + 48)];
    (*(v2 + 16))(v2, v4);
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x277CBEB98] set];
    (*(v5 + 16))(v5);
  }
}

void __90__NPKCompanionAgentConnection_paymentPassUniqueIDsSynchronous_excludingDeactivated_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if ((*(a1 + 48) & 1) == 0)
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 8);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __90__NPKCompanionAgentConnection_paymentPassUniqueIDsSynchronous_excludingDeactivated_reply___block_invoke_3;
    v10[3] = &unk_2799454E0;
    v10[4] = v8;
    v11 = v3;
    dispatch_async(v9, v10);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v7, v4, v5, v6);
}

void __76__NPKCompanionAgentConnection_hasPaymentPassWithUniqueID_synchronous_reply___block_invoke(uint64_t a1, char a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 1)
  {
    v4 = pk_Payment_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = pk_Payment_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        v8 = NSStringFromBOOL();
        *buf = 138412546;
        v16 = v7;
        v17 = 2112;
        v18 = v8;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Reply with has payment pass: %@", buf, 0x16u);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__NPKCompanionAgentConnection_hasPaymentPassWithUniqueID_synchronous_reply___block_invoke_138;
    block[3] = &unk_279945CF0;
    v10 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v14 = a2;
    v13 = v10;
    dispatch_async(v9, block);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __76__NPKCompanionAgentConnection_hasPaymentPassWithUniqueID_synchronous_reply___block_invoke_138(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 48);
      v7 = NSStringFromBOOL();
      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Reply with has payment pass: %@", &v11, 0x16u);
    }
  }

  v8 = *(a1 + 48);
  result = (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __76__NPKCompanionAgentConnection_hasPaymentPassWithUniqueID_synchronous_reply___block_invoke_2(uint64_t a1)
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
      v6 = NSStringFromBOOL();
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): has payment pass: %@", &v9, 0x16u);
    }
  }

  result = (*(*(a1 + 40) + 16))();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void __73__NPKCompanionAgentConnection_paymentPassWithUniqueID_synchronous_reply___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = pk_Payment_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = pk_Payment_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        *buf = 138412546;
        v14 = v7;
        v15 = 2112;
        v16 = v3;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Reply with payment pass: %@", buf, 0x16u);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__NPKCompanionAgentConnection_paymentPassWithUniqueID_synchronous_reply___block_invoke_140;
    block[3] = &unk_279945A48;
    block[4] = *(a1 + 32);
    v11 = v3;
    v12 = *(a1 + 40);
    dispatch_async(v8, block);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __73__NPKCompanionAgentConnection_paymentPassWithUniqueID_synchronous_reply___block_invoke_140(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      v6 = a1[5];
      v10 = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Reply with payment pass: %@", &v10, 0x16u);
    }
  }

  v7 = a1[5];
  result = (*(a1[6] + 16))();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void __73__NPKCompanionAgentConnection_paymentPassWithUniqueID_synchronous_reply___block_invoke_142(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedPassForUniqueID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __73__NPKCompanionAgentConnection_paymentPassWithUniqueID_synchronous_reply___block_invoke_143(uint64_t a1)
{
  if ([*(a1 + 32) queueAppropriateFailedActions])
  {
    v8 = +[NPKCompanionAgentConnectionDeferredActionHandler sharedDeferredActionHandler];
    v4 = a1 + 40;
    v2 = *(a1 + 40);
    v3 = *(v4 + 8);
    v5 = NPKPairedOrPairingDevice();
    v6 = [v8 deferredPaymentPassWithUniqueID:v2 forDevice:v5];
    (*(v3 + 16))(v3, v6);
  }

  else
  {
    v7 = *(*(a1 + 48) + 16);

    v7();
  }
}

void __73__NPKCompanionAgentConnection_paymentPassWithUniqueID_synchronous_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) _applyPropertiesToPass:v3];
  v4 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__NPKCompanionAgentConnection_paymentPassWithUniqueID_synchronous_reply___block_invoke_3;
  block[3] = &unk_279945880;
  v5 = v3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v14 = v5;
  v15 = v6;
  v16 = v7;
  dispatch_async(v4, block);
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138412546;
      v18 = v11;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Newly-fetched payment pass: %@", buf, 0x16u);
    }
  }

  (*(*(a1 + 48) + 16))();

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __73__NPKCompanionAgentConnection_paymentPassWithUniqueID_synchronous_reply___block_invoke_3(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    return [v2 _addPassToCache:?];
  }

  else
  {
    return [v2 _removePassWithUniqueIDFromCache:a1[6]];
  }
}

- (void)paymentPassesWithPrimaryAccountIdentifier:(id)identifier completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v21 = 2112;
      v22 = identifierCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Requesting payment passes with FPANID %@", buf, 0x16u);
    }
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__NPKCompanionAgentConnection_paymentPassesWithPrimaryAccountIdentifier_completion___block_invoke;
  v17[3] = &unk_279945198;
  v11 = completionCopy;
  v18 = v11;
  v12 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__NPKCompanionAgentConnection_paymentPassesWithPrimaryAccountIdentifier_completion___block_invoke_2;
  v15[3] = &unk_27994AC20;
  v15[4] = self;
  v16 = v11;
  v13 = v11;
  [v12 paymentPassesWithPrimaryAccountIdentifier:identifierCopy completion:v15];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __84__NPKCompanionAgentConnection_paymentPassesWithPrimaryAccountIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __84__NPKCompanionAgentConnection_paymentPassesWithPrimaryAccountIdentifier_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)paymentPassWithDeviceAccountIdentifier:(id)identifier completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v21 = 2112;
      v22 = identifierCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Requesting payment pass with DPANID %@", buf, 0x16u);
    }
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __81__NPKCompanionAgentConnection_paymentPassWithDeviceAccountIdentifier_completion___block_invoke;
  v17[3] = &unk_279945198;
  v11 = completionCopy;
  v18 = v11;
  v12 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__NPKCompanionAgentConnection_paymentPassWithDeviceAccountIdentifier_completion___block_invoke_2;
  v15[3] = &unk_279949E08;
  v15[4] = self;
  v16 = v11;
  v13 = v11;
  [v12 paymentPassWithDeviceAccountIdentifier:identifierCopy completion:v15];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __81__NPKCompanionAgentConnection_paymentPassWithDeviceAccountIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __81__NPKCompanionAgentConnection_paymentPassWithDeviceAccountIdentifier_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __76__NPKCompanionAgentConnection_passesWithReaderIdentifier_synchronous_reply___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      v6 = a1[5];
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: NPKCompanionAgentConnection (%@): failed to fetch passes with reader ID %@.", &v9, 0x16u);
    }
  }

  result = (*(a1[6] + 16))();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void __74__NPKCompanionAgentConnection_credentialedPassUniqueIDsSynchronous_reply___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = pk_Payment_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = pk_Payment_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        *buf = 138412546;
        v14 = v7;
        v15 = 2112;
        v16 = v3;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Reply with unique IDs: %@", buf, 0x16u);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__NPKCompanionAgentConnection_credentialedPassUniqueIDsSynchronous_reply___block_invoke_145;
    block[3] = &unk_279945A48;
    block[4] = *(a1 + 32);
    v11 = v3;
    v12 = *(a1 + 40);
    dispatch_async(v8, block);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __74__NPKCompanionAgentConnection_credentialedPassUniqueIDsSynchronous_reply___block_invoke_145(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      v6 = a1[5];
      v10 = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Reply with unique IDs: %@", &v10, 0x16u);
    }
  }

  v7 = a1[5];
  result = (*(a1[6] + 16))();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __74__NPKCompanionAgentConnection_credentialedPassUniqueIDsSynchronous_reply___block_invoke_146(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __74__NPKCompanionAgentConnection_credentialedPassUniqueIDsSynchronous_reply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)savePaymentPass:(id)pass forDevice:(id)device completion:(id)completion
{
  v58 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  deviceCopy = device;
  completionCopy = completion;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      *buf = 138412546;
      selfCopy = self;
      v50 = 2112;
      v51 = uniqueID;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Requesting save of payment pass with unique ID %@", buf, 0x16u);
    }
  }

  if (!completionCopy)
  {
    completionCopy = &__block_literal_global_148;
  }

  dataAccessor = [passCopy dataAccessor];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v17 = pk_General_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

    if (v18)
    {
      v19 = pk_General_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        dataAccessor2 = [passCopy dataAccessor];
        *buf = 136447234;
        selfCopy = "[NPKCompanionAgentConnection savePaymentPass:forDevice:completion:]";
        v50 = 2082;
        v51 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKCompanionAgentConnection.m";
        v52 = 2048;
        v53 = 638;
        v54 = 2112;
        v55 = passCopy;
        v56 = 2112;
        v57 = dataAccessor2;
        _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Payment pass %@ has data accessor %@)", buf, 0x34u);
      }
    }

    _NPKAssertAbort();
  }

  dataAccessor3 = [passCopy dataAccessor];
  fileURL = [dataAccessor3 fileURL];

  if (!fileURL)
  {
    v23 = pk_General_log();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

    if (v24)
    {
      v25 = pk_General_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        uniqueID2 = [passCopy uniqueID];
        *buf = 136446978;
        selfCopy = "[NPKCompanionAgentConnection savePaymentPass:forDevice:completion:]";
        v50 = 2082;
        v51 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKCompanionAgentConnection.m";
        v52 = 2048;
        v53 = 641;
        v54 = 2112;
        v55 = uniqueID2;
        _os_log_impl(&dword_25B300000, v25, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Payment pass %@ had nil file URL)", buf, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  uniqueID3 = [passCopy uniqueID];
  if (uniqueID3)
  {
    v28 = uniqueID3;
  }

  else
  {
    passTypeIdentifier = [passCopy passTypeIdentifier];
    serialNumber = [passCopy serialNumber];
    v28 = PKGeneratePassUniqueID();

    if (!v28)
    {
      v31 = pk_General_log();
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);

      if (v32)
      {
        v33 = pk_General_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          selfCopy = "[NPKCompanionAgentConnection savePaymentPass:forDevice:completion:]";
          v50 = 2082;
          v51 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKCompanionAgentConnection.m";
          v52 = 2048;
          v53 = 647;
          v54 = 2112;
          v55 = 0;
          _os_log_impl(&dword_25B300000, v33, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Payment pass %@ had nil uniqueID)", buf, 0x2Au);
        }
      }

      _NPKAssertAbort();
    }
  }

  v34 = NPKTemporaryFileURL(*MEMORY[0x277D38980], 1);
  if (NPKCopyFileAtURL(fileURL, v34))
  {
    paymentPass = [passCopy paymentPass];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __68__NPKCompanionAgentConnection_savePaymentPass_forDevice_completion___block_invoke_151;
    v40[3] = &unk_27994AC68;
    v41 = deviceCopy;
    selfCopy2 = self;
    v43 = v28;
    v44 = passCopy;
    v45 = fileURL;
    v46 = v34;
    v47 = completionCopy;
    [(NPKCompanionAgentConnection *)self _savePaymentPass:paymentPass atURL:v46 forDevice:v41 completion:v40];
  }

  else
  {
    v36 = pk_Payment_log();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);

    if (v37)
    {
      v38 = pk_Payment_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        selfCopy = fileURL;
        v50 = 2112;
        v51 = v34;
        _os_log_impl(&dword_25B300000, v38, OS_LOG_TYPE_ERROR, "Error: Unable to copy file from %@ to %@", buf, 0x16u);
      }
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __68__NPKCompanionAgentConnection_savePaymentPass_forDevice_completion___block_invoke_151(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D2BBB8];
  v5 = [*(a1 + 32) valueForProperty:*MEMORY[0x277D2BBB8]];
  v6 = NPKPairedOrPairingDevice();
  v7 = [v6 valueForProperty:v4];
  v8 = [v5 isEqual:v7];

  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *(v10 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__NPKCompanionAgentConnection_savePaymentPass_forDevice_completion___block_invoke_2;
  block[3] = &unk_279946508;
  block[4] = v10;
  v23 = v9;
  v24 = *(a1 + 56);
  v25 = v8;
  v26 = a2;
  dispatch_sync(v11, block);
  if (a2)
  {
    v12 = pk_Payment_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = pk_Payment_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 64);
        *buf = 138412290;
        v28 = v15;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Success, deleting temporary pass file %@", buf, 0xCu);
      }
    }

    NPKDeleteFileAtURL(*(a1 + 72));
  }

  v16 = *(a1 + 80);
  if (v16)
  {
    (*(v16 + 16))(v16, a2);
  }

  if (v8)
  {
    v17 = pk_Payment_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v19 = pk_Payment_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: For current device; posting notification", buf, 2u);
      }
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __68__NPKCompanionAgentConnection_savePaymentPass_forDevice_completion___block_invoke_153;
    v21[3] = &unk_279944F98;
    v21[4] = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v21);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __68__NPKCompanionAgentConnection_savePaymentPass_forDevice_completion___block_invoke_2(uint64_t a1)
{
  v7 = [*(a1 + 32) _cachedPassForUniqueID:*(a1 + 40)];
  if (!v7 || ([v7 ingestedDate], (v2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v2 = [MEMORY[0x277CBEAA8] date];
  }

  [*(a1 + 48) setIngestedDate:v2];
  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 48) paymentPass];
    [v3 _addPassToCache:v4];

    if (*(a1 + 57) == 1)
    {
      v5 = *(a1 + 32);
      v6 = [*(a1 + 48) paymentPass];
      [v5 _applyPropertiesToPass:v6];
    }
  }
}

void __68__NPKCompanionAgentConnection_savePaymentPass_forDevice_completion___block_invoke_153(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"com.apple.NanoPassKit.NPKCompanionAgentConnection.PassesChanged" object:*(a1 + 32)];
}

void __102__NPKCompanionAgentConnection_removePaymentPassWithUniqueID_forDevice_waitForConfirmation_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __102__NPKCompanionAgentConnection_removePaymentPassWithUniqueID_forDevice_waitForConfirmation_completion___block_invoke_2;
    block[3] = &unk_27994AC90;
    v7 = v16;
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    v16[0] = v8;
    v16[1] = v9;
    v17 = *(a1 + 48);
    v19 = *(a1 + 56);
    v20 = a2;
    v18 = v5;
    dispatch_async(v6, block);

    v10 = v17;
LABEL_5:

    goto LABEL_6;
  }

  if (*(a1 + 56))
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __102__NPKCompanionAgentConnection_removePaymentPassWithUniqueID_forDevice_waitForConfirmation_completion___block_invoke_5;
    v11[3] = &unk_279945700;
    v7 = &v13;
    v13 = *(a1 + 56);
    v14 = 0;
    v12 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v11);
    v10 = v12;
    goto LABEL_5;
  }

LABEL_6:
}

void __102__NPKCompanionAgentConnection_removePaymentPassWithUniqueID_forDevice_waitForConfirmation_completion___block_invoke_2(uint64_t a1)
{
  v2 = *MEMORY[0x277D2BBB8];
  v3 = [*(a1 + 32) valueForProperty:*MEMORY[0x277D2BBB8]];
  v4 = NPKPairedOrPairingDevice();
  v5 = [v4 valueForProperty:v2];
  v6 = [v3 isEqual:v5];

  if (v6)
  {
    [*(a1 + 40) _removePassWithUniqueIDFromCache:*(a1 + 48)];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __102__NPKCompanionAgentConnection_removePaymentPassWithUniqueID_forDevice_waitForConfirmation_completion___block_invoke_3;
    block[3] = &unk_27994A7A8;
    block[4] = *(a1 + 40);
    v14 = *(a1 + 64);
    v15 = *(a1 + 72);
    v13 = *(a1 + 56);
    dispatch_async(MEMORY[0x277D85CD0], block);

    v7 = v14;
  }

  else
  {
    if (!*(a1 + 64))
    {
      return;
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __102__NPKCompanionAgentConnection_removePaymentPassWithUniqueID_forDevice_waitForConfirmation_completion___block_invoke_4;
    v8[3] = &unk_279945700;
    v10 = *(a1 + 64);
    v11 = *(a1 + 72);
    v9 = *(a1 + 56);
    dispatch_async(MEMORY[0x277D85CD0], v8);

    v7 = v10;
  }
}

uint64_t __102__NPKCompanionAgentConnection_removePaymentPassWithUniqueID_forDevice_waitForConfirmation_completion___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"com.apple.NanoPassKit.NPKCompanionAgentConnection.PassesChanged" object:*(a1 + 32)];

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 40);
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)setDefaultCardUniqueID:(id)d completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v21 = 2112;
      v22 = dCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Request to set default card with unique ID %@", buf, 0x16u);
    }
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__NPKCompanionAgentConnection_setDefaultCardUniqueID_completion___block_invoke;
  v17[3] = &unk_279945198;
  v11 = completionCopy;
  v18 = v11;
  v12 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__NPKCompanionAgentConnection_setDefaultCardUniqueID_completion___block_invoke_2;
  v15[3] = &unk_2799451F0;
  v15[4] = self;
  v16 = v11;
  v13 = v11;
  [v12 setDefaultCard:dCopy completion:v15];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __65__NPKCompanionAgentConnection_setDefaultCardUniqueID_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __65__NPKCompanionAgentConnection_setDefaultCardUniqueID_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)defaultCardUniqueID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Fetching default card unique ID", buf, 0xCu);
    }
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__NPKCompanionAgentConnection_defaultCardUniqueID___block_invoke;
  v14[3] = &unk_279945198;
  v8 = dCopy;
  v15 = v8;
  v9 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__NPKCompanionAgentConnection_defaultCardUniqueID___block_invoke_2;
  v12[3] = &unk_27994ACE0;
  v12[4] = self;
  v13 = v8;
  v10 = v8;
  [v9 defaultCard:v12];

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __51__NPKCompanionAgentConnection_defaultCardUniqueID___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __51__NPKCompanionAgentConnection_defaultCardUniqueID___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)willPassWithUniqueIdentifierAutomaticallyBecomeDefault:(id)default completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  defaultCopy = default;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = pk_Payment_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = pk_Payment_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy = self;
        v20 = 2112;
        v21 = defaultCopy;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Checking if pass will automatically become default %@", buf, 0x16u);
      }
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __97__NPKCompanionAgentConnection_willPassWithUniqueIdentifierAutomaticallyBecomeDefault_completion___block_invoke;
    v16[3] = &unk_279945198;
    v11 = completionCopy;
    v17 = v11;
    v12 = [(NPKCompanionAgentConnection *)self _remoteObjectProxySynchronize:1 withFailureHandler:v16];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __97__NPKCompanionAgentConnection_willPassWithUniqueIdentifierAutomaticallyBecomeDefault_completion___block_invoke_2;
    v14[3] = &unk_2799451F0;
    v14[4] = self;
    v15 = v11;
    [v12 willPassWithUniqueIdentifierAutomaticallyBecomeDefault:defaultCopy completion:v14];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)defaultPaymentApplicationForPassWithUniqueID:(id)d completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v21 = 2112;
      v22 = dCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Fetching default payment application for pass with unique ID %@", buf, 0x16u);
    }
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __87__NPKCompanionAgentConnection_defaultPaymentApplicationForPassWithUniqueID_completion___block_invoke;
  v17[3] = &unk_279945198;
  v11 = completionCopy;
  v18 = v11;
  v12 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__NPKCompanionAgentConnection_defaultPaymentApplicationForPassWithUniqueID_completion___block_invoke_2;
  v15[3] = &unk_27994AD08;
  v15[4] = self;
  v16 = v11;
  v13 = v11;
  [v12 defaultPaymentApplicationForPassWithUniqueID:dCopy completion:v15];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __87__NPKCompanionAgentConnection_defaultPaymentApplicationForPassWithUniqueID_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __87__NPKCompanionAgentConnection_defaultPaymentApplicationForPassWithUniqueID_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setDefaultPaymentApplication:(id)application forPassWithUniqueID:(id)d completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  dCopy = d;
  completionCopy = completion;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy = self;
      v24 = 2112;
      v25 = dCopy;
      v26 = 2112;
      v27 = applicationCopy;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Setting default payment application for unique ID %@: %@", buf, 0x20u);
    }
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __91__NPKCompanionAgentConnection_setDefaultPaymentApplication_forPassWithUniqueID_completion___block_invoke;
  v20[3] = &unk_279945198;
  v14 = completionCopy;
  v21 = v14;
  v15 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __91__NPKCompanionAgentConnection_setDefaultPaymentApplication_forPassWithUniqueID_completion___block_invoke_2;
  v18[3] = &unk_279949E08;
  v18[4] = self;
  v19 = v14;
  v16 = v14;
  [v15 setDefaultPaymentApplication:applicationCopy forPassWithUniqueID:dCopy completion:v18];

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __91__NPKCompanionAgentConnection_setDefaultPaymentApplication_forPassWithUniqueID_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __91__NPKCompanionAgentConnection_setDefaultPaymentApplication_forPassWithUniqueID_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)consistencyCheckWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Requesting consistency check", buf, 0xCu);
    }
  }

  v8 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:completionCopy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__NPKCompanionAgentConnection_consistencyCheckWithCompletion___block_invoke;
  v11[3] = &unk_279946670;
  v11[4] = self;
  v12 = completionCopy;
  v9 = completionCopy;
  [v8 initiateConsistencyCheckWithCompletion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __62__NPKCompanionAgentConnection_consistencyCheckWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)redownloadAllPaymentPassesWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Requesting redownload all payment passes", buf, 0xCu);
    }
  }

  v8 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:completionCopy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__NPKCompanionAgentConnection_redownloadAllPaymentPassesWithCompletion___block_invoke;
  v11[3] = &unk_279946670;
  v11[4] = self;
  v12 = completionCopy;
  v9 = completionCopy;
  [v8 redownloadAllPaymentPassesWithCompletion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __72__NPKCompanionAgentConnection_redownloadAllPaymentPassesWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)handlePendingUnpairingWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Sending pending unpairing request", buf, 0xCu);
    }
  }

  v8 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:completionCopy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__NPKCompanionAgentConnection_handlePendingUnpairingWithCompletion___block_invoke;
  v11[3] = &unk_279946670;
  v11[4] = self;
  v12 = completionCopy;
  v9 = completionCopy;
  [v8 handlePendingUnpairingWithCompletion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __68__NPKCompanionAgentConnection_handlePendingUnpairingWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)handlePendingiCloudSignoutWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Sending pending iCloud signout request", buf, 0xCu);
    }
  }

  v8 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:completionCopy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__NPKCompanionAgentConnection_handlePendingiCloudSignoutWithCompletion___block_invoke;
  v11[3] = &unk_279946670;
  v11[4] = self;
  v12 = completionCopy;
  v9 = completionCopy;
  [v8 handlePendingiCloudSignoutWithCompletion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __72__NPKCompanionAgentConnection_handlePendingiCloudSignoutWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)handlePeerPaymentTermsAndConditionsRequestFromGizmo
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): handlePeerPaymentTermsAndConditionsRequestFromGizmo", &v8, 0xCu);
    }
  }

  v6 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:0];
  [v6 handlePeerPaymentTermsAndConditionsRequestFromGizmo];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)sharedPaymentWebServiceContextForDevice:(id)device
{
  deviceCopy = device;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__23;
  v19 = __Block_byref_object_dispose__23;
  v20 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__NPKCompanionAgentConnection_sharedPaymentWebServiceContextForDevice___block_invoke;
  aBlock[3] = &unk_279948130;
  aBlock[4] = self;
  v14 = &v15;
  v5 = deviceCopy;
  v13 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [(NPKCompanionAgentConnection *)self _remoteObjectProxySynchronize:1 withFailureHandler:v6];
  v8 = [v5 valueForProperty:*MEMORY[0x277D2BBB8]];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__NPKCompanionAgentConnection_sharedPaymentWebServiceContextForDevice___block_invoke_2;
  v11[3] = &unk_27994AD30;
  v11[4] = self;
  v11[5] = &v15;
  [v7 sharedPaymentWebServiceContextForPairingID:v8 withCompletion:v11];

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

void __71__NPKCompanionAgentConnection_sharedPaymentWebServiceContextForDevice___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) queueAppropriateFailedActions])
  {
    v5 = +[NPKCompanionAgentConnectionDeferredActionHandler sharedDeferredActionHandler];
    v2 = [v5 deferredSharedPaymentWebServiceContextForDevice:*(a1 + 40)];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (id)sharedPaymentWebServiceContext
{
  v3 = NPKPairedOrPairingDevice();
  v4 = [(NPKCompanionAgentConnection *)self sharedPaymentWebServiceContextForDevice:v3];

  return v4;
}

- (void)setSharedPaymentWebServiceContext:(id)context forDevice:(id)device
{
  contextCopy = context;
  deviceCopy = device;
  v8 = dispatch_semaphore_create(0);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__NPKCompanionAgentConnection_setSharedPaymentWebServiceContext_forDevice___block_invoke;
  aBlock[3] = &unk_279944F98;
  v21 = v8;
  v9 = v8;
  v10 = _Block_copy(aBlock);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __75__NPKCompanionAgentConnection_setSharedPaymentWebServiceContext_forDevice___block_invoke_2;
  v16[3] = &unk_279945BB0;
  v16[4] = self;
  v17 = contextCopy;
  v18 = deviceCopy;
  v19 = v10;
  v11 = v10;
  v12 = deviceCopy;
  v13 = contextCopy;
  v14 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:v16];
  v15 = [v12 valueForProperty:*MEMORY[0x277D2BBB8]];
  [v14 setSharedPaymentWebServiceContext:v13 forPairingID:v15 completion:v11];

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t __75__NPKCompanionAgentConnection_setSharedPaymentWebServiceContext_forDevice___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) queueAppropriateFailedActions])
  {
    v5 = +[NPKCompanionAgentConnectionDeferredActionHandler sharedDeferredActionHandler];
    [v5 setDeferredSharedPaymentWebServiceContext:*(a1 + 40) forDevice:*(a1 + 48)];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __75__NPKCompanionAgentConnection_setSharedPaymentWebServiceContext_forDevice___block_invoke_3;
    v7[3] = &unk_27994AD58;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    [v5 performActionWhenCompanionAgentIsAvailable:v7 forDevice:*(a1 + 48)];
  }

  return (*(*(a1 + 56) + 16))(*(a1 + 56), v2, v3, v4);
}

- (void)setSharedPeerPaymentWebServiceContext:(id)context forDevice:(id)device
{
  deviceCopy = device;
  contextCopy = context;
  v8 = dispatch_semaphore_create(0);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__NPKCompanionAgentConnection_setSharedPeerPaymentWebServiceContext_forDevice___block_invoke;
  aBlock[3] = &unk_279944F98;
  v14 = v8;
  v9 = v8;
  v10 = _Block_copy(aBlock);
  v11 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:v10];
  v12 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];

  [v11 setSharedPeerPaymentWebServiceContext:contextCopy forPairingID:v12 completion:v10];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
}

- (id)sharedPeerPaymentWebServiceContextForDevice:(id)device
{
  deviceCopy = device;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__23;
  v22 = __Block_byref_object_dispose__23;
  v23 = 0;
  v5 = dispatch_semaphore_create(0);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__NPKCompanionAgentConnection_sharedPeerPaymentWebServiceContextForDevice___block_invoke;
  aBlock[3] = &unk_27994AD80;
  v17 = &v18;
  v6 = v5;
  v16 = v6;
  v7 = _Block_copy(aBlock);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__NPKCompanionAgentConnection_sharedPeerPaymentWebServiceContextForDevice___block_invoke_2;
  v13[3] = &unk_279945198;
  v8 = v7;
  v14 = v8;
  v9 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:v13];
  v10 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];
  [v9 sharedPeerPaymentWebServiceContextForPairingID:v10 withCompletion:v8];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v11;
}

void __75__NPKCompanionAgentConnection_sharedPeerPaymentWebServiceContextForDevice___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)setPeerPaymentAccount:(id)account forDevice:(id)device
{
  deviceCopy = device;
  accountCopy = account;
  v8 = dispatch_semaphore_create(0);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__NPKCompanionAgentConnection_setPeerPaymentAccount_forDevice___block_invoke;
  aBlock[3] = &unk_279944F98;
  v14 = v8;
  v9 = v8;
  v10 = _Block_copy(aBlock);
  v11 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:v10];
  v12 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];

  [v11 setPeerPaymentAccount:accountCopy forPairingID:v12 completion:v10];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
}

- (id)peerPaymentAccountForDevice:(id)device
{
  deviceCopy = device;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__23;
  v22 = __Block_byref_object_dispose__23;
  v23 = 0;
  v5 = dispatch_semaphore_create(0);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__NPKCompanionAgentConnection_peerPaymentAccountForDevice___block_invoke;
  aBlock[3] = &unk_27994ADA8;
  v17 = &v18;
  v6 = v5;
  v16 = v6;
  v7 = _Block_copy(aBlock);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__NPKCompanionAgentConnection_peerPaymentAccountForDevice___block_invoke_2;
  v13[3] = &unk_279945198;
  v8 = v7;
  v14 = v8;
  v9 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:v13];
  v10 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBB8]];
  [v9 peerPaymentAccountForPairingID:v10 withCompletion:v8];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v11;
}

void __59__NPKCompanionAgentConnection_peerPaymentAccountForDevice___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)shouldShowApplePaySettingsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (NPKPairedOrPairingDeviceCanProvisionSecureElementPasses())
  {
    [(NPKCompanionAgentConnection *)self _shouldShowApplePaySettingsWithCompletion:completionCopy];
  }

  else
  {
    [(NPKCompanionAgentConnection *)self _shouldShowApplePaySettingsForTinkerWithCompletion:completionCopy];
  }
}

- (id)watchPaymentWebService
{
  v2 = objc_opt_class();

  return [v2 watchPaymentWebService];
}

- (void)updateSettings:(unint64_t)settings forPassWithUniqueID:(id)d
{
  dCopy = d;
  v7 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:0];
  [v7 updateSettings:settings forPassWithUniqueID:dCopy];
}

uint64_t __67__NPKCompanionAgentConnection_countOfPassesSynchronous_completion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: NPKCompanionAgentConnection (%@): failed to fetch count of passes.", &v8, 0xCu);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, 0);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __67__NPKCompanionAgentConnection_countOfPassesSynchronous_completion___block_invoke_160(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __60__NPKCompanionAgentConnection_passesSynchronous_completion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: NPKCompanionAgentConnection (%@): failed to fetch passes.", &v8, 0xCu);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, 0);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __60__NPKCompanionAgentConnection_passesSynchronous_completion___block_invoke_162(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __73__NPKCompanionAgentConnection_deviceIDSIdentifierSynchronous_completion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: NPKCompanionAgentConnection (%@): failed to fetch device IDS identifier.", &v8, 0xCu);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, 0);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __73__NPKCompanionAgentConnection_deviceIDSIdentifierSynchronous_completion___block_invoke_164(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)initiateLostModeExitAuthWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__NPKCompanionAgentConnection_initiateLostModeExitAuthWithCompletion___block_invoke;
  v7[3] = &unk_279947DC0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [v5 initiateLostModeExitAuthWithCompletion:v7];
}

uint64_t __70__NPKCompanionAgentConnection_initiateLostModeExitAuthWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)markAllAppletsForDeletionWithCompletion:(id)completion
{
  completionCopy = completion;
  remoteService = [(NPKCompanionAgentConnection *)self remoteService];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__NPKCompanionAgentConnection_markAllAppletsForDeletionWithCompletion___block_invoke;
  v11[3] = &unk_279945218;
  v6 = completionCopy;
  v12 = v6;
  v7 = [remoteService remoteObjectProxyWithErrorHandler:v11];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__NPKCompanionAgentConnection_markAllAppletsForDeletionWithCompletion___block_invoke_2;
  v9[3] = &unk_2799467A8;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 markAllAppletsForDeletionWithCompletion:v9];
}

uint64_t __71__NPKCompanionAgentConnection_markAllAppletsForDeletionWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __71__NPKCompanionAgentConnection_markAllAppletsForDeletionWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)transactionsForTransactionSourceIdentifiers:(id)identifiers withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data startDate:(id)date endDate:(id)endDate orderedByDate:(int64_t)byDate limit:(int64_t)limit completion:(id)self0
{
  identifiersCopy = identifiers;
  dateCopy = date;
  endDateCopy = endDate;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v20 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __162__NPKCompanionAgentConnection_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_orderedByDate_limit_completion___block_invoke;
  block[3] = &unk_27994ADF8;
  objc_copyWeak(v31, &location);
  selfCopy = self;
  v30 = completionCopy;
  v31[1] = source;
  v31[2] = data;
  v26 = identifiersCopy;
  v27 = dateCopy;
  v31[3] = byDate;
  v31[4] = limit;
  v28 = endDateCopy;
  v21 = endDateCopy;
  v22 = dateCopy;
  v23 = identifiersCopy;
  v24 = completionCopy;
  dispatch_async(v20, block);

  objc_destroyWeak(v31);
  objc_destroyWeak(&location);
}

void __162__NPKCompanionAgentConnection_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_orderedByDate_limit_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v2 = [WeakRetained remoteService];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __162__NPKCompanionAgentConnection_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_orderedByDate_limit_completion___block_invoke_2;
  v15[3] = &unk_279945218;
  v16 = *(a1 + 64);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v15];

  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 96);
  v10 = *(a1 + 104);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __162__NPKCompanionAgentConnection_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_orderedByDate_limit_completion___block_invoke_3;
  v13[3] = &unk_27994AC20;
  v11 = *(a1 + 64);
  v13[4] = *(a1 + 56);
  v14 = v11;
  [v3 transactionsForTransactionSourceIdentifiers:v6 withTransactionSource:v4 withBackingData:v5 startDate:v7 endDate:v8 orderedByDate:v9 limit:v10 completion:v13];
}

uint64_t __162__NPKCompanionAgentConnection_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_orderedByDate_limit_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __162__NPKCompanionAgentConnection_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_orderedByDate_limit_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deletePaymentTransactionWithIdentifier:(id)identifier fromDevice:(id)device completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = [device valueForProperty:*MEMORY[0x277D2BBB8]];
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy = self;
      v27 = 2112;
      v28 = v10;
      v29 = 2112;
      v30 = identifierCopy;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Request to delete from device with pairing ID: %@ Transaction with Identifier: %@", buf, 0x20u);
    }
  }

  remoteService = [(NPKCompanionAgentConnection *)self remoteService];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __92__NPKCompanionAgentConnection_deletePaymentTransactionWithIdentifier_fromDevice_completion___block_invoke;
  v22[3] = &unk_279947DC0;
  v15 = completionCopy;
  v23 = identifierCopy;
  v24 = v15;
  v16 = identifierCopy;
  v17 = [remoteService remoteObjectProxyWithErrorHandler:v22];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __92__NPKCompanionAgentConnection_deletePaymentTransactionWithIdentifier_fromDevice_completion___block_invoke_166;
  v20[3] = &unk_279947DC0;
  v20[4] = self;
  v21 = v15;
  v18 = v15;
  [v17 deletePaymentTransactionWithIdentifier:v16 fromDeviceWithPairingID:v10 completion:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __92__NPKCompanionAgentConnection_deletePaymentTransactionWithIdentifier_fromDevice_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = pk_Payment_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = pk_Payment_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        v9 = 138412546;
        v10 = v7;
        v11 = 2112;
        v12 = v3;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Error while creating connection to delete transaction with Identifier: %@. Error: %@", &v9, 0x16u);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __92__NPKCompanionAgentConnection_deletePaymentTransactionWithIdentifier_fromDevice_completion___block_invoke_166(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)transitStateWithPassUniqueIdentifier:(id)identifier paymentApplication:(id)application completion:(id)completion
{
  completionCopy = completion;
  applicationCopy = application;
  identifierCopy = identifier;
  remoteService = [(NPKCompanionAgentConnection *)self remoteService];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __98__NPKCompanionAgentConnection_transitStateWithPassUniqueIdentifier_paymentApplication_completion___block_invoke;
  v17[3] = &unk_279945218;
  v12 = completionCopy;
  v18 = v12;
  v13 = [remoteService remoteObjectProxyWithErrorHandler:v17];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __98__NPKCompanionAgentConnection_transitStateWithPassUniqueIdentifier_paymentApplication_completion___block_invoke_2;
  v15[3] = &unk_27994AE20;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 transitStateWithPassUniqueIdentifier:identifierCopy paymentApplication:applicationCopy completion:v15];
}

uint64_t __98__NPKCompanionAgentConnection_transitStateWithPassUniqueIdentifier_paymentApplication_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __98__NPKCompanionAgentConnection_transitStateWithPassUniqueIdentifier_paymentApplication_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)balancesForPaymentPassWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  remoteService = [(NPKCompanionAgentConnection *)self remoteService];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __85__NPKCompanionAgentConnection_balancesForPaymentPassWithUniqueIdentifier_completion___block_invoke;
  v14[3] = &unk_279945218;
  v9 = completionCopy;
  v15 = v9;
  v10 = [remoteService remoteObjectProxyWithErrorHandler:v14];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__NPKCompanionAgentConnection_balancesForPaymentPassWithUniqueIdentifier_completion___block_invoke_2;
  v12[3] = &unk_27994AC20;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 balancesForPaymentPassWithUniqueIdentifier:identifierCopy completion:v12];
}

uint64_t __85__NPKCompanionAgentConnection_balancesForPaymentPassWithUniqueIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __85__NPKCompanionAgentConnection_balancesForPaymentPassWithUniqueIdentifier_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)balanceReminderForBalance:(id)balance pass:(id)pass withCompletion:(id)completion
{
  passCopy = pass;
  completionCopy = completion;
  balanceCopy = balance;
  remoteService = [(NPKCompanionAgentConnection *)self remoteService];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __77__NPKCompanionAgentConnection_balanceReminderForBalance_pass_withCompletion___block_invoke;
  v18[3] = &unk_279947DC0;
  v12 = completionCopy;
  v19 = passCopy;
  v20 = v12;
  v13 = passCopy;
  v14 = [remoteService remoteObjectProxyWithErrorHandler:v18];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__NPKCompanionAgentConnection_balanceReminderForBalance_pass_withCompletion___block_invoke_168;
  v16[3] = &unk_27994AE48;
  v16[4] = self;
  v17 = v12;
  v15 = v12;
  [v14 balanceReminderForBalance:balanceCopy pass:v13 withCompletion:v16];
}

void __77__NPKCompanionAgentConnection_balanceReminderForBalance_pass_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = pk_Payment_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v5)
    {
      v6 = pk_Payment_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [*(a1 + 32) uniqueID];
        v9 = 138412546;
        v10 = v7;
        v11 = 2112;
        v12 = v3;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Error while creating connection to get balance reminder for Pass Unique Identifier: %@. Error: %@", &v9, 0x16u);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __77__NPKCompanionAgentConnection_balanceReminderForBalance_pass_withCompletion___block_invoke_168(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setBalanceReminder:(id)reminder forBalance:(id)balance pass:(id)pass completion:(id)completion
{
  passCopy = pass;
  completionCopy = completion;
  balanceCopy = balance;
  reminderCopy = reminder;
  remoteService = [(NPKCompanionAgentConnection *)self remoteService];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __77__NPKCompanionAgentConnection_setBalanceReminder_forBalance_pass_completion___block_invoke;
  v21[3] = &unk_279947DC0;
  v15 = completionCopy;
  v22 = passCopy;
  v23 = v15;
  v16 = passCopy;
  v17 = [remoteService remoteObjectProxyWithErrorHandler:v21];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __77__NPKCompanionAgentConnection_setBalanceReminder_forBalance_pass_completion___block_invoke_170;
  v19[3] = &unk_2799451F0;
  v19[4] = self;
  v20 = v15;
  v18 = v15;
  [v17 setBalanceReminder:reminderCopy forBalance:balanceCopy pass:v16 completion:v19];
}

void __77__NPKCompanionAgentConnection_setBalanceReminder_forBalance_pass_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = pk_Payment_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v5)
    {
      v6 = pk_Payment_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [*(a1 + 32) uniqueID];
        v9 = 138412546;
        v10 = v7;
        v11 = 2112;
        v12 = v3;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Error while creating connection to set balance reminder for Pass Unique Identifier: %@. Error: %@", &v9, 0x16u);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __77__NPKCompanionAgentConnection_setBalanceReminder_forBalance_pass_completion___block_invoke_170(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)commutePlanReminderForCommutePlan:(id)plan pass:(id)pass withCompletion:(id)completion
{
  passCopy = pass;
  completionCopy = completion;
  planCopy = plan;
  remoteService = [(NPKCompanionAgentConnection *)self remoteService];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __85__NPKCompanionAgentConnection_commutePlanReminderForCommutePlan_pass_withCompletion___block_invoke;
  v18[3] = &unk_279947DC0;
  v12 = completionCopy;
  v19 = passCopy;
  v20 = v12;
  v13 = passCopy;
  v14 = [remoteService remoteObjectProxyWithErrorHandler:v18];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__NPKCompanionAgentConnection_commutePlanReminderForCommutePlan_pass_withCompletion___block_invoke_171;
  v16[3] = &unk_27994AE70;
  v16[4] = self;
  v17 = v12;
  v15 = v12;
  [v14 commutePlanReminderForCommutePlan:planCopy pass:v13 withCompletion:v16];
}

void __85__NPKCompanionAgentConnection_commutePlanReminderForCommutePlan_pass_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = pk_Payment_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v5)
    {
      v6 = pk_Payment_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [*(a1 + 32) uniqueID];
        v9 = 138412546;
        v10 = v7;
        v11 = 2112;
        v12 = v3;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Error while creating connection to get commute plan reminder for Pass Unique Identifier: %@. Error: %@", &v9, 0x16u);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __85__NPKCompanionAgentConnection_commutePlanReminderForCommutePlan_pass_withCompletion___block_invoke_171(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setCommutePlanReminder:(id)reminder forCommutePlan:(id)plan pass:(id)pass completion:(id)completion
{
  passCopy = pass;
  completionCopy = completion;
  planCopy = plan;
  reminderCopy = reminder;
  remoteService = [(NPKCompanionAgentConnection *)self remoteService];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __85__NPKCompanionAgentConnection_setCommutePlanReminder_forCommutePlan_pass_completion___block_invoke;
  v21[3] = &unk_279947DC0;
  v15 = completionCopy;
  v22 = passCopy;
  v23 = v15;
  v16 = passCopy;
  v17 = [remoteService remoteObjectProxyWithErrorHandler:v21];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __85__NPKCompanionAgentConnection_setCommutePlanReminder_forCommutePlan_pass_completion___block_invoke_173;
  v19[3] = &unk_2799451F0;
  v19[4] = self;
  v20 = v15;
  v18 = v15;
  [v17 setCommutePlanReminder:reminderCopy forCommutePlan:planCopy pass:v16 completion:v19];
}

void __85__NPKCompanionAgentConnection_setCommutePlanReminder_forCommutePlan_pass_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = pk_Payment_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v5)
    {
      v6 = pk_Payment_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [*(a1 + 32) uniqueID];
        v9 = 138412546;
        v10 = v7;
        v11 = 2112;
        v12 = v3;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Error while creating connection to set commute plan reminder for Pass Unique Identifier: %@. Error: %@", &v9, 0x16u);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __85__NPKCompanionAgentConnection_setCommutePlanReminder_forCommutePlan_pass_completion___block_invoke_173(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)startBackgroundVerificationObserverForPass:(id)pass verificationMethod:(id)method
{
  passCopy = pass;
  methodCopy = method;
  remoteService = [(NPKCompanionAgentConnection *)self remoteService];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __93__NPKCompanionAgentConnection_startBackgroundVerificationObserverForPass_verificationMethod___block_invoke;
  v11[3] = &unk_279945058;
  v12 = passCopy;
  v9 = passCopy;
  v10 = [remoteService remoteObjectProxyWithErrorHandler:v11];

  [v10 startBackgroundVerificationObserverForPass:v9 verificationMethod:methodCopy];
}

void __93__NPKCompanionAgentConnection_startBackgroundVerificationObserverForPass_verificationMethod___block_invoke(uint64_t a1, void *a2)
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
      v7 = [*(a1 + 32) uniqueID];
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Error while creating connection to start background verification for pass unique identifier: %@. Error: %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __72__NPKCompanionAgentConnection_noteForegroundVerificationObserverActive___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v9[0] = 67109378;
      v9[1] = v7;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Error while creating connection to note foreground verification observation active: %d. Error: %@", v9, 0x12u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)reloadPaymentPassesWithCompletion:(id)completion
{
  completionCopy = completion;
  cacheQueue = self->_cacheQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__NPKCompanionAgentConnection_reloadPaymentPassesWithCompletion___block_invoke;
  v7[3] = &unk_279945530;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(cacheQueue, v7);
}

void __65__NPKCompanionAgentConnection_reloadPaymentPassesWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _clearCaches];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__NPKCompanionAgentConnection_reloadPaymentPassesWithCompletion___block_invoke_2;
  v3[3] = &unk_279945530;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __65__NPKCompanionAgentConnection_reloadPaymentPassesWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __65__NPKCompanionAgentConnection_reloadPaymentPassesWithCompletion___block_invoke_3;
  v2[3] = &unk_279945E58;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 paymentPassUniqueIDsSynchronous:0 reply:v2];
}

void __65__NPKCompanionAgentConnection_reloadPaymentPassesWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = dispatch_group_create();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        dispatch_group_enter(v4);
        v10 = *(a1 + 32);
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __65__NPKCompanionAgentConnection_reloadPaymentPassesWithCompletion___block_invoke_4;
        v15[3] = &unk_279949AE0;
        v16 = v4;
        [v10 paymentPassWithUniqueID:v9 synchronous:0 reply:v15];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__NPKCompanionAgentConnection_reloadPaymentPassesWithCompletion___block_invoke_5;
  block[3] = &unk_279945198;
  v14 = *(a1 + 40);
  dispatch_group_notify(v4, MEMORY[0x277D85CD0], block);

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __65__NPKCompanionAgentConnection_reloadPaymentPassesWithCompletion___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)hasActiveExternallySharedPasses:(id)passes
{
  passesCopy = passes;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__NPKCompanionAgentConnection_hasActiveExternallySharedPasses___block_invoke;
  v6[3] = &unk_279944F48;
  v7 = passesCopy;
  v5 = passesCopy;
  [(NPKCompanionAgentConnection *)self hasActiveExternallySharedPassesWithCompletion:v6];
}

uint64_t __63__NPKCompanionAgentConnection_hasActiveExternallySharedPasses___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)hasActiveExternallySharedPassesWithCompletion:(id)completion
{
  completionCopy = completion;
  remoteService = [(NPKCompanionAgentConnection *)self remoteService];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__NPKCompanionAgentConnection_hasActiveExternallySharedPassesWithCompletion___block_invoke;
  v11[3] = &unk_279945218;
  v6 = completionCopy;
  v12 = v6;
  v7 = [remoteService remoteObjectProxyWithErrorHandler:v11];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__NPKCompanionAgentConnection_hasActiveExternallySharedPassesWithCompletion___block_invoke_174;
  v9[3] = &unk_2799467A8;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 hasActiveExternallySharedPassesWithCompletion:v9];
}

void __77__NPKCompanionAgentConnection_hasActiveExternallySharedPassesWithCompletion___block_invoke(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Error while getting active externally shared passes. Error: %@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __77__NPKCompanionAgentConnection_hasActiveExternallySharedPassesWithCompletion___block_invoke_174(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)expressModeEnabledForPassIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  remoteService = [(NPKCompanionAgentConnection *)self remoteService];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__NPKCompanionAgentConnection_expressModeEnabledForPassIdentifier_completion___block_invoke;
  v14[3] = &unk_279945218;
  v9 = completionCopy;
  v15 = v9;
  v10 = [remoteService remoteObjectProxyWithErrorHandler:v14];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__NPKCompanionAgentConnection_expressModeEnabledForPassIdentifier_completion___block_invoke_175;
  v12[3] = &unk_2799467A8;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 expressModeEnabledForPassIdentifier:identifierCopy completion:v12];
}

void __78__NPKCompanionAgentConnection_expressModeEnabledForPassIdentifier_completion___block_invoke(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Error while checking express passes. Error: %@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __78__NPKCompanionAgentConnection_expressModeEnabledForPassIdentifier_completion___block_invoke_175(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateCredentials:(id)credentials forUniqueID:(id)d paymentApplicationIdentifier:(id)identifier completion:(id)completion
{
  credentialsCopy = credentials;
  dCopy = d;
  identifierCopy = identifier;
  completionCopy = completion;
  remoteService = [(NPKCompanionAgentConnection *)self remoteService];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __101__NPKCompanionAgentConnection_updateCredentials_forUniqueID_paymentApplicationIdentifier_completion___block_invoke;
  v23[3] = &unk_27994AEB8;
  v24 = credentialsCopy;
  v25 = dCopy;
  v26 = identifierCopy;
  v15 = completionCopy;
  v27 = v15;
  v16 = identifierCopy;
  v17 = dCopy;
  v18 = credentialsCopy;
  v19 = [remoteService remoteObjectProxyWithErrorHandler:v23];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __101__NPKCompanionAgentConnection_updateCredentials_forUniqueID_paymentApplicationIdentifier_completion___block_invoke_176;
  v21[3] = &unk_279947DC0;
  v21[4] = self;
  v22 = v15;
  v20 = v15;
  [v19 updateCredentials:v18 forUniqueID:v17 paymentApplicationIdentifier:v16 completion:v21];
}

void __101__NPKCompanionAgentConnection_updateCredentials_forUniqueID_paymentApplicationIdentifier_completion___block_invoke(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[4];
      v8 = a1[5];
      v9 = a1[6];
      v12 = 138413058;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Error while updating credentials %@ for pass unique ID: %@, paymentApplicationIdentifier: %@. Error: %@", &v12, 0x2Au);
    }
  }

  v10 = a1[7];
  if (v10)
  {
    (*(v10 + 16))(v10, v3);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __101__NPKCompanionAgentConnection_updateCredentials_forUniqueID_paymentApplicationIdentifier_completion___block_invoke_176(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)bridgedClientInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  remoteService = [(NPKCompanionAgentConnection *)self remoteService];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__NPKCompanionAgentConnection_bridgedClientInfoWithCompletion___block_invoke;
  v11[3] = &unk_279945218;
  v6 = completionCopy;
  v12 = v6;
  v7 = [remoteService remoteObjectProxyWithErrorHandler:v11];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__NPKCompanionAgentConnection_bridgedClientInfoWithCompletion___block_invoke_177;
  v9[3] = &unk_279947CF8;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 bridgedClientInfoWithCompletion:v9];
}

void __63__NPKCompanionAgentConnection_bridgedClientInfoWithCompletion___block_invoke(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Error while getting bridged client info. Error: %@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __63__NPKCompanionAgentConnection_bridgedClientInfoWithCompletion___block_invoke_177(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __96__NPKCompanionAgentConnection_canAddToCompanionPrecheckForegroundConnectivitySynchronous_reply___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: NPKCompanionAgentConnection (%@): failed to check companion connectivity.", &v8, 0xCu);
    }
  }

  result = (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)trustedDeviceEnrollmentSignatureWithAccountDSID:(id)d sessionData:(id)data handler:(id)handler
{
  dCopy = d;
  dataCopy = data;
  handlerCopy = handler;
  v11 = pk_General_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (handlerCopy)
  {
    if (v12)
    {
      v13 = pk_General_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Requested gizmo trusted device enrollment signature", buf, 2u);
      }
    }

    remoteService = [(NPKCompanionAgentConnection *)self remoteService];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __99__NPKCompanionAgentConnection_trustedDeviceEnrollmentSignatureWithAccountDSID_sessionData_handler___block_invoke;
    v20[3] = &unk_279945218;
    v15 = handlerCopy;
    v21 = v15;
    v16 = [remoteService remoteObjectProxyWithErrorHandler:v20];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __99__NPKCompanionAgentConnection_trustedDeviceEnrollmentSignatureWithAccountDSID_sessionData_handler___block_invoke_185;
    v18[3] = &unk_27994AEE0;
    v18[4] = self;
    v19 = v15;
    [v16 trustedDeviceEnrollmentSignatureWithAccountDSID:dCopy sessionData:dataCopy handler:v18];

    v17 = v21;
  }

  else
  {
    if (!v12)
    {
      goto LABEL_8;
    }

    v17 = pk_General_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Warning: TrustedDeviceEnrollmentInfo ignore request. handler not provided", buf, 2u);
    }
  }

LABEL_8:
}

void __99__NPKCompanionAgentConnection_trustedDeviceEnrollmentSignatureWithAccountDSID_sessionData_handler___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: TrustedDeviceEnrollmentInfo: Error connecting to gizmo target device.", v11, 2u);
    }
  }

  v5 = *(a1 + 32);
  v6 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277D386B0];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = @"Error connecting to target device.";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 errorWithDomain:v7 code:-1 userInfo:v8];
  (*(v5 + 16))(v5, 0, 0, 0, v9);

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __99__NPKCompanionAgentConnection_trustedDeviceEnrollmentSignatureWithAccountDSID_sessionData_handler___block_invoke_185(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)provisionIdentityPassWithPassMetadata:(id)metadata targetDeviceIdentifier:(id)identifier credentialIdentifier:(id)credentialIdentifier attestations:(id)attestations supplementalData:(id)data completion:(id)completion
{
  metadataCopy = metadata;
  identifierCopy = identifier;
  credentialIdentifierCopy = credentialIdentifier;
  attestationsCopy = attestations;
  dataCopy = data;
  completionCopy = completion;
  if (!completionCopy)
  {
    v19 = pk_General_log();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      v21 = pk_General_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_DEFAULT, "Warning: Completion not provided by the caller we will not be able to notify when we are done", buf, 2u);
      }
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __154__NPKCompanionAgentConnection_provisionIdentityPassWithPassMetadata_targetDeviceIdentifier_credentialIdentifier_attestations_supplementalData_completion___block_invoke;
  aBlock[3] = &unk_27994AF08;
  v36 = completionCopy;
  v22 = completionCopy;
  v23 = _Block_copy(aBlock);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __154__NPKCompanionAgentConnection_provisionIdentityPassWithPassMetadata_targetDeviceIdentifier_credentialIdentifier_attestations_supplementalData_completion___block_invoke_189;
  v29[3] = &unk_27994AF30;
  v30 = metadataCopy;
  v31 = credentialIdentifierCopy;
  v32 = attestationsCopy;
  v33 = dataCopy;
  v34 = v23;
  v24 = v23;
  v25 = dataCopy;
  v26 = attestationsCopy;
  v27 = credentialIdentifierCopy;
  v28 = metadataCopy;
  [NPKIDVRemoteDeviceSession sessionForDeviceID:identifierCopy completion:v29];
}

void __154__NPKCompanionAgentConnection_provisionIdentityPassWithPassMetadata_targetDeviceIdentifier_credentialIdentifier_attestations_supplementalData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
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
      v12 = 136315650;
      v13 = "[NPKCompanionAgentConnection provisionIdentityPassWithPassMetadata:targetDeviceIdentifier:credentialIdentifier:attestations:supplementalData:completion:]_block_invoke";
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: %s finished with secureElementPass:%@, error:%@", &v12, 0x20u);
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)provisionIdentityPassWithPassMetadata:(id)metadata policyIdentifier:(id)identifier targetDeviceIdentifier:(id)deviceIdentifier credentialIdentifier:(id)credentialIdentifier attestations:(id)attestations completion:(id)completion
{
  completionCopy = completion;
  v14 = MEMORY[0x277D37F08];
  attestationsCopy = attestations;
  credentialIdentifierCopy = credentialIdentifier;
  deviceIdentifierCopy = deviceIdentifier;
  metadataCopy = metadata;
  v19 = objc_alloc_init(v14);
  dataRepresentation = [v19 dataRepresentation];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __154__NPKCompanionAgentConnection_provisionIdentityPassWithPassMetadata_policyIdentifier_targetDeviceIdentifier_credentialIdentifier_attestations_completion___block_invoke;
  v22[3] = &unk_27994AF08;
  v23 = completionCopy;
  v21 = completionCopy;
  [(NPKCompanionAgentConnection *)self provisionIdentityPassWithPassMetadata:metadataCopy targetDeviceIdentifier:deviceIdentifierCopy credentialIdentifier:credentialIdentifierCopy attestations:attestationsCopy supplementalData:dataRepresentation completion:v22];
}

uint64_t __154__NPKCompanionAgentConnection_provisionIdentityPassWithPassMetadata_policyIdentifier_targetDeviceIdentifier_credentialIdentifier_attestations_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (void)addPendingProvisionings:(id)provisionings identityTargetDeviceIdentifier:(id)identifier completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  provisioningsCopy = provisionings;
  identifierCopy = identifier;
  completionCopy = completion;
  if (!completionCopy)
  {
    v11 = pk_General_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = pk_General_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Warning: Completion not provided by the caller we will not be able to notify when we are done", buf, 2u);
      }
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__NPKCompanionAgentConnection_addPendingProvisionings_identityTargetDeviceIdentifier_completion___block_invoke;
  aBlock[3] = &unk_279947DC0;
  aBlock[4] = self;
  v26 = completionCopy;
  v14 = completionCopy;
  v15 = _Block_copy(aBlock);
  v16 = pk_General_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    v18 = pk_General_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = provisioningsCopy;
      _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: Adding Pending provisioning:%@", buf, 0xCu);
    }
  }

  remoteService = [(NPKCompanionAgentConnection *)self remoteService];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __97__NPKCompanionAgentConnection_addPendingProvisionings_identityTargetDeviceIdentifier_completion___block_invoke_192;
  v23[3] = &unk_279945218;
  v24 = v15;
  v20 = v15;
  v21 = [remoteService remoteObjectProxyWithErrorHandler:v23];

  [v21 addPendingProvisionings:provisioningsCopy identityTargetDeviceIdentifier:identifierCopy completion:v20];
  v22 = *MEMORY[0x277D85DE8];
}

void __97__NPKCompanionAgentConnection_addPendingProvisionings_identityTargetDeviceIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_General_log();
  v5 = v4;
  if (v3)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = pk_General_log();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v15 = 136315394;
    v16 = "[NPKCompanionAgentConnection addPendingProvisionings:identityTargetDeviceIdentifier:completion:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    v8 = "Error: %s Finished adding pending provisioning error:%@";
    v9 = v7;
    v10 = OS_LOG_TYPE_ERROR;
    v11 = 22;
    goto LABEL_8;
  }

  v12 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (!v12)
  {
    goto LABEL_10;
  }

  v7 = pk_General_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[NPKCompanionAgentConnection addPendingProvisionings:identityTargetDeviceIdentifier:completion:]_block_invoke";
    v8 = "Notice: %s Finished adding pending provisioning";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
    v11 = 12;
LABEL_8:
    _os_log_impl(&dword_25B300000, v9, v10, v8, &v15, v11);
  }

LABEL_9:

LABEL_10:
  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, v3);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_remoteObjectProxySynchronize:(BOOL)synchronize withFailureHandler:(id)handler
{
  synchronizeCopy = synchronize;
  v23 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  remoteService = [(NPKCompanionAgentConnection *)self remoteService];
  v8 = [(NPKCompanionAgentConnection *)self _errorHandlerWithCompletion:handlerCopy];
  if (synchronizeCopy)
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
        v16 = "[NPKCompanionAgentConnection _remoteObjectProxySynchronize:withFailureHandler:]";
        v17 = 2082;
        v18 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKCompanionAgentConnection.m";
        v19 = 2048;
        v20 = 1505;
        v21 = 1024;
        v22 = synchronizeCopy;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: [NPKCompanionAgentConnection _remoteObjectProxySynchronise:withFailureHandler:] (synchronous:%d) would have returned nil)", &v15, 0x26u);
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
  aBlock[2] = __59__NPKCompanionAgentConnection__errorHandlerWithCompletion___block_invoke;
  aBlock[3] = &unk_279945218;
  v9 = completionCopy;
  v4 = completionCopy;
  v5 = _Block_copy(aBlock);
  v6 = _Block_copy(v5);

  return v6;
}

void __59__NPKCompanionAgentConnection__errorHandlerWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Error on NPKCompanionAgentConnection connection: %@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_cachedUniqueIDs
{
  dispatch_assert_queue_V2(self->_cacheQueue);
  cachedUniqueIDs = [(NPKCompanionAgentConnection *)self cachedUniqueIDs];
  if (cachedUniqueIDs)
  {
    v4 = MEMORY[0x277CBEB98];
    cachedUniqueIDs2 = [(NPKCompanionAgentConnection *)self cachedUniqueIDs];
    v6 = [v4 setWithSet:cachedUniqueIDs2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setCachedUniqueIDs:(id)ds
{
  cacheQueue = self->_cacheQueue;
  dsCopy = ds;
  dispatch_assert_queue_V2(cacheQueue);
  v6 = [MEMORY[0x277CBEB58] setWithSet:dsCopy];

  [(NPKCompanionAgentConnection *)self setCachedUniqueIDs:v6];
}

- (id)_cachedPassForUniqueID:(id)d
{
  dCopy = d;
  cachedPasses = [(NPKCompanionAgentConnection *)self cachedPasses];
  v6 = [cachedPasses objectForKey:dCopy];

  return v6;
}

- (void)_addPassToCache:(id)cache
{
  cacheQueue = self->_cacheQueue;
  cacheCopy = cache;
  dispatch_assert_queue_V2(cacheQueue);
  cachedUniqueIDs = [(NPKCompanionAgentConnection *)self cachedUniqueIDs];
  uniqueID = [cacheCopy uniqueID];
  [cachedUniqueIDs addObject:uniqueID];

  cachedPasses = [(NPKCompanionAgentConnection *)self cachedPasses];
  uniqueID2 = [cacheCopy uniqueID];
  [cachedPasses setObject:cacheCopy forKeyedSubscript:uniqueID2];
}

- (void)_removePassWithUniqueIDFromCache:(id)cache
{
  cacheQueue = self->_cacheQueue;
  cacheCopy = cache;
  dispatch_assert_queue_V2(cacheQueue);
  cachedUniqueIDs = [(NPKCompanionAgentConnection *)self cachedUniqueIDs];
  [cachedUniqueIDs removeObject:cacheCopy];

  cachedPasses = [(NPKCompanionAgentConnection *)self cachedPasses];
  [cachedPasses removeObjectForKey:cacheCopy];
}

- (void)_invalidateCachedPassWithUniqueID:(id)d
{
  cacheQueue = self->_cacheQueue;
  dCopy = d;
  dispatch_assert_queue_V2(cacheQueue);
  cachedPasses = [(NPKCompanionAgentConnection *)self cachedPasses];
  [cachedPasses removeObjectForKey:dCopy];
}

- (void)_clearCaches
{
  dispatch_assert_queue_V2(self->_cacheQueue);
  [(NPKCompanionAgentConnection *)self setCachedUniqueIDs:0];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(NPKCompanionAgentConnection *)self setCachedPasses:dictionary];
}

- (void)_applyPropertiesToPass:(id)pass
{
  v19 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  uniqueID = [passCopy uniqueID];
  v6 = MEMORY[0x277CBEBC0];
  v7 = NPKStorePathForPaymentPassWithUniqueID(uniqueID);
  v8 = [v6 fileURLWithPath:v7];

  NPKFlushCFBundleCacheAtURL(v8);
  v9 = [(PKFileDataAccessor *)[NPKSettingsPreservingFileDataAccessor alloc] initWithFileURL:v8 error:0];
  [(NPKSettingsPreservingFileDataAccessor *)v9 setConnection:self];
  [(NPKSettingsPreservingFileDataAccessor *)v9 setObjectUniqueID:uniqueID];
  [passCopy setDataAccessor:v9];
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      PKScreenScale();
      v15 = 138412546;
      v16 = uniqueID;
      v17 = 2048;
      v18 = v13;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Setting screen scale for pass with unique ID %@ to %.2f", &v15, 0x16u);
    }
  }

  PKScreenScale();
  [passCopy setPreferredImageScale:?];
  [passCopy setPreferredImageSuffix:0];
  [passCopy setRemotePass:1];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_shouldShowApplePaySettingsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = dispatch_get_global_queue(25, 0);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __73__NPKCompanionAgentConnection__shouldShowApplePaySettingsWithCompletion___block_invoke;
    v6[3] = &unk_279945530;
    v6[4] = self;
    v7 = completionCopy;
    dispatch_async(v5, v6);
  }
}

void __73__NPKCompanionAgentConnection__shouldShowApplePaySettingsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _isApplePaySupportedInCurrentRegion];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__NPKCompanionAgentConnection__shouldShowApplePaySettingsWithCompletion___block_invoke_2;
  block[3] = &unk_279946F40;
  v6 = v2 != 2;
  v5 = v2;
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __73__NPKCompanionAgentConnection__shouldShowApplePaySettingsWithCompletion___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v6 = NSStringFromBOOL();
      v7 = v6;
      v8 = *(a1 + 40);
      if (v8 > 2)
      {
        v9 = @"unknown";
      }

      else
      {
        v9 = off_27994B148[v8];
      }

      v13 = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Should show Apple Pay settings: %@ (supported in region %@)", &v13, 0x16u);
    }
  }

  v10 = *(a1 + 48);
  result = (*(*(a1 + 32) + 16))();
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_shouldShowApplePaySettingsForTinkerWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_group_create();
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 0;
  dispatch_group_enter(v5);
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__NPKCompanionAgentConnection__shouldShowApplePaySettingsForTinkerWithCompletion___block_invoke;
  block[3] = &unk_279946940;
  v36 = v37;
  block[4] = self;
  v7 = v5;
  v35 = v7;
  dispatch_async(v6, block);

  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  dispatch_group_enter(v7);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __82__NPKCompanionAgentConnection__shouldShowApplePaySettingsForTinkerWithCompletion___block_invoke_2;
  v29[3] = &unk_279948130;
  v29[4] = self;
  v31 = v32;
  v8 = v7;
  v30 = v8;
  dispatch_async(v6, v29);

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  dispatch_group_enter(v8);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __82__NPKCompanionAgentConnection__shouldShowApplePaySettingsForTinkerWithCompletion___block_invoke_4;
  v24[3] = &unk_279944FE8;
  v26 = v27;
  v9 = v8;
  v25 = v9;
  dispatch_async(v6, v24);

  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 1;
  dispatch_group_enter(v9);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __82__NPKCompanionAgentConnection__shouldShowApplePaySettingsForTinkerWithCompletion___block_invoke_5;
  v18[3] = &unk_279946940;
  selfCopy = self;
  v21 = v22;
  v19 = v9;
  v10 = v9;
  dispatch_async(v6, v18);

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__NPKCompanionAgentConnection__shouldShowApplePaySettingsForTinkerWithCompletion___block_invoke_198;
  v12[3] = &unk_27994AB08;
  v14 = v37;
  v15 = v32;
  v16 = v27;
  v17 = v22;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  dispatch_group_notify(v10, MEMORY[0x277D85CD0], v12);

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v27, 8);

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v37, 8);
}

void __82__NPKCompanionAgentConnection__shouldShowApplePaySettingsForTinkerWithCompletion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = NPKPairedOrPairingDevice();
  v4 = [v2 peerPaymentAccountForDevice:v3];
  *(*(a1[6] + 8) + 24) = v4 != 0;

  v5 = a1[5];

  dispatch_group_leave(v5);
}

void __82__NPKCompanionAgentConnection__shouldShowApplePaySettingsForTinkerWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __82__NPKCompanionAgentConnection__shouldShowApplePaySettingsForTinkerWithCompletion___block_invoke_3;
  v4[3] = &unk_279949B80;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 paymentPassUniqueIDsSynchronous:0 reply:v4];
}

void __82__NPKCompanionAgentConnection__shouldShowApplePaySettingsForTinkerWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = [a2 count] != 0;
  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

void __82__NPKCompanionAgentConnection__shouldShowApplePaySettingsForTinkerWithCompletion___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x277D38170] sharedService];
  v3 = NPKDeviceRegion();
  *(*(*(a1 + 40) + 8) + 24) = NPKShouldAllowPeerPaymentRegistrationForWebService(v2, v3);

  v4 = *(a1 + 32);

  dispatch_group_leave(v4);
}

void __82__NPKCompanionAgentConnection__shouldShowApplePaySettingsForTinkerWithCompletion___block_invoke_5(uint64_t a1)
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__NPKCompanionAgentConnection__shouldShowApplePaySettingsForTinkerWithCompletion___block_invoke_6;
  aBlock[3] = &unk_27994AF58;
  v12 = *(a1 + 48);
  v11 = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v3 = getBPSTinkerSupportClass_softClass;
  v17 = getBPSTinkerSupportClass_softClass;
  if (!getBPSTinkerSupportClass_softClass)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __getBPSTinkerSupportClass_block_invoke;
    v13[3] = &unk_2799457C8;
    v13[4] = &v14;
    __getBPSTinkerSupportClass_block_invoke(v13);
    v3 = v15[3];
  }

  v4 = v3;
  _Block_object_dispose(&v14, 8);
  v5 = [v3 sharedInstance];
  v6 = [v5 cachedTinkerFamilyMemeber];

  if (v6)
  {
    v7 = [v5 cachedTinkerFamilyMemeber];
    v2[2](v2, v7);
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __82__NPKCompanionAgentConnection__shouldShowApplePaySettingsForTinkerWithCompletion___block_invoke_7;
    v8[3] = &unk_27994AF80;
    v8[4] = *(a1 + 40);
    v9 = v2;
    [v5 getActiveTinkerFamilyMemberWithCompletion:v8];
  }
}

void __82__NPKCompanionAgentConnection__shouldShowApplePaySettingsForTinkerWithCompletion___block_invoke_6(uint64_t a1, void *a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = [a2 memberType] == 0;
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

void __82__NPKCompanionAgentConnection__shouldShowApplePaySettingsForTinkerWithCompletion___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = pk_Payment_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = pk_Payment_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v12 = 138412546;
        v13 = v10;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Failed to fetch active tinker family member due to: %@", &v12, 0x16u);
      }
    }
  }

  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __82__NPKCompanionAgentConnection__shouldShowApplePaySettingsForTinkerWithCompletion___block_invoke_198(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*(a1[6] + 8) + 24) & 1) != 0 || (*(*(a1[7] + 8) + 24))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(*(a1[8] + 8) + 24) == 1 && *(*(a1[9] + 8) + 24) == 0;
  }

  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "no";
      if (v2)
      {
        v6 = "yes";
      }

      v7 = *(*(a1[6] + 8) + 24);
      v8 = *(*(a1[7] + 8) + 24);
      v9 = *(*(a1[8] + 8) + 24);
      v10 = *(*(a1[9] + 8) + 24);
      v13 = 136316162;
      v14 = v6;
      v15 = 1024;
      v16 = v7;
      v17 = 1024;
      v18 = v8;
      v19 = 1024;
      v20 = v9;
      v21 = 1024;
      v22 = v10;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Should show Apple Pay settings for Tinker: %s (hasPeerPaymentAccount: %d, hasPaymentPasses %d, isPeerPaymentSupportedInRegion: %d, isTinkerMemberAdult: %d)", &v13, 0x24u);
    }
  }

  result = a1[5];
  if (result)
  {
    result = (*(result + 16))(result, v2);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_savePaymentPass:(id)pass atURL:(id)l forDevice:(id)device completion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  lCopy = l;
  deviceCopy = device;
  completionCopy = completion;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __75__NPKCompanionAgentConnection__savePaymentPass_atURL_forDevice_completion___block_invoke;
  v30[3] = &unk_2799467F8;
  v30[4] = self;
  v14 = passCopy;
  v31 = v14;
  v15 = lCopy;
  v32 = v15;
  v16 = deviceCopy;
  v33 = v16;
  v17 = completionCopy;
  v34 = v17;
  v18 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:v30];
  archiveData = [v14 archiveData];
  if (archiveData)
  {
    uniqueID = [v14 uniqueID];
    v21 = [v16 valueForProperty:*MEMORY[0x277D2BBB8]];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __75__NPKCompanionAgentConnection__savePaymentPass_atURL_forDevice_completion___block_invoke_4;
    v27[3] = &unk_279947AF8;
    v27[4] = self;
    v28 = v14;
    v29 = v17;
    [v18 savePaymentPassData:archiveData withUniqueID:uniqueID forPairingID:v21 completion:v27];
  }

  else if (v17)
  {
    v22 = pk_Payment_log();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

    if (v23)
    {
      v24 = pk_Payment_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        uniqueID2 = [v14 uniqueID];
        *buf = 138412290;
        v36 = uniqueID2;
        _os_log_impl(&dword_25B300000, v24, OS_LOG_TYPE_ERROR, "Error: Unable to get archive data for payment pass with unique ID %@", buf, 0xCu);
      }
    }

    (*(v17 + 2))(v17, 0);
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __75__NPKCompanionAgentConnection__savePaymentPass_atURL_forDevice_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) queueAppropriateFailedActions])
  {
    v2 = +[NPKCompanionAgentConnectionDeferredActionHandler sharedDeferredActionHandler];
    v3 = *(a1 + 40);
    v4 = NPKPairedOrPairingDevice();
    [v2 addDeferredPaymentPass:v3 forDevice:v4];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __75__NPKCompanionAgentConnection__savePaymentPass_atURL_forDevice_completion___block_invoke_2;
    v10[3] = &unk_27994AFD0;
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    *&v7 = *(a1 + 56);
    *(&v7 + 1) = *(a1 + 32);
    *&v8 = v5;
    *(&v8 + 1) = v6;
    v11 = v8;
    v12 = v7;
    [v2 performActionWhenCompanionAgentIsAvailable:v10 forDevice:*(a1 + 56)];
  }

  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __75__NPKCompanionAgentConnection__savePaymentPass_atURL_forDevice_completion___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_semaphore_create(0);
  v5 = a1[4];
  v6 = a1[5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__NPKCompanionAgentConnection__savePaymentPass_atURL_forDevice_completion___block_invoke_3;
  v9[3] = &unk_27994AFA8;
  v7 = a1[6];
  v9[4] = a1[7];
  v10 = v5;
  v11 = v4;
  v8 = v4;
  [v3 _savePaymentPass:v10 atURL:v6 forDevice:v7 completion:v9];

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t __75__NPKCompanionAgentConnection__savePaymentPass_atURL_forDevice_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _applyPropertiesToPass:*(a1 + 40)];
  v2 = *(a1 + 48);

  return dispatch_semaphore_signal(v2);
}

uint64_t __75__NPKCompanionAgentConnection__savePaymentPass_atURL_forDevice_completion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _applyPropertiesToPass:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didEnableTransactionService:(BOOL)service
{
  serviceCopy = service;
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"disable";
      *buf = 138412802;
      selfCopy = self;
      v18 = 2112;
      if (serviceCopy)
      {
        v10 = @"enable";
      }

      v19 = v10;
      v20 = 2112;
      v21 = identifierCopy;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Payment pass did %@ transaction service: %@", buf, 0x20u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__NPKCompanionAgentConnection_paymentPassWithUniqueIdentifier_didEnableTransactionService___block_invoke;
  block[3] = &unk_279946490;
  block[4] = self;
  v14 = identifierCopy;
  v15 = serviceCopy;
  v11 = identifierCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v12 = *MEMORY[0x277D85DE8];
}

void __91__NPKCompanionAgentConnection_paymentPassWithUniqueIdentifier_didEnableTransactionService___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 paymentPassWithUniqueIdentifier:*(a1 + 40) didEnableTransactionService:*(a1 + 48)];
}

- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  transactionCopy = transaction;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy = self;
      v19 = 2112;
      v20 = identifierCopy;
      v21 = 2112;
      v22 = transactionCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Transaction source identifier did receive transaction: %@ transaction %@", buf, 0x20u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__NPKCompanionAgentConnection_transactionSourceIdentifier_didReceiveTransaction___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v15 = identifierCopy;
  v16 = transactionCopy;
  v11 = transactionCopy;
  v12 = identifierCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v13 = *MEMORY[0x277D85DE8];
}

void __81__NPKCompanionAgentConnection_transactionSourceIdentifier_didReceiveTransaction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionSourceIdentifier:*(a1 + 40) didReceiveTransaction:*(a1 + 48)];
}

- (void)transactionSourceIdentifier:(id)identifier didRemoveTransactionWithIdentifier:(id)withIdentifier
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy = self;
      v19 = 2112;
      v20 = identifierCopy;
      v21 = 2112;
      v22 = withIdentifierCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Transaction source identifier did remove transaction: %@, transaction %@", buf, 0x20u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__NPKCompanionAgentConnection_transactionSourceIdentifier_didRemoveTransactionWithIdentifier___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v15 = identifierCopy;
  v16 = withIdentifierCopy;
  v11 = withIdentifierCopy;
  v12 = identifierCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v13 = *MEMORY[0x277D85DE8];
}

void __94__NPKCompanionAgentConnection_transactionSourceIdentifier_didRemoveTransactionWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionSourceIdentifier:*(a1 + 40) didRemoveTransactionWithIdentifier:*(a1 + 48)];
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitPassProperties:(id)properties
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  propertiesCopy = properties;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy = self;
      v23 = 2112;
      v24 = identifierCopy;
      v25 = 2112;
      v26 = propertiesCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Payment pass did update transit pass properties: %@, properties %@", buf, 0x20u);
    }
  }

  cacheQueue = self->_cacheQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__NPKCompanionAgentConnection_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke;
  block[3] = &unk_2799454E0;
  block[4] = self;
  v12 = identifierCopy;
  v20 = v12;
  dispatch_async(cacheQueue, block);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __98__NPKCompanionAgentConnection_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke_2;
  v16[3] = &unk_279945880;
  v16[4] = self;
  v17 = v12;
  v18 = propertiesCopy;
  v13 = propertiesCopy;
  v14 = v12;
  dispatch_async(MEMORY[0x277D85CD0], v16);

  v15 = *MEMORY[0x277D85DE8];
}

void __98__NPKCompanionAgentConnection_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 paymentPassWithUniqueIdentifier:*(a1 + 40) didUpdateWithTransitPassProperties:*(a1 + 48)];
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithBalances:(id)balances
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  balancesCopy = balances;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy = self;
      v19 = 2112;
      v20 = identifierCopy;
      v21 = 2112;
      v22 = balancesCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Payment pass did update balances: %@, balances %@", buf, 0x20u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__NPKCompanionAgentConnection_paymentPassWithUniqueIdentifier_didUpdateWithBalances___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v15 = identifierCopy;
  v16 = balancesCopy;
  v11 = balancesCopy;
  v12 = identifierCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v13 = *MEMORY[0x277D85DE8];
}

void __85__NPKCompanionAgentConnection_paymentPassWithUniqueIdentifier_didUpdateWithBalances___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 paymentPassWithUniqueIdentifier:*(a1 + 40) didUpdateWithBalances:*(a1 + 48)];
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateBalanceReminder:(id)reminder forBalance:(id)balance
{
  v30 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  reminderCopy = reminder;
  balanceCopy = balance;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      selfCopy = self;
      v24 = 2112;
      v25 = identifierCopy;
      v26 = 2112;
      v27 = reminderCopy;
      v28 = 2112;
      v29 = balanceCopy;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Payment pass did update balance reminder: %@, reminder %@, balance %@", buf, 0x2Au);
    }
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __99__NPKCompanionAgentConnection_paymentPassWithUniqueIdentifier_didUpdateBalanceReminder_forBalance___block_invoke;
  v18[3] = &unk_279946260;
  v18[4] = self;
  v19 = identifierCopy;
  v20 = reminderCopy;
  v21 = balanceCopy;
  v14 = balanceCopy;
  v15 = reminderCopy;
  v16 = identifierCopy;
  dispatch_async(MEMORY[0x277D85CD0], v18);

  v17 = *MEMORY[0x277D85DE8];
}

void __99__NPKCompanionAgentConnection_paymentPassWithUniqueIdentifier_didUpdateBalanceReminder_forBalance___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 paymentPassWithUniqueIdentifier:*(a1 + 40) didUpdateBalanceReminder:*(a1 + 48) forBalance:*(a1 + 56)];
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithCredentials:(id)credentials forPaymentApplicationIdentifier:(id)applicationIdentifier
{
  v30 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  credentialsCopy = credentials;
  applicationIdentifierCopy = applicationIdentifier;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      selfCopy = self;
      v24 = 2112;
      v25 = identifierCopy;
      v26 = 2112;
      v27 = credentialsCopy;
      v28 = 2112;
      v29 = applicationIdentifierCopy;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Payment pass with uniqueID: %@ did update credentials: %@, for paymentApplicationIdentifier %@", buf, 0x2Au);
    }
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __120__NPKCompanionAgentConnection_paymentPassWithUniqueIdentifier_didUpdateWithCredentials_forPaymentApplicationIdentifier___block_invoke;
  v18[3] = &unk_279946260;
  v18[4] = self;
  v19 = identifierCopy;
  v20 = credentialsCopy;
  v21 = applicationIdentifierCopy;
  v14 = applicationIdentifierCopy;
  v15 = credentialsCopy;
  v16 = identifierCopy;
  dispatch_async(MEMORY[0x277D85CD0], v18);

  v17 = *MEMORY[0x277D85DE8];
}

void __120__NPKCompanionAgentConnection_paymentPassWithUniqueIdentifier_didUpdateWithCredentials_forPaymentApplicationIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 paymentPassWithUniqueIdentifier:*(a1 + 40) didUpdateWithCredentials:*(a1 + 48) forPaymentApplicationIdentifier:*(a1 + 56)];
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didEnableMessageService:(BOOL)service
{
  serviceCopy = service;
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy = self;
      v17 = 2112;
      v18 = identifierCopy;
      v19 = 1024;
      v20 = serviceCopy;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Payment pass with uniqueID:%@ did enable message service:%d", buf, 0x1Cu);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__NPKCompanionAgentConnection_paymentPassWithUniqueIdentifier_didEnableMessageService___block_invoke;
  block[3] = &unk_279946490;
  block[4] = self;
  v13 = identifierCopy;
  v14 = serviceCopy;
  v10 = identifierCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v11 = *MEMORY[0x277D85DE8];
}

void __87__NPKCompanionAgentConnection_paymentPassWithUniqueIdentifier_didEnableMessageService___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 paymentPassWithUniqueIdentifier:*(a1 + 40) didEnableMessageService:*(a1 + 48)];
}

- (BOOL)pairedWatchHasApplicationWithBundleID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v4 = NPKPairedOrPairingDevice();
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v5 = dispatch_group_create();
    dispatch_group_enter(v5);
    mEMORY[0x277CEAF80] = [MEMORY[0x277CEAF80] sharedDeviceConnection];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__NPKCompanionAgentConnection_pairedWatchHasApplicationWithBundleID___block_invoke;
    v11[3] = &unk_27994AFF8;
    v12 = dCopy;
    v14 = &v15;
    v7 = v5;
    v13 = v7;
    [mEMORY[0x277CEAF80] applicationIsInstalledOnPairedDevice:v4 withCompanionBundleID:v12 completion:v11];

    v8 = dispatch_time(0, 900000000000);
    dispatch_group_wait(v7, v8);
    v9 = *(v16 + 24);

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void __69__NPKCompanionAgentConnection_pairedWatchHasApplicationWithBundleID___block_invoke(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"NO";
      v8 = *(a1 + 32);
      if (a2)
      {
        v7 = @"YES";
      }

      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection app %@ is on gizmo %@", &v10, 0x16u);
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 40));
  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldShowWatchExtensionInstallationForPaymentPass:(id)pass
{
  v26 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  if ([passCopy supportsBarcodePayment])
  {
    v5 = [(NPKCompanionAgentConnection *)self _installedCompanionApplicationBundleIDForPaymentPass:passCopy];
    v6 = [(NPKCompanionAgentConnection *)self pairedWatchHasApplicationWithBundleID:v5];
    v7 = v5 != 0 && !v6;
    v8 = pk_General_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if (v7)
        {
          v11 = @"should";
        }

        else
        {
          v11 = @"should NOT";
        }

        uniqueID = [passCopy uniqueID];
        v18 = 138413058;
        v19 = v11;
        v20 = 2112;
        v21 = uniqueID;
        v22 = 1024;
        v23 = v5 != 0;
        v24 = 1024;
        v25 = v6;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection %@ show watch extension installation prompt for %@ - hasCompanionApplication: %d, hasWatchApplication: %d.", &v18, 0x22u);
      }
    }

LABEL_13:

    goto LABEL_14;
  }

  v13 = pk_General_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  LOBYTE(v7) = 0;
  if (v14)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID2 = [passCopy uniqueID];
      v18 = 138412290;
      v19 = uniqueID2;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection should NOT show watch extension installation prompt for %@ because it doens't support barcodePayment.", &v18, 0xCu);
    }

    LOBYTE(v7) = 0;
    goto LABEL_13;
  }

LABEL_14:

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)beginPairedWatchInstallationOfApplicationForPaymentPass:(id)pass completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = [(NPKCompanionAgentConnection *)self _installedCompanionApplicationBundleIDForPaymentPass:pass];
  v8 = NPKPairedOrPairingDevice();
  v9 = pk_General_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_General_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v7;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection beginning fetching watch app bundleID for %@", buf, 0xCu);
    }
  }

  mEMORY[0x277CEAF80] = [MEMORY[0x277CEAF80] sharedDeviceConnection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __98__NPKCompanionAgentConnection_beginPairedWatchInstallationOfApplicationForPaymentPass_completion___block_invoke;
  v18[3] = &unk_27994B048;
  v19 = v7;
  v20 = mEMORY[0x277CEAF80];
  v21 = v8;
  v22 = completionCopy;
  v13 = completionCopy;
  v14 = v8;
  v15 = mEMORY[0x277CEAF80];
  v16 = v7;
  [v15 fetchWatchAppBundleIDForCompanionAppBundleID:v16 completion:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __98__NPKCompanionAgentConnection_beginPairedWatchInstallationOfApplicationForPaymentPass_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_General_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    if (v8)
    {
      v9 = pk_General_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        *buf = 138412290;
        v21 = v10;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection beginning install of %@", buf, 0xCu);
      }
    }

    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __98__NPKCompanionAgentConnection_beginPairedWatchInstallationOfApplicationForPaymentPass_completion___block_invoke_214;
    v17[3] = &unk_27994B020;
    v18 = v5;
    v19 = *(a1 + 56);
    [v11 installApplication:v18 onPairedDevice:v12 completion:v17];
  }

  else
  {
    if (v8)
    {
      v13 = pk_General_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        *buf = 138412290;
        v21 = v14;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection failed to find watch app bundleID for %@", buf, 0xCu);
      }
    }

    v15 = *(a1 + 56);
    if (v15)
    {
      (*(v15 + 16))(v15, 0, v6);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __98__NPKCompanionAgentConnection_beginPairedWatchInstallationOfApplicationForPaymentPass_completion___block_invoke_214(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v12 = 138412802;
      v13 = v9;
      v14 = 2048;
      v15 = a2;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection ended install of %@ %li %@", &v12, 0x20u);
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v5 == 0, v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_installedCompanionApplicationBundleIDForPaymentPass:(id)pass
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  storeIdentifiers = [pass storeIdentifiers];
  bundleIdentifier = [storeIdentifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (bundleIdentifier)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != bundleIdentifier; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(storeIdentifiers);
        }

        v7 = [objc_alloc(MEMORY[0x277CC1E70]) initWithStoreItemIdentifier:objc_msgSend(*(*(&v11 + 1) + 8 * i) error:{"unsignedLongLongValue"), 0}];
        if (v7)
        {
          v8 = v7;
          bundleIdentifier = [v7 bundleIdentifier];

          goto LABEL_11;
        }
      }

      bundleIdentifier = [storeIdentifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (bundleIdentifier)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];

  return bundleIdentifier;
}

- (void)fetchPendingTransactionForPassWithUniqueID:(id)d completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v21 = 2112;
      v22 = dCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Fetching pending app redirect url for pass %@", buf, 0x16u);
    }
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__NPKCompanionAgentConnection_fetchPendingTransactionForPassWithUniqueID_completion___block_invoke;
  v17[3] = &unk_279945198;
  v11 = completionCopy;
  v18 = v11;
  v12 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__NPKCompanionAgentConnection_fetchPendingTransactionForPassWithUniqueID_completion___block_invoke_2;
  v15[3] = &unk_27994B070;
  v15[4] = self;
  v16 = v11;
  v13 = v11;
  [v12 fetchPendingTransactionForPassWithUniqueID:dCopy completion:v15];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __85__NPKCompanionAgentConnection_fetchPendingTransactionForPassWithUniqueID_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)markPendingTransactionAsProcessedForPassWithUniqueID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      selfCopy = self;
      v12 = 2112;
      v13 = dCopy;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Marking pending transaction as processed for pass %@", &v10, 0x16u);
    }
  }

  v8 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:0];
  [v8 markPendingTransactionAsProcessedForPassWithUniqueID:dCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)beginPairedWatchInstallationOfWalletWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Beginning to request the install of NanoPassbook", buf, 2u);
    }
  }

  v7 = [objc_alloc(MEMORY[0x277CEC4B0]) initWithBundleID:@"com.apple.NanoPassbook"];
  v8 = MEMORY[0x277CEC3C0];
  v9 = NPKPairedOrPairingDevice();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__NPKCompanionAgentConnection_beginPairedWatchInstallationOfWalletWithCompletion___block_invoke;
  v11[3] = &unk_27994B098;
  v12 = completionCopy;
  v10 = completionCopy;
  [v8 installApp:v7 onPairedDevice:v9 withCompletionHandler:v11];
}

void __82__NPKCompanionAgentConnection_beginPairedWatchInstallationOfWalletWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__NPKCompanionAgentConnection_beginPairedWatchInstallationOfWalletWithCompletion___block_invoke_2;
  v6[3] = &unk_279945530;
  v7 = v4;
  v8 = *(a1 + 32);
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __82__NPKCompanionAgentConnection_beginPairedWatchInstallationOfWalletWithCompletion___block_invoke_2(uint64_t a1)
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
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Finished requesting the install of NanoPassbook. Error?: %@", &v11, 0xCu);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = [v6 domain];
    if ([v7 isEqualToString:*MEMORY[0x277CEC2F8]])
    {
      v8 = [*(a1 + 32) code];

      if (v8 == 505)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Process not entitled to install apps on paired device"];
      }
    }

    else
    {
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, *(a1 + 32) != 0);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)presentStandaloneTransaction:(int64_t)transaction forPassUniqueIdentifier:(id)identifier terminalReaderIdentifier:(id)readerIdentifier completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  readerIdentifierCopy = readerIdentifier;
  completionCopy = completion;
  v13 = pk_Payment_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v15 = pk_Payment_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = _Block_copy(completionCopy);
      *buf = 138413314;
      selfCopy = self;
      v27 = 2048;
      transactionCopy = transaction;
      v29 = 2112;
      v30 = identifierCopy;
      v31 = 2112;
      v32 = readerIdentifierCopy;
      v33 = 2112;
      v34 = v16;
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): Present standalone transaction of type %ld for pass %@ readerID %@ completion %@", buf, 0x34u);
    }
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __120__NPKCompanionAgentConnection_presentStandaloneTransaction_forPassUniqueIdentifier_terminalReaderIdentifier_completion___block_invoke;
  v23[3] = &unk_279945198;
  v17 = completionCopy;
  v24 = v17;
  v18 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:v23];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __120__NPKCompanionAgentConnection_presentStandaloneTransaction_forPassUniqueIdentifier_terminalReaderIdentifier_completion___block_invoke_2;
  v21[3] = &unk_2799451F0;
  v21[4] = self;
  v22 = v17;
  v19 = v17;
  [v18 presentStandaloneTransaction:transaction forPassUniqueIdentifier:identifierCopy terminalReaderIdentifier:readerIdentifierCopy completion:v21];

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __120__NPKCompanionAgentConnection_presentStandaloneTransaction_forPassUniqueIdentifier_terminalReaderIdentifier_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)remoteService:(id)service didInterruptConnection:(id)connection
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): XPC connection to daemon was interrupted", buf, 0xCu);
    }
  }

  cacheQueue = self->_cacheQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__NPKCompanionAgentConnection_remoteService_didInterruptConnection___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(cacheQueue, block);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)currentSesdSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__NPKCompanionAgentConnection_currentSesdSnapshot___block_invoke;
  v6[3] = &unk_27994B0C0;
  v7 = snapshotCopy;
  v5 = snapshotCopy;
  [(NPKCompanionAgentConnection *)self currentSecureElementSnapshot:v6];
}

void __51__NPKCompanionAgentConnection_currentSesdSnapshot___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v6 = [a2 underlyingSESnapshot];
    (*(v3 + 16))(v3, v6, v5);
  }
}

- (void)currentSecureElementSnapshot:(id)snapshot
{
  v22 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v20 = 2080;
      v21 = "[NPKCompanionAgentConnection currentSecureElementSnapshot:]";
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): %s", buf, 0x16u);
    }
  }

  if (snapshotCopy)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__NPKCompanionAgentConnection_currentSecureElementSnapshot___block_invoke;
    v16[3] = &unk_279945530;
    v16[4] = self;
    v8 = snapshotCopy;
    v17 = v8;
    v9 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:v16];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__NPKCompanionAgentConnection_currentSecureElementSnapshot___block_invoke_226;
    v14[3] = &unk_27994B0E8;
    v14[4] = self;
    v15 = v8;
    [v9 currentSecureElementSnapshot:v14];
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
        *buf = 136315138;
        selfCopy = "[NPKCompanionAgentConnection currentSecureElementSnapshot:]";
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Warning: Nil completion passed to %s\n. Cannot proceed.", buf, 0xCu);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __60__NPKCompanionAgentConnection_currentSecureElementSnapshot___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v10 = 138412290;
      v11 = objc_opt_class();
      v6 = v11;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: %@: Couldn't get remote object proxy", &v10, 0xCu);
    }
  }

  v7 = *(a1 + 40);
  v8 = PKDisplayableErrorForCommonType();
  (*(v7 + 16))(v7, 0, v8);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)reclaimUnusedSEMemory:(id)memory
{
  memoryCopy = memory;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__NPKCompanionAgentConnection_reclaimUnusedSEMemory___block_invoke;
  v6[3] = &unk_27994B110;
  v7 = memoryCopy;
  v5 = memoryCopy;
  [(NPKCompanionAgentConnection *)self reclaimUnusedSecureElementMemory:v6];
}

uint64_t __53__NPKCompanionAgentConnection_reclaimUnusedSEMemory___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (void)reclaimUnusedSecureElementMemory:(id)memory
{
  v22 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v20 = 2080;
      v21 = "[NPKCompanionAgentConnection reclaimUnusedSecureElementMemory:]";
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): %s", buf, 0x16u);
    }
  }

  if (memoryCopy)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64__NPKCompanionAgentConnection_reclaimUnusedSecureElementMemory___block_invoke;
    v16[3] = &unk_279945530;
    v16[4] = self;
    v8 = memoryCopy;
    v17 = v8;
    v9 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:v16];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__NPKCompanionAgentConnection_reclaimUnusedSecureElementMemory___block_invoke_228;
    v14[3] = &unk_27994B0E8;
    v14[4] = self;
    v15 = v8;
    [v9 reclaimUnusedSEMemory:v14];
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
        *buf = 136315138;
        selfCopy = "[NPKCompanionAgentConnection reclaimUnusedSecureElementMemory:]";
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Warning: Nil completion passed to %s\n. Cannot proceed.", buf, 0xCu);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __64__NPKCompanionAgentConnection_reclaimUnusedSecureElementMemory___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v10 = 138412290;
      v11 = objc_opt_class();
      v6 = v11;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: %@: Couldn't get remote object proxy", &v10, 0xCu);
    }
  }

  v7 = *(a1 + 40);
  v8 = PKDisplayableErrorForCommonType();
  (*(v7 + 16))(v7, 0, v8);

  v9 = *MEMORY[0x277D85DE8];
}

void __64__NPKCompanionAgentConnection_reclaimUnusedSecureElementMemory___block_invoke_228(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 40);
  v5 = a3;
  v6 = [a2 underlyingSESnapshot];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)allPaymentApplicationUsageSummariesWithCompletion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v19 = 2080;
      v20 = "[NPKCompanionAgentConnection allPaymentApplicationUsageSummariesWithCompletion:]";
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): %s", buf, 0x16u);
    }
  }

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __81__NPKCompanionAgentConnection_allPaymentApplicationUsageSummariesWithCompletion___block_invoke;
  v14 = &unk_279945530;
  selfCopy2 = self;
  v16 = completionCopy;
  v8 = completionCopy;
  v9 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:&v11];
  [v9 allPaymentApplicationUsageSummaries:{v8, v11, v12, v13, v14, selfCopy2}];

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __81__NPKCompanionAgentConnection_allPaymentApplicationUsageSummariesWithCompletion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v9 = 138412290;
      v10 = objc_opt_class();
      v6 = v10;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: %@: Couldn't get remote object proxy", &v9, 0xCu);
    }
  }

  result = (*(*(a1 + 40) + 16))(*(a1 + 40), 0);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)removePass:(id)pass withCompletionHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  handlerCopy = handler;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v21 = 2080;
      v22 = "[NPKCompanionAgentConnection removePass:withCompletionHandler:]";
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): %s", buf, 0x16u);
    }
  }

  if (handlerCopy)
  {
    uniqueID = [passCopy uniqueID];
    v12 = NPKPairedOrPairingDevice();
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __64__NPKCompanionAgentConnection_removePass_withCompletionHandler___block_invoke;
    v17[3] = &unk_279944F48;
    v18 = handlerCopy;
    [(NPKCompanionAgentConnection *)self removePaymentPassWithUniqueID:uniqueID forDevice:v12 waitForConfirmation:0 completion:v17];

    v13 = v18;
  }

  else
  {
    v15 = pk_General_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (!v16)
    {
      goto LABEL_8;
    }

    v13 = pk_General_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      selfCopy = "[NPKCompanionAgentConnection removePass:withCompletionHandler:]";
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Warning: Nil completion passed to %s\n. Cannot proceed.", buf, 0xCu);
    }
  }

LABEL_8:
  v14 = *MEMORY[0x277D85DE8];
}

- (id)passesOfType:(unint64_t)type
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v19 = 2080;
      v20 = "[NPKCompanionAgentConnection passesOfType:]";
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): %s", buf, 0x16u);
    }
  }

  array = [MEMORY[0x277CBEB18] array];
  v9 = array;
  if (type == 1)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __44__NPKCompanionAgentConnection_passesOfType___block_invoke;
    v15[3] = &unk_279947BD8;
    v15[4] = self;
    v16 = array;
    [(NPKCompanionAgentConnection *)self paymentPassUniqueIDsSynchronous:1 reply:v15];
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
        *buf = 0;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Warning: Pass types other than PKPassTypePayment are presently unsupported.", buf, 2u);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

void __44__NPKCompanionAgentConnection_passesOfType___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__NPKCompanionAgentConnection_passesOfType___block_invoke_2;
  v4[3] = &unk_2799492C0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 enumerateObjectsUsingBlock:v4];
}

void __44__NPKCompanionAgentConnection_passesOfType___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__NPKCompanionAgentConnection_passesOfType___block_invoke_3;
  v4[3] = &unk_279949AE0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 paymentPassWithUniqueID:a2 synchronous:1 reply:v4];
}

uint64_t __44__NPKCompanionAgentConnection_passesOfType___block_invoke_3(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

- (void)passesOfCardType:(int64_t)type completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      selfCopy = self;
      v14 = 2080;
      v15 = "[NPKCompanionAgentConnection passesOfCardType:completion:]";
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): %s", &v12, 0x16u);
    }
  }

  if (completionCopy)
  {
    v10 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:0];
    [v10 passesOfCardType:type withCompletion:completionCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)identityPassesOfTypes:(id)types completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  completionCopy = completion;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      selfCopy = self;
      v15 = 2080;
      v16 = "[NPKCompanionAgentConnection identityPassesOfTypes:completion:]";
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionAgentConnection (%@): %s", &v13, 0x16u);
    }
  }

  if (completionCopy)
  {
    v11 = [(NPKCompanionAgentConnection *)self _remoteObjectProxyWithFailureHandler:0];
    [v11 identityPassesOfTypes:typesCopy withCompletion:completionCopy];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NPKCompanionAgentConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end