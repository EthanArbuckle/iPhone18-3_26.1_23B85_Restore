@interface NPKCompanionAgent
- (BOOL)_shouldSyncPassFromCompanionPassLibrary:(id)library;
- (BOOL)hasAnyWatchPaymentPasses;
- (BOOL)hasCompanionPaymentPassWithUniqueID:(id)d;
- (BOOL)hasWatchPaymentPassRequiringVerificationWithUniqueID:(id)d;
- (BOOL)hasWatchPaymentPassWithReaderIdentifier:(id)identifier;
- (BOOL)hasWatchPaymentPassWithUniqueID:(id)d;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CGSize)gizmoScreenSize;
- (NPKCompanionAgent)init;
- (NSSet)companionPaymentPassUniqueIDs;
- (PKPassLibrary)passLibrary;
- (double)gizmoScreenScale;
- (id)companionMaintenanceService:(id)service paymentPassForUniqueID:(id)d;
- (id)companionPaymentPassWithUniqueID:(id)d;
- (id)libraryHash;
- (id)paymentWebService;
- (id)readerIdentifierForCompanionPaymentPassWithUniqueID:(id)d;
- (id)remoteDevicesManagerPairedDeviceOSVersion:(id)version;
- (id)serializedAddPass:(id)pass withNewLibraryHash:(id)hash omitHashForChunking:(BOOL)chunking catalog:(id)catalog syncID:(id)d resyncID:(id)iD;
- (id)serializedCatalog:(id)catalog;
- (id)serializedPass:(id)pass;
- (id)serializedRemovePassWithUniqueID:(id)d withNewLibraryHash:(id)hash omitHashForChunking:(BOOL)chunking catalog:(id)catalog syncID:(id)iD resyncID:(id)resyncID;
- (id)serializedUpdatePass:(id)pass fromPassWithManifestHash:(id)hash withNewLibraryHash:(id)libraryHash omitHashForChunking:(BOOL)chunking catalog:(id)catalog syncID:(id)d resyncID:(id)iD;
- (id)temporarilyRetainedPassLibrary;
- (unint64_t)companionPassSyncService:(id)service settingsForPassWithUniqueID:(id)d;
- (void)_addPassToDatabaseAndPrepareForTransmissionToGizmo:(id)gizmo isUpdate:(BOOL)update withCompletion:(id)completion;
- (void)_checkHasCandidateRelevantPassesWithCompletion:(id)completion;
- (void)_createSyncServiceIfNecessary;
- (void)_disconnectAllClients;
- (void)_doFullSyncWithResyncID:(id)d;
- (void)_doSync;
- (void)_fetchRelevantPassesAndNotifyGizmo;
- (void)_handleActiveDeviceChanged:(id)changed;
- (void)_handleAddAndSendToGizmoForPass:(id)pass syncID:(id)d completion:(id)completion;
- (void)_handleBulletinDistributorWillSendBulletinToGizmoWithSectionID:(id)d;
- (void)_handleCompanionPassAddedWithID:(id)d;
- (void)_handleCompanionPassLibraryChanged:(id)changed;
- (void)_handleCompanionPassRemovedWithID:(id)d;
- (void)_handleCompanionPassUpdatedWithID:(id)d;
- (void)_handleCompanionPaymentPassDatabaseChanged:(id)changed;
- (void)_handleCompanionPaymentPassDatabaseChangedBroadcastUnconditionally:(BOOL)unconditionally;
- (void)_handleCompanionSyncDatabaseChanged:(id)changed;
- (void)_handleDeviceCapabilitiesDidChange;
- (void)_handleFirstDeviceUnlock;
- (void)_handlePassbookGlobalPreferencesChanged;
- (void)_handlePaymentOptionsDefaultsChanged;
- (void)_handlePotentialMessageServiceEnabledChangeWithPreviousSettings:(unint64_t)settings newSettings:(unint64_t)newSettings uniqueID:(id)d;
- (void)_handlePotentialTransactionServiceEnabledChangeWithPreviousSettings:(unint64_t)settings newSettings:(unint64_t)newSettings uniqueID:(id)d;
- (void)_handlePublicWalletPreferencesChanged:(id)changed;
- (void)_handleRelevantPassesDidChange:(id)change;
- (void)_handleRemovalAndSendToGizmoForPassWithUniqueID:(id)d syncID:(id)iD completion:(id)completion;
- (void)_handleStockholmPreferencesChanged;
- (void)_handleUpdateAndSendToGizmoForPass:(id)pass syncID:(id)d completion:(id)completion;
- (void)_handleWalletPreferencesChanged:(id)changed;
- (void)_initializePairingSpecificStateForDevice:(id)device;
- (void)_logDebugInformationWithExpectedPairedDeviceID:(id)d;
- (void)_migrateLoggingDefaults;
- (void)_performAfterFirstDeviceUnlock:(id)unlock;
- (void)_performAfterFirstDeviceUnlockAndPairedSyncAllowed:(id)allowed;
- (void)_reconcileDatabaseWithCompanionPassLibraryWithAddedPassHandler:(id)handler updatedPassHandler:(id)passHandler removedPassHandler:(id)removedPassHandler completion:(id)completion;
- (void)_reconcileDatabaseWithPaymentPassDirectoryWithAddedPassHandler:(id)handler updatedPassHandler:(id)passHandler removedPassHandler:(id)removedPassHandler completion:(id)completion;
- (void)_reconcilePassesInDatabasePassingTest:(id)test withNewPassUniqueIDs:(id)ds passAccessor:(id)accessor addedPassHandler:(id)handler updatedPassHandler:(id)passHandler removedPassHandler:(id)removedPassHandler completion:(id)completion;
- (void)_registerDarwinNotificationHandler;
- (void)_registerDistributedNotificationHandler;
- (void)_registerForFirstDeviceUnlockNotifications;
- (void)_removeCompanionDatabasePassWithUniqueID:(id)d completion:(id)completion;
- (void)_removePassFromDatabaseWithID:(id)d;
- (void)_removePendingAppleCardNotification;
- (void)_resyncPassUniqueIDUpdates:(id)updates andRemovals:(id)removals withResyncID:(id)d completion:(id)completion;
- (void)_stopDroppingIDSMessages;
- (void)_tearDownPairingSpecificStateForPairingIdentifier:(id)identifier;
- (void)_updateInitializationForActiveDevice;
- (void)dealloc;
- (void)device:(id)device propertyDidChange:(id)change fromValue:(id)value;
- (void)didReceiveCheckCompanionPeerPaymentState;
- (void)didReceivePaymentSetupRequestForApplicationName:(id)name;
- (void)doesWatchSupportPassLikeCompanionPassWithUniqueID:(id)d withCompletion:(id)completion;
- (void)encryptedServiceProviderDataForPassWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)fetchCatalogIfChanged:(id)changed;
- (void)fetchPendingTransactionForPassWithUniqueID:(id)d completion:(id)completion;
- (void)handleGizmoInitiatedAddPassRequest:(id)request;
- (void)handleGizmoInitiatedDeletePassRequest:(id)request;
- (void)handleGizmoReceivedNewLibraryHashRequest:(id)request;
- (void)handleRelevantPassesNeededRequest:(id)request;
- (void)handleUpdatedSettings:(unint64_t)settings forPassWithUniqueID:(id)d;
- (void)lowPowerModeMonitor:(id)monitor didUpdateLowPowerModeEnabled:(BOOL)enabled;
- (void)markPendingTransactionAsProcessedForPassWithUniqueID:(id)d;
- (void)notifySettingsChangedForPassWithUniqueID:(id)d previousSettings:(unint64_t)settings newSettings:(unint64_t)newSettings;
- (void)passLibrary:(id)library requestsAdditionOfPasses:(id)passes completion:(id)completion;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateBalanceReminder:(id)reminder forBalance:(id)balance;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithBalances:(id)balances;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithCredentials:(id)credentials forPaymentApplicationIdentifier:(id)applicationIdentifier completion:(id)completion;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitAppletState:(id)state;
- (void)paymentSetupFeaturesForConfiguration:(id)configuration completion:(id)completion;
- (void)postAddReminderNotificationForPassWithUniqueID:(id)d;
- (void)postVerifyReminderNotificationForPassWithUniqueID:(id)d;
- (void)remoteDevicesManager:(id)manager provisionedCredentialCountsForType:(unint64_t)type completion:(id)completion;
- (void)remoteDevicesManager:(id)manager remoteBiometricAuthenticationStatusForCredentialType:(unint64_t)type completion:(id)completion;
- (void)removeReminderNotificationForPassWithUniqueID:(id)d;
- (void)resyncNeededRequest:(id)request;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)serviceProviderDataForPassWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session;
- (void)syncCoordinatorDidChangeSyncRestriction:(id)restriction;
- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction;
- (void)transactionSourceIdentifier:(id)identifier didRemoveTransactionWithIdentifier:(id)withIdentifier;
@end

@implementation NPKCompanionAgent

- (void)_fetchRelevantPassesAndNotifyGizmo
{
  if ([(NPKCompanionAgent *)self hasCandidateRelevantPasses])
  {
    lastRelevantPassRequestDate = [(NPKCompanionAgent *)self lastRelevantPassRequestDate];

    if (lastRelevantPassRequestDate)
    {
      lastRelevantPassInfoSendDate = [(NPKCompanionAgent *)self lastRelevantPassInfoSendDate];
      v5 = lastRelevantPassInfoSendDate;
      if (lastRelevantPassInfoSendDate)
      {
        [lastRelevantPassInfoSendDate timeIntervalSinceNow];
        v7 = fabs(v6) > NPKMaximumRelevancyResultsAge;
      }

      else
      {
        v7 = 1;
      }

      lastRelevantPassRequestDate2 = [(NPKCompanionAgent *)self lastRelevantPassRequestDate];
      [lastRelevantPassRequestDate2 timeIntervalSinceNow];
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
      data = [v11 data];
      v14 = [v12 initWithProtobufData:data type:2 isResponse:0];

      relevancyService = [(NPKCompanionAgent *)self relevancyService];
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

    temporarilyRetainedPassLibrary = [(NPKCompanionAgent *)self temporarilyRetainedPassLibrary];
    [temporarilyRetainedPassLibrary recomputeRelevantPassesWithSearchMode:0];

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
    uTF8String = [NRPairedDeviceRegistryPairedDeviceDidChangeCapabilitiesDarwinNotification UTF8String];
    v14 = &_dispatch_main_q;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000B290;
    handler[3] = &unk_100071248;
    objc_copyWeak(&v42, buf);
    notify_register_dispatch(uTF8String, &v2->_capabilityUpdateNotificationToken, &_dispatch_main_q, handler);

    [(NPKCompanionAgent *)v2 _registerDistributedNotificationHandler];
    [(NPKCompanionAgent *)v2 _registerDarwinNotificationHandler];
    [(NPKCompanionAgent *)v2 _migrateLoggingDefaults];
    v15 = [[NPKWorkQueue alloc] initWithQueue:0 takeOutTransactions:1];
    [(NPKCompanionAgent *)v2 setWorkQueue:v15];

    workQueue = [(NPKCompanionAgent *)v2 workQueue];
    [workQueue setWorkQueueName:@"NPKCompanionAgent-main"];

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

    stopDroppingIDSMessagesTimer = [v25 stopDroppingIDSMessagesTimer];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10000B340;
    v37[3] = &unk_100071270;
    objc_copyWeak(&v38, buf);
    dispatch_source_set_event_handler(stopDroppingIDSMessagesTimer, v37);

    stopDroppingIDSMessagesTimer2 = [v25 stopDroppingIDSMessagesTimer];
    dispatch_source_set_timer(stopDroppingIDSMessagesTimer2, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);

    stopDroppingIDSMessagesTimer3 = [v25 stopDroppingIDSMessagesTimer];
    dispatch_resume(stopDroppingIDSMessagesTimer3);

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

  stopDroppingIDSMessagesTimer = [(NPKCompanionAgent *)self stopDroppingIDSMessagesTimer];
  dispatch_source_cancel(stopDroppingIDSMessagesTimer);

  [(NPKCompanionAgent *)self setStopDroppingIDSMessagesTimer:0];
  v5.receiver = self;
  v5.super_class = NPKCompanionAgent;
  [(NPKCompanionAgent *)&v5 dealloc];
}

- (void)_updateInitializationForActiveDevice
{
  initializedPairingIdentifier = [(NPKCompanionAgent *)self initializedPairingIdentifier];
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
      v11 = initializedPairingIdentifier;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notice: Updating initialization for active device\n\tInitialized pairing identifier: %@\n\tCurrent pairing identifier: %@", &v10, 0x16u);
    }
  }

  if ((PKEqualObjects() & 1) == 0)
  {
    if (initializedPairingIdentifier)
    {
      [(NPKCompanionAgent *)self _tearDownPairingSpecificStateForPairingIdentifier:initializedPairingIdentifier];
    }

    if (v5)
    {
      [(NPKCompanionAgent *)self _initializePairingSpecificStateForDevice:v4];
    }

    else
    {
      remoteDeviceManager = [(NPKCompanionAgent *)self remoteDeviceManager];
      [remoteDeviceManager noDeviceDidBecomeActive];
    }

    [(NPKCompanionAgent *)self _disconnectAllClients];
  }
}

- (void)_initializePairingSpecificStateForDevice:(id)device
{
  deviceCopy = device;
  v57 = [deviceCopy valueForProperty:NRDevicePropertyPairingID];
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
  npsDomainAccessor = [(NPKCompanionAgent *)self npsDomainAccessor];
  v14 = [(NPDOutstandingPassDeletionStore *)v12 initWithDomainAccessor:npsDomainAccessor];
  [(NPKCompanionAgent *)self setOutstandingDeletionStore:v14];

  v15 = +[NSMutableSet set];
  [(NPKCompanionAgent *)self setReconcileWorkQueues:v15];

  v16 = +[NSMutableArray array];
  [(NPKCompanionAgent *)self setWatchOfferProvisioningCompletionHandlers:v16];

  v17 = [NPDCompanionPaymentPassDatabase alloc];
  outstandingDeletionStore = [(NPKCompanionAgent *)self outstandingDeletionStore];
  v19 = [(NPDCompanionPaymentPassDatabase *)v17 initWithDevice:deviceCopy outstandingDeletionStore:outstandingDeletionStore];

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
  v27 = deviceCopy;
  v66 = v27;
  selfCopy = self;
  [(NPKCompanionAgent *)self _performAfterFirstDeviceUnlockAndPairedSyncAllowed:v65];
  v28 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.passbook.relevancy"];
  [v28 setProtobufAction:"handleRelevantPassesNeededRequest:" forIncomingRequestsOfType:3];
  v29 = &_dispatch_main_q;
  [v28 addDelegate:self queue:&_dispatch_main_q];

  [(NPKCompanionAgent *)self setRelevancyService:v28];
  v30 = [NPKRemoteAdminConnectionServiceAgent alloc];
  companionPaymentPassDatabase = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
  v32 = [(NPKRemoteAdminConnectionServiceAgent *)v30 initWithCompanionPaymentPassDatabase:companionPaymentPassDatabase];

  [(NPKRemoteAdminConnectionServiceAgent *)v32 setDelegate:self];
  [(NPKCompanionAgent *)self setRemoteAdminConnectionServiceAgent:v32];
  v33 = objc_alloc_init(NPDCompanionMaintenanceService);
  bulletinManager = [(NPKCompanionAgent *)self bulletinManager];
  [(NPDCompanionMaintenanceService *)v33 setBulletinManager:bulletinManager];

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

  gizmoDatabase = [(NPKCompanionAgent *)self gizmoDatabase];
  v40 = [gizmoDatabase libraryHashForWatchOSMajorVersion:{-[NPKCompanionAgent versionForCompleteHash](self, "versionForCompleteHash")}];
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
  remoteDeviceManager = [(NPKCompanionAgent *)self remoteDeviceManager];
  [remoteDeviceManager deviceDidBecomeActive:v27];

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

- (void)_tearDownPairingSpecificStateForPairingIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Tearing down pairing-specific state for previous pairing identifier %@", &v17, 0xCu);
    }
  }

  remoteAdminConnectionServiceAgent = [(NPKCompanionAgent *)self remoteAdminConnectionServiceAgent];
  [remoteAdminConnectionServiceAgent setDelegate:0];
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
  generalService = [(NPKCompanionAgent *)self generalService];
  [generalService removeDelegate:self];
  [(NPKCompanionAgent *)self setGeneralService:0];
  relevancyService = [(NPKCompanionAgent *)self relevancyService];
  [relevancyService removeDelegate:self];
  [(NPKCompanionAgent *)self setRelevancyService:0];
  passSyncService = [(NPKCompanionAgent *)self passSyncService];
  [passSyncService teardownSync];
  [(NPKCompanionAgent *)self setPassSyncService:0];
  [(NPKCompanionAgent *)self setMaintenanceService:0];
  [(NPKCompanionAgent *)self setDemoModePassCopier:0];
  [(NPKCompanionAgent *)self setInitializedPairingIdentifier:0];
  remoteDeviceManager = [(NPKCompanionAgent *)self remoteDeviceManager];
  [remoteDeviceManager deviceDidBecomeInactive];

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
      v18 = identifierCopy;
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
  activeClientsQueue = [(NPKCompanionAgent *)self activeClientsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000CAD4;
  block[3] = &unk_100070DB8;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(activeClientsQueue, block);

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
            remoteProcessIdentifier = [v12 remoteProcessIdentifier];
            remoteProcessApplicationIdentifier = [v12 remoteProcessApplicationIdentifier];
            remoteProcessBundleIdentifier = [v12 remoteProcessBundleIdentifier];
            *v56 = v33;
            *&v56[4] = remoteProcessIdentifier;
            *v57 = 2112;
            *&v57[2] = remoteProcessApplicationIdentifier;
            *&v57[10] = 2112;
            *&v57[12] = remoteProcessBundleIdentifier;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Notice: Tearing down client connection to PID %d (%@ %@)", v56, 0x1Cu);
          }
        }

        connection = [v12 connection];
        [connection invalidate];

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
  activeClientsQueue2 = [(NPKCompanionAgent *)self activeClientsQueue];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10000CB3C;
  v39[3] = &unk_100070DB8;
  v39[4] = self;
  v39[5] = v56;
  dispatch_sync(activeClientsQueue2, v39);

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
            remoteProcessIdentifier2 = [v26 remoteProcessIdentifier];
            remoteProcessApplicationIdentifier2 = [v26 remoteProcessApplicationIdentifier];
            *v51 = v34;
            v52 = remoteProcessIdentifier2;
            v53 = 2112;
            v54 = remoteProcessApplicationIdentifier2;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Notice: Tearing down pass library connection to PID %d (%@)", v51, 0x12u);
          }
        }

        connection2 = [v26 connection];
        [connection2 invalidate];

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
  generalService = [(NPKCompanionAgent *)self generalService];
  passSyncService2 = generalService;
  if (v3)
  {
    passSyncService = [(NPKCompanionAgent *)self passSyncService];

    if (!passSyncService)
    {
      v7 = NPKPairedOrPairingDevice();
      sub_100008840();

      v8 = [NPDCompanionPassSyncService alloc];
      companionPaymentPassDatabase = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
      v10 = [(NPDCompanionPassSyncService *)v8 initWithCompanionPaymentPassDatabase:companionPaymentPassDatabase];

      [(NPDCompanionPassSyncService *)v10 setDelegate:self];
      [(NPDCompanionPassSyncService *)v10 setDataSource:self];
      [(NPKCompanionAgent *)self setPassSyncService:v10];
      [(NPDCompanionPassSyncService *)v10 start];
      if (passSyncService2)
      {
        [(NPDCompanionPassSyncService *)v10 handlePassLibraryChanged];
      }

      else
      {
        [(NPDCompanionPassSyncService *)v10 initiateSync];
      }
    }

    if (passSyncService2)
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

      [passSyncService2 removeDelegate:self];
      [(NPKCompanionAgent *)self setGeneralService:0];
    }
  }

  else
  {

    if (!passSyncService2)
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

    passSyncService2 = [(NPKCompanionAgent *)self passSyncService];
    if (passSyncService2)
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

      [passSyncService2 teardownSync];
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

- (void)_logDebugInformationWithExpectedPairedDeviceID:(id)d
{
  dCopy = d;
  v4 = +[NRPairedDeviceRegistry sharedInstance];
  getActivePairedDevice = [v4 getActivePairedDevice];
  v6 = [getActivePairedDevice valueForProperty:NRDevicePropertyPairingID];
  uUIDString = [v6 UUIDString];

  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = uUIDString;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Current pairing ID: %@", buf, 0xCu);
    }
  }

  if (([uUIDString isEqualToString:dCopy] & 1) == 0)
  {
    v11 = pk_General_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = pk_General_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v40 = dCopy;
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
    if (!uUIDString)
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
            firstObject = [v28 firstObject];
            *buf = 138412290;
            v40 = firstObject;
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
            firstObject = [v28 componentsJoinedByString:{@", "}];
            *buf = 138412290;
            v40 = firstObject;
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

    v18 = [v17 objectForKey:uUIDString];
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
          firstObject2 = [v18 firstObject];
          *buf = 138412290;
          v40 = firstObject2;
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
        firstObject2 = [v18 componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v40 = firstObject2;
        v24 = "Notice: Current SEIDs: %@";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v24, buf, 0xCu);

        goto LABEL_20;
      }

      goto LABEL_20;
    }

    [v17 removeObjectForKey:uUIDString];

    goto LABEL_22;
  }

LABEL_38:
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  changedCopy = changed;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = changedCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: IDS service accounts changed: %@", &v8, 0xCu);
    }
  }
}

- (void)service:(id)service devicesChanged:(id)changed
{
  changedCopy = changed;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = changedCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: IDS service devices changed: %@", &v8, 0xCu);
    }
  }
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  protobufCopy = protobuf;
  dCopy = d;
  contextCopy = context;
  v16 = pk_General_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

  if (v17)
  {
    v18 = pk_General_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 138413314;
      v20 = serviceCopy;
      v21 = 2112;
      v22 = accountCopy;
      v23 = 2112;
      v24 = protobufCopy;
      v25 = 2112;
      v26 = dCopy;
      v27 = 2112;
      v28 = contextCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error: IDS service incoming unhandled protobuf: %@ %@ %@ %@ %@", &v19, 0x34u);
    }
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  v16 = pk_General_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    v18 = pk_General_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138413314;
      v25 = serviceCopy;
      v26 = 2112;
      v27 = accountCopy;
      v28 = 2112;
      v29 = identifierCopy;
      v30 = 1024;
      v31 = successCopy;
      v32 = 2112;
      v33 = errorCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Notice: IDS service did send with success: %@ %@ %@ %d %@", &v24, 0x30u);
    }
  }

  outstandingDeletionStore = [(NPKCompanionAgent *)self outstandingDeletionStore];
  [outstandingDeletionStore noteDeliveryForMessageID:identifierCopy];

  if (!successCopy)
  {
    generalService = [(NPKCompanionAgent *)self generalService];
    if (generalService != serviceCopy)
    {
LABEL_9:

      goto LABEL_10;
    }

    code = [errorCopy code];

    if (code == 32)
    {
      [(NPKCompanionAgent *)self setShouldDropIDSMessages:1];
      passSyncService = [(NPKCompanionAgent *)self passSyncService];
      [passSyncService setDropAllMessages:1];

      generalService = [(NPKCompanionAgent *)self stopDroppingIDSMessagesTimer];
      v23 = dispatch_walltime(0, 300000000000);
      dispatch_source_set_timer(generalService, v23, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      goto LABEL_9;
    }
  }

LABEL_10:
}

- (void)_stopDroppingIDSMessages
{
  [(NPKCompanionAgent *)self setShouldDropIDSMessages:0];
  passSyncService = [(NPKCompanionAgent *)self passSyncService];
  [passSyncService setDropAllMessages:0];

  [(NPKCompanionAgent *)self _doFullSyncWithResyncID:0];
}

- (id)companionMaintenanceService:(id)service paymentPassForUniqueID:(id)d
{
  dCopy = d;
  companionPaymentPassDatabase = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
  v7 = [companionPaymentPassDatabase paymentPassWithUniqueID:dCopy];

  return v7;
}

- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session
{
  sessionCopy = session;
  pairedDevice = [sessionCopy pairedDevice];
  v7 = [pairedDevice valueForProperty:NRDevicePropertyName];
  v8 = [pairedDevice valueForProperty:NRDevicePropertyPairingID];
  syncSessionType = [sessionCopy syncSessionType];
  v10 = pk_General_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_General_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [v8 UUIDString];
      v14 = NSStringfromPSYSyncSessionType();
      v19 = 138413058;
      v20 = uUIDString;
      v21 = 2112;
      v22 = v7;
      v23 = 1024;
      v24 = syncSessionType;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Notice: Received start sync command from paired sync:\n\tUUID: %@\n\tDevice name: %@\n\tSync type: %d (%@)", &v19, 0x26u);
    }
  }

  remoteAdminConnectionServiceAgent = [(NPKCompanionAgent *)self remoteAdminConnectionServiceAgent];
  [remoteAdminConnectionServiceAgent updateRegionSupportIfNecessary];

  [(NPKCompanionAgent *)self _doPostUnlockPairedSyncAllowedWork];
  demoModePassCopier = [(NPKCompanionAgent *)self demoModePassCopier];
  passLibrary = [(NPKCompanionAgent *)self passLibrary];
  [demoModePassCopier performFullSyncWithPassLibrary:passLibrary];

  if ([sessionCopy syncSessionType])
  {
    if ([sessionCopy syncSessionType] == 2)
    {
      remoteAdminConnectionServiceAgent2 = [(NPKCompanionAgent *)self remoteAdminConnectionServiceAgent];
      [remoteAdminConnectionServiceAgent2 handleCompanionMigration];
    }

    [(NPKCompanionAgent *)self _doSync];
  }

  else
  {
    [(NPKCompanionAgent *)self _doFullSyncWithResyncID:0];
  }
}

- (void)syncCoordinatorDidChangeSyncRestriction:(id)restriction
{
  syncRestriction = [restriction syncRestriction];
  if (syncRestriction)
  {
    if (syncRestriction == 1)
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

- (BOOL)hasWatchPaymentPassWithUniqueID:(id)d
{
  dCopy = d;
  companionPaymentPassDatabase = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
  v6 = [companionPaymentPassDatabase paymentPassWithUniqueID:dCopy];

  return v6 != 0;
}

- (BOOL)hasWatchPaymentPassRequiringVerificationWithUniqueID:(id)d
{
  dCopy = d;
  companionPaymentPassDatabase = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
  v6 = [companionPaymentPassDatabase paymentPassWithUniqueID:dCopy];

  v7 = NPKPairedDeviceSecureElementIdentifiers();
  if (v7)
  {
    [v6 updateDevicePaymentApplicationsWithSecureElementIdentifiers:v7];
  }

  v8 = [v6 activationState] == 1;

  return v8;
}

- (BOOL)hasCompanionPaymentPassWithUniqueID:(id)d
{
  dCopy = d;
  passLibrary = [(NPKCompanionAgent *)self passLibrary];
  v6 = [passLibrary passWithUniqueID:dCopy];

  return v6 != 0;
}

- (BOOL)hasWatchPaymentPassWithReaderIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v70 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Checking whether watch has payment pass with reader identifier %@", buf, 0xCu);
    }
  }

  if (identifierCopy)
  {
    companionPaymentPassDatabase = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
    uniqueIDs = [companionPaymentPassDatabase uniqueIDs];

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v10 = uniqueIDs;
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
          sharedDatabase = [v13[361] sharedDatabase];
          v16 = [sharedDatabase passForUniqueID:v14];

          v54 = v16;
          secureElementPass = [v16 secureElementPass];
          if (secureElementPass)
          {
            v18 = pk_General_log();
            v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

            if (v19)
            {
              v20 = pk_General_log();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                devicePrimaryPaymentApplication = [secureElementPass devicePrimaryPaymentApplication];
                *buf = 138412802;
                v70 = devicePrimaryPaymentApplication;
                v71 = 2112;
                v72 = v14;
                v73 = 2112;
                v74 = identifierCopy;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Notice: Evaluating whether the device primary payment application (%@) on pass %@ contains reader identifier matching %@.", buf, 0x20u);
              }
            }

            pairedTerminalIdentifier = [secureElementPass pairedTerminalIdentifier];
            v23 = [(__CFString *)identifierCopy caseInsensitiveCompare:pairedTerminalIdentifier];

            if (!v23)
            {
LABEL_46:

              v40 = 1;
              goto LABEL_48;
            }

            v53 = secureElementPass;
            paymentApplications = [secureElementPass paymentApplications];
            v25 = pk_General_log();
            v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

            if (v26)
            {
              v27 = pk_General_log();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v70 = paymentApplications;
                v71 = 2112;
                v72 = v14;
                v73 = 2112;
                v74 = identifierCopy;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Notice: Evaluating whether any payment applications (%@) on pass %@ contain a reader identifier matching %@.", buf, 0x20u);
              }
            }

            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v28 = paymentApplications;
            secureElementPass = v53;
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
                  subcredentials = [v31 subcredentials];
                  v33 = [subcredentials countByEnumeratingWithState:&v55 objects:v67 count:16];
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
                          objc_enumerationMutation(subcredentials);
                        }

                        v37 = *(*(&v55 + 1) + 8 * i);
                        if (v37)
                        {
                          pairedReaderIdentifier = [v37 pairedReaderIdentifier];
                          v39 = [(__CFString *)identifierCopy caseInsensitiveCompare:pairedReaderIdentifier];

                          if (!v39)
                          {

                            v10 = v51;
                            secureElementPass = v53;
                            goto LABEL_46;
                          }
                        }
                      }

                      v34 = [subcredentials countByEnumeratingWithState:&v55 objects:v67 count:16];
                      if (v34)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v30 = v30 + 1;
                  v10 = v51;
                  secureElementPass = v53;
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

- (id)readerIdentifierForCompanionPaymentPassWithUniqueID:(id)d
{
  dCopy = d;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Checking reader identifier for companion payment pass with unique id %@", &v16, 0xCu);
    }
  }

  passLibrary = [(NPKCompanionAgent *)self passLibrary];
  v9 = [passLibrary passWithUniqueID:dCopy];
  paymentPass = [v9 paymentPass];

  pairedTerminalIdentifier = [paymentPass pairedTerminalIdentifier];
  v12 = pk_General_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_General_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = paymentPass;
      v18 = 2112;
      v19 = pairedTerminalIdentifier;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Notice: Found pass %@ with reader identifier %@", &v16, 0x16u);
    }
  }

  return pairedTerminalIdentifier;
}

- (void)doesWatchSupportPassLikeCompanionPassWithUniqueID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = dCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Checking whether watch supports adding passes like the companion payment pass with unique id %@", buf, 0xCu);
    }
  }

  passLibrary = [(NPKCompanionAgent *)self passLibrary];
  v12 = [passLibrary passWithUniqueID:dCopy];

  if (v12)
  {
    secureElementPass = [v12 secureElementPass];
    isCarKeyPass = [secureElementPass isCarKeyPass];

    if (!isCarKeyPass)
    {
      goto LABEL_13;
    }

    v15 = objc_alloc_init(PKAddCarKeyPassConfiguration);
    secureElementPass2 = [v12 secureElementPass];
    devicePrimaryPaymentApplication = [secureElementPass2 devicePrimaryPaymentApplication];
    subcredentials = [devicePrimaryPaymentApplication subcredentials];
    anyObject = [subcredentials anyObject];

    supportedRadioTechnologies = [anyObject supportedRadioTechnologies];
    if (!supportedRadioTechnologies)
    {
      v21 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v36 = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Defaulting to NFC due to missing or invalid radioTechnologies: %lu", buf, 0xCu);
      }

      supportedRadioTechnologies = 1;
    }

    [v15 setSupportedRadioTechnologies:supportedRadioTechnologies];
    manufacturerIdentifier = [anyObject manufacturerIdentifier];
    [v15 setManufacturerIdentifier:manufacturerIdentifier];

    brandIdentifier = [anyObject brandIdentifier];
    [v15 setIssuerIdentifier:brandIdentifier];

    if (v15)
    {
      paymentWebService = [(NPKCompanionAgent *)self paymentWebService];
      targetDevice = [paymentWebService targetDevice];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10000EEE0;
      v32[3] = &unk_100071388;
      v34 = completionCopy;
      v33 = v12;
      [targetDevice paymentWebService:paymentWebService canAddSecureElementPassWithConfiguration:v15 completion:v32];
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
          v36 = dCopy;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Notice: Pass with unique id %@ doesn't have special support considerations; continuing...", buf, 0xCu);
        }
      }

      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 1);
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
        v36 = dCopy;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Warning: No companion payment pass for unique ID %@ was found!", buf, 0xCu);
      }
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (BOOL)hasAnyWatchPaymentPasses
{
  companionPaymentPassDatabase = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
  uniqueIDs = [companionPaymentPassDatabase uniqueIDs];
  v4 = [uniqueIDs count] != 0;

  return v4;
}

- (void)postAddReminderNotificationForPassWithUniqueID:(id)d
{
  dCopy = d;
  passLibrary = [(NPKCompanionAgent *)self passLibrary];
  v6 = [passLibrary passWithUniqueID:dCopy];

  paymentPass = [v6 paymentPass];
  if (NPKIsAddToWatchSupportedForCompanionPaymentPass())
  {
    secureElementPass = [v6 secureElementPass];
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
          v28 = dCopy;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Notice: Posting add to watch reminder notification for payment pass with unique id %@", buf, 0xCu);
        }
      }

      paymentPass2 = [v6 paymentPass];
      isAccessPass = [paymentPass2 isAccessPass];

      if (isAccessPass)
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
      localizedDescription = [v6 localizedDescription];
      v20 = [NSString stringWithFormat:v22, localizedDescription];

      bulletinManager = [(NPKCompanionAgent *)self bulletinManager];
      v25 = [NSBundle bundleForClass:objc_opt_class()];
      v26 = [v25 localizedStringForKey:@"APPLE_WATCH" value:&stru_100073088 table:@"NanoPassKit"];
      [bulletinManager insertBridgeBulletinWithTitle:v26 message:v20 actionURL:0 forPass:v6];

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
      v28 = dCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Notice: Add to watch reminder notification is not supported for payment pass with unique id %@", buf, 0xCu);
    }

    goto LABEL_17;
  }

LABEL_18:
}

- (void)postVerifyReminderNotificationForPassWithUniqueID:(id)d
{
  dCopy = d;
  companionPaymentPassDatabase = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
  v13 = [companionPaymentPassDatabase paymentPassWithUniqueID:dCopy];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"VERIFY_REMINDER_MESSAGE_SPECIFIC" value:&stru_100073088 table:@"NanoPassKit"];
  localizedDescription = [v13 localizedDescription];
  v9 = [NSString stringWithFormat:v7, localizedDescription];

  bulletinManager = [(NPKCompanionAgent *)self bulletinManager];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"APPLE_WATCH" value:&stru_100073088 table:@"NanoPassKit"];
  [bulletinManager insertBridgeBulletinWithTitle:v12 message:v9 actionURL:0 forPass:v13];
}

- (void)removeReminderNotificationForPassWithUniqueID:(id)d
{
  dCopy = d;
  bulletinManager = [(NPKCompanionAgent *)self bulletinManager];
  [bulletinManager removeBridgeBulletinsForPassWithUniqueID:dCopy];
}

- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction
{
  identifierCopy = identifier;
  transactionCopy = transaction;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10000CABC;
  v27 = sub_10000CACC;
  v28 = 0;
  activeClientsQueue = [(NPKCompanionAgent *)self activeClientsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F844;
  block[3] = &unk_100070DB8;
  block[4] = self;
  block[5] = &v23;
  dispatch_sync(activeClientsQueue, block);

  v9 = pk_Payment_log();
  LODWORD(activeClientsQueue) = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (activeClientsQueue)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v24[5];
      *buf = 138412546;
      v31 = identifierCopy;
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

        connection = [*(*(&v18 + 1) + 8 * v15) connection];
        remoteObjectProxy = [connection remoteObjectProxy];

        [remoteObjectProxy transactionSourceIdentifier:identifierCopy didReceiveTransaction:transactionCopy];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v18 objects:v29 count:16];
    }

    while (v13);
  }

  _Block_object_dispose(&v23, 8);
}

- (void)transactionSourceIdentifier:(id)identifier didRemoveTransactionWithIdentifier:(id)withIdentifier
{
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10000CABC;
  v27 = sub_10000CACC;
  v28 = 0;
  activeClientsQueue = [(NPKCompanionAgent *)self activeClientsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000FB6C;
  block[3] = &unk_100070DB8;
  block[4] = self;
  block[5] = &v23;
  dispatch_sync(activeClientsQueue, block);

  v9 = pk_Payment_log();
  LODWORD(activeClientsQueue) = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (activeClientsQueue)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v24[5];
      *buf = 138412802;
      v31 = withIdentifierCopy;
      v32 = 2112;
      v33 = identifierCopy;
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

        connection = [*(*(&v18 + 1) + 8 * v15) connection];
        remoteObjectProxy = [connection remoteObjectProxy];

        [remoteObjectProxy transactionSourceIdentifier:identifierCopy didRemoveTransactionWithIdentifier:withIdentifierCopy];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v18 objects:v29 count:16];
    }

    while (v13);
  }

  _Block_object_dispose(&v23, 8);
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitAppletState:(id)state
{
  identifierCopy = identifier;
  stateCopy = state;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = stateCopy;
      v18 = 2112;
      v19 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Got updated transit applet state %@ for pass with unique ID %@. Processing subject to first unlock and paired sync.", buf, 0x16u);
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000FD44;
  v13[3] = &unk_100070FA8;
  v13[4] = self;
  v14 = stateCopy;
  v15 = identifierCopy;
  v11 = identifierCopy;
  v12 = stateCopy;
  [(NPKCompanionAgent *)self _performAfterFirstDeviceUnlockAndPairedSyncAllowed:v13];
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithBalances:(id)balances
{
  identifierCopy = identifier;
  balancesCopy = balances;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = balancesCopy;
      v18 = 2112;
      v19 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: (PKPaymentBalance set) Got updated balances %@ for pass with unique ID %@. Processing subject to first unlock and paired sync.", buf, 0x16u);
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001033C;
  v13[3] = &unk_100070FA8;
  v13[4] = self;
  v14 = balancesCopy;
  v15 = identifierCopy;
  v11 = identifierCopy;
  v12 = balancesCopy;
  [(NPKCompanionAgent *)self _performAfterFirstDeviceUnlockAndPairedSyncAllowed:v13];
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateBalanceReminder:(id)reminder forBalance:(id)balance
{
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
      *buf = 138412802;
      v22 = reminderCopy;
      v23 = 2112;
      v24 = balanceCopy;
      v25 = 2112;
      v26 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: (PKPaymentBalanceReminder set) Got updated balance reminder %@ for balance %@ and pass with unique ID %@. Processing subject to first unlock and paired sync.", buf, 0x20u);
    }
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000108E0;
  v17[3] = &unk_100071400;
  v17[4] = self;
  v18 = reminderCopy;
  v19 = balanceCopy;
  v20 = identifierCopy;
  v14 = identifierCopy;
  v15 = balanceCopy;
  v16 = reminderCopy;
  [(NPKCompanionAgent *)self _performAfterFirstDeviceUnlockAndPairedSyncAllowed:v17];
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithCredentials:(id)credentials forPaymentApplicationIdentifier:(id)applicationIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  credentialsCopy = credentials;
  applicationIdentifierCopy = applicationIdentifier;
  completionCopy = completion;
  v13 = pk_Payment_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v15 = pk_Payment_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v24 = credentialsCopy;
      v25 = 2112;
      v26 = identifierCopy;
      v27 = 2112;
      v28 = applicationIdentifierCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Notice: (PKAppletSubcredential set) Got updated credentials %@ for pass with unique ID %@, paymentApplicationIdentifier: %@. Processing subject to first unlock and paired sync.", buf, 0x20u);
    }
  }

  v22 = completionCopy;
  v20 = credentialsCopy;
  v21 = identifierCopy;
  v16 = applicationIdentifierCopy;
  v17 = identifierCopy;
  v18 = credentialsCopy;
  v19 = completionCopy;
  NPKGuaranteeMainThread();
}

- (void)didReceivePaymentSetupRequestForApplicationName:(id)name
{
  nameCopy = name;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"REMOTE_SETUP_ALERT_TITLE" value:&stru_100073088 table:@"NanoPassKit"];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  if (nameCopy)
  {
    v7 = [v6 localizedStringForKey:@"REMOTE_SETUP_ALERT_BODY" value:&stru_100073088 table:@"NanoPassKit"];
    nameCopy = [NSString stringWithFormat:v7, nameCopy];
  }

  else
  {
    nameCopy = [v6 localizedStringForKey:@"REMOTE_SETUP_ALERT_BODY_NO_APP_NAME" value:&stru_100073088 table:@"NanoPassKit"];
  }

  bulletinManager = [(NPKCompanionAgent *)self bulletinManager];
  [bulletinManager insertBridgeBulletinWithTitle:v5 message:nameCopy actionURL:0 forPass:0];
}

- (void)didReceiveCheckCompanionPeerPaymentState
{
  companionPeerPaymentStatusObserver = [(NPKCompanionAgent *)self companionPeerPaymentStatusObserver];
  [companionPeerPaymentStatusObserver handleWatchRequestForCompanionPeerPaymentRegistrationState];
}

- (unint64_t)companionPassSyncService:(id)service settingsForPassWithUniqueID:(id)d
{
  dCopy = d;
  v6 = +[NPKGizmoDatabase sharedDatabase];
  v7 = [v6 passForUniqueID:dCopy];

  passLibrary = [(NPKCompanionAgent *)self passLibrary];
  v9 = [passLibrary passWithUniqueID:dCopy];
  v10 = v9;
  if (v9)
  {
    secureElementPass = [v9 secureElementPass];

    if (!secureElementPass)
    {
      v20 = pk_General_log();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

      if (v21)
      {
        v22 = pk_General_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 138412290;
          v25 = dCopy;
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
        v25 = dCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Notice: Returning settings for pass in the watch's pass library with unique ID %@", &v24, 0xCu);
      }
    }

    v15 = v7;
LABEL_19:
    settings = [v15 settings];
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
      v25 = dCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error: Unable to find settings for pass with unique ID %@", &v24, 0xCu);
    }
  }

  settings = 0;
LABEL_20:

  return settings;
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
  passLibrary = [(NPKCompanionAgent *)self passLibrary];
  v3 = dispatch_time(0, 30000000000);
  v4 = dispatch_get_global_queue(-32768, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011BC0;
  block[3] = &unk_100071000;
  v5 = passLibrary;
  v8 = v5;
  dispatch_after(v3, v4, block);

  return v5;
}

- (id)libraryHash
{
  gizmoDatabase = [(NPKCompanionAgent *)self gizmoDatabase];
  v4 = [gizmoDatabase libraryHashForWatchOSMajorVersion:{-[NPKCompanionAgent versionForCompleteHash](self, "versionForCompleteHash")}];

  return v4;
}

- (void)_handleCompanionPassLibraryChanged:(id)changed
{
  changedCopy = changed;
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
      v45 = changedCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library changed (%@)", buf, 0xCu);
    }
  }

  pairedSyncCoordinator = [(NPKCompanionAgent *)self pairedSyncCoordinator];
  if ([pairedSyncCoordinator syncRestriction])
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
    name = [changedCopy name];
    v14 = [name isEqualToString:PKPassSettingsDidChangeNotification];

    if (!v14)
    {
      name2 = [changedCopy name];
      v24 = [name2 isEqualToString:PKPassLibraryCatalogDidChangeNotification];

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

      passSyncService = [(NPKCompanionAgent *)self passSyncService];
      [passSyncService handlePassLibraryChanged];
      goto LABEL_31;
    }

    userInfo = [changedCopy userInfo];
    passSyncService = [userInfo objectForKeyedSubscript:PKPassLibraryUniqueIDUserInfoKey];

    userInfo2 = [changedCopy userInfo];
    v18 = [userInfo2 objectForKeyedSubscript:PKPassLibrarySettingsUserInfoKey];

    if (passSyncService && v18)
    {
      passLibrary = [(NPKCompanionAgent *)self passLibrary];
      v20 = [passLibrary passWithUniqueID:passSyncService];

      if ([(NPKCompanionAgent *)self _shouldSyncPassFromCompanionPassLibrary:v20])
      {
        unsignedIntValue = [v18 unsignedIntValue];
        passSyncService2 = [(NPKCompanionAgent *)self passSyncService];
        [passSyncService2 handleSettingsChanged:unsignedIntValue forPassWithUniqueID:passSyncService];
      }

      else
      {
        v27 = pk_General_log();
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

        if (!v28)
        {
          goto LABEL_29;
        }

        passSyncService2 = pk_General_log();
        if (os_log_type_enabled(passSyncService2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v45 = passSyncService;
          _os_log_impl(&_mh_execute_header, passSyncService2, OS_LOG_TYPE_DEFAULT, "Notice: Not syncing companion settings change for pass with unique ID %@", buf, 0xCu);
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
        v45 = passSyncService;
        v46 = 2112;
        v47 = v18;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Warning: Missing pass unique ID (%@) or settings (%@) in notification", buf, 0x16u);
      }
    }

LABEL_29:

    goto LABEL_30;
  }

LABEL_32:
  name3 = [changedCopy name];
  v30 = [name3 isEqualToString:PKPassLibraryDidAddPassNotification];

  if (v30)
  {
    userInfo3 = [changedCopy userInfo];
    v32 = [userInfo3 objectForKeyedSubscript:PKPassLibraryUniqueIDUserInfoKey];

    [(NPKCompanionAgent *)self _handleCompanionPassAddedWithID:v32];
LABEL_38:

    goto LABEL_39;
  }

  name4 = [changedCopy name];
  if ([name4 isEqualToString:PKPassLibraryDidUpdatePassNotification])
  {

LABEL_37:
    userInfo4 = [changedCopy userInfo];
    v32 = [userInfo4 objectForKeyedSubscript:PKPassLibraryUniqueIDUserInfoKey];

    [(NPKCompanionAgent *)self _handleCompanionPassUpdatedWithID:v32];
    goto LABEL_38;
  }

  name5 = [changedCopy name];
  v35 = [name5 isEqualToString:PKPassSettingsDidChangeNotification];

  if (v35)
  {
    goto LABEL_37;
  }

  name6 = [changedCopy name];
  v38 = [name6 isEqualToString:PKPassLibraryDidRemovePassNotification];

  if (v38)
  {
    userInfo5 = [changedCopy userInfo];
    v32 = [userInfo5 objectForKeyedSubscript:PKPassLibraryUniqueIDUserInfoKey];

    [(NPKCompanionAgent *)self _handleCompanionPassRemovedWithID:v32];
    goto LABEL_38;
  }

  name7 = [changedCopy name];
  v41 = [name7 isEqualToString:PKPassLibraryCatalogDidChangeNotification];

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

- (void)_handleCompanionPaymentPassDatabaseChanged:(id)changed
{
  changedCopy = changed;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = changedCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Companion payment pass database changed: %@", &v8, 0xCu);
    }
  }

  [(NPKCompanionAgent *)self _handleCompanionPaymentPassDatabaseChangedBroadcastUnconditionally:1];
}

- (void)_handleCompanionSyncDatabaseChanged:(id)changed
{
  changedCopy = changed;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = changedCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notice: Companion sync database changed: %@", &v8, 0xCu);
    }
  }

  v7 = +[NSDistributedNotificationCenter defaultCenter];
  [v7 postNotificationName:_NPKCompanionServerPaymentPassesChangedNotification object:0 userInfo:&__NSDictionary0__struct];
}

- (void)_handleCompanionPaymentPassDatabaseChangedBroadcastUnconditionally:(BOOL)unconditionally
{
  unconditionallyCopy = unconditionally;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v12 = unconditionallyCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Payment pass directory changed (broadcast unconditionally = %d)", buf, 8u);
    }
  }

  workQueue = [(NPKCompanionAgent *)self workQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100012A34;
  v9[3] = &unk_100071568;
  v9[4] = self;
  v10 = unconditionallyCopy;
  [workQueue performWork:v9];
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

  npsManager = [(NPKCompanionAgent *)self npsManager];
  [npsManager synchronizeUserDefaultsDomain:v3 keys:v4];
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

  npsManager = [(NPKCompanionAgent *)self npsManager];
  [npsManager synchronizeUserDefaultsDomain:@".GlobalPreferences" keys:v3];

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

  npsManager2 = [(NPKCompanionAgent *)self npsManager];
  [npsManager2 synchronizeUserDefaultsDomain:PKPassdBundleIdentifier keys:v8];
}

- (void)_handleWalletPreferencesChanged:(id)changed
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

  npsManager = [(NPKCompanionAgent *)self npsManager];
  [npsManager synchronizeUserDefaultsDomain:v4 keys:v5];
}

- (void)_handlePublicWalletPreferencesChanged:(id)changed
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

  npsManager = [(NPKCompanionAgent *)self npsManager];
  [npsManager synchronizeUserDefaultsDomain:v4 keys:v5];
}

- (void)_handlePaymentOptionsDefaultsChanged
{
  remoteAdminConnectionServiceAgent = [(NPKCompanionAgent *)self remoteAdminConnectionServiceAgent];
  [remoteAdminConnectionServiceAgent handlePaymentOptionsDefaultsChanged];
}

- (void)_handleRelevantPassesDidChange:(id)change
{
  changeCopy = change;
  v5 = pk_Relevance_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Relevance_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = changeCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Relevant passes changed (notification %@), fetching...", buf, 0xCu);
    }
  }

  temporarilyRetainedPassLibrary = [(NPKCompanionAgent *)self temporarilyRetainedPassLibrary];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100013A24;
  v9[3] = &unk_1000715D0;
  v9[4] = self;
  [temporarilyRetainedPassLibrary fetchCurrentRelevantPassInfo:v9];
}

- (void)_handleBulletinDistributorWillSendBulletinToGizmoWithSectionID:(id)d
{
  dCopy = d;
  remoteDeviceLowPowerMonitor = [(NPKCompanionAgent *)self remoteDeviceLowPowerMonitor];
  isLowPowerModeEnabled = [remoteDeviceLowPowerMonitor isLowPowerModeEnabled];

  v7 = pk_Relevance_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (isLowPowerModeEnabled)
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
        v12 = dCopy;
        v13 = 1024;
        hasCandidateRelevantPasses = [(NPKCompanionAgent *)self hasCandidateRelevantPasses];
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Bulletin distributor will send bulletin to watch for section ID %@ (has candidates %d)", &v11, 0x12u);
      }
    }

    [(NPKCompanionAgent *)self _fetchRelevantPassesAndNotifyGizmo];
  }
}

- (void)_handleActiveDeviceChanged:(id)changed
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
  passSyncService = [(NPKCompanionAgent *)self passSyncService];

  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (passSyncService)
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

    passSyncService2 = [(NPKCompanionAgent *)self passSyncService];
    [passSyncService2 updatePassLibrary];
LABEL_7:

    return;
  }

  if (v5)
  {
    passSyncService2 = pk_General_log();
    if (os_log_type_enabled(passSyncService2, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, passSyncService2, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service is not setup yet. Can't request to sync yet.", v8, 2u);
    }

    goto LABEL_7;
  }
}

- (void)lowPowerModeMonitor:(id)monitor didUpdateLowPowerModeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  monitorCopy = monitor;
  v7 = pk_Relevance_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Relevance_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = monitorCopy;
      v12 = 1024;
      v13 = enabledCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notice: lowPowerModeMonitor:%@  didUpdateLowPowerModeEnabled:%d", &v10, 0x12u);
    }
  }

  if (!enabledCopy)
  {
    [(NPKCompanionAgent *)self _fetchRelevantPassesAndNotifyGizmo];
  }
}

- (void)resyncNeededRequest:(id)request
{
  requestCopy = request;
  v5 = [NPKProtoResyncNeededRequest alloc];
  data = [requestCopy data];

  v7 = [v5 initWithData:data];
  expectedHash = [v7 expectedHash];
  hashData = [expectedHash hashData];

  uniqueIDs = [v7 uniqueIDs];
  manifestHashes = [v7 manifestHashes];
  fullResyncNeeded = [v7 fullResyncNeeded];
  if ([v7 hasResyncID])
  {
    v12 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v7 resyncID]);
  }

  else
  {
    v12 = 0;
  }

  v13 = [NSDictionary dictionaryWithObjects:manifestHashes forKeys:uniqueIDs];
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
      v29 = hashData;
      v30 = 2112;
      v31 = v18;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Warning: Gizmo's database is out of sync (expected hash %@, ours %@, resync ID %@)!", buf, 0x20u);
    }
  }

  if (fullResyncNeeded)
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
    workQueue = [(NPKCompanionAgent *)self workQueue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100014A30;
    v24[3] = &unk_1000713D8;
    v24[4] = self;
    v25 = v13;
    v26 = uniqueIDs;
    v27 = v12;
    [workQueue performWork:v24];
  }
}

- (void)handleGizmoInitiatedAddPassRequest:(id)request
{
  requestCopy = request;
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
  data = [requestCopy data];

  v10 = [v8 initWithData:data];
  passData = [v10 passData];
  v31 = 0;
  v12 = [PKPass createWithData:passData warnings:0 error:&v31];
  v13 = v31;

  paymentPass = [v12 paymentPass];

  if (paymentPass)
  {
    companionPaymentPassDatabase = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
    uniqueID = [v12 uniqueID];
    passLibrary = [companionPaymentPassDatabase paymentPassWithUniqueID:uniqueID];

    if (passLibrary && ([v12 sequenceCounter], v18 = objc_claimAutoreleasedReturnValue(), -[NSObject sequenceCounter](passLibrary, "sequenceCounter"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "compare:", v19), v19, v18, v20 != 1))
    {
      v26 = pk_Payment_log();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

      if (!v27)
      {
        goto LABEL_11;
      }

      remoteAdminConnectionServiceAgent = pk_Payment_log();
      if (!os_log_type_enabled(remoteAdminConnectionServiceAgent, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      sequenceCounter = [v12 sequenceCounter];
      sequenceCounter2 = [passLibrary sequenceCounter];
      *buf = 138412546;
      v34 = sequenceCounter;
      v35 = 2112;
      v36 = sequenceCounter2;
      _os_log_impl(&_mh_execute_header, remoteAdminConnectionServiceAgent, OS_LOG_TYPE_DEFAULT, "Notice: Not saving incoming payment pass because its sequence counter (%@) is not newer than what's already on disk (%@)", buf, 0x16u);
    }

    else
    {
      remoteAdminConnectionServiceAgent = [(NPKCompanionAgent *)self remoteAdminConnectionServiceAgent];
      sequenceCounter = [v12 paymentPass];
      [remoteAdminConnectionServiceAgent handleGizmoAddedPaymentPass:sequenceCounter];
    }

LABEL_10:
    goto LABEL_11;
  }

  if (v12)
  {
    passLibrary = [(NPKCompanionAgent *)self passLibrary];
    passTypeIdentifier = [v12 passTypeIdentifier];
    serialNumber = [v12 serialNumber];
    v25 = [passLibrary passWithPassTypeIdentifier:passTypeIdentifier serialNumber:serialNumber];

    if (v25)
    {
      [passLibrary replacePassWithPass:v12];
      goto LABEL_11;
    }

    v32 = v12;
    remoteAdminConnectionServiceAgent = [NSArray arrayWithObjects:&v32 count:1];
    [passLibrary addPasses:remoteAdminConnectionServiceAgent withCompletionHandler:0];
    goto LABEL_10;
  }

  v29 = pk_General_log();
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

  if (!v30)
  {
    goto LABEL_12;
  }

  passLibrary = pk_General_log();
  if (os_log_type_enabled(passLibrary, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v34 = v13;
    _os_log_impl(&_mh_execute_header, passLibrary, OS_LOG_TYPE_ERROR, "Error: Unable to create pass from data: %@", buf, 0xCu);
  }

LABEL_11:

LABEL_12:
}

- (void)handleGizmoInitiatedDeletePassRequest:(id)request
{
  requestCopy = request;
  v5 = [NPKProtoGizmoInitiatedDeletePassRequest alloc];
  data = [requestCopy data];

  v7 = [v5 initWithData:data];
  passID = [v7 passID];
  v9 = pk_Payment_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = passID;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Notice: Gizmo sent us a delete request for pass with ID %@", &v22, 0xCu);
    }
  }

  v12 = +[NPKGizmoDatabase sharedDatabase];
  v13 = [v12 passForUniqueID:passID];
  paymentPass = [v13 paymentPass];

  if (paymentPass)
  {
    if (NPKIsPairedDeviceStandalone())
    {
      v15 = pk_Payment_log();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

      if (!v16)
      {
LABEL_13:
        [(NPKCompanionAgent *)self _removeCompanionDatabasePassWithUniqueID:passID completion:0];
        remoteDeviceManager = [(NPKCompanionAgent *)self remoteDeviceManager];
        [remoteDeviceManager deviceDidDeletePass:paymentPass];

        goto LABEL_14;
      }

      remoteAdminConnectionServiceAgent = pk_Payment_log();
      if (os_log_type_enabled(remoteAdminConnectionServiceAgent, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&_mh_execute_header, remoteAdminConnectionServiceAgent, OS_LOG_TYPE_ERROR, "Error: Got gizmo-initiated delete pass request for standalone device!", &v22, 2u);
      }
    }

    else
    {
      remoteAdminConnectionServiceAgent = [(NPKCompanionAgent *)self remoteAdminConnectionServiceAgent];
      [remoteAdminConnectionServiceAgent deprovisionPass:paymentPass];
    }

    goto LABEL_13;
  }

  [(NPKCompanionAgent *)self _removeCompanionDatabasePassWithUniqueID:passID completion:0];
LABEL_14:
  passLibrary = [(NPKCompanionAgent *)self passLibrary];
  v20 = [passLibrary passWithUniqueID:passID];
  v21 = v20;
  if (v20 && [v20 passType] != 1)
  {
    [passLibrary removePass:v21];
  }
}

- (void)handleGizmoReceivedNewLibraryHashRequest:(id)request
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

  pairedSyncCoordinator = [(NPKCompanionAgent *)self pairedSyncCoordinator];
  activeSyncSession = [pairedSyncCoordinator activeSyncSession];
  [activeSyncSession syncDidComplete];
}

- (void)handleRelevantPassesNeededRequest:(id)request
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

- (id)serializedPass:(id)pass
{
  passCopy = pass;
  v4 = objc_alloc_init(NPKProtoPass);
  v5 = NPKSecureArchiveObject();

  [v4 setPassData:v5];

  return v4;
}

- (id)serializedCatalog:(id)catalog
{
  if (catalog)
  {
    catalogCopy = catalog;
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

- (id)serializedAddPass:(id)pass withNewLibraryHash:(id)hash omitHashForChunking:(BOOL)chunking catalog:(id)catalog syncID:(id)d resyncID:(id)iD
{
  hashCopy = hash;
  catalogCopy = catalog;
  dCopy = d;
  iDCopy = iD;
  passCopy = pass;
  v19 = objc_alloc_init(NPKProtoAddPassRequest);
  v20 = [(NPKCompanionAgent *)self serializedPass:passCopy];

  [v19 setPass:v20];
  if (!chunking)
  {
    v21 = objc_alloc_init(NPKProtoHash);
    [v21 setHashData:hashCopy];
    [v19 setLibraryHash:v21];
  }

  v22 = [(NPKCompanionAgent *)self serializedCatalog:catalogCopy];
  [v19 setCatalog:v22];

  if (dCopy)
  {
    [v19 setSyncID:{objc_msgSend(dCopy, "unsignedIntValue")}];
  }

  if (iDCopy)
  {
    [v19 setResyncID:{objc_msgSend(iDCopy, "unsignedIntValue")}];
  }

  lastKnownResyncID = [(NPKCompanionAgent *)self lastKnownResyncID];

  if (lastKnownResyncID)
  {
    lastKnownResyncID2 = [(NPKCompanionAgent *)self lastKnownResyncID];
    [v19 setLastKnownResyncID:{objc_msgSend(lastKnownResyncID2, "unsignedIntValue")}];
  }

  data = [v19 data];

  return data;
}

- (id)serializedUpdatePass:(id)pass fromPassWithManifestHash:(id)hash withNewLibraryHash:(id)libraryHash omitHashForChunking:(BOOL)chunking catalog:(id)catalog syncID:(id)d resyncID:(id)iD
{
  libraryHashCopy = libraryHash;
  catalogCopy = catalog;
  dCopy = d;
  iDCopy = iD;
  hashCopy = hash;
  passCopy = pass;
  v21 = objc_alloc_init(NPKProtoUpdatePassRequest);
  v22 = [(NPKCompanionAgent *)self serializedPass:passCopy];

  [v21 setPass:v22];
  [v21 setPreviousManifestHash:hashCopy];

  if (!chunking)
  {
    v23 = objc_alloc_init(NPKProtoHash);
    [v23 setHashData:libraryHashCopy];
    [v21 setLibraryHash:v23];
  }

  v24 = [(NPKCompanionAgent *)self serializedCatalog:catalogCopy];
  [v21 setCatalog:v24];

  if (dCopy)
  {
    [v21 setSyncID:{objc_msgSend(dCopy, "unsignedIntValue")}];
  }

  if (iDCopy)
  {
    [v21 setResyncID:{objc_msgSend(iDCopy, "unsignedIntValue")}];
  }

  lastKnownResyncID = [(NPKCompanionAgent *)self lastKnownResyncID];

  if (lastKnownResyncID)
  {
    lastKnownResyncID2 = [(NPKCompanionAgent *)self lastKnownResyncID];
    [v21 setLastKnownResyncID:{objc_msgSend(lastKnownResyncID2, "unsignedIntValue")}];
  }

  data = [v21 data];

  return data;
}

- (id)serializedRemovePassWithUniqueID:(id)d withNewLibraryHash:(id)hash omitHashForChunking:(BOOL)chunking catalog:(id)catalog syncID:(id)iD resyncID:(id)resyncID
{
  hashCopy = hash;
  catalogCopy = catalog;
  iDCopy = iD;
  resyncIDCopy = resyncID;
  dCopy = d;
  v19 = objc_alloc_init(NPKProtoRemovePassRequest);
  [v19 setPassID:dCopy];

  if (!chunking)
  {
    v20 = objc_alloc_init(NPKProtoHash);
    [v20 setHashData:hashCopy];
    [v19 setLibraryHash:v20];
  }

  v21 = [(NPKCompanionAgent *)self serializedCatalog:catalogCopy];
  [v19 setCatalog:v21];

  if (iDCopy)
  {
    [v19 setSyncID:{objc_msgSend(iDCopy, "unsignedIntValue")}];
  }

  if (resyncIDCopy)
  {
    [v19 setResyncID:{objc_msgSend(resyncIDCopy, "unsignedIntValue")}];
  }

  lastKnownResyncID = [(NPKCompanionAgent *)self lastKnownResyncID];

  if (lastKnownResyncID)
  {
    lastKnownResyncID2 = [(NPKCompanionAgent *)self lastKnownResyncID];
    [v19 setLastKnownResyncID:{objc_msgSend(lastKnownResyncID2, "unsignedIntValue")}];
  }

  data = [v19 data];

  return data;
}

- (void)_handleAddAndSendToGizmoForPass:(id)pass syncID:(id)d completion:(id)completion
{
  passCopy = pass;
  dCopy = d;
  completionCopy = completion;
  if ([(NPKCompanionAgent *)self shouldDropIDSMessages])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100015CE4;
    v20[3] = &unk_100071620;
    v11 = passCopy;
    v21 = v11;
    v22 = completionCopy;
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
    v15 = dCopy;
    [(NPKCompanionAgent *)self _addPassToDatabaseAndPrepareForTransmissionToGizmo:v11 isUpdate:0 withCompletion:v14];

    _Block_object_dispose(v18, 8);
    objc_destroyWeak(&v19);
  }
}

- (void)_handleUpdateAndSendToGizmoForPass:(id)pass syncID:(id)d completion:(id)completion
{
  passCopy = pass;
  dCopy = d;
  completionCopy = completion;
  if ([(NPKCompanionAgent *)self shouldDropIDSMessages])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100016784;
    v20[3] = &unk_100071620;
    v11 = passCopy;
    v21 = v11;
    v22 = completionCopy;
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
    v15 = dCopy;
    [(NPKCompanionAgent *)self _addPassToDatabaseAndPrepareForTransmissionToGizmo:v11 isUpdate:1 withCompletion:v14];

    _Block_object_dispose(v18, 8);
    objc_destroyWeak(&v19);
  }
}

- (void)_handleRemovalAndSendToGizmoForPassWithUniqueID:(id)d syncID:(id)iD completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  if (![(NPKCompanionAgent *)self shouldDropIDSMessages])
  {
    v11 = +[NPKGizmoDatabase sharedDatabase];
    v12 = [v11 passForUniqueID:dCopy];

    remoteDeviceManager = [(NPKCompanionAgent *)self remoteDeviceManager];
    [remoteDeviceManager deviceDidDeletePass:v12];

    [(NPKCompanionAgent *)self _removePassFromDatabaseWithID:dCopy];
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
        libraryHash = [(NPKCompanionAgent *)self libraryHash];
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
        v20 = dCopy;
        v18 = libraryHash;
        v21 = v18;
        v25 = buf;
        v22 = iDCopy;
        selfCopy = self;
        v24 = completionCopy;
        [(NPKCompanionAgent *)self fetchCatalogIfChanged:v19];

        _Block_object_dispose(buf, 8);
        objc_destroyWeak(&v31);

        goto LABEL_13;
      }

      if (!completionCopy)
      {
LABEL_13:

        goto LABEL_14;
      }
    }

    completionCopy[2](completionCopy);
    goto LABEL_13;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_14:
}

- (void)_handleCompanionPassAddedWithID:(id)d
{
  dCopy = d;
  workQueue = [(NPKCompanionAgent *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001766C;
  v7[3] = &unk_100071710;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  [workQueue performWork:v7];
}

- (void)_handleCompanionPassUpdatedWithID:(id)d
{
  dCopy = d;
  workQueue = [(NPKCompanionAgent *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100017974;
  v7[3] = &unk_100071710;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  [workQueue performWork:v7];
}

- (void)_handleCompanionPassRemovedWithID:(id)d
{
  dCopy = d;
  workQueue = [(NPKCompanionAgent *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100017C80;
  v7[3] = &unk_100071710;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  [workQueue performWork:v7];
}

- (CGSize)gizmoScreenSize
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  getDevices = [v2 getDevices];

  v4 = 0.0;
  if (getDevices)
  {
    v5 = 0.0;
    if (![getDevices count])
    {
      goto LABEL_30;
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = getDevices;
    v6 = getDevices;
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
          objCType = [v13 objCType];
          if (v13 && !strcmp(objCType, "{CGSize=dd}"))
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

        getDevices = v25;
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
  getDevices = [v2 getDevices];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = getDevices;
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

- (void)_addPassToDatabaseAndPrepareForTransmissionToGizmo:(id)gizmo isUpdate:(BOOL)update withCompletion:(id)completion
{
  gizmoCopy = gizmo;
  completionCopy = completion;
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  NPKGizmoScreenScale();
  [gizmoCopy setPreferredImageScale:?];
  [gizmoCopy setPreferredImageSuffix:NPKWatchSpecificAssetSuffix];
  v11 = NPKPairedDeviceSecureElementIdentifiers();
  if (v11)
  {
    paymentPass = [gizmoCopy paymentPass];
    [paymentPass updateDevicePaymentApplicationsWithSecureElementIdentifiers:v11];
  }

  [gizmoCopy flushLoadedImageSets];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000186CC;
  v28[3] = &unk_100070FA8;
  v13 = gizmoCopy;
  v29 = v13;
  selfCopy = self;
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
  selfCopy2 = self;
  updateCopy = update;
  v22 = completionCopy;
  v17 = completionCopy;
  v18 = v13;
  dispatch_group_notify(v16, &_dispatch_main_q, block);
}

- (void)_removePendingAppleCardNotification
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v3 localizedStringForKey:@"ACCOUNTPASS_PRODUCT_NAME" value:&stru_100073088 table:@"AccountPass"];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ACCOUNTPASS_PROVISIONING_ERROR" value:&stru_100073088 table:@"AccountPass"];

  bulletinManager = [(NPKCompanionAgent *)self bulletinManager];
  [bulletinManager removeBridgeBulletinsWithTitle:v7 message:v5 actionURL:0];
}

- (void)_removePassFromDatabaseWithID:(id)d
{
  dCopy = d;
  gizmoDatabase = [(NPKCompanionAgent *)self gizmoDatabase];
  v5 = [gizmoDatabase removePassWithUniqueID:dCopy];
}

- (void)_resyncPassUniqueIDUpdates:(id)updates andRemovals:(id)removals withResyncID:(id)d completion:(id)completion
{
  updatesCopy = updates;
  removalsCopy = removals;
  dCopy = d;
  completionCopy = completion;
  if ([(NPKCompanionAgent *)self shouldDropIDSMessages]|| NPKIsPairedDeviceStandalone())
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
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
        *&buf[14] = updatesCopy;
        *&buf[22] = 2112;
        v61 = removalsCopy;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Notice: Resyncing with sync ID: %@ pass updates: %@ removals: %@", buf, 0x20u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v61 = sub_10000CABC;
    v62 = sub_10000CACC;
    selfCopy = self;
    v63 = selfCopy;
    v57[0] = 0;
    v57[1] = v57;
    v57[2] = 0x2020000000;
    v57[3] = 0;
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v19 = [updatesCopy count];
    v56 = &v19[[removalsCopy count]];
    if ((NPKIsRunningInUIOnlyDemoMode() & 1) != 0 || NPKIsRunningInStoreDemoMode())
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }
    }

    else
    {
      [(NPKCompanionAgent *)selfCopy setLastKnownResyncID:dCopy];
      v20 = dispatch_group_create();
      if (v54[3])
      {
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_1000196E0;
        v44[3] = &unk_1000717D8;
        v21 = dCopy;
        v45 = v21;
        v47 = v57;
        v48 = &v53;
        v49 = buf;
        v22 = v14;
        v46 = v22;
        [removalsCopy enumerateObjectsUsingBlock:v44];
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
        [updatesCopy enumerateObjectsUsingBlock:v37];

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
            v59 = dCopy;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Notice: We have zero adds / removes to send; the companion just probably has an outdated expected hash.  Sending new expected hash (resync ID %@).", v58, 0xCu);
          }
        }

        v23 = objc_alloc_init(NPKProtoNewLibraryHashRequest);
        v34 = objc_alloc_init(NPKProtoHash);
        v27 = +[NPKGizmoDatabase sharedDatabase];
        v28 = [v27 libraryHashForWatchOSMajorVersion:{-[NPKCompanionAgent versionForCompleteHash](selfCopy, "versionForCompleteHash")}];
        [v34 setHashData:v28];

        [v23 setLibraryHash:v34];
        [v23 setSyncID:{objc_msgSend(v14, "unsignedIntValue")}];
        if (dCopy)
        {
          [v23 setResyncID:{objc_msgSend(dCopy, "unsignedIntValue")}];
        }

        lastKnownResyncID = [(NPKCompanionAgent *)selfCopy lastKnownResyncID];

        if (lastKnownResyncID)
        {
          lastKnownResyncID2 = [(NPKCompanionAgent *)selfCopy lastKnownResyncID];
          [v23 setLastKnownResyncID:{objc_msgSend(lastKnownResyncID2, "unsignedIntValue")}];
        }

        v31 = [IDSProtobuf alloc];
        data = [v23 data];
        v33 = [v31 initWithProtobufData:data type:8 isResponse:0];

        if (v33)
        {
          v50[0] = _NSConcreteStackBlock;
          v50[1] = 3221225472;
          v50[2] = sub_100019490;
          v50[3] = &unk_100070DB8;
          v52 = buf;
          v51 = v33;
          [(NPKCompanionAgent *)selfCopy _performAfterFirstDeviceUnlockAndPairedSyncAllowed:v50];
        }
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001A98C;
      block[3] = &unk_100070E08;
      v36 = completionCopy;
      dispatch_group_notify(v20, &_dispatch_main_q, block);
    }

    _Block_object_dispose(&v53, 8);
    _Block_object_dispose(v57, 8);
    _Block_object_dispose(buf, 8);
  }
}

- (BOOL)_shouldSyncPassFromCompanionPassLibrary:(id)library
{
  libraryCopy = library;
  npkCompleteHash = [libraryCopy npkCompleteHash];
  if (npkCompleteHash && [libraryCopy passType] != 1)
  {
    v5 = NPKShouldUseStandaloneSyncForPass();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_doFullSyncWithResyncID:(id)d
{
  dCopy = d;
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
        v16 = dCopy;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Telling sync engine to sync (full sync was requested with resync ID %@)", buf, 0xCu);
      }
    }

    passSyncService = [(NPKCompanionAgent *)self passSyncService];
    [passSyncService initiateSync];
  }

  v9 = pk_General_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_General_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = dCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Notice: Performing full sync with resync ID %@", buf, 0xCu);
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001ABDC;
  v13[3] = &unk_100070E90;
  v13[4] = self;
  v14 = dCopy;
  v12 = dCopy;
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
    passSyncService = [(NPKCompanionAgent *)self passSyncService];
    [passSyncService initiateSync];
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001B5A8;
  v7[3] = &unk_100071000;
  v7[4] = self;
  [(NPKCompanionAgent *)self _performAfterFirstDeviceUnlockAndPairedSyncAllowed:v7];
}

- (void)_checkHasCandidateRelevantPassesWithCompletion:(id)completion
{
  completionCopy = completion;
  temporarilyRetainedPassLibrary = [(NPKCompanionAgent *)self temporarilyRetainedPassLibrary];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001C050;
  v7[3] = &unk_100071A20;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [temporarilyRetainedPassLibrary fetchHasCandidatePasses:v7];
}

- (void)_reconcilePassesInDatabasePassingTest:(id)test withNewPassUniqueIDs:(id)ds passAccessor:(id)accessor addedPassHandler:(id)handler updatedPassHandler:(id)passHandler removedPassHandler:(id)removedPassHandler completion:(id)completion
{
  testCopy = test;
  accessorCopy = accessor;
  handlerCopy = handler;
  passHandlerCopy = passHandler;
  removedPassHandlerCopy = removedPassHandler;
  completionCopy = completion;
  v16 = [ds mutableCopy];
  v17 = +[NSMutableSet set];
  v18 = +[NSMutableSet set];
  v19 = +[NPKGizmoDatabase sharedDatabase];
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_10001C754;
  v71[3] = &unk_100071A48;
  v20 = testCopy;
  v75 = v20;
  v21 = accessorCopy;
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

  reconcileWorkQueues = [(NPKCompanionAgent *)self reconcileWorkQueues];
  [reconcileWorkQueues addObject:v24];

  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_10001C8A8;
  v66[3] = &unk_100071A98;
  v27 = v24;
  v67 = v27;
  v28 = v21;
  v68 = v28;
  v69 = handlerCopy;
  v29 = v20;
  v70 = v29;
  v30 = handlerCopy;
  [v23 enumerateObjectsUsingBlock:v66];
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_10001CB48;
  v61[3] = &unk_100071A98;
  v31 = v27;
  v62 = v31;
  v63 = v28;
  v64 = passHandlerCopy;
  v65 = v29;
  v32 = v29;
  v33 = passHandlerCopy;
  v52 = v28;
  [v22 enumerateObjectsUsingBlock:v61];
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_10001CDE8;
  v58[3] = &unk_100071AE8;
  v34 = v31;
  v59 = v34;
  v60 = removedPassHandlerCopy;
  v50 = removedPassHandlerCopy;
  [v54 enumerateObjectsUsingBlock:v58];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_10001CFA8;
  v55[3] = &unk_100071B10;
  v56 = v34;
  v57 = completionCopy;
  v55[4] = self;
  v35 = v34;
  v36 = completionCopy;
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

- (void)_reconcileDatabaseWithPaymentPassDirectoryWithAddedPassHandler:(id)handler updatedPassHandler:(id)passHandler removedPassHandler:(id)removedPassHandler completion:(id)completion
{
  completionCopy = completion;
  removedPassHandlerCopy = removedPassHandler;
  passHandlerCopy = passHandler;
  handlerCopy = handler;
  companionPaymentPassDatabase = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
  uniqueIDs = [companionPaymentPassDatabase uniqueIDs];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001D1B8;
  v16[3] = &unk_100071B78;
  v16[4] = self;
  [(NPKCompanionAgent *)self _reconcilePassesInDatabasePassingTest:&stru_100071B50 withNewPassUniqueIDs:uniqueIDs passAccessor:v16 addedPassHandler:handlerCopy updatedPassHandler:passHandlerCopy removedPassHandler:removedPassHandlerCopy completion:completionCopy];
}

- (void)_reconcileDatabaseWithCompanionPassLibraryWithAddedPassHandler:(id)handler updatedPassHandler:(id)passHandler removedPassHandler:(id)removedPassHandler completion:(id)completion
{
  completionCopy = completion;
  removedPassHandlerCopy = removedPassHandler;
  passHandlerCopy = passHandler;
  handlerCopy = handler;
  v14 = +[NSMutableDictionary dictionary];
  passLibrary = [(NPKCompanionAgent *)self passLibrary];
  passes = [passLibrary passes];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10001D45C;
  v29[3] = &unk_100071BA0;
  v17 = v14;
  v30 = v17;
  [passes enumerateObjectsUsingBlock:v29];

  allKeys = [v17 allKeys];
  v19 = [NSSet setWithArray:allKeys];

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
  [(NPKCompanionAgent *)self _reconcilePassesInDatabasePassingTest:v20 withNewPassUniqueIDs:v19 passAccessor:v22 addedPassHandler:handlerCopy updatedPassHandler:passHandlerCopy removedPassHandler:removedPassHandlerCopy completion:completionCopy, v23, v24, v25, v26];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  initializedPairingIdentifier = [(NPKCompanionAgent *)self initializedPairingIdentifier];

  if (!initializedPairingIdentifier)
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
      v45 = connectionCopy;
      v46 = 2112;
      v47 = listenerCopy;
      v48 = 2112;
      v49 = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Warning: Daemon is not initialized; rejecting incoming connection %@ on listener %@\n\tPaired device: %@", buf, 0x20u);
    }

LABEL_26:
    v19 = 0;
    goto LABEL_27;
  }

  xpcListener = [(NPKCompanionAgent *)self xpcListener];

  if (xpcListener == listenerCopy)
  {
    v23 = pk_General_log();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

    if (v24)
    {
      v25 = pk_General_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v45 = connectionCopy;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Notice: new NPKCompanionAgent standard listener: %@", buf, 0xCu);
      }
    }

    v18 = [connectionCopy valueForEntitlement:@"com.apple.NPKCompanionAgent.client"];
    if (v18)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v18 BOOLValue])
        {
          v26 = [[NPDCompanionAgentClient alloc] initWithConnection:connectionCopy];
          [(NPDCompanionAgentClient *)v26 setDelegate:self];
          [(NPDCompanionAgentClient *)v26 setDataSource:self];
          v27 = NPKCompanionClientProtocolInterface();
          [connectionCopy setRemoteObjectInterface:v27];

          v28 = NPKCompanionServerProtocolInterface();
          [connectionCopy setExportedInterface:v28];

          [connectionCopy setExportedObject:v26];
          objc_initWeak(buf, connectionCopy);
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_10001DA8C;
          v41[3] = &unk_1000712C0;
          objc_copyWeak(&v43, buf);
          v29 = v26;
          v42 = v29;
          [connectionCopy setInvalidationHandler:v41];
          [connectionCopy resume];
          activeClientsQueue = [(NPKCompanionAgent *)self activeClientsQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10001DB70;
          block[3] = &unk_100070E90;
          block[4] = self;
          v40 = v29;
          v31 = v29;
          dispatch_sync(activeClientsQueue, block);

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
        processIdentifier = [connectionCopy processIdentifier];
        *buf = 134217984;
        v45 = processIdentifier;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Error: A process with PID %llu attempted to connect to NPKCompanionAgent but lacks the com.apple.NPKCompanionAgent.client entitlement", buf, 0xCu);
      }
    }

    goto LABEL_26;
  }

  libraryListener = [(NPKCompanionAgent *)self libraryListener];

  if (libraryListener == listenerCopy)
  {
    v11 = pk_General_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = pk_General_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v45 = connectionCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: new NPKCompanionAgent library listener: %@", buf, 0xCu);
      }
    }

    v14 = [NPDCompanionPassLibrary alloc];
    companionPaymentPassDatabase = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
    v16 = [(NPDCompanionPassLibrary *)v14 initWithConnection:connectionCopy companionPaymentPassDatabase:companionPaymentPassDatabase dataSource:self];

    [(NPDPassLibrary *)v16 setDelegate:self];
    [connectionCopy setExportedObject:v16];
    [connectionCopy resume];
    activeClientsQueue2 = [(NPKCompanionAgent *)self activeClientsQueue];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10001DBC4;
    v37[3] = &unk_100070E90;
    v37[4] = self;
    v38 = v16;
    v18 = v16;
    dispatch_sync(activeClientsQueue2, v37);

    goto LABEL_9;
  }

LABEL_13:
  v19 = 0;
LABEL_28:

  return v19;
}

- (NSSet)companionPaymentPassUniqueIDs
{
  companionPaymentPassDatabase = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
  uniqueIDs = [companionPaymentPassDatabase uniqueIDs];

  return uniqueIDs;
}

- (id)companionPaymentPassWithUniqueID:(id)d
{
  dCopy = d;
  companionPaymentPassDatabase = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
  v6 = [companionPaymentPassDatabase paymentPassWithUniqueID:dCopy];

  return v6;
}

- (id)paymentWebService
{
  remoteAdminConnectionServiceAgent = [(NPKCompanionAgent *)self remoteAdminConnectionServiceAgent];
  webService = [remoteAdminConnectionServiceAgent webService];

  return webService;
}

- (void)serviceProviderDataForPassWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  paymentWebService = [(NPKCompanionAgent *)self paymentWebService];
  targetDevice = [paymentWebService targetDevice];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [targetDevice serviceProviderDataForPassWithUniqueIdentifier:identifierCopy encrypted:0 completion:completionCopy];
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
        v13 = [targetDevice description];
        v15 = 138412546;
        v16 = v13;
        v17 = 2112;
        v18 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error: Current target device: %@, does not support request service provider data for unique ID: %@", &v15, 0x16u);
      }
    }

    v14 = [NSError errorWithDomain:NPKErrorDomain code:-1006 userInfo:0];
    completionCopy[2](completionCopy, 0, v14);
  }
}

- (void)encryptedServiceProviderDataForPassWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  paymentWebService = [(NPKCompanionAgent *)self paymentWebService];
  targetDevice = [paymentWebService targetDevice];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001E0D0;
    v15[3] = &unk_100071BF0;
    v16 = completionCopy;
    [targetDevice serviceProviderDataForPassWithUniqueIdentifier:identifierCopy encrypted:1 completion:v15];
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
        v14 = [targetDevice description];
        *buf = 138412546;
        v18 = v14;
        v19 = 2112;
        v20 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error: Current target device: %@, does not support request encrypted service provider data for unique ID: %@", buf, 0x16u);
      }
    }

    v10 = [NSError errorWithDomain:NPKErrorDomain code:-1006 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v10);
  }
}

- (void)paymentSetupFeaturesForConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  paymentWebService = [(NPKCompanionAgent *)self paymentWebService];
  targetDevice = [paymentWebService targetDevice];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [targetDevice paymentSetupFeaturesForConfiguration:configurationCopy completion:completionCopy];
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
        v13 = [targetDevice description];
        v14 = 138412546;
        v15 = v13;
        v16 = 2112;
        v17 = configurationCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error: Current target device: %@ does not support request payment setup features for configuration: %@", &v14, 0x16u);
      }
    }

    completionCopy[2](completionCopy, 0);
  }
}

- (id)remoteDevicesManagerPairedDeviceOSVersion:(id)version
{
  paymentWebService = [(NPKCompanionAgent *)self paymentWebService];
  targetDevice = [paymentWebService targetDevice];
  osVersion = [targetDevice osVersion];

  return osVersion;
}

- (void)remoteDevicesManager:(id)manager provisionedCredentialCountsForType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
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

  v10 = completionCopy;
  NPKGuaranteeMainThread();
}

- (void)remoteDevicesManager:(id)manager remoteBiometricAuthenticationStatusForCredentialType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
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

  v10 = completionCopy;
  NPKGuaranteeMainThread();
}

- (void)passLibrary:(id)library requestsAdditionOfPasses:(id)passes completion:(id)completion
{
  passesCopy = passes;
  completionCopy = completion;
  v8 = dispatch_group_create();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = passesCopy;
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
          companionPaymentPassDatabase = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
          paymentPass = [v14 paymentPass];
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_10001ED40;
          v21[3] = &unk_100071C90;
          v22 = v8;
          [companionPaymentPassDatabase savePaymentPass:paymentPass requireExisting:0 requireNewer:0 completion:v21];
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
  v20 = completionCopy;
  v17 = completionCopy;
  dispatch_group_notify(v8, &_dispatch_main_q, block);
}

- (void)device:(id)device propertyDidChange:(id)change fromValue:(id)value
{
  changeCopy = change;
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = changeCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notice: Got property did change notification (property: %@)", buf, 0xCu);
    }
  }

  NPKGuaranteeMainThread();
}

- (void)fetchCatalogIfChanged:(id)changed
{
  changedCopy = changed;
  companionCatalogManager = [(NPKCompanionAgent *)self companionCatalogManager];
  passLibrary = [(NPKCompanionAgent *)self passLibrary];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001EF74;
  v9[3] = &unk_100071CE0;
  v10 = companionCatalogManager;
  v11 = changedCopy;
  v7 = changedCopy;
  v8 = companionCatalogManager;
  [passLibrary getPassesAndCatalog:0 withHandler:v9];
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

- (void)_performAfterFirstDeviceUnlockAndPairedSyncAllowed:(id)allowed
{
  allowedCopy = allowed;
  v3 = allowedCopy;
  NPKGuaranteeMainThread();
}

- (void)_performAfterFirstDeviceUnlock:(id)unlock
{
  unlockCopy = unlock;
  v3 = unlockCopy;
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

- (void)_removeCompanionDatabasePassWithUniqueID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  companionPaymentPassDatabase = [(NPKCompanionAgent *)self companionPaymentPassDatabase];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001FE1C;
  v10[3] = &unk_100071D90;
  v11 = completionCopy;
  v9 = completionCopy;
  [companionPaymentPassDatabase removePaymentPassWithUniqueID:dCopy completion:v10];
}

- (void)handleUpdatedSettings:(unint64_t)settings forPassWithUniqueID:(id)d
{
  dCopy = d;
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      settingsCopy = settings;
      v58 = 2112;
      settingsCopy3 = dCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notice: Handling updated settings %lu for pass with unique ID %@", buf, 0x16u);
    }
  }

  passLibrary = [(NPKCompanionAgent *)self passLibrary];
  v11 = [passLibrary passWithUniqueID:dCopy];
  v12 = v11;
  if (!v11 || [v11 passType] == 1)
  {
    v13 = +[NPKGizmoDatabase sharedDatabase];
    v14 = [v13 passForUniqueID:dCopy];

    if (v14)
    {
      settings = [v14 settings];
      v16 = pk_Sync_log();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

      if (v17)
      {
        v18 = pk_Sync_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          settingsCopy = dCopy;
          v58 = 2048;
          settingsCopy3 = settings;
          v60 = 2048;
          settingsCopy2 = settings;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Notice: Checking for settings update for watch pass with unique ID: %@. Current settings: %lu, new settings: %lu", buf, 0x20u);
        }
      }

      v50 = settings;
      if (settings == settings)
      {
        goto LABEL_41;
      }

      selfCopy = self;
      passTypeIdentifier = [v14 passTypeIdentifier];
      v20 = [passTypeIdentifier copy];

      v21 = pk_General_log();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

      if (v22)
      {
        v23 = pk_General_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          uniqueID = [v14 uniqueID];
          [v20 length];
          v25 = NSStringFromBOOL();
          *buf = 138412802;
          settingsCopy = uniqueID;
          v58 = 2048;
          settingsCopy3 = settings;
          v60 = 2112;
          settingsCopy2 = v25;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Notice: Updating settings for watch pass with uniqueID: %@ to settings: %lu. Pass has pass type identifier?: %@", buf, 0x20u);
        }
      }

      [v14 setSettings:settings];
      v26 = +[NPKGizmoDatabase sharedDatabase];
      v27 = [v26 savePass:v14 isLocalPass:0];

      if ((settings & 8) == 0)
      {
        v28 = pk_Payment_log();
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

        if (v29)
        {
          v30 = pk_Payment_log();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            settingsCopy = dCopy;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Notice: Removing transactions for %@ from local database", buf, 0xCu);
          }
        }

        v46 = v20;
        settingsCopy4 = settings;
        v48 = passLibrary;
        paymentPass = [v14 paymentPass];
        deviceTransactionSourceIdentifiers = [paymentPass deviceTransactionSourceIdentifiers];

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v33 = deviceTransactionSourceIdentifiers;
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

        settings = settingsCopy4;
        passLibrary = v48;
        v20 = v46;
      }

      [(NPKCompanionAgent *)selfCopy notifySettingsChangedForPassWithUniqueID:dCopy previousSettings:v50 newSettings:settings];
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
        settingsCopy = dCopy;
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
      settingsCopy = dCopy;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Notice: Updating settings for companion pass %@", buf, 0xCu);
    }
  }

  [v12 setSettings:settings];
LABEL_42:
}

- (void)fetchPendingTransactionForPassWithUniqueID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  maintenanceService = [(NPKCompanionAgent *)self maintenanceService];
  [maintenanceService fetchPendingTransactionForPassWithUniqueID:dCopy completion:completionCopy];
}

- (void)markPendingTransactionAsProcessedForPassWithUniqueID:(id)d
{
  dCopy = d;
  maintenanceService = [(NPKCompanionAgent *)self maintenanceService];
  [maintenanceService markPendingTransactionAsProcessedForPassWithUniqueID:dCopy];
}

- (void)notifySettingsChangedForPassWithUniqueID:(id)d previousSettings:(unint64_t)settings newSettings:(unint64_t)newSettings
{
  dCopy = d;
  v9 = +[NSDistributedNotificationCenter defaultCenter];
  v12[0] = PKPassLibraryUniqueIDUserInfoKey;
  v12[1] = PKPassLibrarySettingsUserInfoKey;
  v13[0] = dCopy;
  v10 = [NSNumber numberWithUnsignedInteger:newSettings];
  v13[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v9 postNotificationName:@"PKPassLibraryRemotePassSettingsDidChangeNotification" object:0 userInfo:v11];

  [(NPKCompanionAgent *)self _handlePotentialTransactionServiceEnabledChangeWithPreviousSettings:settings newSettings:newSettings uniqueID:dCopy];
  [(NPKCompanionAgent *)self _handlePotentialMessageServiceEnabledChangeWithPreviousSettings:settings newSettings:newSettings uniqueID:dCopy];
}

- (void)_handlePotentialTransactionServiceEnabledChangeWithPreviousSettings:(unint64_t)settings newSettings:(unint64_t)newSettings uniqueID:(id)d
{
  settingsCopy = settings;
  dCopy = d;
  if (((settingsCopy >> 3) & 1) != ((newSettings >> 3) & 1))
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_10000CABC;
    v30 = sub_10000CACC;
    v31 = 0;
    activeClientsQueue = [(NPKCompanionAgent *)self activeClientsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000208D0;
    block[3] = &unk_100070DB8;
    block[4] = self;
    block[5] = &v26;
    dispatch_sync(activeClientsQueue, block);

    v10 = pk_Payment_log();
    LODWORD(activeClientsQueue) = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    v11 = newSettings & 8;
    if (activeClientsQueue)
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
        v36 = dCopy;
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

          connection = [*(*(&v21 + 1) + 8 * v18) connection];
          remoteObjectProxy = [connection remoteObjectProxy];

          [remoteObjectProxy paymentPassWithUniqueIdentifier:dCopy didEnableTransactionService:v11 != 0];
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

- (void)_handlePotentialMessageServiceEnabledChangeWithPreviousSettings:(unint64_t)settings newSettings:(unint64_t)newSettings uniqueID:(id)d
{
  settingsCopy = settings;
  dCopy = d;
  if (((settingsCopy >> 6) & 1) != ((newSettings >> 6) & 1))
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_10000CABC;
    v30 = sub_10000CACC;
    v31 = 0;
    activeClientsQueue = [(NPKCompanionAgent *)self activeClientsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100020C24;
    block[3] = &unk_100070DB8;
    block[4] = self;
    block[5] = &v26;
    dispatch_sync(activeClientsQueue, block);

    v10 = pk_Payment_log();
    LODWORD(activeClientsQueue) = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    v11 = newSettings & 0x40;
    if (activeClientsQueue)
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
        v36 = dCopy;
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

          connection = [*(*(&v21 + 1) + 8 * v18) connection];
          remoteObjectProxy = [connection remoteObjectProxy];

          [remoteObjectProxy paymentPassWithUniqueIdentifier:dCopy didEnableMessageService:v11 != 0];
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