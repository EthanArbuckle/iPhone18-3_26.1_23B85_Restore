@interface PDPaymentWebServiceCoordinator
- (BOOL)_queue_automaticDeviceCheckInRequiredForRegion:(id)region;
- (BOOL)shouldStartConsistencyCheck;
- (BOOL)synchronizeWithTSM;
- (PDAppletSubcredentialManager)credentialManager;
- (PDAppletSubcredentialManager)subcredentialManager;
- (PDPaymentWebServiceCoordinator)initWithPushNotificationManager:(id)manager databaseManager:(id)databaseManager passStore:(id)store assertionManager:(id)assertionManager cloudStoreCoordinator:(id)coordinator idsManager:(id)idsManager tapToRadarDelegate:(id)delegate receiptFileManager:(id)self0 expressPassManager:(id)self1 familyCircleManager:(id)self2;
- (PDPushProvisioningManager)pushProvisioningManager;
- (PDUserNotificationManager)userNotificationManager;
- (PKPaymentWebServiceContext)sharedWebServiceContext;
- (double)_queue_deviceCheckInRepeatInterval;
- (id)_userNotificationFromResponse:(id)response;
- (id)accountServicePushTopics;
- (id)applyServicePushTopics;
- (id)paymentOffersServicePushTopics;
- (id)paymentPasses;
- (id)pushNotificationTopics;
- (id)sharedWebService;
- (void)_accessObserversWithHandler:(id)handler;
- (void)_fetchPassesIfNecessaryForPushTopic:(id)topic;
- (void)_handleDeviceCheckInAction:(int64_t)action region:(id)region completion:(id)completion;
- (void)_handleDownloadedPass:(id)pass;
- (void)_paymentHardwareStatusWithType:(unint64_t)type completion:(id)completion;
- (void)_performDeviceCheckInTask:(id)task;
- (void)_performNotificationActionWithUserInfo:(id)info;
- (void)_processValueAddedServiceTransaction:(id)transaction;
- (void)_queue_cancelAllDeviceCheckInTasks;
- (void)_queue_checkContextForDeviceCheckInAuthRequirement:(id)requirement completion:(id)completion;
- (void)_queue_coeleaseDeviceCheckInCompletion:(id)completion;
- (void)_queue_completeDeviceCheckInTask:(id)task success:(BOOL)success error:(id)error;
- (void)_queue_completeDeviceUpgradeTasks;
- (void)_queue_enqueueDeviceCheckInTask:(id)task;
- (void)_queue_handleCheckInForRegion:(id)region action:(int64_t)action completion:(id)completion;
- (void)_queue_performContactInformationFetchTaskWithCompletion:(id)completion;
- (void)_queue_performOwnershipTokensRequestWithUserInfo:(id)info;
- (void)_queue_performRegistrationForBrokerURL:(id)l force:(BOOL)force completion:(id)completion;
- (void)_queue_performRegistrationForRegion:(id)region force:(BOOL)force completion:(id)completion;
- (void)_queue_provisionPushProvisioningSharingIdentifiers;
- (void)_queue_registerDeviceAtBrokerURL:(id)l completion:(id)completion;
- (void)_queue_scheduleDeviceCheckInWithStartTimeOffset:(double)offset repeatInterval:(double)interval randomizeTimes:(BOOL)times;
- (void)_queue_setupBackgroundWebServiceWithCompletion:(id)completion;
- (void)_queue_unscheduleDeviceCheckIn;
- (void)_runDeviceUpgradeTasks;
- (void)_scheduleDeviceUpgradeTaskActivityWithRandomizeStartDate:(BOOL)date;
- (void)_updateWebServiceConfigurationWithCompletion:(id)completion;
- (void)_updateWebServiceConfigurationWithSupportedRegionTimeInterval:(double)interval unsupportedRegionTimeInterval:(double)timeInterval completion:(id)completion;
- (void)accountAttestationAnonymizationSaltWithCompletion:(id)completion;
- (void)applyPushNotificationToken:(id)token;
- (void)assertionManager:(id)manager didAcquireAssertion:(id)assertion;
- (void)backgroundRegisterCredentialWithRequest:(id)request;
- (void)checkFPANCredentialEligibility:(id)eligibility completion:(id)completion;
- (void)connect;
- (void)dealloc;
- (void)deleteSharedWebServiceWithDiagnosticReason:(id)reason;
- (void)deviceStateWithCompletion:(id)completion;
- (void)didDownloadPaymentPass:(id)pass;
- (void)downloadReceiptForTransaction:(id)transaction;
- (void)handleDeletionForPassTypeIdentifier:(id)identifier serialNumber:(id)number;
- (void)handleInsertionForPaymentPass:(id)pass;
- (void)handlePushNotificationForTopic:(id)topic userInfo:(id)info;
- (void)handleRequestedActions:(id)actions completion:(id)completion;
- (void)initiateDevicePassesDownload;
- (void)noteAccountChanged;
- (void)noteWebServiceDidChange;
- (void)passAdded:(id)added;
- (void)passWillBeRemoved:(id)removed withDiagnosticReason:(id)reason;
- (void)paymentHardwareStatusWithType:(unint64_t)type completion:(id)completion;
- (void)paymentWebService:(id)service didDownloadPass:(id)pass cloudStoreCoordinatorDelegate:(id)delegate;
- (void)paymentWebService:(id)service didDownloadPassRemoteAssets:(id)assets completion:(id)completion;
- (void)paymentWebService:(id)service didDownloadSerialNumbersForInstalledPasses:(id)passes inRegion:(id)region;
- (void)paymentWebService:(id)service didRegisterCredentialWithIdentifier:(id)identifier response:(id)response error:(id)error;
- (void)paymentWebServiceBackgroundSessionDidBecomeInvalid:(id)invalid;
- (void)performConsistencyCheck;
- (void)performDeviceCheckInWithCompletion:(id)completion;
- (void)performHandlerOnSharedWebServiceQueue:(id)queue;
- (void)performRegistrationForBrokerURL:(id)l force:(BOOL)force completion:(id)completion;
- (void)performRegistrationForMemberOfRegions:(id)regions force:(BOOL)force completion:(id)completion;
- (void)performRegistrationForRegion:(id)region force:(BOOL)force completion:(id)completion;
- (void)performScheduledActivityWithIdentifier:(id)identifier activityCriteria:(id)criteria;
- (void)processValueAddedServiceTransaction:(id)transaction;
- (void)receivedXPCEvent:(id)event forEventStream:(id)stream;
- (void)registerCredentialWithRequest:(id)request completion:(id)completion;
- (void)registerObserver:(id)observer;
- (void)scheduleConsistencyCheck:(id)check pluggedIn:(BOOL)in backoffLevel:(id)level;
- (void)scheduleConsistencyCheckIfNecessary;
- (void)scheduleDeviceCheckInIfNecessary;
- (void)scheduleDeviceCheckInWithStartTimeOffset:(double)offset;
- (void)scheduleDeviceUpgradeTasksIfNecessaryWithRandomizeStartDate:(BOOL)date;
- (void)setAccountAttestationAnonymizationSalt:(id)salt withCompletion:(id)completion;
- (void)setAccountManager:(id)manager;
- (void)setDeviceCheckInContextBuildVersion:(id)version outstandingAction:(int64_t)action forRegion:(id)region;
- (void)setDeviceUpgradeTasksContextBuildVersion:(id)version upgradeTaskVersion:(int64_t)taskVersion retryCount:(int64_t)count;
- (void)setSharedWebService:(id)service;
- (void)setUserNotificationManager:(id)manager;
- (void)startBackgroundVerificationObserverForPass:(id)pass verificationMethod:(id)method;
- (void)startTasksIfNecessary;
- (void)submitVerificationCode:(id)code verificationData:(id)data forPass:(id)pass handler:(id)handler;
- (void)unregisterObserver:(id)observer;
- (void)unscheduleDeviceCheckIn;
- (void)unscheduleDeviceUpgradeTaskActivity;
- (void)updateSharedWebServiceContext:(id)context;
- (void)updateWebServiceConfigurationWithCompletion:(id)completion;
- (void)validatePreconditionsWithCompletion:(id)completion;
- (void)verificationObserver:(id)observer didObserveVerificationCode:(id)code;
- (void)verificationObserverDidTimeout:(id)timeout;
@end

@implementation PDPaymentWebServiceCoordinator

- (PKPaymentWebServiceContext)sharedWebServiceContext
{
  os_unfair_lock_lock(&self->_lock);
  context = [(PKPaymentWebService *)self->_sharedWebService context];
  os_unfair_lock_unlock(&self->_lock);

  return context;
}

- (PDPaymentWebServiceCoordinator)initWithPushNotificationManager:(id)manager databaseManager:(id)databaseManager passStore:(id)store assertionManager:(id)assertionManager cloudStoreCoordinator:(id)coordinator idsManager:(id)idsManager tapToRadarDelegate:(id)delegate receiptFileManager:(id)self0 expressPassManager:(id)self1 familyCircleManager:(id)self2
{
  managerCopy = manager;
  databaseManagerCopy = databaseManager;
  storeCopy = store;
  assertionManagerCopy = assertionManager;
  assertionManagerCopy2 = assertionManager;
  coordinatorCopy = coordinator;
  idsManagerCopy = idsManager;
  idsManagerCopy2 = idsManager;
  delegateCopy = delegate;
  fileManagerCopy = fileManager;
  passManagerCopy = passManager;
  circleManagerCopy = circleManager;
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

    objc_storeStrong(&v18->_pushNotificationManager, manager);
    objc_storeStrong(&v18->_databaseManager, databaseManager);
    [(PDDatabaseManager *)v18->_databaseManager setPaymentServicesDelegate:v18];
    v24 = +[PKSecureElement sharedSecureElement];
    secureElement = v18->_secureElement;
    v18->_secureElement = v24;

    objc_storeStrong(&v18->_passStore, store);
    objc_storeStrong(&v18->_tapToRadarDelegate, delegate);
    objc_storeStrong(&v18->_receiptFileManager, fileManager);
    objc_storeStrong(&v18->_expressPassManager, passManager);
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

    objc_storeStrong(&v18->_assertionManager, assertionManagerCopy);
    objc_storeStrong(&v18->_familyCircleManager, circleManager);
    objc_storeStrong(&v18->_cloudStoreCoordinator, coordinator);
    objc_storeStrong(&v18->_idsManager, idsManagerCopy);
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

- (void)setAccountManager:(id)manager
{
  objc_storeStrong(&self->_accountManager, manager);
  managerCopy = manager;
  [(PDPaymentSetupFeaturesCoordinator *)self->_paymentSetupFeaturesCoordinator setAccountManager:self->_accountManager];
}

- (void)setUserNotificationManager:(id)manager
{
  managerCopy = manager;
  objc_storeWeak(&self->_userNotificationManager, managerCopy);
  [(PDPaymentSetupFeaturesCoordinator *)self->_paymentSetupFeaturesCoordinator setUserNotificationManager:managerCopy];
}

- (void)registerObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    os_unfair_lock_lock(&self->_observersLock);
    [(NSHashTable *)self->_observers addObject:observerCopy];

    os_unfair_lock_unlock(&self->_observersLock);
  }
}

- (void)unregisterObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    os_unfair_lock_lock(&self->_observersLock);
    [(NSHashTable *)self->_observers removeObject:observerCopy];

    os_unfair_lock_unlock(&self->_observersLock);
  }
}

- (void)_accessObserversWithHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    __break(1u);
  }

  v5 = handlerCopy;
  os_unfair_lock_lock(&self->_observersLock);
  allObjects = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_observersLock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = allObjects;
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

- (void)updateWebServiceConfigurationWithCompletion:(id)completion
{
  completionCopy = completion;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000384C8;
  v7[3] = &unk_10083DCB8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_sync(sharedWebServiceQueue, v7);
}

- (void)_updateWebServiceConfigurationWithCompletion:(id)completion
{
  completionCopy = completion;
  sharedWebService = [(PDPaymentWebServiceCoordinator *)self sharedWebService];
  if ([sharedWebService needsConfiguration])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10003859C;
    v6[3] = &unk_10083DCE0;
    v7 = completionCopy;
    [sharedWebService configurePaymentServiceWithCompletion:v6];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)_updateWebServiceConfigurationWithSupportedRegionTimeInterval:(double)interval unsupportedRegionTimeInterval:(double)timeInterval completion:(id)completion
{
  completionCopy = completion;
  sharedWebService = [(PDPaymentWebServiceCoordinator *)self sharedWebService];
  if ([sharedWebService needsConfigurationWithSupportedRegionTimeInterval:interval unsupportedRegionTimeInterval:timeInterval])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100038760;
    v10[3] = &unk_10083DCE0;
    v11 = completionCopy;
    [sharedWebService configurePaymentServiceWithCompletion:v10];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (id)sharedWebService
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_sharedWebService;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSharedWebService:(id)service
{
  serviceCopy = service;
  os_unfair_lock_lock(&self->_lock);
  sharedWebService = self->_sharedWebService;
  self->_sharedWebService = serviceCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateSharedWebServiceContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    context = [(PKPaymentWebService *)self->_sharedWebService context];
    deviceID = [context deviceID];

    if (deviceID)
    {
      deviceID2 = [contextCopy deviceID];

      if (!deviceID2)
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

    context2 = [(PKPaymentWebService *)self->_sharedWebService context];
    pushToken = [context2 pushToken];

    [(PKPaymentWebService *)self->_sharedWebService setContext:contextCopy];
    if (pushToken)
    {
      context3 = [(PKPaymentWebService *)self->_sharedWebService context];
      pushToken2 = [context3 pushToken];
      v14 = [pushToken isEqualToString:pushToken2];

      if ((v14 & 1) == 0)
      {
        context4 = [(PKPaymentWebService *)self->_sharedWebService context];
        [context4 setPushToken:pushToken];
      }
    }

    archiver = self->_archiver;
    context5 = [(PKPaymentWebService *)self->_sharedWebService context];
    [(PDPaymentWebServiceArchiver *)archiver archiveContext:context5];

    os_unfair_lock_unlock(&self->_lock);
    [(PDPushNotificationManager *)self->_pushNotificationManager recalculatePushTopics];
  }

  else
  {
    deviceID = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(deviceID, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, deviceID, OS_LOG_TYPE_DEFAULT, "Error: Refusing to update webservice context with nil.", &v18, 2u);
    }
  }
}

- (void)performHandlerOnSharedWebServiceQueue:(id)queue
{
  queueCopy = queue;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100038BC0;
  v7[3] = &unk_10083C820;
  v7[4] = self;
  v8 = queueCopy;
  v6 = queueCopy;
  dispatch_async(sharedWebServiceQueue, v7);
}

- (void)startTasksIfNecessary
{
  [(PDPaymentWebServiceCoordinator *)self scheduleDeviceCheckInIfNecessary];

  [(PDPaymentWebServiceCoordinator *)self scheduleDeviceUpgradeTasksIfNecessary];
}

- (void)deleteSharedWebServiceWithDiagnosticReason:(id)reason
{
  reasonCopy = reason;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100038D04;
  v7[3] = &unk_10083C420;
  v8 = reasonCopy;
  selfCopy = self;
  v6 = reasonCopy;
  dispatch_sync(sharedWebServiceQueue, v7);
}

- (void)submitVerificationCode:(id)code verificationData:(id)data forPass:(id)pass handler:(id)handler
{
  codeCopy = code;
  dataCopy = data;
  passCopy = pass;
  handlerCopy = handler;
  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    passTypeIdentifier = [passCopy passTypeIdentifier];
    serialNumber = [passCopy serialNumber];
    *buf = 138412802;
    v32 = codeCopy;
    v33 = 2112;
    v34 = passTypeIdentifier;
    v35 = 2112;
    v36 = serialNumber;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Submitting verification code (%@) for pass (%@,%@)", buf, 0x20u);
  }

  v17 = PDOSTransactionCreate("PDPaymentWebServiceCoordinator.submit_otp");
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000393C4;
  v24[3] = &unk_10083DD98;
  v25 = v17;
  selfCopy = self;
  v27 = codeCopy;
  v28 = dataCopy;
  v29 = passCopy;
  v30 = handlerCopy;
  v19 = handlerCopy;
  v20 = passCopy;
  v21 = dataCopy;
  v22 = codeCopy;
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

- (void)processValueAddedServiceTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = PDDefaultQueue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100039C00;
  v7[3] = &unk_10083C420;
  v8 = transactionCopy;
  selfCopy = self;
  v6 = transactionCopy;
  dispatch_async(v5, v7);
}

- (id)applyServicePushTopics
{
  sharedWebServiceContext = [(PDPaymentWebServiceCoordinator *)self sharedWebServiceContext];
  applyServicePushTopics = [sharedWebServiceContext applyServicePushTopics];

  return applyServicePushTopics;
}

- (id)accountServicePushTopics
{
  sharedWebServiceContext = [(PDPaymentWebServiceCoordinator *)self sharedWebServiceContext];
  accountServicePushTopics = [sharedWebServiceContext accountServicePushTopics];

  return accountServicePushTopics;
}

- (id)paymentOffersServicePushTopics
{
  sharedWebServiceContext = [(PDPaymentWebServiceCoordinator *)self sharedWebServiceContext];
  paymentOffersServicePushTopics = [sharedWebServiceContext paymentOffersServicePushTopics];

  return paymentOffersServicePushTopics;
}

- (void)downloadReceiptForTransaction:(id)transaction
{
  transactionCopy = transaction;
  associatedReceiptUniqueID = [transactionCopy associatedReceiptUniqueID];
  receiptProviderURL = [transactionCopy receiptProviderURL];
  cardNumberSuffix = [transactionCopy cardNumberSuffix];
  if (associatedReceiptUniqueID && receiptProviderURL)
  {
    sharedWebServiceQueue = self->_sharedWebServiceQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100039F7C;
    block[3] = &unk_10083DE38;
    block[4] = self;
    v10 = associatedReceiptUniqueID;
    v11 = cardNumberSuffix;
    v12 = transactionCopy;
    v13 = receiptProviderURL;
    dispatch_async(sharedWebServiceQueue, block);
  }
}

- (void)paymentHardwareStatusWithType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003A9F4;
  block[3] = &unk_10083DED8;
  v10 = completionCopy;
  typeCopy = type;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(sharedWebServiceQueue, block);
}

- (void)_paymentHardwareStatusWithType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  v7 = objc_alloc_init(PKPaymentHardwareStatus);
  [v7 setType:type];
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
      remoteDevices = [(PKIDSManager *)self->_idsManager remoteDevices];
      v9 = [remoteDevices countByEnumeratingWithState:&v13 objects:v17 count:16];
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
              objc_enumerationMutation(remoteDevices);
            }

            if ([*(*(&v13 + 1) + 8 * i) canMakePayments])
            {
              [v7 setCanMakeRemotePayments:1];
              goto LABEL_14;
            }
          }

          v10 = [remoteDevices countByEnumeratingWithState:&v13 objects:v17 count:16];
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

  if (type == 1)
  {
    [v7 setIsSRD:PKIsSRD()];
    [v7 setInFailForward:{+[PKSecureElement isInFailForward](PKSecureElement, "isInFailForward")}];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v7);
  }
}

- (void)validatePreconditionsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
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
        completionCopy[2](completionCopy, 0);
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
        completionCopy[2](completionCopy, 1);
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

- (void)accountAttestationAnonymizationSaltWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    sharedWebServiceQueue = self->_sharedWebServiceQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003AD80;
    block[3] = &unk_10083D648;
    v8 = completionCopy;
    dispatch_async(sharedWebServiceQueue, block);
  }
}

- (void)setAccountAttestationAnonymizationSalt:(id)salt withCompletion:(id)completion
{
  saltCopy = salt;
  completionCopy = completion;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003AEB8;
  v11[3] = &unk_10083DCB8;
  v12 = saltCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = saltCopy;
  dispatch_async(sharedWebServiceQueue, v11);
}

- (void)registerCredentialWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003AFE8;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = requestCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = requestCopy;
  dispatch_async(sharedWebServiceQueue, block);
}

- (void)backgroundRegisterCredentialWithRequest:(id)request
{
  requestCopy = request;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003B0D4;
  v7[3] = &unk_10083C420;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(sharedWebServiceQueue, v7);
}

- (id)pushNotificationTopics
{
  sharedWebServiceContext = [(PDPaymentWebServiceCoordinator *)self sharedWebServiceContext];
  notificationPushTopics = [sharedWebServiceContext notificationPushTopics];

  if (![notificationPushTopics count])
  {
    v4 = [NSSet setWithObject:@"com.apple.passd"];

    notificationPushTopics = v4;
  }

  return notificationPushTopics;
}

- (void)handlePushNotificationForTopic:(id)topic userInfo:(id)info
{
  topicCopy = topic;
  infoCopy = info;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B388;
  block[3] = &unk_10083C4C0;
  v12 = topicCopy;
  v13 = infoCopy;
  selfCopy = self;
  v9 = infoCopy;
  v10 = topicCopy;
  dispatch_async(sharedWebServiceQueue, block);
}

- (void)applyPushNotificationToken:(id)token
{
  tokenCopy = token;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003BAF8;
  v7[3] = &unk_10083C420;
  v8 = tokenCopy;
  selfCopy = self;
  v6 = tokenCopy;
  dispatch_async(sharedWebServiceQueue, v7);
}

- (void)passWillBeRemoved:(id)removed withDiagnosticReason:(id)reason
{
  removedCopy = removed;
  reasonCopy = reason;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003BFE0;
  block[3] = &unk_10083C4C0;
  v12 = removedCopy;
  selfCopy = self;
  v14 = reasonCopy;
  v9 = reasonCopy;
  v10 = removedCopy;
  dispatch_async(sharedWebServiceQueue, block);
}

- (void)passAdded:(id)added
{
  addedCopy = added;
  v5 = dispatch_get_global_queue(0, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003C20C;
  v8[3] = &unk_10083C420;
  v9 = addedCopy;
  selfCopy = self;
  v6 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000055C4;
  block[3] = &unk_10083D648;
  v12 = v6;
  v7 = addedCopy;
  dispatch_async(v5, block);
}

- (void)paymentWebService:(id)service didDownloadPass:(id)pass cloudStoreCoordinatorDelegate:(id)delegate
{
  passCopy = pass;
  [service backgroundDownloadRemotePassAssets:passCopy forSuffixesAndScreenScales:0 cloudStoreCoordinatorDelegate:delegate];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003C6F4;
  v10[3] = &unk_10083E060;
  v10[4] = self;
  v11 = passCopy;
  v9 = passCopy;
  [(PDPaymentWebServiceCoordinator *)self _accessObserversWithHandler:v10];
}

- (void)paymentWebService:(id)service didDownloadPassRemoteAssets:(id)assets completion:(id)completion
{
  assetsCopy = assets;
  completionCopy = completion;
  [assetsCopy reloadDisplayProfileOfType:0];
  v9 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003C834;
  block[3] = &unk_10083D320;
  block[4] = self;
  v13 = assetsCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = assetsCopy;
  dispatch_async(v9, block);
}

- (void)paymentWebService:(id)service didDownloadSerialNumbersForInstalledPasses:(id)passes inRegion:(id)region
{
  serviceCopy = service;
  passesCopy = passes;
  regionCopy = region;
  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Comparing server's expectation of installed passes with local passes…", buf, 2u);
  }

  v26 = objc_alloc_init(NSMutableArray);
  selfCopy = self;
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
        passTypeIdentifier = [v16 passTypeIdentifier];
        if ([passTypeIdentifier isEqualToString:regionCopy])
        {
          serialNumber = [v16 serialNumber];
          v19 = [passesCopy containsObject:serialNumber];

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

  sharedWebServiceQueue = selfCopy->_sharedWebServiceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003CBCC;
  block[3] = &unk_10083E088;
  v28 = v26;
  v29 = regionCopy;
  v30 = selfCopy;
  v31 = passesCopy;
  v21 = passesCopy;
  v22 = regionCopy;
  v23 = v26;
  dispatch_async(sharedWebServiceQueue, block);
}

- (void)paymentWebService:(id)service didRegisterCredentialWithIdentifier:(id)identifier response:(id)response error:(id)error
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003CFA0;
  v11[3] = &unk_10083E0B0;
  selfCopy = self;
  identifierCopy = identifier;
  responseCopy = response;
  errorCopy = error;
  v8 = errorCopy;
  v9 = responseCopy;
  v10 = identifierCopy;
  [(PDPaymentWebServiceCoordinator *)selfCopy _accessObserversWithHandler:v11];
}

- (void)paymentWebServiceBackgroundSessionDidBecomeInvalid:(id)invalid
{
  invalidCopy = invalid;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003D09C;
  v7[3] = &unk_10083C420;
  v8 = invalidCopy;
  selfCopy = self;
  v6 = invalidCopy;
  dispatch_async(sharedWebServiceQueue, v7);
}

- (void)startBackgroundVerificationObserverForPass:(id)pass verificationMethod:(id)method
{
  passCopy = pass;
  methodCopy = method;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003D26C;
  block[3] = &unk_10083C4C0;
  block[4] = self;
  v12 = passCopy;
  v13 = methodCopy;
  v9 = methodCopy;
  v10 = passCopy;
  dispatch_async(sharedWebServiceQueue, block);
}

- (void)performRegistrationForMemberOfRegions:(id)regions force:(BOOL)force completion:(id)completion
{
  regionsCopy = regions;
  completionCopy = completion;
  if (regionsCopy && [regionsCopy count])
  {
    sharedWebServiceQueue = self->_sharedWebServiceQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003D524;
    block[3] = &unk_10083E128;
    block[4] = self;
    v15 = regionsCopy;
    forceCopy = force;
    v16 = completionCopy;
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

  if (completionCopy)
  {
    v13 = PDDefaultQueue();
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10003D510;
    v18[3] = &unk_10083D648;
    v19 = completionCopy;
    dispatch_async(v13, v18);

    v11 = v19;
    goto LABEL_8;
  }

LABEL_9:
}

- (void)performRegistrationForRegion:(id)region force:(BOOL)force completion:(id)completion
{
  regionCopy = region;
  completionCopy = completion;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003DC24;
  v13[3] = &unk_10083E128;
  v13[4] = self;
  v14 = regionCopy;
  forceCopy = force;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = regionCopy;
  dispatch_async(sharedWebServiceQueue, v13);
}

- (void)_queue_performRegistrationForRegion:(id)region force:(BOOL)force completion:(id)completion
{
  forceCopy = force;
  regionCopy = region;
  completionCopy = completion;
  sharedWebService = [(PDPaymentWebServiceCoordinator *)self sharedWebService];
  context = [sharedWebService context];
  if (regionCopy)
  {
    if (!PKRegistrationSupportedInRegionForWebService())
    {
      v17 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 138543362;
      v33 = regionCopy;
      v18 = "PDPaymentWebServiceCoordinator: cannot register for region %{public}@ - not supported.";
      goto LABEL_18;
    }

    configuration = [context configuration];
    v13 = [configuration brokerURLForRegion:regionCopy];

    if (v13)
    {
      if ([context isRegistered] & 1) != 0 || (objc_msgSend(sharedWebService, "primaryBrokerURL"), v14 = objc_claimAutoreleasedReturnValue(), v15 = PKEqualObjects(), v14, (v15))
      {
        v16 = PKLogFacilityTypeGetObject();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
LABEL_13:

          [(PDPaymentWebServiceCoordinator *)self _queue_performRegistrationForBrokerURL:v13 force:forceCopy completion:completionCopy];
LABEL_24:

          goto LABEL_25;
        }

        *buf = 138543362;
        v33 = regionCopy;
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
            v33 = regionCopy;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "PDPaymentWebServiceCoordinator: initially registering for device region as precondition for registration to region %{public}@.", buf, 0xCu);
          }

          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = sub_10003E098;
          v26[3] = &unk_10083E150;
          v27 = regionCopy;
          selfCopy = self;
          v29 = v13;
          v31 = forceCopy;
          v30 = completionCopy;
          v13 = v13;
          [(PDPaymentWebServiceCoordinator *)self _queue_performRegistrationForBrokerURL:0 force:0 completion:v26];

          goto LABEL_24;
        }

        if (!v23)
        {
          goto LABEL_13;
        }

        *buf = 138543362;
        v33 = regionCopy;
      }

      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "PDPaymentWebServiceCoordinator: registering for region %{public}@.", buf, 0xCu);
      goto LABEL_13;
    }

    v17 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v33 = regionCopy;
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
      [context isRegistered];
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

  if (completionCopy)
  {
    v21 = PDDefaultQueue();
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10003E238;
    v24[3] = &unk_10083D648;
    v25 = completionCopy;
    dispatch_async(v21, v24);

    v13 = v25;
    goto LABEL_24;
  }

LABEL_25:
}

- (void)performRegistrationForBrokerURL:(id)l force:(BOOL)force completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003E318;
  v13[3] = &unk_10083E128;
  v13[4] = self;
  v14 = lCopy;
  forceCopy = force;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = lCopy;
  dispatch_async(sharedWebServiceQueue, v13);
}

- (void)_queue_performRegistrationForBrokerURL:(id)l force:(BOOL)force completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  sharedWebService = [(PDPaymentWebServiceCoordinator *)self sharedWebService];
  v11 = sharedWebService;
  if (lCopy)
  {
    if (!force && ([sharedWebService needsRegistrationForBrokerURL:lCopy] & 1) == 0)
    {
      v12 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      *buf = 138412290;
      v26 = lCopy;
      v13 = "PDPaymentWebServiceCoordinator: skipping registration at %@ - already registered.";
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  primaryBrokerURL = [sharedWebService primaryBrokerURL];
  lCopy = primaryBrokerURL;
  if (!primaryBrokerURL || force)
  {
    if (!primaryBrokerURL)
    {
      v17 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "PDPaymentWebServiceCoordinator: cannot register with primary region - broker URL not found.", buf, 2u);
      }

      if (!completionCopy)
      {
        lCopy = 0;
        goto LABEL_17;
      }

      v18 = PDDefaultQueue();
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10003E668;
      v19[3] = &unk_10083D648;
      v16 = &v20;
      v20 = completionCopy;
      dispatch_async(v18, v19);

      lCopy = 0;
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
    v24 = completionCopy;
    [(PDPaymentWebServiceCoordinator *)self _queue_registerDeviceAtBrokerURL:lCopy completion:v23];
    goto LABEL_16;
  }

  v12 = PKLogFacilityTypeGetObject();
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_12;
  }

  *buf = 138412290;
  v26 = lCopy;
  v13 = "PDPaymentWebServiceCoordinator: skipping primary region registration at %@ - already registered.";
LABEL_11:
  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
LABEL_12:

  if (completionCopy)
  {
    v15 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003E654;
    block[3] = &unk_10083D648;
    v16 = &v22;
    v22 = completionCopy;
    dispatch_async(v15, block);

LABEL_16:
  }

LABEL_17:
}

- (void)_queue_registerDeviceAtBrokerURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = lCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PDPaymentWebServiceCoordinator: registering with the broker at %@.", buf, 0xCu);
  }

  sharedWebService = [(PDPaymentWebServiceCoordinator *)self sharedWebService];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003E7DC;
  v12[3] = &unk_10083E1A0;
  v12[4] = self;
  v13 = lCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = lCopy;
  [sharedWebService registerDeviceAtBrokerURL:v11 consistencyCheckResults:0 completion:v12];
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

- (void)scheduleDeviceCheckInWithStartTimeOffset:(double)offset
{
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003EFAC;
  v4[3] = &unk_10083D700;
  v4[4] = self;
  *&v4[5] = offset;
  dispatch_async(sharedWebServiceQueue, v4);
}

- (void)_queue_scheduleDeviceCheckInWithStartTimeOffset:(double)offset repeatInterval:(double)interval randomizeTimes:(BOOL)times
{
  [(PDPaymentWebServiceCoordinator *)self connect];
  v8 = PDScheduledActivityGetCriteria();
  if (!v8)
  {
    if (times)
    {
      v11 = arc4random_uniform(0xE10u) + offset;
      v12 = arc4random_uniform(0xE10u);
    }

    else
    {
      v12 = 0.0;
      v11 = offset + 0.0;
    }

    v13 = v12 + interval;
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

- (BOOL)_queue_automaticDeviceCheckInRequiredForRegion:(id)region
{
  regionCopy = region;
  deviceCheckInPushTopic = [regionCopy deviceCheckInPushTopic];
  v5 = [deviceCheckInPushTopic length];

  if (v5)
  {
    v6 = PKDeviceBuildVersion();
    lastDeviceCheckInBuildVersion = [regionCopy lastDeviceCheckInBuildVersion];
    v8 = lastDeviceCheckInBuildVersion;
    if (v6 && lastDeviceCheckInBuildVersion && ![v6 compare:lastDeviceCheckInBuildVersion options:1])
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        regionCode = [regionCopy regionCode];
        v14 = 138412802;
        v15 = regionCode;
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
        regionCode2 = [regionCopy regionCode];
        v14 = 138412802;
        v15 = regionCode2;
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
  sharedWebServiceContext = [(PDPaymentWebServiceCoordinator *)self sharedWebServiceContext];
  configuration = [sharedWebServiceContext configuration];
  primaryRegion = [sharedWebServiceContext primaryRegion];
  regionCode = [primaryRegion regionCode];
  [configuration deviceCheckInIntervalForRegion:regionCode];
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

- (void)performDeviceCheckInWithCompletion:(id)completion
{
  completionCopy = completion;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003F6E8;
  v7[3] = &unk_10083DCB8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(sharedWebServiceQueue, v7);
}

- (void)_queue_enqueueDeviceCheckInTask:(id)task
{
  taskCopy = task;
  [(NSMutableArray *)self->_deviceCheckInTasks addObject:taskCopy];
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

    [(PDPaymentWebServiceCoordinator *)self _performDeviceCheckInTask:taskCopy];
  }
}

- (void)_queue_coeleaseDeviceCheckInCompletion:(id)completion
{
  completionCopy = completion;
  lastObject = [(NSMutableArray *)self->_deviceCheckInTasks lastObject];
  if (!lastObject)
  {
    lastObject = objc_alloc_init(PDDeviceCheckInTask);
    [(NSMutableArray *)self->_deviceCheckInTasks addObject:lastObject];
  }

  if (completionCopy)
  {
    completionHandlers = [(PDDeviceCheckInTask *)lastObject completionHandlers];
    v6 = objc_retainBlock(completionCopy);
    [completionHandlers addObject:v6];
  }

  if (!self->_deviceCheckInRunning)
  {
    [(PDPaymentWebServiceCoordinator *)self _performDeviceCheckInTask:lastObject];
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

- (void)_performDeviceCheckInTask:(id)task
{
  taskCopy = task;
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
  selfCopy = self;
  v11 = taskCopy;
  v6 = taskCopy;
  v7 = v9;
  [(PDPaymentWebServiceCoordinator *)self _updateWebServiceConfigurationWithCompletion:v8];
}

- (void)_queue_completeDeviceCheckInTask:(id)task success:(BOOL)success error:(id)error
{
  taskCopy = task;
  errorCopy = error;
  [(NSMutableArray *)self->_deviceCheckInTasks removeObject:taskCopy];
  replyQueue = self->_replyQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100040840;
  block[3] = &unk_10083E328;
  v11 = taskCopy;
  v24 = v11;
  successCopy = success;
  v12 = errorCopy;
  v25 = v12;
  dispatch_async(replyQueue, block);
  firstObject = [(NSMutableArray *)self->_deviceCheckInTasks firstObject];
  v14 = firstObject;
  if (firstObject)
  {
    if ([firstObject cancelled])
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
      success = 0;
    }

    v16 = 0;
    if (!success)
    {
      [(PDPaymentWebServiceCoordinator *)self _queue_deviceCheckInRepeatInterval];
      v16 = v17;
    }

    v18 = !success;
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

- (void)_queue_checkContextForDeviceCheckInAuthRequirement:(id)requirement completion:(id)completion
{
  requirementCopy = requirement;
  completionCopy = completion;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if ([requirementCopy canPromptForAuth])
  {
    sharedWebServiceContext = [(PDPaymentWebServiceCoordinator *)self sharedWebServiceContext];
    regions = [sharedWebServiceContext regions];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100040BA0;
    v15[3] = &unk_10083E350;
    v15[4] = &v16;
    [regions enumerateKeysAndObjectsUsingBlock:v15];
  }

  if (v17[3])
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Requesting grand slam token renew for device check in", buf, 2u);
    }

    sharedWebService = [(PDPaymentWebServiceCoordinator *)self sharedWebService];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100040C88;
    v12[3] = &unk_10083E3A0;
    v12[4] = self;
    v13 = completionCopy;
    [sharedWebService _renewAppleAccountWithCompletionHandler:v12];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }

  _Block_object_dispose(&v16, 8);
}

- (void)_queue_handleCheckInForRegion:(id)region action:(int64_t)action completion:(id)completion
{
  regionCopy = region;
  completionCopy = completion;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000410C8;
  v22[3] = &unk_10083E3F0;
  v10 = regionCopy;
  v23 = v10;
  selfCopy = self;
  v11 = completionCopy;
  v25 = v11;
  v12 = objc_retainBlock(v22);
  v13 = v12;
  if (action)
  {
    (v12[2])(v12, action);
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
    sharedWebService = [(PDPaymentWebServiceCoordinator *)self sharedWebService];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100041218;
    v18[3] = &unk_10083E418;
    v19 = v15;
    v20 = v11;
    v21 = v13;
    v17 = v15;
    [sharedWebService deviceCheckInDeviceCheckInForRegion:v10 completion:v18];
  }
}

- (void)_handleDeviceCheckInAction:(int64_t)action region:(id)region completion:(id)completion
{
  regionCopy = region;
  completionCopy = completion;
  sharedWebService = [(PDPaymentWebServiceCoordinator *)self sharedWebService];
  if (action <= 2)
  {
    if (action)
    {
      if (action == 1)
      {
        sharedWebServiceQueue = self->_sharedWebServiceQueue;
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100041C0C;
        v21[3] = &unk_10083D320;
        v22 = regionCopy;
        v23 = sharedWebService;
        v24 = completionCopy;
        dispatch_async(sharedWebServiceQueue, v21);

        v12 = v22;
        goto LABEL_16;
      }

      if (action == 2)
      {
        v11 = self->_sharedWebServiceQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10004196C;
        block[3] = &unk_10083E468;
        v26 = regionCopy;
        selfCopy = self;
        v28 = sharedWebService;
        v29 = completionCopy;
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

      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 1);
      }

      goto LABEL_22;
    }

    *buf = 138412290;
    v39 = regionCopy;
    v15 = "No action taken from device check in for: %@";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
    goto LABEL_20;
  }

  switch(action)
  {
    case 5:
      v16 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = regionCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Device check in requested reregister for peer payment: %@", buf, 0xCu);
      }

      v17 = PDOSTransactionCreate("PDPaymentWebServiceCoordinator.check_in.re_register_peer_payment");
      peerPaymentWebServiceCoordinator = self->_peerPaymentWebServiceCoordinator;
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100041954;
      v30[3] = &unk_10083E490;
      v31 = v17;
      v32 = completionCopy;
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
      v39 = regionCopy;
      v15 = "Device check in requires auth for: %@";
      goto LABEL_19;
    case 3:
      v13 = self->_sharedWebServiceQueue;
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1000416B8;
      v33[3] = &unk_10083E468;
      v34 = regionCopy;
      selfCopy2 = self;
      v36 = sharedWebService;
      v37 = completionCopy;
      dispatch_async(v13, v33);

      v12 = v34;
      goto LABEL_16;
  }

LABEL_22:
}

- (void)setDeviceCheckInContextBuildVersion:(id)version outstandingAction:(int64_t)action forRegion:(id)region
{
  versionCopy = version;
  regionCopy = region;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100041EB4;
  v13[3] = &unk_10083C3F8;
  v13[4] = self;
  v14 = regionCopy;
  v15 = versionCopy;
  actionCopy = action;
  v11 = versionCopy;
  v12 = regionCopy;
  dispatch_async(sharedWebServiceQueue, v13);
}

- (void)verificationObserver:(id)observer didObserveVerificationCode:(id)code
{
  observerCopy = observer;
  codeCopy = code;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000420C8;
  block[3] = &unk_10083C4C0;
  v12 = observerCopy;
  selfCopy = self;
  v14 = codeCopy;
  v9 = codeCopy;
  v10 = observerCopy;
  dispatch_async(sharedWebServiceQueue, block);
}

- (void)verificationObserverDidTimeout:(id)timeout
{
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100042428;
  block[3] = &unk_10083C470;
  block[4] = self;
  dispatch_async(sharedWebServiceQueue, block);
}

- (void)handleInsertionForPaymentPass:(id)pass
{
  if (pass)
  {
    [(PDPushNotificationManager *)self->_pushNotificationManager recalculatePushTopics];
    v4 = [NSDate dateWithTimeIntervalSinceNow:180.0];
    [(PDPaymentWebServiceCoordinator *)self scheduleConsistencyCheck:v4 pluggedIn:0 backoffLevel:0];
  }
}

- (void)handleDeletionForPassTypeIdentifier:(id)identifier serialNumber:(id)number
{
  if ([identifier hasPrefix:{@"paymentpass", number}])
  {
    pushNotificationManager = self->_pushNotificationManager;

    [(PDPushNotificationManager *)pushNotificationManager recalculatePushTopics];
  }
}

- (void)assertionManager:(id)manager didAcquireAssertion:(id)assertion
{
  assertionCopy = assertion;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100042698;
  v8[3] = &unk_10083C420;
  v9 = assertionCopy;
  selfCopy = self;
  v7 = assertionCopy;
  dispatch_async(sharedWebServiceQueue, v8);
}

- (BOOL)synchronizeWithTSM
{
  sharedWebService = [(PDPaymentWebServiceCoordinator *)self sharedWebService];
  context = [sharedWebService context];
  isRegistered = [context isRegistered];

  if (isRegistered)
  {
    sharedWebServiceContext = [(PDPaymentWebServiceCoordinator *)self sharedWebServiceContext];
    tSMPushTopics = [sharedWebServiceContext TSMPushTopics];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = tSMPushTopics;
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

- (void)didDownloadPaymentPass:(id)pass
{
  passCopy = pass;
  v5 = PDDefaultQueue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000429C4;
  v7[3] = &unk_10083C420;
  v7[4] = self;
  v8 = passCopy;
  v6 = passCopy;
  dispatch_sync(v5, v7);
}

- (id)paymentPasses
{
  v2 = [(PDDatabaseManager *)self->_databaseManager passesOfType:1];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (void)deviceStateWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v23 = completionCopy;
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = sub_100005970;
    v43 = sub_10000B0C4;
    v44 = objc_alloc_init(PKSecureElementConsistencyCheckDeviceState);
    v4 = v40[5];
    deviceSpecificPaymentApplications = [(PDDatabaseManager *)self->_databaseManager deviceSpecificPaymentApplications];
    allObjects = [deviceSpecificPaymentApplications allObjects];
    [v4 setDevicePaymentApplications:allObjects];

    secureElementIdentifiers = [(PKSecureElement *)self->_secureElement secureElementIdentifiers];
    v7 = objc_alloc_init(NSMutableDictionary);
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v35 = 0u;
    passesWithISO18013Credentials = [(PDDatabaseManager *)self->_databaseManager passesWithISO18013Credentials];
    v9 = [passesWithISO18013Credentials countByEnumeratingWithState:&v35 objects:v46 count:16];
    if (v9)
    {
      obj = passesWithISO18013Credentials;
      v26 = *v36;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v36 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v11 = [*(*(&v35 + 1) + 8 * i) iso18013BlobsForSecureElementIdentifiers:{secureElementIdentifiers, v23}];
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
                sHA256Hash = [v17 SHA256Hash];
                identifier = [v16 identifier];
                [v7 setObject:sHA256Hash forKeyedSubscript:identifier];
              }

              v13 = [v12 countByEnumeratingWithState:&v31 objects:v45 count:16];
            }

            while (v13);
          }
        }

        passesWithISO18013Credentials = obj;
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
    completionCopy = v23;
  }
}

- (void)scheduleConsistencyCheck:(id)check pluggedIn:(BOOL)in backoffLevel:(id)level
{
  checkCopy = check;
  levelCopy = level;
  v10 = PDDefaultQueue();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100043114;
  v13[3] = &unk_10083E5D0;
  v13[4] = self;
  v14 = checkCopy;
  inCopy = in;
  v15 = levelCopy;
  v11 = levelCopy;
  v12 = checkCopy;
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

- (void)handleRequestedActions:(id)actions completion:(id)completion
{
  actionsCopy = actions;
  completionCopy = completion;
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
  obj = actionsCopy;
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
      deviceCredential = [v11 deviceCredential];
      actions = [v11 actions];
      type = [deviceCredential type];
      if (type == 2)
      {
        isoProperties = [deviceCredential isoProperties];
        isoIdentifier = [isoProperties isoIdentifier];

        if ((actions & 8) != 0)
        {
          [v43 safelyAddObject:isoIdentifier];
        }

        if ((actions & 0x10) != 0)
        {
          [v41 safelyAddObject:isoIdentifier];
        }

        if ((actions & 0x20) != 0)
        {
          [v40 safelyAddObject:isoIdentifier];
        }

        if ((actions & 0x40) != 0)
        {
          address = [v11 address];
          [v37 safelyAddObject:address];
        }

        v44 |= (actions >> 7) & 1;
        goto LABEL_25;
      }

      if (type == 1)
      {
        address2 = [deviceCredential address];
        isoIdentifier = [address2 subcredentialIdentifier];

        if ((actions & 4) != 0)
        {
          [v38 safelyAddObject:isoIdentifier];
        }

        if ((actions & 8) != 0 && isoIdentifier)
        {
          [v42 addObject:isoIdentifier];
        }

        goto LABEL_25;
      }

      if (!type && (actions & 8) != 0)
      {
        isoIdentifier = [deviceCredential address];
        appletIdentifier = [isoIdentifier appletIdentifier];
        [v7 safelyAddObject:appletIdentifier];

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
        [v20 addOperation:{v67, v34, completionCopy}];
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
  v32 = completionCopy;
  v47 = v32;
  v48 = v75;
  v33 = [v20 evaluateWithInput:v31 completion:v46];

  _Block_object_dispose(v75, 8);
}

- (void)performScheduledActivityWithIdentifier:(id)identifier activityCriteria:(id)criteria
{
  identifierCopy = identifier;
  criteriaCopy = criteria;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Handling Scheduled Activity: %@", buf, 0xCu);
  }

  if ([identifierCopy isEqualToString:@"ConsistencyCheck"])
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

  else if ([identifierCopy hasPrefix:@"VASTransactionProcessor."])
  {
    v12 = [identifierCopy substringFromIndex:{objc_msgSend(@"VASTransactionProcessor.", "length")}];
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

  else if ([identifierCopy isEqualToString:@"DeviceCheckIn"])
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

  else if ([identifierCopy isEqualToString:@"DeviceUpgradeTasks"])
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "passd starting device upgrade tasks from scheduled activity", buf, 2u);
    }

    [(PDPaymentWebServiceCoordinator *)self _runDeviceUpgradeTasks];
  }
}

- (void)_processValueAddedServiceTransaction:(id)transaction
{
  transactionCopy = transaction;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100044C24;
  v7[3] = &unk_10083E728;
  v8 = [[PKValueAddedServiceWebService alloc] initWithValueAddedServiceTransaction:transactionCopy];
  v9 = transactionCopy;
  selfCopy = self;
  v5 = transactionCopy;
  v6 = v8;
  [v6 downloadMerchantPayloadWithCompletion:v7];
}

- (void)_performNotificationActionWithUserInfo:(id)info
{
  infoCopy = info;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100044FB0;
  v7[3] = &unk_10083C420;
  v8 = infoCopy;
  selfCopy = self;
  v6 = infoCopy;
  dispatch_async(sharedWebServiceQueue, v7);
}

- (id)_userNotificationFromResponse:(id)response
{
  responseCopy = response;
  v4 = [responseCopy aps];
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
    requestID = [responseCopy requestID];
    if ([requestID length])
    {
      action = [responseCopy action];
      if ([action isEqualToString:PKNotificationActionOpenIDMSCardOnFile])
      {
        v12 = [NSString stringWithFormat:@"%@/%@", PKURLActionPaymentSetupIDMSCardOnFile, requestID];
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
          action2 = [responseCopy action];
          requestID2 = [responseCopy requestID];
          *buf = 138412546;
          v20 = action2;
          v21 = 2112;
          v22 = requestID2;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unsupported action found:%@ for requestID:%@", buf, 0x16u);
        }

        v14 = 0;
      }
    }

    else
    {
      action = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(action, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, action, OS_LOG_TYPE_DEFAULT, "No requestID in response", buf, 2u);
      }

      v14 = 0;
    }
  }

  else
  {
    requestID = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(requestID, OS_LOG_TYPE_DEFAULT))
    {
      requestID3 = [responseCopy requestID];
      *buf = 138412290;
      v20 = requestID3;
      _os_log_impl(&_mh_execute_header, requestID, OS_LOG_TYPE_DEFAULT, "No valid message found in response for requestID :%@", buf, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

- (void)_fetchPassesIfNecessaryForPushTopic:(id)topic
{
  topicCopy = topic;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100045540;
  v7[3] = &unk_10083C420;
  v7[4] = self;
  v8 = topicCopy;
  v6 = topicCopy;
  dispatch_async(sharedWebServiceQueue, v7);
}

- (void)_handleDownloadedPass:(id)pass
{
  passCopy = pass;
  v5 = PDOSTransactionCreate("PDPaymentWebServiceCoordinator");
  v6 = objc_autoreleasePoolPush();
  if ([passCopy isIdentityPass] && (objc_msgSend(passCopy, "devicePrimaryPaymentApplication"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "paymentType"), v7, v8 == 1002) && (databaseManager = self->_databaseManager, objc_msgSend(passCopy, "uniqueID"), v10 = objc_claimAutoreleasedReturnValue(), LOBYTE(databaseManager) = -[PDDatabaseManager passExistsWithUniqueID:](databaseManager, "passExistsWithUniqueID:", v10), v10, (databaseManager & 1) == 0))
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      *buf = 138412290;
      v19 = uniqueID;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Removing stale pass %@", buf, 0xCu);
    }

    v13 = [[PKPaymentDeprovisionRequest alloc] initWithPaymentPass:passCopy];
    sharedWebService = [(PDPaymentWebServiceCoordinator *)self sharedWebService];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100045B88;
    v16[3] = &unk_10083E010;
    v17 = v13;
    v15 = v13;
    [sharedWebService diagnosticSessionWithReason:@"pass previously deleted" sessionHandler:v16];
  }

  else
  {
    [(PDCardFileManager *)self->_passStore writeCard:passCopy source:1 error:0];
  }

  objc_autoreleasePoolPop(v6);
}

- (void)_queue_setupBackgroundWebServiceWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = PKBackgroundWebServiceContextPath();
  v7 = [PKPaymentWebServiceBackgroundContext contextWithArchive:v5];

  sharedWebService = [(PDPaymentWebServiceCoordinator *)self sharedWebService];
  [sharedWebService startBackgroundURLSessionWithIdentifier:@"com.apple.passd" context:v7 backgroundDelegate:self completion:completionCopy];
}

- (void)noteAccountChanged
{
  sharedWebService = [(PDPaymentWebServiceCoordinator *)self sharedWebService];
  [sharedWebService _resetSupportInRegionCache];
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

- (void)_queue_performOwnershipTokensRequestWithUserInfo:(id)info
{
  v4 = [info objectForKey:@"reason"];
  v5 = PKPaymentSendOwnershipTokensRequestReasonFromString();

  sharedWebService = [(PDPaymentWebServiceCoordinator *)self sharedWebService];
  [sharedWebService sendOwnershipTokensForReason:v5 completion:&stru_10083E798];
}

- (void)checkFPANCredentialEligibility:(id)eligibility completion:(id)completion
{
  eligibilityCopy = eligibility;
  completionCopy = completion;
  v8 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004600C;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = eligibilityCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = eligibilityCopy;
  dispatch_async(v8, block);
}

- (void)scheduleDeviceUpgradeTasksIfNecessaryWithRandomizeStartDate:(BOOL)date
{
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000460A0;
  v4[3] = &unk_10083CF10;
  v4[4] = self;
  dateCopy = date;
  dispatch_async(sharedWebServiceQueue, v4);
}

- (void)_scheduleDeviceUpgradeTaskActivityWithRandomizeStartDate:(BOOL)date
{
  v5 = PDDefaultQueue();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000463C8;
  v6[3] = &unk_10083CF10;
  v6[4] = self;
  dateCopy = date;
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
  sharedWebServiceContext = [(PDPaymentWebServiceCoordinator *)self sharedWebServiceContext];
  [sharedWebServiceContext atomicallyUpdatePrimaryRegion:&stru_10083E7B8];
  [(PDPaymentWebServiceArchiver *)self->_archiver archiveContext:sharedWebServiceContext];
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

- (void)setDeviceUpgradeTasksContextBuildVersion:(id)version upgradeTaskVersion:(int64_t)taskVersion retryCount:(int64_t)count
{
  versionCopy = version;
  sharedWebServiceQueue = self->_sharedWebServiceQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000474F4;
  v11[3] = &unk_10083E8D0;
  taskVersionCopy = taskVersion;
  countCopy = count;
  v11[4] = self;
  v12 = versionCopy;
  v10 = versionCopy;
  dispatch_async(sharedWebServiceQueue, v11);
}

- (void)_queue_performContactInformationFetchTaskWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PDDatabaseManager *)self->_databaseManager passExistsWithPassType:1])
  {
    v5 = +[PKContactInformation contactInformationFromKeychain];
    if (!v5)
    {
      v8 = objc_alloc_init(PKContactInformationRequest);
      sharedWebService = [(PDPaymentWebServiceCoordinator *)self sharedWebService];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100047760;
      v10[3] = &unk_10083E8F8;
      v11 = completionCopy;
      [sharedWebService contactInformationWithRequest:v8 completion:v10];

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

  (*(completionCopy + 2))(completionCopy, 1);
LABEL_9:
}

- (void)receivedXPCEvent:(id)event forEventStream:(id)stream
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