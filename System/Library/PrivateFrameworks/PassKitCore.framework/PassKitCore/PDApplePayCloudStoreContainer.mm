@interface PDApplePayCloudStoreContainer
- (BOOL)_canFormShareFromCloudStoreRecord:(id)a3;
- (BOOL)_canFormShareLockFromCloudStoreRecord:(id)a3;
- (BOOL)_canFormTransactionFromCloudStoreRecord:(id)a3;
- (BOOL)_isAccountEventAssociatedObjectFromRecordType:(id)a3;
- (BOOL)_isAccountEventFromRecordType:(id)a3;
- (BOOL)_isAccountFromRecordType:(id)a3;
- (BOOL)_isCloudStoreZoneThePrimaryZoneForCurrentUser:(id)a3 containerDatabase:(id)a4;
- (BOOL)_isIssuerMessagingFlagFromRecordType:(id)a3;
- (BOOL)_isTransactionItemFromRecordType:(id)a3;
- (BOOL)_queue_canInitializeContainer;
- (BOOL)_queue_canInvalidateContainer;
- (BOOL)_queue_canSyncTransactionToCloudKit:(id)a3 forTransactionSourceIdentifier:(id)a4;
- (BOOL)_queue_isRelevantTransactionSourceIdentifier:(id)a3;
- (BOOL)shouldContinueWithRequest:(id)a3;
- (BOOL)supportsContainerChangeEventReports;
- (PDApplePayCloudStoreContainer)initWithDataSource:(id)a3 delegate:(id)a4 transactionProcessor:(id)a5 accountManager:(id)a6 paymentWebServiceCoordinator:(id)a7 peerPaymentWebServiceCoordinator:(id)a8 familyCircleManager:(id)a9 spotlightIndexer:(id)a10 notificationStreamManager:(id)a11;
- (id)_accountCreateDateForTranactionSourceIdentifier:(id)a3 passUniqueID:(id)a4;
- (id)_accountZoneNamesForAccount:(id)a3 itemType:(unint64_t)a4 containerDatabase:(id)a5;
- (id)_accountZoneNamesForAccountSet:(id)a3 containerDatabase:(id)a4;
- (id)_accountZoneNamesForAccountUser:(id)a3 itemType:(unint64_t)a4 containerDatabase:(id)a5;
- (id)_allPossibleCloudStoreZonesForFetchingWithTransactionSourceIdentifier:(id)a3;
- (id)_cloudStoreSpecificKeysForItem:(id)a3 paymentPass:(id)a4;
- (id)_originDeviceIDForCloudStoreRecord:(id)a3;
- (id)_parseTransactionRecords:(id)a3 request:(id)a4 databaseIdentifier:(id)a5 updateReasons:(unint64_t)a6;
- (id)_paymentApplicationForPassUniqueIdentifier:(id)a3;
- (id)_peerPaymentZoneNamesForAccount:(id)a3 containerDatabase:(id)a4;
- (id)_queue_additionalTransactionSourceIdentifiersForProvisioningWithZone:(id)a3 transactionSourceIdentifiers:(id)a4;
- (id)_recordTypeForAccountEventRecord:(id)a3;
- (id)_recordsByFromAccountEvent:(id)a3 zone:(id)a4;
- (id)_stripToFirstDash:(id)a3;
- (id)_transactionSourceIdentifierForTransactionCloudStoreRecord:(id)a3 databaseIdentifier:(id)a4;
- (id)_transactionSourceIdentifierForTransactionRecordID:(id)a3 recordType:(id)a4 databaseIdentifier:(id)a5;
- (id)allPossibleZoneNamesForContainerDatabase:(id)a3;
- (id)allPossibleZoneNamesForContainerDatabase:(id)a3 itemType:(unint64_t)a4;
- (id)allPossibleZoneSubscriptionsForContainerDatabase:(id)a3;
- (id)cloudStoreSpecificKeysForItem:(id)a3;
- (id)cloudStoreZonesForItem:(id)a3 action:(unint64_t)a4 inContainerDatabase:(id)a5;
- (id)cloudStoreZonesForItemType:(unint64_t)a3 configuration:(id)a4 action:(unint64_t)a5 inContainerDatabase:(id)a6;
- (id)filterCloudStoreZones:(id)a3 action:(unint64_t)a4 inContainerDatabase:(id)a5;
- (id)identifierFromRecord:(id)a3;
- (id)possibleDatabaseSubscriptionForContainerDatabase:(id)a3;
- (id)primaryRecordTypesForCloudStoreItemType:(unint64_t)a3;
- (id)recordTypeFromRecordName:(id)a3;
- (id)recordTypesForCloudStoreItemType:(unint64_t)a3;
- (id)subscriptionForZone:(id)a3 inContainerDatabase:(id)a4;
- (id)zoneIDForSubscription:(id)a3 inContainerDatabase:(id)a4;
- (void)_addCloudStoreRecordsFromResponse:(id)a3 toTransactionSourceRecords:(id)a4 transactionSourceIdentifiers:(id)a5 passUniqueID:(id)a6;
- (void)_deleteLocalDataFromDeletedRecordsByDatabaseIdentifier:(id)a3;
- (void)_fetchAndStoreAppleCashItemWithRecordType:(id)a3 operationGroupName:(id)a4 operationGroupNameSuffix:(id)a5 zone:(id)a6 containerDatabase:(id)a7 transactionSourceIdentifiers:(id)a8 accountCreationDate:(id)a9 completion:(id)a10;
- (void)_fetchAndStoreAppleCashRecordsIfNecessaryForPassUniqueID:(id)a3 operationGroupName:(id)a4 operationGroupNameSuffix:(id)a5 completion:(id)a6;
- (void)_fetchMissingAccountEventsWithRecordParser:(id)a3 request:(id)a4 databaseIdentifier:(id)a5 carriedOverRecordsByDatabaseIdentifier:(id)a6 updateReasons:(unint64_t)a7 completion:(id)a8;
- (void)_fetchMissingTransactionRecordsWithRecordParser:(id)a3 request:(id)a4 databaseIdentifier:(id)a5 completion:(id)a6;
- (void)_fetchTaskOperationWithIdentifier:(id)a3 completedWithError:(id)a4;
- (void)_handleFamilyUpdateNotification:(id)a3;
- (void)_handlePeerPaymentAccountChanged:(id)a3;
- (void)_insertAccountBalanceUpdateNotificationIfNecessaryForAccount:(id)a3 record:(id)a4;
- (void)_parseAccountEventsFromRecordParser:(id)a3 databaseIdentifier:(id)a4 shouldUpdateLocalDatabase:(BOOL)a5 shouldReturn:(BOOL)a6 updateReasons:(unint64_t)a7 completion:(id)a8;
- (void)_parseAccountsFromRecordParser:(id)a3 databaseIdentifier:(id)a4 shouldUpdateLocalDatabase:(BOOL)a5 shouldReturn:(BOOL)a6 completion:(id)a7;
- (void)_parseMessagesFromRecordParser:(id)a3 databaseIdentifier:(id)a4 shouldUpdateLocalDatabase:(BOOL)a5 shouldReturn:(BOOL)a6 completion:(id)a7;
- (void)_processCounterpartImageDataWithRecordParser:(id)a3 request:(id)a4 databaseIdentifier:(id)a5 completion:(id)a6;
- (void)_processPendingRequestsWithRecordParser:(id)a3 request:(id)a4 databaseIdentifier:(id)a5 completion:(id)a6;
- (void)_processRecurringPaymentsWithRecordParser:(id)a3 request:(id)a4 databaseIdentifier:(id)a5 completion:(id)a6;
- (void)_processShareWithRecordParser:(id)a3 request:(id)a4 databaseIdentifier:(id)a5 completion:(id)a6;
- (void)_processZoneShareLockWithRecordParser:(id)a3 request:(id)a4 databaseIdentifier:(id)a5 completion:(id)a6;
- (void)_queue_aliasesForRecipientHandle:(id)a3 zoneName:(id)a4 completion:(id)a5;
- (void)_queue_cloudStoreAccountChanged:(id)a3;
- (void)_queue_cloudStoreZoneInvitationDataForInvitation:(id)a3 toRecipient:(id)a4 completion:(id)a5;
- (void)_queue_createOrRemoveZoneSharesForAccountsIfNecessaryWithCompletion:(id)a3;
- (void)_queue_createOrRemoveZoneSharesForPeerPaymentIfNecessaryWithCompletion:(id)a3;
- (void)_queue_createOrRemoveZoneSharesIfNecessaryWithCompletion:(id)a3;
- (void)_queue_didInvalidateContainer:(BOOL)a3;
- (void)_queue_ensureZoneShareIntegrity;
- (void)_queue_familyMembersByAltDSIDWithCompletion:(id)a3;
- (void)_queue_familyMembersWithCompletion:(id)a3;
- (void)_queue_markAllRunningFetchTasksWithError:(id)a3;
- (void)_queue_performFetchTasksBackgroundActivityForGroupName:(id)a3 suffix:(id)a4 completion:(id)a5;
- (void)_queue_performUnarchivedTransactionsBackgroundActivityForGroupName:(id)a3 suffix:(id)a4 completion:(id)a5;
- (void)_queue_processAccountChangeWithOldAccounts:(id)a3 newAccounts:(id)a4;
- (void)_queue_processPeerPaymentAccountChangeWithOldAccount:(id)a3 newPeerPaymentAccount:(id)a4;
- (void)_queue_processResultWithError:(id)a3 nextExpectedState:(unint64_t)a4 operationGroupNameSuffix:(id)a5 retryCount:(unint64_t)a6 shouldRetry:(BOOL)a7 completion:(id)a8;
- (void)_queue_processSharedAccountCloudStoreChangeWithOldSharedAccountCloudStore:(id)a3 newSharedAccountCloudStore:(id)a4;
- (void)_queue_setContainerState:(unint64_t)a3 operationGroupNameSuffix:(id)a4 retryCount:(unint64_t)a5 completion:(id)a6;
- (void)_queue_updateWithPossibleNewZonesToAdd:(id)a3 orphanedZones:(id)a4 containerDatabase:(id)a5;
- (void)_updateFetchTaskScheduledActivityIfNeccessary;
- (void)_updateUnarchivedTransactionsScheduledActivityIfNeccessary;
- (void)accountManager:(id)a3 accountUsersChanged:(id)a4 oldUsers:(id)a5 accountIdentifier:(id)a6;
- (void)accountManager:(id)a3 didAddAccount:(id)a4;
- (void)accountManager:(id)a3 didRemoveAccount:(id)a4;
- (void)accountManager:(id)a3 didUpdateAccount:(id)a4 oldAccount:(id)a5;
- (void)accountManager:(id)a3 sharedAccountCloudStoreChangedForAccountIdentifier:(id)a4;
- (void)backgroundModifiedRecordSyncForTranasctionSourceIdentifiers:(id)a3 fromDate:(id)a4 returnRecords:(BOOL)a5 formReport:(BOOL)a6 completion:(id)a7;
- (void)backgroundRecordChangedSyncForTranasctionSourceIdentifiers:(id)a3 completion:(id)a4;
- (void)bootstrapZoneWithName:(id)a3 completion:(id)a4;
- (void)canSyncTransactionFromCloudKitForTransactionSourceIdentifier:(id)a3 completion:(id)a4;
- (void)canSyncTransactionToCloudKit:(id)a3 forTransactionSourceIdentifier:(id)a4 completion:(id)a5;
- (void)coalesceApplePayRequest:(id)a3 withNewApplePayRequest:(id)a4;
- (void)coalesceRequest:(id)a3 withNewRequest:(id)a4;
- (void)containerResetCompletedWithSuccess:(BOOL)a3 error:(id)a4;
- (void)dealloc;
- (void)deleteIssuerMessagingFlagWithIdentifier:(id)a3 completion:(id)a4;
- (void)didUpdateSetupAssistantStateFrom:(unint64_t)a3 toState:(unint64_t)a4;
- (void)fetchAndStoreAccountEventsWithIdentifiers:(id)a3 completion:(id)a4;
- (void)fetchAndStoreRecordsForPassUniqueID:(id)a3 transactionSourceIdentifiers:(id)a4 fullFetchIgnoringChangeToken:(BOOL)a5 ignoreExistingRecordHash:(BOOL)a6 groupName:(id)a7 groupNameSuffix:(id)a8 completion:(id)a9;
- (void)fetchRecordsInAcceptedZoneShare:(id)a3 databaseIdentifier:(id)a4 operationGroupName:(id)a5 operationGroupNameSuffix:(id)a6 qualityOfService:(int64_t)a7 completion:(id)a8;
- (void)generateRandomTransactionForTransactionSourceIdentifier:(id)a3 completion:(id)a4;
- (void)invalidateCloudStoreIfPossibleWithOperationGroupNameSuffix:(id)a3 clearCache:(BOOL)a4;
- (void)passDidDisappear:(id)a3;
- (void)performScheduledActivityWithIdentifier:(id)a3 activityCriteria:(id)a4;
- (void)populateEvents:(id)a3 forAccountIdentifier:(id)a4 completion:(id)a5;
- (void)processFetchedCloudStoreDataWithModifiedRecordsByDatabaseIdentifier:(id)a3 deletedRecordsByDatabaseIdentifier:(id)a4 carriedOverRecordsByDatabaseIdentifier:(id)a5 conflictingRecordsByDatabaseIdentifier:(id)a6 request:(id)a7 completion:(id)a8;
- (void)requestUpdatesForTransactionSourceIdentifier:(id)a3;
- (void)syncTransactionsToCloudStoreOriginatedOnDevice:(unint64_t)a3;
- (void)uploadCounterpartImageData:(id)a3 completion:(id)a4;
- (void)uploadIssuerMessagingFlag:(id)a3 completion:(id)a4;
- (void)uploadPendingRequest:(id)a3 completion:(id)a4;
- (void)uploadRecurringPayment:(id)a3 completion:(id)a4;
- (void)uploadTransaction:(id)a3 forTransactionSourceIdentifier:(id)a4 includeServerData:(BOOL)a5 completion:(id)a6;
@end

@implementation PDApplePayCloudStoreContainer

- (PDApplePayCloudStoreContainer)initWithDataSource:(id)a3 delegate:(id)a4 transactionProcessor:(id)a5 accountManager:(id)a6 paymentWebServiceCoordinator:(id)a7 peerPaymentWebServiceCoordinator:(id)a8 familyCircleManager:(id)a9 spotlightIndexer:(id)a10 notificationStreamManager:(id)a11
{
  v17 = a3;
  v18 = a4;
  v59 = a5;
  v58 = a6;
  v57 = a7;
  v56 = a8;
  v55 = a9;
  v54 = a10;
  v60.receiver = self;
  v60.super_class = PDApplePayCloudStoreContainer;
  v19 = [(PDCloudStoreContainer *)&v60 initWithDataSource:v17 notificationStreamManager:a11];
  if (v19)
  {
    v19->_isInternalBuild = os_variant_has_internal_ui();
    objc_storeWeak(&v19->_applePayContainerDelegate, v18);
    objc_storeStrong(&v19->_transactionProcessor, a5);
    objc_storeStrong(&v19->_accountManager, a6);
    objc_storeStrong(&v19->_peerPaymentWebServiceCoordinator, a8);
    objc_storeStrong(&v19->_familyCircleManager, a9);
    objc_storeStrong(&v19->_spotlightIndexer, a10);
    v20 = objc_alloc_init(NSMutableDictionary);
    backgroundTasksBeingRun = v19->_backgroundTasksBeingRun;
    v19->_backgroundTasksBeingRun = v20;

    v22 = [(PDCloudStoreContainer *)v19 dataSource];
    v23 = [v22 peerPaymentAccount];
    peerPaymentAccount = v19->_peerPaymentAccount;
    v19->_peerPaymentAccount = v23;

    [(PDAccountManager *)v19->_accountManager registerObserver:v19];
    v25 = [(PDCloudStoreContainer *)v19 dataSource];
    v26 = [v25 accounts];
    accounts = v19->_accounts;
    v19->_accounts = v26;

    objc_storeStrong(&v19->_paymentWebServiceCoordinator, a7);
    v28 = objc_alloc_init(NSMutableDictionary);
    fetchTasks = v19->_fetchTasks;
    v19->_fetchTasks = v28;

    v19->_fetchTasksLock._os_unfair_lock_opaque = 0;
    v30 = [(PDCloudStoreContainer *)v19 dataSource];
    v31 = [v30 sharedAccountCloudStoreByAccountIdentifier];
    sharedAccountCloudStoreByAccountIdentifier = v19->_sharedAccountCloudStoreByAccountIdentifier;
    v19->_sharedAccountCloudStoreByAccountIdentifier = v31;

    v33 = [(PDCloudStoreContainer *)v19 dataSource];
    v34 = [v33 accountUsersByAccountIdentifier];
    accountUsersByAccountIdentifier = v19->_accountUsersByAccountIdentifier;
    v19->_accountUsersByAccountIdentifier = v34;

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

        v47 = v43;
        goto LABEL_12;
      }

      v46 = [v43 isEqualToString:v44];

      if (!v46)
      {
        goto LABEL_13;
      }
    }

    v47 = [v41 options];
    [v47 setUseZoneWidePCS:1];
LABEL_12:

LABEL_13:
    v48 = [[PDCloudStoreContainerManager alloc] initWithContainer:v41 validScopes:&off_1008A4668 cacheDataSource:v17 databaseContainerDataSource:v19];
    [(PDCloudStoreContainer *)v19 setContainerManager:v48];
    v49 = +[NSDistributedNotificationCenter defaultCenter];
    [v49 addObserver:v19 selector:"_handlePeerPaymentAccountChanged:" name:PDPeerPaymentServiceAccountChangedDistributedNotification object:0];

    v50 = +[NSDistributedNotificationCenter defaultCenter];
    [v50 addObserver:v19 selector:"_handleFamilyUpdateNotification:" name:FAFamilyUpdateNotification object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v19, sub_1000A1280, @"INFamilyDidChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v52 = [(PDCloudStoreContainer *)v19 workQueue];
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

- (void)invalidateCloudStoreIfPossibleWithOperationGroupNameSuffix:(id)a3 clearCache:(BOOL)a4
{
  v6 = a3;
  v7 = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A140C;
  block[3] = &unk_10083E328;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(v7, block);
}

- (BOOL)_queue_canInitializeContainer
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PDCloudStoreContainer *)self containerManager];
    v5 = [v4 containerName];
    *buf = 138412290;
    v29 = v5;
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
    v7 = v3;
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

    v27 = self;
    v7 = [(PDPaymentWebServiceCoordinator *)self->_paymentWebServiceCoordinator sharedWebService];
    v10 = [v7 _needsRegistrationShouldCheckSecureElementOwnership:v9];
    v11 = [v7 _canRegisterForPeerPayment];
    v26 = IsAvailable;
    if (IsAvailable)
    {
      v12 = v9 & (v10 ^ 1);
    }

    else
    {
      v12 = 0;
    }

    v13 = [v7 _supportsAccounts];
    v14 = v13;
    v15 = v11 | v13;
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
      if (v11)
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

    self = v27;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [(PDCloudStoreContainer *)self containerManager];
    v22 = [v21 containerName];
    v23 = v22;
    if (v6)
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    *buf = 138412546;
    v29 = v22;
    v30 = 2114;
    v31 = v24;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Can initalize the %@ cloud store: %{public}@", buf, 0x16u);
  }

  return v6;
}

- (BOOL)_queue_canInvalidateContainer
{
  v3 = [(NSSet *)self->_accounts count];
  v4 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedAccountInformation];
  v5 = [v4 associatedAccounts];
  v6 = [v5 count];

  v7 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassUniqueID];
  if (v7)
  {
    v8 = v3 | v6;
    v9 = [(PDCloudStoreContainer *)self dataSource];
    v10 = [v9 passExistsWithUniqueID:v7];

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
    v15 = [(PDCloudStoreContainer *)self containerManager];
    v16 = [v15 containerName];
    v17 = v16;
    v18 = @"NO";
    if (v13)
    {
      v18 = @"YES";
    }

    v20 = 138412546;
    v21 = v16;
    v22 = 2112;
    v23 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Can invalidate cloud store container %@: %@", &v20, 0x16u);
  }

  return v13;
}

- (id)cloudStoreSpecificKeysForItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = 0;
    goto LABEL_16;
  }

  v5 = v4;
  v6 = [v5 transactionSourceIdentifier];
  v7 = [v5 serviceIdentifier];
  v8 = [v5 accountIdentifier];
  v9 = [v5 altDSID];
  v10 = [(PDCloudStoreContainer *)self dataSource];
  v11 = [v10 transactionSourceTypeForTransactionSourceIdentifier:v6];

  v12 = [(PDCloudStoreContainer *)self dataSource];
  v13 = [v12 passUniqueIdentifierForTransactionWithServiceIdentifier:v7 transactionSourceIdentifier:v6];

  if (!v13)
  {
    if (v11 >= 2)
    {
      if (v11 == 2)
      {
        v21 = [(PDCloudStoreContainer *)self dataSource];
        v17 = [v21 accountUserWithAltDSID:v9 accountIdentifier:v8];

        if (!v17 || [v17 accessLevel] != 1)
        {
          v13 = 0;
          goto LABEL_14;
        }

        v18 = [(PDCloudStoreContainer *)self dataSource];
        v19 = [v18 passUniqueIdentifierWithAssociatedAccountIdentifier:v8];
LABEL_12:
        v13 = v19;

LABEL_14:
        goto LABEL_15;
      }

      v13 = 0;
    }

    else
    {
      v14 = [(PDCloudStoreContainer *)self dataSource];
      v15 = [v5 accountIdentifier];
      v13 = [v14 passUniqueIdentifierForTransactionWithServiceIdentifier:v7 accountIdentifier:v15 accountType:{objc_msgSend(v5, "accountType")}];

      if (!v13)
      {
        v16 = [(PDCloudStoreContainer *)self dataSource];
        v17 = [v16 broadwayOrSurfTransactionSourceIdentifierForAmbiguousServiceIdentifier:v7 transactionAccountIdentifier:0 transactionAccountType:0 transactionAltDSID:0];

        v18 = [(PDCloudStoreContainer *)self dataSource];
        v19 = [v18 passUniqueIdentifierForTransactionSourceIdentifier:v17];
        goto LABEL_12;
      }
    }
  }

LABEL_15:
  v22 = [(PDCloudStoreContainer *)self dataSource];
  v23 = [v22 passWithUniqueIdentifier:v13];

  v20 = [(PDApplePayCloudStoreContainer *)self _cloudStoreSpecificKeysForItem:v5 paymentPass:v23];

LABEL_16:

  return v20;
}

- (void)_queue_cloudStoreAccountChanged:(id)a3
{
  v4 = a3;
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

- (void)_queue_setContainerState:(unint64_t)a3 operationGroupNameSuffix:(id)a4 retryCount:(unint64_t)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = PDCloudStoreContainerStateToString(a3);
    *buf = 138543874;
    v79 = v13;
    v80 = 2114;
    v81 = v10;
    v82 = 2048;
    v83 = a5;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PDApplePayCloudStoreContainer: setContainerState called with state %{public}@, operationGroupNameSuffix: %{public}@, and retry count %lu", buf, 0x20u);
  }

  if ([(PDCloudStoreContainer *)self _queue_ensureContainerState:a3])
  {
    if (a3 > 3)
    {
      if (a3 == 4)
      {
        v64[0] = _NSConcreteStackBlock;
        v64[1] = 3221225472;
        v64[2] = sub_1000A29B0;
        v64[3] = &unk_100841B78;
        v64[4] = self;
        v65 = v10;
        v67 = a5;
        v66 = v11;
        [(PDCloudStoreContainer *)self _queue_cloudStoreAccountInformationWithCompletion:v64];

        v47 = v65;
LABEL_37:

        goto LABEL_38;
      }

      if (a3 == 15)
      {
        [(PDApplePayCloudStoreContainer *)self _updateFetchTaskScheduledActivityIfNeccessary];
        [(PDApplePayCloudStoreContainer *)self _updateUnarchivedTransactionsScheduledActivityIfNeccessary];
        v62.receiver = self;
        v62.super_class = PDApplePayCloudStoreContainer;
        [(PDCloudStoreContainer *)&v62 _queue_setContainerState:15 operationGroupNameSuffix:v10 retryCount:a5 completion:v11];
        goto LABEL_38;
      }
    }

    else
    {
      if (a3 - 2 < 2)
      {
        v14 = [(PDCloudStoreContainer *)self operationError];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
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
        [(PDCloudStoreContainer *)&v63 _queue_setContainerState:a3 operationGroupNameSuffix:v10 retryCount:a5 completion:v11];

        goto LABEL_38;
      }

      if (a3 == 1)
      {
        oslog = v12;
        v58 = a5;
        v59 = v11;
        v18 = [(PDCloudStoreContainer *)self dataSource];
        v19 = [v18 peerPaymentAccount];
        v20 = self->_peerPaymentAccount;
        self->_peerPaymentAccount = v19;

        v21 = [(PDCloudStoreContainer *)self dataSource];
        v22 = [v21 accounts];
        v23 = self->_accounts;
        self->_accounts = v22;

        v24 = [(PDCloudStoreContainer *)self dataSource];
        v25 = [v24 sharedAccountCloudStoreByAccountIdentifier];
        v26 = self->_sharedAccountCloudStoreByAccountIdentifier;
        self->_sharedAccountCloudStoreByAccountIdentifier = v25;

        v27 = [(PDCloudStoreContainer *)self dataSource];
        v28 = [v27 accountUsersByAccountIdentifier];
        v29 = self->_accountUsersByAccountIdentifier;
        self->_accountUsersByAccountIdentifier = v28;

        v30 = [(PDCloudStoreContainer *)self dataSource];
        v31 = [v30 allRecordFetchTasks];

        v32 = self;
        os_unfair_lock_lock(&self->_fetchTasksLock);
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        obj = v31;
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
              v39 = [v37 identifier];
              if ([v37 type])
              {
                v40 = v39 == 0;
              }

              else
              {
                v40 = 1;
              }

              if (!v40)
              {
                v41 = objc_alloc_init(PDApplePayCloudStoreRecordFetchOperation);
                [(PDApplePayCloudStoreRecordFetchOperation *)v41 updateTask:v37];
                fetchTasks = v32->_fetchTasks;
                v43 = [(PDApplePayCloudStoreRecordFetchOperation *)v41 identifier];
                [(NSMutableDictionary *)fetchTasks safelySetObject:v41 forKey:v43];
              }

              objc_autoreleasePoolPop(v38);
            }

            v34 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v69 objects:v77 count:16];
          }

          while (v34);
        }

        os_unfair_lock_unlock(&v32->_fetchTasksLock);
        v44 = [(PDCloudStoreContainer *)v32 operationError];
        v45 = v44;
        if (v44)
        {
          v46 = v44;
        }

        else
        {
          v75 = NSLocalizedDescriptionKey;
          v76 = @"Attaching to container while a while running operation";
          v53 = [NSDictionary dictionaryWithObjects:&v76 forKeys:&v75 count:1];
          v46 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5001 userInfo:v53];
        }

        v11 = v59;

        [(PDApplePayCloudStoreContainer *)v32 _queue_markAllRunningFetchTasksWithError:v46];
        os_unfair_lock_lock(&v32->_fetchTasksLock);
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v54 = [(PDCloudStoreContainer *)v32 containerManager];
          v55 = [v54 containerName];
          v56 = v32->_fetchTasks;
          *buf = 138412546;
          v79 = v55;
          v80 = 2112;
          v81 = v56;
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Previous fetch tasks for container %@ are %@.", buf, 0x16u);
        }

        os_unfair_lock_unlock(&v32->_fetchTasksLock);
        v68.receiver = v32;
        v68.super_class = PDApplePayCloudStoreContainer;
        [(PDCloudStoreContainer *)&v68 _queue_setContainerState:1 operationGroupNameSuffix:v10 retryCount:v58 completion:v59];

        v47 = obj;
        goto LABEL_37;
      }
    }

    v61.receiver = self;
    v61.super_class = PDApplePayCloudStoreContainer;
    [(PDCloudStoreContainer *)&v61 _queue_setContainerState:a3 operationGroupNameSuffix:v10 retryCount:a5 completion:v11];
    goto LABEL_38;
  }

  if (v11)
  {
    v17 = [(PDCloudStoreContainer *)self errorWithCode:-4006 description:@"Invalid cloud store state"];
    (*(v11 + 2))(v11, 0, v17);
  }

LABEL_38:
}

- (void)_queue_markAllRunningFetchTasksWithError:(id)a3
{
  v4 = a3;
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
    v19 = v4;
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
        v12 = [v11 task];
        v13 = [v12 status];
        if (v13 == 4 || v13 == 1)
        {
          if (v4)
          {
            v15 = v4;
          }

          else
          {
            v24 = NSLocalizedDescriptionKey;
            v25 = @"Unknown error occuring while task was running";
            v16 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
            v15 = [NSError errorWithDomain:PKPassKitErrorDomain code:-1 userInfo:v16];
          }

          [v12 completeTaskWithError:v15];
          v17 = [(PDCloudStoreContainer *)self dataSource];
          [v17 updateRecordFetchTask:v12];

          v4 = v19;
        }

        objc_autoreleasePoolPop(v10);
      }

      v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_fetchTasksLock);
}

- (void)coalesceRequest:(id)a3 withNewRequest:(id)a4
{
  v7 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PDApplePayCloudStoreContainer *)self coalesceApplePayRequest:v7 withNewApplePayRequest:v6];
    }
  }
}

- (void)coalesceApplePayRequest:(id)a3 withNewApplePayRequest:(id)a4
{
  v15 = a3;
  v5 = a4;
  v6 = [v15 transactionSourceIdentifiers];
  v7 = [v5 transactionSourceIdentifiers];
  if ([v6 count] || objc_msgSend(v7, "count"))
  {
    if (v6)
    {
      v8 = [v6 setByAddingObjectsFromSet:v7];
      [v15 setTransactionSourceIdentifiers:v8];
    }

    else
    {
      [v15 setTransactionSourceIdentifiers:v7];
    }
  }

  v9 = [v15 ignoreRecordsBeforeDate];
  v10 = [v5 ignoreRecordsBeforeDate];
  v11 = PKEqualObjects();

  if ((v11 & 1) == 0)
  {
    [v15 setIgnoreRecordsBeforeDate:0];
  }

  v12 = [v15 ignoreRecordsAfterDate];
  v13 = [v5 ignoreRecordsAfterDate];
  v14 = PKEqualObjects();

  if ((v14 & 1) == 0)
  {
    [v15 setIgnoreRecordsAfterDate:0];
  }
}

- (BOOL)shouldContinueWithRequest:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  v5 = v4;
  v6 = [v5 transactionSourceIdentifiers];
  v7 = [v6 count];

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
  v8 = [v5 transactionSourceIdentifiers];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v17 + 1) + 8 * v12);
      v14 = [(PDCloudStoreContainer *)self dataSource];
      v15 = [v14 transactionSourceExistsWithIdentifier:v13];

      if (v15)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (void)_deleteLocalDataFromDeletedRecordsByDatabaseIdentifier:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000A32F4;
  v3[3] = &unk_10083D238;
  v3[4] = self;
  [a3 enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)processFetchedCloudStoreDataWithModifiedRecordsByDatabaseIdentifier:(id)a3 deletedRecordsByDatabaseIdentifier:(id)a4 carriedOverRecordsByDatabaseIdentifier:(id)a5 conflictingRecordsByDatabaseIdentifier:(id)a6 request:(id)a7 completion:(id)a8
{
  v68 = a3;
  v14 = a4;
  v66 = a5;
  v67 = a6;
  v15 = a7;
  v16 = a8;
  v17 = [(PDCloudStoreContainer *)self reportContainerChangeIntervalBeginEventWithType:33 stateName:0 objectNames:0 operationGroupName:0 operationGroupNameSuffix:0];
  [(PDApplePayCloudStoreContainer *)self _deleteLocalDataFromDeletedRecordsByDatabaseIdentifier:v14];
  if (([v15 returnRecords] & 1) != 0 || objc_msgSend(v15, "formReport"))
  {
    v65 = objc_alloc_init(PKCloudRecordArray);
  }

  else
  {
    v65 = 0;
  }

  if ([v15 returnRecords])
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
  v18 = [v15 groupName];
  v19 = [v15 groupNameSuffix];
  v20 = PKCloudStoreOperationGroupInitialDownload;
  v21 = v18;
  v22 = v20;
  v23 = v22;
  v62 = v14;
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
  v61 = v16;
  v35 = ([v15 useLastChangeToken] & 1) == 0 && (!objc_msgSend(v15, "requestType") || objc_msgSend(v15, "requestType") == 2 || objc_msgSend(v15, "requestType") == 3);
  v36 = PKCloudStoreOperationGroupSuffixFetchTaskBackgroundActivityRecoveringFromPreviousError;
  v37 = v19;
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
  v48 = v15;
  v80 = v48;
  v49 = v45;
  v81 = v49;
  v50 = v65;
  v82 = v50;
  v85 = v47;
  v51 = v66;
  v86 = v34;
  v83 = v51;
  v84 = v87;
  [v68 enumerateKeysAndObjectsUsingBlock:v79];
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
  [v67 enumerateKeysAndObjectsUsingBlock:v75];
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

- (void)_queue_processResultWithError:(id)a3 nextExpectedState:(unint64_t)a4 operationGroupNameSuffix:(id)a5 retryCount:(unint64_t)a6 shouldRetry:(BOOL)a7 completion:(id)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a5;
  v16 = a8;
  v17 = [[PKCloudStoreError alloc] initWithError:v14];
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
    [(PDCloudStoreContainer *)self setOperationError:v14];
    [(PDApplePayCloudStoreContainer *)self _queue_setContainerState:3 operationGroupNameSuffix:v15 retryCount:a6 completion:v16];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = PDApplePayCloudStoreContainer;
    [(PDCloudStoreContainer *)&v19 _queue_processResultWithError:v14 nextExpectedState:a4 operationGroupNameSuffix:v15 retryCount:a6 shouldRetry:v9 completion:v16];
  }
}

- (id)recordTypesForCloudStoreItemType:(unint64_t)a3
{
  if (a3 > 8)
  {
    if (a3 > 10)
    {
      if (a3 == 11)
      {
        v11 = PKCloudMessageRecordType;
        v5 = &v11;
      }

      else
      {
        if (a3 != 12)
        {
          goto LABEL_20;
        }

        v10 = PKCloudPendingRequestRecordType;
        v5 = &v10;
      }
    }

    else if (a3 == 9)
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

  if (a3 > 6)
  {
    if (a3 == 7)
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

  if (a3 == 1)
  {
    v17[0] = PKCloudTransactionRecordType;
    v17[1] = PKCloudTransactionDeviceDataRecordType;
    v5 = v17;
    v6 = 2;
    goto LABEL_19;
  }

  if (a3 == 5)
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
  v7 = [(PDCloudStoreContainer *)&v9 recordTypesForCloudStoreItemType:a3];
LABEL_21:

  return v7;
}

- (id)primaryRecordTypesForCloudStoreItemType:(unint64_t)a3
{
  if (a3 > 8)
  {
    if (a3 <= 10)
    {
      if (a3 == 9)
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

    if (a3 == 11)
    {
      v11 = PKCloudMessageRecordType;
      v5 = &v11;
      goto LABEL_18;
    }

    if (a3 == 12)
    {
      v10 = PKCloudPendingRequestRecordType;
      v5 = &v10;
      goto LABEL_18;
    }
  }

  else
  {
    if (a3 > 6)
    {
      if (a3 == 7)
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

    if (a3 == 1)
    {
      v17[0] = PKCloudTransactionRecordType;
      v17[1] = PKCloudTransactionDeviceDataRecordType;
      v5 = v17;
      v6 = 2;
      goto LABEL_19;
    }

    if (a3 == 5)
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
  v7 = [(PDCloudStoreContainer *)&v9 primaryRecordTypesForCloudStoreItemType:a3];
LABEL_21:

  return v7;
}

- (id)identifierFromRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 recordType];
  v6 = [v4 recordID];
  v7 = [v6 recordName];

  if ([(PDApplePayCloudStoreContainer *)self _isAccountEventFromRecordType:v5])
  {
    goto LABEL_2;
  }

  if ([(PDApplePayCloudStoreContainer *)self _isAccountEventAssociatedObjectFromRecordType:v5])
  {
    v8 = [v4 pk_referenceForKey:PKAccountEventReferenceFromAssociatedObject];
    v9 = [v8 recordID];
    v12 = [v9 recordName];
    v11 = [(PDApplePayCloudStoreContainer *)self _stripToFirstDash:v12];

LABEL_20:
    v7 = v12;
LABEL_21:

    v7 = v11;
    if (v11)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if ([v5 isEqualToString:PKCloudTransactionDeviceDataRecordType])
  {
    v8 = [v4 pk_referenceForKey:PKPaymentTransactionReferenceFromDeviceData];
    v13 = [v8 recordID];
    v9 = [v13 recordName];

    if (v9)
    {
      v14 = v9;
      v15 = v7;
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
          v9 = v10;
          v7 = v16;
          goto LABEL_3;
        }

        goto LABEL_19;
      }
    }

LABEL_19:
    v12 = [v4 recordID];
    v18 = [v12 recordName];
    v11 = [(PDApplePayCloudStoreContainer *)self _stripToFirstDash:v18];

    goto LABEL_20;
  }

  if ([v5 isEqualToString:PKCloudShareCreationLockRecordType])
  {
LABEL_2:
    v8 = [v4 recordID];
    v9 = [v8 recordName];
    v10 = [(PDApplePayCloudStoreContainer *)self _stripToFirstDash:v9];
LABEL_3:
    v11 = v10;
    goto LABEL_21;
  }

  if (v7)
  {
    goto LABEL_25;
  }

LABEL_22:
  v19 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v4 recordID];
    v21 = [v20 recordName];
    v22 = [v4 recordType];
    v24 = 138543618;
    v25 = v21;
    v26 = 2114;
    v27 = v22;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Could not identify %{public}@, type: %{public}@", &v24, 0x16u);
  }

LABEL_25:

  return v7;
}

- (id)recordTypeFromRecordName:(id)a3
{
  v4 = a3;
  v52.receiver = self;
  v52.super_class = PDApplePayCloudStoreContainer;
  v5 = [(PDCloudStoreContainer *)&v52 recordTypeFromRecordName:v4];
  v6 = v5;
  if (!v5)
  {
    v7 = +[PKPaymentTransaction recordNamePrefix];
    v8 = [v4 hasPrefix:v7];

    if (v8)
    {
      v9 = &PKCloudTransactionDeviceDataRecordType;
    }

    else
    {
      v10 = +[PKAccountEvent recordNamePrefix];
      v11 = [v4 hasPrefix:v10];

      if (v11)
      {
        v9 = &PKCloudAccountEventRecordType;
      }

      else
      {
        v12 = +[PKAccountRewards recordNamePrefix];
        v13 = [v4 hasPrefix:v12];

        if (v13)
        {
          v9 = &PKCloudAccountRewardsRecordType;
        }

        else
        {
          v14 = +[PKCreditAccountStatement recordNamePrefix];
          v15 = [v4 hasPrefix:v14];

          if (v15)
          {
            v9 = &PKCloudCreditAccountStatementRecordType;
          }

          else
          {
            v16 = +[PKAccountServicingEvent recordNamePrefix];
            v17 = [v4 hasPrefix:v16];

            if (v17)
            {
              v9 = &PKCloudAccountServicingRecordType;
            }

            else
            {
              v18 = +[PKAccountPayment recordNamePrefix];
              v19 = [v4 hasPrefix:v18];

              if (v19)
              {
                v9 = &PKCloudAccountPaymentRecordType;
              }

              else
              {
                v20 = +[PKAccountTransfer recordNamePrefix];
                v21 = [v4 hasPrefix:v20];

                if (v21)
                {
                  v9 = &PKCloudAccountTransferRecordType;
                }

                else
                {
                  v22 = +[PKAccountHold recordNamePrefix];
                  v23 = [v4 hasPrefix:v22];

                  if (v23)
                  {
                    v9 = &PKCloudAccountHoldRecordType;
                  }

                  else
                  {
                    v24 = +[PKAccountPaymentReminder recordNamePrefix];
                    v25 = [v4 hasPrefix:v24];

                    if (v25)
                    {
                      v9 = &PKCloudAccountPaymentReminderRecordType;
                    }

                    else
                    {
                      v26 = +[PKAccountCreditTermsUpdate recordNamePrefix];
                      v27 = [v4 hasPrefix:v26];

                      if (v27)
                      {
                        v9 = &PKCloudAccountCreditTermsUpdateRecordType;
                      }

                      else
                      {
                        v28 = +[PKAccountPhysicalCardStatusUpdate recordNamePrefix];
                        v29 = [v4 hasPrefix:v28];

                        if (v29)
                        {
                          v9 = &PKCloudAccountPhysicalCardStatusUpdateRecordType;
                        }

                        else
                        {
                          v30 = +[PKAccountPhysicalCardShippingUpdate recordNamePrefix];
                          v31 = [v4 hasPrefix:v30];

                          if (v31)
                          {
                            v9 = &PKCloudAccountPhysicalCardShippingUpdateRecordType;
                          }

                          else
                          {
                            v32 = +[PKAccountVirtualCardStatusUpdate recordNamePrefix];
                            v33 = [v4 hasPrefix:v32];

                            if (v33)
                            {
                              v9 = &PKCloudAccountVirtualCardStatusUpdateRecordType;
                            }

                            else
                            {
                              v34 = +[PKBillPaymentSelectedSuggestedAmountData recordNamePrefix];
                              v35 = [v4 hasPrefix:v34];

                              if (v35)
                              {
                                v9 = &PKCloudAccountBillPaymentSelectedSuggestedAmountRecordType;
                              }

                              else
                              {
                                v36 = +[PKAccountUserInfoUpdate recordNamePrefix];
                                v37 = [v4 hasPrefix:v36];

                                if (v37)
                                {
                                  v9 = &PKCloudAccountUserInfoRecordType;
                                }

                                else
                                {
                                  v38 = +[PKAccountAssistanceProgramMessage recordNamePrefix];
                                  v39 = [v4 hasPrefix:v38];

                                  if (v39)
                                  {
                                    v9 = &PKCloudAccountAssistanceProgramRecordType;
                                  }

                                  else
                                  {
                                    v40 = +[PKAccount recordNamePrefix];
                                    v41 = [v4 hasPrefix:v40];

                                    if (v41)
                                    {
                                      v9 = &PKCloudAccountRecordType;
                                    }

                                    else
                                    {
                                      v42 = +[PKCloudStoreZoneShareLock recordNamePrefix];
                                      v43 = [v4 hasPrefix:v42];

                                      if (v43)
                                      {
                                        v9 = &PKCloudShareCreationLockRecordType;
                                      }

                                      else
                                      {
                                        v44 = +[PKPeerPaymentRecurringPayment recordNamePrefix];
                                        v45 = [v4 hasPrefix:v44];

                                        if (v45)
                                        {
                                          v9 = &PKCloudRecurringPaymentMemoRecordType;
                                        }

                                        else
                                        {
                                          v46 = +[PKPeerPaymentCounterpartImageData recordNamePrefix];
                                          v47 = [v4 hasPrefix:v46];

                                          if (v47)
                                          {
                                            v9 = &PKCloudCounterpartImageRecordType;
                                          }

                                          else
                                          {
                                            v48 = +[PKIssuerMessagingFlag recordNamePrefix];
                                            v49 = [v4 hasPrefix:v48];

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

- (id)_stripToFirstDash:(id)a3
{
  v3 = [a3 copy];
  v4 = [v3 rangeOfString:@"-"];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [v3 stringByReplacingCharactersInRange:0 withString:{v4 + 1, &stru_10086D930}];

    v3 = v5;
  }

  return v3;
}

- (void)_queue_cloudStoreZoneInvitationDataForInvitation:(id)a3 toRecipient:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [v8 zoneName];
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
    [PKCloudStoreZone zoneValueForZoneName:v11 outZoneType:&v35 outAccountIdentifier:&v31 altDSID:&v30];
    v12 = v31;
    v17 = v30;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000A7E10;
    v24[3] = &unk_100841E60;
    v29 = v35;
    v24[4] = self;
    v27 = v32;
    v13 = v9;
    v25 = v13;
    v28 = v34;
    v14 = v12;
    v26 = v14;
    v15 = objc_retainBlock(v24);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000A8534;
    v18[3] = &unk_100841EB0;
    v21 = v10;
    v22 = v32;
    v18[4] = self;
    v19 = v13;
    v16 = v11;
    v20 = v16;
    v23 = v34;
    (v15[2])(v15, v18);

    _Block_object_dispose(v32, 8);
    _Block_object_dispose(v34, 8);
  }
}

- (void)_queue_aliasesForRecipientHandle:(id)a3 zoneName:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    if (v8)
    {
      v12 = objc_alloc_init(NSMutableSet);
      [v12 pk_safelyAddObject:v8];
      v23 = 0;
      v24 = 0;
      [PKCloudStoreZone zoneValueForZoneName:v9 outZoneType:&v24 outAccountIdentifier:&v23 altDSID:0];
      v13 = v23;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000A8974;
      v16[3] = &unk_100841ED8;
      v17 = v8;
      v18 = v12;
      v22 = v24;
      v19 = self;
      v20 = v13;
      v21 = v11;
      v14 = v13;
      v15 = v12;
      [(PDApplePayCloudStoreContainer *)self _queue_familyMembersWithCompletion:v16];
    }

    else
    {
      (*(v10 + 2))(v10, 0);
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

- (void)didUpdateSetupAssistantStateFrom:(unint64_t)a3 toState:(unint64_t)a4
{
  v11.receiver = self;
  v11.super_class = PDApplePayCloudStoreContainer;
  [PDCloudStoreContainer didUpdateSetupAssistantStateFrom:"didUpdateSetupAssistantStateFrom:toState:" toState:?];
  if (a3 != 3 && a4 == 3)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(PDCloudStoreContainer *)self containerManager];
      v9 = [v8 containerName];
      *buf = 138412290;
      v13 = v9;
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

- (void)requestUpdatesForTransactionSourceIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v67 = self;
    v62 = v4;
    v55 = [(PDApplePayCloudStoreContainer *)self _allPossibleCloudStoreZonesForFetchingWithTransactionSourceIdentifier:?];
    v64 = objc_alloc_init(NSMutableSet);
    v61 = objc_alloc_init(NSMutableDictionary);
    v63 = objc_alloc_init(NSMutableDictionary);
    os_unfair_lock_lock(&self->_fetchTasksLock);
    v59 = [(NSMutableDictionary *)self->_fetchTasks objectForKeyedSubscript:v62];
    v60 = [(PDApplePayCloudStoreRecordFetchOperation *)v59 task];
    v5 = [v60 status];
    v6 = [v60 type];
    v7 = [(PDCloudStoreContainer *)v67 dataSource];
    v8 = [v7 transactionSourceTypeForTransactionSourceIdentifier:v62];

    if (v5 == 3)
    {
      os_unfair_lock_unlock(&v67->_fetchTasksLock);
      v58 = 0;
      v9 = &PKCloudStoreOperationGroupSuffixViewedTransactionsRecoveringFromProactiveFetchError;
      if (v6 == 1)
      {
        v9 = &PKCloudStoreOperationGroupSuffixViewedTransactionsRecoveringFromFullFetchError;
      }
    }

    else
    {
      if (v59 && v60 && v5 != 2)
      {
        os_unfair_lock_unlock(&v67->_fetchTasksLock);
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
              v15 = [(PDCloudStoreContainer *)v67 containerManager];
              v16 = [v15 fetchTimestampForCloudStoreStore:v14];

              if (v16 && ([v16 timeIntervalSinceNow], fabs(v17) <= 14400.0) && !PKDisableNotificationPullTimeout())
              {
                v18 = [v14 zoneName];
                [v63 safelySetObject:v16 forKey:v18];
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
          fetchTasks = v67->_fetchTasks;
          v22 = [(PDApplePayCloudStoreRecordFetchOperation *)v59 identifier];
          [(NSMutableDictionary *)fetchTasks safelySetObject:v59 forKey:v22];

          v23 = [(PDCloudStoreContainer *)v67 dataSource];
          [v23 updateRecordFetchTask:v58];
        }

        else
        {
          v58 = 0;
        }

        os_unfair_lock_unlock(&v67->_fetchTasksLock);
      }

      v9 = &PKCloudStoreOperationGroupSuffixViewedTransactions;
    }

    v57 = *v9;
    v66 = PKCloudStoreOperationGroupUserActionImplicit;
    v24 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = PKTransactionSourceTypeToString();
      if (v5 == 3)
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
      v100 = v60;
      v101 = 2112;
      v102 = v58;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Requesting updates for transactionSourceIdentifier: %@, type: %{public}@, shouldRecoverFromFailedFetch: %{public}@, %lu cloudStoreZonesToFetch: %@, %lu zonesNotFetching: %@, existingTask: %@, newTask: %@", buf, 0x5Cu);
    }

    [v61 safelySetObject:v58 forKey:@"newTask"];
    [v61 safelySetObject:v60 forKey:@"existingTask"];
    [v61 safelySetObject:v62 forKey:@"transactionSourceIdentifier"];
    v29 = PKTransactionSourceTypeToString();
    [v61 safelySetObject:v29 forKey:@"transactionSourceType"];

    v30 = [NSNumber numberWithBool:v5 == 3];
    [v61 safelySetObject:v30 forKey:@"shouldRecoverFromFailedFetch"];

    v31 = [v61 description];
    v91 = v31;
    v32 = [NSArray arrayWithObjects:&v91 count:1];
    [(PDCloudStoreContainer *)v67 reportContainerChangeSignpostEventType:46 stateName:v62 objectNames:v32 changeToken:0 error:0 operationGroupName:v66 operationGroupNameSuffix:v57];

    if (v5 != 3)
    {
      if (![v64 count])
      {
LABEL_57:

        v4 = v62;
        goto LABEL_58;
      }

      os_unfair_lock_lock(&v67->_fetchTasksLock);
      v54 = [(NSMutableDictionary *)v67->_fetchTasks objectForKeyedSubscript:v62];

      v56 = [(PDApplePayCloudStoreRecordFetchOperation *)v54 task];
      [v56 startTask];
      [(PDApplePayCloudStoreRecordFetchOperation *)v54 updateTask:v56];
      v36 = [(PDCloudStoreContainer *)v67 dataSource];
      [v36 updateRecordFetchTask:v56];

      os_unfair_lock_unlock(&v67->_fetchTasksLock);
      v65 = objc_alloc_init(PKAsyncUnaryOperationComposer);
      v81[0] = _NSConcreteStackBlock;
      v81[1] = 3221225472;
      v81[2] = sub_1000A998C;
      v81[3] = &unk_100841F68;
      v81[4] = v67;
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
            v71[5] = v67;
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
      v68[4] = v67;
      v69 = v38;
      v70 = buf;
      v46 = [v65 evaluateWithInput:v45 completion:v68];

      _Block_object_dispose(buf, 8);
      v59 = v54;
LABEL_56:

      goto LABEL_57;
    }

    v56 = 0;
    if (v8 > 1)
    {
      v33 = v62;
      if (v8 == 2)
      {
        v50 = [(PDCloudStoreContainer *)v67 dataSource];
        v51 = [v50 accountUserWithTransactionSourceIdentifier:v62];
        v35 = [v51 accountIdentifier];

        v52 = [(PDCloudStoreContainer *)v67 dataSource];
        v56 = [v52 passUniqueIdentifierWithAssociatedAccountIdentifier:v35];

        goto LABEL_54;
      }

      if (v8 == 3)
      {
        v47 = [(PDCloudStoreContainer *)v67 dataSource];
        v48 = [v47 accountWithTransactionSourceIdentifier:v62];
        v35 = [v48 accountIdentifier];

        v49 = [(PDCloudStoreContainer *)v67 dataSource];
        v56 = [v49 passUniqueIdentifierWithAssociatedAccountIdentifier:v35];

        goto LABEL_54;
      }
    }

    else
    {
      v33 = v62;
      if (!v8)
      {
        v35 = [(PDCloudStoreContainer *)v67 dataSource];
        v56 = [v35 passUniqueIdentifierForTransactionSourceIdentifier:v62];
        goto LABEL_54;
      }

      if (v8 == 1)
      {
        v34 = [(PDCloudStoreContainer *)v67 dataSource];
        v35 = [v34 peerPaymentAccountForTransactionSourceIdentifier:v62];

        v56 = [v35 associatedPassUniqueID];
LABEL_54:

        v33 = v62;
      }
    }

    v89 = v33;
    v65 = PKTransactionSourceTypeToString();
    v90 = v65;
    v53 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
    [(PDApplePayCloudStoreContainer *)v67 fetchAndStoreRecordsForPassUniqueID:v56 transactionSourceIdentifiers:v53 fullFetchIgnoringChangeToken:0 ignoreExistingRecordHash:0 groupName:v66 groupNameSuffix:v57 completion:0];

    goto LABEL_56;
  }

LABEL_58:
}

- (void)backgroundModifiedRecordSyncForTranasctionSourceIdentifiers:(id)a3 fromDate:(id)a4 returnRecords:(BOOL)a5 formReport:(BOOL)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AA15C;
  block[3] = &unk_1008420D0;
  v20 = v13;
  v21 = self;
  v24 = a5;
  v25 = a6;
  v22 = v12;
  v23 = v14;
  v16 = v12;
  v17 = v14;
  v18 = v13;
  dispatch_async(v15, block);
}

- (void)backgroundRecordChangedSyncForTranasctionSourceIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AACC4;
  block[3] = &unk_10083D320;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)fetchAndStoreRecordsForPassUniqueID:(id)a3 transactionSourceIdentifiers:(id)a4 fullFetchIgnoringChangeToken:(BOOL)a5 ignoreExistingRecordHash:(BOOL)a6 groupName:(id)a7 groupNameSuffix:(id)a8 completion:(id)a9
{
  v65 = a5;
  v66 = a6;
  v74 = a3;
  v75 = a4;
  v71 = a7;
  v72 = a8;
  v73 = a9;
  v67 = +[NSDate date];
  v12 = PKCloudStoreOperationGroupUserActionExplicit;
  if (v71)
  {
    v12 = v71;
  }

  v82 = v12;
  v13 = PKCloudStoreOperationGroupSuffixPassAdded;
  if (v72)
  {
    v13 = v72;
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
    v14 = v75;
    v16 = [v75 count];
    v17 = @"NO";
    *buf = 138544642;
    v155 = v74;
    if (v65)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    v157 = v18;
    v156 = 2114;
    if (v66)
    {
      v17 = @"YES";
    }

    v158 = 2048;
    v159 = v16;
    v160 = 2112;
    v161 = v75;
    v162 = 2114;
    v163 = v83;
    v164 = 2114;
    v165 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "fetchAndStoreRecordsForPassUniqueID %{public}@, fullFetchIgnoringChangeToken: %{public}@, %lu transactionSourceIdentifiers %@, groupNameSuffix: %{public}@, ignoreExistingRecordHash: %{public}@", buf, 0x3Eu);
  }

  oslog = v15;

  if (v75)
  {
    [v75 description];
    v14 = v19 = self;
    v153 = v14;
    v20 = [NSArray arrayWithObjects:&v153 count:1];
  }

  else
  {
    v20 = 0;
    v19 = self;
  }

  [(PDCloudStoreContainer *)v19 reportContainerChangeSignpostEventType:47 stateName:v74 objectNames:v20 changeToken:0 error:0 operationGroupName:v82 operationGroupNameSuffix:v83];
  if (v75)
  {

    v19 = self;
  }

  if (![v75 count])
  {
    if (v73)
    {
      v73[2](v73, 0);
    }

    goto LABEL_72;
  }

  v142[0] = _NSConcreteStackBlock;
  v142[1] = 3221225472;
  v142[2] = sub_1000AC608;
  v142[3] = &unk_100842170;
  v142[4] = v19;
  v64 = objc_retainBlock(v142);
  group = dispatch_group_create();
  v79 = [(PDCloudStoreContainer *)self isCloudStoreSetupAssistantComplete];
  os_unfair_lock_lock(&self->_fetchTasksLock);
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  obj = v75;
  v21 = [obj countByEnumeratingWithState:&v138 objects:v152 count:16];
  if (!v21)
  {

    v45 = self;
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
      v26 = [(PDApplePayCloudStoreRecordFetchOperation *)v25 task];
      v27 = [v26 status] == 1 && objc_msgSend(v26, "type") != 2;
      v28 = [v26 status] == 4 && objc_msgSend(v26, "type") != 2;
      if (v27 || v28)
      {
        v29 = objc_alloc_init(NSMutableArray);
        v30 = v29;
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
        [v30 safelyAddObject:v38];

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

        v44 = [(PDApplePayCloudStoreRecordFetchOperation *)v25 identifier];
        [v80 pk_safelyAddObject:v44];

        dispatch_group_enter(group);
        v135[0] = _NSConcreteStackBlock;
        v135[1] = 3221225472;
        v135[2] = sub_1000AC618;
        v135[3] = &unk_100842198;
        v135[4] = self;
        v37 = v43;
        v136 = v37;
        v137 = group;
        [(PDApplePayCloudStoreRecordFetchOperation *)v25 addCompletion:v135];

        v77 = 1;
        v32 = v26;
LABEL_58:

        goto LABEL_59;
      }

      if ((v79 & 1) == 0)
      {
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v155 = v23;
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Cannot fetch records after provisioning for transactionSourceIdentifier %@ since PDCloudStoreContainerSetupAssistantState is not complete", buf, 0xCu);
        }

        v30 = [(PDCloudStoreContainer *)self setupAssistantNotCompleteError];
        [(PDCloudStoreContainer *)self reportContainerChangeSignpostEventType:3 stateName:v23 objectNames:0 changeToken:0 error:v30 operationGroupName:v82 operationGroupNameSuffix:v83, v64];
        objc_storeStrong(v146 + 5, v30);
        if (!v25)
        {
          v25 = objc_alloc_init(PDApplePayCloudStoreRecordFetchOperation);
        }

        v32 = [[PKCloudStoreRecordFetchTask alloc] initWithTransactionSourceIdentifier:v23 type:1];

        [v32 startTask];
        [(PDApplePayCloudStoreRecordFetchOperation *)v25 updateTask:v32];
        fetchTasks = self->_fetchTasks;
        v36 = [(PDApplePayCloudStoreRecordFetchOperation *)v25 identifier];
        [(NSMutableDictionary *)fetchTasks safelySetObject:v25 forKey:v36];

        v37 = [(PDCloudStoreContainer *)self dataSource];
        [v37 updateRecordFetchTask:v32];
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
      v34 = [(PDApplePayCloudStoreRecordFetchOperation *)v25 identifier];
      [(NSMutableDictionary *)v33 safelySetObject:v25 forKey:v34];

      v30 = [(PDCloudStoreContainer *)self dataSource];
      [v30 updateRecordFetchTask:v32];
LABEL_59:

      objc_autoreleasePoolPop(v24);
      v22 = v22 + 1;
    }

    while (v88 != v22);
    v21 = [obj countByEnumeratingWithState:&v138 objects:v152 count:16];
  }

  while (v21);

  v45 = self;
  os_unfair_lock_unlock(&self->_fetchTasksLock);
  if (v77)
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v155 = v80;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Pass Provisioning fetch waiting for in progress tasks to complete: %@", buf, 0xCu);
    }

    v45 = self;
  }

LABEL_68:
  v132[0] = _NSConcreteStackBlock;
  v132[1] = 3221225472;
  v132[2] = sub_1000AC65C;
  v132[3] = &unk_10083FAF8;
  v46 = group;
  v133 = v46;
  v134 = v45;
  [v76 addOperation:v132];
  v126[0] = _NSConcreteStackBlock;
  v126[1] = 3221225472;
  v126[2] = sub_1000AC74C;
  v126[3] = &unk_1008421C0;
  v131 = v79;
  v130 = &v145;
  v126[4] = v45;
  v47 = obj;
  v127 = v47;
  v48 = v80;
  v128 = v48;
  v49 = v70;
  v129 = v49;
  [v76 addOperation:v126];
  v50 = PKLogFacilityTypeGetObject();
  v51 = os_signpost_id_make_with_pointer(v50, v45);
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
  v54 = v74;
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
  v101 = self;
  v107 = v65;
  v102 = v82;
  v103 = v83;
  v108 = v66;
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
  v96 = v73;
  v63 = [v76 evaluateWithInput:v61 completion:v90];

LABEL_72:
  _Block_object_dispose(v143, 8);

  _Block_object_dispose(&v145, 8);
}

- (void)fetchRecordsInAcceptedZoneShare:(id)a3 databaseIdentifier:(id)a4 operationGroupName:(id)a5 operationGroupNameSuffix:(id)a6 qualityOfService:(int64_t)a7 completion:(id)a8
{
  v13 = a3;
  v39 = a4;
  v41 = a5;
  v42 = a6;
  v40 = a8;
  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v13 zoneName];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Fetching records in newly shared zone %{public}@", &buf, 0xCu);
  }

  if (v13)
  {
    v16 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    group = dispatch_group_create();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v68 = 0x3032000000;
    v69 = sub_100005A60;
    v70 = sub_10000B13C;
    v71 = 0;
    v35 = [(PDCloudStoreContainer *)self isCloudStoreSetupAssistantComplete];
    os_unfair_lock_lock(&self->_fetchTasksLock);
    v17 = [[PKCloudStoreRecordFetchTask alloc] initWithCloudStoreZone:v13 type:3];
    [v17 queueTask];
    v18 = [v17 identifier];
    v19 = [(NSMutableDictionary *)self->_fetchTasks objectForKeyedSubscript:v18];
    v38 = [(PDApplePayCloudStoreRecordFetchOperation *)v19 task];
    [(NSMutableDictionary *)self->_fetchTasks setObject:v19 forKeyedSubscript:v18];
    v20 = [v38 status];
    v21 = [v38 status];
    if (v20 == 1 || v21 == 4)
    {
      dispatch_group_enter(group);
      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_1000AEC88;
      v63[3] = &unk_100842350;
      v64 = group;
      [(PDApplePayCloudStoreRecordFetchOperation *)v19 addCompletion:v63];
      v22 = v64;
    }

    else if (v35)
    {
      [v17 queueTask];
      [(PDApplePayCloudStoreRecordFetchOperation *)v19 updateTask:v17];
      v22 = [(PDCloudStoreContainer *)self dataSource];
      [v22 updateRecordFetchTask:v17];
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v13 zoneName];
        *v65 = 138412290;
        v66 = v24;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Cannot fetch records in newly shared zone %@ since the cloud store setup assistant is not complete", v65, 0xCu);
      }

      v22 = [(PDCloudStoreContainer *)self setupAssistantNotCompleteError];
      v25 = [v13 zoneName];
      [(PDCloudStoreContainer *)self reportContainerChangeSignpostEventType:3 stateName:v25 objectNames:0 changeToken:0 error:v22 operationGroupName:v41 operationGroupNameSuffix:v42];

      if (!v19)
      {
        v19 = objc_alloc_init(PDApplePayCloudStoreRecordFetchOperation);
      }

      [v17 startTask];
      objc_storeStrong((*(&buf + 1) + 40), v22);
      [(PDApplePayCloudStoreRecordFetchOperation *)v19 updateTask:v17];
      fetchTasks = self->_fetchTasks;
      v27 = [(PDApplePayCloudStoreRecordFetchOperation *)v19 identifier];
      [(NSMutableDictionary *)fetchTasks safelySetObject:v19 forKey:v27];

      v28 = [(PDCloudStoreContainer *)self dataSource];
      [v28 updateRecordFetchTask:v17];
    }

    os_unfair_lock_unlock(&self->_fetchTasksLock);
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_1000AEC90;
    v60[3] = &unk_10083FAF8;
    v29 = group;
    v61 = v29;
    v62 = self;
    [v16 addOperation:v60];
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_1000AED80;
    v55[3] = &unk_100842378;
    v59 = v35;
    p_buf = &buf;
    v55[4] = self;
    v30 = v18;
    v56 = v30;
    v31 = v13;
    v57 = v31;
    [v16 addOperation:v55];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1000AEF5C;
    v47[3] = &unk_1008423A0;
    v48 = v31;
    v49 = v39;
    v50 = v41;
    v53 = &buf;
    v54 = a7;
    v51 = v42;
    v52 = self;
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
    v45 = v40;
    v34 = [v16 evaluateWithInput:v32 completion:v43];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v72 = NSLocalizedDescriptionKey;
    v73 = @"Error: cannot fetch records from a nil accepted zone share";
    v23 = [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    v16 = [NSError errorWithDomain:PKPassKitErrorDomain code:-4001 userInfo:v23];

    [(PDCloudStoreContainer *)self reportContainerChangeSignpostEventType:3 stateName:0 objectNames:0 changeToken:0 error:v16 operationGroupName:v41 operationGroupNameSuffix:v42];
    if (v40)
    {
      v40[2]();
    }
  }
}

- (void)_fetchTaskOperationWithIdentifier:(id)a3 completedWithError:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_fetchTasksLock);
  v10 = [(NSMutableDictionary *)self->_fetchTasks objectForKeyedSubscript:v7];

  v8 = [v10 task];
  [v8 completeTaskWithError:v6];
  v9 = [(PDCloudStoreContainer *)self dataSource];
  [v9 updateRecordFetchTask:v8];

  os_unfair_lock_unlock(&self->_fetchTasksLock);
  [v10 callCompletionsWithError:v6 cloudStoreRecords:0];

  [(PDApplePayCloudStoreContainer *)self _updateFetchTaskScheduledActivityIfNeccessary];
}

- (id)_queue_additionalTransactionSourceIdentifiersForProvisioningWithZone:(id)a3 transactionSourceIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 zoneType];
    if (v8 >= 0xA || ((0x3EDu >> v8) & 1) == 0)
    {
      v10 = objc_alloc_init(NSMutableDictionary);
      peerPaymentAccount = self->_peerPaymentAccount;
      if (peerPaymentAccount)
      {
        v12 = v7;
        v13 = [(PKPeerPaymentAccount *)peerPaymentAccount associatedPassUniqueID];
        v14 = [(PDCloudStoreContainer *)self dataSource];
        v15 = [v14 passWithUniqueIdentifier:v13];
        v16 = [v15 paymentPass];

        if (v16)
        {
          v7 = v12;
          if ([v16 activationState])
          {
            v17 = [v16 activationState] == 2;
          }

          else
          {
            v17 = 1;
          }
        }

        else
        {
          v17 = 0;
          v7 = v12;
        }

        v18 = [v16 deviceTransactionSourceIdentifiers];
        v79 = [v18 isSubsetOfSet:v7];
      }

      else
      {
        v79 = 0;
        v16 = 0;
        v17 = 0;
      }

      v82 = v16;
      v19 = [(NSSet *)self->_accounts allObjects];
      v20 = PDAccountManagerDefaultAccountForFeature(2, v19);

      if (v20)
      {
        v21 = [(PDCloudStoreContainer *)self dataSource];
        v22 = [v20 associatedPassUniqueID];
        v23 = [v21 passWithUniqueIdentifier:v22];
        v24 = [v23 paymentPass];

        v25 = v24;
        if (v24)
        {
          if ([v24 activationState])
          {
            LODWORD(v24) = [v24 activationState] == 2;
          }

          else
          {
            LODWORD(v24) = 1;
          }
        }

        v81 = v25;
        v29 = [v25 deviceTransactionSourceIdentifiers];
        v26 = [v29 isSubsetOfSet:v7];

        v30 = [v20 accountIdentifier];
        if (v30)
        {
          v31 = [(NSDictionary *)self->_accountUsersByAccountIdentifier objectForKeyedSubscript:v30];
          v28 = [v31 coOwnerAccountUser];

          if (v28)
          {
            [v28 transactionSourceIdentifiers];
            v77 = v26;
            v32 = v24;
            v33 = v17;
            v34 = v28;
            v35 = v20;
            v37 = v36 = v7;
            v27 = [v37 isSubsetOfSet:v36];

            v7 = v36;
            v20 = v35;
            v28 = v34;
            v17 = v33;
            LODWORD(v24) = v32;
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
          v28 = 0;
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
        LODWORD(v24) = 0;
        v81 = 0;
        v28 = 0;
      }

      if ([v6 zoneType] == 1)
      {
        v38 = v24 & v26;
        v39 = v17 & v79;
        if ((v24 & v26) != 1 || (v39 & 1) == 0)
        {
          if (((v39 | v17 & v38 ^ 1) & 1) == 0)
          {
            v76 = v7;
            v97 = 0u;
            v98 = 0u;
            v95 = 0u;
            v96 = 0u;
            v40 = [v82 deviceTransactionSourceIdentifiers];
            v59 = [v40 countByEnumeratingWithState:&v95 objects:v102 count:16];
            if (v59)
            {
              v60 = v59;
              v80 = v28;
              v74 = v20;
              v75 = v6;
              v61 = *v96;
              do
              {
                for (i = 0; i != v60; i = i + 1)
                {
                  if (*v96 != v61)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v63 = *(*(&v95 + 1) + 8 * i);
                  v64 = [v82 uniqueID];
                  v65 = [NSString stringWithFormat:@"paymentApplication, %@, Apple Cash", v64];
                  [v10 safelySetObject:v65 forKey:v63];
                }

                v60 = [v40 countByEnumeratingWithState:&v95 objects:v102 count:16];
              }

              while (v60);
              goto LABEL_66;
            }

LABEL_67:

            v7 = v76;
            goto LABEL_68;
          }

          if (((v38 | v39 & v24 ^ 1) & 1) == 0)
          {
            v76 = v7;
            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            v40 = [v81 deviceTransactionSourceIdentifiers];
            v41 = [v40 countByEnumeratingWithState:&v91 objects:v101 count:16];
            if (v41)
            {
              v42 = v41;
              v80 = v28;
              v74 = v20;
              v75 = v6;
              v43 = *v92;
              do
              {
                for (j = 0; j != v42; j = j + 1)
                {
                  if (*v92 != v43)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v45 = *(*(&v91 + 1) + 8 * j);
                  v46 = [v81 uniqueID];
                  v47 = [NSString stringWithFormat:@"paymentApplication, %@, Apple Card", v46];
                  [v10 safelySetObject:v47 forKey:v45];
                }

                v42 = [v40 countByEnumeratingWithState:&v91 objects:v101 count:16];
              }

              while (v42);
LABEL_66:
              v20 = v74;
              v6 = v75;
              v28 = v80;
              goto LABEL_67;
            }

            goto LABEL_67;
          }
        }
      }

      else if ([v6 zoneType] == 4)
      {
        v48 = v24 & v26 ^ 1;
        v49 = v27 ^ 1;
        if ((v48 & 1) != 0 || v49)
        {
          if (((v24 & v26 | v49) & 1) == 0)
          {
            v76 = v7;
            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            v40 = [v81 deviceTransactionSourceIdentifiers];
            v66 = [v40 countByEnumeratingWithState:&v87 objects:v100 count:16];
            if (v66)
            {
              v67 = v66;
              v80 = v28;
              v74 = v20;
              v75 = v6;
              v68 = *v88;
              do
              {
                for (k = 0; k != v67; k = k + 1)
                {
                  if (*v88 != v68)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v70 = *(*(&v87 + 1) + 8 * k);
                  v71 = [v81 uniqueID];
                  v72 = [NSString stringWithFormat:@"paymentApplication, %@, Apple Card", v71];
                  [v10 safelySetObject:v72 forKey:v70];
                }

                v67 = [v40 countByEnumeratingWithState:&v87 objects:v100 count:16];
              }

              while (v67);
              goto LABEL_66;
            }

            goto LABEL_67;
          }

          if (((v48 | v27) & 1) == 0)
          {
            v76 = v7;
            v85 = 0u;
            v86 = 0u;
            v83 = 0u;
            v84 = 0u;
            v40 = [v28 transactionSourceIdentifiers];
            v50 = [v40 countByEnumeratingWithState:&v83 objects:v99 count:16];
            if (v50)
            {
              v51 = v50;
              v74 = v20;
              v75 = v6;
              v78 = *v84;
              v80 = v28;
              do
              {
                for (m = 0; m != v51; m = m + 1)
                {
                  if (*v84 != v78)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v53 = *(*(&v83 + 1) + 8 * m);
                  v54 = [v80 altDSID];
                  v55 = [v80 firstName];
                  v56 = [v80 lastName];
                  v57 = [v80 appleID];
                  v58 = [NSString stringWithFormat:@"accountUser, %@ - %@ - %@ - %@, Apple Card CoOwner", v54, v55, v56, v57];
                  [v10 safelySetObject:v58 forKey:v53];
                }

                v51 = [v40 countByEnumeratingWithState:&v83 objects:v99 count:16];
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

- (void)_fetchAndStoreAppleCashRecordsIfNecessaryForPassUniqueID:(id)a3 operationGroupName:(id)a4 operationGroupNameSuffix:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AFB30;
  block[3] = &unk_100842440;
  block[4] = self;
  v20 = v10;
  v22 = v12;
  v23 = v13;
  v21 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v13;
  v18 = v10;
  dispatch_async(v14, block);
}

- (void)_fetchAndStoreAppleCashItemWithRecordType:(id)a3 operationGroupName:(id)a4 operationGroupNameSuffix:(id)a5 zone:(id)a6 containerDatabase:(id)a7 transactionSourceIdentifiers:(id)a8 accountCreationDate:(id)a9 completion:(id)a10
{
  v15 = a8;
  v27 = a10;
  v26 = a9;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [NSPredicate predicateWithValue:1];
  v22 = [[CKQuery alloc] initWithRecordType:v20 predicate:v21];

  v23 = [(PDCloudStoreRecordsRequest *)[PDApplePayCloudStoreRecordsRequest alloc] initWithRequestType:4 storeChanges:1 returnRecords:0 qualityOfService:17 groupName:v19 groupNameSuffix:v18];
  [(PDCloudStoreRecordsRequest *)v23 setCkQuery:v22];
  [(PDCloudStoreRecordsRequest *)v23 setCloudStoreZone:v17];

  [(PDCloudStoreRecordsRequest *)v23 setContainerDatabase:v16];
  [(PDApplePayCloudStoreRecordsRequest *)v23 setTransactionSourceIdentifiers:v15];
  [(PDCloudStoreRecordsRequest *)v23 setIgnoreRecordsBeforeDate:v26];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000B09F4;
  v29[3] = &unk_100840D38;
  v30 = v15;
  v31 = self;
  v32 = v27;
  v24 = v27;
  v25 = v15;
  [(PDCloudStoreContainer *)self executeRecordsRequest:v23 completion:v29];
}

- (void)_addCloudStoreRecordsFromResponse:(id)a3 toTransactionSourceRecords:(id)a4 transactionSourceIdentifiers:(id)a5 passUniqueID:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [a3 cloudStoreRecords];
  v14 = [v13 allObjectsByDatabaseIdentifier];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000B0C60;
  v18[3] = &unk_100842468;
  v18[4] = self;
  v19 = v11;
  v20 = v10;
  v21 = v12;
  v15 = v12;
  v16 = v10;
  v17 = v11;
  [v14 enumerateKeysAndObjectsUsingBlock:v18];
}

- (void)canSyncTransactionFromCloudKitForTransactionSourceIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(PDCloudStoreContainer *)self workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B100C;
    block[3] = &unk_10083F490;
    v11 = v7;
    block[4] = self;
    v10 = v6;
    dispatch_async(v8, block);
  }
}

- (void)canSyncTransactionToCloudKit:(id)a3 forTransactionSourceIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [(PDCloudStoreContainer *)self workQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000B1158;
    v12[3] = &unk_10083FD50;
    v15 = v10;
    v12[4] = self;
    v13 = v8;
    v14 = v9;
    dispatch_async(v11, v12);
  }
}

- (BOOL)_queue_canSyncTransactionToCloudKit:(id)a3 forTransactionSourceIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 hasBackingData])
  {
    goto LABEL_18;
  }

  v8 = [v6 serviceIdentifier];
  v9 = [v8 length];

  if (!v9)
  {
    goto LABEL_19;
  }

  if (![(PDApplePayCloudStoreContainer *)self _queue_isRelevantTransactionSourceIdentifier:v7])
  {
LABEL_18:
    LOBYTE(v9) = 0;
    goto LABEL_19;
  }

  v10 = [(PDCloudStoreContainer *)self dataSource];
  v11 = [v6 serviceIdentifier];
  v12 = [v10 transactionArchiveForTransactionWithServiceIdentifier:v11 transactionSourceIdentifier:v7];

  v13 = [v12 allArchiveLocationsWithType:0 areArchived:1];
  if (!v12)
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v6 serviceIdentifier];
      v22 = 138412802;
      v23 = v6;
      v24 = 2114;
      v25 = v15;
      v26 = 2112;
      v27 = v7;
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
    v17 = [(PDCloudStoreContainer *)self containerManager];
    v18 = [v17 cloudStoreZonesByDatabaseIdentifierForItem:v6 action:1];

    if ([v18 count])
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v6 serviceIdentifier];
        v20 = [v18 count];
        v22 = 138413058;
        v23 = v6;
        v24 = 2114;
        v25 = v19;
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

- (void)passDidDisappear:(id)a3
{
  v4 = [a3 paymentPass];
  v5 = [v4 deviceTransactionSourceIdentifiers];
  v6 = [v5 allObjects];

  os_unfair_lock_lock(&self->_fetchTasksLock);
  [(NSMutableDictionary *)self->_fetchTasks removeObjectsForKeys:v6];
  os_unfair_lock_unlock(&self->_fetchTasksLock);
}

- (void)syncTransactionsToCloudStoreOriginatedOnDevice:(unint64_t)a3
{
  v4 = [(PDCloudStoreContainer *)self dataSource];
  [v4 syncTransactionsToCloudStoreOriginatedOnDevice:a3];
}

- (void)bootstrapZoneWithName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B15F8;
  block[3] = &unk_10083D320;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)generateRandomTransactionForTransactionSourceIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B18E4;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)uploadTransaction:(id)a3 forTransactionSourceIdentifier:(id)a4 includeServerData:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B1A94;
  block[3] = &unk_10083C678;
  block[4] = self;
  v18 = v10;
  v21 = a5;
  v19 = v11;
  v20 = v12;
  v14 = v11;
  v15 = v12;
  v16 = v10;
  dispatch_async(v13, block);
}

- (void)uploadRecurringPayment:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B23A4;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)uploadCounterpartImageData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B2A08;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)uploadPendingRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B306C;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)populateEvents:(id)a3 forAccountIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PDCloudStoreContainer *)self workQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000B36F8;
  v15[3] = &unk_10083FD00;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)_handlePeerPaymentAccountChanged:(id)a3
{
  v4 = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B3DC8;
  block[3] = &unk_10083C470;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)accountManager:(id)a3 didAddAccount:(id)a4
{
  v5 = a4;
  v6 = [(PDCloudStoreContainer *)self workQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B3F4C;
  v8[3] = &unk_10083C420;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)accountManager:(id)a3 didRemoveAccount:(id)a4
{
  v5 = a4;
  v6 = [(PDCloudStoreContainer *)self workQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B4118;
  v8[3] = &unk_10083C420;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)accountManager:(id)a3 didUpdateAccount:(id)a4 oldAccount:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B4308;
  block[3] = &unk_10083C4C0;
  v13 = v7;
  v14 = v8;
  v15 = self;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

- (void)accountManager:(id)a3 sharedAccountCloudStoreChangedForAccountIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(PDCloudStoreContainer *)self workQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B44E0;
  v8[3] = &unk_10083C420;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)accountManager:(id)a3 accountUsersChanged:(id)a4 oldUsers:(id)a5 accountIdentifier:(id)a6
{
  v7 = a6;
  v8 = [(PDCloudStoreContainer *)self workQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B46C8;
  v10[3] = &unk_10083C420;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(v8, v10);
}

- (id)allPossibleZoneNamesForContainerDatabase:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableSet);
  v6 = [v4 scope];
  if (v6 == 3)
  {
    if (![(PKPeerPaymentAccount *)self->_peerPaymentAccount role])
    {
      v8 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedAccountInformation];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000B4964;
      v11[3] = &unk_100842558;
      v12 = v5;
      v13 = self;
      v14 = v4;
      [v8 enumerateAssociatedAccountsUsingBlock:v11];
    }
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_7;
    }

    v7 = [(PDApplePayCloudStoreContainer *)self _peerPaymentZoneNamesForAccount:self->_peerPaymentAccount containerDatabase:v4];
    [v5 unionSet:v7];
  }

  v9 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccountSet:self->_accounts containerDatabase:v4];
  [v5 unionSet:v9];

LABEL_7:

  return v5;
}

- (id)allPossibleZoneNamesForContainerDatabase:(id)a3 itemType:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(NSMutableSet);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v17 = v6;
  v8 = [(PDApplePayCloudStoreContainer *)self allPossibleZoneNamesForContainerDatabase:v6];
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
        if (a4 <= 7)
        {
          if (a4 > 5)
          {
            if (a4 == 6)
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

          else if (a4 == 1)
          {
            if (v18 - 1 < 8)
            {
              goto LABEL_23;
            }
          }

          else if (a4 == 5 && v18 <= 8 && ((1 << v18) & 0x176) != 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (a4 <= 9)
          {
            if (a4 != 8)
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

          switch(a4)
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

- (id)allPossibleZoneSubscriptionsForContainerDatabase:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableSet);
  if ([v4 scope] == 2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(PDApplePayCloudStoreContainer *)self allPossibleZoneNamesForContainerDatabase:v4, 0];
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

          v11 = [v4 zoneForZoneName:*(*(&v15 + 1) + 8 * i)];
          v12 = [(PDApplePayCloudStoreContainer *)self subscriptionForZone:v11 inContainerDatabase:v4];
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

- (id)possibleDatabaseSubscriptionForContainerDatabase:(id)a3
{
  v4 = a3;
  if ([v4 scope] == 3)
  {
    v5 = [(PDCloudStoreContainer *)self containerManager];
    v6 = [v5 containerName];
    v7 = [v4 identifier];
    v8 = [NSString stringWithFormat:@"%@%@%@%@%@", v6, @"-", v7, @"-", @"database-subscription"];

    v9 = [[CKDatabaseSubscription alloc] initWithSubscriptionID:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)subscriptionForZone:(id)a3 inContainerDatabase:(id)a4
{
  v5 = a3;
  if ([a4 scope] != 2)
  {
    v12 = 0;
    goto LABEL_16;
  }

  v6 = [v5 zoneID];
  v7 = [v6 zoneName];

  v8 = PKCloudStoreTransactionsZoneName;
  v9 = v7;
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
  if (v5 && v13)
  {
    v14 = [CKRecordZoneSubscription alloc];
    v15 = [v5 zoneID];
    v12 = [v14 initWithZoneID:v15 subscriptionID:v13];
  }

LABEL_16:

  return v12;
}

- (id)zoneIDForSubscription:(id)a3 inContainerDatabase:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 scope] != 2)
  {
    v11 = 0;
    goto LABEL_13;
  }

  v7 = [v5 subscriptionID];
  v8 = v7;
  if (v7 == @"PDCloudStoreManagerTransactionZoneSubscriptionID" || v7 && (v9 = [(__CFString *)v7 isEqualToString:@"PDCloudStoreManagerTransactionZoneSubscriptionID"], v8, v9))
  {
    v10 = PKCloudStoreTransactionsZoneName;
  }

  else
  {
    v12 = [(__CFString *)v8 rangeOfString:@"subscription"]- 1;
    if (v12 >= [(__CFString *)v8 length])
    {
LABEL_11:
      v11 = 0;
      goto LABEL_12;
    }

    v10 = [(__CFString *)v8 substringToIndex:v12];
  }

  v13 = v10;
  if (!v10)
  {
    goto LABEL_11;
  }

  v14 = [v6 zoneForZoneName:v10];
  v11 = [v14 zoneID];

LABEL_12:
LABEL_13:

  return v11;
}

- (id)cloudStoreZonesForItem:(id)a3 action:(unint64_t)a4 inContainerDatabase:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 itemType];
  v11 = 0;
  if (v10 > 8)
  {
    if ((v10 - 9) >= 2)
    {
      if (v10 == 11)
      {
        v23 = [NSSet alloc];
        v24 = PKCloudStoreZoneTypeToString();
        v14 = [v23 initWithObjects:{v24, 0}];

LABEL_20:
        v15 = [(PDCloudStoreContainer *)self containerManager];
        v11 = [v15 cloudStoreZonesFromZoneNames:v14 inContainerDatabase:v9];
LABEL_21:

        goto LABEL_122;
      }

      if (v10 != 12)
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

    v14 = [(PDApplePayCloudStoreContainer *)self _peerPaymentZoneNamesForAccount:peerPaymentAccount containerDatabase:v9];
    goto LABEL_20;
  }

  if (v10 > 6)
  {
    if (v10 == 7)
    {
      v20 = v8;
      v21 = -[PDApplePayCloudStoreContainer _accountZoneNamesForAccount:itemType:containerDatabase:](self, "_accountZoneNamesForAccount:itemType:containerDatabase:", v20, [v20 itemType], v9);

      v22 = [(PDCloudStoreContainer *)self containerManager];
      v11 = [v22 cloudStoreZonesFromZoneNames:v21 inContainerDatabase:v9];

      goto LABEL_122;
    }

    v14 = v8;
    v15 = [v14 zoneName];
    if (v15)
    {
      v16 = [(PDCloudStoreContainer *)self containerManager];
      v17 = [NSSet setWithObject:v15];
      v11 = [v16 cloudStoreZonesFromZoneNames:v17 inContainerDatabase:v9];
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_21;
  }

  if (v10 != 1)
  {
    if (v10 != 5)
    {
      goto LABEL_122;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v8;
    }

    else
    {
      v12 = 0;
    }

    v29 = [v12 identifier];
    v30 = [v12 accountIdentifier];
    v31 = [v12 altDSID];
    obj = v29;
    v129 = [[PKCloudStoreZoneQueryConfiguration alloc] initWithItemType:objc_msgSend(v8 recordName:{"itemType"), v29}];
    [v129 setAccountIdentifier:v30];
    v32 = [(PDCloudStoreContainer *)self dataSource];
    v33 = [v32 accountWithIdentifier:v30];

    v122 = v33;
    v34 = [v33 type];
    if (v34 == 1)
    {
      v36 = 2;
    }

    else
    {
      if (v34 != 3)
      {
        v35 = v129;
        if (v34 != 4)
        {
LABEL_59:
          v53 = a4;
          v128 = v12;
          [v35 setAltDSID:v31];
          if (v31 && !PKAltDSIDIsCurrentUser())
          {
            v56 = [(PDCloudStoreContainer *)self dataSource];
            v55 = v30;
            v61 = [v56 transactionSourceIdentifierForAccountUserAltDSID:v31 accountIdentifier:v30];
          }

          else
          {
            v54 = [(PDCloudStoreContainer *)self dataSource];
            v55 = v30;
            v56 = [v54 passUniqueIdentifierWithAssociatedAccountIdentifier:v30];

            v57 = [(PDCloudStoreContainer *)self dataSource];
            v58 = [v57 transactionSourceIdentifiersForPassUniqueIdentifier:v56];
            [v58 anyObject];
            v60 = v59 = v31;

            v61 = v60;
            v31 = v59;

            v35 = v129;
          }

          [v35 setTransactionSourceIdentifier:v61];
          v11 = -[PDApplePayCloudStoreContainer cloudStoreZonesForItemType:configuration:action:inContainerDatabase:](self, "cloudStoreZonesForItemType:configuration:action:inContainerDatabase:", [v8 itemType], v35, v53, v9);
          if ([v11 count])
          {
            v62 = v55;
            a4 = v53;
LABEL_82:
            if (![v11 count])
            {
              v76 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
              {
                [v9 identifier];
                v121 = v31;
                v78 = v77 = v61;
                *buf = 138412546;
                v136 = v8;
                v137 = 2112;
                v138 = v78;
                _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Could not find cloud store zones for account event %@ in container database %@", buf, 0x16u);

                v61 = v77;
                v31 = v121;
              }

              v35 = v129;
            }

            goto LABEL_122;
          }

          v118 = v61;
          v63 = [(PDCloudStoreContainer *)self dataSource];
          v62 = v55;
          v64 = [v63 accountWithIdentifier:v55];

          v115 = v64;
          v65 = [v64 isSharedAccount];
          v120 = v31;
          if (v31 && v65 && v62)
          {
            v66 = [(PDCloudStoreContainer *)self dataSource];
            v67 = [v66 accountUserWithAltDSID:v31 accountIdentifier:v62];

            a4 = v53;
            if (!v67)
            {
              v61 = v118;
              v70 = v115;
              goto LABEL_79;
            }

            v111 = v67;
            v68 = -[PDApplePayCloudStoreContainer _accountZoneNamesForAccountUser:itemType:containerDatabase:](self, "_accountZoneNamesForAccountUser:itemType:containerDatabase:", v67, [v8 itemType], v9);
            v69 = [(PDCloudStoreContainer *)self containerManager];
            v109 = [v69 cloudStoreZonesFromZoneNames:v68 inContainerDatabase:v9];

            v11 = v69;
            v61 = v118;
            v70 = v115;
          }

          else
          {
            a4 = v53;
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

            v71 = -[PDApplePayCloudStoreContainer _accountZoneNamesForAccount:itemType:containerDatabase:](self, "_accountZoneNamesForAccount:itemType:containerDatabase:", v115, [v8 itemType], v9);
            v68 = [(PDCloudStoreContainer *)self containerManager];
            v111 = v71;
            v109 = [v68 cloudStoreZonesFromZoneNames:v71 inContainerDatabase:v9];
            v31 = v120;
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
    v18 = v8;
    v19 = [v18 serviceIdentifier];
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v25 = [v18 accountIdentifier];
  v26 = [v18 accountType];
  v27 = [v18 transactionSourceIdentifier];
  if (v25)
  {
    if (v26)
    {
      v28 = v26;
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
      v136 = v8;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Assuming the item is for the peer payment account since the account identifier wasnt defined %@", buf, 0xCu);
    }

    v25 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount identifier];
    v28 = 1;
  }

  v127 = v18;
  v130 = self;
  v119 = v28;
  if (v27)
  {
    goto LABEL_98;
  }

  if ((v28 - 2) >= 3)
  {
    if (v28 != 1)
    {
      v27 = 0;
      goto LABEL_98;
    }

    v113 = a4;
    v38 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount peerPaymentAccountWithIdentifier:v25];
    v39 = self->_peerPaymentAccount;
    v40 = [(PDCloudStoreContainer *)self dataSource];
    v41 = v40;
    obja = v38;
    if (v38 == v39)
    {
      v79 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassUniqueID];
      [v41 transactionSourceIdentifiersForPassUniqueIdentifier:v79];
      v80 = v42 = v41;
      v81 = [v80 anyObject];

      v27 = v81;
    }

    else
    {
      [v40 transactionSourceIdentifierForPeerPaymentAccountIdentifier:v25];
      v27 = v42 = v41;
    }

    a4 = v113;
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
    v27 = 0;
    goto LABEL_97;
  }

  v44 = v43;
  v114 = a4;
  v117 = v19;
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
      v48 = [v47 accountIdentifier];
      v49 = v25;
      v50 = v49;
      if (v48 == v49)
      {
        v51 = v25;

LABEL_75:
        v42 = [v47 associatedPassUniqueID];
        if (v42)
        {
          v72 = [(PDCloudStoreContainer *)v130 dataSource];
          v73 = [v72 transactionSourceIdentifiersForPassUniqueIdentifier:v42];
          [v73 anyObject];
          v75 = v74 = v42;

          a4 = v114;
          v18 = v127;
          v25 = v51;
          self = v130;
          v27 = v75;
          v42 = v74;
          v19 = v117;
        }

        else
        {
          v19 = v117;
          a4 = v114;
          v18 = v127;
          v25 = v51;
          if (v119 != 3)
          {
            v27 = 0;
            self = v130;
            goto LABEL_96;
          }

          self = v130;
          v72 = [(PDCloudStoreContainer *)v130 dataSource];
          v27 = [v72 transactionSourceIdentifierForAccountIdentifier:v50];
        }

        goto LABEL_96;
      }

      v51 = v25;
      if (v25 && v48)
      {
        v52 = [v48 isEqualToString:v49];

        if (v52)
        {
          goto LABEL_75;
        }
      }

      else
      {
      }

      v25 = v51;
      self = v130;
    }

    v44 = [(NSSet *)obja countByEnumeratingWithState:&v131 objects:v143 count:16];
    if (v44)
    {
      continue;
    }

    break;
  }

  v27 = 0;
  a4 = v114;
  v19 = v117;
  v18 = v127;
LABEL_97:

  v28 = v119;
LABEL_98:
  v82 = [v18 altDSID];
  v83 = v27;
  v84 = [[PKCloudStoreZoneQueryConfiguration alloc] initWithItemType:objc_msgSend(v8 recordName:{"itemType"), v19}];
  [v84 setAccountIdentifier:v25];
  [v84 setAccountType:v28];
  v123 = v83;
  [v84 setTransactionSourceIdentifier:v83];
  objb = v82;
  [v84 setAltDSID:v82];
  -[PDApplePayCloudStoreContainer cloudStoreZonesForItemType:configuration:action:inContainerDatabase:](self, "cloudStoreZonesForItemType:configuration:action:inContainerDatabase:", [v8 itemType], v84, a4, v9);
  v11 = v85 = v28;
  if ([v11 count])
  {
    v86 = v82;
    v87 = v127;
    goto LABEL_117;
  }

  v87 = v127;
  if ((v85 - 2) < 3)
  {
    v116 = a4;
    v88 = [(PDCloudStoreContainer *)self dataSource];
    v89 = [v88 accountWithIdentifier:v25];

    v112 = v89;
    if ([v89 isSharedAccount])
    {
      v86 = objb;
      a4 = v116;
      if (v25 && objb)
      {
        v90 = [(PDCloudStoreContainer *)self dataSource];
        v110 = v25;
        v91 = [v90 accountUserWithAltDSID:objb accountIdentifier:v25];

        if (v91)
        {
          v92 = -[PDApplePayCloudStoreContainer _accountZoneNamesForAccountUser:itemType:containerDatabase:](self, "_accountZoneNamesForAccountUser:itemType:containerDatabase:", v91, [v8 itemType], v9);
          v93 = [(PDCloudStoreContainer *)self containerManager];
          v94 = [v93 cloudStoreZonesFromZoneNames:v92 inContainerDatabase:v9];

          v11 = v94;
        }

        v25 = v110;
        v87 = v127;
        self = v130;
        v86 = objb;
      }
    }

    else
    {
      v86 = objb;
      a4 = v116;
    }

    if ([v11 count])
    {
      goto LABEL_115;
    }

    v95 = v112;
    if (v112)
    {
      v96 = self;
      v97 = v25;
      v98 = v19;
      a4 = v116;
      v99 = -[PDApplePayCloudStoreContainer _accountZoneNamesForAccount:itemType:containerDatabase:](v96, "_accountZoneNamesForAccount:itemType:containerDatabase:", v112, [v8 itemType], v9);
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

    v95 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount peerPaymentAccountWithIdentifier:v25];
    if (v95)
    {
      v96 = self;
      v97 = v25;
      v98 = v19;
      v112 = v95;
      v99 = [(PDApplePayCloudStoreContainer *)v96 _peerPaymentZoneNamesForAccount:v95 containerDatabase:v9];
LABEL_114:
      v100 = v99;
      v101 = [(PDCloudStoreContainer *)v96 containerManager];
      v102 = [v101 cloudStoreZonesFromZoneNames:v100 inContainerDatabase:v9];

      v11 = v102;
      v19 = v98;
      v25 = v97;
      v87 = v127;
      self = v130;
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
      v104 = [v9 identifier];
      PKPaymentTransactionAccountTypeToString();
      v106 = v105 = v25;
      *buf = 138413058;
      v136 = v104;
      v137 = 2112;
      v138 = v105;
      v139 = 2112;
      v140 = v106;
      v141 = 2112;
      v142 = v127;
      _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "No cloud store zones for transaction in container scope %@ with account identifier %@, accountType %@, %@", buf, 0x2Au);

      v25 = v105;
      self = v130;

      v86 = objb;
    }

    v87 = v127;
  }

LABEL_122:
  v107 = [(PDApplePayCloudStoreContainer *)self filterCloudStoreZones:v11 action:a4 inContainerDatabase:v9];

  return v107;
}

- (id)filterCloudStoreZones:(id)a3 action:(unint64_t)a4 inContainerDatabase:(id)a5
{
  v6 = a3;
  v7 = a5;
  v27 = objc_alloc_init(NSMutableSet);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v6;
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
        v14 = [v13 zoneName];
        v15 = [v13 zoneType];
        if (v15 > 9)
        {
LABEL_23:
          if (v15)
          {
            goto LABEL_31;
          }

          goto LABEL_27;
        }

        if (((1 << v15) & 0x386) != 0)
        {
          if (([v7 scope] | 2) != 3)
          {
            goto LABEL_31;
          }

          goto LABEL_27;
        }

        if (((1 << v15) & 0x60) != 0)
        {
          v30 = 0;
          v31 = 0;
          [PKCloudStoreZone zoneValueForZoneName:v14 outZoneType:0 outAccountIdentifier:&v31 altDSID:&v30];
          v16 = v31;
          v17 = v30;
          v18 = [v7 scope];
          if ((v18 - 2) >= 2)
          {
            if (v18 != 1)
            {
              goto LABEL_30;
            }

LABEL_26:

            goto LABEL_27;
          }

          if (!a4)
          {
            goto LABEL_26;
          }

          if (a4 != 3 || [v7 scope] == 2)
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
          if (v15 != 3)
          {
            goto LABEL_23;
          }

          v20 = [v7 scope];
          if (v20 != 1 && (v20 != 3 || a4 > 3 || a4 == 2))
          {
            goto LABEL_31;
          }
        }

LABEL_27:
        v21 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = PDCloudStoreZoneActionToString(a4);
          v23 = [v7 identifier];
          *buf = v26;
          v37 = v13;
          v38 = 2112;
          v39 = v22;
          v40 = 2112;
          v41 = v23;
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

- (id)cloudStoreZonesForItemType:(unint64_t)a3 configuration:(id)a4 action:(unint64_t)a5 inContainerDatabase:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = [v10 recordName];
  v13 = v12;
  v14 = 0;
  if (a3 > 8)
  {
    if (a3 - 9 < 2)
    {
      goto LABEL_11;
    }

    if (a3 == 11)
    {
      v32 = [NSSet alloc];
      v33 = PKCloudStoreZoneTypeToString();
      v22 = [v32 initWithObjects:{v33, 0}];

      goto LABEL_27;
    }

    if (a3 == 12)
    {
LABEL_11:
      peerPaymentAccount = self->_peerPaymentAccount;
      if (peerPaymentAccount)
      {
        v22 = [(PDApplePayCloudStoreContainer *)self _peerPaymentZoneNamesForAccount:peerPaymentAccount containerDatabase:v11];
LABEL_27:
        v34 = [(PDCloudStoreContainer *)self containerManager];
        v14 = [v34 cloudStoreZonesFromZoneNames:v22 inContainerDatabase:v11];

        goto LABEL_50;
      }

      v14 = 0;
    }

LABEL_50:
    v24 = v13;
    goto LABEL_51;
  }

  if (a3 > 6)
  {
    if (a3 == 7)
    {
      if (v12)
      {
        v27 = [PKAccount accountIdentifierFromRecordName:v12];
        v28 = [(PDCloudStoreContainer *)self dataSource];
        v29 = [v28 accountWithIdentifier:v27];

        v30 = 0;
        if (![0 count] && v29)
        {
          v30 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccount:v29 itemType:7 containerDatabase:v11];
        }

        if ([v30 count])
        {
          v31 = [(PDCloudStoreContainer *)self containerManager];
          v14 = [v31 cloudStoreZonesFromZoneNames:v30 inContainerDatabase:v11];
        }

        else
        {
          v14 = 0;
        }

        goto LABEL_47;
      }

      v38 = [(PDApplePayCloudStoreContainer *)self allPossibleZoneNamesForContainerDatabase:v11 itemType:7];
      v39 = [(PDCloudStoreContainer *)self containerManager];
      v40 = [v39 cloudStoreZonesFromZoneNames:v38 inContainerDatabase:v11];
    }

    else if (v12)
    {
      v14 = 0;
LABEL_47:
      v59 = [PKCloudStoreZoneShareLock zoneNameFromRecordName:v13];
      if (v59)
      {
        v60 = [(PDCloudStoreContainer *)self containerManager];
        v61 = [NSSet setWithObject:v59];
        v62 = [v60 cloudStoreZonesFromZoneNames:v61 inContainerDatabase:v11];

        v14 = v62;
      }

      goto LABEL_50;
    }

    v41 = [(PDApplePayCloudStoreContainer *)self allPossibleZoneNamesForContainerDatabase:v11 itemType:a3];
    v42 = [(PDCloudStoreContainer *)self containerManager];
    v14 = [v42 cloudStoreZonesFromZoneNames:v41 inContainerDatabase:v11];

LABEL_33:
    v24 = 0;
    goto LABEL_51;
  }

  if (a3 != 1)
  {
    if (a3 == 5)
    {
      if (v12)
      {
        v15 = [PKAccountEvent eventIdentifierFromRecordName:v12];
        v16 = [(PDCloudStoreContainer *)self dataSource];
        v17 = [v16 accountEventWithIdentifier:v15];

        v18 = [v17 accountIdentifier];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = [v10 accountIdentifier];
        }

        v65 = v20;
        v148 = a5;

        v66 = [v17 altDSID];
        v67 = v66;
        v143 = v17;
        v147 = v15;
        if (v66)
        {
          v68 = v66;
        }

        else
        {
          v68 = [v10 altDSID];
        }

        v69 = v68;

        v70 = [(PDCloudStoreContainer *)self dataSource];
        v71 = [v70 accountWithIdentifier:v65];

        if ([v71 isSharedAccount] && v65 && v69)
        {
          v72 = [(PDCloudStoreContainer *)self dataSource];
          v73 = [v72 accountUserWithAltDSID:v69 accountIdentifier:v65];

          v74 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccountUser:v73 itemType:5 containerDatabase:v11];
          v75 = [v74 mutableCopy];

          v76 = [v10 zoneName];
          [v75 pk_safelyAddObject:v76];
        }

        else
        {
          v75 = 0;
          if ([0 count] || !v71)
          {
LABEL_66:
            if ([v75 count])
            {
              v78 = [(PDCloudStoreContainer *)self containerManager];
              v14 = [v78 cloudStoreZonesFromZoneNames:v75 inContainerDatabase:v11];
            }

            else
            {
              v14 = 0;
            }

            v24 = v13;
            a5 = v148;
            goto LABEL_51;
          }

          v77 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccount:v71 itemType:5 containerDatabase:v11];
          v75 = [v77 mutableCopy];

          v73 = [v10 zoneName];
          [v75 pk_safelyAddObject:v73];
        }

        goto LABEL_66;
      }

      v35 = self;
      v36 = v11;
      v37 = 5;
      goto LABEL_32;
    }

    goto LABEL_50;
  }

  if (!v12)
  {
    v35 = self;
    v36 = v11;
    v37 = 1;
LABEL_32:
    v43 = [(PDApplePayCloudStoreContainer *)v35 allPossibleZoneNamesForContainerDatabase:v36 itemType:v37];
    v44 = [(PDCloudStoreContainer *)self containerManager];
    v14 = [v44 cloudStoreZonesFromZoneNames:v43 inContainerDatabase:v11];

    goto LABEL_33;
  }

  v23 = +[PKPaymentTransaction recordNamePrefix];
  v24 = [v13 stringByReplacingOccurrencesOfString:v23 withString:&stru_10086D930];

  v25 = [v10 transactionSourceIdentifier];
  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v45 = [(PDCloudStoreContainer *)self dataSource];
    v46 = [v10 accountIdentifier];
    v26 = [v45 transactionSourceIdentifierForTransactionWithServiceIdentifier:v24 accountIdentifier:v46 accountType:{objc_msgSend(v10, "accountType")}];

    if (!v26)
    {
      v47 = [(PDCloudStoreContainer *)self dataSource];
      v48 = [v10 altDSID];
      v49 = [v10 accountIdentifier];
      v26 = [v47 transactionSourceIdentifierForAccountUserAltDSID:v48 accountIdentifier:v49];
    }
  }

  v50 = [(PDCloudStoreContainer *)self dataSource];
  v51 = [v50 transactionSourceTypeForTransactionSourceIdentifier:v26];

  v14 = 0;
  if (v51 > 1)
  {
    if (v51 == 2)
    {
      v87 = [(PDCloudStoreContainer *)self dataSource];
      v53 = [v87 accountUserWithTransactionSourceIdentifier:v26];

      if (!v53)
      {
        goto LABEL_76;
      }

      v58 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccountUser:v53 itemType:1 containerDatabase:v11];
    }

    else
    {
      if (v51 != 3)
      {
        goto LABEL_123;
      }

      v57 = [(PDCloudStoreContainer *)self dataSource];
      v53 = [v57 accountWithTransactionSourceIdentifier:v26];

      if (!v53)
      {
        goto LABEL_76;
      }

      v58 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccount:v53 itemType:1 containerDatabase:v11];
    }

    v88 = v58;
    [(PDCloudStoreContainer *)self containerManager];
    v90 = v89 = a5;
    v14 = [v90 cloudStoreZonesFromZoneNames:v88 inContainerDatabase:v11];

    a5 = v89;
    goto LABEL_77;
  }

  if (!v51)
  {
    v149 = a5;
    v79 = [(PDCloudStoreContainer *)self dataSource];
    v80 = [v79 passUniqueIdentifierForTransactionSourceIdentifier:v26];

    if (v80)
    {
      goto LABEL_80;
    }

    *buf = 0;
    v81 = [(PDCloudStoreContainer *)self dataSource];
    v157 = 0;
    v158 = 0;
    v82 = [v81 broadwayOrSurfTransactionSourceIdentifierForAmbiguousServiceIdentifier:v24 transactionAccountIdentifier:&v158 transactionAccountType:buf transactionAltDSID:&v157];
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
      [v10 setAccountIdentifier:v144];
      [v10 setAccountType:*buf];
      [v10 setAltDSID:v84];
    }

    else
    {
      v80 = 0;
    }

    if (v80)
    {
LABEL_80:
      v91 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassUniqueID];
      v92 = v80;
      v93 = v91;
      v94 = v93;
      v145 = v92;
      if (v92 == v93)
      {

        a5 = v149;
      }

      else
      {
        a5 = v149;
        if (!v93)
        {

          goto LABEL_88;
        }

        v95 = v92;
        v96 = [v92 isEqualToString:v93];

        if (!v96)
        {
LABEL_88:
          v99 = [v10 accountIdentifier];
          v100 = [v10 altDSID];
          v101 = v100;
          if (v100)
          {
            v102 = v100;
          }

          else
          {
            v102 = PKCurrentUserAltDSID();
          }

          v98 = v102;

          accounts = self->_accounts;
          v155[0] = _NSConcreteStackBlock;
          v155[1] = 3221225472;
          v155[2] = sub_1000B7228;
          v155[3] = &unk_100842580;
          v156 = v99;
          v104 = accounts;
          v97 = v156;
          v105 = [(NSSet *)v104 pk_anyObjectPassingTest:v155];
          v139 = v105;
          if ([v105 isSharedAccount] && v97 && v98)
          {
            v136 = v97;
            v106 = [(PDCloudStoreContainer *)self dataSource];
            v107 = [v106 transactionArchiveForTransactionWithServiceIdentifier:v24 transactionSourceIdentifier:v26];

            obj = v107;
            v108 = [(NSSet *)v107 locations];
            v109 = [v108 pk_setByApplyingBlock:&stru_1008425C0];

            v110 = [(PDCloudStoreContainer *)self containerManager];
            v14 = [v110 cloudStoreZonesFromZoneNames:v109 inContainerDatabase:v11];

            if (![v14 count])
            {
              v111 = [(PDCloudStoreContainer *)self dataSource];
              v112 = [v111 accountUserWithAltDSID:v98 accountIdentifier:v136];

              if (v112)
              {
                v141 = v112;
                v113 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccountUser:v112 itemType:1 containerDatabase:v11];
                v114 = [(PDCloudStoreContainer *)self containerManager];
                v137 = [v114 cloudStoreZonesFromZoneNames:v113 inContainerDatabase:v11];

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
                    v121 = v98;
                    if (*v152 != v135)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v122 = *(*(&v151 + 1) + 8 * i);
                    v123 = [v122 associatedPassUniqueID];
                    v124 = v145;
                    v125 = v123;
                    v126 = v125;
                    if (v124 == v125)
                    {

LABEL_117:
                      v128 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccount:v122 itemType:1 containerDatabase:v11];
                      v109 = [v128 mutableCopy];

                      v129 = [v10 zoneName];
                      [v109 pk_safelyAddObject:v129];

                      v130 = [(PDCloudStoreContainer *)self containerManager];
                      v14 = [v130 cloudStoreZonesFromZoneNames:v109 inContainerDatabase:v11];

                      v26 = v142;
                      v98 = v121;
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

                    v98 = v121;
                  }

                  v138 = [(NSSet *)obj countByEnumeratingWithState:&v151 objects:v168 count:16];
                  if (v138)
                  {
                    continue;
                  }

                  break;
                }

                v14 = 0;
                a5 = v149;
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

            [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccount:v105 itemType:1 containerDatabase:v11];
            v117 = v116 = v97;
            v118 = [v117 mutableCopy];

            v119 = [v10 zoneName];
            [(NSSet *)v118 pk_safelyAddObject:v119];

            v97 = v116;
            v109 = [(PDCloudStoreContainer *)self containerManager];
            obj = v118;
            v14 = [v109 cloudStoreZonesFromZoneNames:v118 inContainerDatabase:v11];
          }

          a5 = v149;
          goto LABEL_120;
        }
      }

      v97 = [(PDApplePayCloudStoreContainer *)self _peerPaymentZoneNamesForAccount:self->_peerPaymentAccount containerDatabase:v11];
      v98 = [(PDCloudStoreContainer *)self containerManager];
      v14 = [v98 cloudStoreZonesFromZoneNames:v97 inContainerDatabase:v11];
LABEL_122:

      goto LABEL_123;
    }

    v145 = 0;
    a5 = v149;
    goto LABEL_88;
  }

  if (v51 == 1)
  {
    v52 = [(PDCloudStoreContainer *)self dataSource];
    v53 = [v52 peerPaymentAccountForTransactionSourceIdentifier:v26];

    if (v53)
    {
      [(PDApplePayCloudStoreContainer *)self _peerPaymentZoneNamesForAccount:v53 containerDatabase:v11];
      v55 = v54 = a5;
      v56 = [(PDCloudStoreContainer *)self containerManager];
      v14 = [v56 cloudStoreZonesFromZoneNames:v55 inContainerDatabase:v11];

      a5 = v54;
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
      v132 = v150 = a5;
      v146 = [v11 identifier];
      PKTransactionSourceTypeToString();
      v134 = v133 = v26;
      *buf = 138544386;
      *&buf[4] = v132;
      v160 = 2114;
      v161 = v24;
      v162 = 2112;
      v163 = v146;
      v164 = 2112;
      v165 = v133;
      v166 = 2114;
      v167 = v134;
      _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "No zones for itemType %{public}@, recordName %{public}@, containerDatabaseScope %@, transactionSourceIdentifier %@, transactionSourceType %{public}@", buf, 0x34u);

      v26 = v133;
      a5 = v150;
    }
  }

LABEL_51:
  v63 = [(PDApplePayCloudStoreContainer *)self filterCloudStoreZones:v14 action:a5 inContainerDatabase:v11];

  return v63;
}

- (void)_queue_processPeerPaymentAccountChangeWithOldAccount:(id)a3 newPeerPaymentAccount:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PDCloudStoreContainer *)self containerManager];
  v13 = [v8 databaseForScope:2];

  v9 = [(PDApplePayCloudStoreContainer *)self _peerPaymentZoneNamesForAccount:v6 containerDatabase:v13];

  v10 = [(PDApplePayCloudStoreContainer *)self _peerPaymentZoneNamesForAccount:v7 containerDatabase:v13];

  v11 = [v10 mutableCopy];
  [v11 minusSet:v9];
  v12 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccountSet:self->_accounts containerDatabase:v13];
  [v11 minusSet:v12];
  [(PDApplePayCloudStoreContainer *)self _queue_updateWithPossibleNewZonesToAdd:v9 orphanedZones:v11 containerDatabase:v13];
}

- (void)_queue_processAccountChangeWithOldAccounts:(id)a3 newAccounts:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PDCloudStoreContainer *)self containerManager];
  v13 = [v8 databaseForScope:2];

  v9 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccountSet:v6 containerDatabase:v13];

  v10 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccountSet:v7 containerDatabase:v13];

  v11 = [v10 mutableCopy];
  [v11 minusSet:v9];
  v12 = [(PDApplePayCloudStoreContainer *)self _peerPaymentZoneNamesForAccount:self->_peerPaymentAccount containerDatabase:v13];
  [v11 minusSet:v12];
  [(PDApplePayCloudStoreContainer *)self _queue_updateWithPossibleNewZonesToAdd:v9 orphanedZones:v11 containerDatabase:v13];
}

- (void)_queue_processSharedAccountCloudStoreChangeWithOldSharedAccountCloudStore:(id)a3 newSharedAccountCloudStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDCloudStoreContainer *)self containerManager];
  v9 = [v8 databaseForScope:2];

  v10 = [v7 sharedAccountCloudStoreZonesWithAccess:1];
  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Old shared account cloud store %@: ", &v13, 0xCu);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "New shared account cloud store %@: ", &v13, 0xCu);
  }

  v12 = [v10 pk_setByApplyingBlock:&stru_100842600];
  [(PDApplePayCloudStoreContainer *)self _queue_updateWithPossibleNewZonesToAdd:v12 orphanedZones:0 containerDatabase:v9];
}

- (void)_queue_updateWithPossibleNewZonesToAdd:(id)a3 orphanedZones:(id)a4 containerDatabase:(id)a5
{
  v8 = a3;
  v39 = a4;
  v9 = a5;
  v10 = [(PDCloudStoreContainer *)self containerManager];
  v11 = [v10 containerName];

  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v56 = [v8 count];
    v57 = 2112;
    v58 = v8;
    v59 = 2114;
    v60 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%lu possible new zones to add for %@ container: %{public}@", buf, 0x20u);
  }

  oslog = v12;
  v38 = v11;

  v13 = [[NSMutableSet alloc] initWithSet:v8];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v14 = v8;
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
        v20 = [(PDCloudStoreContainer *)self containerManager];
        v21 = [v20 cloudStoreZoneForZoneName:v19 inContainerDatabase:v9];

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
    v24 = [v39 count];
    *buf = 134218498;
    v56 = v24;
    v57 = 2112;
    v58 = v39;
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

          v32 = [v9 zoneForZoneName:*(*(&v42 + 1) + 8 * j)];
          [v26 addObject:v32];
        }

        v29 = [v27 countByEnumeratingWithState:&v42 objects:v53 count:16];
      }

      while (v29);
    }

    v33 = [v9 identifier];
    v51 = v33;
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

- (id)_peerPaymentZoneNamesForAccount:(id)a3 containerDatabase:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableSet);
  v8 = [v6 cloudStoreZoneNames];

  v9 = [v5 scope];
  if ((v9 & 0xFFFFFFFFFFFFFFFELL) == 2 && [v8 count])
  {
    v10 = [v8 anyObject];
    [v7 addObject:v10];
  }

  v11 = [v7 copy];

  return v11;
}

- (id)_accountZoneNamesForAccountSet:(id)a3 containerDatabase:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(NSMutableSet);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
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

        v14 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccount:*(*(&v17 + 1) + 8 * i) itemType:0 containerDatabase:v7, v17];
        [v8 unionSet:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];

  return v15;
}

- (id)_accountZoneNamesForAccountUser:(id)a3 itemType:(unint64_t)a4 containerDatabase:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 > 8 || ((1 << a4) & 0x163) == 0)
  {
    goto LABEL_13;
  }

  v10 = [v8 accountIdentifier];
  if (!v10)
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Error: an account identifier is not defined for account user %@", &v21, 0xCu);
    }

    goto LABEL_13;
  }

  v11 = v10;
  v12 = [v9 scope];
  if ((v12 - 1) > 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = qword_10068E128[(v12 - 1)];
  }

  v15 = [(NSDictionary *)self->_sharedAccountCloudStoreByAccountIdentifier objectForKey:v11];
  v16 = [(NSDictionary *)self->_accountUsersByAccountIdentifier objectForKeyedSubscript:v11];
  v17 = [v15 primaryZoneForAccountUser:v8 inAccountUserCollection:v16 access:v13];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 zoneName];
    self = [NSSet setWithObject:v19];
  }

  if (!v18)
  {
LABEL_13:
    self = 0;
  }

  return self;
}

- (id)_accountZoneNamesForAccount:(id)a3 itemType:(unint64_t)a4 containerDatabase:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(NSMutableSet);
  if ([v8 isSharedAccount])
  {
    accountUsersByAccountIdentifier = self->_accountUsersByAccountIdentifier;
    v12 = [v8 accountIdentifier];
    v13 = [(NSDictionary *)accountUsersByAccountIdentifier objectForKey:v12];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = v13;
    v14 = [v13 accountUsers];
    v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccountUser:*(*(&v26 + 1) + 8 * i) itemType:a4 containerDatabase:v9];
          if ([v19 count])
          {
            [v10 unionSet:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v16);
    }
  }

  if ([v9 scope] == 2)
  {
    if (([v8 isSharedAccount] & 1) == 0)
    {
      v20 = [v8 cloudStoreZoneNames];
      if ([v20 count])
      {
        if ([v8 feature] == 4)
        {
          [v10 addObjectsFromArray:v20];
        }

        else
        {
          v21 = [v20 firstObject];
          [v10 addObject:v21];
        }
      }
    }

    if (a4 == 11 || !a4)
    {
      if (PKIssuerMessagingFlagsEnabled())
      {
        v22 = [v8 feature];
        if (v22 == 5 || v22 == 2)
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

- (void)_queue_createOrRemoveZoneSharesForPeerPaymentIfNecessaryWithCompletion:(id)a3
{
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000B8888;
  v20[3] = &unk_10083D648;
  v4 = a3;
  v21 = v4;
  v5 = objc_retainBlock(v20);
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting zone share integrity check for peer payment.", buf, 2u);
  }

  v7 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount cloudStoreZoneNames];
  v8 = [(PDCloudStoreContainer *)self containerManager];
  v9 = [(PDCloudStoreContainer *)self containerManager];
  v10 = [v9 databaseForScope:2];
  v11 = [v8 cloudStoreZonesFromZoneNames:v7 inContainerDatabase:v10];

  if ([v11 count])
  {
    v12 = [NSPredicate predicateWithFormat:@"zoneName BEGINSWITH %@", PKApplePayContainerCashZoneNamePrefix];
    v13 = [v11 filteredSetUsingPredicate:v12];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting zone share integrity operation", buf, 2u);
    }

    v14 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount role];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000B890C;
    v15[3] = &unk_1008426C8;
    v11 = v13;
    v19 = v14;
    v16 = v11;
    v17 = self;
    v18 = v5;
    [(PDApplePayCloudStoreContainer *)self _queue_familyMembersWithCompletion:v15];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "There are no cached cloud store zones for zone names in private database %@", buf, 0xCu);
    }

    (v5[2])(v5);
  }
}

- (void)_queue_createOrRemoveZoneSharesForAccountsIfNecessaryWithCompletion:(id)a3
{
  v4 = a3;
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

  v8 = [(PDCloudStoreContainer *)self containerManager];
  v9 = [v8 databaseForScope:2];

  v10 = [(PDCloudStoreContainer *)self containerManager];
  v11 = [v10 databaseForScope:3];

  PKCurrentUserAltDSID();
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000B9ADC;
  v16[3] = &unk_1008426F0;
  v16[4] = self;
  v17 = v9;
  v19 = v18 = v11;
  v20 = v4;
  v12 = v4;
  v13 = v19;
  v14 = v11;
  v15 = v9;
  [(PDApplePayCloudStoreContainer *)self _queue_familyMembersByAltDSIDWithCompletion:v16];
}

- (void)_queue_createOrRemoveZoneSharesIfNecessaryWithCompletion:(id)a3
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000BAD44;
  v14[3] = &unk_10083D648;
  v15 = a3;
  v4 = v15;
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

- (id)_allPossibleCloudStoreZonesForFetchingWithTransactionSourceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PDCloudStoreContainer *)self dataSource];
  v102 = v4;
  v6 = [v5 transactionSourceTypeForTransactionSourceIdentifier:v4];

  v7 = objc_alloc_init(NSMutableSet);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v40 = [(PDCloudStoreContainer *)self containerManager];
      v9 = [v40 validDatabases];

      v104 = [v9 countByEnumeratingWithState:&v126 objects:v149 count:16];
      if (v104)
      {
        v100 = *v127;
        v112 = v9;
        do
        {
          for (i = 0; i != v104; i = i + 1)
          {
            if (*v127 != v100)
            {
              objc_enumerationMutation(v9);
            }

            v42 = *(*(&v126 + 1) + 8 * i);
            v43 = [(PDCloudStoreContainer *)self dataSource];
            v44 = [v43 accountUserWithTransactionSourceIdentifier:v102];

            v45 = [v42 scope];
            if ((v45 - 1) > 2)
            {
              v46 = 0;
            }

            else
            {
              v46 = qword_10068E128[(v45 - 1)];
            }

            sharedAccountCloudStoreByAccountIdentifier = self->_sharedAccountCloudStoreByAccountIdentifier;
            v48 = [v44 accountIdentifier];
            v49 = [(NSDictionary *)sharedAccountCloudStoreByAccountIdentifier objectForKey:v48];

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
                  v59 = [(PDCloudStoreContainer *)self containerManager];
                  v60 = [v59 cloudStoreZoneForZoneName:v58 inContainerDatabase:v42];

                  if (v60)
                  {
                    [v7 addObject:v60];
                  }
                }

                v55 = [v53 countByEnumeratingWithState:&v122 objects:v148 count:16];
              }

              while (v55);
            }

            v9 = v112;
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

    v20 = [(PDCloudStoreContainer *)self dataSource];
    v9 = [v20 accountWithTransactionSourceIdentifier:v102];

    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v21 = [(PDCloudStoreContainer *)self containerManager];
    v22 = [v21 validDatabases];

    obj = v22;
    v103 = [v22 countByEnumeratingWithState:&v118 objects:v147 count:16];
    if (v103)
    {
      v99 = *v119;
      v111 = v9;
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
          v25 = [(PDApplePayCloudStoreContainer *)self _accountZoneNamesForAccount:v9 itemType:0 containerDatabase:v24];
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
                v31 = [(PDCloudStoreContainer *)self containerManager];
                v32 = [v31 cloudStoreZoneForZoneName:v30 inContainerDatabase:v24];

                if (v32)
                {
                  [v7 addObject:v32];
                }
              }

              v27 = [v25 countByEnumeratingWithState:&v114 objects:v146 count:16];
            }

            while (v27);
          }

          v9 = v111;
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

      v8 = [(PDCloudStoreContainer *)self containerManager];
      v9 = [v8 databaseForScope:3];

      v10 = [(PDCloudStoreContainer *)self dataSource];
      v11 = [v10 peerPaymentAccountForTransactionSourceIdentifier:v102];

      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      obj = v11;
      v12 = [(PDApplePayCloudStoreContainer *)self _peerPaymentZoneNamesForAccount:v11 containerDatabase:v9];
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
            v18 = [(PDCloudStoreContainer *)self containerManager];
            v19 = [v18 cloudStoreZoneForZoneName:v17 inContainerDatabase:v9];

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

    v33 = [(PDCloudStoreContainer *)self dataSource];
    v9 = [v33 passUniqueIdentifierForTransactionSourceIdentifier:v102];

    peerPaymentAccount = self->_peerPaymentAccount;
    if (peerPaymentAccount)
    {
      v35 = [(PKPeerPaymentAccount *)peerPaymentAccount associatedPassUniqueID];
      v36 = v9;
      v37 = v35;
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

    v61 = [(PDCloudStoreContainer *)self dataSource];
    v62 = [v61 associatedAccountIdentifierForPassWithUniqueIdentifier:v9];

    obj = v62;
    v63 = [v62 length];
    if (v39)
    {
      v64 = [(PDCloudStoreContainer *)self containerManager];
      v12 = [v64 databaseForScope:2];

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
            v70 = [(PDCloudStoreContainer *)self containerManager];
            v71 = [v70 cloudStoreZoneForZoneName:v69 inContainerDatabase:v12];

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
      v72 = [(PDCloudStoreContainer *)self dataSource];
      v12 = [v72 accountWithIdentifier:v62];

      v105 = PKCurrentUserAltDSID();
      v138 = 0u;
      v139 = 0u;
      v140 = 0u;
      v141 = 0u;
      v73 = [(PDCloudStoreContainer *)self containerManager];
      v74 = [v73 validDatabases];

      v96 = v74;
      v101 = [v74 countByEnumeratingWithState:&v138 objects:v152 count:16];
      if (v101)
      {
        v97 = *v139;
        v95 = PKCloudStoreMessagesZoneName;
        v113 = v9;
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
            v77 = [(PDCloudStoreContainer *)self dataSource];
            v78 = [v77 accountUserWithAltDSID:v105 accountIdentifier:obj];

            v110 = v78;
            if (v78)
            {
              v79 = [v76 scope];
              if ((v79 - 1) > 2)
              {
                v80 = 0;
              }

              else
              {
                v80 = qword_10068E128[(v79 - 1)];
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
                  v92 = [(PDCloudStoreContainer *)self containerManager];
                  v93 = [v92 cloudStoreZoneForZoneName:v91 inContainerDatabase:v76];

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
            v9 = v113;
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

- (void)_handleFamilyUpdateNotification:(id)a3
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FAFamilyUpdateNotification fired", buf, 2u);
  }

  v5 = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BBB3C;
  block[3] = &unk_10083C470;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)_queue_familyMembersWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    familyCircleManager = self->_familyCircleManager;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000BBBF8;
    v7[3] = &unk_100842780;
    v7[4] = self;
    v8 = v4;
    [(PDFamilyCircleManager *)familyCircleManager familyMembersWithCachePolicy:0 completion:v7];
  }
}

- (void)_queue_familyMembersByAltDSIDWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    familyCircleManager = self->_familyCircleManager;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000BBD84;
    v7[3] = &unk_100842780;
    v7[4] = self;
    v8 = v4;
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

- (void)performScheduledActivityWithIdentifier:(id)a3 activityCriteria:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PKCloudStoreOperationGroupScheduledActivity;
  v9 = PKCloudStoreOperationGroupSuffixFetchTaskBackgroundActivity;
  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PDApplePayCloudStoreContainer starting activity: %{public}@", buf, 0xCu);
  }

  v11 = [(NSMutableDictionary *)self->_backgroundTasksBeingRun objectForKeyedSubscript:v6];
  v12 = [v11 BOOLValue];

  if ([(PDCloudStoreContainer *)self isCloudStoreSetupAssistantComplete])
  {
    if (!v12)
    {
      [(NSMutableDictionary *)self->_backgroundTasksBeingRun setObject:&__kCFBooleanTrue forKeyedSubscript:v6];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000BCE80;
      v14[3] = &unk_10083D110;
      v14[4] = self;
      v15 = v6;
      v16 = v8;
      v17 = v9;
      [(PDCloudStoreContainer *)self initialCloudDatabaseSetupWithOperationGroupNameSuffix:v9 completion:v14];

      goto LABEL_12;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v6;
      v13 = "PDApplePayCloudStoreContainer not running %{public}@ since one is already in progress";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = v6;
    v13 = "PDApplePayCloudStoreContainer not running %{public}@ since setup assistant is not complete";
    goto LABEL_9;
  }

LABEL_12:
}

- (void)_queue_performFetchTasksBackgroundActivityForGroupName:(id)a3 suffix:(id)a4 completion:(id)a5
{
  v121 = a3;
  v124 = a4;
  v103 = a5;
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
  v130 = self;
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
        v16 = [v15 task];
        v17 = [v16 nextPossibleFetchDate];
        if (!v13 || [v16 status] != 3 || v17 && objc_msgSend(v17, "compare:", v9) == 1)
        {
          [(__CFString *)v125 safelyAddObject:v16];
          goto LABEL_13;
        }

        [(__CFString *)v119 safelyAddObject:v16];
        v18 = [v16 type];
        if (v18 == 3)
        {
          [(__CFString *)v114 pk_safelyAddObject:v13];
          goto LABEL_13;
        }

        if (v18 == 2)
        {
          v31 = [(PDCloudStoreContainer *)self dataSource];
          v32 = [v31 transactionSourceExistsWithIdentifier:v13];

          if (v32)
          {
            [(__CFString *)v107 pk_safelyAddObject:v13];
          }

          else
          {
            [(__CFString *)v113 safelyAddObject:v16];
            [(__CFString *)v119 removeObject:v16];
          }

          goto LABEL_53;
        }

        if (v18 != 1)
        {
          goto LABEL_13;
        }

        v19 = [(PDCloudStoreContainer *)self dataSource];
        v20 = self;
        v21 = [v19 transactionSourceExistsWithIdentifier:v13];

        if ((v21 & 1) == 0)
        {
          [(__CFString *)v113 safelyAddObject:v16];
          [(__CFString *)v119 removeObject:v16];
          self = v20;
          v9 = v118;
          goto LABEL_13;
        }

        v22 = [(PDCloudStoreContainer *)v20 dataSource];
        v23 = [v22 transactionSourceTypeForTransactionSourceIdentifier:v13];

        if (v23 > 1)
        {
          v9 = v118;
          if (v23 == 2)
          {
            v51 = [(PDCloudStoreContainer *)v130 dataSource];
            v52 = [v51 accountUserWithTransactionSourceIdentifier:v13];

            v53 = [v52 accountIdentifier];
            v54 = [(PDCloudStoreContainer *)v130 dataSource];
            v110 = v53;
            v115 = [v54 passUniqueIdentifierWithAssociatedAccountIdentifier:v53];

            v108 = [v52 altDSID];
            v105 = [v52 firstName];
            v104 = [v52 lastName];
            v112 = v52;
            v55 = [v52 appleID];
            v56 = [NSString stringWithFormat:@"accountUser, %@ - %@ - %@ - %@", v108, v105, v104, v55];
            [(__CFString *)v8 safelySetObject:v56 forKey:v13];

            self = v130;
            v9 = v118;
          }

          else
          {
            self = v130;
            if (v23 != 3)
            {
              goto LABEL_13;
            }

            v33 = [(PDCloudStoreContainer *)v130 dataSource];
            v34 = [v33 accountWithTransactionSourceIdentifier:v13];

            v110 = [v34 accountIdentifier];
            v35 = [(PDCloudStoreContainer *)v130 dataSource];
            v116 = [v35 passUniqueIdentifierForTransactionSourceIdentifier:v13];

            v36 = v116;
            v112 = v34;
            if (!v116)
            {
              if ([v34 feature] == 5)
              {
                v37 = [(NSSet *)v130->_accounts allObjects];
                v38 = PDAccountManagerDefaultAccountForFeature(2, v37);
                v39 = [v38 associatedPassUniqueID];

                v36 = v39;
                if (!v39 || (-[PDCloudStoreContainer dataSource](v130, "dataSource"), v40 = objc_claimAutoreleasedReturnValue(), v41 = [v40 passExistsWithUniqueID:v39], v40, v36 = v39, (v41 & 1) == 0))
                {

                  v36 = @"<savings-account>";
                }

                self = v130;
              }

              else
              {
                v36 = 0;
              }

              v34 = v112;
            }

            v115 = v36;
            [v34 feature];
            v108 = PKFeatureIdentifierToString();
            v57 = [NSString stringWithFormat:@"account, %@, %@", v108, v110];
            [(__CFString *)v8 safelySetObject:v57 forKey:v13];

            v9 = v118;
          }

          goto LABEL_47;
        }

        v9 = v118;
        if (v23)
        {
          self = v130;
          if (v23 != 1)
          {
            goto LABEL_13;
          }

          v24 = [(PDCloudStoreContainer *)v130 dataSource];
          v25 = [v24 peerPaymentAccount];
          v115 = [v25 associatedPassUniqueID];

          self = v130;
          v26 = [(PDCloudStoreContainer *)v130 dataSource];
          v27 = [v26 peerPaymentAccountForTransactionSourceIdentifier:v13];

          v28 = [v27 identifier];
          v112 = v27;
          v29 = v27;
          v9 = v118;
          v108 = [v29 altDSID];
          v110 = v28;
          v30 = [NSString stringWithFormat:@"Peer Payment Associated Account: %@, %@", v28, v108];
          [(__CFString *)v8 safelySetObject:v30 forKey:v13];

          goto LABEL_47;
        }

        v42 = [(PDCloudStoreContainer *)v130 dataSource];
        v43 = [v42 passUniqueIdentifierForTransactionSourceIdentifier:v13];

        v44 = [(PDCloudStoreContainer *)v130 dataSource];
        v115 = v43;
        v45 = [v44 passWithUniqueIdentifier:v43];
        v46 = [v45 paymentPass];

        v112 = v46;
        if (v46)
        {
          v47 = [v46 hasAssociatedPeerPaymentAccount];
          v48 = @"Apple Cash";
          self = v130;
          v9 = v118;
          if ((v47 & 1) == 0)
          {
            if (![v112 associatedAccountFeatureIdentifier])
            {
              v49 = [(PDCloudStoreContainer *)v130 dataSource];
              v111 = [v49 associatedAccountIdentifierForPassWithUniqueIdentifier:v115];

              v109 = [(PDCloudStoreContainer *)v130 dataSource];
              v50 = [v109 accountWithIdentifier:v111];
              [v50 feature];

              self = v130;
            }

            v48 = PKFeatureIdentifierToString();
          }

          v110 = v48;
          v108 = [NSString stringWithFormat:@"paymentApplication, %@, %@", v115, v48];
          [__CFString safelySetObject:v8 forKey:"safelySetObject:forKey:"];
LABEL_47:

          goto LABEL_48;
        }

        self = v130;
        v9 = v118;
LABEL_48:

        if (!v115)
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

        [(__CFString *)v106 setObject:v61 forKeyedSubscript:v115];
        [v61 pk_safelyAddObject:v13];

LABEL_53:
        self = v130;
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
  v74 = v121;
  [(PDCloudStoreContainer *)self reportContainerChangeSignpostEventType:55 stateName:@"ApplePayCloudStorePerformFetchTasks" objectNames:v73 changeToken:0 error:0 operationGroupName:v121 operationGroupNameSuffix:v124];

  [(PDApplePayCloudStoreContainer *)self _queue_ensureZoneShareIntegrity];
  if ([(__CFString *)v113 count])
  {
    v75 = [(PDCloudStoreContainer *)self dataSource];
    [v75 removeRecordFetchTasks:v113];
  }

  if ([(__CFString *)v114 count])
  {
    v76 = [(PDCloudStoreContainer *)self containerManager];
    v77 = [v76 databaseForScope:3];

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
          v84 = [(PDCloudStoreContainer *)v130 containerManager];
          v85 = [v84 cloudStoreZoneForZoneName:v83 inContainerDatabase:v77];

          v86 = [v77 identifier];
          [(PDApplePayCloudStoreContainer *)v130 fetchRecordsInAcceptedZoneShare:v85 databaseIdentifier:v86 operationGroupName:v121 operationGroupNameSuffix:v124 qualityOfService:17 completion:0];
        }

        v80 = [(__CFString *)v78 countByEnumeratingWithState:&v143 objects:v154 count:16];
      }

      while (v80);
    }

    v67 = v106;
    self = v130;
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

          self = v130;
          if ([v89 count])
          {
            [(PDApplePayCloudStoreContainer *)v130 fetchAndStoreRecordsForPassUniqueID:v88 transactionSourceIdentifiers:v89 fullFetchIgnoringChangeToken:0 ignoreExistingRecordHash:0 groupName:v121 groupNameSuffix:v120 completion:0];
          }
        }

        v127 = [(__CFString *)v129 countByEnumeratingWithState:&v139 objects:v153 count:16];
      }

      while (v127);
    }

    v74 = v121;
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
  if (v103)
  {
    v103[2](v103);
  }
}

- (void)_queue_performUnarchivedTransactionsBackgroundActivityForGroupName:(id)a3 suffix:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PDCloudStoreContainer *)self dataSource];
  v12 = [v11 transactionArchivesWithType:0 isArchived:0];
  v13 = [v12 allObjects];

  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v44 = [v13 count];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Uploading %{public}lu unarchived transactions", buf, 0xCu);
  }

  v15 = [v13 pk_createArrayBySafelyApplyingBlock:&stru_1008427C0];
  v41[0] = @"archivesThatNeedSyncingCount";
  v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v13 count]);
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
  [(PDCloudStoreContainer *)self reportContainerChangeSignpostEventType:55 stateName:@"ApplePayCloudStoreUnarchivedTask" objectNames:v22 changeToken:0 error:0 operationGroupName:v10 operationGroupNameSuffix:v9];

  v23 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  [v13 count];
  v33 = _NSConcreteStackBlock;
  v34 = 3221225472;
  v35 = sub_1000BE3AC;
  v36 = &unk_100842838;
  v37 = v13;
  v38 = v23;
  v39 = self;
  v24 = v23;
  PKRangeEnumeratePartitions();
  v25 = +[NSNull null];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000BF0BC;
  v29[3] = &unk_100842860;
  v31 = self;
  v32 = v8;
  v30 = v37;
  v26 = v8;
  v27 = v37;
  v28 = [v24 evaluateWithInput:v25 completion:v29];
}

- (BOOL)_queue_isRelevantTransactionSourceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PDCloudStoreContainer *)self dataSource];
  v6 = [v5 transactionSourceTypeForTransactionSourceIdentifier:v4];

  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(PDCloudStoreContainer *)self containerManager];
    v9 = [v8 containerName];
    v25 = 138412546;
    v26 = v4;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Checking if %@ is relevant transaction source identifiers for %@", &v25, 0x16u);
  }

  LOBYTE(v10) = 0;
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v11 = [(PDCloudStoreContainer *)self dataSource];
        v12 = [v11 peerPaymentAccountForTransactionSourceIdentifier:v4];

        LOBYTE(v10) = v12 != 0;
        if (v12)
        {
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v25 = 138412290;
            v26 = v4;
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

    v16 = [(PDCloudStoreContainer *)self dataSource];
    v12 = [v16 passUniqueIdentifierForTransactionSourceIdentifier:v4];

    peerPaymentAccount = self->_peerPaymentAccount;
    if (peerPaymentAccount)
    {
      v18 = [(PKPeerPaymentAccount *)peerPaymentAccount associatedPassUniqueID];
      v19 = v12;
      v15 = v19;
      if (v18 == v19)
      {

        goto LABEL_24;
      }

      if (v19 && v18)
      {
        v20 = [v18 isEqualToString:v19];

        if (!v20)
        {
          goto LABEL_28;
        }

LABEL_24:
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138412290;
          v26 = v4;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ is relevant because it is the peer payment pass", &v25, 0xCu);
        }

        LOBYTE(v10) = 1;
        goto LABEL_33;
      }
    }

LABEL_28:
    v22 = [(PDCloudStoreContainer *)self dataSource];
    v23 = [v22 associatedAccountIdentifierForPassWithUniqueIdentifier:v12];

    if (!v23)
    {
      LOBYTE(v10) = 0;
      goto LABEL_35;
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    v25 = 138412290;
    v26 = v4;
    v13 = "%@ is relevant because it has an associated account";
    goto LABEL_31;
  }

  if (v6 == 2)
  {
    v21 = [(PDCloudStoreContainer *)self dataSource];
    v12 = [v21 accountUserWithTransactionSourceIdentifier:v4];

    LOBYTE(v10) = v12 != 0;
    if (v12)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412290;
        v26 = v4;
        v13 = "%@ is relevant because it is an account user";
        goto LABEL_31;
      }

LABEL_32:
      LOBYTE(v10) = 1;
      v15 = v12;
      goto LABEL_33;
    }

LABEL_35:

    goto LABEL_36;
  }

  if (v6 == 3)
  {
    v14 = [(PDCloudStoreContainer *)self dataSource];
    v15 = [v14 accountWithTransactionSourceIdentifier:v4];

    v10 = [v15 supportsStandaloneTransactions];
    if (!v10)
    {
LABEL_34:
      v12 = v15;
      goto LABEL_35;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ is relevant because it has a matching account", &v25, 0xCu);
    }

LABEL_33:

    goto LABEL_34;
  }

LABEL_36:

  return v10;
}

- (id)_accountCreateDateForTranactionSourceIdentifier:(id)a3 passUniqueID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDCloudStoreContainer *)self dataSource];
  v9 = [v8 transactionSourceTypeForTransactionSourceIdentifier:v6];

  v10 = 0;
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v12 = [(PDCloudStoreContainer *)self dataSource];
      v13 = [v12 accountUserWithTransactionSourceIdentifier:v6];
    }

    else
    {
      if (v9 != 3)
      {
LABEL_8:
        v11 = 0;
        goto LABEL_21;
      }

      v12 = [(PDCloudStoreContainer *)self dataSource];
      v13 = [v12 accountWithTransactionSourceIdentifier:v6];
    }

    v22 = v13;
    v10 = [v13 accountIdentifier];

    v11 = 0;
    v16 = v7;
  }

  else
  {
    if (v9)
    {
      if (v9 == 1)
      {
        v11 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount createdDate];
        v10 = 0;
        goto LABEL_21;
      }

      goto LABEL_8;
    }

    v14 = [(PDCloudStoreContainer *)self dataSource];
    v12 = [v14 passUniqueIdentifierForTransactionSourceIdentifier:v6];

    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = v7;
    }

    v16 = v15;

    v17 = [(PDCloudStoreContainer *)self dataSource];
    v10 = [v17 associatedAccountIdentifierForPassWithUniqueIdentifier:v16];

    v11 = 0;
    if (v6 && !v10)
    {
      v18 = [(PDCloudStoreContainer *)self dataSource];
      v19 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassUniqueID];
      v20 = [v18 transactionSourceIdentifiersForPassUniqueIdentifier:v19];
      v21 = [v20 containsObject:v6];

      if (v21)
      {
        v11 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount createdDate];
      }

      else
      {
        v11 = 0;
      }
    }
  }

  if (v10)
  {
    v23 = [(PDCloudStoreContainer *)self dataSource];
    v24 = [v23 accountWithIdentifier:v10];
    v25 = [v24 createdDate];

    v7 = v16;
    v11 = v25;
  }

  else
  {
    v7 = v16;
  }

LABEL_21:

  return v11;
}

- (id)_paymentApplicationForPassUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PDCloudStoreContainer *)self dataSource];
  v6 = [v5 paymentApplicationsForPassUniqueIdentifier:v4];

  if ([v6 count] == 1)
  {
    v7 = [v6 anyObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_cloudStoreSpecificKeysForItem:(id)a3 paymentPass:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(NSMutableDictionary);
  if (!v5)
  {
    goto LABEL_19;
  }

  v7 = [v5 serialNumber];
  v8 = [v5 passTypeIdentifier];
  v9 = [v5 primaryAccountIdentifier];
  v10 = [v5 devicePrimaryPaymentApplication];
  v11 = [v10 dpanIdentifier];

  v12 = [(PDApplePayCloudStoreContainer *)self _originDeviceID];
  if ([v5 hasAssociatedPeerPaymentAccount])
  {
    v13 = [(PDCloudStoreContainer *)self dataSource];
    v14 = [v5 deviceTransactionSourceIdentifiers];
    [v14 anyObject];
    v27 = v12;
    v15 = v11;
    v16 = v9;
    v17 = v8;
    v19 = v18 = v7;
    v20 = [v13 peerPaymentAccountForTransactionSourceIdentifier:v19];

    v7 = v18;
    v8 = v17;
    v9 = v16;
    v11 = v15;
    v12 = v27;

    v21 = [v20 identifier];
  }

  else
  {
    v21 = [v5 associatedAccountServiceAccountIdentifier];
    [v5 associatedAccountFeatureIdentifier];
  }

  if ([v21 length])
  {
    v22 = &PKCloudTransactionAccountIdentifierKey;
    v23 = v21;
  }

  else
  {
    if ([v7 length])
    {
      [v6 setObject:v7 forKey:PKCloudTransactionPassSerialNumberKey];
    }

    if (![v8 length])
    {
      goto LABEL_12;
    }

    v22 = &PKCloudTransactionPassTypeIdentifierKey;
    v23 = v8;
  }

  [v6 setObject:v23 forKey:*v22];
LABEL_12:
  if ([v9 length])
  {
    [v6 setObject:v9 forKey:PKCloudTransactionFPANIdentifierKey];
  }

  if ([v11 length])
  {
    [v6 setObject:v11 forKey:PKCloudTransactionDPANIdentifierKey];
  }

  if (v12)
  {
    [v6 setObject:v12 forKey:PKCloudTransactionOriginDeviceIDKey];
  }

  v24 = PKPaymentTransactionAccountTypeToString();
  [v6 setObject:v24 forKey:PKCloudTransactionAccountTypeKey];

  [v6 setObject:&off_1008A2978 forKey:PKCloudTransactionCloudVersionKey];
LABEL_19:
  v25 = [v6 copy];

  return v25;
}

- (BOOL)_isTransactionItemFromRecordType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:PKCloudTransactionRecordType])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:PKCloudTransactionDeviceDataRecordType];
  }

  return v4;
}

- (void)containerResetCompletedWithSuccess:(BOOL)a3 error:(id)a4
{
  v6 = a4;
  v7 = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BFCAC;
  block[3] = &unk_10083E328;
  v12 = a3;
  v10 = v6;
  v11 = self;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)_queue_didInvalidateContainer:(BOOL)a3
{
  if (a3)
  {
    v4 = [(PDCloudStoreContainer *)self dataSource];
    v5 = [(PDCloudStoreContainer *)self dataSource];
    v6 = [v5 allRecordFetchTasks];
    [v4 removeRecordFetchTasks:v6];

    v7 = [(PDCloudStoreContainer *)self dataSource];
    v8 = [v7 allRecordFetchTasks];

    os_unfair_lock_lock(&self->_fetchTasksLock);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v8;
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
          v16 = [v14 identifier];
          if ([v14 type])
          {
            v17 = v16 == 0;
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
            v20 = [(PDApplePayCloudStoreRecordFetchOperation *)v18 identifier];
            [(NSMutableDictionary *)fetchTasks safelySetObject:v18 forKey:v20];
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

- (BOOL)_isCloudStoreZoneThePrimaryZoneForCurrentUser:(id)a3 containerDatabase:(id)a4
{
  v6 = a3;
  v7 = a4;
  v32 = 0;
  v8 = [v7 scope];
  v9 = [v6 zoneName];
  v30 = 0;
  v31 = 0;
  [PKCloudStoreZone zoneValueForZoneName:v9 outZoneType:&v32 outAccountIdentifier:&v31 altDSID:&v30];
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

      if ((v8 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        LOBYTE(v12) = PKAltDSIDIsCurrentUser();
        goto LABEL_39;
      }

LABEL_31:
      LOBYTE(v12) = 0;
      goto LABEL_39;
    }

LABEL_14:
    LOBYTE(v12) = [v7 scope] == 2;
    goto LABEL_39;
  }

  if (v32 == 1)
  {
    goto LABEL_14;
  }

  if (v32 == 2)
  {
    if (v8 != 2)
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
            v19 = [v18 accountIdentifier];
            v20 = v10;
            v21 = v20;
            if (v19 == v20)
            {

LABEL_34:
              LOBYTE(v12) = 1;
              goto LABEL_35;
            }

            if (v10 && v19)
            {
              v22 = [v19 isEqualToString:v20];

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
    if (v32 != 3 || v8 != 2)
    {
      goto LABEL_31;
    }

    v13 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount identifier];
    v14 = v10;
    v15 = v14;
    if (v13 == v14)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v14 && v13)
      {
        LOBYTE(v12) = [v13 isEqualToString:v14];
      }
    }
  }

LABEL_39:

  return v12;
}

- (id)_parseTransactionRecords:(id)a3 request:(id)a4 databaseIdentifier:(id)a5 updateReasons:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
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
  v19 = v12;
  v35 = v19;
  v20 = v11;
  v36 = v20;
  v39 = a6;
  v21 = v13;
  v37 = v21;
  v22 = v14;
  v38 = v22;
  [v10 enumerateKeysAndObjectsForItemType:1 usingBlock:v34];
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
    v27 = [v22 allObjects];
    v28 = [v27 pk_createArrayBySafelyApplyingBlock:&stru_1008428F0];

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

- (BOOL)_canFormShareFromCloudStoreRecord:(id)a3
{
  v3 = [a3 recordsWithRecordType:CKRecordTypeShare];
  v4 = [v3 firstObject];

  return v4 != 0;
}

- (BOOL)_canFormShareLockFromCloudStoreRecord:(id)a3
{
  v3 = [a3 recordsWithRecordType:PKCloudShareCreationLockRecordType];
  v4 = [v3 firstObject];

  return v4 != 0;
}

- (BOOL)_canFormTransactionFromCloudStoreRecord:(id)a3
{
  v3 = a3;
  v4 = [v3 recordsWithRecordType:PKCloudTransactionRecordType];
  v5 = [v4 firstObject];

  v6 = [v5 encryptedValues];
  v7 = [v6 objectForKey:PKCloudTransactionCloudVersionKey];

  if (v5)
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
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Cannot form local transaction for cloudStoreRecord %@", &v14, 0xCu);
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (void)_processShareWithRecordParser:(id)a3 request:(id)a4 databaseIdentifier:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_1000C28B4;
  v59[3] = &unk_100841D70;
  v59[4] = self;
  v14 = objc_alloc_init(NSMutableSet);
  v60 = v14;
  [v13 enumerateKeysAndObjectsForItemType:6 usingBlock:v59];

  if ([v14 count])
  {
    v36 = v10;
    v37 = v12;
    if ([v10 returnRecords])
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
    v50 = self;
    v22 = v11;
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
    v10 = v36;
    v45 = v28;
    v46 = self;
    v29 = v24;
    v30 = v26;
    [v26 addOperation:v41];
    v31 = +[NSNull null];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000C3DD4;
    v38[3] = &unk_1008422D8;
    v12 = v37;
    v39 = v27;
    v40 = v37;
    v32 = v27;
    v33 = [v30 evaluateWithInput:v31 completion:v38];
  }

  else
  {
    (*(v12 + 2))(v12, 0);
  }
}

- (void)_processZoneShareLockWithRecordParser:(id)a3 request:(id)a4 databaseIdentifier:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if ([a4 returnRecords])
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
  v17 = v10;
  v14 = v10;
  [v9 enumerateKeysAndObjectsForItemType:8 usingBlock:v15];
  if (v11)
  {
    v11[2](v11, v13);
  }
}

- (void)_processRecurringPaymentsWithRecordParser:(id)a3 request:(id)a4 databaseIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([a4 returnRecords])
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
  v18 = v11;
  v15 = v11;
  [v10 enumerateKeysAndObjectsForItemType:9 usingBlock:v16];
  if (v12)
  {
    v12[2](v12, v14);
  }
}

- (void)_processCounterpartImageDataWithRecordParser:(id)a3 request:(id)a4 databaseIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([a4 returnRecords])
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
  v18 = v11;
  v15 = v11;
  [v10 enumerateKeysAndObjectsForItemType:10 usingBlock:v16];
  if (v12)
  {
    v12[2](v12, v14);
  }
}

- (void)_processPendingRequestsWithRecordParser:(id)a3 request:(id)a4 databaseIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([a4 returnRecords])
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
  v18 = v11;
  v15 = v11;
  [v10 enumerateKeysAndObjectsForItemType:12 usingBlock:v16];
  if (v12)
  {
    v12[2](v12, v14);
  }
}

- (void)_fetchMissingTransactionRecordsWithRecordParser:(id)a3 request:(id)a4 databaseIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C5088;
  block[3] = &unk_10083FD78;
  v20 = v10;
  v21 = self;
  v22 = v12;
  v23 = v11;
  v24 = v13;
  v15 = v13;
  v16 = v11;
  v17 = v12;
  v18 = v10;
  dispatch_async(v14, block);
}

- (id)_transactionSourceIdentifierForTransactionRecordID:(id)a3 recordType:(id)a4 databaseIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(PDApplePayCloudStoreContainer *)self _isTransactionItemFromRecordType:v9])
  {
    v23 = 0;
    goto LABEL_123;
  }

  v11 = [v8 zoneID];
  v12 = [v11 zoneName];
  v13 = [v8 recordName];
  v14 = +[PKPaymentTransaction recordNamePrefix];
  if ([v13 hasPrefix:v14])
  {
    v15 = [v13 substringFromIndex:{objc_msgSend(v14, "length")}];

    v13 = v15;
  }

  v16 = PKApplePayContainerCashZoneNamePrefix;
  v155 = v10;
  v156 = self;
  if ([v12 hasPrefix:PKApplePayContainerCashZoneNamePrefix])
  {
    v152 = v11;
    v17 = [v12 stringByReplacingOccurrencesOfString:v16 withString:&stru_10086D930];
    v18 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount identifier];
    v19 = v17;
    v20 = v18;
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
        v41 = [(PDCloudStoreContainer *)self dataSource];
        v40 = [v41 transactionSourceIdentifierForPeerPaymentAccountIdentifier:v19];

        if (v40)
        {
          goto LABEL_91;
        }

        v145 = v12;
        v42 = [(PDCloudStoreContainer *)self containerManager];
        v43 = [v42 databaseIdentifierForScope:2];
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
            v150 = v13;
            v72 = [(PDCloudStoreContainer *)v156 containerManager];
            v73 = [v72 databaseIdentifierForScope:3];
            v74 = v44;
            v75 = v73;
            v76 = v75;
            if (v75 == v74)
            {

              self = v156;
            }

            else
            {
              if (!v44 || !v75)
              {

                v40 = 0;
                v12 = v145;
                v13 = v150;
                goto LABEL_90;
              }

              v77 = [v74 isEqualToString:v75];

              self = v156;
              if ((v77 & 1) == 0)
              {
                v40 = 0;
                v12 = v145;
                v13 = v150;
                goto LABEL_91;
              }
            }

            v78 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedAccountInformation];
            [v78 associatedAccounts];
            v80 = v79 = self;
            v81 = [v80 count];

            v13 = v150;
            if (v81 == 1)
            {
              v82 = v79;
              v83 = [(PKPeerPaymentAccount *)v79->_peerPaymentAccount associatedAccountInformation];
              v84 = [v83 associatedAccounts];
              v85 = [v84 anyObject];
              v40 = [v85 transactionSourceIdentifier];

              v12 = v145;
              v14 = v141;
              self = v82;
              goto LABEL_91;
            }

            v104 = PKLogFacilityTypeGetObject();
            v14 = v141;
            if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v171 = v8;
              v172 = 2112;
              v173 = v74;
              _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "Cannot get transaction source identifier for recordID %@ in database %@", buf, 0x16u);
            }

            v40 = 0;
            v12 = v145;
LABEL_90:
            self = v156;
LABEL_91:

            v11 = v152;
            if (!v40)
            {
              goto LABEL_111;
            }

            goto LABEL_122;
          }
        }

        v69 = [(PDCloudStoreContainer *)v156 dataSource];
        v70 = [(PKPeerPaymentAccount *)v156->_peerPaymentAccount associatedPassUniqueID];
        v71 = [v69 transactionSourceIdentifiersForPassUniqueIdentifier:v70];
        v40 = [v71 anyObject];

        self = v156;
        v12 = v145;
        goto LABEL_91;
      }
    }

    v33 = [(PDCloudStoreContainer *)self dataSource];
    v34 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassUniqueID];
    [v33 transactionSourceIdentifiersForPassUniqueIdentifier:v34];
    v35 = v8;
    v36 = v14;
    v37 = v13;
    v39 = v38 = v12;
    v40 = [v39 anyObject];

    v12 = v38;
    v13 = v37;
    v14 = v36;
    v8 = v35;

    self = v156;
    if (v40)
    {
      goto LABEL_91;
    }

    goto LABEL_27;
  }

  if (![v12 hasPrefix:PKApplePayContainerCardZoneNamePrefix])
  {
    v29 = PKCloudStoreTransactionsZoneName;
    v30 = v12;
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
          v50 = [(PDCloudStoreContainer *)self dataSource];
          v40 = [v50 transactionSourceIdentifierForAccountIdentifier:v49];
        }

        else
        {
          v40 = 0;
        }

        if (!v40)
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

    v26 = [(PDCloudStoreContainer *)self dataSource];
    v40 = [v26 broadwayOrSurfTransactionSourceIdentifierForAmbiguousServiceIdentifier:v13 transactionAccountIdentifier:0 transactionAccountType:0 transactionAltDSID:0];
    goto LABEL_110;
  }

  v139 = v9;
  v24 = [v11 ownerName];
  v25 = PKEqualObjects();

  v166 = 0;
  v167 = 2;
  v165 = 0;
  [PKCloudStoreZone zoneValueForZoneName:v12 outZoneType:&v167 outAccountIdentifier:&v166 altDSID:&v165];
  v26 = v166;
  v144 = v165;
  if (!v26)
  {
    v138 = 0;
    self = v156;
LABEL_40:
    v28 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v171 = v8;
      v172 = 2112;
      v173 = v11;
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

  self = v156;
  v138 = [(NSDictionary *)v156->_sharedAccountCloudStoreByAccountIdentifier objectForKey:v26];
  v143 = [v138 sharedAccountZoneWithName:v12 access:v27];
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
    v175 = v26;
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
    v64 = v63 = v26;
    v65 = [v64 accountWithIdentifier:v63];

    v66 = [(PDCloudStoreContainer *)self dataSource];
    v131 = v65;
    v67 = [v65 associatedPassUniqueID];
    v130 = v66;
    v68 = [v66 transactionSourceIdentifiersForPassUniqueIdentifier:v67];
    v40 = [v68 anyObject];

    v26 = v63;
    v28 = log;
    v149 = 0;
    goto LABEL_99;
  }

  if (v167 != 4)
  {
    goto LABEL_103;
  }

  v140 = v14;
  v53 = [(PDCloudStoreContainer *)self dataSource];
  v54 = [v53 accountWithIdentifier:v26];

  v55 = [(PDCloudStoreContainer *)self dataSource];
  v131 = v54;
  v56 = [v54 associatedPassUniqueID];
  v57 = [v55 transactionSourceIdentifiersForPassUniqueIdentifier:v56];
  v58 = [v57 anyObject];

  self = v156;
  v59 = v58;

  v60 = [(PDCloudStoreContainer *)v156 dataSource];
  v61 = [v60 transactionWithServiceIdentifier:v13 transactionSourceIdentifier:v59];

  v128 = v61;
  if (v61)
  {
    v40 = v59;
    v149 = PKCurrentUserAltDSID();
    v130 = v40;
    v28 = log;
    goto LABEL_98;
  }

  v130 = v59;
  v86 = [(PDCloudStoreContainer *)v156 dataSource];
  v87 = [v86 accountUsersForAccountWithIdentifier:v26];

  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  obj = v87;
  v134 = [obj countByEnumeratingWithState:&v161 objects:v169 count:16];
  if (!v134)
  {
    v149 = 0;
    v40 = 0;
    v28 = log;
    goto LABEL_97;
  }

  v149 = 0;
  v153 = v11;
  v132 = v8;
  v133 = *v162;
  v146 = v12;
  v135 = v26;
  while (2)
  {
    for (i = 0; i != v134; i = i + 1)
    {
      if (*v162 != v133)
      {
        objc_enumerationMutation(obj);
      }

      v89 = *(*(&v161 + 1) + 8 * i);
      v90 = [(PDCloudStoreContainer *)self dataSource];
      v91 = [v89 altDSID];
      v92 = [v90 primaryTransactionSourceIdentifierForAccountUserAltDSID:v91 accountIdentifier:v26];

      v93 = [(PDCloudStoreContainer *)self dataSource];
      v94 = [v93 transactionWithServiceIdentifier:v13 transactionSourceIdentifier:v92];

      if (v94)
      {
        v40 = v92;
        [v89 altDSID];
        v103 = v105 = v92;

        v28 = log;
LABEL_96:

        v149 = v103;
        v9 = v139;
        v26 = v135;
        goto LABEL_97;
      }

      v137 = v92;
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      v95 = [v89 transactionSourceIdentifiers];
      v96 = [v95 countByEnumeratingWithState:&v157 objects:v168 count:16];
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
            objc_enumerationMutation(v95);
          }

          v100 = *(*(&v157 + 1) + 8 * v99);
          v101 = [(PDCloudStoreContainer *)self dataSource];
          v102 = [v101 transactionWithServiceIdentifier:v13 transactionSourceIdentifier:v100];

          if (v102)
          {
            break;
          }

          v99 = v99 + 1;
          self = v156;
          if (v97 == v99)
          {
            v97 = [v95 countByEnumeratingWithState:&v157 objects:v168 count:16];
            v12 = v146;
            if (v97)
            {
              goto LABEL_74;
            }

            goto LABEL_80;
          }
        }

        v40 = v100;
        v103 = [v89 altDSID];

        if (!v40)
        {
          v149 = v103;
          v8 = v132;
          v11 = v153;
          v12 = v146;
          self = v156;
          goto LABEL_83;
        }

        v8 = v132;
        v11 = v153;
        v12 = v146;
        v28 = log;
        self = v156;
        v105 = v137;
        goto LABEL_96;
      }

LABEL_80:

      v8 = v132;
      v11 = v153;
LABEL_83:
      v28 = log;

      v26 = v135;
    }

    v40 = 0;
    v9 = v139;
    v134 = [obj countByEnumeratingWithState:&v161 objects:v169 count:16];
    if (v134)
    {
      continue;
    }

    break;
  }

LABEL_97:

LABEL_98:
  v67 = v128;
LABEL_99:

  v14 = v140;
  v62 = v149;
  if (!v40)
  {
LABEL_100:
    if (v62)
    {
      v154 = v11;
      v106 = v26;
      v107 = v62;
      v108 = PKAltDSIDIsCurrentUser();
      v109 = [(PDCloudStoreContainer *)self dataSource];
      v110 = v109;
      v151 = v107;
      if (v108)
      {
        v136 = v106;
        v111 = [v109 accountWithIdentifier:v106];

        v112 = [(PDCloudStoreContainer *)self dataSource];
        v113 = [v111 associatedPassUniqueID];
        [v112 transactionSourceIdentifiersForPassUniqueIdentifier:v113];
        v115 = v114 = v12;
        v40 = [v115 anyObject];

        v12 = v114;
        v26 = v136;

        self = v156;
        v110 = v111;
      }

      else
      {
        v26 = v106;
        v40 = [v109 transactionSourceIdentifierForAccountUserAltDSID:v107 accountIdentifier:v106];
      }

      v11 = v154;
      goto LABEL_108;
    }

LABEL_103:
    v142 = v14;
    v116 = v26;
    v147 = v12;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v171 = v8;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "There is no altDSID defined for record %@", buf, 0xCu);
    }

    v117 = [(PDCloudStoreContainer *)self dataSource];
    v110 = [v117 accountWithIdentifier:v116];

    v118 = [(PDCloudStoreContainer *)self dataSource];
    v119 = [v110 associatedPassUniqueID];
    v120 = [v118 transactionSourceIdentifiersForPassUniqueIdentifier:v119];
    v40 = [v120 anyObject];

    self = v156;
    v26 = v116;
    v151 = 0;
    v12 = v147;
    v14 = v142;
LABEL_108:

    v62 = v151;
  }

LABEL_110:
  if (!v40)
  {
LABEL_111:
    v121 = [(PDCloudStoreContainer *)self dataSource];
    v122 = [v121 transactionsWithServiceIdentifier:v13];

    if ([v122 count] == 1)
    {
      v123 = [v122 anyObject];
      v40 = [v123 transactionSourceIdentifier];

      if (!v40)
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
          v171 = v13;
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
        v171 = v8;
        v172 = 2114;
        v173 = v9;
        _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "Could not find a transactionSourceIdentifier for record %@ and recordType %{public}@", buf, 0x16u);
      }

      v40 = 0;
    }
  }

LABEL_122:
  v23 = v40;

  v10 = v155;
LABEL_123:

  return v23;
}

- (id)_transactionSourceIdentifierForTransactionCloudStoreRecord:(id)a3 databaseIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 recordsWithRecordType:PKCloudTransactionRecordType];
  v8 = [v7 firstObject];

  v9 = [v8 pk_encryptedStringForKey:PKCloudTransactionFPANIdentifierKey];
  v10 = [v8 pk_encryptedStringForKey:PKCloudTransactionPassSerialNumberKey];
  v11 = [v8 pk_encryptedStringForKey:PKCloudTransactionPassTypeIdentifierKey];
  v12 = [v8 pk_encryptedStringForKey:PKCloudTransactionAccountIdentifierKey];
  v13 = [v8 pk_encryptedStringForKey:PKCloudTransactionAltDSIDKey];
  if (!v12)
  {
    v12 = [v8 pk_encryptedStringForKey:PKCloudTransactionPeerPaymentAccountIdentifierKey];
  }

  v14 = [v8 pk_stringForKey:PKCloudTransactionAccountTypeKey];
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
    v18 = self;
    if (!v9)
    {
      v21 = 0;
      goto LABEL_11;
    }

    v16 = [(PDCloudStoreContainer *)self dataSource];
    v17 = [v16 passUniqueIdentifierWithPrimaryAccountIdentifier:v9];
  }

  else
  {
    v17 = PKGeneratePassUniqueID();
    v18 = self;
  }

  v19 = [(PDCloudStoreContainer *)v18 dataSource];
  v20 = [v19 transactionSourceIdentifiersForPassUniqueIdentifier:v17];
  v21 = [v20 anyObject];

  if (v21)
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
      v34 = [v32 associatedPassUniqueID];
      v46 = [(PDCloudStoreContainer *)self dataSource];
      v47 = [v46 transactionSourceIdentifiersForPassUniqueIdentifier:v34];
      v21 = [v47 anyObject];

      if (!v21)
      {
        v48 = [(PDCloudStoreContainer *)self dataSource];
        v21 = [v48 transactionSourceIdentifierForPeerPaymentAccountIdentifier:v12];

        if (!v21)
        {
          v49 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v63 = v12;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "No transaction source identifiers peer payment account id %@", buf, 0xCu);
          }

          v21 = 0;
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
    v50 = v6;
    v51 = v5;
    while (2)
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v59 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v58 + 1) + 8 * i);
        v28 = [v27 accountIdentifier];
        v29 = v12;
        v30 = v29;
        if (v28 == v29)
        {

LABEL_30:
          v32 = v27;
          v6 = v50;
          v5 = v51;
          goto LABEL_32;
        }

        if (v28)
        {
          v31 = [v28 isEqualToString:v29];

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
      v6 = v50;
      v5 = v51;
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
      v21 = 0;
      goto LABEL_40;
    }

    v34 = [(PDCloudStoreContainer *)self dataSource];
    v21 = [v34 transactionSourceIdentifierForAccountUserAltDSID:v56 accountIdentifier:v12];
  }

  else
  {
    v33 = [(PDCloudStoreContainer *)self dataSource];
    v34 = [v33 passUniqueIdentifierWithAssociatedAccountIdentifier:v12];

    v35 = [(PDCloudStoreContainer *)self dataSource];
    v36 = v35;
    v9 = v52;
    if (v34 || v54 != 3)
    {
      v37 = [v35 transactionSourceIdentifiersForPassUniqueIdentifier:v34];
      v21 = [v37 anyObject];
    }

    else
    {
      v21 = [v35 transactionSourceIdentifierForAccountIdentifier:v12];
    }
  }

LABEL_39:

LABEL_40:
  v10 = v53;

LABEL_41:
  if (v21)
  {
    v38 = v8;
    goto LABEL_48;
  }

LABEL_43:
  v39 = [v5 records];
  v38 = [v39 firstObject];

  v40 = [v38 recordID];
  v41 = [v38 recordType];
  v21 = [(PDApplePayCloudStoreContainer *)self _transactionSourceIdentifierForTransactionRecordID:v40 recordType:v41 databaseIdentifier:v6];

  if (!v21 && v38)
  {
    v42 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = [v38 recordID];
      v44 = [v43 recordName];
      *buf = 138412546;
      v63 = v44;
      v64 = 2112;
      v65 = v12;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Transaction source identifiers not found on device for record %@, accountIdentifier %@", buf, 0x16u);
    }

    v21 = 0;
  }

LABEL_48:

  return v21;
}

- (id)_originDeviceIDForCloudStoreRecord:(id)a3
{
  v3 = [a3 recordsWithRecordType:PKCloudTransactionDeviceDataRecordType];
  v4 = [v3 firstObject];

  v5 = [v4 pk_encryptedStringForKey:PKCloudTransactionOriginDeviceIDKey];

  return v5;
}

- (BOOL)_isAccountEventFromRecordType:(id)a3
{
  v3 = a3;
  v4 = PKCloudAccountEventRecordType;
  v5 = v3;
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

- (BOOL)_isAccountEventAssociatedObjectFromRecordType:(id)a3
{
  v3 = a3;
  v4 = PKCloudAccountRewardsRecordType;
  v5 = v3;
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

- (id)_recordTypeForAccountEventRecord:(id)a3
{
  v3 = [PKAccountEvent accountEventTypeFromRecord:a3];
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

- (void)fetchAndStoreAccountEventsWithIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C7B2C;
  block[3] = &unk_10083D320;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchMissingAccountEventsWithRecordParser:(id)a3 request:(id)a4 databaseIdentifier:(id)a5 carriedOverRecordsByDatabaseIdentifier:(id)a6 updateReasons:(unint64_t)a7 completion:(id)a8
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  v17 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v18 = objc_alloc_init(NSMutableSet);
  v19 = objc_autoreleasePoolPush();
  v20 = objc_alloc_init(NSMutableArray);
  objc_opt_class();
  v92 = v12;
  v93 = v17;
  context = v19;
  v91 = v16;
  v110 = v18;
  v112 = v14;
  v108 = v15;
  if (objc_opt_isKindOfClass())
  {
    v21 = [v13 transactionSourceIdentifiers];
  }

  else
  {
    v21 = 0;
  }

  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v22 = v21;
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
        v28 = [(PDCloudStoreContainer *)self dataSource];
        v29 = [v28 transactionSourceTypeForTransactionSourceIdentifier:v27];

        if (v29 == 3)
        {
          v31 = [(PDCloudStoreContainer *)self dataSource];
          v34 = [v31 accountWithTransactionSourceIdentifier:v27];
LABEL_15:
          v32 = v34;
          v33 = [v34 accountIdentifier];
LABEL_16:
          v35 = v33;

          goto LABEL_18;
        }

        if (v29 == 2)
        {
          v31 = [(PDCloudStoreContainer *)self dataSource];
          v34 = [v31 accountUserWithTransactionSourceIdentifier:v27];
          goto LABEL_15;
        }

        if (!v29)
        {
          v30 = [(PDCloudStoreContainer *)self dataSource];
          v31 = [v30 passUniqueIdentifierForTransactionSourceIdentifier:v27];

          v22 = v96;
          v32 = [(PDCloudStoreContainer *)self dataSource];
          v33 = [v32 associatedAccountIdentifierForPassWithUniqueIdentifier:v31];
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
  v39 = self;
  v139[4] = self;
  v89 = v20;
  v140 = v89;
  v40 = v108;
  v141 = v40;
  v102 = v112;
  v142 = v102;
  v41 = v38;
  v143 = v41;
  v103 = v13;
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
              v111 = [(PKPaymentNetwork *)v59[395] predicateWithFormat:@"accountEventReference IN %@", v109];
              v67 = [objc_alloc(v60[262]) initWithRecordType:v63 predicate:v111];
              v68 = objc_alloc(v61[266]);
              [v109 firstObject];
              v69 = v59;
              v70 = v58;
              v71 = v46;
              v73 = v72 = v43;
              v74 = [v73 recordID];
              v75 = [v74 zoneID];
              v76 = [v68 initWithZoneID:v75];

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

    v39 = self;
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
  v114[4] = v39;
  v115 = v87;
  v116 = v55;
  v117 = v91;
  v82 = v55;
  v83 = v87;
  v84 = v91;
  v85 = [v46 evaluateWithInput:v81 completion:v114];
}

- (id)_recordsByFromAccountEvent:(id)a3 zone:(id)a4
{
  v5 = a3;
  v6 = [a4 zoneID];
  v7 = [CKRecordID alloc];
  v8 = [v5 recordName];
  v9 = [v7 initWithRecordName:v8 zoneID:v6];

  v10 = [CKRecord alloc];
  v11 = [v10 initWithRecordType:PKCloudAccountEventRecordType recordID:v9];
  v12 = [PKCloudStoreRecord alloc];
  v18 = v11;
  v13 = [NSArray arrayWithObjects:&v18 count:1];
  v14 = [v12 initWithRecords:v13];

  [v5 encodeWithCloudStoreCoder:v14 codingType:2];
  v15 = [v14 records];
  v16 = [NSSet setWithArray:v15];

  return v16;
}

- (void)_parseAccountEventsFromRecordParser:(id)a3 databaseIdentifier:(id)a4 shouldUpdateLocalDatabase:(BOOL)a5 shouldReturn:(BOOL)a6 updateReasons:(unint64_t)a7 completion:(id)a8
{
  v10 = a6;
  v11 = a5;
  v33 = a3;
  v14 = a4;
  v15 = a8;
  if (!v11)
  {
    v16 = 0;
    if (!v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = objc_alloc_init(PKCloudRecordArray);
    goto LABEL_6;
  }

  v16 = objc_alloc_init(NSMutableSet);
  if (v10)
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
  v42 = a7;
  v24 = v17;
  v40 = v24;
  v25 = v14;
  v41 = v25;
  [v33 enumerateKeysAndObjectsForItemType:5 usingBlock:v37];
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

  if (v11)
  {
    if ([v23 count])
    {
      v29 = objc_autoreleasePoolPush();
      v30 = [v23 allObjects];
      v31 = [v30 pk_createArrayBySafelyApplyingBlock:&stru_100842B88];

      [(PDCloudStoreContainer *)self reportContainerChangeSignpostEventType:36 stateName:0 objectNames:v31 changeToken:0 error:0 operationGroupName:0 operationGroupNameSuffix:0];
      objc_autoreleasePoolPop(v29);
    }

    accountManager = self->_accountManager;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000CA478;
    v34[3] = &unk_10083C820;
    v36 = v15;
    v35 = v24;
    [(PDAccountManager *)accountManager insertEvents:v23 completion:v34];
  }

  else if (v15)
  {
    (*(v15 + 2))(v15, v24);
  }
}

- (BOOL)_isAccountFromRecordType:(id)a3
{
  v3 = a3;
  v4 = PKCloudAccountRecordType;
  v5 = v3;
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

- (void)_parseAccountsFromRecordParser:(id)a3 databaseIdentifier:(id)a4 shouldUpdateLocalDatabase:(BOOL)a5 shouldReturn:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (!v9)
  {
    v15 = 0;
    if (!v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = objc_alloc_init(PKCloudRecordArray);
    goto LABEL_6;
  }

  v15 = objc_alloc_init(NSMutableSet);
  if (v8)
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
  v34 = self;
  v17 = v15;
  v35 = v17;
  v18 = v16;
  v36 = v18;
  v37 = v13;
  v19 = v13;
  v20 = v33;
  [v12 enumerateKeysAndObjectsForItemType:7 usingBlock:v32];
  objc_initWeak(&location, self);
  v21 = dispatch_get_global_queue(2, 0);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000CAB48;
  v25[3] = &unk_100842C28;
  v30 = v9;
  objc_copyWeak(&v29, &location);
  v27 = v18;
  v28 = v14;
  v26 = v17;
  v22 = v18;
  v23 = v14;
  v24 = v17;
  dispatch_group_notify(v20, v21, v25);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

- (void)_insertAccountBalanceUpdateNotificationIfNecessaryForAccount:(id)a3 record:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDCloudStoreContainer *)self dataSource];
  v9 = [v6 associatedPassUniqueID];
  v10 = [v8 passWithUniqueIdentifier:v9];
  v11 = [v10 paymentPass];

  LOBYTE(v9) = [v11 settings];
  v12 = [v6 cloudStoreZoneNames];
  v13 = [v12 containsObject:PKCloudStoreAppleBalanceTransactionsZoneName];

  if ((v9 & 8) != 0 && (v13 & 1) == 0)
  {
    v14 = [v7 recordsWithRecordType:PKCloudAccountRecordType];
    v15 = [v14 firstObject];

    v16 = [v15 pk_encryptedStringForKey:PKCloudAccountBalanceUpdateReasonKey];
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
    v26 = [v15 pk_encryptedObjectForKey:PKCloudAccountBalanceUpdateAmountKey ofClass:objc_opt_class()];
    if (v26)
    {
      v27 = [v6 appleBalanceDetails];
      v28 = [v27 currencyCode];

      [v26 decimalValue];
      v29 = [NSDecimalNumber decimalNumberWithDecimal:&v32];
      v30 = PKCurrencyAmountMake();

      [(PDAccountManager *)self->_accountManager insertAccountBalanceUpdateNotificationForAccount:v6 updateAmount:v30];
    }

    else
    {
      v28 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v7 description];
        v32 = 138412290;
        v33 = v31;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Error: missing balance update amount for balance update notification for account record %@", &v32, 0xCu);
      }
    }

LABEL_22:
    goto LABEL_23;
  }

  v15 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v32) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not inserting account balance update notification: balance update notifications disabled", &v32, 2u);
  }

LABEL_23:
}

- (BOOL)_isIssuerMessagingFlagFromRecordType:(id)a3
{
  v3 = a3;
  v4 = PKCloudMessageRecordType;
  v5 = v3;
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

- (void)_parseMessagesFromRecordParser:(id)a3 databaseIdentifier:(id)a4 shouldUpdateLocalDatabase:(BOOL)a5 shouldReturn:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (v8)
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
  v22 = a5;
  v18[4] = self;
  v21 = &v23;
  v16 = v15;
  v19 = v16;
  v17 = v13;
  v20 = v17;
  [v12 enumerateKeysAndObjectsForItemType:11 usingBlock:v18];
  if (*(v24 + 24) == 1)
  {
    +[PKEngagementEventTrigger fireIssuerMessagingFlagsChangedEvent];
  }

  if (v14)
  {
    v14[2](v14, v16);
  }

  _Block_object_dispose(&v23, 8);
}

- (void)uploadIssuerMessagingFlag:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CB788;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)deleteIssuerMessagingFlagWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDCloudStoreContainer *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CBCD8;
  block[3] = &unk_10083F418;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

@end