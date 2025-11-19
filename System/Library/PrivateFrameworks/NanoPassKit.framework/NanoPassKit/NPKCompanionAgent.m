@interface NPKCompanionAgent
- (BOOL)_shouldSyncPassFromCompanionPassLibrary:(id)a3;
- (BOOL)hasAnyWatchPaymentPasses;
- (BOOL)hasCompanionPaymentPassWithUniqueID:(id)a3;
- (BOOL)hasWatchPaymentPassRequiringVerificationWithUniqueID:(id)a3;
- (BOOL)hasWatchPaymentPassWithReaderIdentifier:(id)a3;
- (BOOL)hasWatchPaymentPassWithUniqueID:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CGSize)gizmoScreenSize;
- (NPKCompanionAgent)init;
- (NSSet)companionPaymentPassUniqueIDs;
- (PKPassLibrary)passLibrary;
- (double)gizmoScreenScale;
- (id)companionMaintenanceService:(id)a3 paymentPassForUniqueID:(id)a4;
- (id)companionPaymentPassWithUniqueID:(id)a3;
- (id)libraryHash;
- (id)paymentWebService;
- (id)readerIdentifierForCompanionPaymentPassWithUniqueID:(id)a3;
- (id)remoteDevicesManagerPairedDeviceOSVersion:(id)a3;
- (id)serializedAddPass:(id)a3 withNewLibraryHash:(id)a4 omitHashForChunking:(BOOL)a5 catalog:(id)a6 syncID:(id)a7 resyncID:(id)a8;
- (id)serializedCatalog:(id)a3;
- (id)serializedPass:(id)a3;
- (id)serializedRemovePassWithUniqueID:(id)a3 withNewLibraryHash:(id)a4 omitHashForChunking:(BOOL)a5 catalog:(id)a6 syncID:(id)a7 resyncID:(id)a8;
- (id)serializedUpdatePass:(id)a3 fromPassWithManifestHash:(id)a4 withNewLibraryHash:(id)a5 omitHashForChunking:(BOOL)a6 catalog:(id)a7 syncID:(id)a8 resyncID:(id)a9;
- (id)temporarilyRetainedPassLibrary;
- (unint64_t)companionPassSyncService:(id)a3 settingsForPassWithUniqueID:(id)a4;
- (void)_addPassToDatabaseAndPrepareForTransmissionToGizmo:(id)a3 isUpdate:(BOOL)a4 withCompletion:(id)a5;
- (void)_checkHasCandidateRelevantPassesWithCompletion:(id)a3;
- (void)_createSyncServiceIfNecessary;
- (void)_disconnectAllClients;
- (void)_doFullSyncWithResyncID:(id)a3;
- (void)_doSync;
- (void)_fetchRelevantPassesAndNotifyGizmo;
- (void)_handleActiveDeviceChanged:(id)a3;
- (void)_handleAddAndSendToGizmoForPass:(id)a3 syncID:(id)a4 completion:(id)a5;
- (void)_handleBulletinDistributorWillSendBulletinToGizmoWithSectionID:(id)a3;
- (void)_handleCompanionPassAddedWithID:(id)a3;
- (void)_handleCompanionPassLibraryChanged:(id)a3;
- (void)_handleCompanionPassRemovedWithID:(id)a3;
- (void)_handleCompanionPassUpdatedWithID:(id)a3;
- (void)_handleCompanionPaymentPassDatabaseChanged:(id)a3;
- (void)_handleCompanionPaymentPassDatabaseChangedBroadcastUnconditionally:(BOOL)a3;
- (void)_handleCompanionSyncDatabaseChanged:(id)a3;
- (void)_handleDeviceCapabilitiesDidChange;
- (void)_handleFirstDeviceUnlock;
- (void)_handlePassbookGlobalPreferencesChanged;
- (void)_handlePaymentOptionsDefaultsChanged;
- (void)_handlePotentialMessageServiceEnabledChangeWithPreviousSettings:(unint64_t)a3 newSettings:(unint64_t)a4 uniqueID:(id)a5;
- (void)_handlePotentialTransactionServiceEnabledChangeWithPreviousSettings:(unint64_t)a3 newSettings:(unint64_t)a4 uniqueID:(id)a5;
- (void)_handlePublicWalletPreferencesChanged:(id)a3;
- (void)_handleRelevantPassesDidChange:(id)a3;
- (void)_handleRemovalAndSendToGizmoForPassWithUniqueID:(id)a3 syncID:(id)a4 completion:(id)a5;
- (void)_handleStockholmPreferencesChanged;
- (void)_handleUpdateAndSendToGizmoForPass:(id)a3 syncID:(id)a4 completion:(id)a5;
- (void)_handleWalletPreferencesChanged:(id)a3;
- (void)_initializePairingSpecificStateForDevice:(id)a3;
- (void)_logDebugInformationWithExpectedPairedDeviceID:(id)a3;
- (void)_migrateLoggingDefaults;
- (void)_performAfterFirstDeviceUnlock:(id)a3;
- (void)_performAfterFirstDeviceUnlockAndPairedSyncAllowed:(id)a3;
- (void)_reconcileDatabaseWithCompanionPassLibraryWithAddedPassHandler:(id)a3 updatedPassHandler:(id)a4 removedPassHandler:(id)a5 completion:(id)a6;
- (void)_reconcileDatabaseWithPaymentPassDirectoryWithAddedPassHandler:(id)a3 updatedPassHandler:(id)a4 removedPassHandler:(id)a5 completion:(id)a6;
- (void)_reconcilePassesInDatabasePassingTest:(id)a3 withNewPassUniqueIDs:(id)a4 passAccessor:(id)a5 addedPassHandler:(id)a6 updatedPassHandler:(id)a7 removedPassHandler:(id)a8 completion:(id)a9;
- (void)_registerDarwinNotificationHandler;
- (void)_registerDistributedNotificationHandler;
- (void)_registerForFirstDeviceUnlockNotifications;
- (void)_removeCompanionDatabasePassWithUniqueID:(id)a3 completion:(id)a4;
- (void)_removePassFromDatabaseWithID:(id)a3;
- (void)_removePendingAppleCardNotification;
- (void)_resyncPassUniqueIDUpdates:(id)a3 andRemovals:(id)a4 withResyncID:(id)a5 completion:(id)a6;
- (void)_stopDroppingIDSMessages;
- (void)_tearDownPairingSpecificStateForPairingIdentifier:(id)a3;
- (void)_updateInitializationForActiveDevice;
- (void)dealloc;
- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5;
- (void)didReceiveCheckCompanionPeerPaymentState;
- (void)didReceivePaymentSetupRequestForApplicationName:(id)a3;
- (void)doesWatchSupportPassLikeCompanionPassWithUniqueID:(id)a3 withCompletion:(id)a4;
- (void)encryptedServiceProviderDataForPassWithUniqueIdentifier:(id)a3 completion:(id)a4;
- (void)fetchCatalogIfChanged:(id)a3;
- (void)fetchPendingTransactionForPassWithUniqueID:(id)a3 completion:(id)a4;
- (void)handleGizmoInitiatedAddPassRequest:(id)a3;
- (void)handleGizmoInitiatedDeletePassRequest:(id)a3;
- (void)handleGizmoReceivedNewLibraryHashRequest:(id)a3;
- (void)handleRelevantPassesNeededRequest:(id)a3;
- (void)handleUpdatedSettings:(unint64_t)a3 forPassWithUniqueID:(id)a4;
- (void)lowPowerModeMonitor:(id)a3 didUpdateLowPowerModeEnabled:(BOOL)a4;
- (void)markPendingTransactionAsProcessedForPassWithUniqueID:(id)a3;
- (void)notifySettingsChangedForPassWithUniqueID:(id)a3 previousSettings:(unint64_t)a4 newSettings:(unint64_t)a5;
- (void)passLibrary:(id)a3 requestsAdditionOfPasses:(id)a4 completion:(id)a5;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateBalanceReminder:(id)a4 forBalance:(id)a5;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithBalances:(id)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithCredentials:(id)a4 forPaymentApplicationIdentifier:(id)a5 completion:(id)a6;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithTransitAppletState:(id)a4;
- (void)paymentSetupFeaturesForConfiguration:(id)a3 completion:(id)a4;
- (void)postAddReminderNotificationForPassWithUniqueID:(id)a3;
- (void)postVerifyReminderNotificationForPassWithUniqueID:(id)a3;
- (void)remoteDevicesManager:(id)a3 provisionedCredentialCountsForType:(unint64_t)a4 completion:(id)a5;
- (void)remoteDevicesManager:(id)a3 remoteBiometricAuthenticationStatusForCredentialType:(unint64_t)a4 completion:(id)a5;
- (void)removeReminderNotificationForPassWithUniqueID:(id)a3;
- (void)resyncNeededRequest:(id)a3;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)serviceProviderDataForPassWithUniqueIdentifier:(id)a3 completion:(id)a4;
- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4;
- (void)syncCoordinatorDidChangeSyncRestriction:(id)a3;
- (void)transactionSourceIdentifier:(id)a3 didReceiveTransaction:(id)a4;
- (void)transactionSourceIdentifier:(id)a3 didRemoveTransactionWithIdentifier:(id)a4;
@end

@implementation NPKCompanionAgent

- (void)_fetchRelevantPassesAndNotifyGizmo
{
  if ([(NPKCompanionAgent *)self hasCandidateRelevantPasses])
  {
    v3 = [(NPKCompanionAgent *)self lastRelevantPassRequestDate];

    if (v3)
    {
      v4 = [(NPKCompanionAgent *)self lastRelevantPassInfoSendDate];
      v5 = v4;
      if (v4)
      {
        [v4 timeIntervalSinceNow];
        v7 = fabs(v6) > NPKMaximumRelevancyResultsAge;
      }

      else
      {
        v7 = 1;
      }

      v8 = [(NPKCompanionAgent *)self lastRelevantPassRequestDate];
      [v8 timeIntervalSinceNow];
      v10 = fabs(v9);

      if (v10 < 10.0 || !v7)
      {
        v23 = pk_Relevance_log();
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

        if (v24)
        {
          v25 = pk_Relevance_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            v30 = v10;
            v31 = 1024;
            v32 = v7;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Notice: Not requesting fetch of relevant passes; requested %.2f seconds ago, lastRelevantPassRequestDate:%d", buf, 0x12u);
          }
        }

        goto LABEL_16;
      }
    }

    if ((NPKIsPairedDeviceStandalone() & 1) == 0)
    {
      v11 = objc_alloc_init(NPKProtoRelevantPassesPendingRequest);
      v12 = [IDSProtobuf alloc];
      v13 = [v11 data];
      v14 = [v12 initWithProtobufData:v13 type:2 isResponse:0];

      v15 = [(NPKCompanionAgent *)self relevancyService];
      v26 = v14;
      v27[0] = IDSSendMessageOptionTimeoutKey;
      v27[1] = IDSSendMessageOptionForceLocalDeliveryKey;
      v28[0] = &off_100073F18;
      v28[1] = &__kCFBooleanTrue;
      v27[2] = IDSSendMessageOptionBypassDuetKey;
      v27[3] = IDSSendMessageOptionNonWakingKey;
      v28[2] = &__kCFBooleanTrue;
      v28[3] = &__kCFBooleanTrue;
      v27[4] = IDSSendMessageOptionQueueOneIdentifierKey;
      v28[4] = @"relevancyPendingQueueOne";
      v16 = v14;
      v17 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:5];
      v18 = NPKProtoSendWithOptions();
    }

    v19 = pk_Relevance_log();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      v21 = pk_Relevance_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Notice: Telling PKPassLibrary to do low-power update of relevant passes", buf, 2u);
      }
    }

    v22 = [(NPKCompanionAgent *)self temporarilyRetainedPassLibrary];
    [v22 recomputeRelevantPassesWithSearchMode:0];

    [(NPKCompanionAgent *)self setGizmoWaitingForRelevantPasses:1];
    v5 = +[NSDate date];
    [(NPKCompanionAgent *)self setLastRelevantPassRequestDate:v5];
LABEL_16:
  }
}

- (NPKCompanionAgent)init
{
  v44.receiver = self;
  v44.super_class = NPKCompanionAgent;
  v2 = [(NPKCompanionAgent *)&v44 init];
  if (v2)
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notice: Initializing NPKCompanionAgent", buf, 2u);
      }
    }

    NPKInitializeActiveDeviceChangedNotifications();
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"_handleActiveDeviceChanged:" name:NPKActiveDeviceChangedNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    v8 = PKWalletPreferencesChangedNotification;
    [v7 addObserver:v2 selector:"_handleWalletPreferencesChanged:" name:PKWalletPreferencesChangedNotification object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    v10 = PKPublicWalletPreferencesChangedNotification;
    [v9 addObserver:v2 selector:"_handlePublicWalletPreferencesChanged:" name:PKPublicWalletPreferencesChangedNotification object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_10000B1E0, v8, 0, 0);
    v12 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v12, v2, sub_10000B238, v10, 0, 0);
    objc_initWeak(buf, v2);
    v2->_capabilityUpdateNotificationToken = -1;
    v13 = [NRPairedDeviceRegistryPairedDeviceDidChangeCapabilitiesDarwinNotification UTF8String];
    v14 = &_dispatch_main_q;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000B290;
    handler[3] = &unk_100071248;
    objc_copyWeak(&v42, buf);
    notify_register_dispatch(v13, &v2->_capabilityUpdateNotificationToken, &_dispatch_main_q, handler);

    [(NPKCompanionAgent *)v2 _registerDistributedNotificationHandler];
    [(NPKCompanionAgent *)v2 _registerDarwinNotificationHandler];
    [(NPKCompanionAgent *)v2 _migrateLoggingDefaults];
    v15 = [[NPKWorkQueue alloc] initWithQueue:0 takeOutTransactions:1];
    [(NPKCompanionAgent *)v2 setWorkQueue:v15];

    v16 = [(NPKCompanionAgent *)v2 workQueue];
    [v16 setWorkQueueName:@"NPKCompanionAgent-main"];

    v17 = +[NSHashTable pk_weakObjectsHashTableUsingPointerPersonality];
    [(NPKCompanionAgent *)v2 setActiveCompanionAgentClientsHashTable:v17];

    v18 = +[NSHashTable pk_weakObjectsHashTableUsingPointerPersonality];
    [(NPKCompanionAgent *)v2 setActivePassLibraryClientsHashTable:v18];

    v19 = dispatch_queue_create("com.apple.NPKCompanionAgent.activeClients", 0);
    [(NPKCompanionAgent *)v2 setActiveClientsQueue:v19];

    v20 = [PSYSyncCoordinator syncCoordinatorWithServiceName:@"com.apple.pairedsync.passbook"];
    [v20 setDelegate:v2];
    [(NPKCompanionAgent *)v2 setPairedSyncCoordinator:v20];
    -[NPKCompanionAgent setWasLimitPush:](v2, "setWasLimitPush:", [v20 syncRestriction] == 1);
    v21 = [[NPKIDVRemoteDevicesManager alloc] initWithDataSource:v2];
    remoteDeviceManager = v2->_remoteDeviceManager;
    v2->_remoteDeviceManager = v21;

    v23 = objc_alloc_init(NPKCompanionViewServiceConnectionManager);
    viewServiceConnectionManager = v2->_viewServiceConnectionManager;
    v2->_viewServiceConnectionManager = v23;

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10000B338;
    v39[3] = &unk_100071000;
    v25 = v2;
    v40 = v25;
    [v25 _performAfterFirstDeviceUnlock:v39];
    v26 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    [v25 setStopDroppingIDSMessagesTimer:v26];

    v27 = [v25 stopDroppingIDSMessagesTimer];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10000B340;
    v37[3] = &unk_100071270;
    objc_copyWeak(&v38, buf);
    dispatch_source_set_event_handler(v27, v37);

    v28 = [v25 stopDroppingIDSMessagesTimer];
    dispatch_source_set_timer(v28, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);

    v29 = [v25 stopDroppingIDSMessagesTimer];
    dispatch_resume(v29);

    v30 = [NSXPCListener alloc];
    v31 = [v30 initWithMachServiceName:_NPKCompanionServerMachServiceName];
    [v31 setDelegate:v25];
    [v25 setXpcListener:v31];
    [v31 resume];
    v32 = [NSXPCListener alloc];
    v33 = [v32 initWithMachServiceName:PKCompanionWatchPassLibraryMachServiceName];
    [v33 setDelegate:v25];
    [v25 setLibraryListener:v33];
    [v33 resume];
    v34 = objc_alloc_init(NPKLowPowerModeRemoteDeviceMonitor);
    v35 = v25[37];
    v25[37] = v34;

    [v25[37] registerObserver:v25];
    objc_destroyWeak(&v38);

    objc_destroyWeak(&v42);
    objc_destroyWeak(buf);
  }

  return v2;
}

- (void)dealloc
{
  if (notify_is_valid_token(self->_capabilityUpdateNotificationToken))
  {
    notify_cancel(self->_capabilityUpdateNotificationToken);
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = [(NPKCompanionAgent *)self stopDroppingIDSMessagesTimer];
  dispatch_source_cancel(v4);

  [(NPKCompanionAgent *)self setStopDroppingIDSMessagesTimer:0];
  v5.receiver = self;
  v5.super_class = NPKCompanionAgent;
  [(NPKCompanionAgent *)&v5 dealloc];
}

- (void)_updateInitializationForActiveDevice
{
  v3 = [(NPKCompanionAgent *)self initializedPairingIdentifier];
  v4 = NPKPairedOrPairingDevice();
  v5 = [v4 valueForProperty:NRDevicePropertyPairingID];
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notice: Updating initialization for active device\n\tInitialized pairing identifier: %@\n\tCurrent pairing identifier: %@", &v10, 0x16u);
    }
  }

  if ((PKEqualObjects() & 1) == 0)
  {
    if (v3)
    {
      [(NPKCompanionAgent *)self _tearDownPairingSpecificStateForPairingIdentifier:v3];
    }

    if (v5)
    {
      [(NPKCompanionAgent *)self _initializePairingSpecificStateForDevice:v4];
    }

    else
    {
      v9 = [(NPKCompanionAgent *)self remoteDeviceManager];
      [v9 noDeviceDidBecomeActive];
    }

    [(NPKCompanionAgent *)self _disconnectAllClients];
  }
}

- (void)_initializePairingSpecificStateForDevice:(id)a3
{
  v4 = a3;
  v57 = [v4 valueForProperty:NRDevicePropertyPairingID];
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v71 = v57;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Initializing pairing-specific state for pairing identifier %@", buf, 0xCu);
    }
  }

  [(NPKCompanionAgent *)self _logDebugInformationWithExpectedPairedDeviceID:v57];
  v8 = objc_alloc_init(NPDBulletinManager);
  [(NPKCompanionAgent *)self setBulletinManager:v8];

  v9 = objc_alloc_init(NPSManager);
  [(NPKCompanionAgent *)self setNpsManager:v9];

  v10 = [NPSDomainAccessor alloc];
  v11 = [v10 initWithDomain:NPKDefaultsDomain];
  [(NPKCompanionAgent *)self setNpsDomainAccessor:v11];

  v12 = [NPDOutstandingPassDeletionStore alloc];
  v13 = [(NPKCompanionAgent *)self npsDomainAccessor];
  v14 = [(NPDOutstandingPassDeletionStore *)v12 initWithDomainAccessor:v13];
  [(NPKCompanionAgent *)self setOutstandingDeletionStore:v14];

  v15 = +[NSMutableSet set];
  [(NPKCompanionAgent *)self setReconcileWorkQueues:v15];

  v16 = +[NSMutableArray array];
  [(NPKCompanionAgent *)self setWatchOfferProvisioningCompletionHandlers:v16];

  v17 = [NPDCompanionPaymentPassDatabase alloc];
  v18 = [(NPKCompanionAgent *)self outstandingDeletionStore];
  v19 = [(NPDCompanionPaymentPassDatabase *)v17 initWithDevice:v4 outstandingDeletionStore:v18];

  [(NPKCompanionAgent *)self setCompanionPaymentPassDatabase:v19];
  v20 = pk_General_log();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

  if (v21)
  {
    v22 = pk_General_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Notice: Companion payment pass database initialized", buf, 2u);
    }
  }

  v23 = +[NSNotificationCenter defaultCenter];
  [v23 addObserver:self selector:"_handleCompanionPaymentPassDatabaseChanged:" name:@"com.apple.NanoPassKit.NPDCompanionPaymentPassDatabase.Changed" object:v19];

  v24 = +[NSNotificationCenter defaultCenter];
  [v24 addObserver:self selector:"_handleCompanionSyncDatabaseChanged:" name:NPKGizmoDatabaseChangedNotificationName object:0];

  v56 = [[NPDDemoModePassCopier alloc] initWithCompanionPaymentPassDatabase:v19];
  [(NPKCompanionAgent *)self setDemoModePassCopier:v56];
  v25 = +[NSFileManager defaultManager];
  v26 = NPKHomeDirectoryPath();
  [v25 createDirectoryAtPath:v26 withIntermediateDirectories:1 attributes:0 error:0];

  objc_initWeak(&location, self);
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_10000BEFC;
  v65[3] = &unk_100071298;
  objc_copyWeak(&v68, &location);
  v27 = v4;
  v66 = v27;
  v67 = self;
  [(NPKCompanionAgent *)self _performAfterFirstDeviceUnlockAndPairedSyncAllowed:v65];
  v28 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.passbook.relevancy"];
  [v28 setProtobufAction:"handleRelevantPassesNeededRequest:" forIncomingRequestsOfType:3];
  v29 = &_dispatch_main_q;
  [v28 addDelegate:self queue:&_dispatch_main_q];

  [(NPKCompanionAgent *)self setRelevancyService:v28];
  v30 = [NPKRemoteAdminConnectionServiceAgent alloc];
  v31 = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
  v32 = [(NPKRemoteAdminConnectionServiceAgent *)v30 initWithCompanionPaymentPassDatabase:v31];

  [(NPKRemoteAdminConnectionServiceAgent *)v32 setDelegate:self];
  [(NPKCompanionAgent *)self setRemoteAdminConnectionServiceAgent:v32];
  v33 = objc_alloc_init(NPDCompanionMaintenanceService);
  v34 = [(NPKCompanionAgent *)self bulletinManager];
  [(NPDCompanionMaintenanceService *)v33 setBulletinManager:v34];

  [(NPDCompanionMaintenanceService *)v33 setDelegate:self];
  [(NPKCompanionAgent *)self setMaintenanceService:v33];
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_10000C0FC;
  v63[3] = &unk_100071000;
  v35 = v32;
  v64 = v35;
  [(NPKCompanionAgent *)self _performAfterFirstDeviceUnlockAndPairedSyncAllowed:v63];
  v36 = [[NPDCompanionPeerPaymentStatusObserver alloc] initWithRemoteAdminConnectionServiceAgent:v35];
  [(NPKCompanionAgent *)self setCompanionPeerPaymentStatusObserver:v36];

  v37 = +[NPKGizmoDatabase sharedDatabase];
  [(NPKCompanionAgent *)self setGizmoDatabase:v37];

  [NPKGizmoDatabase setMigrationDataSource:self];
  v38 = objc_alloc_init(NPKCompanionCatalogManager);
  [(NPKCompanionAgent *)self setCompanionCatalogManager:v38];

  v39 = [(NPKCompanionAgent *)self gizmoDatabase];
  v40 = [v39 libraryHashForWatchOSMajorVersion:{-[NPKCompanionAgent versionForCompleteHash](self, "versionForCompleteHash")}];
  v41 = v40 == 0;

  if (v41)
  {
    v42 = pk_General_log();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);

    if (v43)
    {
      v44 = pk_General_log();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Notice: No passes in library; doing full sync", buf, 2u);
      }
    }

    [(NPKCompanionAgent *)self _doFullSyncWithResyncID:0];
  }

  else
  {
    [(NPKCompanionAgent *)self _doSync];
  }

  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_10000C18C;
  v61[3] = &unk_1000712C0;
  objc_copyWeak(&v62, &location);
  v61[4] = self;
  out_token = 0;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000C250;
  handler[3] = &unk_1000712E8;
  v45 = objc_retainBlock(v61);
  v59 = v45;
  v46 = notify_register_dispatch("com.apple.nanopassbook.setupcomplete", &out_token, &_dispatch_main_q, handler);

  if (v46)
  {
    v47 = pk_General_log();
    v48 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);

    if (v48)
    {
      v49 = pk_General_log();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Error: Could not register for setup complete notification!", buf, 2u);
      }
    }
  }

  [(NPKCompanionAgent *)self _handleCompanionPaymentPassDatabaseChangedBroadcastUnconditionally:0];
  [(NPKCompanionAgent *)self _doSync];
  v50 = objc_alloc_init(NPDCardSetupReminderNotificationScheduler);
  [(NPDCardSetupReminderNotificationScheduler *)v50 setDelegate:self];
  [(NPKCompanionAgent *)self setBulletinScheduler:v50];
  [(NPKCompanionAgent *)self setInitializedPairingIdentifier:v57];
  v51 = [(NPKCompanionAgent *)self remoteDeviceManager];
  [v51 deviceDidBecomeActive:v27];

  v52 = pk_General_log();
  v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);

  if (v53)
  {
    v54 = pk_General_log();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v71 = v57;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Notice: Initialization for pairing identifier %@ complete", buf, 0xCu);
    }
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, PKCompanionAgentServiceListenerResumedNotification, 0, 0, 1u);
  notify_post([NPDCompanionAgentStartedDarwinNotificationName UTF8String]);

  objc_destroyWeak(&v62);
  objc_destroyWeak(&v68);
  objc_destroyWeak(&location);
}

- (void)_tearDownPairingSpecificStateForPairingIdentifier:(id)a3
{
  v4 = a3;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Tearing down pairing-specific state for previous pairing identifier %@", &v17, 0xCu);
    }
  }

  v8 = [(NPKCompanionAgent *)self remoteAdminConnectionServiceAgent];
  [v8 setDelegate:0];
  [(NPKCompanionAgent *)self setRemoteAdminConnectionServiceAgent:0];
  [(NPKCompanionAgent *)self setLastSeenRelevantPassInfo:0];
  [(NPKCompanionAgent *)self setLastRelevantPassInfoSendDate:0];
  [(NPKCompanionAgent *)self setLastRelevantPassRequestDate:0];
  [(NPKCompanionAgent *)self setGizmoWaitingForRelevantPasses:0];
  [(NPKCompanionAgent *)self setHasCandidateRelevantPasses:0];
  [(NPKCompanionAgent *)self setGizmoDatabase:0];
  [(NPKCompanionAgent *)self setCompanionPaymentPassDatabase:0];
  [(NPKCompanionAgent *)self setCompanionCatalogManager:0];
  [(NPKCompanionAgent *)self setBulletinManager:0];
  [(NPKCompanionAgent *)self setBulletinScheduler:0];
  [(NPKCompanionAgent *)self setCompanionPeerPaymentStatusObserver:0];
  [(NPKCompanionAgent *)self setNpsManager:0];
  [(NPKCompanionAgent *)self setNpsDomainAccessor:0];
  [(NPKCompanionAgent *)self setOutstandingDeletionStore:0];
  [(NPKCompanionAgent *)self setReconcileWorkQueues:0];
  [(NPKCompanionAgent *)self setWatchOfferProvisioningCompletionHandlers:0];
  v9 = [(NPKCompanionAgent *)self generalService];
  [v9 removeDelegate:self];
  [(NPKCompanionAgent *)self setGeneralService:0];
  v10 = [(NPKCompanionAgent *)self relevancyService];
  [v10 removeDelegate:self];
  [(NPKCompanionAgent *)self setRelevancyService:0];
  v11 = [(NPKCompanionAgent *)self passSyncService];
  [v11 teardownSync];
  [(NPKCompanionAgent *)self setPassSyncService:0];
  [(NPKCompanionAgent *)self setMaintenanceService:0];
  [(NPKCompanionAgent *)self setDemoModePassCopier:0];
  [(NPKCompanionAgent *)self setInitializedPairingIdentifier:0];
  v12 = [(NPKCompanionAgent *)self remoteDeviceManager];
  [v12 deviceDidBecomeInactive];

  v13 = +[NPKGizmoDatabase sharedDatabase];
  [v13 teardownDB];

  v14 = pk_General_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = pk_General_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Notice: Teardown for previous pairing identifier %@ complete", &v17, 0xCu);
    }
  }
}

- (void)_disconnectAllClients
{
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notice: Disconnecting all daemon clients", buf, 2u);
    }
  }

  *buf = 0;
  v46 = buf;
  v47 = 0x3032000000;
  v48 = sub_10000CABC;
  v49 = sub_10000CACC;
  v50 = 0;
  v6 = [(NPKCompanionAgent *)self activeClientsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000CAD4;
  block[3] = &unk_100070DB8;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(v6, block);

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = *(v46 + 5);
  v8 = [v7 countByEnumeratingWithState:&v40 objects:v60 count:16];
  if (v8)
  {
    v10 = *v41;
    *&v9 = 67109634;
    v33 = v9;
    do
    {
      v11 = 0;
      do
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v40 + 1) + 8 * v11);
        v13 = pk_General_log();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

        if (v14)
        {
          v15 = pk_General_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [v12 remoteProcessIdentifier];
            v17 = [v12 remoteProcessApplicationIdentifier];
            v18 = [v12 remoteProcessBundleIdentifier];
            *v56 = v33;
            *&v56[4] = v16;
            *v57 = 2112;
            *&v57[2] = v17;
            *&v57[10] = 2112;
            *&v57[12] = v18;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Notice: Tearing down client connection to PID %d (%@ %@)", v56, 0x1Cu);
          }
        }

        v19 = [v12 connection];
        [v19 invalidate];

        v11 = v11 + 1;
      }

      while (v8 != v11);
      v8 = [v7 countByEnumeratingWithState:&v40 objects:v60 count:16];
    }

    while (v8);
  }

  *v56 = 0;
  *v57 = v56;
  *&v57[8] = 0x3032000000;
  *&v57[16] = sub_10000CABC;
  v58 = sub_10000CACC;
  v59 = 0;
  v20 = [(NPKCompanionAgent *)self activeClientsQueue];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10000CB3C;
  v39[3] = &unk_100070DB8;
  v39[4] = self;
  v39[5] = v56;
  dispatch_sync(v20, v39);

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v21 = *(*v57 + 40);
  v22 = [v21 countByEnumeratingWithState:&v35 objects:v55 count:16];
  if (v22)
  {
    v24 = *v36;
    *&v23 = 67109378;
    v34 = v23;
    do
    {
      v25 = 0;
      do
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v35 + 1) + 8 * v25);
        v27 = pk_General_log();
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

        if (v28)
        {
          v29 = pk_General_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = [v26 remoteProcessIdentifier];
            v31 = [v26 remoteProcessApplicationIdentifier];
            *v51 = v34;
            v52 = v30;
            v53 = 2112;
            v54 = v31;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Notice: Tearing down pass library connection to PID %d (%@)", v51, 0x12u);
          }
        }

        v32 = [v26 connection];
        [v32 invalidate];

        v25 = v25 + 1;
      }

      while (v22 != v25);
      v22 = [v21 countByEnumeratingWithState:&v35 objects:v55 count:16];
    }

    while (v22);
  }

  _Block_object_dispose(v56, 8);
  _Block_object_dispose(buf, 8);
}

- (void)_createSyncServiceIfNecessary
{
  v3 = NPKIsPairedDeviceStandalone();
  v4 = [(NPKCompanionAgent *)self generalService];
  v5 = v4;
  if (v3)
  {
    v6 = [(NPKCompanionAgent *)self passSyncService];

    if (!v6)
    {
      v7 = NPKPairedOrPairingDevice();
      sub_100008840();

      v8 = [NPDCompanionPassSyncService alloc];
      v9 = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
      v10 = [(NPDCompanionPassSyncService *)v8 initWithCompanionPaymentPassDatabase:v9];

      [(NPDCompanionPassSyncService *)v10 setDelegate:self];
      [(NPDCompanionPassSyncService *)v10 setDataSource:self];
      [(NPKCompanionAgent *)self setPassSyncService:v10];
      [(NPDCompanionPassSyncService *)v10 start];
      if (v5)
      {
        [(NPDCompanionPassSyncService *)v10 handlePassLibraryChanged];
      }

      else
      {
        [(NPDCompanionPassSyncService *)v10 initiateSync];
      }
    }

    if (v5)
    {
      v18 = pk_Payment_log();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

      if (v19)
      {
        v20 = pk_Payment_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Notice: Tearing down general service now that paired device is standalone", v23, 2u);
        }
      }

      [v5 removeDelegate:self];
      [(NPKCompanionAgent *)self setGeneralService:0];
    }
  }

  else
  {

    if (!v5)
    {
      v11 = pk_Payment_log();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

      if (v12)
      {
        v13 = pk_Payment_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: Creating general service for non-standalone device", buf, 2u);
        }
      }

      v14 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.passbook.general"];
      [v14 setProtobufAction:"resyncNeededRequest:" forIncomingRequestsOfType:4];
      [v14 setProtobufAction:"handleGizmoInitiatedAddPassRequest:" forIncomingRequestsOfType:10];
      [v14 setProtobufAction:"handleGizmoInitiatedDeletePassRequest:" forIncomingRequestsOfType:6];
      [v14 setProtobufAction:"handleGizmoReceivedNewLibraryHashRequest:" forIncomingRequestsOfType:9];
      [v14 addDelegate:self queue:&_dispatch_main_q];
      [(NPKCompanionAgent *)self setGeneralService:v14];
    }

    v5 = [(NPKCompanionAgent *)self passSyncService];
    if (v5)
    {
      v15 = pk_Payment_log();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

      if (v16)
      {
        v17 = pk_Payment_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Error: Paired device downgraded to non-standalone. This is not a supported configuration!", v21, 2u);
        }
      }

      [v5 teardownSync];
      [(NPKCompanionAgent *)self setPassSyncService:0];
    }
  }
}

- (void)_registerDistributedNotificationHandler
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notice: Registering for distributed notifications", buf, 2u);
    }
  }

  objc_initWeak(buf, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100001AD8;
  v6[3] = &unk_100071338;
  v6[4] = self;
  objc_copyWeak(&v7, buf);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", &_dispatch_main_q, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)_registerDarwinNotificationHandler
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notice: Registering for Darwin notifications", buf, 2u);
    }
  }

  objc_initWeak(buf, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000D140;
  v6[3] = &unk_100071338;
  v6[4] = self;
  objc_copyWeak(&v7, buf);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)_logDebugInformationWithExpectedPairedDeviceID:(id)a3
{
  v3 = a3;
  v4 = +[NRPairedDeviceRegistry sharedInstance];
  v5 = [v4 getActivePairedDevice];
  v6 = [v5 valueForProperty:NRDevicePropertyPairingID];
  v7 = [v6 UUIDString];

  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Current pairing ID: %@", buf, 0xCu);
    }
  }

  if (([v7 isEqualToString:v3] & 1) == 0)
  {
    v11 = pk_General_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = pk_General_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v40 = v3;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: Current pairing ID doesn't match expected ID:%@", buf, 0xCu);
      }
    }
  }

  if (PKIsInternalInstall())
  {
    v14 = +[NSMutableDictionary dictionary];
    v15 = +[NRPairedDeviceRegistry pairedDevicesSelectorBlock];
    v16 = [v4 getAllDevicesWithArchivedAltAccountDevicesMatching:v15];

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10000D84C;
    v37[3] = &unk_100071360;
    v17 = v14;
    v38 = v17;
    [v16 enumerateObjectsUsingBlock:v37];
    if (!v7)
    {
LABEL_22:
      if ([v17 count])
      {
        v25 = pk_General_log();
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

        if (v26)
        {
          v27 = pk_General_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v40 = v17;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Notice: Other pairing IDs and SEIDs: %@", buf, 0xCu);
          }
        }
      }

      v28 = +[PKSecureElement secureElementIdentifiers];
      if ([v28 count] < 2)
      {
        v34 = [v28 count];
        v35 = pk_General_log();
        v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);

        if (!v34)
        {
          if (!v36)
          {
            goto LABEL_37;
          }

          v31 = pk_General_log();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Notice: No companion SEIDs", buf, 2u);
          }

          goto LABEL_36;
        }

        if (v36)
        {
          v31 = pk_General_log();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [v28 firstObject];
            *buf = 138412290;
            v40 = v32;
            v33 = "Notice: Companion SEID: %@";
            goto LABEL_35;
          }

LABEL_36:
        }
      }

      else
      {
        v29 = pk_General_log();
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

        if (v30)
        {
          v31 = pk_General_log();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [v28 componentsJoinedByString:{@", "}];
            *buf = 138412290;
            v40 = v32;
            v33 = "Notice: Companion SEIDs: %@";
LABEL_35:
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v33, buf, 0xCu);

            goto LABEL_36;
          }

          goto LABEL_36;
        }
      }

LABEL_37:

      goto LABEL_38;
    }

    v18 = [v17 objectForKey:v7];
    v19 = [v18 count];
    v20 = pk_General_log();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

    if (v19 < 2)
    {
      if (v21)
      {
        v22 = pk_General_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v18 firstObject];
          *buf = 138412290;
          v40 = v23;
          v24 = "Notice: Current SEID: %@";
          goto LABEL_19;
        }

LABEL_20:
      }
    }

    else if (v21)
    {
      v22 = pk_General_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v18 componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v40 = v23;
        v24 = "Notice: Current SEIDs: %@";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v24, buf, 0xCu);

        goto LABEL_20;
      }

      goto LABEL_20;
    }

    [v17 removeObjectForKey:v7];

    goto LABEL_22;
  }

LABEL_38:
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  v4 = a4;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: IDS service accounts changed: %@", &v8, 0xCu);
    }
  }
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v4 = a4;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: IDS service devices changed: %@", &v8, 0xCu);
    }
  }
}

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = pk_General_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

  if (v17)
  {
    v18 = pk_General_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 138413314;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error: IDS service incoming unhandled protobuf: %@ %@ %@ %@ %@", &v19, 0x34u);
    }
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = pk_General_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    v18 = pk_General_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138413314;
      v25 = v12;
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = v14;
      v30 = 1024;
      v31 = v8;
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Notice: IDS service did send with success: %@ %@ %@ %d %@", &v24, 0x30u);
    }
  }

  v19 = [(NPKCompanionAgent *)self outstandingDeletionStore];
  [v19 noteDeliveryForMessageID:v14];

  if (!v8)
  {
    v20 = [(NPKCompanionAgent *)self generalService];
    if (v20 != v12)
    {
LABEL_9:

      goto LABEL_10;
    }

    v21 = [v15 code];

    if (v21 == 32)
    {
      [(NPKCompanionAgent *)self setShouldDropIDSMessages:1];
      v22 = [(NPKCompanionAgent *)self passSyncService];
      [v22 setDropAllMessages:1];

      v20 = [(NPKCompanionAgent *)self stopDroppingIDSMessagesTimer];
      v23 = dispatch_walltime(0, 300000000000);
      dispatch_source_set_timer(v20, v23, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      goto LABEL_9;
    }
  }

LABEL_10:
}

- (void)_stopDroppingIDSMessages
{
  [(NPKCompanionAgent *)self setShouldDropIDSMessages:0];
  v3 = [(NPKCompanionAgent *)self passSyncService];
  [v3 setDropAllMessages:0];

  [(NPKCompanionAgent *)self _doFullSyncWithResyncID:0];
}

- (id)companionMaintenanceService:(id)a3 paymentPassForUniqueID:(id)a4
{
  v5 = a4;
  v6 = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
  v7 = [v6 paymentPassWithUniqueID:v5];

  return v7;
}

- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4
{
  v5 = a4;
  v6 = [v5 pairedDevice];
  v7 = [v6 valueForProperty:NRDevicePropertyName];
  v8 = [v6 valueForProperty:NRDevicePropertyPairingID];
  v9 = [v5 syncSessionType];
  v10 = pk_General_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_General_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v8 UUIDString];
      v14 = NSStringfromPSYSyncSessionType();
      v19 = 138413058;
      v20 = v13;
      v21 = 2112;
      v22 = v7;
      v23 = 1024;
      v24 = v9;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Notice: Received start sync command from paired sync:\n\tUUID: %@\n\tDevice name: %@\n\tSync type: %d (%@)", &v19, 0x26u);
    }
  }

  v15 = [(NPKCompanionAgent *)self remoteAdminConnectionServiceAgent];
  [v15 updateRegionSupportIfNecessary];

  [(NPKCompanionAgent *)self _doPostUnlockPairedSyncAllowedWork];
  v16 = [(NPKCompanionAgent *)self demoModePassCopier];
  v17 = [(NPKCompanionAgent *)self passLibrary];
  [v16 performFullSyncWithPassLibrary:v17];

  if ([v5 syncSessionType])
  {
    if ([v5 syncSessionType] == 2)
    {
      v18 = [(NPKCompanionAgent *)self remoteAdminConnectionServiceAgent];
      [v18 handleCompanionMigration];
    }

    [(NPKCompanionAgent *)self _doSync];
  }

  else
  {
    [(NPKCompanionAgent *)self _doFullSyncWithResyncID:0];
  }
}

- (void)syncCoordinatorDidChangeSyncRestriction:(id)a3
{
  v4 = [a3 syncRestriction];
  if (v4)
  {
    if (v4 == 1)
    {

      [(NPKCompanionAgent *)self setWasLimitPush:1];
    }
  }

  else
  {
    [(NPKCompanionAgent *)self _doPostUnlockPairedSyncAllowedWork];
    if ([(NPKCompanionAgent *)self wasLimitPush])
    {
      [(NPKCompanionAgent *)self setWasLimitPush:0];

      [(NPKCompanionAgent *)self _doSync];
    }
  }
}

- (BOOL)hasWatchPaymentPassWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
  v6 = [v5 paymentPassWithUniqueID:v4];

  return v6 != 0;
}

- (BOOL)hasWatchPaymentPassRequiringVerificationWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
  v6 = [v5 paymentPassWithUniqueID:v4];

  v7 = NPKPairedDeviceSecureElementIdentifiers();
  if (v7)
  {
    [v6 updateDevicePaymentApplicationsWithSecureElementIdentifiers:v7];
  }

  v8 = [v6 activationState] == 1;

  return v8;
}

- (BOOL)hasCompanionPaymentPassWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = [(NPKCompanionAgent *)self passLibrary];
  v6 = [v5 passWithUniqueID:v4];

  return v6 != 0;
}

- (BOOL)hasWatchPaymentPassWithReaderIdentifier:(id)a3
{
  v4 = a3;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v70 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Checking whether watch has payment pass with reader identifier %@", buf, 0xCu);
    }
  }

  if (v4)
  {
    v8 = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
    v9 = [v8 uniqueIDs];

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v10 = v9;
    v52 = [v10 countByEnumeratingWithState:&v63 objects:v75 count:16];
    if (v52)
    {
      v49 = *v64;
      while (2)
      {
        v11 = 0;
        v12 = v49;
        v13 = &MKBGetDeviceLockState_ptr;
        do
        {
          if (*v64 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v63 + 1) + 8 * v11);
          v15 = [v13[361] sharedDatabase];
          v16 = [v15 passForUniqueID:v14];

          v54 = v16;
          v17 = [v16 secureElementPass];
          if (v17)
          {
            v18 = pk_General_log();
            v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

            if (v19)
            {
              v20 = pk_General_log();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                v21 = [v17 devicePrimaryPaymentApplication];
                *buf = 138412802;
                v70 = v21;
                v71 = 2112;
                v72 = v14;
                v73 = 2112;
                v74 = v4;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Notice: Evaluating whether the device primary payment application (%@) on pass %@ contains reader identifier matching %@.", buf, 0x20u);
              }
            }

            v22 = [v17 pairedTerminalIdentifier];
            v23 = [(__CFString *)v4 caseInsensitiveCompare:v22];

            if (!v23)
            {
LABEL_46:

              v40 = 1;
              goto LABEL_48;
            }

            v53 = v17;
            v24 = [v17 paymentApplications];
            v25 = pk_General_log();
            v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

            if (v26)
            {
              v27 = pk_General_log();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v70 = v24;
                v71 = 2112;
                v72 = v14;
                v73 = 2112;
                v74 = v4;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Notice: Evaluating whether any payment applications (%@) on pass %@ contain a reader identifier matching %@.", buf, 0x20u);
              }
            }

            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v28 = v24;
            v17 = v53;
            v50 = [(__CFString *)v28 countByEnumeratingWithState:&v59 objects:v68 count:16];
            if (v50)
            {
              v29 = *v60;
              v51 = v10;
              v48 = *v60;
              do
              {
                v30 = 0;
                do
                {
                  if (*v60 != v29)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v31 = *(*(&v59 + 1) + 8 * v30);
                  v55 = 0u;
                  v56 = 0u;
                  v57 = 0u;
                  v58 = 0u;
                  v32 = [v31 subcredentials];
                  v33 = [v32 countByEnumeratingWithState:&v55 objects:v67 count:16];
                  if (v33)
                  {
                    v34 = v33;
                    v35 = *v56;
                    while (2)
                    {
                      for (i = 0; i != v34; i = i + 1)
                      {
                        if (*v56 != v35)
                        {
                          objc_enumerationMutation(v32);
                        }

                        v37 = *(*(&v55 + 1) + 8 * i);
                        if (v37)
                        {
                          v38 = [v37 pairedReaderIdentifier];
                          v39 = [(__CFString *)v4 caseInsensitiveCompare:v38];

                          if (!v39)
                          {

                            v10 = v51;
                            v17 = v53;
                            goto LABEL_46;
                          }
                        }
                      }

                      v34 = [v32 countByEnumeratingWithState:&v55 objects:v67 count:16];
                      if (v34)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v30 = v30 + 1;
                  v10 = v51;
                  v17 = v53;
                  v29 = v48;
                }

                while (v30 != v50);
                v12 = v49;
                v13 = &MKBGetDeviceLockState_ptr;
                v50 = [(__CFString *)v28 countByEnumeratingWithState:&v59 objects:v68 count:16];
              }

              while (v50);
            }
          }

          v11 = v11 + 1;
        }

        while (v11 != v52);
        v40 = 0;
        v52 = [v10 countByEnumeratingWithState:&v63 objects:v75 count:16];
        if (v52)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v40 = 0;
    }

LABEL_48:

    goto LABEL_49;
  }

  v41 = pk_General_log();
  v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);

  if (v42)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error: Expected to be provided a reader identifier for consideration.", buf, 2u);
    }

    v40 = 0;
LABEL_49:

    goto LABEL_50;
  }

  v40 = 0;
LABEL_50:
  v43 = pk_General_log();
  v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);

  if (v44)
  {
    v45 = pk_General_log();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = @"NO";
      if (v40)
      {
        v46 = @"YES";
      }

      *buf = 138412290;
      v70 = v46;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Notice: Has matching payment pass: %@", buf, 0xCu);
    }
  }

  return v40;
}

- (id)readerIdentifierForCompanionPaymentPassWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Checking reader identifier for companion payment pass with unique id %@", &v16, 0xCu);
    }
  }

  v8 = [(NPKCompanionAgent *)self passLibrary];
  v9 = [v8 passWithUniqueID:v4];
  v10 = [v9 paymentPass];

  v11 = [v10 pairedTerminalIdentifier];
  v12 = pk_General_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_General_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Notice: Found pass %@ with reader identifier %@", &v16, 0x16u);
    }
  }

  return v11;
}

- (void)doesWatchSupportPassLikeCompanionPassWithUniqueID:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Checking whether watch supports adding passes like the companion payment pass with unique id %@", buf, 0xCu);
    }
  }

  v11 = [(NPKCompanionAgent *)self passLibrary];
  v12 = [v11 passWithUniqueID:v6];

  if (v12)
  {
    v13 = [v12 secureElementPass];
    v14 = [v13 isCarKeyPass];

    if (!v14)
    {
      goto LABEL_13;
    }

    v15 = objc_alloc_init(PKAddCarKeyPassConfiguration);
    v16 = [v12 secureElementPass];
    v17 = [v16 devicePrimaryPaymentApplication];
    v18 = [v17 subcredentials];
    v19 = [v18 anyObject];

    v20 = [v19 supportedRadioTechnologies];
    if (!v20)
    {
      v21 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v36 = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Defaulting to NFC due to missing or invalid radioTechnologies: %lu", buf, 0xCu);
      }

      v20 = 1;
    }

    [v15 setSupportedRadioTechnologies:v20];
    v22 = [v19 manufacturerIdentifier];
    [v15 setManufacturerIdentifier:v22];

    v23 = [v19 brandIdentifier];
    [v15 setIssuerIdentifier:v23];

    if (v15)
    {
      v24 = [(NPKCompanionAgent *)self paymentWebService];
      v25 = [v24 targetDevice];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10000EEE0;
      v32[3] = &unk_100071388;
      v34 = v7;
      v33 = v12;
      [v25 paymentWebService:v24 canAddSecureElementPassWithConfiguration:v15 completion:v32];
    }

    else
    {
LABEL_13:
      v26 = pk_General_log();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

      if (v27)
      {
        v28 = pk_General_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = v6;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Notice: Pass with unique id %@ doesn't have special support considerations; continuing...", buf, 0xCu);
        }
      }

      if (v7)
      {
        (*(v7 + 2))(v7, 1);
      }
    }
  }

  else
  {
    v29 = pk_General_log();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

    if (v30)
    {
      v31 = pk_General_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v6;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Warning: No companion payment pass for unique ID %@ was found!", buf, 0xCu);
      }
    }

    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

- (BOOL)hasAnyWatchPaymentPasses
{
  v2 = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
  v3 = [v2 uniqueIDs];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)postAddReminderNotificationForPassWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = [(NPKCompanionAgent *)self passLibrary];
  v6 = [v5 passWithUniqueID:v4];

  v7 = [v6 paymentPass];
  if (NPKIsAddToWatchSupportedForCompanionPaymentPass())
  {
    v8 = [v6 secureElementPass];
    v9 = NPKIsWatchOfferSupportedForCompanionPaymentPass();

    if (v9)
    {
      v10 = pk_General_log();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

      if (v11)
      {
        v12 = pk_General_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v28 = v4;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Notice: Posting add to watch reminder notification for payment pass with unique id %@", buf, 0xCu);
        }
      }

      v13 = [v6 paymentPass];
      v14 = [v13 isAccessPass];

      if (v14)
      {
        v15 = [NSBundle bundleForClass:objc_opt_class()];
        v16 = v15;
        v17 = @"SETUP_REMINDER_MESSAGE_ACCESS_SPECIFIC";
      }

      else
      {
        v21 = NPKReferredToAsAccount();
        v15 = [NSBundle bundleForClass:objc_opt_class()];
        v16 = v15;
        if (v21)
        {
          v17 = @"SETUP_REMINDER_MESSAGE_ACCOUNT_SPECIFIC";
        }

        else
        {
          v17 = @"SETUP_REMINDER_MESSAGE_SPECIFIC";
        }
      }

      v22 = [v15 localizedStringForKey:v17 value:&stru_100073088 table:@"NanoPassKit"];
      v23 = [v6 localizedDescription];
      v20 = [NSString stringWithFormat:v22, v23];

      v24 = [(NPKCompanionAgent *)self bulletinManager];
      v25 = [NSBundle bundleForClass:objc_opt_class()];
      v26 = [v25 localizedStringForKey:@"APPLE_WATCH" value:&stru_100073088 table:@"NanoPassKit"];
      [v24 insertBridgeBulletinWithTitle:v26 message:v20 actionURL:0 forPass:v6];

LABEL_17:
      goto LABEL_18;
    }
  }

  else
  {
  }

  v18 = pk_General_log();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

  if (v19)
  {
    v20 = pk_General_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v4;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Notice: Add to watch reminder notification is not supported for payment pass with unique id %@", buf, 0xCu);
    }

    goto LABEL_17;
  }

LABEL_18:
}

- (void)postVerifyReminderNotificationForPassWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
  v13 = [v5 paymentPassWithUniqueID:v4];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"VERIFY_REMINDER_MESSAGE_SPECIFIC" value:&stru_100073088 table:@"NanoPassKit"];
  v8 = [v13 localizedDescription];
  v9 = [NSString stringWithFormat:v7, v8];

  v10 = [(NPKCompanionAgent *)self bulletinManager];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"APPLE_WATCH" value:&stru_100073088 table:@"NanoPassKit"];
  [v10 insertBridgeBulletinWithTitle:v12 message:v9 actionURL:0 forPass:v13];
}

- (void)removeReminderNotificationForPassWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = [(NPKCompanionAgent *)self bulletinManager];
  [v5 removeBridgeBulletinsForPassWithUniqueID:v4];
}

- (void)transactionSourceIdentifier:(id)a3 didReceiveTransaction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10000CABC;
  v27 = sub_10000CACC;
  v28 = 0;
  v8 = [(NPKCompanionAgent *)self activeClientsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F844;
  block[3] = &unk_100070DB8;
  block[4] = self;
  block[5] = &v23;
  dispatch_sync(v8, block);

  v9 = pk_Payment_log();
  LODWORD(v8) = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v24[5];
      *buf = 138412546;
      v31 = v6;
      v32 = 2112;
      v33 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Transaction received for source identifier %@; sending to %@", buf, 0x16u);
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = v24[5];
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v29 count:16];
  if (v13)
  {
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [*(*(&v18 + 1) + 8 * v15) connection];
        v17 = [v16 remoteObjectProxy];

        [v17 transactionSourceIdentifier:v6 didReceiveTransaction:v7];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v18 objects:v29 count:16];
    }

    while (v13);
  }

  _Block_object_dispose(&v23, 8);
}

- (void)transactionSourceIdentifier:(id)a3 didRemoveTransactionWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10000CABC;
  v27 = sub_10000CACC;
  v28 = 0;
  v8 = [(NPKCompanionAgent *)self activeClientsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000FB6C;
  block[3] = &unk_100070DB8;
  block[4] = self;
  block[5] = &v23;
  dispatch_sync(v8, block);

  v9 = pk_Payment_log();
  LODWORD(v8) = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v24[5];
      *buf = 138412802;
      v31 = v7;
      v32 = 2112;
      v33 = v6;
      v34 = 2112;
      v35 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Transaction with identifier: %@ for source identifier: %@ removed; sending to %@", buf, 0x20u);
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = v24[5];
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v29 count:16];
  if (v13)
  {
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [*(*(&v18 + 1) + 8 * v15) connection];
        v17 = [v16 remoteObjectProxy];

        [v17 transactionSourceIdentifier:v6 didRemoveTransactionWithIdentifier:v7];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v18 objects:v29 count:16];
    }

    while (v13);
  }

  _Block_object_dispose(&v23, 8);
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithTransitAppletState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v7;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Got updated transit applet state %@ for pass with unique ID %@. Processing subject to first unlock and paired sync.", buf, 0x16u);
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000FD44;
  v13[3] = &unk_100070FA8;
  v13[4] = self;
  v14 = v7;
  v15 = v6;
  v11 = v6;
  v12 = v7;
  [(NPKCompanionAgent *)self _performAfterFirstDeviceUnlockAndPairedSyncAllowed:v13];
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithBalances:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v7;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: (PKPaymentBalance set) Got updated balances %@ for pass with unique ID %@. Processing subject to first unlock and paired sync.", buf, 0x16u);
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001033C;
  v13[3] = &unk_100070FA8;
  v13[4] = self;
  v14 = v7;
  v15 = v6;
  v11 = v6;
  v12 = v7;
  [(NPKCompanionAgent *)self _performAfterFirstDeviceUnlockAndPairedSyncAllowed:v13];
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateBalanceReminder:(id)a4 forBalance:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: (PKPaymentBalanceReminder set) Got updated balance reminder %@ for balance %@ and pass with unique ID %@. Processing subject to first unlock and paired sync.", buf, 0x20u);
    }
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000108E0;
  v17[3] = &unk_100071400;
  v17[4] = self;
  v18 = v9;
  v19 = v10;
  v20 = v8;
  v14 = v8;
  v15 = v10;
  v16 = v9;
  [(NPKCompanionAgent *)self _performAfterFirstDeviceUnlockAndPairedSyncAllowed:v17];
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithCredentials:(id)a4 forPaymentApplicationIdentifier:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = pk_Payment_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v15 = pk_Payment_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v24 = v10;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Notice: (PKAppletSubcredential set) Got updated credentials %@ for pass with unique ID %@, paymentApplicationIdentifier: %@. Processing subject to first unlock and paired sync.", buf, 0x20u);
    }
  }

  v22 = v12;
  v20 = v10;
  v21 = v9;
  v16 = v11;
  v17 = v9;
  v18 = v10;
  v19 = v12;
  NPKGuaranteeMainThread();
}

- (void)didReceivePaymentSetupRequestForApplicationName:(id)a3
{
  v10 = a3;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"REMOTE_SETUP_ALERT_TITLE" value:&stru_100073088 table:@"NanoPassKit"];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  if (v10)
  {
    v7 = [v6 localizedStringForKey:@"REMOTE_SETUP_ALERT_BODY" value:&stru_100073088 table:@"NanoPassKit"];
    v8 = [NSString stringWithFormat:v7, v10];
  }

  else
  {
    v8 = [v6 localizedStringForKey:@"REMOTE_SETUP_ALERT_BODY_NO_APP_NAME" value:&stru_100073088 table:@"NanoPassKit"];
  }

  v9 = [(NPKCompanionAgent *)self bulletinManager];
  [v9 insertBridgeBulletinWithTitle:v5 message:v8 actionURL:0 forPass:0];
}

- (void)didReceiveCheckCompanionPeerPaymentState
{
  v2 = [(NPKCompanionAgent *)self companionPeerPaymentStatusObserver];
  [v2 handleWatchRequestForCompanionPeerPaymentRegistrationState];
}

- (unint64_t)companionPassSyncService:(id)a3 settingsForPassWithUniqueID:(id)a4
{
  v5 = a4;
  v6 = +[NPKGizmoDatabase sharedDatabase];
  v7 = [v6 passForUniqueID:v5];

  v8 = [(NPKCompanionAgent *)self passLibrary];
  v9 = [v8 passWithUniqueID:v5];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 secureElementPass];

    if (!v11)
    {
      v20 = pk_General_log();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

      if (v21)
      {
        v22 = pk_General_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 138412290;
          v25 = v5;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Notice: Returning settings for non-payment pass with unique ID %@", &v24, 0xCu);
        }
      }

      v15 = v10;
      goto LABEL_19;
    }
  }

  if (v7)
  {
    v12 = pk_General_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = pk_General_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412290;
        v25 = v5;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Notice: Returning settings for pass in the watch's pass library with unique ID %@", &v24, 0xCu);
      }
    }

    v15 = v7;
LABEL_19:
    v19 = [v15 settings];
    goto LABEL_20;
  }

  v16 = pk_Payment_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

  if (v17)
  {
    v18 = pk_Payment_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v24 = 138412290;
      v25 = v5;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error: Unable to find settings for pass with unique ID %@", &v24, 0xCu);
    }
  }

  v19 = 0;
LABEL_20:

  return v19;
}

- (PKPassLibrary)passLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_passLibrary);
  if (!WeakRetained)
  {
    WeakRetained = objc_alloc_init(PKPassLibrary);
    objc_storeWeak(&self->_passLibrary, WeakRetained);
  }

  return WeakRetained;
}

- (id)temporarilyRetainedPassLibrary
{
  v2 = [(NPKCompanionAgent *)self passLibrary];
  v3 = dispatch_time(0, 30000000000);
  v4 = dispatch_get_global_queue(-32768, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011BC0;
  block[3] = &unk_100071000;
  v5 = v2;
  v8 = v5;
  dispatch_after(v3, v4, block);

  return v5;
}

- (id)libraryHash
{
  v3 = [(NPKCompanionAgent *)self gizmoDatabase];
  v4 = [v3 libraryHashForWatchOSMajorVersion:{-[NPKCompanionAgent versionForCompleteHash](self, "versionForCompleteHash")}];

  return v4;
}

- (void)_handleCompanionPassLibraryChanged:(id)a3
{
  v4 = a3;
  if ([(NPKCompanionAgent *)self shouldDropIDSMessages])
  {
    goto LABEL_39;
  }

  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library changed (%@)", buf, 0xCu);
    }
  }

  v8 = [(NPKCompanionAgent *)self pairedSyncCoordinator];
  if ([v8 syncRestriction])
  {
    IsTinker = NPKPairedOrPairingDeviceIsTinker();

    if (!IsTinker)
    {
      v10 = pk_General_log();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

      if (v11)
      {
        v12 = pk_General_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Notice: Paired sync restriction in place...suppressing library changed notification", buf, 2u);
        }
      }

      goto LABEL_39;
    }
  }

  else
  {
  }

  if (NPKIsPairedDeviceStandalone())
  {
    v13 = [v4 name];
    v14 = [v13 isEqualToString:PKPassSettingsDidChangeNotification];

    if (!v14)
    {
      v23 = [v4 name];
      v24 = [v23 isEqualToString:PKPassLibraryCatalogDidChangeNotification];

      if (v24)
      {
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_10001222C;
        v43[3] = &unk_1000714A0;
        v43[4] = self;
        [(NPKCompanionAgent *)self fetchCatalogIfChanged:v43];
        goto LABEL_32;
      }

      v16 = [(NPKCompanionAgent *)self passSyncService];
      [v16 handlePassLibraryChanged];
      goto LABEL_31;
    }

    v15 = [v4 userInfo];
    v16 = [v15 objectForKeyedSubscript:PKPassLibraryUniqueIDUserInfoKey];

    v17 = [v4 userInfo];
    v18 = [v17 objectForKeyedSubscript:PKPassLibrarySettingsUserInfoKey];

    if (v16 && v18)
    {
      v19 = [(NPKCompanionAgent *)self passLibrary];
      v20 = [v19 passWithUniqueID:v16];

      if ([(NPKCompanionAgent *)self _shouldSyncPassFromCompanionPassLibrary:v20])
      {
        v21 = [v18 unsignedIntValue];
        v22 = [(NPKCompanionAgent *)self passSyncService];
        [v22 handleSettingsChanged:v21 forPassWithUniqueID:v16];
      }

      else
      {
        v27 = pk_General_log();
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

        if (!v28)
        {
          goto LABEL_29;
        }

        v22 = pk_General_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v45 = v16;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Notice: Not syncing companion settings change for pass with unique ID %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v25 = pk_General_log();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

      if (!v26)
      {
LABEL_30:

LABEL_31:
        goto LABEL_32;
      }

      v20 = pk_General_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v45 = v16;
        v46 = 2112;
        v47 = v18;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Warning: Missing pass unique ID (%@) or settings (%@) in notification", buf, 0x16u);
      }
    }

LABEL_29:

    goto LABEL_30;
  }

LABEL_32:
  v29 = [v4 name];
  v30 = [v29 isEqualToString:PKPassLibraryDidAddPassNotification];

  if (v30)
  {
    v31 = [v4 userInfo];
    v32 = [v31 objectForKeyedSubscript:PKPassLibraryUniqueIDUserInfoKey];

    [(NPKCompanionAgent *)self _handleCompanionPassAddedWithID:v32];
LABEL_38:

    goto LABEL_39;
  }

  v33 = [v4 name];
  if ([v33 isEqualToString:PKPassLibraryDidUpdatePassNotification])
  {

LABEL_37:
    v36 = [v4 userInfo];
    v32 = [v36 objectForKeyedSubscript:PKPassLibraryUniqueIDUserInfoKey];

    [(NPKCompanionAgent *)self _handleCompanionPassUpdatedWithID:v32];
    goto LABEL_38;
  }

  v34 = [v4 name];
  v35 = [v34 isEqualToString:PKPassSettingsDidChangeNotification];

  if (v35)
  {
    goto LABEL_37;
  }

  v37 = [v4 name];
  v38 = [v37 isEqualToString:PKPassLibraryDidRemovePassNotification];

  if (v38)
  {
    v39 = [v4 userInfo];
    v32 = [v39 objectForKeyedSubscript:PKPassLibraryUniqueIDUserInfoKey];

    [(NPKCompanionAgent *)self _handleCompanionPassRemovedWithID:v32];
    goto LABEL_38;
  }

  v40 = [v4 name];
  v41 = [v40 isEqualToString:PKPassLibraryCatalogDidChangeNotification];

  if (v41 && (NPKIsRunningInUIOnlyDemoMode() & 1) == 0 && (NPKIsRunningInStoreDemoMode() & 1) == 0)
  {
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1000122A4;
    v42[3] = &unk_1000714A0;
    v42[4] = self;
    [(NPKCompanionAgent *)self fetchCatalogIfChanged:v42];
  }

LABEL_39:
}

- (void)_migrateLoggingDefaults
{
  if (PKIsInternalInstall())
  {
    v3 = NPKDefaultsDomain;
    CFPreferencesSetAppValue(@"Log", 0, NPKDefaultsDomain);
    CFPreferencesSetAppValue(@"Log.General", 0, v3);
    CFPreferencesSetAppValue(@"Log.Stockholm", 0, v3);
    CFPreferencesSetAppValue(@"Log.Relevance", 0, v3);
    CFPreferencesSetAppValue(@"LogCrashReporter", 0, PKStockholmDomain);

    [(NPKCompanionAgent *)self _handlePassbookGlobalPreferencesChanged];
  }
}

- (void)_handleCompanionPaymentPassDatabaseChanged:(id)a3
{
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Companion payment pass database changed: %@", &v8, 0xCu);
    }
  }

  [(NPKCompanionAgent *)self _handleCompanionPaymentPassDatabaseChangedBroadcastUnconditionally:1];
}

- (void)_handleCompanionSyncDatabaseChanged:(id)a3
{
  v3 = a3;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notice: Companion sync database changed: %@", &v8, 0xCu);
    }
  }

  v7 = +[NSDistributedNotificationCenter defaultCenter];
  [v7 postNotificationName:_NPKCompanionServerPaymentPassesChangedNotification object:0 userInfo:&__NSDictionary0__struct];
}

- (void)_handleCompanionPaymentPassDatabaseChangedBroadcastUnconditionally:(BOOL)a3
{
  v3 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Payment pass directory changed (broadcast unconditionally = %d)", buf, 8u);
    }
  }

  v8 = [(NPKCompanionAgent *)self workQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100012A34;
  v9[3] = &unk_100071568;
  v9[4] = self;
  v10 = v3;
  [v8 performWork:v9];
}

- (void)_handleStockholmPreferencesChanged
{
  v3 = PKStockholmDomain;
  CFPreferencesSynchronize(PKStockholmDomain, kCFPreferencesAnyUser, kCFPreferencesAnyHost);
  v4 = [NSSet setWithObjects:@"EnvironmentName", @"EnvironmentDisplayName", @"ConfigURL", @"MerchantServicesURL", @"auth", @"RemoteAdminV2", @"LogPreActivation", @"LogPostActivation", @"LogAPDU", @"LogAPI", @"LogNCI", @"LogTSM", @"LogXPC", @"LogCrashReporter", 0];
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Stockholm preferences changed; synchronizing to watch: %@ %@", buf, 0x16u);
    }
  }

  v8 = [(NPKCompanionAgent *)self npsManager];
  [v8 synchronizeUserDefaultsDomain:v3 keys:v4];
}

- (void)_handlePassbookGlobalPreferencesChanged
{
  CFPreferencesSynchronize(kCFPreferencesAnyApplication, kCFPreferencesAnyUser, kCFPreferencesAnyHost);
  v3 = [NSSet setWithObjects:@"PKBypassStockholmRegionCheck", @"PKDisableStockholmInRegion", PKAllowHTTPKey, PKUIOnlyDemoModeEnabledKey, PKHandsOnDemoModeEnabledKey, PKBypassCertValidationKey, PKIgnoreSignaturesKey, @"PKSimulateFailForward", PKUseMockSURFServerKey, PKPeerPaymentServiceOverrideURLKey, PKBroadwayEnableDynamicCardDuringPaymentKey, PKBroadwayEnableDynamicCardInWalletKey, @"PKDisableAvailableBalance", 0];
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = @".GlobalPreferences";
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notice: Wallet global preferences changed; synchronizing to watch: %@ %@", buf, 0x16u);
    }
  }

  v7 = [(NPKCompanionAgent *)self npsManager];
  [v7 synchronizeUserDefaultsDomain:@".GlobalPreferences" keys:v3];

  v8 = [NSSet setWithObject:@"PKNFCPassKeyOptional"];
  v9 = pk_Payment_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = PKPassdBundleIdentifier;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Notice: Wallet passd preferences changed; synchronizing to watch: %@ %@", buf, 0x16u);
    }
  }

  v12 = [(NPKCompanionAgent *)self npsManager];
  [v12 synchronizeUserDefaultsDomain:PKPassdBundleIdentifier keys:v8];
}

- (void)_handleWalletPreferencesChanged:(id)a3
{
  v4 = PKWalletDomain;
  CFPreferencesSynchronize(PKWalletDomain, kCFPreferencesAnyUser, kCFPreferencesAnyHost);
  v5 = [NSSet setWithObjects:PKRegionFeatureOverrideKey, 0];
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notice: Wallet preferences changed; synchronizing to watch: %@ %@", buf, 0x16u);
    }
  }

  v9 = [(NPKCompanionAgent *)self npsManager];
  [v9 synchronizeUserDefaultsDomain:v4 keys:v5];
}

- (void)_handlePublicWalletPreferencesChanged:(id)a3
{
  v4 = PKPublicWalletDomain;
  CFPreferencesSynchronize(PKPublicWalletDomain, kCFPreferencesAnyUser, kCFPreferencesAnyHost);
  v5 = [NSSet setWithObjects:PKAllowHTTPKey, 0];
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notice: Public Wallet preferences changed; synchronizing to watch: %@ %@", buf, 0x16u);
    }
  }

  v9 = [(NPKCompanionAgent *)self npsManager];
  [v9 synchronizeUserDefaultsDomain:v4 keys:v5];
}

- (void)_handlePaymentOptionsDefaultsChanged
{
  v2 = [(NPKCompanionAgent *)self remoteAdminConnectionServiceAgent];
  [v2 handlePaymentOptionsDefaultsChanged];
}

- (void)_handleRelevantPassesDidChange:(id)a3
{
  v4 = a3;
  v5 = pk_Relevance_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Relevance_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Relevant passes changed (notification %@), fetching...", buf, 0xCu);
    }
  }

  v8 = [(NPKCompanionAgent *)self temporarilyRetainedPassLibrary];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100013A24;
  v9[3] = &unk_1000715D0;
  v9[4] = self;
  [v8 fetchCurrentRelevantPassInfo:v9];
}

- (void)_handleBulletinDistributorWillSendBulletinToGizmoWithSectionID:(id)a3
{
  v4 = a3;
  v5 = [(NPKCompanionAgent *)self remoteDeviceLowPowerMonitor];
  v6 = [v5 isLowPowerModeEnabled];

  v7 = pk_Relevance_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    if (v8)
    {
      v9 = pk_Relevance_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notice: Low power mode enabled will ignore Bulletin distributor event.", &v11, 2u);
      }
    }
  }

  else
  {
    if (v8)
    {
      v10 = pk_Relevance_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412546;
        v12 = v4;
        v13 = 1024;
        v14 = [(NPKCompanionAgent *)self hasCandidateRelevantPasses];
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Bulletin distributor will send bulletin to watch for section ID %@ (has candidates %d)", &v11, 0x12u);
      }
    }

    [(NPKCompanionAgent *)self _fetchRelevantPassesAndNotifyGizmo];
  }
}

- (void)_handleActiveDeviceChanged:(id)a3
{
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notice: Got active device changed notification; waiting for first unlock before handling", buf, 2u);
    }
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001443C;
  v7[3] = &unk_100071000;
  v7[4] = self;
  [(NPKCompanionAgent *)self _performAfterFirstDeviceUnlock:v7];
}

- (void)_handleDeviceCapabilitiesDidChange
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = [(NPKCompanionAgent *)self passSyncService];

  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    if (v5)
    {
      v6 = pk_General_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notice: Refreshing companion passes library that can be sync.", buf, 2u);
      }
    }

    v7 = [(NPKCompanionAgent *)self passSyncService];
    [v7 updatePassLibrary];
LABEL_7:

    return;
  }

  if (v5)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service is not setup yet. Can't request to sync yet.", v8, 2u);
    }

    goto LABEL_7;
  }
}

- (void)lowPowerModeMonitor:(id)a3 didUpdateLowPowerModeEnabled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = pk_Relevance_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Relevance_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = v6;
      v12 = 1024;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notice: lowPowerModeMonitor:%@  didUpdateLowPowerModeEnabled:%d", &v10, 0x12u);
    }
  }

  if (!v4)
  {
    [(NPKCompanionAgent *)self _fetchRelevantPassesAndNotifyGizmo];
  }
}

- (void)resyncNeededRequest:(id)a3
{
  v4 = a3;
  v5 = [NPKProtoResyncNeededRequest alloc];
  v6 = [v4 data];

  v7 = [v5 initWithData:v6];
  v8 = [v7 expectedHash];
  v23 = [v8 hashData];

  v9 = [v7 uniqueIDs];
  v10 = [v7 manifestHashes];
  v11 = [v7 fullResyncNeeded];
  if ([v7 hasResyncID])
  {
    v12 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v7 resyncID]);
  }

  else
  {
    v12 = 0;
  }

  v13 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9];
  v14 = pk_General_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = pk_General_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = +[NPKGizmoDatabase sharedDatabase];
      v18 = [v17 libraryHashForWatchOSMajorVersion:{-[NPKCompanionAgent versionForCompleteHash](self, "versionForCompleteHash")}];
      *buf = 138412802;
      v29 = v23;
      v30 = 2112;
      v31 = v18;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Warning: Gizmo's database is out of sync (expected hash %@, ours %@, resync ID %@)!", buf, 0x20u);
    }
  }

  if (v11)
  {
    v19 = pk_General_log();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      v21 = pk_General_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Warning: Full resync requested", buf, 2u);
      }
    }

    [(NPKCompanionAgent *)self _doFullSyncWithResyncID:v12];
  }

  else
  {
    v22 = [(NPKCompanionAgent *)self workQueue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100014A30;
    v24[3] = &unk_1000713D8;
    v24[4] = self;
    v25 = v13;
    v26 = v9;
    v27 = v12;
    [v22 performWork:v24];
  }
}

- (void)handleGizmoInitiatedAddPassRequest:(id)a3
{
  v4 = a3;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Gizmo sent us an add pass request", buf, 2u);
    }
  }

  v8 = [NPKProtoGizmoInitiatedAddPassRequest alloc];
  v9 = [v4 data];

  v10 = [v8 initWithData:v9];
  v11 = [v10 passData];
  v31 = 0;
  v12 = [PKPass createWithData:v11 warnings:0 error:&v31];
  v13 = v31;

  v14 = [v12 paymentPass];

  if (v14)
  {
    v15 = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
    v16 = [v12 uniqueID];
    v17 = [v15 paymentPassWithUniqueID:v16];

    if (v17 && ([v12 sequenceCounter], v18 = objc_claimAutoreleasedReturnValue(), -[NSObject sequenceCounter](v17, "sequenceCounter"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "compare:", v19), v19, v18, v20 != 1))
    {
      v26 = pk_Payment_log();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

      if (!v27)
      {
        goto LABEL_11;
      }

      v21 = pk_Payment_log();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      v22 = [v12 sequenceCounter];
      v28 = [v17 sequenceCounter];
      *buf = 138412546;
      v34 = v22;
      v35 = 2112;
      v36 = v28;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Notice: Not saving incoming payment pass because its sequence counter (%@) is not newer than what's already on disk (%@)", buf, 0x16u);
    }

    else
    {
      v21 = [(NPKCompanionAgent *)self remoteAdminConnectionServiceAgent];
      v22 = [v12 paymentPass];
      [v21 handleGizmoAddedPaymentPass:v22];
    }

LABEL_10:
    goto LABEL_11;
  }

  if (v12)
  {
    v17 = [(NPKCompanionAgent *)self passLibrary];
    v23 = [v12 passTypeIdentifier];
    v24 = [v12 serialNumber];
    v25 = [v17 passWithPassTypeIdentifier:v23 serialNumber:v24];

    if (v25)
    {
      [v17 replacePassWithPass:v12];
      goto LABEL_11;
    }

    v32 = v12;
    v21 = [NSArray arrayWithObjects:&v32 count:1];
    [v17 addPasses:v21 withCompletionHandler:0];
    goto LABEL_10;
  }

  v29 = pk_General_log();
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

  if (!v30)
  {
    goto LABEL_12;
  }

  v17 = pk_General_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v34 = v13;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Error: Unable to create pass from data: %@", buf, 0xCu);
  }

LABEL_11:

LABEL_12:
}

- (void)handleGizmoInitiatedDeletePassRequest:(id)a3
{
  v4 = a3;
  v5 = [NPKProtoGizmoInitiatedDeletePassRequest alloc];
  v6 = [v4 data];

  v7 = [v5 initWithData:v6];
  v8 = [v7 passID];
  v9 = pk_Payment_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Notice: Gizmo sent us a delete request for pass with ID %@", &v22, 0xCu);
    }
  }

  v12 = +[NPKGizmoDatabase sharedDatabase];
  v13 = [v12 passForUniqueID:v8];
  v14 = [v13 paymentPass];

  if (v14)
  {
    if (NPKIsPairedDeviceStandalone())
    {
      v15 = pk_Payment_log();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

      if (!v16)
      {
LABEL_13:
        [(NPKCompanionAgent *)self _removeCompanionDatabasePassWithUniqueID:v8 completion:0];
        v18 = [(NPKCompanionAgent *)self remoteDeviceManager];
        [v18 deviceDidDeletePass:v14];

        goto LABEL_14;
      }

      v17 = pk_Payment_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Error: Got gizmo-initiated delete pass request for standalone device!", &v22, 2u);
      }
    }

    else
    {
      v17 = [(NPKCompanionAgent *)self remoteAdminConnectionServiceAgent];
      [v17 deprovisionPass:v14];
    }

    goto LABEL_13;
  }

  [(NPKCompanionAgent *)self _removeCompanionDatabasePassWithUniqueID:v8 completion:0];
LABEL_14:
  v19 = [(NPKCompanionAgent *)self passLibrary];
  v20 = [v19 passWithUniqueID:v8];
  v21 = v20;
  if (v20 && [v20 passType] != 1)
  {
    [v19 removePass:v21];
  }
}

- (void)handleGizmoReceivedNewLibraryHashRequest:(id)a3
{
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notice: Heard back from gizmo that it received the newest hash, so notifying paired sync coordinator that sync did complete", v9, 2u);
    }
  }

  v7 = [(NPKCompanionAgent *)self pairedSyncCoordinator];
  v8 = [v7 activeSyncSession];
  [v8 syncDidComplete];
}

- (void)handleRelevantPassesNeededRequest:(id)a3
{
  v4 = pk_Relevance_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Relevance_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notice: Received relevant passes needed request from gizmo", v7, 2u);
    }
  }

  [(NPKCompanionAgent *)self _fetchRelevantPassesAndNotifyGizmo];
}

- (id)serializedPass:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NPKProtoPass);
  v5 = NPKSecureArchiveObject();

  [v4 setPassData:v5];

  return v4;
}

- (id)serializedCatalog:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(NPKProtoCatalog);
    v5 = NPKSecureArchiveObject();

    [v4 setCatalogData:v5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)serializedAddPass:(id)a3 withNewLibraryHash:(id)a4 omitHashForChunking:(BOOL)a5 catalog:(id)a6 syncID:(id)a7 resyncID:(id)a8
{
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a3;
  v19 = objc_alloc_init(NPKProtoAddPassRequest);
  v20 = [(NPKCompanionAgent *)self serializedPass:v18];

  [v19 setPass:v20];
  if (!a5)
  {
    v21 = objc_alloc_init(NPKProtoHash);
    [v21 setHashData:v14];
    [v19 setLibraryHash:v21];
  }

  v22 = [(NPKCompanionAgent *)self serializedCatalog:v15];
  [v19 setCatalog:v22];

  if (v16)
  {
    [v19 setSyncID:{objc_msgSend(v16, "unsignedIntValue")}];
  }

  if (v17)
  {
    [v19 setResyncID:{objc_msgSend(v17, "unsignedIntValue")}];
  }

  v23 = [(NPKCompanionAgent *)self lastKnownResyncID];

  if (v23)
  {
    v24 = [(NPKCompanionAgent *)self lastKnownResyncID];
    [v19 setLastKnownResyncID:{objc_msgSend(v24, "unsignedIntValue")}];
  }

  v25 = [v19 data];

  return v25;
}

- (id)serializedUpdatePass:(id)a3 fromPassWithManifestHash:(id)a4 withNewLibraryHash:(id)a5 omitHashForChunking:(BOOL)a6 catalog:(id)a7 syncID:(id)a8 resyncID:(id)a9
{
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a4;
  v20 = a3;
  v21 = objc_alloc_init(NPKProtoUpdatePassRequest);
  v22 = [(NPKCompanionAgent *)self serializedPass:v20];

  [v21 setPass:v22];
  [v21 setPreviousManifestHash:v19];

  if (!a6)
  {
    v23 = objc_alloc_init(NPKProtoHash);
    [v23 setHashData:v15];
    [v21 setLibraryHash:v23];
  }

  v24 = [(NPKCompanionAgent *)self serializedCatalog:v16];
  [v21 setCatalog:v24];

  if (v17)
  {
    [v21 setSyncID:{objc_msgSend(v17, "unsignedIntValue")}];
  }

  if (v18)
  {
    [v21 setResyncID:{objc_msgSend(v18, "unsignedIntValue")}];
  }

  v25 = [(NPKCompanionAgent *)self lastKnownResyncID];

  if (v25)
  {
    v26 = [(NPKCompanionAgent *)self lastKnownResyncID];
    [v21 setLastKnownResyncID:{objc_msgSend(v26, "unsignedIntValue")}];
  }

  v27 = [v21 data];

  return v27;
}

- (id)serializedRemovePassWithUniqueID:(id)a3 withNewLibraryHash:(id)a4 omitHashForChunking:(BOOL)a5 catalog:(id)a6 syncID:(id)a7 resyncID:(id)a8
{
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a3;
  v19 = objc_alloc_init(NPKProtoRemovePassRequest);
  [v19 setPassID:v18];

  if (!a5)
  {
    v20 = objc_alloc_init(NPKProtoHash);
    [v20 setHashData:v14];
    [v19 setLibraryHash:v20];
  }

  v21 = [(NPKCompanionAgent *)self serializedCatalog:v15];
  [v19 setCatalog:v21];

  if (v16)
  {
    [v19 setSyncID:{objc_msgSend(v16, "unsignedIntValue")}];
  }

  if (v17)
  {
    [v19 setResyncID:{objc_msgSend(v17, "unsignedIntValue")}];
  }

  v22 = [(NPKCompanionAgent *)self lastKnownResyncID];

  if (v22)
  {
    v23 = [(NPKCompanionAgent *)self lastKnownResyncID];
    [v19 setLastKnownResyncID:{objc_msgSend(v23, "unsignedIntValue")}];
  }

  v24 = [v19 data];

  return v24;
}

- (void)_handleAddAndSendToGizmoForPass:(id)a3 syncID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(NPKCompanionAgent *)self shouldDropIDSMessages])
  {
    if (v10)
    {
      v10[2](v10);
    }
  }

  else
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100015CE4;
    v20[3] = &unk_100071620;
    v11 = v8;
    v21 = v11;
    v22 = v10;
    v12 = objc_retainBlock(v20);
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x3042000000;
    v18[3] = sub_100015D48;
    v18[4] = sub_100015D54;
    objc_initWeak(&v19, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100015D5C;
    v14[3] = &unk_100071670;
    v13 = v12;
    v16 = v13;
    v17 = v18;
    v15 = v9;
    [(NPKCompanionAgent *)self _addPassToDatabaseAndPrepareForTransmissionToGizmo:v11 isUpdate:0 withCompletion:v14];

    _Block_object_dispose(v18, 8);
    objc_destroyWeak(&v19);
  }
}

- (void)_handleUpdateAndSendToGizmoForPass:(id)a3 syncID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(NPKCompanionAgent *)self shouldDropIDSMessages])
  {
    if (v10)
    {
      v10[2](v10);
    }
  }

  else
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100016784;
    v20[3] = &unk_100071620;
    v11 = v8;
    v21 = v11;
    v22 = v10;
    v12 = objc_retainBlock(v20);
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x3042000000;
    v18[3] = sub_100015D48;
    v18[4] = sub_100015D54;
    objc_initWeak(&v19, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000167E8;
    v14[3] = &unk_100071670;
    v13 = v12;
    v16 = v13;
    v17 = v18;
    v15 = v9;
    [(NPKCompanionAgent *)self _addPassToDatabaseAndPrepareForTransmissionToGizmo:v11 isUpdate:1 withCompletion:v14];

    _Block_object_dispose(v18, 8);
    objc_destroyWeak(&v19);
  }
}

- (void)_handleRemovalAndSendToGizmoForPassWithUniqueID:(id)a3 syncID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(NPKCompanionAgent *)self shouldDropIDSMessages])
  {
    v11 = +[NPKGizmoDatabase sharedDatabase];
    v12 = [v11 passForUniqueID:v8];

    v13 = [(NPKCompanionAgent *)self remoteDeviceManager];
    [v13 deviceDidDeletePass:v12];

    [(NPKCompanionAgent *)self _removePassFromDatabaseWithID:v8];
    if (NPKIsPairedDeviceStandalone())
    {
      v14 = pk_General_log();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

      if (v15)
      {
        v16 = pk_General_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Notice: Paired device is standalone; not sending removal to gizmo using legacy code path", buf, 2u);
        }
      }
    }

    else
    {
      if ((NPKIsRunningInUIOnlyDemoMode() & 1) == 0 && (NPKIsRunningInStoreDemoMode() & 1) == 0)
      {
        v17 = [(NPKCompanionAgent *)self libraryHash];
        *buf = 0;
        v27 = buf;
        v28 = 0x3042000000;
        v29 = sub_100015D48;
        v30 = sub_100015D54;
        objc_initWeak(&v31, self);
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100017124;
        v19[3] = &unk_1000716E8;
        v20 = v8;
        v18 = v17;
        v21 = v18;
        v25 = buf;
        v22 = v9;
        v23 = self;
        v24 = v10;
        [(NPKCompanionAgent *)self fetchCatalogIfChanged:v19];

        _Block_object_dispose(buf, 8);
        objc_destroyWeak(&v31);

        goto LABEL_13;
      }

      if (!v10)
      {
LABEL_13:

        goto LABEL_14;
      }
    }

    v10[2](v10);
    goto LABEL_13;
  }

  if (v10)
  {
    v10[2](v10);
  }

LABEL_14:
}

- (void)_handleCompanionPassAddedWithID:(id)a3
{
  v4 = a3;
  v5 = [(NPKCompanionAgent *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001766C;
  v7[3] = &unk_100071710;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 performWork:v7];
}

- (void)_handleCompanionPassUpdatedWithID:(id)a3
{
  v4 = a3;
  v5 = [(NPKCompanionAgent *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100017974;
  v7[3] = &unk_100071710;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 performWork:v7];
}

- (void)_handleCompanionPassRemovedWithID:(id)a3
{
  v4 = a3;
  v5 = [(NPKCompanionAgent *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100017C80;
  v7[3] = &unk_100071710;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 performWork:v7];
}

- (CGSize)gizmoScreenSize
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 getDevices];

  v4 = 0.0;
  if (v3)
  {
    v5 = 0.0;
    if (![v3 count])
    {
      goto LABEL_30;
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = v3;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (!v7)
    {
      goto LABEL_28;
    }

    v8 = v7;
    v9 = *v27;
    v10 = NRDevicePropertyScreenSize;
    while (1)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v26 + 1) + 8 * i) valueForProperty:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          v14 = [v13 objCType];
          if (v13 && !strcmp(v14, "{CGSize=dd}"))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v15 = pk_General_log();
              v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

              if (v16)
              {
                v17 = pk_General_log();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446978;
                  *&buf[4] = "[NPKCompanionAgent gizmoScreenSize]";
                  *&buf[12] = 2082;
                  *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook/NPKCompanionAgent/NPKCompanionAgent.m";
                  v31 = 2048;
                  v32 = 1944;
                  v33 = 2112;
                  v34 = v13;
                  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: NRPairedDeviceRegistry vended screen size value not of type NSValue: %@)", buf, 0x2Au);
                }
              }

              _NPKAssertAbort();
            }

            *buf = 0;
            *&buf[8] = 0;
            [v13 getValue:buf size:16];
            if (*buf > v5)
            {
              v5 = *buf;
            }

            if (*&buf[8] > v4)
            {
              v4 = *&buf[8];
            }
          }
        }

        else
        {
          v18 = pk_General_log();
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

          if (!v19)
          {
            goto LABEL_26;
          }

          v13 = pk_General_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error: NRPairedDeviceRegistry vended screen size value not of type NSValue: %@", buf, 0xCu);
          }
        }

LABEL_26:
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v35 count:16];
      if (!v8)
      {
LABEL_28:

        v3 = v25;
        goto LABEL_30;
      }
    }
  }

  v5 = 0.0;
LABEL_30:
  v20 = pk_General_log();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

  if (v21)
  {
    v22 = pk_General_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = v5;
      *&buf[12] = 2048;
      *&buf[14] = v4;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Notice: Retrieved gizmo screen size of %f x %f", buf, 0x16u);
    }
  }

  v23 = v5;
  v24 = v4;
  result.height = v24;
  result.width = v23;
  return result;
}

- (double)gizmoScreenScale
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 getDevices];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v23;
    v9 = NRDevicePropertyScreenScale;
    v10 = 2.0;
    *&v6 = 136446978;
    v21 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v12 = [*(*(&v22 + 1) + 8 * i) valueForProperty:{v9, v21, v22}];
        if (v12)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v13 = pk_General_log();
            v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

            if (v14)
            {
              v15 = pk_General_log();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                *buf = v21;
                v27 = "[NPKCompanionAgent gizmoScreenScale]";
                v28 = 2082;
                v29 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook/NPKCompanionAgent/NPKCompanionAgent.m";
                v30 = 2048;
                v31 = 1967;
                v32 = 2112;
                v33 = v12;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: NRPairedDeviceRegistry vended screen scale not of type NSNumber: %@)", buf, 0x2Au);
              }
            }

            _NPKAssertAbort();
          }

          [v12 floatValue];
          v10 = v16;
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v7);
  }

  else
  {
    v10 = 2.0;
  }

  v17 = pk_General_log();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

  if (v18)
  {
    v19 = pk_General_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v27 = *&v10;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Notice: Retrieved gizmo screen scale %f", buf, 0xCu);
    }
  }

  return v10;
}

- (void)_addPassToDatabaseAndPrepareForTransmissionToGizmo:(id)a3 isUpdate:(BOOL)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  NPKGizmoScreenScale();
  [v8 setPreferredImageScale:?];
  [v8 setPreferredImageSuffix:NPKWatchSpecificAssetSuffix];
  v11 = NPKPairedDeviceSecureElementIdentifiers();
  if (v11)
  {
    v12 = [v8 paymentPass];
    [v12 updateDevicePaymentApplicationsWithSecureElementIdentifiers:v11];
  }

  [v8 flushLoadedImageSets];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000186CC;
  v28[3] = &unk_100070FA8;
  v13 = v8;
  v29 = v13;
  v30 = self;
  v14 = v10;
  v31 = v14;
  [v13 loadImageSetAsync:4 preheat:1 withCompletion:v28];
  dispatch_group_enter(v14);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100018990;
  v26[3] = &unk_100071000;
  v15 = v14;
  v27 = v15;
  [v13 loadContentAsyncWithCompletion:v26];
  dispatch_group_enter(v15);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100018998;
  v24[3] = &unk_100071000;
  v25 = v15;
  v16 = v15;
  [v13 loadImageSetAsync:1 preheat:1 withCompletion:v24];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000189A0;
  block[3] = &unk_100071738;
  v20 = v13;
  v21 = self;
  v23 = a4;
  v22 = v9;
  v17 = v9;
  v18 = v13;
  dispatch_group_notify(v16, &_dispatch_main_q, block);
}

- (void)_removePendingAppleCardNotification
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v3 localizedStringForKey:@"ACCOUNTPASS_PRODUCT_NAME" value:&stru_100073088 table:@"AccountPass"];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ACCOUNTPASS_PROVISIONING_ERROR" value:&stru_100073088 table:@"AccountPass"];

  v6 = [(NPKCompanionAgent *)self bulletinManager];
  [v6 removeBridgeBulletinsWithTitle:v7 message:v5 actionURL:0];
}

- (void)_removePassFromDatabaseWithID:(id)a3
{
  v6 = a3;
  v4 = [(NPKCompanionAgent *)self gizmoDatabase];
  v5 = [v4 removePassWithUniqueID:v6];
}

- (void)_resyncPassUniqueIDUpdates:(id)a3 andRemovals:(id)a4 withResyncID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(NPKCompanionAgent *)self shouldDropIDSMessages]|| NPKIsPairedDeviceStandalone())
  {
    if (v13)
    {
      v13[2](v13);
    }
  }

  else
  {
    v14 = [NSNumber numberWithUnsignedInt:arc4random()];
    v15 = pk_General_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v16)
    {
      v17 = pk_General_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        *&buf[4] = v14;
        *&buf[12] = 2112;
        *&buf[14] = v10;
        *&buf[22] = 2112;
        v61 = v11;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Notice: Resyncing with sync ID: %@ pass updates: %@ removals: %@", buf, 0x20u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v61 = sub_10000CABC;
    v62 = sub_10000CACC;
    v18 = self;
    v63 = v18;
    v57[0] = 0;
    v57[1] = v57;
    v57[2] = 0x2020000000;
    v57[3] = 0;
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v19 = [v10 count];
    v56 = &v19[[v11 count]];
    if ((NPKIsRunningInUIOnlyDemoMode() & 1) != 0 || NPKIsRunningInStoreDemoMode())
    {
      if (v13)
      {
        v13[2](v13);
      }
    }

    else
    {
      [(NPKCompanionAgent *)v18 setLastKnownResyncID:v12];
      v20 = dispatch_group_create();
      if (v54[3])
      {
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_1000196E0;
        v44[3] = &unk_1000717D8;
        v21 = v12;
        v45 = v21;
        v47 = v57;
        v48 = &v53;
        v49 = buf;
        v22 = v14;
        v46 = v22;
        [v11 enumerateObjectsUsingBlock:v44];
        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = sub_100019F98;
        v37[3] = &unk_100071828;
        v38 = v21;
        v41 = v57;
        v42 = &v53;
        v39 = v20;
        v43 = buf;
        v40 = v22;
        [v10 enumerateObjectsUsingBlock:v37];

        v23 = v45;
      }

      else
      {
        v24 = pk_General_log();
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

        if (v25)
        {
          v26 = pk_General_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *v58 = 138412290;
            v59 = v12;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Notice: We have zero adds / removes to send; the companion just probably has an outdated expected hash.  Sending new expected hash (resync ID %@).", v58, 0xCu);
          }
        }

        v23 = objc_alloc_init(NPKProtoNewLibraryHashRequest);
        v34 = objc_alloc_init(NPKProtoHash);
        v27 = +[NPKGizmoDatabase sharedDatabase];
        v28 = [v27 libraryHashForWatchOSMajorVersion:{-[NPKCompanionAgent versionForCompleteHash](v18, "versionForCompleteHash")}];
        [v34 setHashData:v28];

        [v23 setLibraryHash:v34];
        [v23 setSyncID:{objc_msgSend(v14, "unsignedIntValue")}];
        if (v12)
        {
          [v23 setResyncID:{objc_msgSend(v12, "unsignedIntValue")}];
        }

        v29 = [(NPKCompanionAgent *)v18 lastKnownResyncID];

        if (v29)
        {
          v30 = [(NPKCompanionAgent *)v18 lastKnownResyncID];
          [v23 setLastKnownResyncID:{objc_msgSend(v30, "unsignedIntValue")}];
        }

        v31 = [IDSProtobuf alloc];
        v32 = [v23 data];
        v33 = [v31 initWithProtobufData:v32 type:8 isResponse:0];

        if (v33)
        {
          v50[0] = _NSConcreteStackBlock;
          v50[1] = 3221225472;
          v50[2] = sub_100019490;
          v50[3] = &unk_100070DB8;
          v52 = buf;
          v51 = v33;
          [(NPKCompanionAgent *)v18 _performAfterFirstDeviceUnlockAndPairedSyncAllowed:v50];
        }
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001A98C;
      block[3] = &unk_100070E08;
      v36 = v13;
      dispatch_group_notify(v20, &_dispatch_main_q, block);
    }

    _Block_object_dispose(&v53, 8);
    _Block_object_dispose(v57, 8);
    _Block_object_dispose(buf, 8);
  }
}

- (BOOL)_shouldSyncPassFromCompanionPassLibrary:(id)a3
{
  v3 = a3;
  v4 = [v3 npkCompleteHash];
  if (v4 && [v3 passType] != 1)
  {
    v5 = NPKShouldUseStandaloneSyncForPass();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_doFullSyncWithResyncID:(id)a3
{
  v4 = a3;
  if (NPKIsPairedDeviceStandalone())
  {
    v5 = pk_General_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_General_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Telling sync engine to sync (full sync was requested with resync ID %@)", buf, 0xCu);
      }
    }

    v8 = [(NPKCompanionAgent *)self passSyncService];
    [v8 initiateSync];
  }

  v9 = pk_General_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_General_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Notice: Performing full sync with resync ID %@", buf, 0xCu);
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001ABDC;
  v13[3] = &unk_100070E90;
  v13[4] = self;
  v14 = v4;
  v12 = v4;
  [(NPKCompanionAgent *)self _performAfterFirstDeviceUnlockAndPairedSyncAllowed:v13];
}

- (void)_doSync
{
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notice: Sync requested", buf, 2u);
    }
  }

  if (NPKIsPairedDeviceStandalone())
  {
    v6 = [(NPKCompanionAgent *)self passSyncService];
    [v6 initiateSync];
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001B5A8;
  v7[3] = &unk_100071000;
  v7[4] = self;
  [(NPKCompanionAgent *)self _performAfterFirstDeviceUnlockAndPairedSyncAllowed:v7];
}

- (void)_checkHasCandidateRelevantPassesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NPKCompanionAgent *)self temporarilyRetainedPassLibrary];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001C050;
  v7[3] = &unk_100071A20;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 fetchHasCandidatePasses:v7];
}

- (void)_reconcilePassesInDatabasePassingTest:(id)a3 withNewPassUniqueIDs:(id)a4 passAccessor:(id)a5 addedPassHandler:(id)a6 updatedPassHandler:(id)a7 removedPassHandler:(id)a8 completion:(id)a9
{
  v14 = a3;
  v15 = a5;
  v48 = a6;
  v51 = a7;
  v49 = a8;
  v53 = a9;
  v16 = [a4 mutableCopy];
  v17 = +[NSMutableSet set];
  v18 = +[NSMutableSet set];
  v19 = +[NPKGizmoDatabase sharedDatabase];
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_10001C754;
  v71[3] = &unk_100071A48;
  v20 = v14;
  v75 = v20;
  v21 = v15;
  v76 = v21;
  v71[4] = self;
  v22 = v17;
  v72 = v22;
  v54 = v18;
  v73 = v54;
  v23 = v16;
  v74 = v23;
  [v19 enumerateAllPassesWithBlock:v71 includeImageSets:0];

  v24 = [[NPKWorkQueue alloc] initWithQueue:&_dispatch_main_q];
  v25 = [NSString stringWithFormat:@"reconcile-%d", (rand() % 1000)];
  [v24 setWorkQueueName:v25];

  v26 = [(NPKCompanionAgent *)self reconcileWorkQueues];
  [v26 addObject:v24];

  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_10001C8A8;
  v66[3] = &unk_100071A98;
  v27 = v24;
  v67 = v27;
  v28 = v21;
  v68 = v28;
  v69 = v48;
  v29 = v20;
  v70 = v29;
  v30 = v48;
  [v23 enumerateObjectsUsingBlock:v66];
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_10001CB48;
  v61[3] = &unk_100071A98;
  v31 = v27;
  v62 = v31;
  v63 = v28;
  v64 = v51;
  v65 = v29;
  v32 = v29;
  v33 = v51;
  v52 = v28;
  [v22 enumerateObjectsUsingBlock:v61];
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_10001CDE8;
  v58[3] = &unk_100071AE8;
  v34 = v31;
  v59 = v34;
  v60 = v49;
  v50 = v49;
  [v54 enumerateObjectsUsingBlock:v58];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_10001CFA8;
  v55[3] = &unk_100071B10;
  v56 = v34;
  v57 = v53;
  v55[4] = self;
  v35 = v34;
  v36 = v53;
  [v35 performWork:v55];
  v37 = pk_General_log();
  LODWORD(v29) = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);

  if (v29)
  {
    v38 = pk_General_log();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [v23 count];
      v40 = v33;
      v41 = v32;
      v42 = v30;
      v43 = v23;
      v44 = v22;
      v45 = [v22 count];
      v46 = [v54 count];
      *buf = 67109632;
      v78 = v39;
      v79 = 1024;
      v80 = v45;
      v22 = v44;
      v23 = v43;
      v30 = v42;
      v32 = v41;
      v33 = v40;
      v81 = 1024;
      v82 = v46;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Notice: Reconciled passes with pass library: %u adds; %u updates; %u removals", buf, 0x14u);
    }
  }
}

- (void)_reconcileDatabaseWithPaymentPassDirectoryWithAddedPassHandler:(id)a3 updatedPassHandler:(id)a4 removedPassHandler:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
  v15 = [v14 uniqueIDs];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001D1B8;
  v16[3] = &unk_100071B78;
  v16[4] = self;
  [(NPKCompanionAgent *)self _reconcilePassesInDatabasePassingTest:&stru_100071B50 withNewPassUniqueIDs:v15 passAccessor:v16 addedPassHandler:v13 updatedPassHandler:v12 removedPassHandler:v11 completion:v10];
}

- (void)_reconcileDatabaseWithCompanionPassLibraryWithAddedPassHandler:(id)a3 updatedPassHandler:(id)a4 removedPassHandler:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = +[NSMutableDictionary dictionary];
  v15 = [(NPKCompanionAgent *)self passLibrary];
  v16 = [v15 passes];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10001D45C;
  v29[3] = &unk_100071BA0;
  v17 = v14;
  v30 = v17;
  [v16 enumerateObjectsUsingBlock:v29];

  v18 = [v17 allKeys];
  v19 = [NSSet setWithArray:v18];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10001D4C0;
  v28[3] = &unk_100071BC8;
  v28[4] = self;
  v20 = objc_retainBlock(v28);
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_10001D4CC;
  v26 = &unk_100071B78;
  v27 = v17;
  v21 = v17;
  v22 = objc_retainBlock(&v23);
  [(NPKCompanionAgent *)self _reconcilePassesInDatabasePassingTest:v20 withNewPassUniqueIDs:v19 passAccessor:v22 addedPassHandler:v13 updatedPassHandler:v12 removedPassHandler:v11 completion:v10, v23, v24, v25, v26];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NPKCompanionAgent *)self initializedPairingIdentifier];

  if (!v8)
  {
    v20 = pk_General_log();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

    if (!v21)
    {
      goto LABEL_13;
    }

    v18 = pk_General_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v22 = NPKPairedOrPairingDevice();
      *buf = 138412802;
      v45 = v7;
      v46 = 2112;
      v47 = v6;
      v48 = 2112;
      v49 = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Warning: Daemon is not initialized; rejecting incoming connection %@ on listener %@\n\tPaired device: %@", buf, 0x20u);
    }

LABEL_26:
    v19 = 0;
    goto LABEL_27;
  }

  v9 = [(NPKCompanionAgent *)self xpcListener];

  if (v9 == v6)
  {
    v23 = pk_General_log();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

    if (v24)
    {
      v25 = pk_General_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v45 = v7;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Notice: new NPKCompanionAgent standard listener: %@", buf, 0xCu);
      }
    }

    v18 = [v7 valueForEntitlement:@"com.apple.NPKCompanionAgent.client"];
    if (v18)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v18 BOOLValue])
        {
          v26 = [[NPDCompanionAgentClient alloc] initWithConnection:v7];
          [(NPDCompanionAgentClient *)v26 setDelegate:self];
          [(NPDCompanionAgentClient *)v26 setDataSource:self];
          v27 = NPKCompanionClientProtocolInterface();
          [v7 setRemoteObjectInterface:v27];

          v28 = NPKCompanionServerProtocolInterface();
          [v7 setExportedInterface:v28];

          [v7 setExportedObject:v26];
          objc_initWeak(buf, v7);
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_10001DA8C;
          v41[3] = &unk_1000712C0;
          objc_copyWeak(&v43, buf);
          v29 = v26;
          v42 = v29;
          [v7 setInvalidationHandler:v41];
          [v7 resume];
          v30 = [(NPKCompanionAgent *)self activeClientsQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10001DB70;
          block[3] = &unk_100070E90;
          block[4] = self;
          v40 = v29;
          v31 = v29;
          dispatch_sync(v30, block);

          objc_destroyWeak(&v43);
          objc_destroyWeak(buf);
LABEL_9:
          v19 = 1;
LABEL_27:

          goto LABEL_28;
        }
      }
    }

    v32 = pk_General_log();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);

    if (v33)
    {
      v34 = pk_General_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = [v7 processIdentifier];
        *buf = 134217984;
        v45 = v35;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Error: A process with PID %llu attempted to connect to NPKCompanionAgent but lacks the com.apple.NPKCompanionAgent.client entitlement", buf, 0xCu);
      }
    }

    goto LABEL_26;
  }

  v10 = [(NPKCompanionAgent *)self libraryListener];

  if (v10 == v6)
  {
    v11 = pk_General_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = pk_General_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v45 = v7;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: new NPKCompanionAgent library listener: %@", buf, 0xCu);
      }
    }

    v14 = [NPDCompanionPassLibrary alloc];
    v15 = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
    v16 = [(NPDCompanionPassLibrary *)v14 initWithConnection:v7 companionPaymentPassDatabase:v15 dataSource:self];

    [(NPDPassLibrary *)v16 setDelegate:self];
    [v7 setExportedObject:v16];
    [v7 resume];
    v17 = [(NPKCompanionAgent *)self activeClientsQueue];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10001DBC4;
    v37[3] = &unk_100070E90;
    v37[4] = self;
    v38 = v16;
    v18 = v16;
    dispatch_sync(v17, v37);

    goto LABEL_9;
  }

LABEL_13:
  v19 = 0;
LABEL_28:

  return v19;
}

- (NSSet)companionPaymentPassUniqueIDs
{
  v2 = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
  v3 = [v2 uniqueIDs];

  return v3;
}

- (id)companionPaymentPassWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
  v6 = [v5 paymentPassWithUniqueID:v4];

  return v6;
}

- (id)paymentWebService
{
  v2 = [(NPKCompanionAgent *)self remoteAdminConnectionServiceAgent];
  v3 = [v2 webService];

  return v3;
}

- (void)serviceProviderDataForPassWithUniqueIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NPKCompanionAgent *)self paymentWebService];
  v9 = [v8 targetDevice];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 serviceProviderDataForPassWithUniqueIdentifier:v6 encrypted:0 completion:v7];
  }

  else
  {
    v10 = pk_General_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v12 = pk_General_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [v9 description];
        v15 = 138412546;
        v16 = v13;
        v17 = 2112;
        v18 = v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error: Current target device: %@, does not support request service provider data for unique ID: %@", &v15, 0x16u);
      }
    }

    v14 = [NSError errorWithDomain:NPKErrorDomain code:-1006 userInfo:0];
    v7[2](v7, 0, v14);
  }
}

- (void)encryptedServiceProviderDataForPassWithUniqueIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NPKCompanionAgent *)self paymentWebService];
  v9 = [v8 targetDevice];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001E0D0;
    v15[3] = &unk_100071BF0;
    v16 = v7;
    [v9 serviceProviderDataForPassWithUniqueIdentifier:v6 encrypted:1 completion:v15];
    v10 = v16;
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
        v14 = [v9 description];
        *buf = 138412546;
        v18 = v14;
        v19 = 2112;
        v20 = v6;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error: Current target device: %@, does not support request encrypted service provider data for unique ID: %@", buf, 0x16u);
      }
    }

    v10 = [NSError errorWithDomain:NPKErrorDomain code:-1006 userInfo:0];
    (*(v7 + 2))(v7, 0, v10);
  }
}

- (void)paymentSetupFeaturesForConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NPKCompanionAgent *)self paymentWebService];
  v9 = [v8 targetDevice];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 paymentSetupFeaturesForConfiguration:v6 completion:v7];
  }

  else
  {
    v10 = pk_General_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v12 = pk_General_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [v9 description];
        v14 = 138412546;
        v15 = v13;
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error: Current target device: %@ does not support request payment setup features for configuration: %@", &v14, 0x16u);
      }
    }

    v7[2](v7, 0);
  }
}

- (id)remoteDevicesManagerPairedDeviceOSVersion:(id)a3
{
  v3 = [(NPKCompanionAgent *)self paymentWebService];
  v4 = [v3 targetDevice];
  v5 = [v4 osVersion];

  return v5;
}

- (void)remoteDevicesManager:(id)a3 provisionedCredentialCountsForType:(unint64_t)a4 completion:(id)a5
{
  v5 = a5;
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromNPKIDVRemoteDeviceCredentialType();
      *buf = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested provisionedCredentialCountsForType:%@", buf, 0xCu);
    }
  }

  v10 = v5;
  NPKGuaranteeMainThread();
}

- (void)remoteDevicesManager:(id)a3 remoteBiometricAuthenticationStatusForCredentialType:(unint64_t)a4 completion:(id)a5
{
  v5 = a5;
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromNPKIDVRemoteDeviceCredentialType();
      *buf = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Requested remoteBiometricAuthenticationStatusForCredentialType:%@", buf, 0xCu);
    }
  }

  v10 = v5;
  NPKGuaranteeMainThread();
}

- (void)passLibrary:(id)a3 requestsAdditionOfPasses:(id)a4 completion:(id)a5
{
  v7 = a4;
  v18 = a5;
  v8 = dispatch_group_create();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        if ([v14 passType] == 1)
        {
          dispatch_group_enter(v8);
          v15 = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
          v16 = [v14 paymentPass];
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_10001ED40;
          v21[3] = &unk_100071C90;
          v22 = v8;
          [v15 savePaymentPass:v16 requireExisting:0 requireNewer:0 completion:v21];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001ED48;
  block[3] = &unk_100070E08;
  v20 = v18;
  v17 = v18;
  dispatch_group_notify(v8, &_dispatch_main_q, block);
}

- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5
{
  v5 = a4;
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notice: Got property did change notification (property: %@)", buf, 0xCu);
    }
  }

  NPKGuaranteeMainThread();
}

- (void)fetchCatalogIfChanged:(id)a3
{
  v4 = a3;
  v5 = [(NPKCompanionAgent *)self companionCatalogManager];
  v6 = [(NPKCompanionAgent *)self passLibrary];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001EF74;
  v9[3] = &unk_100071CE0;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  [v6 getPassesAndCatalog:0 withHandler:v9];
}

- (void)_handleFirstDeviceUnlock
{
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notice: Handling first unlock notification", v6, 2u);
    }
  }

  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(NPKCompanionAgent *)self _doPostUnlockPairedSyncAllowedWork];
}

- (void)_performAfterFirstDeviceUnlockAndPairedSyncAllowed:(id)a3
{
  v4 = a3;
  v3 = v4;
  NPKGuaranteeMainThread();
}

- (void)_performAfterFirstDeviceUnlock:(id)a3
{
  v4 = a3;
  v3 = v4;
  NPKGuaranteeMainThread();
}

- (void)_registerForFirstDeviceUnlockNotifications
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FC90;
  block[3] = &unk_100071000;
  block[4] = self;
  if (qword_10007D5C0 != -1)
  {
    dispatch_once(&qword_10007D5C0, block);
  }
}

- (void)_removeCompanionDatabasePassWithUniqueID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001FE1C;
  v10[3] = &unk_100071D90;
  v11 = v6;
  v9 = v6;
  [v8 removePaymentPassWithUniqueID:v7 completion:v10];
}

- (void)handleUpdatedSettings:(unint64_t)a3 forPassWithUniqueID:(id)a4
{
  v6 = a4;
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v57 = a3;
      v58 = 2112;
      v59 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notice: Handling updated settings %lu for pass with unique ID %@", buf, 0x16u);
    }
  }

  v10 = [(NPKCompanionAgent *)self passLibrary];
  v11 = [v10 passWithUniqueID:v6];
  v12 = v11;
  if (!v11 || [v11 passType] == 1)
  {
    v13 = +[NPKGizmoDatabase sharedDatabase];
    v14 = [v13 passForUniqueID:v6];

    if (v14)
    {
      v15 = [v14 settings];
      v16 = pk_Sync_log();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

      if (v17)
      {
        v18 = pk_Sync_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v57 = v6;
          v58 = 2048;
          v59 = v15;
          v60 = 2048;
          v61 = a3;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Notice: Checking for settings update for watch pass with unique ID: %@. Current settings: %lu, new settings: %lu", buf, 0x20u);
        }
      }

      v50 = v15;
      if (v15 == a3)
      {
        goto LABEL_41;
      }

      v49 = self;
      v19 = [v14 passTypeIdentifier];
      v20 = [v19 copy];

      v21 = pk_General_log();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

      if (v22)
      {
        v23 = pk_General_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [v14 uniqueID];
          [v20 length];
          v25 = NSStringFromBOOL();
          *buf = 138412802;
          v57 = v24;
          v58 = 2048;
          v59 = a3;
          v60 = 2112;
          v61 = v25;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Notice: Updating settings for watch pass with uniqueID: %@ to settings: %lu. Pass has pass type identifier?: %@", buf, 0x20u);
        }
      }

      [v14 setSettings:a3];
      v26 = +[NPKGizmoDatabase sharedDatabase];
      v27 = [v26 savePass:v14 isLocalPass:0];

      if ((a3 & 8) == 0)
      {
        v28 = pk_Payment_log();
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

        if (v29)
        {
          v30 = pk_Payment_log();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v57 = v6;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Notice: Removing transactions for %@ from local database", buf, 0xCu);
          }
        }

        v46 = v20;
        v47 = a3;
        v48 = v10;
        v31 = [v14 paymentPass];
        v32 = [v31 deviceTransactionSourceIdentifiers];

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v33 = v32;
        v34 = [v33 countByEnumeratingWithState:&v51 objects:v55 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v52;
          do
          {
            for (i = 0; i != v35; i = i + 1)
            {
              if (*v52 != v36)
              {
                objc_enumerationMutation(v33);
              }

              v38 = *(*(&v51 + 1) + 8 * i);
              v39 = +[NPKGizmoDatabase sharedDatabase];
              [v39 removeTransactionsForTransactionSource:v38];
            }

            v35 = [v33 countByEnumeratingWithState:&v51 objects:v55 count:16];
          }

          while (v35);
        }

        a3 = v47;
        v10 = v48;
        v20 = v46;
      }

      [(NPKCompanionAgent *)v49 notifySettingsChangedForPassWithUniqueID:v6 previousSettings:v50 newSettings:a3];
    }

    else
    {
      v43 = pk_Sync_log();
      v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);

      if (!v44)
      {
LABEL_41:

        goto LABEL_42;
      }

      v45 = pk_Sync_log();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v57 = v6;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Warning: Got updated settings for pass %@ that is not in companion or watch pass libraries", buf, 0xCu);
      }

      v20 = v45;
    }

    goto LABEL_41;
  }

  v40 = pk_Sync_log();
  v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);

  if (v41)
  {
    v42 = pk_Sync_log();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v57 = v6;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Notice: Updating settings for companion pass %@", buf, 0xCu);
    }
  }

  [v12 setSettings:a3];
LABEL_42:
}

- (void)fetchPendingTransactionForPassWithUniqueID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NPKCompanionAgent *)self maintenanceService];
  [v8 fetchPendingTransactionForPassWithUniqueID:v7 completion:v6];
}

- (void)markPendingTransactionAsProcessedForPassWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = [(NPKCompanionAgent *)self maintenanceService];
  [v5 markPendingTransactionAsProcessedForPassWithUniqueID:v4];
}

- (void)notifySettingsChangedForPassWithUniqueID:(id)a3 previousSettings:(unint64_t)a4 newSettings:(unint64_t)a5
{
  v8 = a3;
  v9 = +[NSDistributedNotificationCenter defaultCenter];
  v12[0] = PKPassLibraryUniqueIDUserInfoKey;
  v12[1] = PKPassLibrarySettingsUserInfoKey;
  v13[0] = v8;
  v10 = [NSNumber numberWithUnsignedInteger:a5];
  v13[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v9 postNotificationName:@"PKPassLibraryRemotePassSettingsDidChangeNotification" object:0 userInfo:v11];

  [(NPKCompanionAgent *)self _handlePotentialTransactionServiceEnabledChangeWithPreviousSettings:a4 newSettings:a5 uniqueID:v8];
  [(NPKCompanionAgent *)self _handlePotentialMessageServiceEnabledChangeWithPreviousSettings:a4 newSettings:a5 uniqueID:v8];
}

- (void)_handlePotentialTransactionServiceEnabledChangeWithPreviousSettings:(unint64_t)a3 newSettings:(unint64_t)a4 uniqueID:(id)a5
{
  v6 = a3;
  v8 = a5;
  if (((v6 >> 3) & 1) != ((a4 >> 3) & 1))
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_10000CABC;
    v30 = sub_10000CACC;
    v31 = 0;
    v9 = [(NPKCompanionAgent *)self activeClientsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000208D0;
    block[3] = &unk_100070DB8;
    block[4] = self;
    block[5] = &v26;
    dispatch_sync(v9, block);

    v10 = pk_Payment_log();
    LODWORD(v9) = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    v11 = a4 & 8;
    if (v9)
    {
      v12 = pk_Payment_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = @"disabled";
        v14 = v27[5];
        *buf = 138412802;
        if (v11)
        {
          v13 = @"enabled";
        }

        v34 = v13;
        v35 = 2112;
        v36 = v8;
        v37 = 2112;
        v38 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Notice: Transactions svc %@ for pass with unique ID %@; sending to %@", buf, 0x20u);
      }
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = v27[5];
    v16 = [v15 countByEnumeratingWithState:&v21 objects:v32 count:16];
    if (v16)
    {
      v17 = *v22;
      do
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = [*(*(&v21 + 1) + 8 * v18) connection];
          v20 = [v19 remoteObjectProxy];

          [v20 paymentPassWithUniqueIdentifier:v8 didEnableTransactionService:v11 != 0];
          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v15 countByEnumeratingWithState:&v21 objects:v32 count:16];
      }

      while (v16);
    }

    _Block_object_dispose(&v26, 8);
  }
}

- (void)_handlePotentialMessageServiceEnabledChangeWithPreviousSettings:(unint64_t)a3 newSettings:(unint64_t)a4 uniqueID:(id)a5
{
  v6 = a3;
  v8 = a5;
  if (((v6 >> 6) & 1) != ((a4 >> 6) & 1))
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_10000CABC;
    v30 = sub_10000CACC;
    v31 = 0;
    v9 = [(NPKCompanionAgent *)self activeClientsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100020C24;
    block[3] = &unk_100070DB8;
    block[4] = self;
    block[5] = &v26;
    dispatch_sync(v9, block);

    v10 = pk_Payment_log();
    LODWORD(v9) = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    v11 = a4 & 0x40;
    if (v9)
    {
      v12 = pk_Payment_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = @"disabled";
        v14 = v27[5];
        *buf = 138412802;
        if (v11)
        {
          v13 = @"enabled";
        }

        v34 = v13;
        v35 = 2112;
        v36 = v8;
        v37 = 2112;
        v38 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Notice: Message svc %@ for pass with unique ID %@; sending to %@", buf, 0x20u);
      }
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = v27[5];
    v16 = [v15 countByEnumeratingWithState:&v21 objects:v32 count:16];
    if (v16)
    {
      v17 = *v22;
      do
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = [*(*(&v21 + 1) + 8 * v18) connection];
          v20 = [v19 remoteObjectProxy];

          [v20 paymentPassWithUniqueIdentifier:v8 didEnableMessageService:v11 != 0];
          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v15 countByEnumeratingWithState:&v21 objects:v32 count:16];
      }

      while (v16);
    }

    _Block_object_dispose(&v26, 8);
  }
}

@end