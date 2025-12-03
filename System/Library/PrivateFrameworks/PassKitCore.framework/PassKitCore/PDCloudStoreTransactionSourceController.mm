@interface PDCloudStoreTransactionSourceController
- (PDCloudStoreTransactionSourceController)initWithDatabaseManager:(id)manager accountManager:(id)accountManager peerPaymentWebServiceCoordinator:(id)coordinator cloudStoreNotificationCoordinator:(id)notificationCoordinator;
- (void)_hasScheduledActivityWithCompletion:(id)completion;
- (void)_queue_allRelevantTransactionSourceIdentifiersWithCompletion:(id)completion;
- (void)_queue_backgroundRecordChangeSyncWithCompletion:(id)completion;
- (void)_queue_filterRelevantTransactionSourceIdentifiersThatCanSyncWithCloudKit:(id)kit completion:(id)completion;
- (void)_queue_performDailyTransactionSyncFromDate:(id)date returnRecords:(BOOL)records formReport:(BOOL)report completion:(id)completion;
- (void)_queue_relevantTransactionSourceIdentifiersToSyncForPaymentApplication:(id)application onPaymentPass:(id)pass completion:(id)completion;
- (void)_scheduleActivityWithIdentifier:(id)identifier;
- (void)_updateScheduledActivityIfNeccessary;
- (void)accountManager:(id)manager didAddAccount:(id)account;
- (void)accountManager:(id)manager didRemoveAccount:(id)account;
- (void)accountManager:(id)manager didUpdateAccount:(id)account oldAccount:(id)oldAccount;
- (void)didAddPaymentApplication:(id)application forPaymentPass:(id)pass groupNameSuffix:(id)suffix ignoreExistingRecordHash:(BOOL)hash completion:(id)completion;
- (void)passDidDisappear:(id)disappear;
- (void)peerPaymentWebServiceCoordinator:(id)coordinator didUpdateAccount:(id)account oldAccount:(id)oldAccount;
- (void)performBackgroundRecordChangesSyncWithCompletion:(id)completion;
- (void)performBackgroundTransactionSyncFromDate:(id)date completion:(id)completion;
- (void)performScheduledActivityWithIdentifier:(id)identifier activityCriteria:(id)criteria;
- (void)simulatePassProvisioningForPassUniqueIdentifier:(id)identifier completion:(id)completion;
@end

@implementation PDCloudStoreTransactionSourceController

- (PDCloudStoreTransactionSourceController)initWithDatabaseManager:(id)manager accountManager:(id)accountManager peerPaymentWebServiceCoordinator:(id)coordinator cloudStoreNotificationCoordinator:(id)notificationCoordinator
{
  managerCopy = manager;
  accountManagerCopy = accountManager;
  coordinatorCopy = coordinator;
  notificationCoordinatorCopy = notificationCoordinator;
  v22.receiver = self;
  v22.super_class = PDCloudStoreTransactionSourceController;
  v15 = [(PDCloudStoreTransactionSourceController *)&v22 init];
  if (v15)
  {
    v15->_isInternalBuild = os_variant_has_internal_ui();
    objc_storeStrong(&v15->_databaseManager, manager);
    objc_storeStrong(&v15->_accountManager, accountManager);
    [(PDAccountManager *)v15->_accountManager registerObserver:v15];
    objc_storeStrong(&v15->_peerPaymentWebServiceCoordinator, coordinator);
    [(PDPeerPaymentWebServiceCoordinator *)v15->_peerPaymentWebServiceCoordinator registerObserver:v15];
    objc_storeStrong(&v15->_cloudStoreNotificationCoordinator, notificationCoordinator);
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.passd.CloudStoreTransactionSourceController.work", v16);
    workQueue = v15->_workQueue;
    v15->_workQueue = v17;

    v19 = dispatch_queue_create("com.apple.passd.CloudStoreTransactionSourceController.reply", v16);
    replyQueue = v15->_replyQueue;
    v15->_replyQueue = v19;

    PDScheduledActivityClientRegister();
    [(PDCloudStoreTransactionSourceController *)v15 _updateScheduledActivityIfNeccessary];
  }

  return v15;
}

- (void)_updateScheduledActivityIfNeccessary
{
  hasAnyAccount = [(PDDatabaseManager *)self->_databaseManager hasAnyAccount];
  hasPeerPaymentAccount = [(PDDatabaseManager *)self->_databaseManager hasPeerPaymentAccount];
  if (hasAnyAccount & 1) != 0 || (hasPeerPaymentAccount)
  {
    if ((PDScheduledActivityExists() & 1) == 0)
    {
      [(PDCloudStoreTransactionSourceController *)self _scheduleActivityWithIdentifier:@"CloudStoreTransactionSourceSync"];
    }

    if (PKIsWatch() && (PDScheduledActivityExists() & 1) == 0)
    {
      [(PDCloudStoreTransactionSourceController *)self _scheduleActivityWithIdentifier:@"CloudStoreTransactionSourceBGRecordChanges"];
    }

    if (self->_isInternalBuild && (PDScheduledActivityExists() & 1) == 0)
    {

      [(PDCloudStoreTransactionSourceController *)self _scheduleActivityWithIdentifier:@"CloudStoreTransactionSourceChangeEventPurge"];
    }
  }

  else
  {
    PDScheduledActivityRemove();
    PDScheduledActivityRemove();
    PDScheduledActivityRemove();
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not scheduling CloudStoreTransactionSourceSync since there are no accounts on device", v6, 2u);
    }
  }
}

- (void)_scheduleActivityWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = PKRandomIntegerInRange();
  v5 = PKRandomIntegerInRange();
  v6 = +[NSDate date];
  v7 = [v6 dateByAddingTimeInterval:v5 * 60.0 + v4 * 3600.0];

  v8 = [PDScheduledActivityCriteria maintenanceActivityCriteriaWithStartDate:v7];
  [v8 setRepeating:0];
  [v8 setRequireNetworkConnectivity:1];
  [v8 setRequireScreenSleep:1];
  [v8 setRequireMainsPower:1];
  PDScheduledActivityRegister();
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = identifierCopy;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Scheduled %{public}@ with start time %{public}@", &v10, 0x16u);
  }
}

- (void)didAddPaymentApplication:(id)application forPaymentPass:(id)pass groupNameSuffix:(id)suffix ignoreExistingRecordHash:(BOOL)hash completion:(id)completion
{
  applicationCopy = application;
  passCopy = pass;
  suffixCopy = suffix;
  completionCopy = completion;
  workQueue = self->_workQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10010F7E0;
  v21[3] = &unk_100846C60;
  v22 = applicationCopy;
  v23 = passCopy;
  hashCopy = hash;
  selfCopy = self;
  v25 = suffixCopy;
  v26 = completionCopy;
  v17 = completionCopy;
  v18 = suffixCopy;
  v19 = passCopy;
  v20 = applicationCopy;
  dispatch_async(workQueue, v21);
}

- (void)passDidDisappear:(id)disappear
{
  paymentPass = [disappear paymentPass];
  associatedAccountServiceAccountIdentifier = [paymentPass associatedAccountServiceAccountIdentifier];
  v6 = [associatedAccountServiceAccountIdentifier length];

  if (v6)
  {
    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001100D0;
    block[3] = &unk_10083C470;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

- (void)performBackgroundTransactionSyncFromDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011019C;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = dateCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dateCopy;
  dispatch_async(workQueue, block);
}

- (void)performBackgroundRecordChangesSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001104B4;
  v7[3] = &unk_10083DCB8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

- (void)simulatePassProvisioningForPassUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100110584;
  block[3] = &unk_10083D320;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(workQueue, block);
}

- (void)accountManager:(id)manager didAddAccount:(id)account
{
  accountCopy = account;
  workQueue = self->_workQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001106AC;
  v8[3] = &unk_10083C420;
  v8[4] = self;
  v9 = accountCopy;
  v7 = accountCopy;
  dispatch_async(workQueue, v8);
}

- (void)accountManager:(id)manager didUpdateAccount:(id)account oldAccount:(id)oldAccount
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100110A58;
  block[3] = &unk_10083C470;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)accountManager:(id)manager didRemoveAccount:(id)account
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100110AD4;
  block[3] = &unk_10083C470;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)peerPaymentWebServiceCoordinator:(id)coordinator didUpdateAccount:(id)account oldAccount:(id)oldAccount
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100110B50;
  block[3] = &unk_10083C470;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)performScheduledActivityWithIdentifier:(id)identifier activityCriteria:(id)criteria
{
  identifierCopy = identifier;
  criteriaCopy = criteria;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PDCloudStoreTransactionSourceController starting activity: %{public}@", buf, 0xCu);
  }

  v9 = identifierCopy;
  v10 = v9;
  if (v9 == @"CloudStoreTransactionSourceSync")
  {
LABEL_6:
    if (self->_performingBackgroundSync)
    {
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:

        goto LABEL_25;
      }

      *buf = 0;
      v12 = "A cloud store transaction background sync activity is already running";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
      goto LABEL_10;
    }

    self->_performingBackgroundSync = 1;
    v13 = +[NSDate date];
    v14 = [v13 dateByAddingTimeInterval:-604800.0];

    v15 = PDCloudStoreTransactionSourceControllerLastSync();
    if (v15)
    {
      v16 = v15;
      if ([v15 compare:v14] != -1)
      {
LABEL_24:
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_100110F2C;
        v29[3] = &unk_100842350;
        v29[4] = self;
        [(PDCloudStoreTransactionSourceController *)self _queue_performDailyTransactionSyncFromDate:v16 returnRecords:0 formReport:1 completion:v29];

        goto LABEL_25;
      }

      v17 = v14;

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v31 = v17;
        v32 = 2114;
        v33 = v17;
        v18 = "Last transaction record sync date defined is older than %{public}@. Setting last sync date as %{public}@";
        v19 = v8;
        v20 = 22;
LABEL_22:
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
      }
    }

    else
    {
      v24 = v14;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v31 = v24;
        v18 = "No transaction record last sync date defined. Setting last sync date as %{public}@";
        v19 = v8;
        v20 = 12;
        goto LABEL_22;
      }
    }

    v16 = v14;
    goto LABEL_24;
  }

  if (v9)
  {
    v11 = [(__CFString *)v9 isEqualToString:@"CloudStoreTransactionSourceSync"];

    if (v11)
    {
      goto LABEL_6;
    }

    v21 = v10;
    if (v21 == @"CloudStoreTransactionSourceBGRecordChanges" || (v22 = v21, v23 = [(__CFString *)v21 isEqualToString:@"CloudStoreTransactionSourceBGRecordChanges"], v22, v23))
    {
      if (!self->_performingBackgroundRecordChangesSync)
      {
        self->_performingBackgroundRecordChangesSync = 1;
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_10011129C;
        v28[3] = &unk_10083D5A8;
        v28[4] = self;
        [(PDCloudStoreTransactionSourceController *)self _queue_backgroundRecordChangeSyncWithCompletion:v28];
        goto LABEL_25;
      }

      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      *buf = 0;
      v12 = "A cloud store background record changes sync is already running";
      goto LABEL_9;
    }

    v25 = v22;
    if (v25 == @"CloudStoreTransactionSourceChangeEventPurge" || (v26 = v25, v27 = [(__CFString *)v25 isEqualToString:@"CloudStoreTransactionSourceChangeEventPurge"], v26, v27))
    {
      [(PDDatabaseManager *)self->_databaseManager purgeOldCloudStoreContainerChangeEventEntires];
      [(PDCloudStoreTransactionSourceController *)self _updateScheduledActivityIfNeccessary];
    }
  }

LABEL_25:
}

- (void)_queue_performDailyTransactionSyncFromDate:(id)date returnRecords:(BOOL)records formReport:(BOOL)report completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = dateCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Running daily transaction sync task from date %{public}@", &buf, 0xCu);
  }

  if (dateCopy)
  {
    applePayContainer = [(PDCloudStoreNotificationCoordinator *)self->_cloudStoreNotificationCoordinator applePayContainer];
    v14 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x3032000000;
    v31 = sub_100005AE0;
    v32 = sub_10000B17C;
    v33 = 0;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100111630;
    v26[3] = &unk_10083EC68;
    v26[4] = self;
    v26[5] = &buf;
    [v14 addOperation:v26];
    v15 = +[NSNull null];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1001118E4;
    v19[3] = &unk_100846D28;
    v19[4] = self;
    p_buf = &buf;
    v16 = applePayContainer;
    v20 = v16;
    v21 = dateCopy;
    recordsCopy = records;
    reportCopy = report;
    v22 = completionCopy;
    v17 = [v14 evaluateWithInput:v15 completion:v19];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100111610;
    block[3] = &unk_10083D648;
    v28 = completionCopy;
    dispatch_async(replyQueue, block);
    v16 = v28;
  }
}

- (void)_queue_backgroundRecordChangeSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Running background record change sync", buf, 2u);
  }

  applePayContainer = [(PDCloudStoreNotificationCoordinator *)self->_cloudStoreNotificationCoordinator applePayContainer];
  v7 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  *buf = 0;
  v23 = buf;
  v24 = 0x3032000000;
  v25 = sub_100005AE0;
  v26 = sub_10000B17C;
  v27 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_100005AE0;
  v20[4] = sub_10000B17C;
  v21 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100111F14;
  v19[3] = &unk_10083EC68;
  v19[4] = self;
  v19[5] = buf;
  [v7 addOperation:v19];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001121C8;
  v15[3] = &unk_100846DA0;
  v15[4] = self;
  v17 = buf;
  v8 = applePayContainer;
  v16 = v8;
  v18 = v20;
  [v7 addOperation:v15];
  v9 = +[NSNull null];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001125CC;
  v12[3] = &unk_100846DC8;
  v12[4] = self;
  v14 = v20;
  v10 = completionCopy;
  v13 = v10;
  v11 = [v7 evaluateWithInput:v9 completion:v12];

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(buf, 8);
}

- (void)_queue_allRelevantTransactionSourceIdentifiersWithCompletion:(id)completion
{
  completionCopy = completion;
  v16 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v4 = [(PDDatabaseManager *)self->_databaseManager passesOfType:1];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = sub_100005AE0;
  v29[4] = sub_10000B17C;
  v30 = objc_alloc_init(NSMutableDictionary);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v5)
  {
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        devicePrimaryPaymentApplication = [v8 devicePrimaryPaymentApplication];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100112A7C;
        v21[3] = &unk_100846BE8;
        v21[4] = self;
        v10 = devicePrimaryPaymentApplication;
        v22 = v10;
        v23 = v8;
        v24 = v29;
        [v16 addOperation:v21];
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v5);
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100112D58;
  v20[3] = &unk_10083EC68;
  v20[4] = self;
  v20[5] = v29;
  [v16 addOperation:v20];
  v11 = +[NSNull null];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001130DC;
  v17[3] = &unk_100846DC8;
  v17[4] = self;
  v19 = v29;
  v12 = completionCopy;
  v18 = v12;
  v13 = [v16 evaluateWithInput:v11 completion:v17];

  _Block_object_dispose(v29, 8);
}

- (void)_queue_relevantTransactionSourceIdentifiersToSyncForPaymentApplication:(id)application onPaymentPass:(id)pass completion:(id)completion
{
  applicationCopy = application;
  passCopy = pass;
  completionCopy = completion;
  v11 = completionCopy;
  if (completionCopy)
  {
    if (applicationCopy && passCopy)
    {
      transactionSourceIdentifier = [applicationCopy transactionSourceIdentifier];
      associatedAccountServiceAccountIdentifier = [passCopy associatedAccountServiceAccountIdentifier];
      v13 = objc_alloc_init(PKAsyncUnaryOperationComposer);
      v14 = objc_alloc_init(NSMutableDictionary);
      v64[0] = 0;
      v64[1] = v64;
      v64[2] = 0x3032000000;
      v64[3] = sub_100005AE0;
      v64[4] = sub_10000B17C;
      v65 = 0;
      v62[0] = 0;
      v62[1] = v62;
      v62[2] = 0x3032000000;
      v62[3] = sub_100005AE0;
      v62[4] = sub_10000B17C;
      v63 = 0;
      uniqueID = [passCopy uniqueID];
      organizationName = [passCopy organizationName];
      v31 = [NSString stringWithFormat:@"Payment Pass: %@, %@", uniqueID, organizationName];

      [v14 safelySetObject:v31 forKey:transactionSourceIdentifier];
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_100113800;
      v57[3] = &unk_100846EB8;
      v17 = associatedAccountServiceAccountIdentifier;
      v58 = v17;
      selfCopy = self;
      v61 = v62;
      v18 = passCopy;
      v60 = v18;
      [v13 addOperation:v57];
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_100113E60;
      v54[3] = &unk_10083FAF8;
      v19 = v18;
      v55 = v19;
      selfCopy2 = self;
      [v13 addOperation:v54];
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_100114068;
      v50[3] = &unk_100841F68;
      v20 = v19;
      v51 = v20;
      selfCopy3 = self;
      v21 = v14;
      v53 = v21;
      [v13 addOperation:v50];
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_10011429C;
      v46[3] = &unk_100841F68;
      v22 = v17;
      v47 = v22;
      selfCopy4 = self;
      v23 = v21;
      v49 = v23;
      [v13 addOperation:v46];
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_1001146A0;
      v41[3] = &unk_100846F58;
      v24 = v22;
      v45 = v62;
      v42 = v24;
      selfCopy5 = self;
      v25 = v23;
      v44 = v25;
      [v13 addOperation:v41];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100114A98;
      v37[3] = &unk_10083E620;
      v26 = v25;
      v38 = v26;
      selfCopy6 = self;
      v40 = v64;
      [v13 addOperation:v37];
      v27 = +[NSNull null];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100114D90;
      v33[3] = &unk_100846FA8;
      v33[4] = self;
      v34 = v20;
      v36 = v64;
      v35 = v11;
      v28 = [v13 evaluateWithInput:v27 completion:v33];

      _Block_object_dispose(v62, 8);
      _Block_object_dispose(v64, 8);

      v29 = transactionSourceIdentifier;
    }

    else
    {
      replyQueue = self->_replyQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001137E4;
      block[3] = &unk_10083D648;
      v67 = completionCopy;
      dispatch_async(replyQueue, block);
      v29 = v67;
    }
  }
}

- (void)_queue_filterRelevantTransactionSourceIdentifiersThatCanSyncWithCloudKit:(id)kit completion:(id)completion
{
  kitCopy = kit;
  completionCopy = completion;
  v8 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  applePayContainer = [(PDCloudStoreNotificationCoordinator *)self->_cloudStoreNotificationCoordinator applePayContainer];
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = sub_100005AE0;
  v23[4] = sub_10000B17C;
  v24 = objc_alloc_init(NSMutableDictionary);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100115218;
  v18[3] = &unk_100847020;
  v10 = v8;
  v19 = v10;
  v11 = applePayContainer;
  v20 = v11;
  selfCopy = self;
  v22 = v23;
  [kitCopy enumerateKeysAndObjectsUsingBlock:v18];
  v12 = +[NSNull null];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001155E4;
  v15[3] = &unk_100847048;
  v15[4] = self;
  v13 = completionCopy;
  v16 = v13;
  v17 = v23;
  v14 = [v10 evaluateWithInput:v12 completion:v15];

  _Block_object_dispose(v23, 8);
}

- (void)_hasScheduledActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100115774;
  block[3] = &unk_10083D648;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, block);
}

@end