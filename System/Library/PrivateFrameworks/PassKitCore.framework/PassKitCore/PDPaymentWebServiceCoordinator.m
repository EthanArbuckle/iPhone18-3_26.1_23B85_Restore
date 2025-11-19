@interface PDPaymentWebServiceCoordinator
- (BOOL)_queue_automaticDeviceCheckInRequiredForRegion:(id)a3;
- (BOOL)shouldStartConsistencyCheck;
- (BOOL)synchronizeWithTSM;
- (PDAppletSubcredentialManager)credentialManager;
- (PDAppletSubcredentialManager)subcredentialManager;
- (PDPaymentWebServiceCoordinator)initWithPushNotificationManager:(id)a3 databaseManager:(id)a4 passStore:(id)a5 assertionManager:(id)a6 cloudStoreCoordinator:(id)a7 idsManager:(id)a8 tapToRadarDelegate:(id)a9 receiptFileManager:(id)a10 expressPassManager:(id)a11 familyCircleManager:(id)a12;
- (PDPushProvisioningManager)pushProvisioningManager;
- (PDUserNotificationManager)userNotificationManager;
- (PKPaymentWebServiceContext)sharedWebServiceContext;
- (double)_queue_deviceCheckInRepeatInterval;
- (id)_userNotificationFromResponse:(id)a3;
- (id)accountServicePushTopics;
- (id)applyServicePushTopics;
- (id)paymentOffersServicePushTopics;
- (id)paymentPasses;
- (id)pushNotificationTopics;
- (id)sharedWebService;
- (void)_accessObserversWithHandler:(id)a3;
- (void)_fetchPassesIfNecessaryForPushTopic:(id)a3;
- (void)_handleDeviceCheckInAction:(int64_t)a3 region:(id)a4 completion:(id)a5;
- (void)_handleDownloadedPass:(id)a3;
- (void)_paymentHardwareStatusWithType:(unint64_t)a3 completion:(id)a4;
- (void)_performDeviceCheckInTask:(id)a3;
- (void)_performNotificationActionWithUserInfo:(id)a3;
- (void)_processValueAddedServiceTransaction:(id)a3;
- (void)_queue_cancelAllDeviceCheckInTasks;
- (void)_queue_checkContextForDeviceCheckInAuthRequirement:(id)a3 completion:(id)a4;
- (void)_queue_coeleaseDeviceCheckInCompletion:(id)a3;
- (void)_queue_completeDeviceCheckInTask:(id)a3 success:(BOOL)a4 error:(id)a5;
- (void)_queue_completeDeviceUpgradeTasks;
- (void)_queue_enqueueDeviceCheckInTask:(id)a3;
- (void)_queue_handleCheckInForRegion:(id)a3 action:(int64_t)a4 completion:(id)a5;
- (void)_queue_performContactInformationFetchTaskWithCompletion:(id)a3;
- (void)_queue_performOwnershipTokensRequestWithUserInfo:(id)a3;
- (void)_queue_performRegistrationForBrokerURL:(id)a3 force:(BOOL)a4 completion:(id)a5;
- (void)_queue_performRegistrationForRegion:(id)a3 force:(BOOL)a4 completion:(id)a5;
- (void)_queue_provisionPushProvisioningSharingIdentifiers;
- (void)_queue_registerDeviceAtBrokerURL:(id)a3 completion:(id)a4;
- (void)_queue_scheduleDeviceCheckInWithStartTimeOffset:(double)a3 repeatInterval:(double)a4 randomizeTimes:(BOOL)a5;
- (void)_queue_setupBackgroundWebServiceWithCompletion:(id)a3;
- (void)_queue_unscheduleDeviceCheckIn;
- (void)_runDeviceUpgradeTasks;
- (void)_scheduleDeviceUpgradeTaskActivityWithRandomizeStartDate:(BOOL)a3;
- (void)_updateWebServiceConfigurationWithCompletion:(id)a3;
- (void)_updateWebServiceConfigurationWithSupportedRegionTimeInterval:(double)a3 unsupportedRegionTimeInterval:(double)a4 completion:(id)a5;
- (void)accountAttestationAnonymizationSaltWithCompletion:(id)a3;
- (void)applyPushNotificationToken:(id)a3;
- (void)assertionManager:(id)a3 didAcquireAssertion:(id)a4;
- (void)backgroundRegisterCredentialWithRequest:(id)a3;
- (void)checkFPANCredentialEligibility:(id)a3 completion:(id)a4;
- (void)connect;
- (void)dealloc;
- (void)deleteSharedWebServiceWithDiagnosticReason:(id)a3;
- (void)deviceStateWithCompletion:(id)a3;
- (void)didDownloadPaymentPass:(id)a3;
- (void)downloadReceiptForTransaction:(id)a3;
- (void)handleDeletionForPassTypeIdentifier:(id)a3 serialNumber:(id)a4;
- (void)handleInsertionForPaymentPass:(id)a3;
- (void)handlePushNotificationForTopic:(id)a3 userInfo:(id)a4;
- (void)handleRequestedActions:(id)a3 completion:(id)a4;
- (void)initiateDevicePassesDownload;
- (void)noteAccountChanged;
- (void)noteWebServiceDidChange;
- (void)passAdded:(id)a3;
- (void)passWillBeRemoved:(id)a3 withDiagnosticReason:(id)a4;
- (void)paymentHardwareStatusWithType:(unint64_t)a3 completion:(id)a4;
- (void)paymentWebService:(id)a3 didDownloadPass:(id)a4 cloudStoreCoordinatorDelegate:(id)a5;
- (void)paymentWebService:(id)a3 didDownloadPassRemoteAssets:(id)a4 completion:(id)a5;
- (void)paymentWebService:(id)a3 didDownloadSerialNumbersForInstalledPasses:(id)a4 inRegion:(id)a5;
- (void)paymentWebService:(id)a3 didRegisterCredentialWithIdentifier:(id)a4 response:(id)a5 error:(id)a6;
- (void)paymentWebServiceBackgroundSessionDidBecomeInvalid:(id)a3;
- (void)performConsistencyCheck;
- (void)performDeviceCheckInWithCompletion:(id)a3;
- (void)performHandlerOnSharedWebServiceQueue:(id)a3;
- (void)performRegistrationForBrokerURL:(id)a3 force:(BOOL)a4 completion:(id)a5;
- (void)performRegistrationForMemberOfRegions:(id)a3 force:(BOOL)a4 completion:(id)a5;
- (void)performRegistrationForRegion:(id)a3 force:(BOOL)a4 completion:(id)a5;
- (void)performScheduledActivityWithIdentifier:(id)a3 activityCriteria:(id)a4;
- (void)processValueAddedServiceTransaction:(id)a3;
- (void)receivedXPCEvent:(id)a3 forEventStream:(id)a4;
- (void)registerCredentialWithRequest:(id)a3 completion:(id)a4;
- (void)registerObserver:(id)a3;
- (void)scheduleConsistencyCheck:(id)a3 pluggedIn:(BOOL)a4 backoffLevel:(id)a5;
- (void)scheduleConsistencyCheckIfNecessary;
- (void)scheduleDeviceCheckInIfNecessary;
- (void)scheduleDeviceCheckInWithStartTimeOffset:(double)a3;
- (void)scheduleDeviceUpgradeTasksIfNecessaryWithRandomizeStartDate:(BOOL)a3;
- (void)setAccountAttestationAnonymizationSalt:(id)a3 withCompletion:(id)a4;
- (void)setAccountManager:(id)a3;
- (void)setDeviceCheckInContextBuildVersion:(id)a3 outstandingAction:(int64_t)a4 forRegion:(id)a5;
- (void)setDeviceUpgradeTasksContextBuildVersion:(id)a3 upgradeTaskVersion:(int64_t)a4 retryCount:(int64_t)a5;
- (void)setSharedWebService:(id)a3;
- (void)setUserNotificationManager:(id)a3;
- (void)startBackgroundVerificationObserverForPass:(id)a3 verificationMethod:(id)a4;
- (void)startTasksIfNecessary;
- (void)submitVerificationCode:(id)a3 verificationData:(id)a4 forPass:(id)a5 handler:(id)a6;
- (void)unregisterObserver:(id)a3;
- (void)unscheduleDeviceCheckIn;
- (void)unscheduleDeviceUpgradeTaskActivity;
- (void)updateSharedWebServiceContext:(id)a3;
- (void)updateWebServiceConfigurationWithCompletion:(id)a3;
- (void)validatePreconditionsWithCompletion:(id)a3;
- (void)verificationObserver:(id)a3 didObserveVerificationCode:(id)a4;
- (void)verificationObserverDidTimeout:(id)a3;
@end

@implementation PDPaymentWebServiceCoordinator

- (PKPaymentWebServiceContext)sharedWebServiceContext
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(PKPaymentWebService *)self->_sharedWebService context];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (PDPaymentWebServiceCoordinator)initWithPushNotificationManager:(id)a3 databaseManager:(id)a4 passStore:(id)a5 assertionManager:(id)a6 cloudStoreCoordinator:(id)a7 idsManager:(id)a8 tapToRadarDelegate:(id)a9 receiptFileManager:(id)a10 expressPassManager:(id)a11 familyCircleManager:(id)a12
{
  v58 = a3;
  v57 = a4;
  v56 = a5;
  v47 = a6;
  v55 = a6;
  v54 = a7;
  v48 = a8;
  v53 = a8;
  v52 = a9;
  v51 = a10;
  v50 = a11;
  v49 = a12;
  v59.receiver = self;
  v59.super_class = PDPaymentWebServiceCoordinator;
  v18 = [(PDPaymentWebServiceCoordinator *)&v59 init];
  if (v18)
  {
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("sharedWebServiceQueue", v19);
    sharedWebServiceQueue = v18->_sharedWebServiceQueue;
    v18->_sharedWebServiceQueue = v20;

    v22 = dispatch_queue_create("com.apple.passd.pdpaymentWebServiceCoordinator.reply", v19);
    replyQueue = v18->_replyQueue;
    v18->_replyQueue = v22;

    objc_storeStrong(&v18->_pushNotificationManager, a3);
    objc_storeStrong(&v18->_databaseManager, a4);
    [(PDDatabaseManager *)v18->_databaseManager setPaymentServicesDelegate:v18];
    v24 = +[PKSecureElement sharedSecureElement];
    secureElement = v18->_secureElement;
    v18->_secureElement = v24;

    objc_storeStrong(&v18->_passStore, a5);
    objc_storeStrong(&v18->_tapToRadarDelegate, a9);
    objc_storeStrong(&v18->_receiptFileManager, a10);
    objc_storeStrong(&v18->_expressPassManager, a11);
    v26 = PKSharedWebServiceContextPath();
    v27 = [PKPaymentWebServiceContext contextWithArchive:v26];

    v28 = [[PDPaymentWebServiceArchiver alloc] initWithQueue:v18->_sharedWebServiceQueue webServiceCoordinator:v18];
    archiver = v18->_archiver;
    v18->_archiver = v28;

    v30 = [[PDPaymentWebServiceTargetDevice alloc] initWithDataSource:v18];
    v31 = [[PKPaymentWebService alloc] initWithContext:v27 targetDevice:v30 archiver:v18->_archiver tapToRadarDelegate:v18->_tapToRadarDelegate];
    sharedWebService = v18->_sharedWebService;
    v18->_sharedWebService = v31;

    v33 = [[PDPassUpgradeController alloc] initWithWebService:v18->_sharedWebService cardFileManager:v18->_passStore];
    upgradeController = v18->_upgradeController;
    v18->_upgradeController = v33;

    v35 = [[PDPaymentFPANCardImportManager alloc] initWithWebService:v18->_sharedWebService webServiceQueue:v18->_sharedWebServiceQueue databaseManager:v18->_databaseManager];
    fpanCardImportManager = v18->_fpanCardImportManager;
    v18->_fpanCardImportManager = v35;

    objc_storeStrong(&v18->_assertionManager, v47);
    objc_storeStrong(&v18->_familyCircleManager, a12);
    objc_storeStrong(&v18->_cloudStoreCoordinator, a7);
    objc_storeStrong(&v18->_idsManager, v48);
    v37 = +[NSHashTable pk_weakObjectsHashTableUsingPointerPersonality];
    observers = v18->_observers;
    v18->_observers = v37;

    [(PDAssertionManager *)v18->_assertionManager registerObserver:v18];
    [(PDPushNotificationManager *)v18->_pushNotificationManager registerConsumer:v18];
    v39 = objc_alloc_init(NSMutableArray);
    deviceCheckInTasks = v18->_deviceCheckInTasks;
    v18->_deviceCheckInTasks = v39;

    v41 = objc_alloc_init(NSMutableSet);
    fetchingReceiptUniqueIDs = v18->_fetchingReceiptUniqueIDs;
    v18->_fetchingReceiptUniqueIDs = v41;

    v18->_lock._os_unfair_lock_opaque = 0;
    v18->_observersLock._os_unfair_lock_opaque = 0;
    v43 = [[PDPaymentSetupFeaturesCoordinator alloc] initWithWebService:v18->_sharedWebService webServiceQueue:v18->_sharedWebServiceQueue databaseManager:v18->_databaseManager paymentWebServiceCoordinator:v18 accountManager:v18->_accountManager familyCircleManager:v18->_familyCircleManager discoveryManager:v18->_discoveryManager];
    paymentSetupFeaturesCoordinator = v18->_paymentSetupFeaturesCoordinator;
    v18->_paymentSetupFeaturesCoordinator = v43;
  }

  return v18;
}

- (void)dealloc
{
  [(PKPaymentWebService *)self->_sharedWebService invalidate];
  v3.receiver = self;
  v3.super_class = PDPaymentWebServiceCoordinator;
  [(PDPaymentWebServiceCoordinator *)&v3 dealloc];
}

- (void)setAccountManager:(id)a3
{
  objc_storeStrong(&self->_accountManager, a3);
  v5 = a3;
  [(PDPaymentSetupFeaturesCoordinator *)self->_paymentSetupFeaturesCoordinator setAccountManager:self->_accountManager];
}

- (void)setUserNotificationManager:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_userNotificationManager, v4);
  [(PDPaymentSetupFeaturesCoordinator *)self->_paymentSetupFeaturesCoordinator setUserNotificationManager:v4];
}

- (void)registerObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock(&self->_observersLock);
    [(NSHashTable *)self->_observers addObject:v4];

    os_unfair_lock_unlock(&self->_observersLock);
  }
}

- (void)unregisterObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock(&self->_observersLock);
    [(NSHashTable *)self->_observers removeObject:v4];

    os_unfair_lock_unlock(&self->_observersLock);
  }
}

- (void)_accessObserversWithHandler:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    __break(1u);
  }

  v5 = v4;
  os_unfair_lock_lock(&self->_observersLock);
  v6 = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_observersLock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v5[2](v5, *(*(&v12 + 1) + 8 * i));
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)connect
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003828C;
  block[3] = &unk_10083C470;
  block[4] = self;
  if (qword_1009241A8 != -1)
  {
    dispatch_once(&qword_1009241A8, block);
  }
}

- (void)scheduleConsistencyCheckIfNecessary
{
  if ((PDScheduledActivityExists() & 1) == 0)
  {
    v3 = [NSDate dateWithTimeIntervalSinceNow:600.0];
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "No consistency check scheduled... scheduling for %@", &v5, 0xCu);
    }

    [(PDPaymentWebServiceCoordinator *)self scheduleConsistencyCheck:v3 pluggedIn:0 backoffLevel:&off_1008A2888];
  }
}

- (void)updateWebServiceConfigurationWithCompletion:(id)a3
{
  v4 = a3;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000384C8;
  v7[3] = &unk_10083DCB8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(sharedWebServiceQueue, v7);
}

- (void)_updateWebServiceConfigurationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PDPaymentWebServiceCoordinator *)self sharedWebService];
  if ([v5 needsConfiguration])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10003859C;
    v6[3] = &unk_10083DCE0;
    v7 = v4;
    [v5 configurePaymentServiceWithCompletion:v6];
  }

  else if (v4)
  {
    v4[2](v4);
  }
}

- (void)_updateWebServiceConfigurationWithSupportedRegionTimeInterval:(double)a3 unsupportedRegionTimeInterval:(double)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(PDPaymentWebServiceCoordinator *)self sharedWebService];
  if ([v9 needsConfigurationWithSupportedRegionTimeInterval:a3 unsupportedRegionTimeInterval:a4])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100038760;
    v10[3] = &unk_10083DCE0;
    v11 = v8;
    [v9 configurePaymentServiceWithCompletion:v10];
  }

  else if (v8)
  {
    v8[2](v8);
  }
}

- (id)sharedWebService
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_sharedWebService;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSharedWebService:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  sharedWebService = self->_sharedWebService;
  self->_sharedWebService = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateSharedWebServiceContext:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [(PKPaymentWebService *)self->_sharedWebService context];
    v6 = [v5 deviceID];

    if (v6)
    {
      v7 = [v4 deviceID];

      if (!v7)
      {
        v8 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = +[NSThread callStackSymbols];
          v18 = 136315394;
          v19 = "[PDPaymentWebServiceCoordinator updateSharedWebServiceContext:]";
          v20 = 2112;
          v21 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s archiving context without deviceID: %@", &v18, 0x16u);
        }
      }
    }

    v10 = [(PKPaymentWebService *)self->_sharedWebService context];
    v11 = [v10 pushToken];

    [(PKPaymentWebService *)self->_sharedWebService setContext:v4];
    if (v11)
    {
      v12 = [(PKPaymentWebService *)self->_sharedWebService context];
      v13 = [v12 pushToken];
      v14 = [v11 isEqualToString:v13];

      if ((v14 & 1) == 0)
      {
        v15 = [(PKPaymentWebService *)self->_sharedWebService context];
        [v15 setPushToken:v11];
      }
    }

    archiver = self->_archiver;
    v17 = [(PKPaymentWebService *)self->_sharedWebService context];
    [(PDPaymentWebServiceArchiver *)archiver archiveContext:v17];

    os_unfair_lock_unlock(&self->_lock);
    [(PDPushNotificationManager *)self->_pushNotificationManager recalculatePushTopics];
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Error: Refusing to update webservice context with nil.", &v18, 2u);
    }
  }
}

- (void)performHandlerOnSharedWebServiceQueue:(id)a3
{
  v4 = a3;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100038BC0;
  v7[3] = &unk_10083C820;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(sharedWebServiceQueue, v7);
}

- (void)startTasksIfNecessary
{
  [(PDPaymentWebServiceCoordinator *)self scheduleDeviceCheckInIfNecessary];

  [(PDPaymentWebServiceCoordinator *)self scheduleDeviceUpgradeTasksIfNecessary];
}

- (void)deleteSharedWebServiceWithDiagnosticReason:(id)a3
{
  v4 = a3;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100038D04;
  v7[3] = &unk_10083C420;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(sharedWebServiceQueue, v7);
}

- (void)submitVerificationCode:(id)a3 verificationData:(id)a4 forPass:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v12 passTypeIdentifier];
    v16 = [v12 serialNumber];
    *buf = 138412802;
    v32 = v10;
    v33 = 2112;
    v34 = v15;
    v35 = 2112;
    v36 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Submitting verification code (%@) for pass (%@,%@)", buf, 0x20u);
  }

  v17 = PDOSTransactionCreate("PDPaymentWebServiceCoordinator.submit_otp");
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000393C4;
  v24[3] = &unk_10083DD98;
  v25 = v17;
  v26 = self;
  v27 = v10;
  v28 = v11;
  v29 = v12;
  v30 = v13;
  v19 = v13;
  v20 = v12;
  v21 = v11;
  v22 = v10;
  v23 = v17;
  dispatch_async(sharedWebServiceQueue, v24);
}

- (void)performConsistencyCheck
{
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003981C;
  block[3] = &unk_10083C470;
  block[4] = self;
  dispatch_async(sharedWebServiceQueue, block);
}

- (void)initiateDevicePassesDownload
{
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100039A24;
  block[3] = &unk_10083C470;
  block[4] = self;
  dispatch_async(sharedWebServiceQueue, block);
}

- (void)processValueAddedServiceTransaction:(id)a3
{
  v4 = a3;
  v5 = PDDefaultQueue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100039C00;
  v7[3] = &unk_10083C420;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)applyServicePushTopics
{
  v2 = [(PDPaymentWebServiceCoordinator *)self sharedWebServiceContext];
  v3 = [v2 applyServicePushTopics];

  return v3;
}

- (id)accountServicePushTopics
{
  v2 = [(PDPaymentWebServiceCoordinator *)self sharedWebServiceContext];
  v3 = [v2 accountServicePushTopics];

  return v3;
}

- (id)paymentOffersServicePushTopics
{
  v2 = [(PDPaymentWebServiceCoordinator *)self sharedWebServiceContext];
  v3 = [v2 paymentOffersServicePushTopics];

  return v3;
}

- (void)downloadReceiptForTransaction:(id)a3
{
  v4 = a3;
  v5 = [v4 associatedReceiptUniqueID];
  v6 = [v4 receiptProviderURL];
  v7 = [v4 cardNumberSuffix];
  if (v5 && v6)
  {
    sharedWebServiceQueue = self->_sharedWebServiceQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100039F7C;
    block[3] = &unk_10083DE38;
    block[4] = self;
    v10 = v5;
    v11 = v7;
    v12 = v4;
    v13 = v6;
    dispatch_async(sharedWebServiceQueue, block);
  }
}

- (void)paymentHardwareStatusWithType:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003A9F4;
  block[3] = &unk_10083DED8;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(sharedWebServiceQueue, block);
}

- (void)_paymentHardwareStatusWithType:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(PKPaymentHardwareStatus);
  [v7 setType:a3];
  [v7 setHasSecureElement:PKSecureElementIsAvailable() != 0];
  if (PKIsHandoffClient())
  {
    if (PKIsTV())
    {
      [v7 setCanMakeRemotePayments:1];
    }

    else
    {
      [v7 setHasRemoteDevices:{-[PKIDSManager hasRemoteDevices](self->_idsManager, "hasRemoteDevices")}];
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v8 = [(PKIDSManager *)self->_idsManager remoteDevices];
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v14;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v14 != v11)
            {
              objc_enumerationMutation(v8);
            }

            if ([*(*(&v13 + 1) + 8 * i) canMakePayments])
            {
              [v7 setCanMakeRemotePayments:1];
              goto LABEL_14;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }
  }

  if (a3 == 1)
  {
    [v7 setIsSRD:PKIsSRD()];
    [v7 setInFailForward:{+[PKSecureElement isInFailForward](PKSecureElement, "isInFailForward")}];
  }

  if (v6)
  {
    v6[2](v6, v7);
  }
}

- (void)validatePreconditionsWithCompletion:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (!PKSecureElementIsAvailable() || (PKCurrentUserIsGuestUser() & 1) != 0 || (PKCurrentUserIsInSharingMode() & 1) != 0 || !PKHasVerifiedPrimaryAppleAccount() || !PKPasscodeEnabled())
    {
      goto LABEL_15;
    }

    if (PKIsSRD())
    {
      v4 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:

LABEL_15:
        v3[2](v3, 0);
        goto LABEL_16;
      }

      v8 = 0;
      v5 = "Preconditions failed - is SRD";
      v6 = &v8;
    }

    else
    {
      if (!PKIsBeneficiaryAccount())
      {
        v3[2](v3, 1);
        goto LABEL_16;
      }

      v4 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      v7 = 0;
      v5 = "Preconditions failed - is beneficary account";
      v6 = &v7;
    }

    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    goto LABEL_14;
  }

LABEL_16:
}

- (void)accountAttestationAnonymizationSaltWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    sharedWebServiceQueue = self->_sharedWebServiceQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003AD80;
    block[3] = &unk_10083D648;
    v8 = v4;
    dispatch_async(sharedWebServiceQueue, block);
  }
}

- (void)setAccountAttestationAnonymizationSalt:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003AEB8;
  v11[3] = &unk_10083DCB8;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(sharedWebServiceQueue, v11);
}

- (void)registerCredentialWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003AFE8;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(sharedWebServiceQueue, block);
}

- (void)backgroundRegisterCredentialWithRequest:(id)a3
{
  v4 = a3;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003B0D4;
  v7[3] = &unk_10083C420;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(sharedWebServiceQueue, v7);
}

- (id)pushNotificationTopics
{
  v2 = [(PDPaymentWebServiceCoordinator *)self sharedWebServiceContext];
  v3 = [v2 notificationPushTopics];

  if (![v3 count])
  {
    v4 = [NSSet setWithObject:@"com.apple.passd"];

    v3 = v4;
  }

  return v3;
}

- (void)handlePushNotificationForTopic:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B388;
  block[3] = &unk_10083C4C0;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(sharedWebServiceQueue, block);
}

- (void)applyPushNotificationToken:(id)a3
{
  v4 = a3;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003BAF8;
  v7[3] = &unk_10083C420;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(sharedWebServiceQueue, v7);
}

- (void)passWillBeRemoved:(id)a3 withDiagnosticReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003BFE0;
  block[3] = &unk_10083C4C0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(sharedWebServiceQueue, block);
}

- (void)passAdded:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003C20C;
  v8[3] = &unk_10083C420;
  v9 = v4;
  v10 = self;
  v6 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000055C4;
  block[3] = &unk_10083D648;
  v12 = v6;
  v7 = v4;
  dispatch_async(v5, block);
}

- (void)paymentWebService:(id)a3 didDownloadPass:(id)a4 cloudStoreCoordinatorDelegate:(id)a5
{
  v8 = a4;
  [a3 backgroundDownloadRemotePassAssets:v8 forSuffixesAndScreenScales:0 cloudStoreCoordinatorDelegate:a5];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003C6F4;
  v10[3] = &unk_10083E060;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [(PDPaymentWebServiceCoordinator *)self _accessObserversWithHandler:v10];
}

- (void)paymentWebService:(id)a3 didDownloadPassRemoteAssets:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  [v7 reloadDisplayProfileOfType:0];
  v9 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003C834;
  block[3] = &unk_10083D320;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

- (void)paymentWebService:(id)a3 didDownloadSerialNumbersForInstalledPasses:(id)a4 inRegion:(id)a5
{
  v25 = a3;
  v8 = a4;
  v9 = a5;
  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Comparing server's expectation of installed passes with local passes…", buf, 2u);
  }

  v26 = objc_alloc_init(NSMutableArray);
  v24 = self;
  v11 = [(PDDatabaseManager *)self->_databaseManager passesOfType:1];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v33;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        v17 = [v16 passTypeIdentifier];
        if ([v17 isEqualToString:v9])
        {
          v18 = [v16 serialNumber];
          v19 = [v8 containsObject:v18];

          if ((v19 & 1) == 0)
          {
            [v26 addObject:v16];
          }
        }

        else
        {
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v13);
  }

  sharedWebServiceQueue = v24->_sharedWebServiceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003CBCC;
  block[3] = &unk_10083E088;
  v28 = v26;
  v29 = v9;
  v30 = v24;
  v31 = v8;
  v21 = v8;
  v22 = v9;
  v23 = v26;
  dispatch_async(sharedWebServiceQueue, block);
}

- (void)paymentWebService:(id)a3 didRegisterCredentialWithIdentifier:(id)a4 response:(id)a5 error:(id)a6
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003CFA0;
  v11[3] = &unk_10083E0B0;
  v12 = self;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v8 = v15;
  v9 = v14;
  v10 = v13;
  [(PDPaymentWebServiceCoordinator *)v12 _accessObserversWithHandler:v11];
}

- (void)paymentWebServiceBackgroundSessionDidBecomeInvalid:(id)a3
{
  v4 = a3;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003D09C;
  v7[3] = &unk_10083C420;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(sharedWebServiceQueue, v7);
}

- (void)startBackgroundVerificationObserverForPass:(id)a3 verificationMethod:(id)a4
{
  v6 = a3;
  v7 = a4;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003D26C;
  block[3] = &unk_10083C4C0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(sharedWebServiceQueue, block);
}

- (void)performRegistrationForMemberOfRegions:(id)a3 force:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8 && [v8 count])
  {
    sharedWebServiceQueue = self->_sharedWebServiceQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003D524;
    block[3] = &unk_10083E128;
    block[4] = self;
    v15 = v8;
    v17 = a4;
    v16 = v9;
    dispatch_async(sharedWebServiceQueue, block);

    v11 = v15;
LABEL_8:

    goto LABEL_9;
  }

  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PDPaymentWebServiceCoordinator: ignoring request to register among zero regions.", buf, 2u);
  }

  if (v9)
  {
    v13 = PDDefaultQueue();
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10003D510;
    v18[3] = &unk_10083D648;
    v19 = v9;
    dispatch_async(v13, v18);

    v11 = v19;
    goto LABEL_8;
  }

LABEL_9:
}

- (void)performRegistrationForRegion:(id)a3 force:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003DC24;
  v13[3] = &unk_10083E128;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(sharedWebServiceQueue, v13);
}

- (void)_queue_performRegistrationForRegion:(id)a3 force:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(PDPaymentWebServiceCoordinator *)self sharedWebService];
  v11 = [v10 context];
  if (v8)
  {
    if (!PKRegistrationSupportedInRegionForWebService())
    {
      v17 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 138543362;
      v33 = v8;
      v18 = "PDPaymentWebServiceCoordinator: cannot register for region %{public}@ - not supported.";
      goto LABEL_18;
    }

    v12 = [v11 configuration];
    v13 = [v12 brokerURLForRegion:v8];

    if (v13)
    {
      if ([v11 isRegistered] & 1) != 0 || (objc_msgSend(v10, "primaryBrokerURL"), v14 = objc_claimAutoreleasedReturnValue(), v15 = PKEqualObjects(), v14, (v15))
      {
        v16 = PKLogFacilityTypeGetObject();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
LABEL_13:

          [(PDPaymentWebServiceCoordinator *)self _queue_performRegistrationForBrokerURL:v13 force:v6 completion:v9];
LABEL_24:

          goto LABEL_25;
        }

        *buf = 138543362;
        v33 = v8;
      }

      else
      {
        v22 = PKRegistrationSupportedInCurrentRegionForWebService();
        v16 = PKLogFacilityTypeGetObject();
        v23 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        if (v22)
        {
          if (v23)
          {
            *buf = 138543362;
            v33 = v8;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "PDPaymentWebServiceCoordinator: initially registering for device region as precondition for registration to region %{public}@.", buf, 0xCu);
          }

          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = sub_10003E098;
          v26[3] = &unk_10083E150;
          v27 = v8;
          v28 = self;
          v29 = v13;
          v31 = v6;
          v30 = v9;
          v13 = v13;
          [(PDPaymentWebServiceCoordinator *)self _queue_performRegistrationForBrokerURL:0 force:0 completion:v26];

          goto LABEL_24;
        }

        if (!v23)
        {
          goto LABEL_13;
        }

        *buf = 138543362;
        v33 = v8;
      }

      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "PDPaymentWebServiceCoordinator: registering for region %{public}@.", buf, 0xCu);
      goto LABEL_13;
    }

    v17 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v33 = v8;
      v18 = "PDPaymentWebServiceCoordinator: cannot register for region %{public}@ - could not resolve broker URL.";
LABEL_18:
      v19 = v17;
      v20 = 12;
LABEL_21:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    }
  }

  else
  {
    if (PKRegistrationSupportedInCurrentRegionForWebService())
    {
      [v11 isRegistered];
      v16 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "PDPaymentWebServiceCoordinator: registering for primary region.", buf, 2u);
      }

      v13 = 0;
      goto LABEL_13;
    }

    v17 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v18 = "PDPaymentWebServiceCoordinator: cannot register for primary region - not supported.";
      v19 = v17;
      v20 = 2;
      goto LABEL_21;
    }
  }

LABEL_22:

  if (v9)
  {
    v21 = PDDefaultQueue();
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10003E238;
    v24[3] = &unk_10083D648;
    v25 = v9;
    dispatch_async(v21, v24);

    v13 = v25;
    goto LABEL_24;
  }

LABEL_25:
}

- (void)performRegistrationForBrokerURL:(id)a3 force:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003E318;
  v13[3] = &unk_10083E128;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(sharedWebServiceQueue, v13);
}

- (void)_queue_performRegistrationForBrokerURL:(id)a3 force:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(PDPaymentWebServiceCoordinator *)self sharedWebService];
  v11 = v10;
  if (v8)
  {
    if (!a4 && ([v10 needsRegistrationForBrokerURL:v8] & 1) == 0)
    {
      v12 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      *buf = 138412290;
      v26 = v8;
      v13 = "PDPaymentWebServiceCoordinator: skipping registration at %@ - already registered.";
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  v14 = [v10 primaryBrokerURL];
  v8 = v14;
  if (!v14 || a4)
  {
    if (!v14)
    {
      v17 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "PDPaymentWebServiceCoordinator: cannot register with primary region - broker URL not found.", buf, 2u);
      }

      if (!v9)
      {
        v8 = 0;
        goto LABEL_17;
      }

      v18 = PDDefaultQueue();
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10003E668;
      v19[3] = &unk_10083D648;
      v16 = &v20;
      v20 = v9;
      dispatch_async(v18, v19);

      v8 = 0;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if ([v11 needsRegistration])
  {
LABEL_15:
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10003E63C;
    v23[3] = &unk_10083C7F8;
    v16 = &v24;
    v24 = v9;
    [(PDPaymentWebServiceCoordinator *)self _queue_registerDeviceAtBrokerURL:v8 completion:v23];
    goto LABEL_16;
  }

  v12 = PKLogFacilityTypeGetObject();
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_12;
  }

  *buf = 138412290;
  v26 = v8;
  v13 = "PDPaymentWebServiceCoordinator: skipping primary region registration at %@ - already registered.";
LABEL_11:
  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
LABEL_12:

  if (v9)
  {
    v15 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003E654;
    block[3] = &unk_10083D648;
    v16 = &v22;
    v22 = v9;
    dispatch_async(v15, block);

LABEL_16:
  }

LABEL_17:
}

- (void)_queue_registerDeviceAtBrokerURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PDPaymentWebServiceCoordinator: registering with the broker at %@.", buf, 0xCu);
  }

  v9 = [(PDPaymentWebServiceCoordinator *)self sharedWebService];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003E7DC;
  v12[3] = &unk_10083E1A0;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [v9 registerDeviceAtBrokerURL:v11 consistencyCheckResults:0 completion:v12];
}

- (void)scheduleDeviceCheckInIfNecessary
{
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003EB8C;
  block[3] = &unk_10083C470;
  block[4] = self;
  dispatch_async(sharedWebServiceQueue, block);
}

- (void)scheduleDeviceCheckInWithStartTimeOffset:(double)a3
{
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003EFAC;
  v4[3] = &unk_10083D700;
  v4[4] = self;
  *&v4[5] = a3;
  dispatch_async(sharedWebServiceQueue, v4);
}

- (void)_queue_scheduleDeviceCheckInWithStartTimeOffset:(double)a3 repeatInterval:(double)a4 randomizeTimes:(BOOL)a5
{
  [(PDPaymentWebServiceCoordinator *)self connect];
  v8 = PDScheduledActivityGetCriteria();
  if (!v8)
  {
    if (a5)
    {
      v11 = arc4random_uniform(0xE10u) + a3;
      v12 = arc4random_uniform(0xE10u);
    }

    else
    {
      v12 = 0.0;
      v11 = a3 + 0.0;
    }

    v13 = v12 + a4;
    v9 = [NSDate dateWithTimeIntervalSinceNow:v11];
    v10 = [PDScheduledActivityCriteria priorityActivityCriteriaWithStartDate:v9];
    [v10 setRequireNetworkConnectivity:1];
    [v10 setRepeating:1];
    [v10 setRepeatInterval:v13];
    [v10 setReason:@"Device Check In"];
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v10 debugDescription];
      v16 = 138412290;
      v17 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "passd scheduling device check in: %@", &v16, 0xCu);
    }

    PDScheduledActivityRegister();
    goto LABEL_10;
  }

  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 debugDescription];
    v16 = 138412290;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device check in already scheduled: %@", &v16, 0xCu);
LABEL_10:
  }
}

- (BOOL)_queue_automaticDeviceCheckInRequiredForRegion:(id)a3
{
  v3 = a3;
  v4 = [v3 deviceCheckInPushTopic];
  v5 = [v4 length];

  if (v5)
  {
    v6 = PKDeviceBuildVersion();
    v7 = [v3 lastDeviceCheckInBuildVersion];
    v8 = v7;
    if (v6 && v7 && ![v6 compare:v7 options:1])
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v3 regionCode];
        v14 = 138412802;
        v15 = v13;
        v16 = 2112;
        v17 = v6;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device check in for region: %@ is not required as %@ is equal to %@", &v14, 0x20u);
      }

      v11 = 0;
    }

    else
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v3 regionCode];
        v14 = 138412802;
        v15 = v10;
        v16 = 2112;
        v17 = v6;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device check in for region: %@ is required as %@ is not equal to %@", &v14, 0x20u);
      }

      v11 = 1;
    }
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device check in required as no deviceCheckInPushTopic found in context", &v14, 2u);
    }

    v11 = 1;
  }

  return v11;
}

- (double)_queue_deviceCheckInRepeatInterval
{
  v2 = [(PDPaymentWebServiceCoordinator *)self sharedWebServiceContext];
  v3 = [v2 configuration];
  v4 = [v2 primaryRegion];
  v5 = [v4 regionCode];
  [v3 deviceCheckInIntervalForRegion:v5];
  if (v6 <= 0.0)
  {
    v7 = 21600.0;
  }

  else
  {
    v7 = 1.0;
  }

  return v7;
}

- (void)unscheduleDeviceCheckIn
{
  v3 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F5BC;
  block[3] = &unk_10083C470;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_queue_unscheduleDeviceCheckIn
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unscheduling device check in", v4, 2u);
  }

  [(PDPaymentWebServiceCoordinator *)self connect];
  PDScheduledActivityRemove();
}

- (void)performDeviceCheckInWithCompletion:(id)a3
{
  v4 = a3;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003F6E8;
  v7[3] = &unk_10083DCB8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(sharedWebServiceQueue, v7);
}

- (void)_queue_enqueueDeviceCheckInTask:(id)a3
{
  v4 = a3;
  [(NSMutableArray *)self->_deviceCheckInTasks addObject:v4];
  deviceCheckInRunning = self->_deviceCheckInRunning;
  v6 = PKLogFacilityTypeGetObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (deviceCheckInRunning)
  {
    if (v7)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device check in already running waiting", v8, 2u);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device check in not running starting immediately", buf, 2u);
    }

    [(PDPaymentWebServiceCoordinator *)self _performDeviceCheckInTask:v4];
  }
}

- (void)_queue_coeleaseDeviceCheckInCompletion:(id)a3
{
  v7 = a3;
  v4 = [(NSMutableArray *)self->_deviceCheckInTasks lastObject];
  if (!v4)
  {
    v4 = objc_alloc_init(PDDeviceCheckInTask);
    [(NSMutableArray *)self->_deviceCheckInTasks addObject:v4];
  }

  if (v7)
  {
    v5 = [(PDDeviceCheckInTask *)v4 completionHandlers];
    v6 = objc_retainBlock(v7);
    [v5 addObject:v6];
  }

  if (!self->_deviceCheckInRunning)
  {
    [(PDPaymentWebServiceCoordinator *)self _performDeviceCheckInTask:v4];
  }
}

- (void)_queue_cancelAllDeviceCheckInTasks
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_deviceCheckInTasks;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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

        [*(*(&v7 + 1) + 8 * v6) setCancelled:{1, v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_performDeviceCheckInTask:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Performing device check in task", buf, 2u);
  }

  self->_deviceCheckInRunning = 1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003FC00;
  v8[3] = &unk_10083C4C0;
  v9 = PDOSTransactionCreate("PDPaymentWebServiceCoordinator.check_in.pre_configure");
  v10 = self;
  v11 = v4;
  v6 = v4;
  v7 = v9;
  [(PDPaymentWebServiceCoordinator *)self _updateWebServiceConfigurationWithCompletion:v8];
}

- (void)_queue_completeDeviceCheckInTask:(id)a3 success:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(NSMutableArray *)self->_deviceCheckInTasks removeObject:v8];
  replyQueue = self->_replyQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100040840;
  block[3] = &unk_10083E328;
  v11 = v8;
  v24 = v11;
  v26 = a4;
  v12 = v9;
  v25 = v12;
  dispatch_async(replyQueue, block);
  v13 = [(NSMutableArray *)self->_deviceCheckInTasks firstObject];
  v14 = v13;
  if (v13)
  {
    if ([v13 cancelled])
    {
      [(PDPaymentWebServiceCoordinator *)self _queue_completeDeviceCheckInTask:v14 success:0 error:0];
    }

    else
    {
      [(PDPaymentWebServiceCoordinator *)self _performDeviceCheckInTask:v14];
    }
  }

  else
  {
    v15 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "All device check in tasks are complete", buf, 2u);
    }

    self->_deviceCheckInRunning = 0;
    if (v12)
    {
      a4 = 0;
    }

    v16 = 0;
    if (!a4)
    {
      [(PDPaymentWebServiceCoordinator *)self _queue_deviceCheckInRepeatInterval];
      v16 = v17;
    }

    v18 = !a4;
    v19 = PDDefaultQueue();
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100040944;
    v20[3] = &unk_10083C3A8;
    v20[4] = self;
    v21 = v18;
    v20[5] = v16;
    dispatch_async(v19, v20);
  }
}

- (void)_queue_checkContextForDeviceCheckInAuthRequirement:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if ([v6 canPromptForAuth])
  {
    v8 = [(PDPaymentWebServiceCoordinator *)self sharedWebServiceContext];
    v9 = [v8 regions];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100040BA0;
    v15[3] = &unk_10083E350;
    v15[4] = &v16;
    [v9 enumerateKeysAndObjectsUsingBlock:v15];
  }

  if (v17[3])
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Requesting grand slam token renew for device check in", buf, 2u);
    }

    v11 = [(PDPaymentWebServiceCoordinator *)self sharedWebService];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100040C88;
    v12[3] = &unk_10083E3A0;
    v12[4] = self;
    v13 = v7;
    [v11 _renewAppleAccountWithCompletionHandler:v12];
  }

  else
  {
    (*(v7 + 2))(v7, 1, 0);
  }

  _Block_object_dispose(&v16, 8);
}

- (void)_queue_handleCheckInForRegion:(id)a3 action:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000410C8;
  v22[3] = &unk_10083E3F0;
  v10 = v8;
  v23 = v10;
  v24 = self;
  v11 = v9;
  v25 = v11;
  v12 = objc_retainBlock(v22);
  v13 = v12;
  if (a4)
  {
    (v12[2])(v12, a4);
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "passd requesting device check in for region: %@", buf, 0xCu);
    }

    v15 = PDOSTransactionCreate("PDPaymentWebServiceCoordinator.check_in");
    v16 = [(PDPaymentWebServiceCoordinator *)self sharedWebService];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100041218;
    v18[3] = &unk_10083E418;
    v19 = v15;
    v20 = v11;
    v21 = v13;
    v17 = v15;
    [v16 deviceCheckInDeviceCheckInForRegion:v10 completion:v18];
  }
}

- (void)_handleDeviceCheckInAction:(int64_t)a3 region:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(PDPaymentWebServiceCoordinator *)self sharedWebService];
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        sharedWebServiceQueue = self->_sharedWebServiceQueue;
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100041C0C;
        v21[3] = &unk_10083D320;
        v22 = v8;
        v23 = v10;
        v24 = v9;
        dispatch_async(sharedWebServiceQueue, v21);

        v12 = v22;
        goto LABEL_16;
      }

      if (a3 == 2)
      {
        v11 = self->_sharedWebServiceQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10004196C;
        block[3] = &unk_10083E468;
        v26 = v8;
        v27 = self;
        v28 = v10;
        v29 = v9;
        dispatch_async(v11, block);

        v12 = v26;
LABEL_16:

        goto LABEL_22;
      }

      goto LABEL_22;
    }

    v14 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
LABEL_20:

      if (v9)
      {
        (*(v9 + 2))(v9, 1);
      }

      goto LABEL_22;
    }

    *buf = 138412290;
    v39 = v8;
    v15 = "No action taken from device check in for: %@";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
    goto LABEL_20;
  }

  switch(a3)
  {
    case 5:
      v16 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = v8;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Device check in requested reregister for peer payment: %@", buf, 0xCu);
      }

      v17 = PDOSTransactionCreate("PDPaymentWebServiceCoordinator.check_in.re_register_peer_payment");
      peerPaymentWebServiceCoordinator = self->_peerPaymentWebServiceCoordinator;
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100041954;
      v30[3] = &unk_10083E490;
      v31 = v17;
      v32 = v9;
      v19 = v17;
      [(PDPeerPaymentWebServiceCoordinator *)peerPaymentWebServiceCoordinator registerDeviceWithReason:@"Registering peer payment for device check in" completion:v30];

      break;
    case 4:
      v14 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      *buf = 138412290;
      v39 = v8;
      v15 = "Device check in requires auth for: %@";
      goto LABEL_19;
    case 3:
      v13 = self->_sharedWebServiceQueue;
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1000416B8;
      v33[3] = &unk_10083E468;
      v34 = v8;
      v35 = self;
      v36 = v10;
      v37 = v9;
      dispatch_async(v13, v33);

      v12 = v34;
      goto LABEL_16;
  }

LABEL_22:
}

- (void)setDeviceCheckInContextBuildVersion:(id)a3 outstandingAction:(int64_t)a4 forRegion:(id)a5
{
  v8 = a3;
  v9 = a5;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100041EB4;
  v13[3] = &unk_10083C3F8;
  v13[4] = self;
  v14 = v9;
  v15 = v8;
  v16 = a4;
  v11 = v8;
  v12 = v9;
  dispatch_async(sharedWebServiceQueue, v13);
}

- (void)verificationObserver:(id)a3 didObserveVerificationCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000420C8;
  block[3] = &unk_10083C4C0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(sharedWebServiceQueue, block);
}

- (void)verificationObserverDidTimeout:(id)a3
{
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100042428;
  block[3] = &unk_10083C470;
  block[4] = self;
  dispatch_async(sharedWebServiceQueue, block);
}

- (void)handleInsertionForPaymentPass:(id)a3
{
  if (a3)
  {
    [(PDPushNotificationManager *)self->_pushNotificationManager recalculatePushTopics];
    v4 = [NSDate dateWithTimeIntervalSinceNow:180.0];
    [(PDPaymentWebServiceCoordinator *)self scheduleConsistencyCheck:v4 pluggedIn:0 backoffLevel:0];
  }
}

- (void)handleDeletionForPassTypeIdentifier:(id)a3 serialNumber:(id)a4
{
  if ([a3 hasPrefix:{@"paymentpass", a4}])
  {
    pushNotificationManager = self->_pushNotificationManager;

    [(PDPushNotificationManager *)pushNotificationManager recalculatePushTopics];
  }
}

- (void)assertionManager:(id)a3 didAcquireAssertion:(id)a4
{
  v5 = a4;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100042698;
  v8[3] = &unk_10083C420;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(sharedWebServiceQueue, v8);
}

- (BOOL)synchronizeWithTSM
{
  v3 = [(PDPaymentWebServiceCoordinator *)self sharedWebService];
  v4 = [v3 context];
  v5 = [v4 isRegistered];

  if (v5)
  {
    v6 = [(PDPaymentWebServiceCoordinator *)self sharedWebServiceContext];
    v7 = [v6 TSMPushTopics];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [(PKSecureElement *)self->_secureElement queueConnectionToServerWithPushTopic:*(*(&v16 + 1) + 8 * i), v16];
        }

        v14 = v13;
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device needs to register; we will not sync with TSM", buf, 2u);
    }

    v14 = 0;
  }

  return v14;
}

- (void)didDownloadPaymentPass:(id)a3
{
  v4 = a3;
  v5 = PDDefaultQueue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000429C4;
  v7[3] = &unk_10083C420;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (id)paymentPasses
{
  v2 = [(PDDatabaseManager *)self->_databaseManager passesOfType:1];
  v3 = [v2 allObjects];

  return v3;
}

- (void)deviceStateWithCompletion:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v23 = v3;
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = sub_100005970;
    v43 = sub_10000B0C4;
    v44 = objc_alloc_init(PKSecureElementConsistencyCheckDeviceState);
    v4 = v40[5];
    v5 = [(PDDatabaseManager *)self->_databaseManager deviceSpecificPaymentApplications];
    v6 = [v5 allObjects];
    [v4 setDevicePaymentApplications:v6];

    v27 = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
    v7 = objc_alloc_init(NSMutableDictionary);
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v35 = 0u;
    v8 = [(PDDatabaseManager *)self->_databaseManager passesWithISO18013Credentials];
    v9 = [v8 countByEnumeratingWithState:&v35 objects:v46 count:16];
    if (v9)
    {
      obj = v8;
      v26 = *v36;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v36 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v11 = [*(*(&v35 + 1) + 8 * i) iso18013BlobsForSecureElementIdentifiers:{v27, v23}];
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v31 objects:v45 count:16];
          if (v13)
          {
            v14 = *v32;
            do
            {
              for (j = 0; j != v13; j = j + 1)
              {
                if (*v32 != v14)
                {
                  objc_enumerationMutation(v12);
                }

                v16 = *(*(&v31 + 1) + 8 * j);
                v17 = [v12 objectForKey:v16];
                v18 = [v17 SHA256Hash];
                v19 = [v16 identifier];
                [v7 setObject:v18 forKeyedSubscript:v19];
              }

              v13 = [v12 countByEnumeratingWithState:&v31 objects:v45 count:16];
            }

            while (v13);
          }
        }

        v8 = obj;
        v9 = [obj countByEnumeratingWithState:&v35 objects:v46 count:16];
      }

      while (v9);
    }

    if ([v7 count])
    {
      v20 = v40[5];
      v21 = [v7 copy];
      [v20 setPassIsoBlobHashForCredentialIdentifier:v21];
    }

    sharingManager = self->_sharingManager;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100042DEC;
    v28[3] = &unk_10083E580;
    v30 = &v39;
    v28[4] = self;
    v29 = v23;
    [(PDSharingManager *)sharingManager pendingCredentialsBeingProvisioned:v28];

    _Block_object_dispose(&v39, 8);
    v3 = v23;
  }
}

- (void)scheduleConsistencyCheck:(id)a3 pluggedIn:(BOOL)a4 backoffLevel:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = PDDefaultQueue();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100043114;
  v13[3] = &unk_10083E5D0;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (BOOL)shouldStartConsistencyCheck
{
  IsAvailable = PKSecureElementIsAvailable();
  if (IsAvailable)
  {
    secureElement = self->_secureElement;
    if (secureElement)
    {
      LOBYTE(IsAvailable) = ([(PKSecureElement *)secureElement ownershipStateForCurrentUser]& 0xFFFFFFFFFFFFFFFELL) == 2;
    }

    else
    {
      LOBYTE(IsAvailable) = 1;
    }
  }

  return IsAvailable;
}

- (void)handleRequestedActions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v36 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  v38 = objc_alloc_init(NSMutableArray);
  v42 = objc_alloc_init(NSMutableSet);
  v43 = objc_alloc_init(NSMutableArray);
  v41 = objc_alloc_init(NSMutableArray);
  v40 = objc_alloc_init(NSMutableArray);
  v37 = objc_alloc_init(NSMutableArray);
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v77 objects:v83 count:16];
  if (!v8)
  {
    LOBYTE(v44) = 0;
    goto LABEL_30;
  }

  v44 = 0;
  v9 = *v78;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v78 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v77 + 1) + 8 * i);
      v12 = [v11 deviceCredential];
      v13 = [v11 actions];
      v14 = [v12 type];
      if (v14 == 2)
      {
        v18 = [v12 isoProperties];
        v15 = [v18 isoIdentifier];

        if ((v13 & 8) != 0)
        {
          [v43 safelyAddObject:v15];
        }

        if ((v13 & 0x10) != 0)
        {
          [v41 safelyAddObject:v15];
        }

        if ((v13 & 0x20) != 0)
        {
          [v40 safelyAddObject:v15];
        }

        if ((v13 & 0x40) != 0)
        {
          v19 = [v11 address];
          [v37 safelyAddObject:v19];
        }

        v44 |= (v13 >> 7) & 1;
        goto LABEL_25;
      }

      if (v14 == 1)
      {
        v17 = [v12 address];
        v15 = [v17 subcredentialIdentifier];

        if ((v13 & 4) != 0)
        {
          [v38 safelyAddObject:v15];
        }

        if ((v13 & 8) != 0 && v15)
        {
          [v42 addObject:v15];
        }

        goto LABEL_25;
      }

      if (!v14 && (v13 & 8) != 0)
      {
        v15 = [v12 address];
        v16 = [v15 appletIdentifier];
        [v7 safelyAddObject:v16];

LABEL_25:
      }
    }

    v8 = [obj countByEnumeratingWithState:&v77 objects:v83 count:16];
  }

  while (v8);
LABEL_30:

  v20 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v75[0] = 0;
  v75[1] = v75;
  v75[2] = 0x2020000000;
  v76 = 1;
  if ([v7 count])
  {
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = sub_100043CCC;
    v72[3] = &unk_10083E620;
    v72[4] = self;
    v73 = v7;
    v74 = v75;
    [v20 addOperation:v72];
  }

  v34 = v7;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v21 = v38;
  v22 = [v21 countByEnumeratingWithState:&v68 objects:v82 count:16];
  if (v22)
  {
    v23 = *v69;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v69 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v68 + 1) + 8 * j);
        v67[0] = _NSConcreteStackBlock;
        v67[1] = 3221225472;
        v67[2] = sub_100043DD4;
        v67[3] = &unk_10083E620;
        v67[4] = self;
        v67[5] = v25;
        v67[6] = v75;
        [v20 addOperation:{v67, v34, v36}];
      }

      v22 = [v21 countByEnumeratingWithState:&v68 objects:v82 count:16];
    }

    while (v22);
  }

  if ([v42 count])
  {
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_100043EF0;
    v64[3] = &unk_10083E620;
    v64[4] = self;
    v65 = v42;
    v66 = v75;
    [v20 addOperation:v64];
  }

  if ([v43 count])
  {
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_100044078;
    v61[3] = &unk_10083E620;
    v61[4] = self;
    v62 = v43;
    v63 = v75;
    [v20 addOperation:v61];
  }

  if ([v41 count])
  {
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_100044188;
    v58[3] = &unk_10083E620;
    v58[4] = self;
    v59 = v41;
    v60 = v75;
    [v20 addOperation:v58];
  }

  if ([v40 count])
  {
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_100044298;
    v55[3] = &unk_10083E620;
    v55[4] = self;
    v56 = v40;
    v57 = v75;
    [v20 addOperation:v55];
  }

  v39 = v21;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v26 = v37;
  v27 = [v26 countByEnumeratingWithState:&v51 objects:v81 count:16];
  if (v27)
  {
    v28 = *v52;
    do
    {
      for (k = 0; k != v27; k = k + 1)
      {
        if (*v52 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = *(*(&v51 + 1) + 8 * k);
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_1000443A8;
        v50[3] = &unk_10083E620;
        v50[4] = self;
        v50[5] = v30;
        v50[6] = v75;
        [v20 addOperation:v50];
      }

      v27 = [v26 countByEnumeratingWithState:&v51 objects:v81 count:16];
    }

    while (v27);
  }

  if (v44)
  {
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_1000445D0;
    v49[3] = &unk_10083E6D8;
    v49[4] = v75;
    [v20 addOperation:v49];
  }

  v31 = +[NSNull null];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100044800;
  v46[3] = &unk_10083C8E8;
  v32 = v36;
  v47 = v32;
  v48 = v75;
  v33 = [v20 evaluateWithInput:v31 completion:v46];

  _Block_object_dispose(v75, 8);
}

- (void)performScheduledActivityWithIdentifier:(id)a3 activityCriteria:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Handling Scheduled Activity: %@", buf, 0xCu);
  }

  if ([v6 isEqualToString:@"ConsistencyCheck"])
  {
    v9 = [(PDAssertionManager *)self->_assertionManager assertionsOfType:1];
    v10 = [v9 count];

    if (v10)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Provisioning is in progress, rescheduling consistency check…", buf, 2u);
      }

      v11 = [NSDate dateWithTimeIntervalSinceNow:120.0];
      [(PDPaymentWebServiceCoordinator *)self scheduleConsistencyCheck:v11 pluggedIn:0 backoffLevel:0];
    }

    else
    {
      [(PDPaymentWebServiceCoordinator *)self performConsistencyCheck];
    }
  }

  else if ([v6 hasPrefix:@"VASTransactionProcessor."])
  {
    v12 = [v6 substringFromIndex:{objc_msgSend(@"VASTransactionProcessor.", "length")}];
    v13 = [(PDDatabaseManager *)self->_databaseManager valueAddedServiceTransactionWithIdentifier:v12];
    if (v13)
    {
      [(PDPaymentWebServiceCoordinator *)self _processValueAddedServiceTransaction:v13];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Couldn't find VAS Transaction in our database", buf, 2u);
      }
    }
  }

  else if ([v6 isEqualToString:@"DeviceCheckIn"])
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "passd requesting device check in from scheduled activity", buf, 2u);
    }

    sharedWebServiceQueue = self->_sharedWebServiceQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100044B4C;
    block[3] = &unk_10083C470;
    block[4] = self;
    dispatch_async(sharedWebServiceQueue, block);
  }

  else if ([v6 isEqualToString:@"DeviceUpgradeTasks"])
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "passd starting device upgrade tasks from scheduled activity", buf, 2u);
    }

    [(PDPaymentWebServiceCoordinator *)self _runDeviceUpgradeTasks];
  }
}

- (void)_processValueAddedServiceTransaction:(id)a3
{
  v4 = a3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100044C24;
  v7[3] = &unk_10083E728;
  v8 = [[PKValueAddedServiceWebService alloc] initWithValueAddedServiceTransaction:v4];
  v9 = v4;
  v10 = self;
  v5 = v4;
  v6 = v8;
  [v6 downloadMerchantPayloadWithCompletion:v7];
}

- (void)_performNotificationActionWithUserInfo:(id)a3
{
  v4 = a3;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100044FB0;
  v7[3] = &unk_10083C420;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(sharedWebServiceQueue, v7);
}

- (id)_userNotificationFromResponse:(id)a3
{
  v3 = a3;
  v4 = [v3 aps];
  v5 = [v4 objectForKey:@"alert"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 PKStringForKey:@"loc-key"];
    v7 = v6;
    if (v6)
    {
      v8 = PKLocalizedString(v6);
      if (![v8 isEqualToString:v7])
      {
LABEL_8:

        goto LABEL_12;
      }

      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Did not find a localized key for this string not showing the message", buf, 2u);
      }
    }

    v8 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

LABEL_12:
  if ([v8 length])
  {
    v10 = [v3 requestID];
    if ([v10 length])
    {
      v11 = [v3 action];
      if ([v11 isEqualToString:PKNotificationActionOpenIDMSCardOnFile])
      {
        v12 = [NSString stringWithFormat:@"%@/%@", PKURLActionPaymentSetupIDMSCardOnFile, v10];
        v13 = [(PDGenericUserNotification *)[PDWalletUserNotification alloc] initWithMessage:v8];
        v14 = v13;
        if (v12)
        {
          [(PDUserNotification *)v13 setCustomActionRoute:v12];
        }
      }

      else
      {
        v12 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v3 action];
          v17 = [v3 requestID];
          *buf = 138412546;
          v20 = v16;
          v21 = 2112;
          v22 = v17;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unsupported action found:%@ for requestID:%@", buf, 0x16u);
        }

        v14 = 0;
      }
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No requestID in response", buf, 2u);
      }

      v14 = 0;
    }
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v3 requestID];
      *buf = 138412290;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No valid message found in response for requestID :%@", buf, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

- (void)_fetchPassesIfNecessaryForPushTopic:(id)a3
{
  v4 = a3;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100045540;
  v7[3] = &unk_10083C420;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(sharedWebServiceQueue, v7);
}

- (void)_handleDownloadedPass:(id)a3
{
  v4 = a3;
  v5 = PDOSTransactionCreate("PDPaymentWebServiceCoordinator");
  v6 = objc_autoreleasePoolPush();
  if ([v4 isIdentityPass] && (objc_msgSend(v4, "devicePrimaryPaymentApplication"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "paymentType"), v7, v8 == 1002) && (databaseManager = self->_databaseManager, objc_msgSend(v4, "uniqueID"), v10 = objc_claimAutoreleasedReturnValue(), LOBYTE(databaseManager) = -[PDDatabaseManager passExistsWithUniqueID:](databaseManager, "passExistsWithUniqueID:", v10), v10, (databaseManager & 1) == 0))
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v4 uniqueID];
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Removing stale pass %@", buf, 0xCu);
    }

    v13 = [[PKPaymentDeprovisionRequest alloc] initWithPaymentPass:v4];
    v14 = [(PDPaymentWebServiceCoordinator *)self sharedWebService];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100045B88;
    v16[3] = &unk_10083E010;
    v17 = v13;
    v15 = v13;
    [v14 diagnosticSessionWithReason:@"pass previously deleted" sessionHandler:v16];
  }

  else
  {
    [(PDCardFileManager *)self->_passStore writeCard:v4 source:1 error:0];
  }

  objc_autoreleasePoolPop(v6);
}

- (void)_queue_setupBackgroundWebServiceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PKBackgroundWebServiceContextPath();
  v7 = [PKPaymentWebServiceBackgroundContext contextWithArchive:v5];

  v6 = [(PDPaymentWebServiceCoordinator *)self sharedWebService];
  [v6 startBackgroundURLSessionWithIdentifier:@"com.apple.passd" context:v7 backgroundDelegate:self completion:v4];
}

- (void)noteAccountChanged
{
  v2 = [(PDPaymentWebServiceCoordinator *)self sharedWebService];
  [v2 _resetSupportInRegionCache];
}

- (void)noteWebServiceDidChange
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100045CEC;
  v2[3] = &unk_10083E0D8;
  v2[4] = self;
  [(PDPaymentWebServiceCoordinator *)self _accessObserversWithHandler:v2];
}

- (void)_queue_provisionPushProvisioningSharingIdentifiers
{
  WeakRetained = objc_loadWeakRetained(&self->_pushProvisioningManager);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_pushProvisioningManager);
    [v4 provisionAvailablePushProvisioningSharingIdentifiers];
  }
}

- (void)_queue_performOwnershipTokensRequestWithUserInfo:(id)a3
{
  v4 = [a3 objectForKey:@"reason"];
  v5 = PKPaymentSendOwnershipTokensRequestReasonFromString();

  v6 = [(PDPaymentWebServiceCoordinator *)self sharedWebService];
  [v6 sendOwnershipTokensForReason:v5 completion:&stru_10083E798];
}

- (void)checkFPANCredentialEligibility:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004600C;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)scheduleDeviceUpgradeTasksIfNecessaryWithRandomizeStartDate:(BOOL)a3
{
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000460A0;
  v4[3] = &unk_10083CF10;
  v4[4] = self;
  v5 = a3;
  dispatch_async(sharedWebServiceQueue, v4);
}

- (void)_scheduleDeviceUpgradeTaskActivityWithRandomizeStartDate:(BOOL)a3
{
  v5 = PDDefaultQueue();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000463C8;
  v6[3] = &unk_10083CF10;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (void)unscheduleDeviceUpgradeTaskActivity
{
  v3 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004666C;
  block[3] = &unk_10083C470;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_queue_completeDeviceUpgradeTasks
{
  PDSetUpgradeTasksRetryCount();
  v3 = [(PDPaymentWebServiceCoordinator *)self sharedWebServiceContext];
  [v3 atomicallyUpdatePrimaryRegion:&stru_10083E7B8];
  [(PDPaymentWebServiceArchiver *)self->_archiver archiveContext:v3];
  [(PDPaymentWebServiceCoordinator *)self unscheduleDeviceUpgradeTaskActivity];
}

- (void)_runDeviceUpgradeTasks
{
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100046848;
  block[3] = &unk_10083C470;
  block[4] = self;
  dispatch_async(sharedWebServiceQueue, block);
}

- (void)setDeviceUpgradeTasksContextBuildVersion:(id)a3 upgradeTaskVersion:(int64_t)a4 retryCount:(int64_t)a5
{
  v8 = a3;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000474F4;
  v11[3] = &unk_10083E8D0;
  v13 = a4;
  v14 = a5;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(sharedWebServiceQueue, v11);
}

- (void)_queue_performContactInformationFetchTaskWithCompletion:(id)a3
{
  v4 = a3;
  if ([(PDDatabaseManager *)self->_databaseManager passExistsWithPassType:1])
  {
    v5 = +[PKContactInformation contactInformationFromKeychain];
    if (!v5)
    {
      v8 = objc_alloc_init(PKContactInformationRequest);
      v9 = [(PDPaymentWebServiceCoordinator *)self sharedWebService];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100047760;
      v10[3] = &unk_10083E8F8;
      v11 = v4;
      [v9 contactInformationWithRequest:v8 completion:v10];

      goto LABEL_9;
    }

    v6 = v5;
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ContactInformation is already stored in Keychain. Ignoring fetch on upgrade and marking task complete.", buf, 2u);
    }
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User doesn't have any SecureElement passes. Ignoring contact information fetch on upgrade and marking task complete.", buf, 2u);
    }
  }

  (*(v4 + 2))(v4, 1);
LABEL_9:
}

- (void)receivedXPCEvent:(id)a3 forEventStream:(id)a4
{
  dispatch_assert_queue_V2(self->_sharedWebServiceQueue);

  [(PDPaymentWebServiceCoordinator *)self _queue_setupBackgroundWebServiceWithCompletion:0];
}

- (PDAppletSubcredentialManager)subcredentialManager
{
  WeakRetained = objc_loadWeakRetained(&self->_credentialManager);

  return WeakRetained;
}

- (PDAppletSubcredentialManager)credentialManager
{
  WeakRetained = objc_loadWeakRetained(&self->_credentialManager);

  return WeakRetained;
}

- (PDPushProvisioningManager)pushProvisioningManager
{
  WeakRetained = objc_loadWeakRetained(&self->_pushProvisioningManager);

  return WeakRetained;
}

- (PDUserNotificationManager)userNotificationManager
{
  WeakRetained = objc_loadWeakRetained(&self->_userNotificationManager);

  return WeakRetained;
}

@end