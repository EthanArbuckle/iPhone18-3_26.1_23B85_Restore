@interface PDApplePayCloudStoreContainer
- (BOOL)_canFormShareFromCloudStoreRecord:(id)record;
- (BOOL)_canFormShareLockFromCloudStoreRecord:(id)record;
- (BOOL)_canFormTransactionFromCloudStoreRecord:(id)record;
- (BOOL)_isAccountEventAssociatedObjectFromRecordType:(id)type;
- (BOOL)_isAccountEventFromRecordType:(id)type;
- (BOOL)_isAccountFromRecordType:(id)type;
- (BOOL)_isCloudStoreZoneThePrimaryZoneForCurrentUser:(id)user containerDatabase:(id)database;
- (BOOL)_isIssuerMessagingFlagFromRecordType:(id)type;
- (BOOL)_isTransactionItemFromRecordType:(id)type;
- (BOOL)_queue_canInitializeContainer;
- (BOOL)_queue_canInvalidateContainer;
- (BOOL)_queue_canSyncTransactionToCloudKit:(id)kit forTransactionSourceIdentifier:(id)identifier;
- (BOOL)_queue_isRelevantTransactionSourceIdentifier:(id)identifier;
- (BOOL)shouldContinueWithRequest:(id)request;
- (BOOL)supportsContainerChangeEventReports;
- (PDApplePayCloudStoreContainer)initWithDataSource:(id)source delegate:(id)delegate transactionProcessor:(id)processor accountManager:(id)manager paymentWebServiceCoordinator:(id)coordinator peerPaymentWebServiceCoordinator:(id)serviceCoordinator familyCircleManager:(id)circleManager spotlightIndexer:(id)self0 notificationStreamManager:(id)self1;
- (id)_accountCreateDateForTranactionSourceIdentifier:(id)identifier passUniqueID:(id)d;
- (id)_accountZoneNamesForAccount:(id)account itemType:(unint64_t)type containerDatabase:(id)database;
- (id)_accountZoneNamesForAccountSet:(id)set containerDatabase:(id)database;
- (id)_accountZoneNamesForAccountUser:(id)user itemType:(unint64_t)type containerDatabase:(id)database;
- (id)_allPossibleCloudStoreZonesForFetchingWithTransactionSourceIdentifier:(id)identifier;
- (id)_cloudStoreSpecificKeysForItem:(id)item paymentPass:(id)pass;
- (id)_originDeviceIDForCloudStoreRecord:(id)record;
- (id)_parseTransactionRecords:(id)records request:(id)request databaseIdentifier:(id)identifier updateReasons:(unint64_t)reasons;
- (id)_paymentApplicationForPassUniqueIdentifier:(id)identifier;
- (id)_peerPaymentZoneNamesForAccount:(id)account containerDatabase:(id)database;
- (id)_queue_additionalTransactionSourceIdentifiersForProvisioningWithZone:(id)zone transactionSourceIdentifiers:(id)identifiers;
- (id)_recordTypeForAccountEventRecord:(id)record;
- (id)_recordsByFromAccountEvent:(id)event zone:(id)zone;
- (id)_stripToFirstDash:(id)dash;
- (id)_transactionSourceIdentifierForTransactionCloudStoreRecord:(id)record databaseIdentifier:(id)identifier;
- (id)_transactionSourceIdentifierForTransactionRecordID:(id)d recordType:(id)type databaseIdentifier:(id)identifier;
- (id)allPossibleZoneNamesForContainerDatabase:(id)database;
- (id)allPossibleZoneNamesForContainerDatabase:(id)database itemType:(unint64_t)type;
- (id)allPossibleZoneSubscriptionsForContainerDatabase:(id)database;
- (id)cloudStoreSpecificKeysForItem:(id)item;
- (id)cloudStoreZonesForItem:(id)item action:(unint64_t)action inContainerDatabase:(id)database;
- (id)cloudStoreZonesForItemType:(unint64_t)type configuration:(id)configuration action:(unint64_t)action inContainerDatabase:(id)database;
- (id)filterCloudStoreZones:(id)zones action:(unint64_t)action inContainerDatabase:(id)database;
- (id)identifierFromRecord:(id)record;
- (id)possibleDatabaseSubscriptionForContainerDatabase:(id)database;
- (id)primaryRecordTypesForCloudStoreItemType:(unint64_t)type;
- (id)recordTypeFromRecordName:(id)name;
- (id)recordTypesForCloudStoreItemType:(unint64_t)type;
- (id)subscriptionForZone:(id)zone inContainerDatabase:(id)database;
- (id)zoneIDForSubscription:(id)subscription inContainerDatabase:(id)database;
- (void)_addCloudStoreRecordsFromResponse:(id)response toTransactionSourceRecords:(id)records transactionSourceIdentifiers:(id)identifiers passUniqueID:(id)d;
- (void)_deleteLocalDataFromDeletedRecordsByDatabaseIdentifier:(id)identifier;
- (void)_fetchAndStoreAppleCashItemWithRecordType:(id)type operationGroupName:(id)name operationGroupNameSuffix:(id)suffix zone:(id)zone containerDatabase:(id)database transactionSourceIdentifiers:(id)identifiers accountCreationDate:(id)date completion:(id)self0;
- (void)_fetchAndStoreAppleCashRecordsIfNecessaryForPassUniqueID:(id)d operationGroupName:(id)name operationGroupNameSuffix:(id)suffix completion:(id)completion;
- (void)_fetchMissingAccountEventsWithRecordParser:(id)parser request:(id)request databaseIdentifier:(id)identifier carriedOverRecordsByDatabaseIdentifier:(id)databaseIdentifier updateReasons:(unint64_t)reasons completion:(id)completion;
- (void)_fetchMissingTransactionRecordsWithRecordParser:(id)parser request:(id)request databaseIdentifier:(id)identifier completion:(id)completion;
- (void)_fetchTaskOperationWithIdentifier:(id)identifier completedWithError:(id)error;
- (void)_handleFamilyUpdateNotification:(id)notification;
- (void)_handlePeerPaymentAccountChanged:(id)changed;
- (void)_insertAccountBalanceUpdateNotificationIfNecessaryForAccount:(id)account record:(id)record;
- (void)_parseAccountEventsFromRecordParser:(id)parser databaseIdentifier:(id)identifier shouldUpdateLocalDatabase:(BOOL)database shouldReturn:(BOOL)return updateReasons:(unint64_t)reasons completion:(id)completion;
- (void)_parseAccountsFromRecordParser:(id)parser databaseIdentifier:(id)identifier shouldUpdateLocalDatabase:(BOOL)database shouldReturn:(BOOL)return completion:(id)completion;
- (void)_parseMessagesFromRecordParser:(id)parser databaseIdentifier:(id)identifier shouldUpdateLocalDatabase:(BOOL)database shouldReturn:(BOOL)return completion:(id)completion;
- (void)_processCounterpartImageDataWithRecordParser:(id)parser request:(id)request databaseIdentifier:(id)identifier completion:(id)completion;
- (void)_processPendingRequestsWithRecordParser:(id)parser request:(id)request databaseIdentifier:(id)identifier completion:(id)completion;
- (void)_processRecurringPaymentsWithRecordParser:(id)parser request:(id)request databaseIdentifier:(id)identifier completion:(id)completion;
- (void)_processShareWithRecordParser:(id)parser request:(id)request databaseIdentifier:(id)identifier completion:(id)completion;
- (void)_processZoneShareLockWithRecordParser:(id)parser request:(id)request databaseIdentifier:(id)identifier completion:(id)completion;
- (void)_queue_aliasesForRecipientHandle:(id)handle zoneName:(id)name completion:(id)completion;
- (void)_queue_cloudStoreAccountChanged:(id)changed;
- (void)_queue_cloudStoreZoneInvitationDataForInvitation:(id)invitation toRecipient:(id)recipient completion:(id)completion;
- (void)_queue_createOrRemoveZoneSharesForAccountsIfNecessaryWithCompletion:(id)completion;
- (void)_queue_createOrRemoveZoneSharesForPeerPaymentIfNecessaryWithCompletion:(id)completion;
- (void)_queue_createOrRemoveZoneSharesIfNecessaryWithCompletion:(id)completion;
- (void)_queue_didInvalidateContainer:(BOOL)container;
- (void)_queue_ensureZoneShareIntegrity;
- (void)_queue_familyMembersByAltDSIDWithCompletion:(id)completion;
- (void)_queue_familyMembersWithCompletion:(id)completion;
- (void)_queue_markAllRunningFetchTasksWithError:(id)error;
- (void)_queue_performFetchTasksBackgroundActivityForGroupName:(id)name suffix:(id)suffix completion:(id)completion;
- (void)_queue_performUnarchivedTransactionsBackgroundActivityForGroupName:(id)name suffix:(id)suffix completion:(id)completion;
- (void)_queue_processAccountChangeWithOldAccounts:(id)accounts newAccounts:(id)newAccounts;
- (void)_queue_processPeerPaymentAccountChangeWithOldAccount:(id)account newPeerPaymentAccount:(id)paymentAccount;
- (void)_queue_processResultWithError:(id)error nextExpectedState:(unint64_t)state operationGroupNameSuffix:(id)suffix retryCount:(unint64_t)count shouldRetry:(BOOL)retry completion:(id)completion;
- (void)_queue_processSharedAccountCloudStoreChangeWithOldSharedAccountCloudStore:(id)store newSharedAccountCloudStore:(id)cloudStore;
- (void)_queue_setContainerState:(unint64_t)state operationGroupNameSuffix:(id)suffix retryCount:(unint64_t)count completion:(id)completion;
- (void)_queue_updateWithPossibleNewZonesToAdd:(id)add orphanedZones:(id)zones containerDatabase:(id)database;
- (void)_updateFetchTaskScheduledActivityIfNeccessary;
- (void)_updateUnarchivedTransactionsScheduledActivityIfNeccessary;
- (void)accountManager:(id)manager accountUsersChanged:(id)changed oldUsers:(id)users accountIdentifier:(id)identifier;
- (void)accountManager:(id)manager didAddAccount:(id)account;
- (void)accountManager:(id)manager didRemoveAccount:(id)account;
- (void)accountManager:(id)manager didUpdateAccount:(id)account oldAccount:(id)oldAccount;
- (void)accountManager:(id)manager sharedAccountCloudStoreChangedForAccountIdentifier:(id)identifier;
- (void)backgroundModifiedRecordSyncForTranasctionSourceIdentifiers:(id)identifiers fromDate:(id)date returnRecords:(BOOL)records formReport:(BOOL)report completion:(id)completion;
- (void)backgroundRecordChangedSyncForTranasctionSourceIdentifiers:(id)identifiers completion:(id)completion;
- (void)bootstrapZoneWithName:(id)name completion:(id)completion;
- (void)canSyncTransactionFromCloudKitForTransactionSourceIdentifier:(id)identifier completion:(id)completion;
- (void)canSyncTransactionToCloudKit:(id)kit forTransactionSourceIdentifier:(id)identifier completion:(id)completion;
- (void)coalesceApplePayRequest:(id)request withNewApplePayRequest:(id)payRequest;
- (void)coalesceRequest:(id)request withNewRequest:(id)newRequest;
- (void)containerResetCompletedWithSuccess:(BOOL)success error:(id)error;
- (void)dealloc;
- (void)deleteIssuerMessagingFlagWithIdentifier:(id)identifier completion:(id)completion;
- (void)didUpdateSetupAssistantStateFrom:(unint64_t)from toState:(unint64_t)state;
- (void)fetchAndStoreAccountEventsWithIdentifiers:(id)identifiers completion:(id)completion;
- (void)fetchAndStoreRecordsForPassUniqueID:(id)d transactionSourceIdentifiers:(id)identifiers fullFetchIgnoringChangeToken:(BOOL)token ignoreExistingRecordHash:(BOOL)hash groupName:(id)name groupNameSuffix:(id)suffix completion:(id)completion;
- (void)fetchRecordsInAcceptedZoneShare:(id)share databaseIdentifier:(id)identifier operationGroupName:(id)name operationGroupNameSuffix:(id)suffix qualityOfService:(int64_t)service completion:(id)completion;
- (void)generateRandomTransactionForTransactionSourceIdentifier:(id)identifier completion:(id)completion;
- (void)invalidateCloudStoreIfPossibleWithOperationGroupNameSuffix:(id)suffix clearCache:(BOOL)cache;
- (void)passDidDisappear:(id)disappear;
- (void)performScheduledActivityWithIdentifier:(id)identifier activityCriteria:(id)criteria;
- (void)populateEvents:(id)events forAccountIdentifier:(id)identifier completion:(id)completion;
- (void)processFetchedCloudStoreDataWithModifiedRecordsByDatabaseIdentifier:(id)identifier deletedRecordsByDatabaseIdentifier:(id)databaseIdentifier carriedOverRecordsByDatabaseIdentifier:(id)byDatabaseIdentifier conflictingRecordsByDatabaseIdentifier:(id)recordsByDatabaseIdentifier request:(id)request completion:(id)completion;
- (void)requestUpdatesForTransactionSourceIdentifier:(id)identifier;
- (void)syncTransactionsToCloudStoreOriginatedOnDevice:(unint64_t)device;
- (void)uploadCounterpartImageData:(id)data completion:(id)completion;
- (void)uploadIssuerMessagingFlag:(id)flag completion:(id)completion;
- (void)uploadPendingRequest:(id)request completion:(id)completion;
- (void)uploadRecurringPayment:(id)payment completion:(id)completion;
- (void)uploadTransaction:(id)transaction forTransactionSourceIdentifier:(id)identifier includeServerData:(BOOL)data completion:(id)completion;
@end

@implementation PDApplePayCloudStoreContainer

- (PDApplePayCloudStoreContainer)initWithDataSource:(id)source delegate:(id)delegate transactionProcessor:(id)processor accountManager:(id)manager paymentWebServiceCoordinator:(id)coordinator peerPaymentWebServiceCoordinator:(id)serviceCoordinator familyCircleManager:(id)circleManager spotlightIndexer:(id)self0 notificationStreamManager:(id)self1
{
  sourceCopy = source;
  delegateCopy = delegate;
  processorCopy = processor;
  managerCopy = manager;
  coordinatorCopy = coordinator;
  serviceCoordinatorCopy = serviceCoordinator;
  circleManagerCopy = circleManager;
  indexerCopy = indexer;
  v60.receiver = self;
  v60.super_class = PDApplePayCloudStoreContainer;
  v19 = [(PDCloudStoreContainer *)&v60 initWithDataSource:sourceCopy notificationStreamManager:streamManager];
  if (v19)
  {
    v19->_isInternalBuild = os_variant_has_internal_ui();
    objc_storeWeak(&v19->_applePayContainerDelegate, delegateCopy);
    objc_storeStrong(&v19->_transactionProcessor, processor);
    objc_storeStrong(&v19->_accountManager, manager);
    objc_storeStrong(&v19->_peerPaymentWebServiceCoordinator, serviceCoordinator);
    objc_storeStrong(&v19->_familyCircleManager, circleManager);
    objc_storeStrong(&v19->_spotlightIndexer, indexer);
    v20 = objc_alloc_init(NSMutableDictionary);
    backgroundTasksBeingRun = v19->_backgroundTasksBeingRun;
    v19->_backgroundTasksBeingRun = v20;

    dataSource = [(PDCloudStoreContainer *)v19 dataSource];
    peerPaymentAccount = [dataSource peerPaymentAccount];
    peerPaymentAccount = v19->_peerPaymentAccount;
    v19->_peerPaymentAccount = peerPaymentAccount;

    [(PDAccountManager *)v19->_accountManager registerObserver:v19];
    dataSource2 = [(PDCloudStoreContainer *)v19 dataSource];
    accounts = [dataSource2 accounts];
    accounts = v19->_accounts;
    v19->_accounts = accounts;

    objc_storeStrong(&v19->_paymentWebServiceCoordinator, coordinator);
    v28 = objc_alloc_init(NSMutableDictionary);
    fetchTasks = v19->_fetchTasks;
    v19->_fetchTasks = v28;

    v19->_fetchTasksLock._os_unfair_lock_opaque = 0;
    dataSource3 = [(PDCloudStoreContainer *)v19 dataSource];
    sharedAccountCloudStoreByAccountIdentifier = [dataSource3 sharedAccountCloudStoreByAccountIdentifier];
    sharedAccountCloudStoreByAccountIdentifier = v19->_sharedAccountCloudStoreByAccountIdentifier;
    v19->_sharedAccountCloudStoreByAccountIdentifier = sharedAccountCloudStoreByAccountIdentifier;

    dataSource4 = [(PDCloudStoreContainer *)v19 dataSource];
    accountUsersByAccountIdentifier = [dataSource4 accountUsersByAccountIdentifier];
    accountUsersByAccountIdentifier = v19->_accountUsersByAccountIdentifier;
    v19->_accountUsersByAccountIdentifier = accountUsersByAccountIdentifier;

    v36 = PKCurrentCloudStoreApplePayContainerName();
    v37 = [[CKContainerID alloc] initWithContainerIdentifier:v36 environment:PKApplePayContainerEnvironment()];
    v38 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = CKContainerEnvironmentString();
      *buf = 138412546;
      v62 = v36;
      v63 = 2112;
      v64 = v39;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Creating container %@ in environment %@", buf, 0x16u);
    }

    v40 = objc_alloc_init(CKContainerOptions);
    [v40 setApplicationBundleIdentifierOverride:PKPassdBundleIdentifier];
    v41 = [[CKContainer alloc] initWithContainerID:v37 options:v40];
    v42 = PKCloudStoreApplePayPrototypeContainerName;
    v43 = v36;
    v44 = v42;
    v45 = v44;
    if (v43 == v44)
    {
    }

    else
    {
      if (!v43 || !v44)
      {

        options = v43;
        goto LABEL_12;
      }

      v46 = [v43 isEqualToString:v44];

      if (!v46)
      {
        goto LABEL_13;
      }
    }

    options = [v41 options];
    [options setUseZoneWidePCS:1];
LABEL_12:

LABEL_13:
    v48 = [[PDCloudStoreContainerManager alloc] initWithContainer:v41 validScopes:&off_1008A4668 cacheDataSource:sourceCopy databaseContainerDataSource:v19];
    [(PDCloudStoreContainer *)v19 setContainerManager:v48];
    v49 = +[NSDistributedNotificationCenter defaultCenter];
    [v49 addObserver:v19 selector:"_handlePeerPaymentAccountChanged:" name:PDPeerPaymentServiceAccountChangedDistributedNotification object:0];

    v50 = +[NSDistributedNotificationCenter defaultCenter];
    [v50 addObserver:v19 selector:"_handleFamilyUpdateNotification:" name:FAFamilyUpdateNotification object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v19, sub_1000A1280, @"INFamilyDidChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    workQueue = [(PDCloudStoreContainer *)v19 workQueue];
    PDScheduledActivityClientRegister();
  }

  return v19;
}

- (void)dealloc
{
  [(PDAccountManager *)self->_accountManager unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = PDApplePayCloudStoreContainer;
  [(PDApplePayCloudStoreContainer *)&v3 dealloc];
}

- (void)invalidateCloudStoreIfPossibleWithOperationGroupNameSuffix:(id)suffix clearCache:(BOOL)cache
{
  suffixCopy = suffix;
  workQueue = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A140C;
  block[3] = &unk_10083E328;
  block[4] = self;
  v10 = suffixCopy;
  cacheCopy = cache;
  v8 = suffixCopy;
  dispatch_async(workQueue, block);
}

- (BOOL)_queue_canInitializeContainer
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    containerManager = [(PDCloudStoreContainer *)self containerManager];
    containerName = [containerManager containerName];
    *buf = 138412290;
    v29 = containerName;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Checking if the %@ cloud store can be initalized.", buf, 0xCu);
  }

  if (PKIsMac())
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device is a Mac, no restrictions when registering for the cloud store", buf, 2u);
    }

    v6 = 1;
    sharedWebService = v3;
  }

  else
  {
    IsAvailable = PKSecureElementIsAvailable();
    if (PKIsPhone() & 1) != 0 || (PKIsWatch() & 1) != 0 || (PKIsPad())
    {
      v9 = 1;
    }

    else
    {
      v9 = PKIsVision();
    }

    selfCopy = self;
    sharedWebService = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServiceCoordinator sharedWebService];
    v10 = [sharedWebService _needsRegistrationShouldCheckSecureElementOwnership:v9];
    _canRegisterForPeerPayment = [sharedWebService _canRegisterForPeerPayment];
    v26 = IsAvailable;
    if (IsAvailable)
    {
      v12 = v9 & (v10 ^ 1);
    }

    else
    {
      v12 = 0;
    }

    _supportsAccounts = [sharedWebService _supportsAccounts];
    v14 = _supportsAccounts;
    v15 = _canRegisterForPeerPayment | _supportsAccounts;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      if (v14)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      *buf = 138543362;
      v29 = v16;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PDApplePayCloudStoreContainer: Supports accounts %{public}@", buf, 0xCu);
    }

    v6 = v12 & v15;

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      if (v26)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      if (v9)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      *buf = 138544130;
      v29 = v17;
      if (v10)
      {
        v19 = @"NO";
      }

      else
      {
        v19 = @"YES";
      }

      v30 = 2114;
      v31 = v18;
      if (_canRegisterForPeerPayment)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      v32 = 2114;
      v33 = v19;
      v34 = 2114;
      v35 = v20;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Secure element available: %{public}@, is on supported device: %{public}@, is broker registered: %{public}@, can register for peer payment: %{public}@", buf, 0x2Au);
    }

    self = selfCopy;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    containerManager2 = [(PDCloudStoreContainer *)self containerManager];
    containerName2 = [containerManager2 containerName];
    v23 = containerName2;
    if (v6)
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    *buf = 138412546;
    v29 = containerName2;
    v30 = 2114;
    v31 = v24;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Can initalize the %@ cloud store: %{public}@", buf, 0x16u);
  }

  return v6;
}

- (BOOL)_queue_canInvalidateContainer
{
  v3 = [(NSSet *)self->_accounts count];
  associatedAccountInformation = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedAccountInformation];
  associatedAccounts = [associatedAccountInformation associatedAccounts];
  v6 = [associatedAccounts count];

  associatedPassUniqueID = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassUniqueID];
  if (associatedPassUniqueID)
  {
    v8 = v3 | v6;
    dataSource = [(PDCloudStoreContainer *)self dataSource];
    v10 = [dataSource passExistsWithUniqueID:associatedPassUniqueID];

    v11 = v8 != 0;
    v12 = v10 ^ 1;
  }

  else
  {
    v11 = (v3 | v6) != 0;
    v12 = 1;
  }

  v13 = v12 & !v11;
  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    containerManager = [(PDCloudStoreContainer *)self containerManager];
    containerName = [containerManager containerName];
    v17 = containerName;
    v18 = @"NO";
    if (v13)
    {
      v18 = @"YES";
    }

    v20 = 138412546;
    v21 = containerName;
    v22 = 2112;
    v23 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Can invalidate cloud store container %@: %@", &v20, 0x16u);
  }

  return v13;
}

- (id)cloudStoreSpecificKeysForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = 0;
    goto LABEL_16;
  }

  v5 = itemCopy;
  transactionSourceIdentifier = [v5 transactionSourceIdentifier];
  serviceIdentifier = [v5 serviceIdentifier];
  accountIdentifier = [v5 accountIdentifier];
  altDSID = [v5 altDSID];
  dataSource = [(PDCloudStoreContainer *)self dataSource];
  v11 = [dataSource transactionSourceTypeForTransactionSourceIdentifier:transactionSourceIdentifier];

  dataSource2 = [(PDCloudStoreContainer *)self dataSource];
  v13 = [dataSource2 passUniqueIdentifierForTransactionWithServiceIdentifier:serviceIdentifier transactionSourceIdentifier:transactionSourceIdentifier];

  if (!v13)
  {
    if (v11 >= 2)
    {
      if (v11 == 2)
      {
        dataSource3 = [(PDCloudStoreContainer *)self dataSource];
        v17 = [dataSource3 accountUserWithAltDSID:altDSID accountIdentifier:accountIdentifier];

        if (!v17 || [v17 accessLevel] != 1)
        {
          v13 = 0;
          goto LABEL_14;
        }

        dataSource4 = [(PDCloudStoreContainer *)self dataSource];
        v19 = [dataSource4 passUniqueIdentifierWithAssociatedAccountIdentifier:accountIdentifier];
LABEL_12:
        v13 = v19;

LABEL_14:
        goto LABEL_15;
      }

      v13 = 0;
    }

    else
    {
      dataSource5 = [(PDCloudStoreContainer *)self dataSource];
      accountIdentifier2 = [v5 accountIdentifier];
      v13 = [dataSource5 passUniqueIdentifierForTransactionWithServiceIdentifier:serviceIdentifier accountIdentifier:accountIdentifier2 accountType:{objc_msgSend(v5, "accountType")}];

      if (!v13)
      {
        dataSource6 = [(PDCloudStoreContainer *)self dataSource];
        v17 = [dataSource6 broadwayOrSurfTransactionSourceIdentifierForAmbiguousServiceIdentifier:serviceIdentifier transactionAccountIdentifier:0 transactionAccountType:0 transactionAltDSID:0];

        dataSource4 = [(PDCloudStoreContainer *)self dataSource];
        v19 = [dataSource4 passUniqueIdentifierForTransactionSourceIdentifier:v17];
        goto LABEL_12;
      }
    }
  }

LABEL_15:
  dataSource7 = [(PDCloudStoreContainer *)self dataSource];
  v23 = [dataSource7 passWithUniqueIdentifier:v13];

  v20 = [(PDApplePayCloudStoreContainer *)self _cloudStoreSpecificKeysForItem:v5 paymentPass:v23];

LABEL_16:

  return v20;
}

- (void)_queue_cloudStoreAccountChanged:(id)changed
{
  changedCopy = changed;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received CKAccountChangedNotification in PDApplePayCloudStoreContainer. Fetching latest account information.", buf, 2u);
  }

  if ([(PDCloudStoreContainer *)self cloudContainerSetupInProgress]|| [(PDCloudStoreContainer *)self accountChangedNotificationReceived])
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "A cloud store initialization is already in progess. This notification will be processed when initialization is done.", buf, 2u);
    }

    [(PDCloudStoreContainer *)self setAccountChangedNotificationReceived:1];
  }

  else
  {
    [(PDCloudStoreContainer *)self setAccountChangedNotificationReceived:1];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000A1D68;
    v6[3] = &unk_100840CC0;
    v6[4] = self;
    [(PDCloudStoreContainer *)self _queue_cloudStoreAccountInformationWithCompletion:v6];
  }
}

- (void)_queue_setContainerState:(unint64_t)state operationGroupNameSuffix:(id)suffix retryCount:(unint64_t)count completion:(id)completion
{
  suffixCopy = suffix;
  completionCopy = completion;
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = PDCloudStoreContainerStateToString(state);
    *buf = 138543874;
    v79 = v13;
    v80 = 2114;
    v81 = suffixCopy;
    v82 = 2048;
    countCopy = count;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PDApplePayCloudStoreContainer: setContainerState called with state %{public}@, operationGroupNameSuffix: %{public}@, and retry count %lu", buf, 0x20u);
  }

  if ([(PDCloudStoreContainer *)self _queue_ensureContainerState:state])
  {
    if (state > 3)
    {
      if (state == 4)
      {
        v64[0] = _NSConcreteStackBlock;
        v64[1] = 3221225472;
        v64[2] = sub_1000A29B0;
        v64[3] = &unk_100841B78;
        v64[4] = self;
        v65 = suffixCopy;
        countCopy2 = count;
        v66 = completionCopy;
        [(PDCloudStoreContainer *)self _queue_cloudStoreAccountInformationWithCompletion:v64];

        v47 = v65;
LABEL_37:

        goto LABEL_38;
      }

      if (state == 15)
      {
        [(PDApplePayCloudStoreContainer *)self _updateFetchTaskScheduledActivityIfNeccessary];
        [(PDApplePayCloudStoreContainer *)self _updateUnarchivedTransactionsScheduledActivityIfNeccessary];
        v62.receiver = self;
        v62.super_class = PDApplePayCloudStoreContainer;
        [(PDCloudStoreContainer *)&v62 _queue_setContainerState:15 operationGroupNameSuffix:suffixCopy retryCount:count completion:completionCopy];
        goto LABEL_38;
      }
    }

    else
    {
      if (state - 2 < 2)
      {
        operationError = [(PDCloudStoreContainer *)self operationError];
        v15 = operationError;
        if (operationError)
        {
          v16 = operationError;
        }

        else
        {
          v73 = NSLocalizedDescriptionKey;
          v74 = @"Detached from container while running operation";
          v48 = [NSDictionary dictionaryWithObjects:&v74 forKeys:&v73 count:1];
          v16 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5001 userInfo:v48];
        }

        [(PDApplePayCloudStoreContainer *)self _queue_markAllRunningFetchTasksWithError:v16];
        os_unfair_lock_lock(&self->_fetchTasksLock);
        [(NSMutableDictionary *)self->_fetchTasks removeAllObjects];
        os_unfair_lock_unlock(&self->_fetchTasksLock);
        peerPaymentAccount = self->_peerPaymentAccount;
        self->_peerPaymentAccount = 0;

        accounts = self->_accounts;
        self->_accounts = 0;

        sharedAccountCloudStoreByAccountIdentifier = self->_sharedAccountCloudStoreByAccountIdentifier;
        self->_sharedAccountCloudStoreByAccountIdentifier = 0;

        accountUsersByAccountIdentifier = self->_accountUsersByAccountIdentifier;
        self->_accountUsersByAccountIdentifier = 0;

        v63.receiver = self;
        v63.super_class = PDApplePayCloudStoreContainer;
        [(PDCloudStoreContainer *)&v63 _queue_setContainerState:state operationGroupNameSuffix:suffixCopy retryCount:count completion:completionCopy];

        goto LABEL_38;
      }

      if (state == 1)
      {
        oslog = v12;
        countCopy3 = count;
        v59 = completionCopy;
        dataSource = [(PDCloudStoreContainer *)self dataSource];
        peerPaymentAccount = [dataSource peerPaymentAccount];
        v20 = self->_peerPaymentAccount;
        self->_peerPaymentAccount = peerPaymentAccount;

        dataSource2 = [(PDCloudStoreContainer *)self dataSource];
        accounts = [dataSource2 accounts];
        v23 = self->_accounts;
        self->_accounts = accounts;

        dataSource3 = [(PDCloudStoreContainer *)self dataSource];
        sharedAccountCloudStoreByAccountIdentifier = [dataSource3 sharedAccountCloudStoreByAccountIdentifier];
        v26 = self->_sharedAccountCloudStoreByAccountIdentifier;
        self->_sharedAccountCloudStoreByAccountIdentifier = sharedAccountCloudStoreByAccountIdentifier;

        dataSource4 = [(PDCloudStoreContainer *)self dataSource];
        accountUsersByAccountIdentifier = [dataSource4 accountUsersByAccountIdentifier];
        v29 = self->_accountUsersByAccountIdentifier;
        self->_accountUsersByAccountIdentifier = accountUsersByAccountIdentifier;

        dataSource5 = [(PDCloudStoreContainer *)self dataSource];
        allRecordFetchTasks = [dataSource5 allRecordFetchTasks];

        selfCopy = self;
        os_unfair_lock_lock(&self->_fetchTasksLock);
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        obj = allRecordFetchTasks;
        v33 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v69 objects:v77 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v70;
          do
          {
            for (i = 0; i != v34; i = i + 1)
            {
              if (*v70 != v35)
              {
                objc_enumerationMutation(obj);
              }

              v37 = *(*(&v69 + 1) + 8 * i);
              v38 = objc_autoreleasePoolPush();
              identifier = [v37 identifier];
              if ([v37 type])
              {
                v40 = identifier == 0;
              }

              else
              {
                v40 = 1;
              }

              if (!v40)
              {
                v41 = objc_alloc_init(PDApplePayCloudStoreRecordFetchOperation);
                [(PDApplePayCloudStoreRecordFetchOperation *)v41 updateTask:v37];
                fetchTasks = selfCopy->_fetchTasks;
                identifier2 = [(PDApplePayCloudStoreRecordFetchOperation *)v41 identifier];
                [(NSMutableDictionary *)fetchTasks safelySetObject:v41 forKey:identifier2];
              }

              objc_autoreleasePoolPop(v38);
            }

            v34 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v69 objects:v77 count:16];
          }

          while (v34);
        }

        os_unfair_lock_unlock(&selfCopy->_fetchTasksLock);
        operationError2 = [(PDCloudStoreContainer *)selfCopy operationError];
        v45 = operationError2;
        if (operationError2)
        {
          v46 = operationError2;
        }

        else
        {
          v75 = NSLocalizedDescriptionKey;
          v76 = @"Attaching to container while a while running operation";
          v53 = [NSDictionary dictionaryWithObjects:&v76 forKeys:&v75 count:1];
          v46 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5001 userInfo:v53];
        }

        completionCopy = v59;

        [(PDApplePayCloudStoreContainer *)selfCopy _queue_markAllRunningFetchTasksWithError:v46];
        os_unfair_lock_lock(&selfCopy->_fetchTasksLock);
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          containerManager = [(PDCloudStoreContainer *)selfCopy containerManager];
          containerName = [containerManager containerName];
          v56 = selfCopy->_fetchTasks;
          *buf = 138412546;
          v79 = containerName;
          v80 = 2112;
          v81 = v56;
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Previous fetch tasks for container %@ are %@.", buf, 0x16u);
        }

        os_unfair_lock_unlock(&selfCopy->_fetchTasksLock);
        v68.receiver = selfCopy;
        v68.super_class = PDApplePayCloudStoreContainer;
        [(PDCloudStoreContainer *)&v68 _queue_setContainerState:1 operationGroupNameSuffix:suffixCopy retryCount:countCopy3 completion:v59];

        v47 = obj;
        goto LABEL_37;
      }
    }

    v61.receiver = self;
    v61.super_class = PDApplePayCloudStoreContainer;
    [(PDCloudStoreContainer *)&v61 _queue_setContainerState:state operationGroupNameSuffix:suffixCopy retryCount:count completion:completionCopy];
    goto LABEL_38;
  }

  if (completionCopy)
  {
    v17 = [(PDCloudStoreContainer *)self errorWithCode:-4006 description:@"Invalid cloud store state"];
    (*(completionCopy + 2))(completionCopy, 0, v17);
  }

LABEL_38:
}

- (void)_queue_markAllRunningFetchTasksWithError:(id)error
{
  errorCopy = error;
  os_unfair_lock_lock(&self->_fetchTasksLock);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_fetchTasks;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    v19 = errorCopy;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [(NSMutableDictionary *)self->_fetchTasks objectForKeyedSubscript:v9];
        task = [v11 task];
        status = [task status];
        if (status == 4 || status == 1)
        {
          if (errorCopy)
          {
            v15 = errorCopy;
          }

          else
          {
            v24 = NSLocalizedDescriptionKey;
            v25 = @"Unknown error occuring while task was running";
            v16 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
            v15 = [NSError errorWithDomain:PKPassKitErrorDomain code:-1 userInfo:v16];
          }

          [task completeTaskWithError:v15];
          dataSource = [(PDCloudStoreContainer *)self dataSource];
          [dataSource updateRecordFetchTask:task];

          errorCopy = v19;
        }

        objc_autoreleasePoolPop(v10);
      }

      v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_fetchTasksLock);
}

- (void)coalesceRequest:(id)request withNewRequest:(id)newRequest
{
  requestCopy = request;
  newRequestCopy = newRequest;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PDApplePayCloudStoreContainer *)self coalesceApplePayRequest:requestCopy withNewApplePayRequest:newRequestCopy];
    }
  }
}

- (void)coalesceApplePayRequest:(id)request withNewApplePayRequest:(id)payRequest
{
  requestCopy = request;
  payRequestCopy = payRequest;
  transactionSourceIdentifiers = [requestCopy transactionSourceIdentifiers];
  transactionSourceIdentifiers2 = [payRequestCopy transactionSourceIdentifiers];
  if ([transactionSourceIdentifiers count] || objc_msgSend(transactionSourceIdentifiers2, "count"))
  {
    if (transactionSourceIdentifiers)
    {
      v8 = [transactionSourceIdentifiers setByAddingObjectsFromSet:transactionSourceIdentifiers2];
      [requestCopy setTransactionSourceIdentifiers:v8];
    }

    else
    {
      [requestCopy setTransactionSourceIdentifiers:transactionSourceIdentifiers2];
    }
  }

  ignoreRecordsBeforeDate = [requestCopy ignoreRecordsBeforeDate];
  ignoreRecordsBeforeDate2 = [payRequestCopy ignoreRecordsBeforeDate];
  v11 = PKEqualObjects();

  if ((v11 & 1) == 0)
  {
    [requestCopy setIgnoreRecordsBeforeDate:0];
  }

  ignoreRecordsAfterDate = [requestCopy ignoreRecordsAfterDate];
  ignoreRecordsAfterDate2 = [payRequestCopy ignoreRecordsAfterDate];
  v14 = PKEqualObjects();

  if ((v14 & 1) == 0)
  {
    [requestCopy setIgnoreRecordsAfterDate:0];
  }
}

- (BOOL)shouldContinueWithRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  v5 = requestCopy;
  transactionSourceIdentifiers = [v5 transactionSourceIdentifiers];
  v7 = [transactionSourceIdentifiers count];

  if (!v7)
  {

LABEL_13:
    v15 = 1;
    goto LABEL_14;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  transactionSourceIdentifiers2 = [v5 transactionSourceIdentifiers];
  v9 = [transactionSourceIdentifiers2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v18 != v11)
      {
        objc_enumerationMutation(transactionSourceIdentifiers2);
      }

      v13 = *(*(&v17 + 1) + 8 * v12);
      dataSource = [(PDCloudStoreContainer *)self dataSource];
      v15 = [dataSource transactionSourceExistsWithIdentifier:v13];

      if (v15)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [transactionSourceIdentifiers2 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  else
  {

    v15 = 0;
  }

LABEL_14:

  return v15;
}

- (void)_deleteLocalDataFromDeletedRecordsByDatabaseIdentifier:(id)identifier
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000A32F4;
  v3[3] = &unk_10083D238;
  v3[4] = self;
  [identifier enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)processFetchedCloudStoreDataWithModifiedRecordsByDatabaseIdentifier:(id)identifier deletedRecordsByDatabaseIdentifier:(id)databaseIdentifier carriedOverRecordsByDatabaseIdentifier:(id)byDatabaseIdentifier conflictingRecordsByDatabaseIdentifier:(id)recordsByDatabaseIdentifier request:(id)request completion:(id)completion
{
  identifierCopy = identifier;
  databaseIdentifierCopy = databaseIdentifier;
  byDatabaseIdentifierCopy = byDatabaseIdentifier;
  recordsByDatabaseIdentifierCopy = recordsByDatabaseIdentifier;
  requestCopy = request;
  completionCopy = completion;
  v17 = [(PDCloudStoreContainer *)self reportContainerChangeIntervalBeginEventWithType:33 stateName:0 objectNames:0 operationGroupName:0 operationGroupNameSuffix:0];
  [(PDApplePayCloudStoreContainer *)self _deleteLocalDataFromDeletedRecordsByDatabaseIdentifier:databaseIdentifierCopy];
  if (([requestCopy returnRecords] & 1) != 0 || objc_msgSend(requestCopy, "formReport"))
  {
    v65 = objc_alloc_init(PKCloudRecordArray);
  }

  else
  {
    v65 = 0;
  }

  if ([requestCopy returnRecords])
  {
    v64 = objc_alloc_init(PKCloudRecordArray);
  }

  else
  {
    v64 = 0;
  }

  v87[0] = 0;
  v87[1] = v87;
  v87[2] = 0x3032000000;
  v87[3] = sub_100005A60;
  v87[4] = sub_10000B13C;
  v88 = 0;
  groupName = [requestCopy groupName];
  groupNameSuffix = [requestCopy groupNameSuffix];
  v20 = PKCloudStoreOperationGroupInitialDownload;
  v21 = groupName;
  v22 = v20;
  v23 = v22;
  v62 = databaseIdentifierCopy;
  v63 = v17;
  if (v21 == v22)
  {
    goto LABEL_25;
  }

  if (v21 && v22)
  {
    v24 = [v21 isEqualToString:v22];

    if (v24)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v25 = PKCloudStoreOperationGroupInitialUpload;
  v26 = v21;
  v27 = v25;
  v23 = v27;
  if (v26 == v27)
  {
    goto LABEL_25;
  }

  if (v21 && v27)
  {
    v28 = [v26 isEqualToString:v27];

    if (v28)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v29 = PKCloudStoreOperationGroupInitialSetup;
  v30 = v26;
  v31 = v29;
  v23 = v31;
  if (v30 == v31)
  {
LABEL_25:
  }

  else
  {
    if (!v21 || !v31)
    {

LABEL_52:
      v34 = 0;
      v33 = 0;
      goto LABEL_27;
    }

    v32 = [v30 isEqualToString:v31];

    if ((v32 & 1) == 0)
    {
      goto LABEL_52;
    }
  }

LABEL_26:
  v33 = 4;
  v34 = 1;
LABEL_27:
  v61 = completionCopy;
  v35 = ([requestCopy useLastChangeToken] & 1) == 0 && (!objc_msgSend(requestCopy, "requestType") || objc_msgSend(requestCopy, "requestType") == 2 || objc_msgSend(requestCopy, "requestType") == 3);
  v36 = PKCloudStoreOperationGroupSuffixFetchTaskBackgroundActivityRecoveringFromPreviousError;
  v37 = groupNameSuffix;
  v38 = v36;
  v39 = v38;
  if (v37 == v38)
  {
    goto LABEL_43;
  }

  if (v37 && v38)
  {
    v40 = [v37 isEqualToString:v38];

    if (v40)
    {
      v41 = 1;
      goto LABEL_45;
    }
  }

  else
  {
  }

  v42 = PKCloudStoreOperationGroupSuffixViewedTransactionsRecoveringFromFullFetchError;
  v43 = v37;
  v44 = v42;
  v39 = v44;
  if (v43 == v44)
  {
LABEL_43:
    v41 = 1;
  }

  else
  {
    v41 = 0;
    if (v37 && v44)
    {
      v41 = [v43 isEqualToString:v44];
    }
  }

LABEL_45:
  v45 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v46 = v35 | v41;
  if ((v35 | v41))
  {
    v47 = v33 | 0x20;
  }

  else
  {
    v47 = v33;
  }

  if (v46)
  {
    v34 |= 2uLL;
  }

  v79[0] = _NSConcreteStackBlock;
  v79[1] = 3221225472;
  v79[2] = sub_1000A4458;
  v79[3] = &unk_100841D98;
  v79[4] = self;
  v48 = requestCopy;
  v80 = v48;
  v49 = v45;
  v81 = v49;
  v50 = v65;
  v82 = v50;
  v85 = v47;
  v51 = byDatabaseIdentifierCopy;
  v86 = v34;
  v83 = v51;
  v84 = v87;
  [identifierCopy enumerateKeysAndObjectsUsingBlock:v79];
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_1000A699C;
  v75[3] = &unk_100841DC0;
  v75[4] = self;
  v52 = v48;
  v76 = v52;
  v53 = v49;
  v77 = v53;
  v54 = v64;
  v78 = v54;
  [recordsByDatabaseIdentifierCopy enumerateKeysAndObjectsUsingBlock:v75];
  v55 = +[NSNull null];
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_1000A6C0C;
  v69[3] = &unk_100841DE8;
  v69[4] = self;
  v56 = v63;
  v70 = v56;
  v57 = v61;
  v73 = v57;
  v58 = v50;
  v71 = v58;
  v74 = v87;
  v59 = v54;
  v72 = v59;
  v60 = [v53 evaluateWithInput:v55 completion:v69];

  _Block_object_dispose(v87, 8);
}

- (void)_queue_processResultWithError:(id)error nextExpectedState:(unint64_t)state operationGroupNameSuffix:(id)suffix retryCount:(unint64_t)count shouldRetry:(BOOL)retry completion:(id)completion
{
  retryCopy = retry;
  errorCopy = error;
  suffixCopy = suffix;
  completionCopy = completion;
  v17 = [[PKCloudStoreError alloc] initWithError:errorCopy];
  if ([v17 isManateeNotAvailableError])
  {
    v18 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received manatee is not available error. This is most likely do to the fact HSA2 is not enabled. Detaching from container.", buf, 2u);
    }

    PKAnalyticsSendEvent();
    [(PDCloudStoreContainer *)self setNextExpectedState:3];
    [(PDCloudStoreContainer *)self setOperationError:errorCopy];
    [(PDApplePayCloudStoreContainer *)self _queue_setContainerState:3 operationGroupNameSuffix:suffixCopy retryCount:count completion:completionCopy];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = PDApplePayCloudStoreContainer;
    [(PDCloudStoreContainer *)&v19 _queue_processResultWithError:errorCopy nextExpectedState:state operationGroupNameSuffix:suffixCopy retryCount:count shouldRetry:retryCopy completion:completionCopy];
  }
}

- (id)recordTypesForCloudStoreItemType:(unint64_t)type
{
  if (type > 8)
  {
    if (type > 10)
    {
      if (type == 11)
      {
        v11 = PKCloudMessageRecordType;
        v5 = &v11;
      }

      else
      {
        if (type != 12)
        {
          goto LABEL_20;
        }

        v10 = PKCloudPendingRequestRecordType;
        v5 = &v10;
      }
    }

    else if (type == 9)
    {
      v13 = PKCloudRecurringPaymentMemoRecordType;
      v5 = &v13;
    }

    else
    {
      v12 = PKCloudCounterpartImageRecordType;
      v5 = &v12;
    }

    goto LABEL_18;
  }

  if (type > 6)
  {
    if (type == 7)
    {
      v15 = PKCloudAccountRecordType;
      v5 = &v15;
    }

    else
    {
      v14 = PKCloudShareCreationLockRecordType;
      v5 = &v14;
    }

LABEL_18:
    v6 = 1;
LABEL_19:
    v7 = [NSArray arrayWithObjects:v5 count:v6];
    if (v7)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (type == 1)
  {
    v17[0] = PKCloudTransactionRecordType;
    v17[1] = PKCloudTransactionDeviceDataRecordType;
    v5 = v17;
    v6 = 2;
    goto LABEL_19;
  }

  if (type == 5)
  {
    v16[0] = PKCloudAccountEventRecordType;
    v16[1] = PKCloudAccountRewardsRecordType;
    v16[2] = PKCloudCreditAccountStatementRecordType;
    v16[3] = PKCloudAccountServicingRecordType;
    v16[4] = PKCloudAccountPaymentRecordType;
    v16[5] = PKCloudAccountPaymentReminderRecordType;
    v16[6] = PKCloudAccountCreditTermsUpdateRecordType;
    v16[7] = PKCloudAccountPhysicalCardStatusUpdateRecordType;
    v16[8] = PKCloudAccountPhysicalCardShippingUpdateRecordType;
    v16[9] = PKCloudAccountVirtualCardStatusUpdateRecordType;
    v16[10] = PKCloudAccountBillPaymentSelectedSuggestedAmountRecordType;
    v16[11] = PKCloudAccountUserInfoRecordType;
    v16[12] = PKCloudAccountAssistanceProgramRecordType;
    v16[13] = PKCloudAccountTransferRecordType;
    v16[14] = PKCloudAccountHoldRecordType;
    v5 = v16;
    v6 = 15;
    goto LABEL_19;
  }

LABEL_20:
  v9.receiver = self;
  v9.super_class = PDApplePayCloudStoreContainer;
  v7 = [(PDCloudStoreContainer *)&v9 recordTypesForCloudStoreItemType:type];
LABEL_21:

  return v7;
}

- (id)primaryRecordTypesForCloudStoreItemType:(unint64_t)type
{
  if (type > 8)
  {
    if (type <= 10)
    {
      if (type == 9)
      {
        v13 = PKCloudRecurringPaymentMemoRecordType;
        v5 = &v13;
      }

      else
      {
        v12 = PKCloudCounterpartImageRecordType;
        v5 = &v12;
      }

      goto LABEL_18;
    }

    if (type == 11)
    {
      v11 = PKCloudMessageRecordType;
      v5 = &v11;
      goto LABEL_18;
    }

    if (type == 12)
    {
      v10 = PKCloudPendingRequestRecordType;
      v5 = &v10;
      goto LABEL_18;
    }
  }

  else
  {
    if (type > 6)
    {
      if (type == 7)
      {
        v15 = PKCloudAccountRecordType;
        v5 = &v15;
      }

      else
      {
        v14 = PKCloudShareCreationLockRecordType;
        v5 = &v14;
      }

      goto LABEL_18;
    }

    if (type == 1)
    {
      v17[0] = PKCloudTransactionRecordType;
      v17[1] = PKCloudTransactionDeviceDataRecordType;
      v5 = v17;
      v6 = 2;
      goto LABEL_19;
    }

    if (type == 5)
    {
      v16 = PKCloudAccountEventRecordType;
      v5 = &v16;
LABEL_18:
      v6 = 1;
LABEL_19:
      v7 = [NSArray arrayWithObjects:v5 count:v6];
      if (v7)
      {
        goto LABEL_21;
      }
    }
  }

  v9.receiver = self;
  v9.super_class = PDApplePayCloudStoreContainer;
  v7 = [(PDCloudStoreContainer *)&v9 primaryRecordTypesForCloudStoreItemType:type];
LABEL_21:

  return v7;
}

- (id)identifierFromRecord:(id)record
{
  recordCopy = record;
  recordType = [recordCopy recordType];
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];

  if ([(PDApplePayCloudStoreContainer *)self _isAccountEventFromRecordType:recordType])
  {
    goto LABEL_2;
  }

  if ([(PDApplePayCloudStoreContainer *)self _isAccountEventAssociatedObjectFromRecordType:recordType])
  {
    recordID4 = [recordCopy pk_referenceForKey:PKAccountEventReferenceFromAssociatedObject];
    recordID2 = [recordID4 recordID];
    recordName2 = [recordID2 recordName];
    v11 = [(PDApplePayCloudStoreContainer *)self _stripToFirstDash:recordName2];

LABEL_20:
    recordName = recordName2;
LABEL_21:

    recordName = v11;
    if (v11)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if ([recordType isEqualToString:PKCloudTransactionDeviceDataRecordType])
  {
    recordID4 = [recordCopy pk_referenceForKey:PKPaymentTransactionReferenceFromDeviceData];
    recordID3 = [recordID4 recordID];
    recordID2 = [recordID3 recordName];

    if (recordID2)
    {
      v14 = recordID2;
      v15 = recordName;
      v16 = v15;
      if (v14 != v15)
      {
        if (v15)
        {
          v17 = [v14 isEqualToString:v15];

          if (v17)
          {
            goto LABEL_19;
          }
        }

        else
        {
        }

        if ([v16 containsString:v14])
        {
          v10 = v14;
          recordID2 = v10;
          recordName = v16;
          goto LABEL_3;
        }

        goto LABEL_19;
      }
    }

LABEL_19:
    recordName2 = [recordCopy recordID];
    v12RecordName = [recordName2 recordName];
    v11 = [(PDApplePayCloudStoreContainer *)self _stripToFirstDash:v12RecordName];

    goto LABEL_20;
  }

  if ([recordType isEqualToString:PKCloudShareCreationLockRecordType])
  {
LABEL_2:
    recordID4 = [recordCopy recordID];
    recordID2 = [recordID4 recordName];
    v10 = [(PDApplePayCloudStoreContainer *)self _stripToFirstDash:recordID2];
LABEL_3:
    v11 = v10;
    goto LABEL_21;
  }

  if (recordName)
  {
    goto LABEL_25;
  }

LABEL_22:
  v19 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    recordID5 = [recordCopy recordID];
    recordName3 = [recordID5 recordName];
    recordType2 = [recordCopy recordType];
    v24 = 138543618;
    v25 = recordName3;
    v26 = 2114;
    v27 = recordType2;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Could not identify %{public}@, type: %{public}@", &v24, 0x16u);
  }

LABEL_25:

  return recordName;
}

- (id)recordTypeFromRecordName:(id)name
{
  nameCopy = name;
  v52.receiver = self;
  v52.super_class = PDApplePayCloudStoreContainer;
  v5 = [(PDCloudStoreContainer *)&v52 recordTypeFromRecordName:nameCopy];
  v6 = v5;
  if (!v5)
  {
    v7 = +[PKPaymentTransaction recordNamePrefix];
    v8 = [nameCopy hasPrefix:v7];

    if (v8)
    {
      v9 = &PKCloudTransactionDeviceDataRecordType;
    }

    else
    {
      v10 = +[PKAccountEvent recordNamePrefix];
      v11 = [nameCopy hasPrefix:v10];

      if (v11)
      {
        v9 = &PKCloudAccountEventRecordType;
      }

      else
      {
        v12 = +[PKAccountRewards recordNamePrefix];
        v13 = [nameCopy hasPrefix:v12];

        if (v13)
        {
          v9 = &PKCloudAccountRewardsRecordType;
        }

        else
        {
          v14 = +[PKCreditAccountStatement recordNamePrefix];
          v15 = [nameCopy hasPrefix:v14];

          if (v15)
          {
            v9 = &PKCloudCreditAccountStatementRecordType;
          }

          else
          {
            v16 = +[PKAccountServicingEvent recordNamePrefix];
            v17 = [nameCopy hasPrefix:v16];

            if (v17)
            {
              v9 = &PKCloudAccountServicingRecordType;
            }

            else
            {
              v18 = +[PKAccountPayment recordNamePrefix];
              v19 = [nameCopy hasPrefix:v18];

              if (v19)
              {
                v9 = &PKCloudAccountPaymentRecordType;
              }

              else
              {
                v20 = +[PKAccountTransfer recordNamePrefix];
                v21 = [nameCopy hasPrefix:v20];

                if (v21)
                {
                  v9 = &PKCloudAccountTransferRecordType;
                }

                else
                {
                  v22 = +[PKAccountHold recordNamePrefix];
                  v23 = [nameCopy hasPrefix:v22];

                  if (v23)
                  {
                    v9 = &PKCloudAccountHoldRecordType;
                  }

                  else
                  {
                    v24 = +[PKAccountPaymentReminder recordNamePrefix];
                    v25 = [nameCopy hasPrefix:v24];

                    if (v25)
                    {
                      v9 = &PKCloudAccountPaymentReminderRecordType;
                    }

                    else
                    {
                      v26 = +[PKAccountCreditTermsUpdate recordNamePrefix];
                      v27 = [nameCopy hasPrefix:v26];

                      if (v27)
                      {
                        v9 = &PKCloudAccountCreditTermsUpdateRecordType;
                      }

                      else
                      {
                        v28 = +[PKAccountPhysicalCardStatusUpdate recordNamePrefix];
                        v29 = [nameCopy hasPrefix:v28];

                        if (v29)
                        {
                          v9 = &PKCloudAccountPhysicalCardStatusUpdateRecordType;
                        }

                        else
                        {
                          v30 = +[PKAccountPhysicalCardShippingUpdate recordNamePrefix];
                          v31 = [nameCopy hasPrefix:v30];

                          if (v31)
                          {
                            v9 = &PKCloudAccountPhysicalCardShippingUpdateRecordType;
                          }

                          else
                          {
                            v32 = +[PKAccountVirtualCardStatusUpdate recordNamePrefix];
                            v33 = [nameCopy hasPrefix:v32];

                            if (v33)
                            {
                              v9 = &PKCloudAccountVirtualCardStatusUpdateRecordType;
                            }

                            else
                            {
                              v34 = +[PKBillPaymentSelectedSuggestedAmountData recordNamePrefix];
                              v35 = [nameCopy hasPrefix:v34];

                              if (v35)
                              {
                                v9 = &PKCloudAccountBillPaymentSelectedSuggestedAmountRecordType;
                              }

                              else
                              {
                                v36 = +[PKAccountUserInfoUpdate recordNamePrefix];
                                v37 = [nameCopy hasPrefix:v36];

                                if (v37)
                                {
                                  v9 = &PKCloudAccountUserInfoRecordType;
                                }

                                else
                                {
                                  v38 = +[PKAccountAssistanceProgramMessage recordNamePrefix];
                                  v39 = [nameCopy hasPrefix:v38];

                                  if (v39)
                                  {
                                    v9 = &PKCloudAccountAssistanceProgramRecordType;
                                  }

                                  else
                                  {
                                    v40 = +[PKAccount recordNamePrefix];
                                    v41 = [nameCopy hasPrefix:v40];

                                    if (v41)
                                    {
                                      v9 = &PKCloudAccountRecordType;
                                    }

                                    else
                                    {
                                      v42 = +[PKCloudStoreZoneShareLock recordNamePrefix];
                                      v43 = [nameCopy hasPrefix:v42];

                                      if (v43)
                                      {
                                        v9 = &PKCloudShareCreationLockRecordType;
                                      }

                                      else
                                      {
                                        v44 = +[PKPeerPaymentRecurringPayment recordNamePrefix];
                                        v45 = [nameCopy hasPrefix:v44];

                                        if (v45)
                                        {
                                          v9 = &PKCloudRecurringPaymentMemoRecordType;
                                        }

                                        else
                                        {
                                          v46 = +[PKPeerPaymentCounterpartImageData recordNamePrefix];
                                          v47 = [nameCopy hasPrefix:v46];

                                          if (v47)
                                          {
                                            v9 = &PKCloudCounterpartImageRecordType;
                                          }

                                          else
                                          {
                                            v48 = +[PKIssuerMessagingFlag recordNamePrefix];
                                            v49 = [nameCopy hasPrefix:v48];

                                            if (v49)
                                            {
                                              v9 = &PKCloudMessageRecordType;
                                            }

                                            else
                                            {
                                              v9 = &PKCloudTransactionRecordType;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v6 = *v9;
  }

  v50 = v6;

  return v50;
}

- (id)_stripToFirstDash:(id)dash
{
  v3 = [dash copy];
  v4 = [v3 rangeOfString:@"-"];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [v3 stringByReplacingCharactersInRange:0 withString:{v4 + 1, &stru_10086D930}];

    v3 = v5;
  }

  return v3;
}

- (void)_queue_cloudStoreZoneInvitationDataForInvitation:(id)invitation toRecipient:(id)recipient completion:(id)completion
{
  invitationCopy = invitation;
  recipientCopy = recipient;
  completionCopy = completion;
  if (completionCopy)
  {
    zoneName = [invitationCopy zoneName];
    v34[3] = 0;
    v35 = 0;
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x2020000000;
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x3032000000;
    v32[3] = sub_100005A60;
    v32[4] = sub_10000B13C;
    v33 = 0;
    v30 = 0;
    v31 = 0;
    [PKCloudStoreZone zoneValueForZoneName:zoneName outZoneType:&v35 outAccountIdentifier:&v31 altDSID:&v30];
    v12 = v31;
    v17 = v30;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000A7E10;
    v24[3] = &unk_100841E60;
    v29 = v35;
    v24[4] = self;
    v27 = v32;
    v13 = recipientCopy;
    v25 = v13;
    v28 = v34;
    v14 = v12;
    v26 = v14;
    v15 = objc_retainBlock(v24);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000A8534;
    v18[3] = &unk_100841EB0;
    v21 = completionCopy;
    v22 = v32;
    v18[4] = self;
    v19 = v13;
    v16 = zoneName;
    v20 = v16;
    v23 = v34;
    (v15[2])(v15, v18);

    _Block_object_dispose(v32, 8);
    _Block_object_dispose(v34, 8);
  }
}

- (void)_queue_aliasesForRecipientHandle:(id)handle zoneName:(id)name completion:(id)completion
{
  handleCopy = handle;
  nameCopy = name;
  completionCopy = completion;
  v11 = completionCopy;
  if (completionCopy)
  {
    if (handleCopy)
    {
      v12 = objc_alloc_init(NSMutableSet);
      [v12 pk_safelyAddObject:handleCopy];
      v23 = 0;
      v24 = 0;
      [PKCloudStoreZone zoneValueForZoneName:nameCopy outZoneType:&v24 outAccountIdentifier:&v23 altDSID:0];
      v13 = v23;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000A8974;
      v16[3] = &unk_100841ED8;
      v17 = handleCopy;
      v18 = v12;
      v22 = v24;
      selfCopy = self;
      v20 = v13;
      v21 = v11;
      v14 = v13;
      v15 = v12;
      [(PDApplePayCloudStoreContainer *)self _queue_familyMembersWithCompletion:v16];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (BOOL)supportsContainerChangeEventReports
{
  if (self->_isInternalBuild)
  {
    return PKDisableContainerChangeEvents() ^ 1;
  }

  else
  {
    return 0;
  }
}

- (void)didUpdateSetupAssistantStateFrom:(unint64_t)from toState:(unint64_t)state
{
  v11.receiver = self;
  v11.super_class = PDApplePayCloudStoreContainer;
  [PDCloudStoreContainer didUpdateSetupAssistantStateFrom:"didUpdateSetupAssistantStateFrom:toState:" toState:?];
  if (from != 3 && state == 3)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      containerManager = [(PDCloudStoreContainer *)self containerManager];
      containerName = [containerManager containerName];
      *buf = 138412290;
      v13 = containerName;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Cloud store setup assistant has completed. Starting initialization now for %@", buf, 0xCu);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000A8E18;
    v10[3] = &unk_10083DFE8;
    v10[4] = self;
    [(PDCloudStoreContainer *)self initialCloudDatabaseSetupWithOperationGroupNameSuffix:PKCloudStoreOperationGroupSuffixSetupAssistantComplete completion:v10];
  }
}

- (void)requestUpdatesForTransactionSourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    selfCopy = self;
    v62 = identifierCopy;
    v55 = [(PDApplePayCloudStoreContainer *)self _allPossibleCloudStoreZonesForFetchingWithTransactionSourceIdentifier:?];
    v64 = objc_alloc_init(NSMutableSet);
    v61 = objc_alloc_init(NSMutableDictionary);
    v63 = objc_alloc_init(NSMutableDictionary);
    os_unfair_lock_lock(&self->_fetchTasksLock);
    v59 = [(NSMutableDictionary *)self->_fetchTasks objectForKeyedSubscript:v62];
    task = [(PDApplePayCloudStoreRecordFetchOperation *)v59 task];
    status = [task status];
    type = [task type];
    dataSource = [(PDCloudStoreContainer *)selfCopy dataSource];
    v8 = [dataSource transactionSourceTypeForTransactionSourceIdentifier:v62];

    if (status == 3)
    {
      os_unfair_lock_unlock(&selfCopy->_fetchTasksLock);
      v58 = 0;
      v9 = &PKCloudStoreOperationGroupSuffixViewedTransactionsRecoveringFromProactiveFetchError;
      if (type == 1)
      {
        v9 = &PKCloudStoreOperationGroupSuffixViewedTransactionsRecoveringFromFullFetchError;
      }
    }

    else
    {
      if (v59 && task && status != 2)
      {
        os_unfair_lock_unlock(&selfCopy->_fetchTasksLock);
        v58 = 0;
      }

      else
      {
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v10 = v55;
        v11 = [v10 countByEnumeratingWithState:&v84 objects:v103 count:16];
        if (v11)
        {
          v12 = *v85;
          do
          {
            v13 = 0;
            do
            {
              if (*v85 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v84 + 1) + 8 * v13);
              containerManager = [(PDCloudStoreContainer *)selfCopy containerManager];
              v16 = [containerManager fetchTimestampForCloudStoreStore:v14];

              if (v16 && ([v16 timeIntervalSinceNow], fabs(v17) <= 14400.0) && !PKDisableNotificationPullTimeout())
              {
                zoneName = [v14 zoneName];
                [v63 safelySetObject:v16 forKey:zoneName];
              }

              else
              {
                [v64 addObject:v14];
              }

              v13 = v13 + 1;
            }

            while (v11 != v13);
            v19 = [v10 countByEnumeratingWithState:&v84 objects:v103 count:16];
            v11 = v19;
          }

          while (v19);
        }

        v20 = [v64 pk_setByApplyingBlock:&stru_100841F18];
        [v61 safelySetObject:v20 forKey:@"cloudStoreZonesToFetch"];

        if ([v64 count])
        {
          if (!v59)
          {
            v59 = objc_alloc_init(PDApplePayCloudStoreRecordFetchOperation);
          }

          v58 = [[PKCloudStoreRecordFetchTask alloc] initWithTransactionSourceIdentifier:v62 type:2];
          [v58 queueTask];
          [(PDApplePayCloudStoreRecordFetchOperation *)v59 updateTask:v58];
          fetchTasks = selfCopy->_fetchTasks;
          identifier = [(PDApplePayCloudStoreRecordFetchOperation *)v59 identifier];
          [(NSMutableDictionary *)fetchTasks safelySetObject:v59 forKey:identifier];

          dataSource2 = [(PDCloudStoreContainer *)selfCopy dataSource];
          [dataSource2 updateRecordFetchTask:v58];
        }

        else
        {
          v58 = 0;
        }

        os_unfair_lock_unlock(&selfCopy->_fetchTasksLock);
      }

      v9 = &PKCloudStoreOperationGroupSuffixViewedTransactions;
    }

    v57 = *v9;
    v66 = PKCloudStoreOperationGroupUserActionImplicit;
    v24 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = PKTransactionSourceTypeToString();
      if (status == 3)
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      v27 = [v64 count];
      v28 = [v63 count];
      *buf = 138414338;
      *&buf[4] = v62;
      *&buf[12] = 2114;
      *&buf[14] = v25;
      *&buf[22] = 2114;
      v93 = v26;
      *v94 = 2048;
      *&v94[2] = v27;
      *&v94[10] = 2112;
      *&v94[12] = v64;
      v95 = 2048;
      v96 = v28;
      v97 = 2112;
      v98 = v63;
      v99 = 2112;
      v100 = task;
      v101 = 2112;
      v102 = v58;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Requesting updates for transactionSourceIdentifier: %@, type: %{public}@, shouldRecoverFromFailedFetch: %{public}@, %lu cloudStoreZonesToFetch: %@, %lu zonesNotFetching: %@, existingTask: %@, newTask: %@", buf, 0x5Cu);
    }

    [v61 safelySetObject:v58 forKey:@"newTask"];
    [v61 safelySetObject:task forKey:@"existingTask"];
    [v61 safelySetObject:v62 forKey:@"transactionSourceIdentifier"];
    v29 = PKTransactionSourceTypeToString();
    [v61 safelySetObject:v29 forKey:@"transactionSourceType"];

    v30 = [NSNumber numberWithBool:status == 3];
    [v61 safelySetObject:v30 forKey:@"shouldRecoverFromFailedFetch"];

    v31 = [v61 description];
    v91 = v31;
    v32 = [NSArray arrayWithObjects:&v91 count:1];
    [(PDCloudStoreContainer *)selfCopy reportContainerChangeSignpostEventType:46 stateName:v62 objectNames:v32 changeToken:0 error:0 operationGroupName:v66 operationGroupNameSuffix:v57];

    if (status != 3)
    {
      if (![v64 count])
      {
LABEL_57:

        identifierCopy = v62;
        goto LABEL_58;
      }

      os_unfair_lock_lock(&selfCopy->_fetchTasksLock);
      v54 = [(NSMutableDictionary *)selfCopy->_fetchTasks objectForKeyedSubscript:v62];

      task2 = [(PDApplePayCloudStoreRecordFetchOperation *)v54 task];
      [task2 startTask];
      [(PDApplePayCloudStoreRecordFetchOperation *)v54 updateTask:task2];
      dataSource3 = [(PDCloudStoreContainer *)selfCopy dataSource];
      [dataSource3 updateRecordFetchTask:task2];

      os_unfair_lock_unlock(&selfCopy->_fetchTasksLock);
      v65 = objc_alloc_init(PKAsyncUnaryOperationComposer);
      v81[0] = _NSConcreteStackBlock;
      v81[1] = 3221225472;
      v81[2] = sub_1000A998C;
      v81[3] = &unk_100841F68;
      v81[4] = selfCopy;
      v37 = v57;
      v82 = v37;
      v38 = v62;
      v83 = v38;
      [v65 addOperation:v81];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v93 = sub_100005A60;
      *v94 = sub_10000B13C;
      *&v94[8] = 0;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v39 = v64;
      v40 = [v39 countByEnumeratingWithState:&v77 objects:v88 count:16];
      if (v40)
      {
        v41 = *v78;
        do
        {
          for (i = 0; i != v40; i = i + 1)
          {
            if (*v78 != v41)
            {
              objc_enumerationMutation(v39);
            }

            v43 = *(*(&v77 + 1) + 8 * i);
            v71[0] = _NSConcreteStackBlock;
            v71[1] = 3221225472;
            v71[2] = sub_1000A9B4C;
            v71[3] = &unk_100841FB8;
            v71[4] = v43;
            v71[5] = selfCopy;
            v72 = v37;
            v73 = v38;
            v44 = v39;
            v74 = v44;
            v75 = v66;
            v76 = buf;
            [v65 addOperation:v71];
          }

          v40 = [v44 countByEnumeratingWithState:&v77 objects:v88 count:16];
        }

        while (v40);
      }

      v45 = +[NSNull null];
      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_1000A9EA4;
      v68[3] = &unk_100842008;
      v68[4] = selfCopy;
      v69 = v38;
      v70 = buf;
      v46 = [v65 evaluateWithInput:v45 completion:v68];

      _Block_object_dispose(buf, 8);
      v59 = v54;
LABEL_56:

      goto LABEL_57;
    }

    task2 = 0;
    if (v8 > 1)
    {
      v33 = v62;
      if (v8 == 2)
      {
        dataSource4 = [(PDCloudStoreContainer *)selfCopy dataSource];
        v51 = [dataSource4 accountUserWithTransactionSourceIdentifier:v62];
        accountIdentifier = [v51 accountIdentifier];

        dataSource5 = [(PDCloudStoreContainer *)selfCopy dataSource];
        task2 = [dataSource5 passUniqueIdentifierWithAssociatedAccountIdentifier:accountIdentifier];

        goto LABEL_54;
      }

      if (v8 == 3)
      {
        dataSource6 = [(PDCloudStoreContainer *)selfCopy dataSource];
        v48 = [dataSource6 accountWithTransactionSourceIdentifier:v62];
        accountIdentifier = [v48 accountIdentifier];

        dataSource7 = [(PDCloudStoreContainer *)selfCopy dataSource];
        task2 = [dataSource7 passUniqueIdentifierWithAssociatedAccountIdentifier:accountIdentifier];

        goto LABEL_54;
      }
    }

    else
    {
      v33 = v62;
      if (!v8)
      {
        accountIdentifier = [(PDCloudStoreContainer *)selfCopy dataSource];
        task2 = [accountIdentifier passUniqueIdentifierForTransactionSourceIdentifier:v62];
        goto LABEL_54;
      }

      if (v8 == 1)
      {
        dataSource8 = [(PDCloudStoreContainer *)selfCopy dataSource];
        accountIdentifier = [dataSource8 peerPaymentAccountForTransactionSourceIdentifier:v62];

        task2 = [accountIdentifier associatedPassUniqueID];
LABEL_54:

        v33 = v62;
      }
    }

    v89 = v33;
    v65 = PKTransactionSourceTypeToString();
    v90 = v65;
    v53 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
    [(PDApplePayCloudStoreContainer *)selfCopy fetchAndStoreRecordsForPassUniqueID:task2 transactionSourceIdentifiers:v53 fullFetchIgnoringChangeToken:0 ignoreExistingRecordHash:0 groupName:v66 groupNameSuffix:v57 completion:0];

    goto LABEL_56;
  }

LABEL_58:
}

- (void)backgroundModifiedRecordSyncForTranasctionSourceIdentifiers:(id)identifiers fromDate:(id)date returnRecords:(BOOL)records formReport:(BOOL)report completion:(id)completion
{
  identifiersCopy = identifiers;
  dateCopy = date;
  completionCopy = completion;
  workQueue = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AA15C;
  block[3] = &unk_1008420D0;
  v20 = dateCopy;
  selfCopy = self;
  recordsCopy = records;
  reportCopy = report;
  v22 = identifiersCopy;
  v23 = completionCopy;
  v16 = identifiersCopy;
  v17 = completionCopy;
  v18 = dateCopy;
  dispatch_async(workQueue, block);
}

- (void)backgroundRecordChangedSyncForTranasctionSourceIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  workQueue = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AACC4;
  block[3] = &unk_10083D320;
  v12 = identifiersCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = identifiersCopy;
  dispatch_async(workQueue, block);
}

- (void)fetchAndStoreRecordsForPassUniqueID:(id)d transactionSourceIdentifiers:(id)identifiers fullFetchIgnoringChangeToken:(BOOL)token ignoreExistingRecordHash:(BOOL)hash groupName:(id)name groupNameSuffix:(id)suffix completion:(id)completion
{
  tokenCopy = token;
  hashCopy = hash;
  dCopy = d;
  identifiersCopy = identifiers;
  nameCopy = name;
  suffixCopy = suffix;
  completionCopy = completion;
  v67 = +[NSDate date];
  v12 = PKCloudStoreOperationGroupUserActionExplicit;
  if (nameCopy)
  {
    v12 = nameCopy;
  }

  v82 = v12;
  v13 = PKCloudStoreOperationGroupSuffixPassAdded;
  if (suffixCopy)
  {
    v13 = suffixCopy;
  }

  v83 = v13;
  v76 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v145 = 0;
  v146 = &v145;
  v147 = 0x3032000000;
  v148 = sub_100005A60;
  v149 = sub_10000B13C;
  v150 = 0;
  v143[0] = 0;
  v143[1] = v143;
  v143[2] = 0x3032000000;
  v143[3] = sub_100005A60;
  v143[4] = sub_10000B13C;
  v144 = 0;
  os_unfair_lock_lock(&self->_fetchTasksLock);
  v69 = [(NSMutableDictionary *)self->_fetchTasks copy];
  os_unfair_lock_unlock(&self->_fetchTasksLock);
  v14 = &PKPaymentNetworkAmex_ptr;
  v80 = objc_alloc_init(NSMutableSet);
  v70 = objc_alloc_init(NSMutableSet);
  v68 = objc_alloc_init(NSMutableDictionary);
  v15 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v14 = identifiersCopy;
    v16 = [identifiersCopy count];
    v17 = @"NO";
    *buf = 138544642;
    v155 = dCopy;
    if (tokenCopy)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    v157 = v18;
    v156 = 2114;
    if (hashCopy)
    {
      v17 = @"YES";
    }

    v158 = 2048;
    v159 = v16;
    v160 = 2112;
    v161 = identifiersCopy;
    v162 = 2114;
    v163 = v83;
    v164 = 2114;
    v165 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "fetchAndStoreRecordsForPassUniqueID %{public}@, fullFetchIgnoringChangeToken: %{public}@, %lu transactionSourceIdentifiers %@, groupNameSuffix: %{public}@, ignoreExistingRecordHash: %{public}@", buf, 0x3Eu);
  }

  oslog = v15;

  if (identifiersCopy)
  {
    [identifiersCopy description];
    v14 = selfCopy2 = self;
    v153 = v14;
    v20 = [NSArray arrayWithObjects:&v153 count:1];
  }

  else
  {
    v20 = 0;
    selfCopy2 = self;
  }

  [(PDCloudStoreContainer *)selfCopy2 reportContainerChangeSignpostEventType:47 stateName:dCopy objectNames:v20 changeToken:0 error:0 operationGroupName:v82 operationGroupNameSuffix:v83];
  if (identifiersCopy)
  {

    selfCopy2 = self;
  }

  if (![identifiersCopy count])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }

    goto LABEL_72;
  }

  v142[0] = _NSConcreteStackBlock;
  v142[1] = 3221225472;
  v142[2] = sub_1000AC608;
  v142[3] = &unk_100842170;
  v142[4] = selfCopy2;
  v64 = objc_retainBlock(v142);
  group = dispatch_group_create();
  isCloudStoreSetupAssistantComplete = [(PDCloudStoreContainer *)self isCloudStoreSetupAssistantComplete];
  os_unfair_lock_lock(&self->_fetchTasksLock);
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  obj = identifiersCopy;
  v21 = [obj countByEnumeratingWithState:&v138 objects:v152 count:16];
  if (!v21)
  {

    selfCopy5 = self;
    os_unfair_lock_unlock(&self->_fetchTasksLock);
    goto LABEL_68;
  }

  v77 = 0;
  v86 = *v139;
  do
  {
    v22 = 0;
    v88 = v21;
    do
    {
      if (*v139 != v86)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v138 + 1) + 8 * v22);
      v24 = objc_autoreleasePoolPush();
      v25 = [(NSMutableDictionary *)self->_fetchTasks objectForKeyedSubscript:v23];
      task = [(PDApplePayCloudStoreRecordFetchOperation *)v25 task];
      v27 = [task status] == 1 && objc_msgSend(task, "type") != 2;
      v28 = [task status] == 4 && objc_msgSend(task, "type") != 2;
      if (v27 || v28)
      {
        v29 = objc_alloc_init(NSMutableArray);
        setupAssistantNotCompleteError = v29;
        if (v27)
        {
          [v29 safelyAddObject:@"runningTask"];
          v31 = 49;
        }

        else if (v28)
        {
          [v29 safelyAddObject:@"queuedTask"];
          v31 = 50;
        }

        else
        {
          v31 = 0;
        }

        v38 = [(PDApplePayCloudStoreRecordFetchOperation *)v25 description];
        [setupAssistantNotCompleteError safelyAddObject:v38];

        if (v27)
        {
          v39 = oslog;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            v40 = [obj objectForKeyedSubscript:v23];
            *buf = 138412802;
            v155 = v23;
            v156 = 2112;
            v157 = v40;
            v158 = 2112;
            v159 = v25;
            _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "The transactionSourceIdentifier %@ of type %@ already has a fetch task running. Waiting for it to complete %@", buf, 0x20u);

            goto LABEL_50;
          }

          goto LABEL_51;
        }

        if (v28)
        {
          v39 = oslog;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            v41 = [obj objectForKeyedSubscript:v23];
            *buf = 138412802;
            v155 = v23;
            v156 = 2112;
            v157 = v41;
            v158 = 2112;
            v159 = v25;
            _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "The transactionSourceIdentifier %@ of type %@ is currently queued. Waiting for it to complete %@", buf, 0x20u);

LABEL_50:
            v39 = oslog;
          }

LABEL_51:
        }

        if (v25)
        {
          v85 = [(PDApplePayCloudStoreRecordFetchOperation *)v25 description];
          v151 = v85;
          v84 = [NSArray arrayWithObjects:&v151 count:1];
          v42 = v84;
        }

        else
        {
          v42 = 0;
        }

        v43 = [(PDCloudStoreContainer *)self reportContainerChangeIntervalBeginEventWithType:v31 stateName:v23 objectNames:v42 operationGroupName:v82 operationGroupNameSuffix:v83];
        if (v25)
        {
        }

        identifier = [(PDApplePayCloudStoreRecordFetchOperation *)v25 identifier];
        [v80 pk_safelyAddObject:identifier];

        dispatch_group_enter(group);
        v135[0] = _NSConcreteStackBlock;
        v135[1] = 3221225472;
        v135[2] = sub_1000AC618;
        v135[3] = &unk_100842198;
        v135[4] = self;
        dataSource = v43;
        v136 = dataSource;
        v137 = group;
        [(PDApplePayCloudStoreRecordFetchOperation *)v25 addCompletion:v135];

        v77 = 1;
        v32 = task;
LABEL_58:

        goto LABEL_59;
      }

      if ((isCloudStoreSetupAssistantComplete & 1) == 0)
      {
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v155 = v23;
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Cannot fetch records after provisioning for transactionSourceIdentifier %@ since PDCloudStoreContainerSetupAssistantState is not complete", buf, 0xCu);
        }

        setupAssistantNotCompleteError = [(PDCloudStoreContainer *)self setupAssistantNotCompleteError];
        [(PDCloudStoreContainer *)self reportContainerChangeSignpostEventType:3 stateName:v23 objectNames:0 changeToken:0 error:setupAssistantNotCompleteError operationGroupName:v82 operationGroupNameSuffix:v83, v64];
        objc_storeStrong(v146 + 5, setupAssistantNotCompleteError);
        if (!v25)
        {
          v25 = objc_alloc_init(PDApplePayCloudStoreRecordFetchOperation);
        }

        v32 = [[PKCloudStoreRecordFetchTask alloc] initWithTransactionSourceIdentifier:v23 type:1];

        [v32 startTask];
        [(PDApplePayCloudStoreRecordFetchOperation *)v25 updateTask:v32];
        fetchTasks = self->_fetchTasks;
        identifier2 = [(PDApplePayCloudStoreRecordFetchOperation *)v25 identifier];
        [(NSMutableDictionary *)fetchTasks safelySetObject:v25 forKey:identifier2];

        dataSource = [(PDCloudStoreContainer *)self dataSource];
        [dataSource updateRecordFetchTask:v32];
        goto LABEL_58;
      }

      if (!v25)
      {
        v25 = objc_alloc_init(PDApplePayCloudStoreRecordFetchOperation);
      }

      v32 = [[PKCloudStoreRecordFetchTask alloc] initWithTransactionSourceIdentifier:v23 type:1];

      [v32 queueTask];
      [(PDApplePayCloudStoreRecordFetchOperation *)v25 updateTask:v32];
      v33 = self->_fetchTasks;
      identifier3 = [(PDApplePayCloudStoreRecordFetchOperation *)v25 identifier];
      [(NSMutableDictionary *)v33 safelySetObject:v25 forKey:identifier3];

      setupAssistantNotCompleteError = [(PDCloudStoreContainer *)self dataSource];
      [setupAssistantNotCompleteError updateRecordFetchTask:v32];
LABEL_59:

      objc_autoreleasePoolPop(v24);
      v22 = v22 + 1;
    }

    while (v88 != v22);
    v21 = [obj countByEnumeratingWithState:&v138 objects:v152 count:16];
  }

  while (v21);

  selfCopy5 = self;
  os_unfair_lock_unlock(&self->_fetchTasksLock);
  if (v77)
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v155 = v80;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Pass Provisioning fetch waiting for in progress tasks to complete: %@", buf, 0xCu);
    }

    selfCopy5 = self;
  }

LABEL_68:
  v132[0] = _NSConcreteStackBlock;
  v132[1] = 3221225472;
  v132[2] = sub_1000AC65C;
  v132[3] = &unk_10083FAF8;
  v46 = group;
  v133 = v46;
  v134 = selfCopy5;
  [v76 addOperation:v132];
  v126[0] = _NSConcreteStackBlock;
  v126[1] = 3221225472;
  v126[2] = sub_1000AC74C;
  v126[3] = &unk_1008421C0;
  v131 = isCloudStoreSetupAssistantComplete;
  v130 = &v145;
  v126[4] = selfCopy5;
  v47 = obj;
  v127 = v47;
  v48 = v80;
  v128 = v48;
  v49 = v70;
  v129 = v49;
  [v76 addOperation:v126];
  v50 = PKLogFacilityTypeGetObject();
  v51 = os_signpost_id_make_with_pointer(v50, selfCopy5);
  if (v51 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v52 = v51;
    if (os_signpost_enabled(v50))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, OS_SIGNPOST_INTERVAL_BEGIN, v52, "cloudstore:fetchPassRecords", "", buf, 2u);
    }
  }

  v124[0] = _NSConcreteStackBlock;
  v124[1] = 3221225472;
  v124[2] = sub_1000ACA1C;
  v124[3] = &unk_100841F68;
  v124[4] = self;
  v124[5] = v83;
  v53 = v47;
  v125 = v53;
  [v76 addOperation:v124];
  v114[0] = _NSConcreteStackBlock;
  v114[1] = 3221225472;
  v114[2] = sub_1000ACC9C;
  v114[3] = &unk_100842210;
  v114[4] = self;
  v54 = dCopy;
  v115 = v54;
  v55 = v49;
  v116 = v55;
  v56 = v68;
  v117 = v56;
  v57 = v53;
  v118 = v57;
  v119 = v69;
  v120 = v48;
  v121 = v82;
  v123 = v143;
  v122 = v83;
  [v76 addOperation:v114];
  v109[0] = _NSConcreteStackBlock;
  v109[1] = 3221225472;
  v109[2] = sub_1000AD28C;
  v109[3] = &unk_100842148;
  v109[4] = self;
  v58 = v54;
  v110 = v58;
  v111 = v82;
  v112 = v83;
  v113 = &v145;
  [v76 addOperation:v109];
  v99[0] = _NSConcreteStackBlock;
  v99[1] = 3221225472;
  v99[2] = sub_1000AD3F8;
  v99[3] = &unk_100842080;
  v100 = v56;
  selfCopy6 = self;
  v107 = tokenCopy;
  v102 = v82;
  v103 = v83;
  v108 = hashCopy;
  v59 = v58;
  v104 = v59;
  v60 = v57;
  v105 = v60;
  v106 = &v145;
  [v76 addOperation:v99];
  v61 = +[NSNull null];
  v90[0] = _NSConcreteStackBlock;
  v90[1] = 3221225472;
  v90[2] = sub_1000AE13C;
  v90[3] = &unk_100842328;
  v90[4] = self;
  v91 = v59;
  v92 = v60;
  v97 = &v145;
  v93 = v67;
  v98 = v143;
  v94 = v55;
  v62 = v64;
  v95 = v62;
  v96 = completionCopy;
  v63 = [v76 evaluateWithInput:v61 completion:v90];

LABEL_72:
  _Block_object_dispose(v143, 8);

  _Block_object_dispose(&v145, 8);
}

- (void)fetchRecordsInAcceptedZoneShare:(id)share databaseIdentifier:(id)identifier operationGroupName:(id)name operationGroupNameSuffix:(id)suffix qualityOfService:(int64_t)service completion:(id)completion
{
  shareCopy = share;
  identifierCopy = identifier;
  nameCopy = name;
  suffixCopy = suffix;
  completionCopy = completion;
  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    zoneName = [shareCopy zoneName];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = zoneName;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Fetching records in newly shared zone %{public}@", &buf, 0xCu);
  }

  if (shareCopy)
  {
    v16 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    group = dispatch_group_create();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v68 = 0x3032000000;
    v69 = sub_100005A60;
    v70 = sub_10000B13C;
    v71 = 0;
    isCloudStoreSetupAssistantComplete = [(PDCloudStoreContainer *)self isCloudStoreSetupAssistantComplete];
    os_unfair_lock_lock(&self->_fetchTasksLock);
    v17 = [[PKCloudStoreRecordFetchTask alloc] initWithCloudStoreZone:shareCopy type:3];
    [v17 queueTask];
    identifier = [v17 identifier];
    v19 = [(NSMutableDictionary *)self->_fetchTasks objectForKeyedSubscript:identifier];
    task = [(PDApplePayCloudStoreRecordFetchOperation *)v19 task];
    [(NSMutableDictionary *)self->_fetchTasks setObject:v19 forKeyedSubscript:identifier];
    status = [task status];
    status2 = [task status];
    if (status == 1 || status2 == 4)
    {
      dispatch_group_enter(group);
      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_1000AEC88;
      v63[3] = &unk_100842350;
      v64 = group;
      [(PDApplePayCloudStoreRecordFetchOperation *)v19 addCompletion:v63];
      dataSource = v64;
    }

    else if (isCloudStoreSetupAssistantComplete)
    {
      [v17 queueTask];
      [(PDApplePayCloudStoreRecordFetchOperation *)v19 updateTask:v17];
      dataSource = [(PDCloudStoreContainer *)self dataSource];
      [dataSource updateRecordFetchTask:v17];
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        zoneName2 = [shareCopy zoneName];
        *v65 = 138412290;
        v66 = zoneName2;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Cannot fetch records in newly shared zone %@ since the cloud store setup assistant is not complete", v65, 0xCu);
      }

      dataSource = [(PDCloudStoreContainer *)self setupAssistantNotCompleteError];
      zoneName3 = [shareCopy zoneName];
      [(PDCloudStoreContainer *)self reportContainerChangeSignpostEventType:3 stateName:zoneName3 objectNames:0 changeToken:0 error:dataSource operationGroupName:nameCopy operationGroupNameSuffix:suffixCopy];

      if (!v19)
      {
        v19 = objc_alloc_init(PDApplePayCloudStoreRecordFetchOperation);
      }

      [v17 startTask];
      objc_storeStrong((*(&buf + 1) + 40), dataSource);
      [(PDApplePayCloudStoreRecordFetchOperation *)v19 updateTask:v17];
      fetchTasks = self->_fetchTasks;
      identifier2 = [(PDApplePayCloudStoreRecordFetchOperation *)v19 identifier];
      [(NSMutableDictionary *)fetchTasks safelySetObject:v19 forKey:identifier2];

      dataSource2 = [(PDCloudStoreContainer *)self dataSource];
      [dataSource2 updateRecordFetchTask:v17];
    }

    os_unfair_lock_unlock(&self->_fetchTasksLock);
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_1000AEC90;
    v60[3] = &unk_10083FAF8;
    v29 = group;
    v61 = v29;
    selfCopy = self;
    [v16 addOperation:v60];
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_1000AED80;
    v55[3] = &unk_100842378;
    v59 = isCloudStoreSetupAssistantComplete;
    p_buf = &buf;
    v55[4] = self;
    v30 = identifier;
    v56 = v30;
    v31 = shareCopy;
    v57 = v31;
    [v16 addOperation:v55];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1000AEF5C;
    v47[3] = &unk_1008423A0;
    v48 = v31;
    v49 = identifierCopy;
    v50 = nameCopy;
    v53 = &buf;
    serviceCopy = service;
    v51 = suffixCopy;
    selfCopy2 = self;
    [v16 addOperation:v47];
    v32 = +[NSNull null];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1000AF0D8;
    v43[3] = &unk_1008423C8;
    v43[4] = self;
    v33 = v30;
    v44 = v33;
    v46 = &buf;
    v45 = completionCopy;
    v34 = [v16 evaluateWithInput:v32 completion:v43];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v72 = NSLocalizedDescriptionKey;
    v73 = @"Error: cannot fetch records from a nil accepted zone share";
    v23 = [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    v16 = [NSError errorWithDomain:PKPassKitErrorDomain code:-4001 userInfo:v23];

    [(PDCloudStoreContainer *)self reportContainerChangeSignpostEventType:3 stateName:0 objectNames:0 changeToken:0 error:v16 operationGroupName:nameCopy operationGroupNameSuffix:suffixCopy];
    if (completionCopy)
    {
      completionCopy[2]();
    }
  }
}

- (void)_fetchTaskOperationWithIdentifier:(id)identifier completedWithError:(id)error
{
  errorCopy = error;
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_fetchTasksLock);
  v10 = [(NSMutableDictionary *)self->_fetchTasks objectForKeyedSubscript:identifierCopy];

  task = [v10 task];
  [task completeTaskWithError:errorCopy];
  dataSource = [(PDCloudStoreContainer *)self dataSource];
  [dataSource updateRecordFetchTask:task];

  os_unfair_lock_unlock(&self->_fetchTasksLock);
  [v10 callCompletionsWithError:errorCopy cloudStoreRecords:0];

  [(PDApplePayCloudStoreContainer *)self _updateFetchTaskScheduledActivityIfNeccessary];
}

- (id)_queue_additionalTransactionSourceIdentifiersForProvisioningWithZone:(id)zone transactionSourceIdentifiers:(id)identifiers
{
  zoneCopy = zone;
  identifiersCopy = identifiers;
  if (zoneCopy)
  {
    zoneType = [zoneCopy zoneType];
    if (zoneType >= 0xA || ((0x3EDu >> zoneType) & 1) == 0)
    {
      v10 = objc_alloc_init(NSMutableDictionary);
      peerPaymentAccount = self->_peerPaymentAccount;
      if (peerPaymentAccount)
      {
        v12 = identifiersCopy;
        associatedPassUniqueID = [(PKPeerPaymentAccount *)peerPaymentAccount associatedPassUniqueID];
        dataSource = [(PDCloudStoreContainer *)self dataSource];
        v15 = [dataSource passWithUniqueIdentifier:associatedPassUniqueID];
        paymentPass = [v15 paymentPass];

        if (paymentPass)
        {
          identifiersCopy = v12;
          if ([paymentPass activationState])
          {
            v17 = [paymentPass activationState] == 2;
          }

          else
          {
            v17 = 1;
          }
        }

        else
        {
          v17 = 0;
          identifiersCopy = v12;
        }

        deviceTransactionSourceIdentifiers = [paymentPass deviceTransactionSourceIdentifiers];
        v79 = [deviceTransactionSourceIdentifiers isSubsetOfSet:identifiersCopy];
      }

      else
      {
        v79 = 0;
        paymentPass = 0;
        v17 = 0;
      }

      v82 = paymentPass;
      allObjects = [(NSSet *)self->_accounts allObjects];
      v20 = PDAccountManagerDefaultAccountForFeature(2, allObjects);

      if (v20)
      {
        dataSource2 = [(PDCloudStoreContainer *)self dataSource];
        associatedPassUniqueID2 = [v20 associatedPassUniqueID];
        v23 = [dataSource2 passWithUniqueIdentifier:associatedPassUniqueID2];
        paymentPass2 = [v23 paymentPass];

        v25 = paymentPass2;
        if (paymentPass2)
        {
          if ([paymentPass2 activationState])
          {
            LODWORD(paymentPass2) = [paymentPass2 activationState] == 2;
          }

          else
          {
            LODWORD(paymentPass2) = 1;
          }
        }

        v81 = v25;
        deviceTransactionSourceIdentifiers2 = [v25 deviceTransactionSourceIdentifiers];
        v26 = [deviceTransactionSourceIdentifiers2 isSubsetOfSet:identifiersCopy];

        accountIdentifier = [v20 accountIdentifier];
        if (accountIdentifier)
        {
          v31 = [(NSDictionary *)self->_accountUsersByAccountIdentifier objectForKeyedSubscript:accountIdentifier];
          coOwnerAccountUser = [v31 coOwnerAccountUser];

          if (coOwnerAccountUser)
          {
            [coOwnerAccountUser transactionSourceIdentifiers];
            v77 = v26;
            v32 = paymentPass2;
            v33 = v17;
            v34 = coOwnerAccountUser;
            v35 = v20;
            v37 = v36 = identifiersCopy;
            v27 = [v37 isSubsetOfSet:v36];

            identifiersCopy = v36;
            v20 = v35;
            coOwnerAccountUser = v34;
            v17 = v33;
            LODWORD(paymentPass2) = v32;
            v26 = v77;
          }

          else
          {
            v27 = 0;
          }
        }

        else
        {
          v27 = 0;
          coOwnerAccountUser = 0;
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
        LODWORD(paymentPass2) = 0;
        v81 = 0;
        coOwnerAccountUser = 0;
      }

      if ([zoneCopy zoneType] == 1)
      {
        v38 = paymentPass2 & v26;
        v39 = v17 & v79;
        if ((paymentPass2 & v26) != 1 || (v39 & 1) == 0)
        {
          if (((v39 | v17 & v38 ^ 1) & 1) == 0)
          {
            v76 = identifiersCopy;
            v97 = 0u;
            v98 = 0u;
            v95 = 0u;
            v96 = 0u;
            deviceTransactionSourceIdentifiers3 = [v82 deviceTransactionSourceIdentifiers];
            v59 = [deviceTransactionSourceIdentifiers3 countByEnumeratingWithState:&v95 objects:v102 count:16];
            if (v59)
            {
              v60 = v59;
              v80 = coOwnerAccountUser;
              v74 = v20;
              v75 = zoneCopy;
              v61 = *v96;
              do
              {
                for (i = 0; i != v60; i = i + 1)
                {
                  if (*v96 != v61)
                  {
                    objc_enumerationMutation(deviceTransactionSourceIdentifiers3);
                  }

                  v63 = *(*(&v95 + 1) + 8 * i);
                  uniqueID = [v82 uniqueID];
                  v65 = [NSString stringWithFormat:@"paymentApplication, %@, Apple Cash", uniqueID];
                  [v10 safelySetObject:v65 forKey:v63];
                }

                v60 = [deviceTransactionSourceIdentifiers3 countByEnumeratingWithState:&v95 objects:v102 count:16];
              }

              while (v60);
              goto LABEL_66;
            }

LABEL_67:

            identifiersCopy = v76;
            goto LABEL_68;
          }

          if (((v38 | v39 & paymentPass2 ^ 1) & 1) == 0)
          {
            v76 = identifiersCopy;
            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            deviceTransactionSourceIdentifiers3 = [v81 deviceTransactionSourceIdentifiers];
            v41 = [deviceTransactionSourceIdentifiers3 countByEnumeratingWithState:&v91 objects:v101 count:16];
            if (v41)
            {
              v42 = v41;
              v80 = coOwnerAccountUser;
              v74 = v20;
              v75 = zoneCopy;
              v43 = *v92;
              do
              {
                for (j = 0; j != v42; j = j + 1)
                {
                  if (*v92 != v43)
                  {
                    objc_enumerationMutation(deviceTransactionSourceIdentifiers3);
                  }

                  v45 = *(*(&v91 + 1) + 8 * j);
                  uniqueID2 = [v81 uniqueID];
                  v47 = [NSString stringWithFormat:@"paymentApplication, %@, Apple Card", uniqueID2];
                  [v10 safelySetObject:v47 forKey:v45];
                }

                v42 = [deviceTransactionSourceIdentifiers3 countByEnumeratingWithState:&v91 objects:v101 count:16];
              }

              while (v42);
LABEL_66:
              v20 = v74;
              zoneCopy = v75;
              coOwnerAccountUser = v80;
              goto LABEL_67;
            }

            goto LABEL_67;
          }
        }
      }

      else if ([zoneCopy zoneType] == 4)
      {
        v48 = paymentPass2 & v26 ^ 1;
        v49 = v27 ^ 1;
        if ((v48 & 1) != 0 || v49)
        {
          if (((paymentPass2 & v26 | v49) & 1) == 0)
          {
            v76 = identifiersCopy;
            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            deviceTransactionSourceIdentifiers3 = [v81 deviceTransactionSourceIdentifiers];
            v66 = [deviceTransactionSourceIdentifiers3 countByEnumeratingWithState:&v87 objects:v100 count:16];
            if (v66)
            {
              v67 = v66;
              v80 = coOwnerAccountUser;
              v74 = v20;
              v75 = zoneCopy;
              v68 = *v88;
              do
              {
                for (k = 0; k != v67; k = k + 1)
                {
                  if (*v88 != v68)
                  {
                    objc_enumerationMutation(deviceTransactionSourceIdentifiers3);
                  }

                  v70 = *(*(&v87 + 1) + 8 * k);
                  uniqueID3 = [v81 uniqueID];
                  v72 = [NSString stringWithFormat:@"paymentApplication, %@, Apple Card", uniqueID3];
                  [v10 safelySetObject:v72 forKey:v70];
                }

                v67 = [deviceTransactionSourceIdentifiers3 countByEnumeratingWithState:&v87 objects:v100 count:16];
              }

              while (v67);
              goto LABEL_66;
            }

            goto LABEL_67;
          }

          if (((v48 | v27) & 1) == 0)
          {
            v76 = identifiersCopy;
            v85 = 0u;
            v86 = 0u;
            v83 = 0u;
            v84 = 0u;
            deviceTransactionSourceIdentifiers3 = [coOwnerAccountUser transactionSourceIdentifiers];
            v50 = [deviceTransactionSourceIdentifiers3 countByEnumeratingWithState:&v83 objects:v99 count:16];
            if (v50)
            {
              v51 = v50;
              v74 = v20;
              v75 = zoneCopy;
              v78 = *v84;
              v80 = coOwnerAccountUser;
              do
              {
                for (m = 0; m != v51; m = m + 1)
                {
                  if (*v84 != v78)
                  {
                    objc_enumerationMutation(deviceTransactionSourceIdentifiers3);
                  }

                  v53 = *(*(&v83 + 1) + 8 * m);
                  altDSID = [v80 altDSID];
                  firstName = [v80 firstName];
                  lastName = [v80 lastName];
                  appleID = [v80 appleID];
                  v58 = [NSString stringWithFormat:@"accountUser, %@ - %@ - %@ - %@, Apple Card CoOwner", altDSID, firstName, lastName, appleID];
                  [v10 safelySetObject:v58 forKey:v53];
                }

                v51 = [deviceTransactionSourceIdentifiers3 countByEnumeratingWithState:&v83 objects:v99 count:16];
              }

              while (v51);
              goto LABEL_66;
            }

            goto LABEL_67;
          }
        }
      }

LABEL_68:
      if ([v10 count])
      {
        v9 = [v10 copy];
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_72;
    }
  }

  v9 = 0;
LABEL_72:

  return v9;
}

- (void)_fetchAndStoreAppleCashRecordsIfNecessaryForPassUniqueID:(id)d operationGroupName:(id)name operationGroupNameSuffix:(id)suffix completion:(id)completion
{
  dCopy = d;
  nameCopy = name;
  suffixCopy = suffix;
  completionCopy = completion;
  workQueue = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AFB30;
  block[3] = &unk_100842440;
  block[4] = self;
  v20 = dCopy;
  v22 = suffixCopy;
  v23 = completionCopy;
  v21 = nameCopy;
  v15 = suffixCopy;
  v16 = nameCopy;
  v17 = completionCopy;
  v18 = dCopy;
  dispatch_async(workQueue, block);
}

- (void)_fetchAndStoreAppleCashItemWithRecordType:(id)type operationGroupName:(id)name operationGroupNameSuffix:(id)suffix zone:(id)zone containerDatabase:(id)database transactionSourceIdentifiers:(id)identifiers accountCreationDate:(id)date completion:(id)self0
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  dateCopy = date;
  databaseCopy = database;
  zoneCopy = zone;
  suffixCopy = suffix;
  nameCopy = name;
  typeCopy = type;
  v21 = [NSPredicate predicateWithValue:1];
  v22 = [[CKQuery alloc] initWithRecordType:typeCopy predicate:v21];

  v23 = [(PDCloudStoreRecordsRequest *)[PDApplePayCloudStoreRecordsRequest alloc] initWithRequestType:4 storeChanges:1 returnRecords:0 qualityOfService:17 groupName:nameCopy groupNameSuffix:suffixCopy];
  [(PDCloudStoreRecordsRequest *)v23 setCkQuery:v22];
  [(PDCloudStoreRecordsRequest *)v23 setCloudStoreZone:zoneCopy];

  [(PDCloudStoreRecordsRequest *)v23 setContainerDatabase:databaseCopy];
  [(PDApplePayCloudStoreRecordsRequest *)v23 setTransactionSourceIdentifiers:identifiersCopy];
  [(PDCloudStoreRecordsRequest *)v23 setIgnoreRecordsBeforeDate:dateCopy];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000B09F4;
  v29[3] = &unk_100840D38;
  v30 = identifiersCopy;
  selfCopy = self;
  v32 = completionCopy;
  v24 = completionCopy;
  v25 = identifiersCopy;
  [(PDCloudStoreContainer *)self executeRecordsRequest:v23 completion:v29];
}

- (void)_addCloudStoreRecordsFromResponse:(id)response toTransactionSourceRecords:(id)records transactionSourceIdentifiers:(id)identifiers passUniqueID:(id)d
{
  recordsCopy = records;
  identifiersCopy = identifiers;
  dCopy = d;
  cloudStoreRecords = [response cloudStoreRecords];
  allObjectsByDatabaseIdentifier = [cloudStoreRecords allObjectsByDatabaseIdentifier];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000B0C60;
  v18[3] = &unk_100842468;
  v18[4] = self;
  v19 = identifiersCopy;
  v20 = recordsCopy;
  v21 = dCopy;
  v15 = dCopy;
  v16 = recordsCopy;
  v17 = identifiersCopy;
  [allObjectsByDatabaseIdentifier enumerateKeysAndObjectsUsingBlock:v18];
}

- (void)canSyncTransactionFromCloudKitForTransactionSourceIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    workQueue = [(PDCloudStoreContainer *)self workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B100C;
    block[3] = &unk_10083F490;
    v11 = completionCopy;
    block[4] = self;
    v10 = identifierCopy;
    dispatch_async(workQueue, block);
  }
}

- (void)canSyncTransactionToCloudKit:(id)kit forTransactionSourceIdentifier:(id)identifier completion:(id)completion
{
  kitCopy = kit;
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    workQueue = [(PDCloudStoreContainer *)self workQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000B1158;
    v12[3] = &unk_10083FD50;
    v15 = completionCopy;
    v12[4] = self;
    v13 = kitCopy;
    v14 = identifierCopy;
    dispatch_async(workQueue, v12);
  }
}

- (BOOL)_queue_canSyncTransactionToCloudKit:(id)kit forTransactionSourceIdentifier:(id)identifier
{
  kitCopy = kit;
  identifierCopy = identifier;
  if (![kitCopy hasBackingData])
  {
    goto LABEL_18;
  }

  serviceIdentifier = [kitCopy serviceIdentifier];
  v9 = [serviceIdentifier length];

  if (!v9)
  {
    goto LABEL_19;
  }

  if (![(PDApplePayCloudStoreContainer *)self _queue_isRelevantTransactionSourceIdentifier:identifierCopy])
  {
LABEL_18:
    LOBYTE(v9) = 0;
    goto LABEL_19;
  }

  dataSource = [(PDCloudStoreContainer *)self dataSource];
  serviceIdentifier2 = [kitCopy serviceIdentifier];
  v12 = [dataSource transactionArchiveForTransactionWithServiceIdentifier:serviceIdentifier2 transactionSourceIdentifier:identifierCopy];

  v13 = [v12 allArchiveLocationsWithType:0 areArchived:1];
  if (!v12)
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      serviceIdentifier3 = [kitCopy serviceIdentifier];
      v22 = 138412802;
      v23 = kitCopy;
      v24 = 2114;
      v25 = serviceIdentifier3;
      v26 = 2112;
      v27 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Error: there is no archive defined for transaction %@ (service id %{public}@) with transactionSourceIdentifier %@", &v22, 0x20u);
    }
  }

  v16 = v13 ^ 1;
  if (v12)
  {
    LOBYTE(v9) = v13 ^ 1;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  if ((v16 & 1) == 0)
  {
    containerManager = [(PDCloudStoreContainer *)self containerManager];
    v18 = [containerManager cloudStoreZonesByDatabaseIdentifierForItem:kitCopy action:1];

    if ([v18 count])
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        serviceIdentifier4 = [kitCopy serviceIdentifier];
        v20 = [v18 count];
        v22 = 138413058;
        v23 = kitCopy;
        v24 = 2114;
        v25 = serviceIdentifier4;
        v26 = 2048;
        v27 = v20;
        v28 = 2112;
        v29 = v18;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Allowing transaction %@ (service id %{public}@) to sync to cloud store since there are %lu zones associated with that transaction %@", &v22, 0x2Au);
      }

      LOBYTE(v9) = 1;
    }
  }

LABEL_19:
  return v9;
}

- (void)passDidDisappear:(id)disappear
{
  paymentPass = [disappear paymentPass];
  deviceTransactionSourceIdentifiers = [paymentPass deviceTransactionSourceIdentifiers];
  allObjects = [deviceTransactionSourceIdentifiers allObjects];

  os_unfair_lock_lock(&self->_fetchTasksLock);
  [(NSMutableDictionary *)self->_fetchTasks removeObjectsForKeys:allObjects];
  os_unfair_lock_unlock(&self->_fetchTasksLock);
}

- (void)syncTransactionsToCloudStoreOriginatedOnDevice:(unint64_t)device
{
  dataSource = [(PDCloudStoreContainer *)self dataSource];
  [dataSource syncTransactionsToCloudStoreOriginatedOnDevice:device];
}

- (void)bootstrapZoneWithName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  workQueue = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B15F8;
  block[3] = &unk_10083D320;
  v12 = nameCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = nameCopy;
  dispatch_async(workQueue, block);
}

- (void)generateRandomTransactionForTransactionSourceIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  workQueue = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B18E4;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(workQueue, block);
}

- (void)uploadTransaction:(id)transaction forTransactionSourceIdentifier:(id)identifier includeServerData:(BOOL)data completion:(id)completion
{
  transactionCopy = transaction;
  identifierCopy = identifier;
  completionCopy = completion;
  workQueue = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B1A94;
  block[3] = &unk_10083C678;
  block[4] = self;
  v18 = transactionCopy;
  dataCopy = data;
  v19 = identifierCopy;
  v20 = completionCopy;
  v14 = identifierCopy;
  v15 = completionCopy;
  v16 = transactionCopy;
  dispatch_async(workQueue, block);
}

- (void)uploadRecurringPayment:(id)payment completion:(id)completion
{
  paymentCopy = payment;
  completionCopy = completion;
  workQueue = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B23A4;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = paymentCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = paymentCopy;
  dispatch_async(workQueue, block);
}

- (void)uploadCounterpartImageData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  workQueue = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B2A08;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = dataCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dataCopy;
  dispatch_async(workQueue, block);
}

- (void)uploadPendingRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  workQueue = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B306C;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = requestCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = requestCopy;
  dispatch_async(workQueue, block);
}

- (void)populateEvents:(id)events forAccountIdentifier:(id)identifier completion:(id)completion
{
  eventsCopy = events;
  identifierCopy = identifier;
  completionCopy = completion;
  workQueue = [(PDCloudStoreContainer *)self workQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000B36F8;
  v15[3] = &unk_10083FD00;
  v16 = eventsCopy;
  selfCopy = self;
  v18 = identifierCopy;
  v19 = completionCopy;
  v12 = identifierCopy;
  v13 = completionCopy;
  v14 = eventsCopy;
  dispatch_async(workQueue, v15);
}

- (void)_handlePeerPaymentAccountChanged:(id)changed
{
  workQueue = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B3DC8;
  block[3] = &unk_10083C470;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)accountManager:(id)manager didAddAccount:(id)account
{
  accountCopy = account;
  workQueue = [(PDCloudStoreContainer *)self workQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B3F4C;
  v8[3] = &unk_10083C420;
  v9 = accountCopy;
  selfCopy = self;
  v7 = accountCopy;
  dispatch_async(workQueue, v8);
}

- (void)accountManager:(id)manager didRemoveAccount:(id)account
{
  accountCopy = account;
  workQueue = [(PDCloudStoreContainer *)self workQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B4118;
  v8[3] = &unk_10083C420;
  v9 = accountCopy;
  selfCopy = self;
  v7 = accountCopy;
  dispatch_async(workQueue, v8);
}

- (void)accountManager:(id)manager didUpdateAccount:(id)account oldAccount:(id)oldAccount
{
  accountCopy = account;
  oldAccountCopy = oldAccount;
  workQueue = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B4308;
  block[3] = &unk_10083C4C0;
  v13 = accountCopy;
  v14 = oldAccountCopy;
  selfCopy = self;
  v10 = oldAccountCopy;
  v11 = accountCopy;
  dispatch_async(workQueue, block);
}

- (void)accountManager:(id)manager sharedAccountCloudStoreChangedForAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  workQueue = [(PDCloudStoreContainer *)self workQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B44E0;
  v8[3] = &unk_10083C420;
  v8[4] = self;
  v9 = identifierCopy;
  v7 = identifierCopy;
  dispatch_async(workQueue, v8);
}

- (void)accountManager:(id)manager accountUsersChanged:(id)changed oldUsers:(id)users accountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  workQueue = [(PDCloudStoreContainer *)self workQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B46C8;
  v10[3] = &unk_10083C420;
  v10[4] = self;
  v11 = identifierCopy;
  v9 = identifierCopy;
  dispatch_async(workQueue, v10);
}

- (id)allPossibleZoneNamesForContainerDatabase:(id)database
{
  databaseCopy = database;
  v5 = objc_alloc_init(NSMutableSet);
  scope = [databaseCopy scope];
  if (scope == 3)
  {
    if (![(PKPeerPaymentAccount *)self->_peerPaymentAccount role])
    {
      associatedAccountInformation = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedAccountInformation];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000B4964;
      v11[3] = &unk_100842558;
      v12 = v5;
      selfCopy = self;
      v14 = databaseCopy;
      [associatedAccountInformation enumerateAssociatedAccountsUsingBlock:v11];
    }
  }

  else
  {
    if (scope != 2)
    {
      goto LABEL_7;
    }

    v7 = [(PDApplePayCloudStoreContainer *)self _peerPaymentZoneNamesForAccount:self->_peerPaymentAccount containerDatabase:databaseCopy];
    [v5 unionSet:v7];
  }

  v9 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccountSet:self->_accounts containerDatabase:databaseCopy];
  [v5 unionSet:v9];

LABEL_7:

  return v5;
}

- (id)allPossibleZoneNamesForContainerDatabase:(id)database itemType:(unint64_t)type
{
  databaseCopy = database;
  v7 = objc_alloc_init(NSMutableSet);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v17 = databaseCopy;
  v8 = [(PDApplePayCloudStoreContainer *)self allPossibleZoneNamesForContainerDatabase:databaseCopy];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        v18 = 0;
        [PKCloudStoreZone zoneValueForZoneName:v13 outZoneType:&v18 outAccountIdentifier:0 altDSID:0];
        if (type <= 7)
        {
          if (type > 5)
          {
            if (type == 6)
            {
              if (v18 - 3 < 4)
              {
                goto LABEL_23;
              }
            }

            else if (v18 == 7)
            {
              goto LABEL_23;
            }
          }

          else if (type == 1)
          {
            if (v18 - 1 < 8)
            {
              goto LABEL_23;
            }
          }

          else if (type == 5 && v18 <= 8 && ((1 << v18) & 0x176) != 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (type <= 9)
          {
            if (type != 8)
            {
LABEL_22:
              if (v18 != 1)
              {
                goto LABEL_24;
              }
            }

LABEL_23:
            [v7 addObject:v13];
            goto LABEL_24;
          }

          switch(type)
          {
            case 0xAuLL:
              goto LABEL_22;
            case 0xBuLL:
              if (v18 == 9)
              {
                goto LABEL_23;
              }

              break;
            case 0xCuLL:
              goto LABEL_22;
          }
        }

LABEL_24:
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v14 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v10 = v14;
    }

    while (v14);
  }

  v15 = [v7 copy];

  return v15;
}

- (id)allPossibleZoneSubscriptionsForContainerDatabase:(id)database
{
  databaseCopy = database;
  v5 = objc_alloc_init(NSMutableSet);
  if ([databaseCopy scope] == 2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(PDApplePayCloudStoreContainer *)self allPossibleZoneNamesForContainerDatabase:databaseCopy, 0];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [databaseCopy zoneForZoneName:*(*(&v15 + 1) + 8 * i)];
          v12 = [(PDApplePayCloudStoreContainer *)self subscriptionForZone:v11 inContainerDatabase:databaseCopy];
          if (v12)
          {
            [v5 addObject:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  v13 = [v5 copy];

  return v13;
}

- (id)possibleDatabaseSubscriptionForContainerDatabase:(id)database
{
  databaseCopy = database;
  if ([databaseCopy scope] == 3)
  {
    containerManager = [(PDCloudStoreContainer *)self containerManager];
    containerName = [containerManager containerName];
    identifier = [databaseCopy identifier];
    v8 = [NSString stringWithFormat:@"%@%@%@%@%@", containerName, @"-", identifier, @"-", @"database-subscription"];

    v9 = [[CKDatabaseSubscription alloc] initWithSubscriptionID:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)subscriptionForZone:(id)zone inContainerDatabase:(id)database
{
  zoneCopy = zone;
  if ([database scope] != 2)
  {
    v12 = 0;
    goto LABEL_16;
  }

  zoneID = [zoneCopy zoneID];
  zoneName = [zoneID zoneName];

  v8 = PKCloudStoreTransactionsZoneName;
  v9 = zoneName;
  v10 = v9;
  if (v9 == v8)
  {

    goto LABEL_9;
  }

  if (v9 && v8)
  {
    v11 = [v9 isEqualToString:v8];

    if ((v11 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_9:
    v13 = @"PDCloudStoreManagerTransactionZoneSubscriptionID";
    goto LABEL_12;
  }

LABEL_11:
  v13 = [NSString stringWithFormat:@"%@%@%@", v10, @"-", @"subscription"];
LABEL_12:
  v12 = 0;
  if (zoneCopy && v13)
  {
    v14 = [CKRecordZoneSubscription alloc];
    zoneID2 = [zoneCopy zoneID];
    v12 = [v14 initWithZoneID:zoneID2 subscriptionID:v13];
  }

LABEL_16:

  return v12;
}

- (id)zoneIDForSubscription:(id)subscription inContainerDatabase:(id)database
{
  subscriptionCopy = subscription;
  databaseCopy = database;
  if ([databaseCopy scope] != 2)
  {
    zoneID = 0;
    goto LABEL_13;
  }

  subscriptionID = [subscriptionCopy subscriptionID];
  v8 = subscriptionID;
  if (subscriptionID == @"PDCloudStoreManagerTransactionZoneSubscriptionID" || subscriptionID && (v9 = [(__CFString *)subscriptionID isEqualToString:@"PDCloudStoreManagerTransactionZoneSubscriptionID"], v8, v9))
  {
    v10 = PKCloudStoreTransactionsZoneName;
  }

  else
  {
    v12 = [(__CFString *)v8 rangeOfString:@"subscription"]- 1;
    if (v12 >= [(__CFString *)v8 length])
    {
LABEL_11:
      zoneID = 0;
      goto LABEL_12;
    }

    v10 = [(__CFString *)v8 substringToIndex:v12];
  }

  v13 = v10;
  if (!v10)
  {
    goto LABEL_11;
  }

  v14 = [databaseCopy zoneForZoneName:v10];
  zoneID = [v14 zoneID];

LABEL_12:
LABEL_13:

  return zoneID;
}

- (id)cloudStoreZonesForItem:(id)item action:(unint64_t)action inContainerDatabase:(id)database
{
  itemCopy = item;
  databaseCopy = database;
  itemType = [itemCopy itemType];
  v11 = 0;
  if (itemType > 8)
  {
    if ((itemType - 9) >= 2)
    {
      if (itemType == 11)
      {
        v23 = [NSSet alloc];
        v24 = PKCloudStoreZoneTypeToString();
        v14 = [v23 initWithObjects:{v24, 0}];

LABEL_20:
        containerManager = [(PDCloudStoreContainer *)self containerManager];
        v11 = [containerManager cloudStoreZonesFromZoneNames:v14 inContainerDatabase:databaseCopy];
LABEL_21:

        goto LABEL_122;
      }

      if (itemType != 12)
      {
        goto LABEL_122;
      }
    }

    peerPaymentAccount = self->_peerPaymentAccount;
    if (!peerPaymentAccount)
    {
      v11 = 0;
      goto LABEL_122;
    }

    v14 = [(PDApplePayCloudStoreContainer *)self _peerPaymentZoneNamesForAccount:peerPaymentAccount containerDatabase:databaseCopy];
    goto LABEL_20;
  }

  if (itemType > 6)
  {
    if (itemType == 7)
    {
      v20 = itemCopy;
      v21 = -[PDApplePayCloudStoreContainer _accountZoneNamesForAccount:itemType:containerDatabase:](self, "_accountZoneNamesForAccount:itemType:containerDatabase:", v20, [v20 itemType], databaseCopy);

      containerManager2 = [(PDCloudStoreContainer *)self containerManager];
      v11 = [containerManager2 cloudStoreZonesFromZoneNames:v21 inContainerDatabase:databaseCopy];

      goto LABEL_122;
    }

    v14 = itemCopy;
    containerManager = [v14 zoneName];
    if (containerManager)
    {
      containerManager3 = [(PDCloudStoreContainer *)self containerManager];
      v17 = [NSSet setWithObject:containerManager];
      v11 = [containerManager3 cloudStoreZonesFromZoneNames:v17 inContainerDatabase:databaseCopy];
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_21;
  }

  if (itemType != 1)
  {
    if (itemType != 5)
    {
      goto LABEL_122;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = itemCopy;
    }

    else
    {
      v12 = 0;
    }

    identifier = [v12 identifier];
    accountIdentifier = [v12 accountIdentifier];
    altDSID = [v12 altDSID];
    obj = identifier;
    v129 = [[PKCloudStoreZoneQueryConfiguration alloc] initWithItemType:objc_msgSend(itemCopy recordName:{"itemType"), identifier}];
    [v129 setAccountIdentifier:accountIdentifier];
    dataSource = [(PDCloudStoreContainer *)self dataSource];
    v33 = [dataSource accountWithIdentifier:accountIdentifier];

    v122 = v33;
    type = [v33 type];
    if (type == 1)
    {
      v36 = 2;
    }

    else
    {
      if (type != 3)
      {
        v35 = v129;
        if (type != 4)
        {
LABEL_59:
          actionCopy = action;
          v128 = v12;
          [v35 setAltDSID:altDSID];
          if (altDSID && !PKAltDSIDIsCurrentUser())
          {
            dataSource2 = [(PDCloudStoreContainer *)self dataSource];
            v55 = accountIdentifier;
            v61 = [dataSource2 transactionSourceIdentifierForAccountUserAltDSID:altDSID accountIdentifier:accountIdentifier];
          }

          else
          {
            dataSource3 = [(PDCloudStoreContainer *)self dataSource];
            v55 = accountIdentifier;
            dataSource2 = [dataSource3 passUniqueIdentifierWithAssociatedAccountIdentifier:accountIdentifier];

            dataSource4 = [(PDCloudStoreContainer *)self dataSource];
            v58 = [dataSource4 transactionSourceIdentifiersForPassUniqueIdentifier:dataSource2];
            [v58 anyObject];
            v60 = v59 = altDSID;

            v61 = v60;
            altDSID = v59;

            v35 = v129;
          }

          [v35 setTransactionSourceIdentifier:v61];
          v11 = -[PDApplePayCloudStoreContainer cloudStoreZonesForItemType:configuration:action:inContainerDatabase:](self, "cloudStoreZonesForItemType:configuration:action:inContainerDatabase:", [itemCopy itemType], v35, actionCopy, databaseCopy);
          if ([v11 count])
          {
            v62 = v55;
            action = actionCopy;
LABEL_82:
            if (![v11 count])
            {
              v76 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
              {
                [databaseCopy identifier];
                v121 = altDSID;
                v78 = v77 = v61;
                *buf = 138412546;
                v136 = itemCopy;
                v137 = 2112;
                v138 = v78;
                _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Could not find cloud store zones for account event %@ in container database %@", buf, 0x16u);

                v61 = v77;
                altDSID = v121;
              }

              v35 = v129;
            }

            goto LABEL_122;
          }

          v118 = v61;
          dataSource5 = [(PDCloudStoreContainer *)self dataSource];
          v62 = v55;
          v64 = [dataSource5 accountWithIdentifier:v55];

          v115 = v64;
          isSharedAccount = [v64 isSharedAccount];
          v120 = altDSID;
          if (altDSID && isSharedAccount && v62)
          {
            dataSource6 = [(PDCloudStoreContainer *)self dataSource];
            v67 = [dataSource6 accountUserWithAltDSID:altDSID accountIdentifier:v62];

            action = actionCopy;
            if (!v67)
            {
              v61 = v118;
              v70 = v115;
              goto LABEL_79;
            }

            v111 = v67;
            containerManager5 = -[PDApplePayCloudStoreContainer _accountZoneNamesForAccountUser:itemType:containerDatabase:](self, "_accountZoneNamesForAccountUser:itemType:containerDatabase:", v67, [itemCopy itemType], databaseCopy);
            containerManager4 = [(PDCloudStoreContainer *)self containerManager];
            v109 = [containerManager4 cloudStoreZonesFromZoneNames:containerManager5 inContainerDatabase:databaseCopy];

            v11 = containerManager4;
            v61 = v118;
            v70 = v115;
          }

          else
          {
            action = actionCopy;
            if ([v11 count])
            {
              v61 = v118;
              v35 = v129;
              v70 = v115;
              goto LABEL_81;
            }

            v70 = v115;
            v61 = v118;
            if (!v115)
            {
LABEL_80:
              v35 = v129;
LABEL_81:

              goto LABEL_82;
            }

            v71 = -[PDApplePayCloudStoreContainer _accountZoneNamesForAccount:itemType:containerDatabase:](self, "_accountZoneNamesForAccount:itemType:containerDatabase:", v115, [itemCopy itemType], databaseCopy);
            containerManager5 = [(PDCloudStoreContainer *)self containerManager];
            v111 = v71;
            v109 = [containerManager5 cloudStoreZonesFromZoneNames:v71 inContainerDatabase:databaseCopy];
            altDSID = v120;
          }

          v11 = v109;
          v67 = v111;
LABEL_79:

          goto LABEL_80;
        }

        v36 = 3;
LABEL_58:
        [v35 setAccountType:v36];
        goto LABEL_59;
      }

      v36 = 4;
    }

    v35 = v129;
    goto LABEL_58;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = itemCopy;
    serviceIdentifier = [v18 serviceIdentifier];
  }

  else
  {
    v18 = 0;
    serviceIdentifier = 0;
  }

  accountIdentifier2 = [v18 accountIdentifier];
  accountType = [v18 accountType];
  transactionSourceIdentifier = [v18 transactionSourceIdentifier];
  if (accountIdentifier2)
  {
    if (accountType)
    {
      v28 = accountType;
    }

    else
    {
      v28 = 2;
    }
  }

  else
  {
    v37 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v136 = itemCopy;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Assuming the item is for the peer payment account since the account identifier wasnt defined %@", buf, 0xCu);
    }

    accountIdentifier2 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount identifier];
    v28 = 1;
  }

  v127 = v18;
  selfCopy = self;
  v119 = v28;
  if (transactionSourceIdentifier)
  {
    goto LABEL_98;
  }

  if ((v28 - 2) >= 3)
  {
    if (v28 != 1)
    {
      transactionSourceIdentifier = 0;
      goto LABEL_98;
    }

    actionCopy2 = action;
    v38 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount peerPaymentAccountWithIdentifier:accountIdentifier2];
    v39 = self->_peerPaymentAccount;
    dataSource7 = [(PDCloudStoreContainer *)self dataSource];
    v41 = dataSource7;
    obja = v38;
    if (v38 == v39)
    {
      associatedPassUniqueID = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassUniqueID];
      [v41 transactionSourceIdentifiersForPassUniqueIdentifier:associatedPassUniqueID];
      v80 = associatedPassUniqueID2 = v41;
      anyObject = [v80 anyObject];

      transactionSourceIdentifier = anyObject;
    }

    else
    {
      [dataSource7 transactionSourceIdentifierForPeerPaymentAccountIdentifier:accountIdentifier2];
      transactionSourceIdentifier = associatedPassUniqueID2 = v41;
    }

    action = actionCopy2;
LABEL_96:

    goto LABEL_97;
  }

  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  obja = self->_accounts;
  v43 = [(NSSet *)obja countByEnumeratingWithState:&v131 objects:v143 count:16];
  if (!v43)
  {
    transactionSourceIdentifier = 0;
    goto LABEL_97;
  }

  v44 = v43;
  actionCopy3 = action;
  v117 = serviceIdentifier;
  v45 = *v132;
  while (2)
  {
    for (i = 0; i != v44; i = i + 1)
    {
      if (*v132 != v45)
      {
        objc_enumerationMutation(obja);
      }

      v47 = *(*(&v131 + 1) + 8 * i);
      accountIdentifier3 = [v47 accountIdentifier];
      v49 = accountIdentifier2;
      v50 = v49;
      if (accountIdentifier3 == v49)
      {
        v51 = accountIdentifier2;

LABEL_75:
        associatedPassUniqueID2 = [v47 associatedPassUniqueID];
        if (associatedPassUniqueID2)
        {
          dataSource8 = [(PDCloudStoreContainer *)selfCopy dataSource];
          v73 = [dataSource8 transactionSourceIdentifiersForPassUniqueIdentifier:associatedPassUniqueID2];
          [v73 anyObject];
          v75 = v74 = associatedPassUniqueID2;

          action = actionCopy3;
          v18 = v127;
          accountIdentifier2 = v51;
          self = selfCopy;
          transactionSourceIdentifier = v75;
          associatedPassUniqueID2 = v74;
          serviceIdentifier = v117;
        }

        else
        {
          serviceIdentifier = v117;
          action = actionCopy3;
          v18 = v127;
          accountIdentifier2 = v51;
          if (v119 != 3)
          {
            transactionSourceIdentifier = 0;
            self = selfCopy;
            goto LABEL_96;
          }

          self = selfCopy;
          dataSource8 = [(PDCloudStoreContainer *)selfCopy dataSource];
          transactionSourceIdentifier = [dataSource8 transactionSourceIdentifierForAccountIdentifier:v50];
        }

        goto LABEL_96;
      }

      v51 = accountIdentifier2;
      if (accountIdentifier2 && accountIdentifier3)
      {
        v52 = [accountIdentifier3 isEqualToString:v49];

        if (v52)
        {
          goto LABEL_75;
        }
      }

      else
      {
      }

      accountIdentifier2 = v51;
      self = selfCopy;
    }

    v44 = [(NSSet *)obja countByEnumeratingWithState:&v131 objects:v143 count:16];
    if (v44)
    {
      continue;
    }

    break;
  }

  transactionSourceIdentifier = 0;
  action = actionCopy3;
  serviceIdentifier = v117;
  v18 = v127;
LABEL_97:

  v28 = v119;
LABEL_98:
  altDSID2 = [v18 altDSID];
  v83 = transactionSourceIdentifier;
  v84 = [[PKCloudStoreZoneQueryConfiguration alloc] initWithItemType:objc_msgSend(itemCopy recordName:{"itemType"), serviceIdentifier}];
  [v84 setAccountIdentifier:accountIdentifier2];
  [v84 setAccountType:v28];
  v123 = v83;
  [v84 setTransactionSourceIdentifier:v83];
  objb = altDSID2;
  [v84 setAltDSID:altDSID2];
  -[PDApplePayCloudStoreContainer cloudStoreZonesForItemType:configuration:action:inContainerDatabase:](self, "cloudStoreZonesForItemType:configuration:action:inContainerDatabase:", [itemCopy itemType], v84, action, databaseCopy);
  v11 = v85 = v28;
  if ([v11 count])
  {
    v86 = altDSID2;
    v87 = v127;
    goto LABEL_117;
  }

  v87 = v127;
  if ((v85 - 2) < 3)
  {
    actionCopy4 = action;
    dataSource9 = [(PDCloudStoreContainer *)self dataSource];
    v89 = [dataSource9 accountWithIdentifier:accountIdentifier2];

    v112 = v89;
    if ([v89 isSharedAccount])
    {
      v86 = objb;
      action = actionCopy4;
      if (accountIdentifier2 && objb)
      {
        dataSource10 = [(PDCloudStoreContainer *)self dataSource];
        v110 = accountIdentifier2;
        v91 = [dataSource10 accountUserWithAltDSID:objb accountIdentifier:accountIdentifier2];

        if (v91)
        {
          v92 = -[PDApplePayCloudStoreContainer _accountZoneNamesForAccountUser:itemType:containerDatabase:](self, "_accountZoneNamesForAccountUser:itemType:containerDatabase:", v91, [itemCopy itemType], databaseCopy);
          containerManager6 = [(PDCloudStoreContainer *)self containerManager];
          v94 = [containerManager6 cloudStoreZonesFromZoneNames:v92 inContainerDatabase:databaseCopy];

          v11 = v94;
        }

        accountIdentifier2 = v110;
        v87 = v127;
        self = selfCopy;
        v86 = objb;
      }
    }

    else
    {
      v86 = objb;
      action = actionCopy4;
    }

    if ([v11 count])
    {
      goto LABEL_115;
    }

    v95 = v112;
    if (v112)
    {
      selfCopy3 = self;
      v97 = accountIdentifier2;
      v98 = serviceIdentifier;
      action = actionCopy4;
      v99 = -[PDApplePayCloudStoreContainer _accountZoneNamesForAccount:itemType:containerDatabase:](selfCopy3, "_accountZoneNamesForAccount:itemType:containerDatabase:", v112, [itemCopy itemType], databaseCopy);
      goto LABEL_114;
    }
  }

  else
  {
    if (v85 != 1)
    {
      v86 = objb;
      goto LABEL_117;
    }

    v95 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount peerPaymentAccountWithIdentifier:accountIdentifier2];
    if (v95)
    {
      selfCopy3 = self;
      v97 = accountIdentifier2;
      v98 = serviceIdentifier;
      v112 = v95;
      v99 = [(PDApplePayCloudStoreContainer *)selfCopy3 _peerPaymentZoneNamesForAccount:v95 containerDatabase:databaseCopy];
LABEL_114:
      v100 = v99;
      containerManager7 = [(PDCloudStoreContainer *)selfCopy3 containerManager];
      v102 = [containerManager7 cloudStoreZonesFromZoneNames:v100 inContainerDatabase:databaseCopy];

      v11 = v102;
      serviceIdentifier = v98;
      accountIdentifier2 = v97;
      v87 = v127;
      self = selfCopy;
      v86 = objb;
LABEL_115:
      v95 = v112;
    }

    else
    {
      v86 = objb;
    }
  }

LABEL_117:
  if (![v11 count])
  {
    v103 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [databaseCopy identifier];
      PKPaymentTransactionAccountTypeToString();
      v106 = v105 = accountIdentifier2;
      *buf = 138413058;
      v136 = identifier2;
      v137 = 2112;
      v138 = v105;
      v139 = 2112;
      v140 = v106;
      v141 = 2112;
      v142 = v127;
      _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "No cloud store zones for transaction in container scope %@ with account identifier %@, accountType %@, %@", buf, 0x2Au);

      accountIdentifier2 = v105;
      self = selfCopy;

      v86 = objb;
    }

    v87 = v127;
  }

LABEL_122:
  v107 = [(PDApplePayCloudStoreContainer *)self filterCloudStoreZones:v11 action:action inContainerDatabase:databaseCopy];

  return v107;
}

- (id)filterCloudStoreZones:(id)zones action:(unint64_t)action inContainerDatabase:(id)database
{
  zonesCopy = zones;
  databaseCopy = database;
  v27 = objc_alloc_init(NSMutableSet);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = zonesCopy;
  v8 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v33;
    *&v9 = 138412802;
    v26 = v9;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        zoneName = [v13 zoneName];
        zoneType = [v13 zoneType];
        if (zoneType > 9)
        {
LABEL_23:
          if (zoneType)
          {
            goto LABEL_31;
          }

          goto LABEL_27;
        }

        if (((1 << zoneType) & 0x386) != 0)
        {
          if (([databaseCopy scope] | 2) != 3)
          {
            goto LABEL_31;
          }

          goto LABEL_27;
        }

        if (((1 << zoneType) & 0x60) != 0)
        {
          v30 = 0;
          v31 = 0;
          [PKCloudStoreZone zoneValueForZoneName:zoneName outZoneType:0 outAccountIdentifier:&v31 altDSID:&v30];
          v16 = v31;
          v17 = v30;
          scope = [databaseCopy scope];
          if ((scope - 2) >= 2)
          {
            if (scope != 1)
            {
              goto LABEL_30;
            }

LABEL_26:

            goto LABEL_27;
          }

          if (!action)
          {
            goto LABEL_26;
          }

          if (action != 3 || [databaseCopy scope] == 2)
          {
LABEL_30:

LABEL_31:
            [v27 addObject:v13];
            goto LABEL_32;
          }

          v19 = PKAltDSIDIsCurrentUser();

          if (v19)
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (zoneType != 3)
          {
            goto LABEL_23;
          }

          scope2 = [databaseCopy scope];
          if (scope2 != 1 && (scope2 != 3 || action > 3 || action == 2))
          {
            goto LABEL_31;
          }
        }

LABEL_27:
        v21 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = PDCloudStoreZoneActionToString(action);
          identifier = [databaseCopy identifier];
          *buf = v26;
          v37 = v13;
          v38 = 2112;
          v39 = v22;
          v40 = 2112;
          v41 = identifier;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Filtering zone %@ for action %@ in container %@", buf, 0x20u);
        }

LABEL_32:
      }

      v10 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v10);
  }

  v24 = [v27 copy];

  return v24;
}

- (id)cloudStoreZonesForItemType:(unint64_t)type configuration:(id)configuration action:(unint64_t)action inContainerDatabase:(id)database
{
  configurationCopy = configuration;
  databaseCopy = database;
  recordName = [configurationCopy recordName];
  v13 = recordName;
  v14 = 0;
  if (type > 8)
  {
    if (type - 9 < 2)
    {
      goto LABEL_11;
    }

    if (type == 11)
    {
      v32 = [NSSet alloc];
      v33 = PKCloudStoreZoneTypeToString();
      v22 = [v32 initWithObjects:{v33, 0}];

      goto LABEL_27;
    }

    if (type == 12)
    {
LABEL_11:
      peerPaymentAccount = self->_peerPaymentAccount;
      if (peerPaymentAccount)
      {
        v22 = [(PDApplePayCloudStoreContainer *)self _peerPaymentZoneNamesForAccount:peerPaymentAccount containerDatabase:databaseCopy];
LABEL_27:
        containerManager = [(PDCloudStoreContainer *)self containerManager];
        v14 = [containerManager cloudStoreZonesFromZoneNames:v22 inContainerDatabase:databaseCopy];

        goto LABEL_50;
      }

      v14 = 0;
    }

LABEL_50:
    v24 = v13;
    goto LABEL_51;
  }

  if (type > 6)
  {
    if (type == 7)
    {
      if (recordName)
      {
        v27 = [PKAccount accountIdentifierFromRecordName:recordName];
        dataSource = [(PDCloudStoreContainer *)self dataSource];
        v29 = [dataSource accountWithIdentifier:v27];

        v30 = 0;
        if (![0 count] && v29)
        {
          v30 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccount:v29 itemType:7 containerDatabase:databaseCopy];
        }

        if ([v30 count])
        {
          containerManager2 = [(PDCloudStoreContainer *)self containerManager];
          v14 = [containerManager2 cloudStoreZonesFromZoneNames:v30 inContainerDatabase:databaseCopy];
        }

        else
        {
          v14 = 0;
        }

        goto LABEL_47;
      }

      v38 = [(PDApplePayCloudStoreContainer *)self allPossibleZoneNamesForContainerDatabase:databaseCopy itemType:7];
      containerManager3 = [(PDCloudStoreContainer *)self containerManager];
      v40 = [containerManager3 cloudStoreZonesFromZoneNames:v38 inContainerDatabase:databaseCopy];
    }

    else if (recordName)
    {
      v14 = 0;
LABEL_47:
      v59 = [PKCloudStoreZoneShareLock zoneNameFromRecordName:v13];
      if (v59)
      {
        containerManager4 = [(PDCloudStoreContainer *)self containerManager];
        v61 = [NSSet setWithObject:v59];
        v62 = [containerManager4 cloudStoreZonesFromZoneNames:v61 inContainerDatabase:databaseCopy];

        v14 = v62;
      }

      goto LABEL_50;
    }

    v41 = [(PDApplePayCloudStoreContainer *)self allPossibleZoneNamesForContainerDatabase:databaseCopy itemType:type];
    containerManager5 = [(PDCloudStoreContainer *)self containerManager];
    v14 = [containerManager5 cloudStoreZonesFromZoneNames:v41 inContainerDatabase:databaseCopy];

LABEL_33:
    v24 = 0;
    goto LABEL_51;
  }

  if (type != 1)
  {
    if (type == 5)
    {
      if (recordName)
      {
        v15 = [PKAccountEvent eventIdentifierFromRecordName:recordName];
        dataSource2 = [(PDCloudStoreContainer *)self dataSource];
        v17 = [dataSource2 accountEventWithIdentifier:v15];

        accountIdentifier = [v17 accountIdentifier];
        v19 = accountIdentifier;
        if (accountIdentifier)
        {
          accountIdentifier2 = accountIdentifier;
        }

        else
        {
          accountIdentifier2 = [configurationCopy accountIdentifier];
        }

        v65 = accountIdentifier2;
        actionCopy = action;

        altDSID = [v17 altDSID];
        v67 = altDSID;
        v143 = v17;
        v147 = v15;
        if (altDSID)
        {
          altDSID2 = altDSID;
        }

        else
        {
          altDSID2 = [configurationCopy altDSID];
        }

        v69 = altDSID2;

        dataSource3 = [(PDCloudStoreContainer *)self dataSource];
        v71 = [dataSource3 accountWithIdentifier:v65];

        if ([v71 isSharedAccount] && v65 && v69)
        {
          dataSource4 = [(PDCloudStoreContainer *)self dataSource];
          zoneName2 = [dataSource4 accountUserWithAltDSID:v69 accountIdentifier:v65];

          v74 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccountUser:zoneName2 itemType:5 containerDatabase:databaseCopy];
          v75 = [v74 mutableCopy];

          zoneName = [configurationCopy zoneName];
          [v75 pk_safelyAddObject:zoneName];
        }

        else
        {
          v75 = 0;
          if ([0 count] || !v71)
          {
LABEL_66:
            if ([v75 count])
            {
              containerManager6 = [(PDCloudStoreContainer *)self containerManager];
              v14 = [containerManager6 cloudStoreZonesFromZoneNames:v75 inContainerDatabase:databaseCopy];
            }

            else
            {
              v14 = 0;
            }

            v24 = v13;
            action = actionCopy;
            goto LABEL_51;
          }

          v77 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccount:v71 itemType:5 containerDatabase:databaseCopy];
          v75 = [v77 mutableCopy];

          zoneName2 = [configurationCopy zoneName];
          [v75 pk_safelyAddObject:zoneName2];
        }

        goto LABEL_66;
      }

      selfCopy2 = self;
      v36 = databaseCopy;
      v37 = 5;
      goto LABEL_32;
    }

    goto LABEL_50;
  }

  if (!recordName)
  {
    selfCopy2 = self;
    v36 = databaseCopy;
    v37 = 1;
LABEL_32:
    v43 = [(PDApplePayCloudStoreContainer *)selfCopy2 allPossibleZoneNamesForContainerDatabase:v36 itemType:v37];
    containerManager7 = [(PDCloudStoreContainer *)self containerManager];
    v14 = [containerManager7 cloudStoreZonesFromZoneNames:v43 inContainerDatabase:databaseCopy];

    goto LABEL_33;
  }

  v23 = +[PKPaymentTransaction recordNamePrefix];
  v24 = [v13 stringByReplacingOccurrencesOfString:v23 withString:&stru_10086D930];

  transactionSourceIdentifier = [configurationCopy transactionSourceIdentifier];
  if (transactionSourceIdentifier)
  {
    v26 = transactionSourceIdentifier;
  }

  else
  {
    dataSource5 = [(PDCloudStoreContainer *)self dataSource];
    accountIdentifier3 = [configurationCopy accountIdentifier];
    v26 = [dataSource5 transactionSourceIdentifierForTransactionWithServiceIdentifier:v24 accountIdentifier:accountIdentifier3 accountType:{objc_msgSend(configurationCopy, "accountType")}];

    if (!v26)
    {
      dataSource6 = [(PDCloudStoreContainer *)self dataSource];
      altDSID3 = [configurationCopy altDSID];
      accountIdentifier4 = [configurationCopy accountIdentifier];
      v26 = [dataSource6 transactionSourceIdentifierForAccountUserAltDSID:altDSID3 accountIdentifier:accountIdentifier4];
    }
  }

  dataSource7 = [(PDCloudStoreContainer *)self dataSource];
  v51 = [dataSource7 transactionSourceTypeForTransactionSourceIdentifier:v26];

  v14 = 0;
  if (v51 > 1)
  {
    if (v51 == 2)
    {
      dataSource8 = [(PDCloudStoreContainer *)self dataSource];
      v53 = [dataSource8 accountUserWithTransactionSourceIdentifier:v26];

      if (!v53)
      {
        goto LABEL_76;
      }

      v58 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccountUser:v53 itemType:1 containerDatabase:databaseCopy];
    }

    else
    {
      if (v51 != 3)
      {
        goto LABEL_123;
      }

      dataSource9 = [(PDCloudStoreContainer *)self dataSource];
      v53 = [dataSource9 accountWithTransactionSourceIdentifier:v26];

      if (!v53)
      {
        goto LABEL_76;
      }

      v58 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccount:v53 itemType:1 containerDatabase:databaseCopy];
    }

    v88 = v58;
    [(PDCloudStoreContainer *)self containerManager];
    v90 = v89 = action;
    v14 = [v90 cloudStoreZonesFromZoneNames:v88 inContainerDatabase:databaseCopy];

    action = v89;
    goto LABEL_77;
  }

  if (!v51)
  {
    actionCopy2 = action;
    dataSource10 = [(PDCloudStoreContainer *)self dataSource];
    v80 = [dataSource10 passUniqueIdentifierForTransactionSourceIdentifier:v26];

    if (v80)
    {
      goto LABEL_80;
    }

    *buf = 0;
    dataSource11 = [(PDCloudStoreContainer *)self dataSource];
    v157 = 0;
    v158 = 0;
    v82 = [dataSource11 broadwayOrSurfTransactionSourceIdentifierForAmbiguousServiceIdentifier:v24 transactionAccountIdentifier:&v158 transactionAccountType:buf transactionAltDSID:&v157];
    v83 = v158;
    v84 = v157;

    if (v82)
    {
      [(PDCloudStoreContainer *)self dataSource];
      v144 = v83;
      v86 = v85 = v84;
      v80 = [v86 passUniqueIdentifierForTransactionSourceIdentifier:v82];

      v84 = v85;
      v83 = v144;
      [configurationCopy setAccountIdentifier:v144];
      [configurationCopy setAccountType:*buf];
      [configurationCopy setAltDSID:v84];
    }

    else
    {
      v80 = 0;
    }

    if (v80)
    {
LABEL_80:
      associatedPassUniqueID = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassUniqueID];
      v92 = v80;
      v93 = associatedPassUniqueID;
      v94 = v93;
      v145 = v92;
      if (v92 == v93)
      {

        action = actionCopy2;
      }

      else
      {
        action = actionCopy2;
        if (!v93)
        {

          goto LABEL_88;
        }

        v95 = v92;
        v96 = [v92 isEqualToString:v93];

        if (!v96)
        {
LABEL_88:
          accountIdentifier5 = [configurationCopy accountIdentifier];
          altDSID4 = [configurationCopy altDSID];
          v101 = altDSID4;
          if (altDSID4)
          {
            v102 = altDSID4;
          }

          else
          {
            v102 = PKCurrentUserAltDSID();
          }

          containerManager12 = v102;

          accounts = self->_accounts;
          v155[0] = _NSConcreteStackBlock;
          v155[1] = 3221225472;
          v155[2] = sub_1000B7228;
          v155[3] = &unk_100842580;
          v156 = accountIdentifier5;
          v104 = accounts;
          v97 = v156;
          v105 = [(NSSet *)v104 pk_anyObjectPassingTest:v155];
          v139 = v105;
          if ([v105 isSharedAccount] && v97 && containerManager12)
          {
            v136 = v97;
            dataSource12 = [(PDCloudStoreContainer *)self dataSource];
            v107 = [dataSource12 transactionArchiveForTransactionWithServiceIdentifier:v24 transactionSourceIdentifier:v26];

            obj = v107;
            locations = [(NSSet *)v107 locations];
            containerManager11 = [locations pk_setByApplyingBlock:&stru_1008425C0];

            containerManager8 = [(PDCloudStoreContainer *)self containerManager];
            v14 = [containerManager8 cloudStoreZonesFromZoneNames:containerManager11 inContainerDatabase:databaseCopy];

            if (![v14 count])
            {
              dataSource13 = [(PDCloudStoreContainer *)self dataSource];
              v112 = [dataSource13 accountUserWithAltDSID:containerManager12 accountIdentifier:v136];

              if (v112)
              {
                v141 = v112;
                v113 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccountUser:v112 itemType:1 containerDatabase:databaseCopy];
                containerManager9 = [(PDCloudStoreContainer *)self containerManager];
                v137 = [containerManager9 cloudStoreZonesFromZoneNames:v113 inContainerDatabase:databaseCopy];

                v112 = v141;
                v14 = v137;
              }
            }

LABEL_118:
            v97 = v136;
          }

          else
          {
            v115 = [0 count];
            if (!v105 || v115)
            {
              v14 = 0;
              if ([0 count])
              {
LABEL_121:

                goto LABEL_122;
              }

              v153 = 0u;
              v154 = 0u;
              v151 = 0u;
              v152 = 0u;
              obj = self->_accounts;
              v138 = [(NSSet *)obj countByEnumeratingWithState:&v151 objects:v168 count:16];
              if (v138)
              {
                v142 = v26;
                v135 = *v152;
                v136 = v97;
                while (2)
                {
                  for (i = 0; i != v138; i = i + 1)
                  {
                    v121 = containerManager12;
                    if (*v152 != v135)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v122 = *(*(&v151 + 1) + 8 * i);
                    associatedPassUniqueID2 = [v122 associatedPassUniqueID];
                    v124 = v145;
                    v125 = associatedPassUniqueID2;
                    v126 = v125;
                    if (v124 == v125)
                    {

LABEL_117:
                      v128 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccount:v122 itemType:1 containerDatabase:databaseCopy];
                      containerManager11 = [v128 mutableCopy];

                      zoneName3 = [configurationCopy zoneName];
                      [containerManager11 pk_safelyAddObject:zoneName3];

                      containerManager10 = [(PDCloudStoreContainer *)self containerManager];
                      v14 = [containerManager10 cloudStoreZonesFromZoneNames:containerManager11 inContainerDatabase:databaseCopy];

                      v26 = v142;
                      containerManager12 = v121;
                      goto LABEL_118;
                    }

                    if (v145 && v125)
                    {
                      v127 = [v124 isEqualToString:v125];

                      if (v127)
                      {
                        goto LABEL_117;
                      }
                    }

                    else
                    {
                    }

                    containerManager12 = v121;
                  }

                  v138 = [(NSSet *)obj countByEnumeratingWithState:&v151 objects:v168 count:16];
                  if (v138)
                  {
                    continue;
                  }

                  break;
                }

                v14 = 0;
                action = actionCopy2;
                v26 = v142;
                v97 = v136;
              }

              else
              {
                v14 = 0;
              }

LABEL_120:

              goto LABEL_121;
            }

            [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccount:v105 itemType:1 containerDatabase:databaseCopy];
            v117 = v116 = v97;
            v118 = [v117 mutableCopy];

            zoneName4 = [configurationCopy zoneName];
            [(NSSet *)v118 pk_safelyAddObject:zoneName4];

            v97 = v116;
            containerManager11 = [(PDCloudStoreContainer *)self containerManager];
            obj = v118;
            v14 = [containerManager11 cloudStoreZonesFromZoneNames:v118 inContainerDatabase:databaseCopy];
          }

          action = actionCopy2;
          goto LABEL_120;
        }
      }

      v97 = [(PDApplePayCloudStoreContainer *)self _peerPaymentZoneNamesForAccount:self->_peerPaymentAccount containerDatabase:databaseCopy];
      containerManager12 = [(PDCloudStoreContainer *)self containerManager];
      v14 = [containerManager12 cloudStoreZonesFromZoneNames:v97 inContainerDatabase:databaseCopy];
LABEL_122:

      goto LABEL_123;
    }

    v145 = 0;
    action = actionCopy2;
    goto LABEL_88;
  }

  if (v51 == 1)
  {
    dataSource14 = [(PDCloudStoreContainer *)self dataSource];
    v53 = [dataSource14 peerPaymentAccountForTransactionSourceIdentifier:v26];

    if (v53)
    {
      [(PDApplePayCloudStoreContainer *)self _peerPaymentZoneNamesForAccount:v53 containerDatabase:databaseCopy];
      v55 = v54 = action;
      containerManager13 = [(PDCloudStoreContainer *)self containerManager];
      v14 = [containerManager13 cloudStoreZonesFromZoneNames:v55 inContainerDatabase:databaseCopy];

      action = v54;
LABEL_77:

      goto LABEL_123;
    }

LABEL_76:
    v14 = 0;
    goto LABEL_77;
  }

LABEL_123:
  if (![v14 count])
  {
    v131 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
    {
      PKCloudStoreItemTypeToString();
      v132 = v150 = action;
      identifier = [databaseCopy identifier];
      PKTransactionSourceTypeToString();
      v134 = v133 = v26;
      *buf = 138544386;
      *&buf[4] = v132;
      v160 = 2114;
      v161 = v24;
      v162 = 2112;
      v163 = identifier;
      v164 = 2112;
      v165 = v133;
      v166 = 2114;
      v167 = v134;
      _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "No zones for itemType %{public}@, recordName %{public}@, containerDatabaseScope %@, transactionSourceIdentifier %@, transactionSourceType %{public}@", buf, 0x34u);

      v26 = v133;
      action = v150;
    }
  }

LABEL_51:
  v63 = [(PDApplePayCloudStoreContainer *)self filterCloudStoreZones:v14 action:action inContainerDatabase:databaseCopy];

  return v63;
}

- (void)_queue_processPeerPaymentAccountChangeWithOldAccount:(id)account newPeerPaymentAccount:(id)paymentAccount
{
  paymentAccountCopy = paymentAccount;
  accountCopy = account;
  containerManager = [(PDCloudStoreContainer *)self containerManager];
  v13 = [containerManager databaseForScope:2];

  v9 = [(PDApplePayCloudStoreContainer *)self _peerPaymentZoneNamesForAccount:paymentAccountCopy containerDatabase:v13];

  v10 = [(PDApplePayCloudStoreContainer *)self _peerPaymentZoneNamesForAccount:accountCopy containerDatabase:v13];

  v11 = [v10 mutableCopy];
  [v11 minusSet:v9];
  v12 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccountSet:self->_accounts containerDatabase:v13];
  [v11 minusSet:v12];
  [(PDApplePayCloudStoreContainer *)self _queue_updateWithPossibleNewZonesToAdd:v9 orphanedZones:v11 containerDatabase:v13];
}

- (void)_queue_processAccountChangeWithOldAccounts:(id)accounts newAccounts:(id)newAccounts
{
  newAccountsCopy = newAccounts;
  accountsCopy = accounts;
  containerManager = [(PDCloudStoreContainer *)self containerManager];
  v13 = [containerManager databaseForScope:2];

  v9 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccountSet:newAccountsCopy containerDatabase:v13];

  v10 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccountSet:accountsCopy containerDatabase:v13];

  v11 = [v10 mutableCopy];
  [v11 minusSet:v9];
  v12 = [(PDApplePayCloudStoreContainer *)self _peerPaymentZoneNamesForAccount:self->_peerPaymentAccount containerDatabase:v13];
  [v11 minusSet:v12];
  [(PDApplePayCloudStoreContainer *)self _queue_updateWithPossibleNewZonesToAdd:v9 orphanedZones:v11 containerDatabase:v13];
}

- (void)_queue_processSharedAccountCloudStoreChangeWithOldSharedAccountCloudStore:(id)store newSharedAccountCloudStore:(id)cloudStore
{
  storeCopy = store;
  cloudStoreCopy = cloudStore;
  containerManager = [(PDCloudStoreContainer *)self containerManager];
  v9 = [containerManager databaseForScope:2];

  v10 = [cloudStoreCopy sharedAccountCloudStoreZonesWithAccess:1];
  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = storeCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Old shared account cloud store %@: ", &v13, 0xCu);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = cloudStoreCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "New shared account cloud store %@: ", &v13, 0xCu);
  }

  v12 = [v10 pk_setByApplyingBlock:&stru_100842600];
  [(PDApplePayCloudStoreContainer *)self _queue_updateWithPossibleNewZonesToAdd:v12 orphanedZones:0 containerDatabase:v9];
}

- (void)_queue_updateWithPossibleNewZonesToAdd:(id)add orphanedZones:(id)zones containerDatabase:(id)database
{
  addCopy = add;
  zonesCopy = zones;
  databaseCopy = database;
  containerManager = [(PDCloudStoreContainer *)self containerManager];
  containerName = [containerManager containerName];

  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v56 = [addCopy count];
    v57 = 2112;
    v58 = addCopy;
    v59 = 2114;
    v60 = containerName;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%lu possible new zones to add for %@ container: %{public}@", buf, 0x20u);
  }

  oslog = v12;
  v38 = containerName;

  v13 = [[NSMutableSet alloc] initWithSet:addCopy];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v14 = addCopy;
  v15 = [v14 countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v48;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v48 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v47 + 1) + 8 * i);
        containerManager2 = [(PDCloudStoreContainer *)self containerManager];
        v21 = [containerManager2 cloudStoreZoneForZoneName:v19 inContainerDatabase:databaseCopy];

        if (v21)
        {
          [v13 removeObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v16);
  }

  v22 = v38;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v13 count];
    *buf = 134218498;
    v56 = v23;
    v57 = 2112;
    v58 = v13;
    v59 = 2112;
    v60 = v38;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%lu new zones that need to be created %@ for container: %@", buf, 0x20u);
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [zonesCopy count];
    *buf = 134218498;
    v56 = v24;
    v57 = 2112;
    v58 = zonesCopy;
    v59 = 2112;
    v60 = v38;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%lu zones that are orphaned from all accounts %@ for container: %@", buf, 0x20u);
  }

  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1000B7BDC;
  v46[3] = &unk_10083C470;
  v46[4] = self;
  v25 = objc_retainBlock(v46);
  if ([(PDApplePayCloudStoreContainer *)self _queue_canInvalidateContainer])
  {
    [(PDApplePayCloudStoreContainer *)self invalidateCloudStoreIfPossibleWithOperationGroupNameSuffix:PKCloudStoreOperationGroupSuffixPKAccountRemoved clearCache:1];
  }

  else if ([v13 count])
  {
    osloga = v25;
    v26 = objc_alloc_init(NSMutableSet);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v27 = v13;
    v28 = [v27 countByEnumeratingWithState:&v42 objects:v53 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v43;
      do
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v43 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = [databaseCopy zoneForZoneName:*(*(&v42 + 1) + 8 * j)];
          [v26 addObject:v32];
        }

        v29 = [v27 countByEnumeratingWithState:&v42 objects:v53 count:16];
      }

      while (v29);
    }

    identifier = [databaseCopy identifier];
    v51 = identifier;
    v52 = v26;
    v34 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v35 = PKCloudStoreOperationGroupSuffixAccountModified;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000B7C18;
    v40[3] = &unk_10083E490;
    v40[4] = self;
    v25 = osloga;
    v41 = osloga;
    [(PDCloudStoreContainer *)self _queue_createZoneAndSubscriptionsByDatabaseIdentifier:v34 groupSuffix:v35 completion:v40];

    v22 = v38;
  }

  else
  {
    (v25[2].isa)(v25);
  }
}

- (id)_peerPaymentZoneNamesForAccount:(id)account containerDatabase:(id)database
{
  databaseCopy = database;
  accountCopy = account;
  v7 = objc_alloc_init(NSMutableSet);
  cloudStoreZoneNames = [accountCopy cloudStoreZoneNames];

  scope = [databaseCopy scope];
  if ((scope & 0xFFFFFFFFFFFFFFFELL) == 2 && [cloudStoreZoneNames count])
  {
    anyObject = [cloudStoreZoneNames anyObject];
    [v7 addObject:anyObject];
  }

  v11 = [v7 copy];

  return v11;
}

- (id)_accountZoneNamesForAccountSet:(id)set containerDatabase:(id)database
{
  setCopy = set;
  databaseCopy = database;
  v8 = objc_alloc_init(NSMutableSet);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = setCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccount:*(*(&v17 + 1) + 8 * i) itemType:0 containerDatabase:databaseCopy, v17];
        [v8 unionSet:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];

  return v15;
}

- (id)_accountZoneNamesForAccountUser:(id)user itemType:(unint64_t)type containerDatabase:(id)database
{
  userCopy = user;
  databaseCopy = database;
  if (type > 8 || ((1 << type) & 0x163) == 0)
  {
    goto LABEL_13;
  }

  accountIdentifier = [userCopy accountIdentifier];
  if (!accountIdentifier)
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = userCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Error: an account identifier is not defined for account user %@", &v21, 0xCu);
    }

    goto LABEL_13;
  }

  v11 = accountIdentifier;
  scope = [databaseCopy scope];
  if ((scope - 1) > 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = qword_10068E128[(scope - 1)];
  }

  v15 = [(NSDictionary *)self->_sharedAccountCloudStoreByAccountIdentifier objectForKey:v11];
  v16 = [(NSDictionary *)self->_accountUsersByAccountIdentifier objectForKeyedSubscript:v11];
  v17 = [v15 primaryZoneForAccountUser:userCopy inAccountUserCollection:v16 access:v13];
  v18 = v17;
  if (v17)
  {
    zoneName = [v17 zoneName];
    self = [NSSet setWithObject:zoneName];
  }

  if (!v18)
  {
LABEL_13:
    self = 0;
  }

  return self;
}

- (id)_accountZoneNamesForAccount:(id)account itemType:(unint64_t)type containerDatabase:(id)database
{
  accountCopy = account;
  databaseCopy = database;
  v10 = objc_alloc_init(NSMutableSet);
  if ([accountCopy isSharedAccount])
  {
    accountUsersByAccountIdentifier = self->_accountUsersByAccountIdentifier;
    accountIdentifier = [accountCopy accountIdentifier];
    v13 = [(NSDictionary *)accountUsersByAccountIdentifier objectForKey:accountIdentifier];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = v13;
    accountUsers = [v13 accountUsers];
    v15 = [accountUsers countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v27;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(accountUsers);
          }

          v19 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccountUser:*(*(&v26 + 1) + 8 * i) itemType:type containerDatabase:databaseCopy];
          if ([v19 count])
          {
            [v10 unionSet:v19];
          }
        }

        v16 = [accountUsers countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v16);
    }
  }

  if ([databaseCopy scope] == 2)
  {
    if (([accountCopy isSharedAccount] & 1) == 0)
    {
      cloudStoreZoneNames = [accountCopy cloudStoreZoneNames];
      if ([cloudStoreZoneNames count])
      {
        if ([accountCopy feature] == 4)
        {
          [v10 addObjectsFromArray:cloudStoreZoneNames];
        }

        else
        {
          firstObject = [cloudStoreZoneNames firstObject];
          [v10 addObject:firstObject];
        }
      }
    }

    if (type == 11 || !type)
    {
      if (PKIssuerMessagingFlagsEnabled())
      {
        feature = [accountCopy feature];
        if (feature == 5 || feature == 2)
        {
          [v10 addObject:PKCloudStoreMessagesZoneName];
        }
      }
    }
  }

  v23 = [v10 copy];

  return v23;
}

- (void)_queue_ensureZoneShareIntegrity
{
  if (self->_ensuringZoneShareIntegrityInProgress)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "A zone share integrity operation is already in progress.", buf, 2u);
    }
  }

  else
  {
    self->_ensuringZoneShareIntegrityInProgress = 1;
    [(PDCloudStoreContainer *)self reportContainerChangeIntervalBeginEventWithType:40 stateName:0 objectNames:0 operationGroupName:0 operationGroupNameSuffix:0];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000B8494;
    v4[3] = &unk_10083C420;
    v5 = v4[4] = self;
    v2 = v5;
    [(PDApplePayCloudStoreContainer *)self _queue_createOrRemoveZoneSharesIfNecessaryWithCompletion:v4];
  }
}

- (void)_queue_createOrRemoveZoneSharesForPeerPaymentIfNecessaryWithCompletion:(id)completion
{
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000B8888;
  v20[3] = &unk_10083D648;
  completionCopy = completion;
  v21 = completionCopy;
  v5 = objc_retainBlock(v20);
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting zone share integrity check for peer payment.", buf, 2u);
  }

  cloudStoreZoneNames = [(PKPeerPaymentAccount *)self->_peerPaymentAccount cloudStoreZoneNames];
  containerManager = [(PDCloudStoreContainer *)self containerManager];
  containerManager2 = [(PDCloudStoreContainer *)self containerManager];
  v10 = [containerManager2 databaseForScope:2];
  v11 = [containerManager cloudStoreZonesFromZoneNames:cloudStoreZoneNames inContainerDatabase:v10];

  if ([v11 count])
  {
    pKApplePayContainerCashZoneNamePrefix = [NSPredicate predicateWithFormat:@"zoneName BEGINSWITH %@", PKApplePayContainerCashZoneNamePrefix];
    v13 = [v11 filteredSetUsingPredicate:pKApplePayContainerCashZoneNamePrefix];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting zone share integrity operation", buf, 2u);
    }

    role = [(PKPeerPaymentAccount *)self->_peerPaymentAccount role];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000B890C;
    v15[3] = &unk_1008426C8;
    v11 = v13;
    v19 = role;
    v16 = v11;
    selfCopy = self;
    v18 = v5;
    [(PDApplePayCloudStoreContainer *)self _queue_familyMembersWithCompletion:v15];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = cloudStoreZoneNames;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "There are no cached cloud store zones for zone names in private database %@", buf, 0xCu);
    }

    (v5[2])(v5);
  }
}

- (void)_queue_createOrRemoveZoneSharesForAccountsIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sharedAccountCloudStoreByAccountIdentifier = self->_sharedAccountCloudStoreByAccountIdentifier;
    accountUsersByAccountIdentifier = self->_accountUsersByAccountIdentifier;
    *buf = 138412546;
    v22 = sharedAccountCloudStoreByAccountIdentifier;
    v23 = 2112;
    v24 = accountUsersByAccountIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting zone share integrity check for accounts.\nsharedAccountCloudStore => %@\nusers=> %@", buf, 0x16u);
  }

  containerManager = [(PDCloudStoreContainer *)self containerManager];
  v9 = [containerManager databaseForScope:2];

  containerManager2 = [(PDCloudStoreContainer *)self containerManager];
  v11 = [containerManager2 databaseForScope:3];

  PKCurrentUserAltDSID();
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000B9ADC;
  v16[3] = &unk_1008426F0;
  v16[4] = self;
  v17 = v9;
  v19 = v18 = v11;
  v20 = completionCopy;
  v12 = completionCopy;
  v13 = v19;
  v14 = v11;
  v15 = v9;
  [(PDApplePayCloudStoreContainer *)self _queue_familyMembersByAltDSIDWithCompletion:v16];
}

- (void)_queue_createOrRemoveZoneSharesIfNecessaryWithCompletion:(id)completion
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000BAD44;
  v14[3] = &unk_10083D648;
  completionCopy = completion;
  v4 = completionCopy;
  v5 = objc_retainBlock(v14);
  v6 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000BADC8;
  v13[3] = &unk_10083C848;
  v13[4] = self;
  [v6 addOperation:v13];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000BAEA4;
  v12[3] = &unk_10083C848;
  v12[4] = self;
  [v6 addOperation:v12];
  v7 = +[NSNull null];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000BAF80;
  v10[3] = &unk_100842718;
  v11 = v5;
  v8 = v5;
  v9 = [v6 evaluateWithInput:v7 completion:v10];
}

- (id)_allPossibleCloudStoreZonesForFetchingWithTransactionSourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataSource = [(PDCloudStoreContainer *)self dataSource];
  v102 = identifierCopy;
  v6 = [dataSource transactionSourceTypeForTransactionSourceIdentifier:identifierCopy];

  v7 = objc_alloc_init(NSMutableSet);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      containerManager = [(PDCloudStoreContainer *)self containerManager];
      validDatabases = [containerManager validDatabases];

      v104 = [validDatabases countByEnumeratingWithState:&v126 objects:v149 count:16];
      if (v104)
      {
        v100 = *v127;
        v112 = validDatabases;
        do
        {
          for (i = 0; i != v104; i = i + 1)
          {
            if (*v127 != v100)
            {
              objc_enumerationMutation(validDatabases);
            }

            v42 = *(*(&v126 + 1) + 8 * i);
            dataSource2 = [(PDCloudStoreContainer *)self dataSource];
            v44 = [dataSource2 accountUserWithTransactionSourceIdentifier:v102];

            scope = [v42 scope];
            if ((scope - 1) > 2)
            {
              v46 = 0;
            }

            else
            {
              v46 = qword_10068E128[(scope - 1)];
            }

            sharedAccountCloudStoreByAccountIdentifier = self->_sharedAccountCloudStoreByAccountIdentifier;
            accountIdentifier = [v44 accountIdentifier];
            v49 = [(NSDictionary *)sharedAccountCloudStoreByAccountIdentifier objectForKey:accountIdentifier];

            obja = v49;
            v109 = v44;
            v50 = [v49 allPossibleZonesForAccountUser:v44 access:v46];
            v51 = [v50 pk_arrayByApplyingBlock:&stru_100842758];
            v52 = [NSSet setWithArray:v51];

            v124 = 0u;
            v125 = 0u;
            v122 = 0u;
            v123 = 0u;
            v53 = v52;
            v54 = [v53 countByEnumeratingWithState:&v122 objects:v148 count:16];
            if (v54)
            {
              v55 = v54;
              v56 = *v123;
              do
              {
                for (j = 0; j != v55; j = j + 1)
                {
                  if (*v123 != v56)
                  {
                    objc_enumerationMutation(v53);
                  }

                  v58 = *(*(&v122 + 1) + 8 * j);
                  containerManager2 = [(PDCloudStoreContainer *)self containerManager];
                  v60 = [containerManager2 cloudStoreZoneForZoneName:v58 inContainerDatabase:v42];

                  if (v60)
                  {
                    [v7 addObject:v60];
                  }
                }

                v55 = [v53 countByEnumeratingWithState:&v122 objects:v148 count:16];
              }

              while (v55);
            }

            validDatabases = v112;
          }

          v104 = [v112 countByEnumeratingWithState:&v126 objects:v149 count:16];
        }

        while (v104);
      }

      goto LABEL_101;
    }

    if (v6 != 3)
    {
      goto LABEL_102;
    }

    dataSource3 = [(PDCloudStoreContainer *)self dataSource];
    validDatabases = [dataSource3 accountWithTransactionSourceIdentifier:v102];

    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    containerManager3 = [(PDCloudStoreContainer *)self containerManager];
    validDatabases2 = [containerManager3 validDatabases];

    obj = validDatabases2;
    v103 = [validDatabases2 countByEnumeratingWithState:&v118 objects:v147 count:16];
    if (v103)
    {
      v99 = *v119;
      v111 = validDatabases;
      do
      {
        v23 = 0;
        do
        {
          if (*v119 != v99)
          {
            objc_enumerationMutation(obj);
          }

          v108 = v23;
          v24 = *(*(&v118 + 1) + 8 * v23);
          v25 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccount:validDatabases itemType:0 containerDatabase:v24];
          v114 = 0u;
          v115 = 0u;
          v116 = 0u;
          v117 = 0u;
          v26 = [v25 countByEnumeratingWithState:&v114 objects:v146 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v115;
            do
            {
              for (k = 0; k != v27; k = k + 1)
              {
                if (*v115 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = *(*(&v114 + 1) + 8 * k);
                containerManager4 = [(PDCloudStoreContainer *)self containerManager];
                v32 = [containerManager4 cloudStoreZoneForZoneName:v30 inContainerDatabase:v24];

                if (v32)
                {
                  [v7 addObject:v32];
                }
              }

              v27 = [v25 countByEnumeratingWithState:&v114 objects:v146 count:16];
            }

            while (v27);
          }

          validDatabases = v111;
          v23 = v108 + 1;
        }

        while ((v108 + 1) != v103);
        v103 = [obj countByEnumeratingWithState:&v118 objects:v147 count:16];
      }

      while (v103);
    }
  }

  else
  {
    if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_102;
      }

      containerManager5 = [(PDCloudStoreContainer *)self containerManager];
      validDatabases = [containerManager5 databaseForScope:3];

      dataSource4 = [(PDCloudStoreContainer *)self dataSource];
      v11 = [dataSource4 peerPaymentAccountForTransactionSourceIdentifier:v102];

      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      obj = v11;
      v12 = [(PDApplePayCloudStoreContainer *)self _peerPaymentZoneNamesForAccount:v11 containerDatabase:validDatabases];
      v13 = [v12 countByEnumeratingWithState:&v130 objects:v150 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v131;
        do
        {
          for (m = 0; m != v14; m = m + 1)
          {
            if (*v131 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v130 + 1) + 8 * m);
            containerManager6 = [(PDCloudStoreContainer *)self containerManager];
            v19 = [containerManager6 cloudStoreZoneForZoneName:v17 inContainerDatabase:validDatabases];

            if (v19)
            {
              [v7 addObject:v19];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v130 objects:v150 count:16];
        }

        while (v14);
      }

      goto LABEL_99;
    }

    dataSource5 = [(PDCloudStoreContainer *)self dataSource];
    validDatabases = [dataSource5 passUniqueIdentifierForTransactionSourceIdentifier:v102];

    peerPaymentAccount = self->_peerPaymentAccount;
    if (peerPaymentAccount)
    {
      associatedPassUniqueID = [(PKPeerPaymentAccount *)peerPaymentAccount associatedPassUniqueID];
      v36 = validDatabases;
      v37 = associatedPassUniqueID;
      v38 = v37;
      if (v36 == v37)
      {
        v39 = 1;
      }

      else
      {
        v39 = 0;
        if (v36 && v37)
        {
          v39 = [v36 isEqualToString:v37];
        }
      }
    }

    else
    {
      v39 = 0;
    }

    dataSource6 = [(PDCloudStoreContainer *)self dataSource];
    v62 = [dataSource6 associatedAccountIdentifierForPassWithUniqueIdentifier:validDatabases];

    obj = v62;
    v63 = [v62 length];
    if (v39)
    {
      containerManager7 = [(PDCloudStoreContainer *)self containerManager];
      v12 = [containerManager7 databaseForScope:2];

      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      v105 = [(PDApplePayCloudStoreContainer *)self _peerPaymentZoneNamesForAccount:self->_peerPaymentAccount containerDatabase:v12];
      v65 = [v105 countByEnumeratingWithState:&v142 objects:v153 count:16];
      if (v65)
      {
        v66 = v65;
        v67 = *v143;
        do
        {
          for (n = 0; n != v66; n = n + 1)
          {
            if (*v143 != v67)
            {
              objc_enumerationMutation(v105);
            }

            v69 = *(*(&v142 + 1) + 8 * n);
            containerManager8 = [(PDCloudStoreContainer *)self containerManager];
            v71 = [containerManager8 cloudStoreZoneForZoneName:v69 inContainerDatabase:v12];

            if (v71)
            {
              [v7 addObject:v71];
            }
          }

          v66 = [v105 countByEnumeratingWithState:&v142 objects:v153 count:16];
        }

        while (v66);
      }

LABEL_98:

LABEL_99:
      goto LABEL_100;
    }

    if (v63)
    {
      dataSource7 = [(PDCloudStoreContainer *)self dataSource];
      v12 = [dataSource7 accountWithIdentifier:v62];

      v105 = PKCurrentUserAltDSID();
      v138 = 0u;
      v139 = 0u;
      v140 = 0u;
      v141 = 0u;
      containerManager9 = [(PDCloudStoreContainer *)self containerManager];
      validDatabases3 = [containerManager9 validDatabases];

      v96 = validDatabases3;
      v101 = [validDatabases3 countByEnumeratingWithState:&v138 objects:v152 count:16];
      if (v101)
      {
        v97 = *v139;
        v95 = PKCloudStoreMessagesZoneName;
        v113 = validDatabases;
        v98 = v12;
        do
        {
          for (ii = 0; ii != v101; ii = ii + 1)
          {
            if (*v139 != v97)
            {
              objc_enumerationMutation(v96);
            }

            v76 = *(*(&v138 + 1) + 8 * ii);
            dataSource8 = [(PDCloudStoreContainer *)self dataSource];
            v78 = [dataSource8 accountUserWithAltDSID:v105 accountIdentifier:obj];

            v110 = v78;
            if (v78)
            {
              scope2 = [v76 scope];
              if ((scope2 - 1) > 2)
              {
                v80 = 0;
              }

              else
              {
                v80 = qword_10068E128[(scope2 - 1)];
              }

              v82 = [(NSDictionary *)self->_sharedAccountCloudStoreByAccountIdentifier objectForKey:obj];
              v83 = [v82 allPossibleZonesForAccountUser:v78 access:v80];
              v84 = [v83 pk_arrayByApplyingBlock:&stru_100842738];
              v81 = [NSSet setWithArray:v84];
            }

            else
            {
              v81 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccount:v12 itemType:0 containerDatabase:v76];
            }

            if ([v76 scope] == 2)
            {
              v85 = [v81 setByAddingObject:v95];

              v81 = v85;
            }

            v136 = 0u;
            v137 = 0u;
            v134 = 0u;
            v135 = 0u;
            v86 = v81;
            v87 = [v86 countByEnumeratingWithState:&v134 objects:v151 count:16];
            if (v87)
            {
              v88 = v87;
              v89 = *v135;
              do
              {
                for (jj = 0; jj != v88; jj = jj + 1)
                {
                  if (*v135 != v89)
                  {
                    objc_enumerationMutation(v86);
                  }

                  v91 = *(*(&v134 + 1) + 8 * jj);
                  containerManager10 = [(PDCloudStoreContainer *)self containerManager];
                  v93 = [containerManager10 cloudStoreZoneForZoneName:v91 inContainerDatabase:v76];

                  if (v93)
                  {
                    [v7 addObject:v93];
                  }
                }

                v88 = [v86 countByEnumeratingWithState:&v134 objects:v151 count:16];
              }

              while (v88);
            }

            v12 = v98;
            validDatabases = v113;
          }

          v101 = [v96 countByEnumeratingWithState:&v138 objects:v152 count:16];
        }

        while (v101);
      }

      goto LABEL_98;
    }
  }

LABEL_100:

LABEL_101:
LABEL_102:

  return v7;
}

- (void)_handleFamilyUpdateNotification:(id)notification
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FAFamilyUpdateNotification fired", buf, 2u);
  }

  workQueue = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BBB3C;
  block[3] = &unk_10083C470;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)_queue_familyMembersWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    familyCircleManager = self->_familyCircleManager;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000BBBF8;
    v7[3] = &unk_100842780;
    v7[4] = self;
    v8 = completionCopy;
    [(PDFamilyCircleManager *)familyCircleManager familyMembersWithCachePolicy:0 completion:v7];
  }
}

- (void)_queue_familyMembersByAltDSIDWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    familyCircleManager = self->_familyCircleManager;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000BBD84;
    v7[3] = &unk_100842780;
    v7[4] = self;
    v8 = completionCopy;
    [(PDFamilyCircleManager *)familyCircleManager familyMembersWithCachePolicy:0 completion:v7];
  }
}

- (void)_updateUnarchivedTransactionsScheduledActivityIfNeccessary
{
  v3 = PKCloudStoreOperationGroupSuffixFetchTaskBackgroundActivity;
  if ((PDScheduledActivityExists() & 1) == 0)
  {
    if ([(PDCloudStoreContainer *)self isCloudStoreSetupAssistantComplete])
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1000BC124;
      v5[3] = &unk_100840C98;
      v5[4] = self;
      v5[5] = v3;
      [(PDCloudStoreContainer *)self initialCloudDatabaseSetupWithOperationGroupNameSuffix:v3 completion:v5];
    }

    else
    {
      v4 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v7 = @"ApplePayCloudStoreUnarchivedTask";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not scheduling %{public}@ since PDCloudStoreContainerSetupAssistantState is not complete", buf, 0xCu);
      }
    }
  }
}

- (void)_updateFetchTaskScheduledActivityIfNeccessary
{
  v3 = PKCloudStoreOperationGroupSuffixFetchTaskBackgroundActivity;
  if ([(PDCloudStoreContainer *)self isCloudStoreSetupAssistantComplete])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000BC524;
    v5[3] = &unk_100840C98;
    v5[4] = self;
    v5[5] = v3;
    [(PDCloudStoreContainer *)self initialCloudDatabaseSetupWithOperationGroupNameSuffix:v3 completion:v5];
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v7 = @"ApplePayCloudStorePerformFetchTasks";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not scheduling %{public}@ since PDCloudStoreContainerSetupAssistantState is not complete", buf, 0xCu);
    }
  }
}

- (void)performScheduledActivityWithIdentifier:(id)identifier activityCriteria:(id)criteria
{
  identifierCopy = identifier;
  criteriaCopy = criteria;
  v8 = PKCloudStoreOperationGroupScheduledActivity;
  v9 = PKCloudStoreOperationGroupSuffixFetchTaskBackgroundActivity;
  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PDApplePayCloudStoreContainer starting activity: %{public}@", buf, 0xCu);
  }

  v11 = [(NSMutableDictionary *)self->_backgroundTasksBeingRun objectForKeyedSubscript:identifierCopy];
  bOOLValue = [v11 BOOLValue];

  if ([(PDCloudStoreContainer *)self isCloudStoreSetupAssistantComplete])
  {
    if (!bOOLValue)
    {
      [(NSMutableDictionary *)self->_backgroundTasksBeingRun setObject:&__kCFBooleanTrue forKeyedSubscript:identifierCopy];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000BCE80;
      v14[3] = &unk_10083D110;
      v14[4] = self;
      v15 = identifierCopy;
      v16 = v8;
      v17 = v9;
      [(PDCloudStoreContainer *)self initialCloudDatabaseSetupWithOperationGroupNameSuffix:v9 completion:v14];

      goto LABEL_12;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = identifierCopy;
      v13 = "PDApplePayCloudStoreContainer not running %{public}@ since one is already in progress";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = identifierCopy;
    v13 = "PDApplePayCloudStoreContainer not running %{public}@ since setup assistant is not complete";
    goto LABEL_9;
  }

LABEL_12:
}

- (void)_queue_performFetchTasksBackgroundActivityForGroupName:(id)name suffix:(id)suffix completion:(id)completion
{
  nameCopy = name;
  suffixCopy = suffix;
  completionCopy = completion;
  v8 = objc_alloc_init(NSMutableDictionary);
  v106 = objc_alloc_init(NSMutableDictionary);
  v107 = objc_alloc_init(NSMutableSet);
  v114 = objc_alloc_init(NSMutableSet);
  os_unfair_lock_lock(&self->_fetchTasksLock);
  v9 = +[NSDate date];
  v119 = objc_alloc_init(NSMutableArray);
  v125 = objc_alloc_init(NSMutableArray);
  v113 = objc_alloc_init(NSMutableArray);
  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    fetchTasks = self->_fetchTasks;
    *buf = 138543618;
    v157 = @"ApplePayCloudStorePerformFetchTasks";
    v158 = 2112;
    v159 = fetchTasks;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Current cloud store fetch tasks for acivity %{public}@: %@", buf, 0x16u);
  }

  oslog = v10;

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  obj = self->_fetchTasks;
  v128 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v147 objects:v168 count:16];
  selfCopy = self;
  v118 = v9;
  if (v128)
  {
    v126 = *v148;
    do
    {
      v12 = 0;
      do
      {
        if (*v148 != v126)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v147 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        v15 = [(NSMutableDictionary *)self->_fetchTasks objectForKeyedSubscript:v13];
        task = [v15 task];
        nextPossibleFetchDate = [task nextPossibleFetchDate];
        if (!v13 || [task status] != 3 || nextPossibleFetchDate && objc_msgSend(nextPossibleFetchDate, "compare:", v9) == 1)
        {
          [(__CFString *)v125 safelyAddObject:task];
          goto LABEL_13;
        }

        [(__CFString *)v119 safelyAddObject:task];
        type = [task type];
        if (type == 3)
        {
          [(__CFString *)v114 pk_safelyAddObject:v13];
          goto LABEL_13;
        }

        if (type == 2)
        {
          dataSource = [(PDCloudStoreContainer *)self dataSource];
          v32 = [dataSource transactionSourceExistsWithIdentifier:v13];

          if (v32)
          {
            [(__CFString *)v107 pk_safelyAddObject:v13];
          }

          else
          {
            [(__CFString *)v113 safelyAddObject:task];
            [(__CFString *)v119 removeObject:task];
          }

          goto LABEL_53;
        }

        if (type != 1)
        {
          goto LABEL_13;
        }

        dataSource2 = [(PDCloudStoreContainer *)self dataSource];
        selfCopy2 = self;
        v21 = [dataSource2 transactionSourceExistsWithIdentifier:v13];

        if ((v21 & 1) == 0)
        {
          [(__CFString *)v113 safelyAddObject:task];
          [(__CFString *)v119 removeObject:task];
          self = selfCopy2;
          v9 = v118;
          goto LABEL_13;
        }

        dataSource3 = [(PDCloudStoreContainer *)selfCopy2 dataSource];
        v23 = [dataSource3 transactionSourceTypeForTransactionSourceIdentifier:v13];

        if (v23 > 1)
        {
          v9 = v118;
          if (v23 == 2)
          {
            dataSource4 = [(PDCloudStoreContainer *)selfCopy dataSource];
            v52 = [dataSource4 accountUserWithTransactionSourceIdentifier:v13];

            accountIdentifier = [v52 accountIdentifier];
            dataSource5 = [(PDCloudStoreContainer *)selfCopy dataSource];
            accountIdentifier2 = accountIdentifier;
            associatedPassUniqueID2 = [dataSource5 passUniqueIdentifierWithAssociatedAccountIdentifier:accountIdentifier];

            altDSID = [v52 altDSID];
            firstName = [v52 firstName];
            lastName = [v52 lastName];
            v112 = v52;
            appleID = [v52 appleID];
            v56 = [NSString stringWithFormat:@"accountUser, %@ - %@ - %@ - %@", altDSID, firstName, lastName, appleID];
            [(__CFString *)v8 safelySetObject:v56 forKey:v13];

            self = selfCopy;
            v9 = v118;
          }

          else
          {
            self = selfCopy;
            if (v23 != 3)
            {
              goto LABEL_13;
            }

            dataSource6 = [(PDCloudStoreContainer *)selfCopy dataSource];
            v34 = [dataSource6 accountWithTransactionSourceIdentifier:v13];

            accountIdentifier2 = [v34 accountIdentifier];
            dataSource7 = [(PDCloudStoreContainer *)selfCopy dataSource];
            v116 = [dataSource7 passUniqueIdentifierForTransactionSourceIdentifier:v13];

            v36 = v116;
            v112 = v34;
            if (!v116)
            {
              if ([v34 feature] == 5)
              {
                allObjects = [(NSSet *)selfCopy->_accounts allObjects];
                v38 = PDAccountManagerDefaultAccountForFeature(2, allObjects);
                associatedPassUniqueID = [v38 associatedPassUniqueID];

                v36 = associatedPassUniqueID;
                if (!associatedPassUniqueID || (-[PDCloudStoreContainer dataSource](selfCopy, "dataSource"), v40 = objc_claimAutoreleasedReturnValue(), v41 = [v40 passExistsWithUniqueID:associatedPassUniqueID], v40, v36 = associatedPassUniqueID, (v41 & 1) == 0))
                {

                  v36 = @"<savings-account>";
                }

                self = selfCopy;
              }

              else
              {
                v36 = 0;
              }

              v34 = v112;
            }

            associatedPassUniqueID2 = v36;
            [v34 feature];
            altDSID = PKFeatureIdentifierToString();
            v110 = [NSString stringWithFormat:@"account, %@, %@", altDSID, accountIdentifier2];
            [(__CFString *)v8 safelySetObject:v110 forKey:v13];

            v9 = v118;
          }

          goto LABEL_47;
        }

        v9 = v118;
        if (v23)
        {
          self = selfCopy;
          if (v23 != 1)
          {
            goto LABEL_13;
          }

          dataSource8 = [(PDCloudStoreContainer *)selfCopy dataSource];
          peerPaymentAccount = [dataSource8 peerPaymentAccount];
          associatedPassUniqueID2 = [peerPaymentAccount associatedPassUniqueID];

          self = selfCopy;
          dataSource9 = [(PDCloudStoreContainer *)selfCopy dataSource];
          v27 = [dataSource9 peerPaymentAccountForTransactionSourceIdentifier:v13];

          identifier = [v27 identifier];
          v112 = v27;
          v29 = v27;
          v9 = v118;
          altDSID = [v29 altDSID];
          accountIdentifier2 = identifier;
          v108 = [NSString stringWithFormat:@"Peer Payment Associated Account: %@, %@", identifier, altDSID];
          [(__CFString *)v8 safelySetObject:v108 forKey:v13];

          goto LABEL_47;
        }

        dataSource10 = [(PDCloudStoreContainer *)selfCopy dataSource];
        v43 = [dataSource10 passUniqueIdentifierForTransactionSourceIdentifier:v13];

        dataSource11 = [(PDCloudStoreContainer *)selfCopy dataSource];
        associatedPassUniqueID2 = v43;
        v45 = [dataSource11 passWithUniqueIdentifier:v43];
        paymentPass = [v45 paymentPass];

        v112 = paymentPass;
        if (paymentPass)
        {
          hasAssociatedPeerPaymentAccount = [paymentPass hasAssociatedPeerPaymentAccount];
          v48 = @"Apple Cash";
          self = selfCopy;
          v9 = v118;
          if ((hasAssociatedPeerPaymentAccount & 1) == 0)
          {
            if (![v112 associatedAccountFeatureIdentifier])
            {
              dataSource12 = [(PDCloudStoreContainer *)selfCopy dataSource];
              v111 = [dataSource12 associatedAccountIdentifierForPassWithUniqueIdentifier:associatedPassUniqueID2];

              dataSource13 = [(PDCloudStoreContainer *)selfCopy dataSource];
              v50 = [dataSource13 accountWithIdentifier:v111];
              [v50 feature];

              self = selfCopy;
            }

            v48 = PKFeatureIdentifierToString();
          }

          accountIdentifier2 = v48;
          altDSID = [NSString stringWithFormat:@"paymentApplication, %@, %@", associatedPassUniqueID2, v48];
          [__CFString safelySetObject:v8 forKey:"safelySetObject:forKey:"];
LABEL_47:

          goto LABEL_48;
        }

        self = selfCopy;
        v9 = v118;
LABEL_48:

        if (!associatedPassUniqueID2)
        {
          goto LABEL_13;
        }

        v58 = [(__CFString *)v106 objectForKeyedSubscript:?];
        v59 = v58;
        if (v58)
        {
          v60 = v58;
        }

        else
        {
          v60 = objc_alloc_init(NSMutableSet);
        }

        v61 = v60;

        [(__CFString *)v106 setObject:v61 forKeyedSubscript:associatedPassUniqueID2];
        [v61 pk_safelyAddObject:v13];

LABEL_53:
        self = selfCopy;
LABEL_13:

        objc_autoreleasePoolPop(v14);
        v12 = v12 + 1;
      }

      while (v128 != v12);
      v62 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v147 objects:v168 count:16];
      v128 = v62;
    }

    while (v62);
  }

  os_unfair_lock_unlock(&self->_fetchTasksLock);
  v166[0] = @"activityIdentifier";
  v166[1] = @"processingTasks";
  v63 = &stru_10086D930;
  v64 = v119;
  if (!v119)
  {
    v64 = &stru_10086D930;
  }

  v167[0] = @"ApplePayCloudStorePerformFetchTasks";
  v167[1] = v64;
  v65 = v125;
  if (!v125)
  {
    v65 = &stru_10086D930;
  }

  v166[2] = @"skippingTasks";
  v166[3] = @"transactionSourceIdentifiersToDescription";
  if (v8)
  {
    v66 = v8;
  }

  else
  {
    v66 = &stru_10086D930;
  }

  v167[2] = v65;
  v167[3] = v66;
  v67 = v106;
  if (v106)
  {
    v68 = v106;
  }

  else
  {
    v68 = &stru_10086D930;
  }

  v166[4] = @"passUniqueIDToTransactionSourceIdentifier";
  v166[5] = @"proactiveFetchTransactionSourceIdentifiers";
  v69 = v107;
  if (!v107)
  {
    v69 = &stru_10086D930;
  }

  v167[4] = v68;
  v167[5] = v69;
  v166[6] = @"sharedZonesToFetchRecords";
  v166[7] = @"removalTasks";
  if (v114)
  {
    v70 = v114;
  }

  else
  {
    v70 = &stru_10086D930;
  }

  if (v113)
  {
    v63 = v113;
  }

  v167[6] = v70;
  v167[7] = v63;
  v71 = [NSDictionary dictionaryWithObjects:v167 forKeys:v166 count:8];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v157 = v119;
    v158 = 2112;
    v159 = v125;
    v160 = 2112;
    v161 = v113;
    v162 = 2114;
    v163 = @"ApplePayCloudStorePerformFetchTasks";
    v164 = 2112;
    v165 = v71;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Processing fetch tasks %@, skipping fetch tasks %@, removing fetch tasks %@, for scheduled activity %{public}@. %@", buf, 0x34u);
  }

  v117 = v71;
  v72 = [v71 description];
  v155 = v72;
  v73 = [NSArray arrayWithObjects:&v155 count:1];
  v74 = nameCopy;
  [(PDCloudStoreContainer *)self reportContainerChangeSignpostEventType:55 stateName:@"ApplePayCloudStorePerformFetchTasks" objectNames:v73 changeToken:0 error:0 operationGroupName:nameCopy operationGroupNameSuffix:suffixCopy];

  [(PDApplePayCloudStoreContainer *)self _queue_ensureZoneShareIntegrity];
  if ([(__CFString *)v113 count])
  {
    dataSource14 = [(PDCloudStoreContainer *)self dataSource];
    [dataSource14 removeRecordFetchTasks:v113];
  }

  if ([(__CFString *)v114 count])
  {
    containerManager = [(PDCloudStoreContainer *)self containerManager];
    v77 = [containerManager databaseForScope:3];

    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v78 = v114;
    v79 = [(__CFString *)v78 countByEnumeratingWithState:&v143 objects:v154 count:16];
    if (v79)
    {
      v80 = v79;
      v81 = *v144;
      do
      {
        for (i = 0; i != v80; i = i + 1)
        {
          if (*v144 != v81)
          {
            objc_enumerationMutation(v78);
          }

          v83 = *(*(&v143 + 1) + 8 * i);
          containerManager2 = [(PDCloudStoreContainer *)selfCopy containerManager];
          v85 = [containerManager2 cloudStoreZoneForZoneName:v83 inContainerDatabase:v77];

          identifier2 = [v77 identifier];
          [(PDApplePayCloudStoreContainer *)selfCopy fetchRecordsInAcceptedZoneShare:v85 databaseIdentifier:identifier2 operationGroupName:nameCopy operationGroupNameSuffix:suffixCopy qualityOfService:17 completion:0];
        }

        v80 = [(__CFString *)v78 countByEnumeratingWithState:&v143 objects:v154 count:16];
      }

      while (v80);
    }

    v67 = v106;
    self = selfCopy;
  }

  if ([(__CFString *)v67 count])
  {
    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v129 = v106;
    v127 = [(__CFString *)v129 countByEnumeratingWithState:&v139 objects:v153 count:16];
    if (v127)
    {
      obja = *v140;
      v120 = PKCloudStoreOperationGroupSuffixFetchTaskBackgroundActivityRecoveringFromPreviousError;
      do
      {
        for (j = 0; j != v127; j = j + 1)
        {
          if (*v140 != obja)
          {
            objc_enumerationMutation(v129);
          }

          v88 = *(*(&v139 + 1) + 8 * j);
          v89 = objc_alloc_init(NSMutableDictionary);
          v90 = [(__CFString *)v129 objectForKeyedSubscript:v88];
          v135 = 0u;
          v136 = 0u;
          v137 = 0u;
          v138 = 0u;
          v91 = [v90 countByEnumeratingWithState:&v135 objects:v152 count:16];
          if (v91)
          {
            v92 = v91;
            v93 = *v136;
            do
            {
              for (k = 0; k != v92; k = k + 1)
              {
                if (*v136 != v93)
                {
                  objc_enumerationMutation(v90);
                }

                v95 = *(*(&v135 + 1) + 8 * k);
                v96 = [(__CFString *)v8 objectForKeyedSubscript:v95];
                [v89 safelySetObject:v96 forKey:v95];
              }

              v92 = [v90 countByEnumeratingWithState:&v135 objects:v152 count:16];
            }

            while (v92);
          }

          self = selfCopy;
          if ([v89 count])
          {
            [(PDApplePayCloudStoreContainer *)selfCopy fetchAndStoreRecordsForPassUniqueID:v88 transactionSourceIdentifiers:v89 fullFetchIgnoringChangeToken:0 ignoreExistingRecordHash:0 groupName:nameCopy groupNameSuffix:v120 completion:0];
          }
        }

        v127 = [(__CFString *)v129 countByEnumeratingWithState:&v139 objects:v153 count:16];
      }

      while (v127);
    }

    v74 = nameCopy;
  }

  if ([(__CFString *)v107 count])
  {
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v97 = v107;
    v98 = [(__CFString *)v97 countByEnumeratingWithState:&v131 objects:v151 count:16];
    if (v98)
    {
      v99 = v98;
      v100 = *v132;
      do
      {
        for (m = 0; m != v99; m = m + 1)
        {
          if (*v132 != v100)
          {
            objc_enumerationMutation(v97);
          }

          [(PDApplePayCloudStoreContainer *)self requestUpdatesForTransactionSourceIdentifier:*(*(&v131 + 1) + 8 * m)];
        }

        v99 = [(__CFString *)v97 countByEnumeratingWithState:&v131 objects:v151 count:16];
      }

      while (v99);
    }
  }

  [(PDApplePayCloudStoreContainer *)self _updateFetchTaskScheduledActivityIfNeccessary];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)_queue_performUnarchivedTransactionsBackgroundActivityForGroupName:(id)name suffix:(id)suffix completion:(id)completion
{
  completionCopy = completion;
  suffixCopy = suffix;
  nameCopy = name;
  dataSource = [(PDCloudStoreContainer *)self dataSource];
  v12 = [dataSource transactionArchivesWithType:0 isArchived:0];
  allObjects = [v12 allObjects];

  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v44 = [allObjects count];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Uploading %{public}lu unarchived transactions", buf, 0xCu);
  }

  v15 = [allObjects pk_createArrayBySafelyApplyingBlock:&stru_1008427C0];
  v41[0] = @"archivesThatNeedSyncingCount";
  v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [allObjects count]);
  v41[1] = @"serviceIdentifiersToUpload";
  v42[0] = v16;
  v17 = [v15 description];
  v18 = v17;
  v19 = &stru_10086D930;
  if (v17)
  {
    v19 = v17;
  }

  v42[1] = v19;
  v20 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:2];

  v21 = [v20 description];
  v40 = v21;
  v22 = [NSArray arrayWithObjects:&v40 count:1];
  [(PDCloudStoreContainer *)self reportContainerChangeSignpostEventType:55 stateName:@"ApplePayCloudStoreUnarchivedTask" objectNames:v22 changeToken:0 error:0 operationGroupName:nameCopy operationGroupNameSuffix:suffixCopy];

  v23 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  [allObjects count];
  v33 = _NSConcreteStackBlock;
  v34 = 3221225472;
  v35 = sub_1000BE3AC;
  v36 = &unk_100842838;
  v37 = allObjects;
  v38 = v23;
  selfCopy = self;
  v24 = v23;
  PKRangeEnumeratePartitions();
  v25 = +[NSNull null];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000BF0BC;
  v29[3] = &unk_100842860;
  selfCopy2 = self;
  v32 = completionCopy;
  v30 = v37;
  v26 = completionCopy;
  v27 = v37;
  v28 = [v24 evaluateWithInput:v25 completion:v29];
}

- (BOOL)_queue_isRelevantTransactionSourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataSource = [(PDCloudStoreContainer *)self dataSource];
  v6 = [dataSource transactionSourceTypeForTransactionSourceIdentifier:identifierCopy];

  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    containerManager = [(PDCloudStoreContainer *)self containerManager];
    containerName = [containerManager containerName];
    v25 = 138412546;
    v26 = identifierCopy;
    v27 = 2112;
    v28 = containerName;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Checking if %@ is relevant transaction source identifiers for %@", &v25, 0x16u);
  }

  LOBYTE(supportsStandaloneTransactions) = 0;
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        dataSource2 = [(PDCloudStoreContainer *)self dataSource];
        v12 = [dataSource2 peerPaymentAccountForTransactionSourceIdentifier:identifierCopy];

        LOBYTE(supportsStandaloneTransactions) = v12 != 0;
        if (v12)
        {
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v25 = 138412290;
            v26 = identifierCopy;
            v13 = "%@ is relevant because it has an associated peer payment account";
LABEL_31:
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v13, &v25, 0xCu);
            goto LABEL_32;
          }

          goto LABEL_32;
        }

        goto LABEL_35;
      }

      goto LABEL_36;
    }

    dataSource3 = [(PDCloudStoreContainer *)self dataSource];
    v12 = [dataSource3 passUniqueIdentifierForTransactionSourceIdentifier:identifierCopy];

    peerPaymentAccount = self->_peerPaymentAccount;
    if (peerPaymentAccount)
    {
      associatedPassUniqueID = [(PKPeerPaymentAccount *)peerPaymentAccount associatedPassUniqueID];
      v19 = v12;
      v15 = v19;
      if (associatedPassUniqueID == v19)
      {

        goto LABEL_24;
      }

      if (v19 && associatedPassUniqueID)
      {
        v20 = [associatedPassUniqueID isEqualToString:v19];

        if (!v20)
        {
          goto LABEL_28;
        }

LABEL_24:
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138412290;
          v26 = identifierCopy;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ is relevant because it is the peer payment pass", &v25, 0xCu);
        }

        LOBYTE(supportsStandaloneTransactions) = 1;
        goto LABEL_33;
      }
    }

LABEL_28:
    dataSource4 = [(PDCloudStoreContainer *)self dataSource];
    v23 = [dataSource4 associatedAccountIdentifierForPassWithUniqueIdentifier:v12];

    if (!v23)
    {
      LOBYTE(supportsStandaloneTransactions) = 0;
      goto LABEL_35;
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    v25 = 138412290;
    v26 = identifierCopy;
    v13 = "%@ is relevant because it has an associated account";
    goto LABEL_31;
  }

  if (v6 == 2)
  {
    dataSource5 = [(PDCloudStoreContainer *)self dataSource];
    v12 = [dataSource5 accountUserWithTransactionSourceIdentifier:identifierCopy];

    LOBYTE(supportsStandaloneTransactions) = v12 != 0;
    if (v12)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412290;
        v26 = identifierCopy;
        v13 = "%@ is relevant because it is an account user";
        goto LABEL_31;
      }

LABEL_32:
      LOBYTE(supportsStandaloneTransactions) = 1;
      v15 = v12;
      goto LABEL_33;
    }

LABEL_35:

    goto LABEL_36;
  }

  if (v6 == 3)
  {
    dataSource6 = [(PDCloudStoreContainer *)self dataSource];
    v15 = [dataSource6 accountWithTransactionSourceIdentifier:identifierCopy];

    supportsStandaloneTransactions = [v15 supportsStandaloneTransactions];
    if (!supportsStandaloneTransactions)
    {
LABEL_34:
      v12 = v15;
      goto LABEL_35;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ is relevant because it has a matching account", &v25, 0xCu);
    }

LABEL_33:

    goto LABEL_34;
  }

LABEL_36:

  return supportsStandaloneTransactions;
}

- (id)_accountCreateDateForTranactionSourceIdentifier:(id)identifier passUniqueID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  dataSource = [(PDCloudStoreContainer *)self dataSource];
  v9 = [dataSource transactionSourceTypeForTransactionSourceIdentifier:identifierCopy];

  accountIdentifier = 0;
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      dataSource2 = [(PDCloudStoreContainer *)self dataSource];
      v13 = [dataSource2 accountUserWithTransactionSourceIdentifier:identifierCopy];
    }

    else
    {
      if (v9 != 3)
      {
LABEL_8:
        createdDate = 0;
        goto LABEL_21;
      }

      dataSource2 = [(PDCloudStoreContainer *)self dataSource];
      v13 = [dataSource2 accountWithTransactionSourceIdentifier:identifierCopy];
    }

    v22 = v13;
    accountIdentifier = [v13 accountIdentifier];

    createdDate = 0;
    v16 = dCopy;
  }

  else
  {
    if (v9)
    {
      if (v9 == 1)
      {
        createdDate = [(PKPeerPaymentAccount *)self->_peerPaymentAccount createdDate];
        accountIdentifier = 0;
        goto LABEL_21;
      }

      goto LABEL_8;
    }

    dataSource3 = [(PDCloudStoreContainer *)self dataSource];
    dataSource2 = [dataSource3 passUniqueIdentifierForTransactionSourceIdentifier:identifierCopy];

    if (dataSource2)
    {
      v15 = dataSource2;
    }

    else
    {
      v15 = dCopy;
    }

    v16 = v15;

    dataSource4 = [(PDCloudStoreContainer *)self dataSource];
    accountIdentifier = [dataSource4 associatedAccountIdentifierForPassWithUniqueIdentifier:v16];

    createdDate = 0;
    if (identifierCopy && !accountIdentifier)
    {
      dataSource5 = [(PDCloudStoreContainer *)self dataSource];
      associatedPassUniqueID = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassUniqueID];
      v20 = [dataSource5 transactionSourceIdentifiersForPassUniqueIdentifier:associatedPassUniqueID];
      v21 = [v20 containsObject:identifierCopy];

      if (v21)
      {
        createdDate = [(PKPeerPaymentAccount *)self->_peerPaymentAccount createdDate];
      }

      else
      {
        createdDate = 0;
      }
    }
  }

  if (accountIdentifier)
  {
    dataSource6 = [(PDCloudStoreContainer *)self dataSource];
    v24 = [dataSource6 accountWithIdentifier:accountIdentifier];
    createdDate2 = [v24 createdDate];

    dCopy = v16;
    createdDate = createdDate2;
  }

  else
  {
    dCopy = v16;
  }

LABEL_21:

  return createdDate;
}

- (id)_paymentApplicationForPassUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataSource = [(PDCloudStoreContainer *)self dataSource];
  v6 = [dataSource paymentApplicationsForPassUniqueIdentifier:identifierCopy];

  if ([v6 count] == 1)
  {
    anyObject = [v6 anyObject];
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
}

- (id)_cloudStoreSpecificKeysForItem:(id)item paymentPass:(id)pass
{
  passCopy = pass;
  v6 = objc_alloc_init(NSMutableDictionary);
  if (!passCopy)
  {
    goto LABEL_19;
  }

  serialNumber = [passCopy serialNumber];
  passTypeIdentifier = [passCopy passTypeIdentifier];
  primaryAccountIdentifier = [passCopy primaryAccountIdentifier];
  devicePrimaryPaymentApplication = [passCopy devicePrimaryPaymentApplication];
  dpanIdentifier = [devicePrimaryPaymentApplication dpanIdentifier];

  _originDeviceID = [(PDApplePayCloudStoreContainer *)self _originDeviceID];
  if ([passCopy hasAssociatedPeerPaymentAccount])
  {
    dataSource = [(PDCloudStoreContainer *)self dataSource];
    deviceTransactionSourceIdentifiers = [passCopy deviceTransactionSourceIdentifiers];
    [deviceTransactionSourceIdentifiers anyObject];
    v27 = _originDeviceID;
    v15 = dpanIdentifier;
    v16 = primaryAccountIdentifier;
    v17 = passTypeIdentifier;
    v19 = v18 = serialNumber;
    v20 = [dataSource peerPaymentAccountForTransactionSourceIdentifier:v19];

    serialNumber = v18;
    passTypeIdentifier = v17;
    primaryAccountIdentifier = v16;
    dpanIdentifier = v15;
    _originDeviceID = v27;

    identifier = [v20 identifier];
  }

  else
  {
    identifier = [passCopy associatedAccountServiceAccountIdentifier];
    [passCopy associatedAccountFeatureIdentifier];
  }

  if ([identifier length])
  {
    v22 = &PKCloudTransactionAccountIdentifierKey;
    v23 = identifier;
  }

  else
  {
    if ([serialNumber length])
    {
      [v6 setObject:serialNumber forKey:PKCloudTransactionPassSerialNumberKey];
    }

    if (![passTypeIdentifier length])
    {
      goto LABEL_12;
    }

    v22 = &PKCloudTransactionPassTypeIdentifierKey;
    v23 = passTypeIdentifier;
  }

  [v6 setObject:v23 forKey:*v22];
LABEL_12:
  if ([primaryAccountIdentifier length])
  {
    [v6 setObject:primaryAccountIdentifier forKey:PKCloudTransactionFPANIdentifierKey];
  }

  if ([dpanIdentifier length])
  {
    [v6 setObject:dpanIdentifier forKey:PKCloudTransactionDPANIdentifierKey];
  }

  if (_originDeviceID)
  {
    [v6 setObject:_originDeviceID forKey:PKCloudTransactionOriginDeviceIDKey];
  }

  v24 = PKPaymentTransactionAccountTypeToString();
  [v6 setObject:v24 forKey:PKCloudTransactionAccountTypeKey];

  [v6 setObject:&off_1008A2978 forKey:PKCloudTransactionCloudVersionKey];
LABEL_19:
  v25 = [v6 copy];

  return v25;
}

- (BOOL)_isTransactionItemFromRecordType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:PKCloudTransactionRecordType])
  {
    v4 = 1;
  }

  else
  {
    v4 = [typeCopy isEqualToString:PKCloudTransactionDeviceDataRecordType];
  }

  return v4;
}

- (void)containerResetCompletedWithSuccess:(BOOL)success error:(id)error
{
  errorCopy = error;
  workQueue = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BFCAC;
  block[3] = &unk_10083E328;
  successCopy = success;
  v10 = errorCopy;
  selfCopy = self;
  v8 = errorCopy;
  dispatch_async(workQueue, block);
}

- (void)_queue_didInvalidateContainer:(BOOL)container
{
  if (container)
  {
    dataSource = [(PDCloudStoreContainer *)self dataSource];
    dataSource2 = [(PDCloudStoreContainer *)self dataSource];
    allRecordFetchTasks = [dataSource2 allRecordFetchTasks];
    [dataSource removeRecordFetchTasks:allRecordFetchTasks];

    dataSource3 = [(PDCloudStoreContainer *)self dataSource];
    allRecordFetchTasks2 = [dataSource3 allRecordFetchTasks];

    os_unfair_lock_lock(&self->_fetchTasksLock);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = allRecordFetchTasks2;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          identifier = [v14 identifier];
          if ([v14 type])
          {
            v17 = identifier == 0;
          }

          else
          {
            v17 = 1;
          }

          if (!v17)
          {
            v18 = objc_alloc_init(PDApplePayCloudStoreRecordFetchOperation);
            [(PDApplePayCloudStoreRecordFetchOperation *)v18 updateTask:v14];
            fetchTasks = self->_fetchTasks;
            identifier2 = [(PDApplePayCloudStoreRecordFetchOperation *)v18 identifier];
            [(NSMutableDictionary *)fetchTasks safelySetObject:v18 forKey:identifier2];
          }

          objc_autoreleasePoolPop(v15);
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    os_unfair_lock_unlock(&self->_fetchTasksLock);
  }
}

- (BOOL)_isCloudStoreZoneThePrimaryZoneForCurrentUser:(id)user containerDatabase:(id)database
{
  userCopy = user;
  databaseCopy = database;
  v32 = 0;
  scope = [databaseCopy scope];
  zoneName = [userCopy zoneName];
  v30 = 0;
  v31 = 0;
  [PKCloudStoreZone zoneValueForZoneName:zoneName outZoneType:&v32 outAccountIdentifier:&v31 altDSID:&v30];
  v10 = v31;
  v11 = v30;
  if (v32 > 3)
  {
    if ((v32 - 7) >= 3)
    {
      if ((v32 - 5) >= 2)
      {
        LOBYTE(v12) = v32 == 4;
        goto LABEL_39;
      }

      if ((scope & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        LOBYTE(v12) = PKAltDSIDIsCurrentUser();
        goto LABEL_39;
      }

LABEL_31:
      LOBYTE(v12) = 0;
      goto LABEL_39;
    }

LABEL_14:
    LOBYTE(v12) = [databaseCopy scope] == 2;
    goto LABEL_39;
  }

  if (v32 == 1)
  {
    goto LABEL_14;
  }

  if (v32 == 2)
  {
    if (scope != 2)
    {
      goto LABEL_31;
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = self->_accounts;
    v12 = [(NSSet *)obj countByEnumeratingWithState:&v26 objects:v33 count:16];
    if (v12)
    {
      v24 = v11;
      v16 = *v27;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          if (([v18 isSharedAccount] & 1) == 0)
          {
            accountIdentifier = [v18 accountIdentifier];
            v20 = v10;
            v21 = v20;
            if (accountIdentifier == v20)
            {

LABEL_34:
              LOBYTE(v12) = 1;
              goto LABEL_35;
            }

            if (v10 && accountIdentifier)
            {
              v22 = [accountIdentifier isEqualToString:v20];

              if (v22)
              {
                goto LABEL_34;
              }
            }

            else
            {
            }
          }
        }

        v12 = [(NSSet *)obj countByEnumeratingWithState:&v26 objects:v33 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

LABEL_35:
      v11 = v24;
    }
  }

  else
  {
    if (v32 != 3 || scope != 2)
    {
      goto LABEL_31;
    }

    identifier = [(PKPeerPaymentAccount *)self->_peerPaymentAccount identifier];
    v14 = v10;
    v15 = v14;
    if (identifier == v14)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v14 && identifier)
      {
        LOBYTE(v12) = [identifier isEqualToString:v14];
      }
    }
  }

LABEL_39:

  return v12;
}

- (id)_parseTransactionRecords:(id)records request:(id)request databaseIdentifier:(id)identifier updateReasons:(unint64_t)reasons
{
  recordsCopy = records;
  requestCopy = request;
  identifierCopy = identifier;
  v13 = objc_alloc_init(PKCloudRecordArray);
  v14 = objc_alloc_init(NSMutableSet);
  v15 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Parsing all fetched records.", buf, 2u);
  }

  v16 = PKLogFacilityTypeGetObject();
  v17 = os_signpost_id_make_with_pointer(v16, self);
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v18 = v17;
    if (os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, v18, "cloudstore:processTransactions", "", buf, 2u);
    }
  }

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000C090C;
  v34[3] = &unk_1008428B0;
  v34[4] = self;
  v19 = identifierCopy;
  v35 = v19;
  v20 = requestCopy;
  v36 = v20;
  reasonsCopy = reasons;
  v21 = v13;
  v37 = v21;
  v22 = v14;
  v38 = v22;
  [recordsCopy enumerateKeysAndObjectsForItemType:1 usingBlock:v34];
  v23 = v16;
  v24 = os_signpost_id_make_with_pointer(v23, self);
  if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v25 = v24;
    if (os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_END, v25, "cloudstore:processTransactions", "", buf, 2u);
    }
  }

  if ([v22 count])
  {
    v26 = objc_autoreleasePoolPush();
    allObjects = [v22 allObjects];
    v28 = [allObjects pk_createArrayBySafelyApplyingBlock:&stru_1008428F0];

    [(PDCloudStoreContainer *)self reportContainerChangeSignpostEventType:35 stateName:0 objectNames:v28 changeToken:0 error:0 operationGroupName:0 operationGroupNameSuffix:0];
    transactionProcessor = self->_transactionProcessor;
    v30 = [v22 copy];
    [(PDPaymentTransactionProcessor *)transactionProcessor processPaymentTransactionConfigurations:v30];

    objc_autoreleasePoolPop(v26);
  }

  v31 = v38;
  v32 = v21;

  return v21;
}

- (BOOL)_canFormShareFromCloudStoreRecord:(id)record
{
  v3 = [record recordsWithRecordType:CKRecordTypeShare];
  firstObject = [v3 firstObject];

  return firstObject != 0;
}

- (BOOL)_canFormShareLockFromCloudStoreRecord:(id)record
{
  v3 = [record recordsWithRecordType:PKCloudShareCreationLockRecordType];
  firstObject = [v3 firstObject];

  return firstObject != 0;
}

- (BOOL)_canFormTransactionFromCloudStoreRecord:(id)record
{
  recordCopy = record;
  v4 = [recordCopy recordsWithRecordType:PKCloudTransactionRecordType];
  firstObject = [v4 firstObject];

  encryptedValues = [firstObject encryptedValues];
  v7 = [encryptedValues objectForKey:PKCloudTransactionCloudVersionKey];

  if (firstObject)
  {
    if (!v7 || [v7 integerValue] == 1)
    {
      v8 = 1;
      goto LABEL_13;
    }

    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v7;
      v10 = "Ignoring transaction record with unsupported transaction version %@";
      v11 = v9;
      v12 = 12;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      v10 = "Missing transaction record.";
      v11 = v9;
      v12 = 2;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v14, v12);
    }
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = recordCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Cannot form local transaction for cloudStoreRecord %@", &v14, 0xCu);
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (void)_processShareWithRecordParser:(id)parser request:(id)request databaseIdentifier:(id)identifier completion:(id)completion
{
  requestCopy = request;
  identifierCopy = identifier;
  completionCopy = completion;
  parserCopy = parser;
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_1000C28B4;
  v59[3] = &unk_100841D70;
  v59[4] = self;
  v14 = objc_alloc_init(NSMutableSet);
  v60 = v14;
  [parserCopy enumerateKeysAndObjectsForItemType:6 usingBlock:v59];

  if ([v14 count])
  {
    v36 = requestCopy;
    v37 = completionCopy;
    if ([requestCopy returnRecords])
    {
      v34 = objc_alloc_init(PKCloudRecordArray);
    }

    else
    {
      v34 = 0;
    }

    v15 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    v16 = objc_alloc_init(NSMutableSet);
    v17 = objc_alloc_init(NSMutableSet);
    v18 = objc_alloc_init(NSMutableSet);
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_1000C29F0;
    v54[3] = &unk_10083EB78;
    v55 = v14;
    v19 = v17;
    v56 = v19;
    v20 = v18;
    v57 = v20;
    v21 = v16;
    v58 = v21;
    [v15 addOperation:v54];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1000C2CD8;
    v47[3] = &unk_100842968;
    v48 = v19;
    v49 = v20;
    selfCopy = self;
    v22 = identifierCopy;
    v51 = v22;
    v23 = v36;
    v52 = v23;
    v24 = v21;
    v53 = v24;
    v35 = v20;
    v25 = v19;
    v26 = v15;
    [v15 addOperation:v47];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000C390C;
    v41[3] = &unk_100841C30;
    v42 = v24;
    v27 = v34;
    v43 = v27;
    v44 = v22;
    v28 = v23;
    requestCopy = v36;
    v45 = v28;
    selfCopy2 = self;
    v29 = v24;
    v30 = v26;
    [v26 addOperation:v41];
    v31 = +[NSNull null];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000C3DD4;
    v38[3] = &unk_1008422D8;
    completionCopy = v37;
    v39 = v27;
    v40 = v37;
    v32 = v27;
    v33 = [v30 evaluateWithInput:v31 completion:v38];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)_processZoneShareLockWithRecordParser:(id)parser request:(id)request databaseIdentifier:(id)identifier completion:(id)completion
{
  parserCopy = parser;
  identifierCopy = identifier;
  completionCopy = completion;
  if ([request returnRecords])
  {
    v12 = objc_alloc_init(PKCloudRecordArray);
  }

  else
  {
    v12 = 0;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000C3F04;
  v15[3] = &unk_100841D70;
  v13 = v12;
  v16 = v13;
  v17 = identifierCopy;
  v14 = identifierCopy;
  [parserCopy enumerateKeysAndObjectsForItemType:8 usingBlock:v15];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v13);
  }
}

- (void)_processRecurringPaymentsWithRecordParser:(id)parser request:(id)request databaseIdentifier:(id)identifier completion:(id)completion
{
  parserCopy = parser;
  identifierCopy = identifier;
  completionCopy = completion;
  if ([request returnRecords])
  {
    v13 = objc_alloc_init(PKCloudRecordArray);
  }

  else
  {
    v13 = 0;
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000C41D8;
  v16[3] = &unk_1008429B8;
  v16[4] = self;
  v14 = v13;
  v17 = v14;
  v18 = identifierCopy;
  v15 = identifierCopy;
  [parserCopy enumerateKeysAndObjectsForItemType:9 usingBlock:v16];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v14);
  }
}

- (void)_processCounterpartImageDataWithRecordParser:(id)parser request:(id)request databaseIdentifier:(id)identifier completion:(id)completion
{
  parserCopy = parser;
  identifierCopy = identifier;
  completionCopy = completion;
  if ([request returnRecords])
  {
    v13 = objc_alloc_init(PKCloudRecordArray);
  }

  else
  {
    v13 = 0;
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000C46B4;
  v16[3] = &unk_1008429B8;
  v16[4] = self;
  v14 = v13;
  v17 = v14;
  v18 = identifierCopy;
  v15 = identifierCopy;
  [parserCopy enumerateKeysAndObjectsForItemType:10 usingBlock:v16];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v14);
  }
}

- (void)_processPendingRequestsWithRecordParser:(id)parser request:(id)request databaseIdentifier:(id)identifier completion:(id)completion
{
  parserCopy = parser;
  identifierCopy = identifier;
  completionCopy = completion;
  if ([request returnRecords])
  {
    v13 = objc_alloc_init(PKCloudRecordArray);
  }

  else
  {
    v13 = 0;
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000C4B68;
  v16[3] = &unk_1008429B8;
  v16[4] = self;
  v14 = v13;
  v17 = v14;
  v18 = identifierCopy;
  v15 = identifierCopy;
  [parserCopy enumerateKeysAndObjectsForItemType:12 usingBlock:v16];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v14);
  }
}

- (void)_fetchMissingTransactionRecordsWithRecordParser:(id)parser request:(id)request databaseIdentifier:(id)identifier completion:(id)completion
{
  parserCopy = parser;
  requestCopy = request;
  identifierCopy = identifier;
  completionCopy = completion;
  workQueue = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C5088;
  block[3] = &unk_10083FD78;
  v20 = parserCopy;
  selfCopy = self;
  v22 = identifierCopy;
  v23 = requestCopy;
  v24 = completionCopy;
  v15 = completionCopy;
  v16 = requestCopy;
  v17 = identifierCopy;
  v18 = parserCopy;
  dispatch_async(workQueue, block);
}

- (id)_transactionSourceIdentifierForTransactionRecordID:(id)d recordType:(id)type databaseIdentifier:(id)identifier
{
  dCopy = d;
  typeCopy = type;
  identifierCopy = identifier;
  if (![(PDApplePayCloudStoreContainer *)self _isTransactionItemFromRecordType:typeCopy])
  {
    v23 = 0;
    goto LABEL_123;
  }

  zoneID = [dCopy zoneID];
  zoneName = [zoneID zoneName];
  recordName = [dCopy recordName];
  v14 = +[PKPaymentTransaction recordNamePrefix];
  if ([recordName hasPrefix:v14])
  {
    v15 = [recordName substringFromIndex:{objc_msgSend(v14, "length")}];

    recordName = v15;
  }

  v16 = PKApplePayContainerCashZoneNamePrefix;
  v155 = identifierCopy;
  selfCopy = self;
  if ([zoneName hasPrefix:PKApplePayContainerCashZoneNamePrefix])
  {
    v152 = zoneID;
    v17 = [zoneName stringByReplacingOccurrencesOfString:v16 withString:&stru_10086D930];
    identifier = [(PKPeerPaymentAccount *)self->_peerPaymentAccount identifier];
    v19 = v17;
    v20 = identifier;
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      if (!v19 || !v20)
      {

        goto LABEL_27;
      }

      v22 = [v19 isEqualToString:v20];

      if (!v22)
      {
LABEL_27:
        dataSource = [(PDCloudStoreContainer *)self dataSource];
        transactionSourceIdentifier = [dataSource transactionSourceIdentifierForPeerPaymentAccountIdentifier:v19];

        if (transactionSourceIdentifier)
        {
          goto LABEL_91;
        }

        v145 = zoneName;
        containerManager = [(PDCloudStoreContainer *)self containerManager];
        v43 = [containerManager databaseIdentifierForScope:2];
        v44 = v155;
        v45 = v43;
        v46 = v45;
        if (v45 == v44)
        {
        }

        else
        {
          if (!v44 || !v45)
          {

            goto LABEL_55;
          }

          v47 = [v44 isEqualToString:v45];

          if ((v47 & 1) == 0)
          {
LABEL_55:
            v141 = v14;
            v150 = recordName;
            containerManager2 = [(PDCloudStoreContainer *)selfCopy containerManager];
            v73 = [containerManager2 databaseIdentifierForScope:3];
            v74 = v44;
            v75 = v73;
            v76 = v75;
            if (v75 == v74)
            {

              self = selfCopy;
            }

            else
            {
              if (!v44 || !v75)
              {

                transactionSourceIdentifier = 0;
                zoneName = v145;
                recordName = v150;
                goto LABEL_90;
              }

              v77 = [v74 isEqualToString:v75];

              self = selfCopy;
              if ((v77 & 1) == 0)
              {
                transactionSourceIdentifier = 0;
                zoneName = v145;
                recordName = v150;
                goto LABEL_91;
              }
            }

            associatedAccountInformation = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedAccountInformation];
            [associatedAccountInformation associatedAccounts];
            v80 = v79 = self;
            v81 = [v80 count];

            recordName = v150;
            if (v81 == 1)
            {
              v82 = v79;
              associatedAccountInformation2 = [(PKPeerPaymentAccount *)v79->_peerPaymentAccount associatedAccountInformation];
              associatedAccounts = [associatedAccountInformation2 associatedAccounts];
              anyObject = [associatedAccounts anyObject];
              transactionSourceIdentifier = [anyObject transactionSourceIdentifier];

              zoneName = v145;
              v14 = v141;
              self = v82;
              goto LABEL_91;
            }

            v104 = PKLogFacilityTypeGetObject();
            v14 = v141;
            if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v171 = dCopy;
              v172 = 2112;
              v173 = v74;
              _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "Cannot get transaction source identifier for recordID %@ in database %@", buf, 0x16u);
            }

            transactionSourceIdentifier = 0;
            zoneName = v145;
LABEL_90:
            self = selfCopy;
LABEL_91:

            zoneID = v152;
            if (!transactionSourceIdentifier)
            {
              goto LABEL_111;
            }

            goto LABEL_122;
          }
        }

        dataSource2 = [(PDCloudStoreContainer *)selfCopy dataSource];
        associatedPassUniqueID = [(PKPeerPaymentAccount *)selfCopy->_peerPaymentAccount associatedPassUniqueID];
        v71 = [dataSource2 transactionSourceIdentifiersForPassUniqueIdentifier:associatedPassUniqueID];
        transactionSourceIdentifier = [v71 anyObject];

        self = selfCopy;
        zoneName = v145;
        goto LABEL_91;
      }
    }

    dataSource3 = [(PDCloudStoreContainer *)self dataSource];
    associatedPassUniqueID2 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassUniqueID];
    [dataSource3 transactionSourceIdentifiersForPassUniqueIdentifier:associatedPassUniqueID2];
    v35 = dCopy;
    v36 = v14;
    v37 = recordName;
    v39 = v38 = zoneName;
    transactionSourceIdentifier = [v39 anyObject];

    zoneName = v38;
    recordName = v37;
    v14 = v36;
    dCopy = v35;

    self = selfCopy;
    if (transactionSourceIdentifier)
    {
      goto LABEL_91;
    }

    goto LABEL_27;
  }

  if (![zoneName hasPrefix:PKApplePayContainerCardZoneNamePrefix])
  {
    v29 = PKCloudStoreTransactionsZoneName;
    v30 = zoneName;
    v31 = v30;
    if (v30 == v29)
    {
    }

    else
    {
      if (!v30 || !v29)
      {

LABEL_37:
        v48 = PKApplePayContainerSavingsZoneNamePrefix;
        if (![v31 hasPrefix:PKApplePayContainerSavingsZoneNamePrefix])
        {
          goto LABEL_111;
        }

        v49 = [v31 stringByReplacingOccurrencesOfString:v48 withString:&stru_10086D930];
        if ([v49 length])
        {
          dataSource4 = [(PDCloudStoreContainer *)self dataSource];
          transactionSourceIdentifier = [dataSource4 transactionSourceIdentifierForAccountIdentifier:v49];
        }

        else
        {
          transactionSourceIdentifier = 0;
        }

        if (!transactionSourceIdentifier)
        {
          goto LABEL_111;
        }

        goto LABEL_122;
      }

      v32 = [v30 isEqualToString:v29];

      if (!v32)
      {
        goto LABEL_37;
      }
    }

    dataSource5 = [(PDCloudStoreContainer *)self dataSource];
    transactionSourceIdentifier = [dataSource5 broadwayOrSurfTransactionSourceIdentifierForAmbiguousServiceIdentifier:recordName transactionAccountIdentifier:0 transactionAccountType:0 transactionAltDSID:0];
    goto LABEL_110;
  }

  v139 = typeCopy;
  ownerName = [zoneID ownerName];
  v25 = PKEqualObjects();

  v166 = 0;
  v167 = 2;
  v165 = 0;
  [PKCloudStoreZone zoneValueForZoneName:zoneName outZoneType:&v167 outAccountIdentifier:&v166 altDSID:&v165];
  dataSource5 = v166;
  v144 = v165;
  if (!dataSource5)
  {
    v138 = 0;
    self = selfCopy;
LABEL_40:
    v28 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v171 = dCopy;
      v172 = 2112;
      v173 = zoneID;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Cannot find the shared account cloud store zone for record %@ in zone %@", buf, 0x16u);
    }

    v143 = 0;
    goto LABEL_43;
  }

  if (v25)
  {
    v27 = 1;
  }

  else
  {
    v27 = 2;
  }

  self = selfCopy;
  v138 = [(NSDictionary *)selfCopy->_sharedAccountCloudStoreByAccountIdentifier objectForKey:dataSource5];
  v143 = [v138 sharedAccountZoneWithName:zoneName access:v27];
  if (!v143)
  {
    goto LABEL_40;
  }

  v28 = PKLogFacilityTypeGetObject();
LABEL_43:
  log = v28;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v51 = CKDatabaseScopeString();
    v52 = PKCloudStoreZoneTypeToString();
    *buf = 138544386;
    v171 = v51;
    v172 = 2112;
    v173 = v143;
    v174 = 2112;
    v175 = dataSource5;
    v176 = 2112;
    v177 = v144;
    v178 = 2114;
    v179 = v52;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "The card record came from the database scope %{public}@ and the users current zone access is %@. The accountIdentifierFromZoneName %@, altDSIDFromZoneName %@, zoneTypeFromZoneName %{public}@", buf, 0x34u);

    v28 = log;
  }

  if ((v167 - 5) < 2)
  {
    v62 = v144;
    goto LABEL_100;
  }

  if (v167 == 2)
  {
    v140 = v14;
    [(PDCloudStoreContainer *)self dataSource];
    v64 = v63 = dataSource5;
    v65 = [v64 accountWithIdentifier:v63];

    dataSource6 = [(PDCloudStoreContainer *)self dataSource];
    v131 = v65;
    associatedPassUniqueID3 = [v65 associatedPassUniqueID];
    v130 = dataSource6;
    v68 = [dataSource6 transactionSourceIdentifiersForPassUniqueIdentifier:associatedPassUniqueID3];
    transactionSourceIdentifier = [v68 anyObject];

    dataSource5 = v63;
    v28 = log;
    v149 = 0;
    goto LABEL_99;
  }

  if (v167 != 4)
  {
    goto LABEL_103;
  }

  v140 = v14;
  dataSource7 = [(PDCloudStoreContainer *)self dataSource];
  v54 = [dataSource7 accountWithIdentifier:dataSource5];

  dataSource8 = [(PDCloudStoreContainer *)self dataSource];
  v131 = v54;
  associatedPassUniqueID4 = [v54 associatedPassUniqueID];
  v57 = [dataSource8 transactionSourceIdentifiersForPassUniqueIdentifier:associatedPassUniqueID4];
  anyObject2 = [v57 anyObject];

  self = selfCopy;
  v59 = anyObject2;

  dataSource9 = [(PDCloudStoreContainer *)selfCopy dataSource];
  v61 = [dataSource9 transactionWithServiceIdentifier:recordName transactionSourceIdentifier:v59];

  v128 = v61;
  if (v61)
  {
    transactionSourceIdentifier = v59;
    v149 = PKCurrentUserAltDSID();
    v130 = transactionSourceIdentifier;
    v28 = log;
    goto LABEL_98;
  }

  v130 = v59;
  dataSource10 = [(PDCloudStoreContainer *)selfCopy dataSource];
  v87 = [dataSource10 accountUsersForAccountWithIdentifier:dataSource5];

  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  obj = v87;
  v134 = [obj countByEnumeratingWithState:&v161 objects:v169 count:16];
  if (!v134)
  {
    v149 = 0;
    transactionSourceIdentifier = 0;
    v28 = log;
    goto LABEL_97;
  }

  v149 = 0;
  v153 = zoneID;
  v132 = dCopy;
  v133 = *v162;
  v146 = zoneName;
  v135 = dataSource5;
  while (2)
  {
    for (i = 0; i != v134; i = i + 1)
    {
      if (*v162 != v133)
      {
        objc_enumerationMutation(obj);
      }

      v89 = *(*(&v161 + 1) + 8 * i);
      dataSource11 = [(PDCloudStoreContainer *)self dataSource];
      altDSID = [v89 altDSID];
      v92 = [dataSource11 primaryTransactionSourceIdentifierForAccountUserAltDSID:altDSID accountIdentifier:dataSource5];

      dataSource12 = [(PDCloudStoreContainer *)self dataSource];
      v94 = [dataSource12 transactionWithServiceIdentifier:recordName transactionSourceIdentifier:v92];

      if (v94)
      {
        transactionSourceIdentifier = v92;
        [v89 altDSID];
        altDSID2 = v105 = v92;

        v28 = log;
LABEL_96:

        v149 = altDSID2;
        typeCopy = v139;
        dataSource5 = v135;
        goto LABEL_97;
      }

      v137 = v92;
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      transactionSourceIdentifiers = [v89 transactionSourceIdentifiers];
      v96 = [transactionSourceIdentifiers countByEnumeratingWithState:&v157 objects:v168 count:16];
      if (v96)
      {
        v97 = v96;
        v98 = *v158;
LABEL_74:
        v99 = 0;
        while (1)
        {
          if (*v158 != v98)
          {
            objc_enumerationMutation(transactionSourceIdentifiers);
          }

          v100 = *(*(&v157 + 1) + 8 * v99);
          dataSource13 = [(PDCloudStoreContainer *)self dataSource];
          v102 = [dataSource13 transactionWithServiceIdentifier:recordName transactionSourceIdentifier:v100];

          if (v102)
          {
            break;
          }

          v99 = v99 + 1;
          self = selfCopy;
          if (v97 == v99)
          {
            v97 = [transactionSourceIdentifiers countByEnumeratingWithState:&v157 objects:v168 count:16];
            zoneName = v146;
            if (v97)
            {
              goto LABEL_74;
            }

            goto LABEL_80;
          }
        }

        transactionSourceIdentifier = v100;
        altDSID2 = [v89 altDSID];

        if (!transactionSourceIdentifier)
        {
          v149 = altDSID2;
          dCopy = v132;
          zoneID = v153;
          zoneName = v146;
          self = selfCopy;
          goto LABEL_83;
        }

        dCopy = v132;
        zoneID = v153;
        zoneName = v146;
        v28 = log;
        self = selfCopy;
        v105 = v137;
        goto LABEL_96;
      }

LABEL_80:

      dCopy = v132;
      zoneID = v153;
LABEL_83:
      v28 = log;

      dataSource5 = v135;
    }

    transactionSourceIdentifier = 0;
    typeCopy = v139;
    v134 = [obj countByEnumeratingWithState:&v161 objects:v169 count:16];
    if (v134)
    {
      continue;
    }

    break;
  }

LABEL_97:

LABEL_98:
  associatedPassUniqueID3 = v128;
LABEL_99:

  v14 = v140;
  v62 = v149;
  if (!transactionSourceIdentifier)
  {
LABEL_100:
    if (v62)
    {
      v154 = zoneID;
      v106 = dataSource5;
      v107 = v62;
      v108 = PKAltDSIDIsCurrentUser();
      dataSource14 = [(PDCloudStoreContainer *)self dataSource];
      v110 = dataSource14;
      v151 = v107;
      if (v108)
      {
        v136 = v106;
        v111 = [dataSource14 accountWithIdentifier:v106];

        dataSource15 = [(PDCloudStoreContainer *)self dataSource];
        associatedPassUniqueID5 = [v111 associatedPassUniqueID];
        [dataSource15 transactionSourceIdentifiersForPassUniqueIdentifier:associatedPassUniqueID5];
        v115 = v114 = zoneName;
        transactionSourceIdentifier = [v115 anyObject];

        zoneName = v114;
        dataSource5 = v136;

        self = selfCopy;
        v110 = v111;
      }

      else
      {
        dataSource5 = v106;
        transactionSourceIdentifier = [dataSource14 transactionSourceIdentifierForAccountUserAltDSID:v107 accountIdentifier:v106];
      }

      zoneID = v154;
      goto LABEL_108;
    }

LABEL_103:
    v142 = v14;
    v116 = dataSource5;
    v147 = zoneName;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v171 = dCopy;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "There is no altDSID defined for record %@", buf, 0xCu);
    }

    dataSource16 = [(PDCloudStoreContainer *)self dataSource];
    v110 = [dataSource16 accountWithIdentifier:v116];

    dataSource17 = [(PDCloudStoreContainer *)self dataSource];
    associatedPassUniqueID6 = [v110 associatedPassUniqueID];
    v120 = [dataSource17 transactionSourceIdentifiersForPassUniqueIdentifier:associatedPassUniqueID6];
    transactionSourceIdentifier = [v120 anyObject];

    self = selfCopy;
    dataSource5 = v116;
    v151 = 0;
    zoneName = v147;
    v14 = v142;
LABEL_108:

    v62 = v151;
  }

LABEL_110:
  if (!transactionSourceIdentifier)
  {
LABEL_111:
    dataSource18 = [(PDCloudStoreContainer *)self dataSource];
    v122 = [dataSource18 transactionsWithServiceIdentifier:recordName];

    if ([v122 count] == 1)
    {
      anyObject3 = [v122 anyObject];
      transactionSourceIdentifier = [anyObject3 transactionSourceIdentifier];

      if (!transactionSourceIdentifier)
      {
        goto LABEL_119;
      }
    }

    else
    {
      if ([v122 count] >= 2)
      {
        v124 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
        {
          v125 = [v122 count];
          *buf = 138543874;
          v171 = recordName;
          v172 = 2048;
          v173 = v125;
          v174 = 2112;
          v175 = v122;
          _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "There is more than one transaction with the service identifier %{public}@. We have enough information to determine which one out of %lu %@", buf, 0x20u);
        }
      }

LABEL_119:
      v126 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v171 = dCopy;
        v172 = 2114;
        v173 = typeCopy;
        _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "Could not find a transactionSourceIdentifier for record %@ and recordType %{public}@", buf, 0x16u);
      }

      transactionSourceIdentifier = 0;
    }
  }

LABEL_122:
  v23 = transactionSourceIdentifier;

  identifierCopy = v155;
LABEL_123:

  return v23;
}

- (id)_transactionSourceIdentifierForTransactionCloudStoreRecord:(id)record databaseIdentifier:(id)identifier
{
  recordCopy = record;
  identifierCopy = identifier;
  v7 = [recordCopy recordsWithRecordType:PKCloudTransactionRecordType];
  firstObject = [v7 firstObject];

  v9 = [firstObject pk_encryptedStringForKey:PKCloudTransactionFPANIdentifierKey];
  v10 = [firstObject pk_encryptedStringForKey:PKCloudTransactionPassSerialNumberKey];
  v11 = [firstObject pk_encryptedStringForKey:PKCloudTransactionPassTypeIdentifierKey];
  v12 = [firstObject pk_encryptedStringForKey:PKCloudTransactionAccountIdentifierKey];
  v13 = [firstObject pk_encryptedStringForKey:PKCloudTransactionAltDSIDKey];
  if (!v12)
  {
    v12 = [firstObject pk_encryptedStringForKey:PKCloudTransactionPeerPaymentAccountIdentifierKey];
  }

  v14 = [firstObject pk_stringForKey:PKCloudTransactionAccountTypeKey];
  v54 = PKPaymentTransactionAccountTypeFromString();

  if (v10)
  {
    v15 = v11 == 0;
  }

  else
  {
    v15 = 1;
  }

  v55 = v11;
  v56 = v13;
  if (v15)
  {
    selfCopy2 = self;
    if (!v9)
    {
      anyObject = 0;
      goto LABEL_11;
    }

    dataSource = [(PDCloudStoreContainer *)self dataSource];
    v17 = [dataSource passUniqueIdentifierWithPrimaryAccountIdentifier:v9];
  }

  else
  {
    v17 = PKGeneratePassUniqueID();
    selfCopy2 = self;
  }

  dataSource2 = [(PDCloudStoreContainer *)selfCopy2 dataSource];
  v20 = [dataSource2 transactionSourceIdentifiersForPassUniqueIdentifier:v17];
  anyObject = [v20 anyObject];

  if (anyObject)
  {
    goto LABEL_41;
  }

LABEL_11:
  if (!v12)
  {
    goto LABEL_41;
  }

  if ((v54 - 2) >= 3)
  {
    if (v54 == 1)
    {
      v53 = v10;
      v32 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount peerPaymentAccountWithIdentifier:v12];
      associatedPassUniqueID = [v32 associatedPassUniqueID];
      dataSource3 = [(PDCloudStoreContainer *)self dataSource];
      v47 = [dataSource3 transactionSourceIdentifiersForPassUniqueIdentifier:associatedPassUniqueID];
      anyObject = [v47 anyObject];

      if (!anyObject)
      {
        dataSource4 = [(PDCloudStoreContainer *)self dataSource];
        anyObject = [dataSource4 transactionSourceIdentifierForPeerPaymentAccountIdentifier:v12];

        if (!anyObject)
        {
          v49 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v63 = v12;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "No transaction source identifiers peer payment account id %@", buf, 0xCu);
          }

          anyObject = 0;
        }
      }

      goto LABEL_39;
    }

    if (v54)
    {
      goto LABEL_43;
    }
  }

  v52 = v9;
  v53 = v10;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v22 = self->_accounts;
  v23 = [(NSSet *)v22 countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v59;
    v50 = identifierCopy;
    v51 = recordCopy;
    while (2)
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v59 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v58 + 1) + 8 * i);
        accountIdentifier = [v27 accountIdentifier];
        v29 = v12;
        v30 = v29;
        if (accountIdentifier == v29)
        {

LABEL_30:
          v32 = v27;
          identifierCopy = v50;
          recordCopy = v51;
          goto LABEL_32;
        }

        if (accountIdentifier)
        {
          v31 = [accountIdentifier isEqualToString:v29];

          if (v31)
          {
            goto LABEL_30;
          }
        }

        else
        {
        }
      }

      v24 = [(NSSet *)v22 countByEnumeratingWithState:&v58 objects:v66 count:16];
      v32 = 0;
      identifierCopy = v50;
      recordCopy = v51;
      if (v24)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v32 = 0;
  }

LABEL_32:

  if (v56 && !PKAltDSIDIsCurrentUser())
  {
    v9 = v52;
    if (![v32 isSharedAccount] || (PKAltDSIDIsCurrentUser() & 1) != 0)
    {
      anyObject = 0;
      goto LABEL_40;
    }

    associatedPassUniqueID = [(PDCloudStoreContainer *)self dataSource];
    anyObject = [associatedPassUniqueID transactionSourceIdentifierForAccountUserAltDSID:v56 accountIdentifier:v12];
  }

  else
  {
    dataSource5 = [(PDCloudStoreContainer *)self dataSource];
    associatedPassUniqueID = [dataSource5 passUniqueIdentifierWithAssociatedAccountIdentifier:v12];

    dataSource6 = [(PDCloudStoreContainer *)self dataSource];
    v36 = dataSource6;
    v9 = v52;
    if (associatedPassUniqueID || v54 != 3)
    {
      v37 = [dataSource6 transactionSourceIdentifiersForPassUniqueIdentifier:associatedPassUniqueID];
      anyObject = [v37 anyObject];
    }

    else
    {
      anyObject = [dataSource6 transactionSourceIdentifierForAccountIdentifier:v12];
    }
  }

LABEL_39:

LABEL_40:
  v10 = v53;

LABEL_41:
  if (anyObject)
  {
    firstObject2 = firstObject;
    goto LABEL_48;
  }

LABEL_43:
  records = [recordCopy records];
  firstObject2 = [records firstObject];

  recordID = [firstObject2 recordID];
  recordType = [firstObject2 recordType];
  anyObject = [(PDApplePayCloudStoreContainer *)self _transactionSourceIdentifierForTransactionRecordID:recordID recordType:recordType databaseIdentifier:identifierCopy];

  if (!anyObject && firstObject2)
  {
    v42 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      recordID2 = [firstObject2 recordID];
      recordName = [recordID2 recordName];
      *buf = 138412546;
      v63 = recordName;
      v64 = 2112;
      v65 = v12;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Transaction source identifiers not found on device for record %@, accountIdentifier %@", buf, 0x16u);
    }

    anyObject = 0;
  }

LABEL_48:

  return anyObject;
}

- (id)_originDeviceIDForCloudStoreRecord:(id)record
{
  v3 = [record recordsWithRecordType:PKCloudTransactionDeviceDataRecordType];
  firstObject = [v3 firstObject];

  v5 = [firstObject pk_encryptedStringForKey:PKCloudTransactionOriginDeviceIDKey];

  return v5;
}

- (BOOL)_isAccountEventFromRecordType:(id)type
{
  typeCopy = type;
  v4 = PKCloudAccountEventRecordType;
  v5 = typeCopy;
  v6 = v4;
  v7 = v6;
  if (v6 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

- (BOOL)_isAccountEventAssociatedObjectFromRecordType:(id)type
{
  typeCopy = type;
  v4 = PKCloudAccountRewardsRecordType;
  v5 = typeCopy;
  v6 = v5;
  if (v4 == v5)
  {
    goto LABEL_78;
  }

  if (v5 && v4)
  {
    v7 = [v5 isEqualToString:v4];

    if (v7)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v8 = PKCloudCreditAccountStatementRecordType;
  v9 = v6;
  if (v8 == v9)
  {
    goto LABEL_78;
  }

  v10 = v9;
  if (v6 && v8)
  {
    v11 = [v9 isEqualToString:v8];

    if (v11)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v12 = PKCloudAccountServicingRecordType;
  v13 = v10;
  if (v12 == v13)
  {
    goto LABEL_78;
  }

  v14 = v13;
  if (v6 && v12)
  {
    v15 = [v13 isEqualToString:v12];

    if (v15)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v16 = PKCloudAccountPaymentRecordType;
  v17 = v14;
  if (v16 == v17)
  {
    goto LABEL_78;
  }

  v18 = v17;
  if (v6 && v16)
  {
    v19 = [v17 isEqualToString:v16];

    if (v19)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v20 = PKCloudAccountTransferRecordType;
  v21 = v18;
  if (v20 == v21)
  {
    goto LABEL_78;
  }

  v22 = v21;
  if (v6 && v20)
  {
    v23 = [v21 isEqualToString:v20];

    if (v23)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v24 = PKCloudAccountHoldRecordType;
  v25 = v22;
  if (v24 == v25)
  {
    goto LABEL_78;
  }

  v26 = v25;
  if (v6 && v24)
  {
    v27 = [v25 isEqualToString:v24];

    if (v27)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v28 = PKCloudAccountCreditTermsUpdateRecordType;
  v29 = v26;
  if (v28 == v29)
  {
    goto LABEL_78;
  }

  v30 = v29;
  if (v6 && v28)
  {
    v31 = [v29 isEqualToString:v28];

    if (v31)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v32 = PKCloudAccountPaymentReminderRecordType;
  v33 = v30;
  if (v32 == v33)
  {
    goto LABEL_78;
  }

  v34 = v33;
  if (v6 && v32)
  {
    v35 = [v33 isEqualToString:v32];

    if (v35)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v36 = PKCloudAccountPhysicalCardStatusUpdateRecordType;
  v37 = v34;
  if (v36 == v37)
  {
    goto LABEL_78;
  }

  v38 = v37;
  if (v6 && v36)
  {
    v39 = [v37 isEqualToString:v36];

    if (v39)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v40 = PKCloudAccountPhysicalCardShippingUpdateRecordType;
  v41 = v38;
  if (v40 == v41)
  {
    goto LABEL_78;
  }

  v42 = v41;
  if (v6 && v40)
  {
    v43 = [v41 isEqualToString:v40];

    if (v43)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v44 = PKCloudAccountVirtualCardStatusUpdateRecordType;
  v45 = v42;
  if (v44 == v45)
  {
    goto LABEL_78;
  }

  v46 = v45;
  if (v6 && v44)
  {
    v47 = [v45 isEqualToString:v44];

    if (v47)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v48 = PKCloudAccountBillPaymentSelectedSuggestedAmountRecordType;
  v49 = v46;
  if (v48 == v49)
  {
    goto LABEL_78;
  }

  v50 = v49;
  if (v6 && v48)
  {
    v51 = [v49 isEqualToString:v48];

    if (v51)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v52 = PKCloudAccountUserInfoRecordType;
  v53 = v50;
  if (v52 == v53)
  {
LABEL_78:
    v56 = 1;
LABEL_79:

    goto LABEL_80;
  }

  v54 = v53;
  if (!v6 || !v52)
  {

    goto LABEL_82;
  }

  v55 = [v53 isEqualToString:v52];

  if ((v55 & 1) == 0)
  {
LABEL_82:
    v58 = PKCloudAccountAssistanceProgramRecordType;
    v59 = v54;
    v60 = v58;
    v61 = v60;
    if (v60 == v59)
    {
      v56 = 1;
    }

    else
    {
      v56 = 0;
      if (v6 && v60)
      {
        v56 = [v59 isEqualToString:v60];
      }
    }

    goto LABEL_79;
  }

LABEL_77:
  v56 = 1;
LABEL_80:

  return v56;
}

- (id)_recordTypeForAccountEventRecord:(id)record
{
  v3 = [PKAccountEvent accountEventTypeFromRecord:record];
  if ((v3 - 1) > 0x19)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&off_100842CE8 + (v3 - 1));
  }

  return v4;
}

- (void)fetchAndStoreAccountEventsWithIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  workQueue = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C7B2C;
  block[3] = &unk_10083D320;
  v12 = identifiersCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = identifiersCopy;
  dispatch_async(workQueue, block);
}

- (void)_fetchMissingAccountEventsWithRecordParser:(id)parser request:(id)request databaseIdentifier:(id)identifier carriedOverRecordsByDatabaseIdentifier:(id)databaseIdentifier updateReasons:(unint64_t)reasons completion:(id)completion
{
  parserCopy = parser;
  requestCopy = request;
  identifierCopy = identifier;
  databaseIdentifierCopy = databaseIdentifier;
  completionCopy = completion;
  v17 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v18 = objc_alloc_init(NSMutableSet);
  v19 = objc_autoreleasePoolPush();
  v20 = objc_alloc_init(NSMutableArray);
  objc_opt_class();
  v92 = parserCopy;
  v93 = v17;
  context = v19;
  v91 = completionCopy;
  v110 = v18;
  v112 = identifierCopy;
  v108 = databaseIdentifierCopy;
  if (objc_opt_isKindOfClass())
  {
    transactionSourceIdentifiers = [requestCopy transactionSourceIdentifiers];
  }

  else
  {
    transactionSourceIdentifiers = 0;
  }

  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v22 = transactionSourceIdentifiers;
  v23 = [v22 countByEnumeratingWithState:&v148 objects:v154 count:16];
  v96 = v22;
  if (v23)
  {
    v24 = v23;
    v25 = *v149;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v149 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v148 + 1) + 8 * i);
        dataSource = [(PDCloudStoreContainer *)self dataSource];
        v29 = [dataSource transactionSourceTypeForTransactionSourceIdentifier:v27];

        if (v29 == 3)
        {
          dataSource2 = [(PDCloudStoreContainer *)self dataSource];
          v34 = [dataSource2 accountWithTransactionSourceIdentifier:v27];
LABEL_15:
          dataSource4 = v34;
          accountIdentifier = [v34 accountIdentifier];
LABEL_16:
          v35 = accountIdentifier;

          goto LABEL_18;
        }

        if (v29 == 2)
        {
          dataSource2 = [(PDCloudStoreContainer *)self dataSource];
          v34 = [dataSource2 accountUserWithTransactionSourceIdentifier:v27];
          goto LABEL_15;
        }

        if (!v29)
        {
          dataSource3 = [(PDCloudStoreContainer *)self dataSource];
          dataSource2 = [dataSource3 passUniqueIdentifierForTransactionSourceIdentifier:v27];

          v22 = v96;
          dataSource4 = [(PDCloudStoreContainer *)self dataSource];
          accountIdentifier = [dataSource4 associatedAccountIdentifierForPassWithUniqueIdentifier:dataSource2];
          goto LABEL_16;
        }

        v35 = 0;
LABEL_18:
        [v20 safelyAddObject:v35];
      }

      v24 = [v22 countByEnumeratingWithState:&v148 objects:v154 count:16];
    }

    while (v24);
  }

  v36 = objc_alloc_init(NSMutableSet);
  v37 = objc_alloc_init(NSMutableDictionary);
  v38 = objc_alloc_init(NSMutableSet);
  v139[0] = _NSConcreteStackBlock;
  v139[1] = 3221225472;
  v139[2] = sub_1000C8BC0;
  v139[3] = &unk_100842AF8;
  selfCopy2 = self;
  v139[4] = self;
  v89 = v20;
  v140 = v89;
  v40 = v108;
  v141 = v40;
  v102 = v112;
  v142 = v102;
  v41 = v38;
  v143 = v41;
  v103 = requestCopy;
  v144 = v103;
  v95 = v37;
  v145 = v95;
  v42 = v110;
  v146 = v42;
  v94 = v36;
  v147 = v94;
  v43 = v92;
  [v92 enumerateKeysAndObjectsForItemType:5 usingBlock:v139];
  v88 = v41;
  [v92 addRecords:v41];
  v100 = objc_alloc_init(NSMutableSet);
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v44 = v42;
  v45 = [v44 countByEnumeratingWithState:&v135 objects:v153 count:16];
  v46 = v93;
  if (v45)
  {
    v47 = v45;
    v48 = *v136;
    do
    {
      for (j = 0; j != v47; j = j + 1)
      {
        if (*v136 != v48)
        {
          objc_enumerationMutation(v44);
        }

        v50 = [(PDApplePayCloudStoreContainer *)self identifierFromRecord:*(*(&v135 + 1) + 8 * j)];
        [v100 addObject:v50];
      }

      v47 = [v44 countByEnumeratingWithState:&v135 objects:v153 count:16];
    }

    while (v47);
  }

  v87 = v44;

  [v92 removeIdentifiers:v100 itemType:5];
  v51 = PKLogFacilityTypeGetObject();
  v52 = os_signpost_id_make_with_pointer(v51, self);
  if (v52 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v53 = v52;
    if (os_signpost_enabled(v51))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, OS_SIGNPOST_INTERVAL_BEGIN, v53, "cloudstore:fetchMissingAccountEventRecords", "", buf, 2u);
    }
  }

  v54 = v94;
  v55 = v102;
  v56 = v103;
  if ([v94 count])
  {
    v129[0] = _NSConcreteStackBlock;
    v129[1] = 3221225472;
    v129[2] = sub_1000C9688;
    v129[3] = &unk_100841C30;
    v129[4] = self;
    v130 = v102;
    v131 = v94;
    v132 = v103;
    v133 = v92;
    [v93 addOperation:v129];
  }

  v57 = v95;
  if ([v95 count])
  {
    v86 = v40;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    obj = v95;
    v98 = [obj countByEnumeratingWithState:&v125 objects:v152 count:16];
    if (v98)
    {
      v58 = v119;
      v97 = *v126;
      v59 = &PKPaymentNetworkAmex_ptr;
      v60 = &PKPaymentNetworkAmex_ptr;
      v61 = &PKPaymentNetworkAmex_ptr;
      do
      {
        v62 = 0;
        do
        {
          if (*v126 != v97)
          {
            objc_enumerationMutation(obj);
          }

          v101 = v62;
          v63 = *(*(&v125 + 1) + 8 * v62);
          v106 = [obj objectForKey:v63];
          v64 = [v106 count];
          if (v64)
          {
            v65 = 0;
            v104 = v64;
            v105 = v63;
            do
            {
              if (&v64[-v65] >= 5)
              {
                v66 = 5;
              }

              else
              {
                v66 = &v64[-v65];
              }

              v113 = v66;
              v109 = [v106 subarrayWithRange:v65];
              v109 = [(PKPaymentNetwork *)v59[395] predicateWithFormat:@"accountEventReference IN %@", v109];
              v67 = [objc_alloc(v60[262]) initWithRecordType:v63 predicate:v109];
              v68 = objc_alloc(v61[266]);
              [v109 firstObject];
              v69 = v59;
              v70 = v58;
              v71 = v46;
              v73 = v72 = v43;
              recordID = [v73 recordID];
              zoneID = [recordID zoneID];
              v76 = [v68 initWithZoneID:zoneID];

              v43 = v72;
              v46 = v71;
              v58 = v70;
              v59 = v69;
              v118[0] = _NSConcreteStackBlock;
              v118[1] = 3221225472;
              v119[0] = sub_1000C98D0;
              v119[1] = &unk_100842968;
              v119[2] = self;
              v120 = v67;
              v121 = v103;
              v122 = v76;
              v123 = v102;
              v124 = v43;
              v77 = v76;
              v61 = &PKPaymentNetworkAmex_ptr;
              v78 = v77;
              v79 = v67;
              v63 = v105;
              v80 = v79;
              [v46 addOperation:v118];

              v60 = &PKPaymentNetworkAmex_ptr;
              v64 = v104;
              v65 += v113;
            }

            while (v65 < v104);
          }

          v62 = v101 + 1;
        }

        while ((v101 + 1) != v98);
        v98 = [obj countByEnumeratingWithState:&v125 objects:v152 count:16];
      }

      while (v98);
    }

    selfCopy2 = self;
    v57 = v95;
    v22 = v96;
    v40 = v86;
    v55 = v102;
    v56 = v103;
    v54 = v94;
  }

  objc_autoreleasePoolPop(context);
  v81 = +[NSNull null];
  v114[0] = _NSConcreteStackBlock;
  v114[1] = 3221225472;
  v114[2] = sub_1000C9B5C;
  v114[3] = &unk_10083FC60;
  v114[4] = selfCopy2;
  v115 = v87;
  v116 = v55;
  v117 = v91;
  v82 = v55;
  v83 = v87;
  v84 = v91;
  v85 = [v46 evaluateWithInput:v81 completion:v114];
}

- (id)_recordsByFromAccountEvent:(id)event zone:(id)zone
{
  eventCopy = event;
  zoneID = [zone zoneID];
  v7 = [CKRecordID alloc];
  recordName = [eventCopy recordName];
  v9 = [v7 initWithRecordName:recordName zoneID:zoneID];

  v10 = [CKRecord alloc];
  v11 = [v10 initWithRecordType:PKCloudAccountEventRecordType recordID:v9];
  v12 = [PKCloudStoreRecord alloc];
  v18 = v11;
  v13 = [NSArray arrayWithObjects:&v18 count:1];
  v14 = [v12 initWithRecords:v13];

  [eventCopy encodeWithCloudStoreCoder:v14 codingType:2];
  records = [v14 records];
  v16 = [NSSet setWithArray:records];

  return v16;
}

- (void)_parseAccountEventsFromRecordParser:(id)parser databaseIdentifier:(id)identifier shouldUpdateLocalDatabase:(BOOL)database shouldReturn:(BOOL)return updateReasons:(unint64_t)reasons completion:(id)completion
{
  returnCopy = return;
  databaseCopy = database;
  parserCopy = parser;
  identifierCopy = identifier;
  completionCopy = completion;
  if (!databaseCopy)
  {
    v16 = 0;
    if (!returnCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = objc_alloc_init(PKCloudRecordArray);
    goto LABEL_6;
  }

  v16 = objc_alloc_init(NSMutableSet);
  if (returnCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = 0;
LABEL_6:
  v18 = PKCurrentUserAltDSID();
  v19 = PKLogFacilityTypeGetObject();
  v20 = os_signpost_id_make_with_pointer(v19, self);
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v21 = v20;
    if (os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, v21, "cloudstore:processAccountEvents", "", buf, 2u);
    }
  }

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000CA184;
  v37[3] = &unk_100842B48;
  v22 = v18;
  v38 = v22;
  v23 = v16;
  v39 = v23;
  reasonsCopy = reasons;
  v24 = v17;
  v40 = v24;
  v25 = identifierCopy;
  v41 = v25;
  [parserCopy enumerateKeysAndObjectsForItemType:5 usingBlock:v37];
  v26 = v19;
  v27 = os_signpost_id_make_with_pointer(v26, self);
  if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v28 = v27;
    if (os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_END, v28, "cloudstore:processAccountEvents", "", buf, 2u);
    }
  }

  if (databaseCopy)
  {
    if ([v23 count])
    {
      v29 = objc_autoreleasePoolPush();
      allObjects = [v23 allObjects];
      v31 = [allObjects pk_createArrayBySafelyApplyingBlock:&stru_100842B88];

      [(PDCloudStoreContainer *)self reportContainerChangeSignpostEventType:36 stateName:0 objectNames:v31 changeToken:0 error:0 operationGroupName:0 operationGroupNameSuffix:0];
      objc_autoreleasePoolPop(v29);
    }

    accountManager = self->_accountManager;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000CA478;
    v34[3] = &unk_10083C820;
    v36 = completionCopy;
    v35 = v24;
    [(PDAccountManager *)accountManager insertEvents:v23 completion:v34];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v24);
  }
}

- (BOOL)_isAccountFromRecordType:(id)type
{
  typeCopy = type;
  v4 = PKCloudAccountRecordType;
  v5 = typeCopy;
  v6 = v4;
  v7 = v6;
  if (v6 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

- (void)_parseAccountsFromRecordParser:(id)parser databaseIdentifier:(id)identifier shouldUpdateLocalDatabase:(BOOL)database shouldReturn:(BOOL)return completion:(id)completion
{
  returnCopy = return;
  databaseCopy = database;
  parserCopy = parser;
  identifierCopy = identifier;
  completionCopy = completion;
  if (!databaseCopy)
  {
    v15 = 0;
    if (!returnCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = objc_alloc_init(PKCloudRecordArray);
    goto LABEL_6;
  }

  v15 = objc_alloc_init(NSMutableSet);
  if (returnCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = 0;
LABEL_6:
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000CA750;
  v32[3] = &unk_100842C00;
  v33 = dispatch_group_create();
  selfCopy = self;
  v17 = v15;
  v35 = v17;
  v18 = v16;
  v36 = v18;
  v37 = identifierCopy;
  v19 = identifierCopy;
  v20 = v33;
  [parserCopy enumerateKeysAndObjectsForItemType:7 usingBlock:v32];
  objc_initWeak(&location, self);
  v21 = dispatch_get_global_queue(2, 0);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000CAB48;
  v25[3] = &unk_100842C28;
  v30 = databaseCopy;
  objc_copyWeak(&v29, &location);
  v27 = v18;
  v28 = completionCopy;
  v26 = v17;
  v22 = v18;
  v23 = completionCopy;
  v24 = v17;
  dispatch_group_notify(v20, v21, v25);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

- (void)_insertAccountBalanceUpdateNotificationIfNecessaryForAccount:(id)account record:(id)record
{
  accountCopy = account;
  recordCopy = record;
  dataSource = [(PDCloudStoreContainer *)self dataSource];
  associatedPassUniqueID = [accountCopy associatedPassUniqueID];
  v10 = [dataSource passWithUniqueIdentifier:associatedPassUniqueID];
  paymentPass = [v10 paymentPass];

  LOBYTE(associatedPassUniqueID) = [paymentPass settings];
  cloudStoreZoneNames = [accountCopy cloudStoreZoneNames];
  v13 = [cloudStoreZoneNames containsObject:PKCloudStoreAppleBalanceTransactionsZoneName];

  if ((associatedPassUniqueID & 8) != 0 && (v13 & 1) == 0)
  {
    v14 = [recordCopy recordsWithRecordType:PKCloudAccountRecordType];
    firstObject = [v14 firstObject];

    v16 = [firstObject pk_encryptedStringForKey:PKCloudAccountBalanceUpdateReasonKey];
    v17 = PKCloudAccountBalanceUpdateInStoreTopUpReason;
    v18 = v16;
    v19 = v17;
    v20 = v19;
    if (v18 == v19)
    {
      goto LABEL_16;
    }

    if (v18 && v19)
    {
      v21 = [v18 isEqualToString:v19];

      if (v21)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    v22 = PKCloudAccountBalanceUpdateInWalletTopUpReason;
    v23 = v18;
    v24 = v22;
    v20 = v24;
    if (v23 == v24)
    {
LABEL_16:
    }

    else
    {
      if (!v18 || !v24)
      {

        goto LABEL_25;
      }

      v25 = [v23 isEqualToString:v24];

      if ((v25 & 1) == 0)
      {
LABEL_25:
        v26 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v32 = 138412290;
          v33 = v23;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Error: attempted to insert balance update notification for unsupported update reason %@", &v32, 0xCu);
        }

        goto LABEL_22;
      }
    }

LABEL_17:
    v26 = [firstObject pk_encryptedObjectForKey:PKCloudAccountBalanceUpdateAmountKey ofClass:objc_opt_class()];
    if (v26)
    {
      appleBalanceDetails = [accountCopy appleBalanceDetails];
      currencyCode = [appleBalanceDetails currencyCode];

      [v26 decimalValue];
      v29 = [NSDecimalNumber decimalNumberWithDecimal:&v32];
      v30 = PKCurrencyAmountMake();

      [(PDAccountManager *)self->_accountManager insertAccountBalanceUpdateNotificationForAccount:accountCopy updateAmount:v30];
    }

    else
    {
      currencyCode = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(currencyCode, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [recordCopy description];
        v32 = 138412290;
        v33 = v31;
        _os_log_impl(&_mh_execute_header, currencyCode, OS_LOG_TYPE_DEFAULT, "Error: missing balance update amount for balance update notification for account record %@", &v32, 0xCu);
      }
    }

LABEL_22:
    goto LABEL_23;
  }

  firstObject = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v32) = 0;
    _os_log_impl(&_mh_execute_header, firstObject, OS_LOG_TYPE_DEFAULT, "Not inserting account balance update notification: balance update notifications disabled", &v32, 2u);
  }

LABEL_23:
}

- (BOOL)_isIssuerMessagingFlagFromRecordType:(id)type
{
  typeCopy = type;
  v4 = PKCloudMessageRecordType;
  v5 = typeCopy;
  v6 = v4;
  v7 = v6;
  if (v6 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

- (void)_parseMessagesFromRecordParser:(id)parser databaseIdentifier:(id)identifier shouldUpdateLocalDatabase:(BOOL)database shouldReturn:(BOOL)return completion:(id)completion
{
  returnCopy = return;
  parserCopy = parser;
  identifierCopy = identifier;
  completionCopy = completion;
  if (returnCopy)
  {
    v15 = objc_alloc_init(PKCloudRecordArray);
  }

  else
  {
    v15 = 0;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000CB260;
  v18[3] = &unk_100842C78;
  databaseCopy = database;
  v18[4] = self;
  v21 = &v23;
  v16 = v15;
  v19 = v16;
  v17 = identifierCopy;
  v20 = v17;
  [parserCopy enumerateKeysAndObjectsForItemType:11 usingBlock:v18];
  if (*(v24 + 24) == 1)
  {
    +[PKEngagementEventTrigger fireIssuerMessagingFlagsChangedEvent];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v16);
  }

  _Block_object_dispose(&v23, 8);
}

- (void)uploadIssuerMessagingFlag:(id)flag completion:(id)completion
{
  flagCopy = flag;
  completionCopy = completion;
  workQueue = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CB788;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = flagCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = flagCopy;
  dispatch_async(workQueue, block);
}

- (void)deleteIssuerMessagingFlagWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  workQueue = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CBCD8;
  block[3] = &unk_10083F418;
  v12 = identifierCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = identifierCopy;
  v10 = completionCopy;
  dispatch_async(workQueue, block);
}

@end