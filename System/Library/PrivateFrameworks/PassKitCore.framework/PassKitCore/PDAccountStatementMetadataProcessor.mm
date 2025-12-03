@interface PDAccountStatementMetadataProcessor
- (BOOL)_queue_isAccountEligible:(id)eligible;
- (PDAccountStatementMetadataProcessor)initWithDatabaseManager:(id)manager accountManager:(id)accountManager cloudStoreNotificationCoordinator:(id)coordinator;
- (id)_queue_eligibleAccounts;
- (void)_addRequestToProcessQueue:(id)queue;
- (void)_executeNextRequestIfPossible;
- (void)_executeNextStatementMetadataProcessingRequest:(id)request completion:(id)completion;
- (void)_queue_updateScheduledActivityIfNeccessary;
- (void)accountManager:(id)manager didAddAccount:(id)account;
- (void)accountManager:(id)manager didRemoveAccount:(id)account;
- (void)accountManager:(id)manager didUpdateAccount:(id)account oldAccount:(id)oldAccount;
- (void)accountManager:(id)manager statementsChangedForAccountIdentifier:(id)identifier;
- (void)passAdded:(id)added;
- (void)passRemoved:(id)removed;
- (void)performScheduledActivityWithIdentifier:(id)identifier activityCriteria:(id)criteria;
- (void)triggerStatementMetadataProcessingForAccountIdentifier:(id)identifier statementIdentifier:(id)statementIdentifier completion:(id)completion;
@end

@implementation PDAccountStatementMetadataProcessor

- (PDAccountStatementMetadataProcessor)initWithDatabaseManager:(id)manager accountManager:(id)accountManager cloudStoreNotificationCoordinator:(id)coordinator
{
  managerCopy = manager;
  accountManagerCopy = accountManager;
  coordinatorCopy = coordinator;
  v25.receiver = self;
  v25.super_class = PDAccountStatementMetadataProcessor;
  v12 = [(PDAccountStatementMetadataProcessor *)&v25 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_databaseManager, manager);
    objc_storeStrong(&v13->_accountManager, accountManager);
    objc_storeStrong(&v13->_cloudStoreNotificationCoordinator, coordinator);
    [(PDAccountManager *)v13->_accountManager registerObserver:v13];
    v14 = objc_alloc_init(NSMutableOrderedSet);
    requestList = v13->_requestList;
    v13->_requestList = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.passd.PDAccountStatementMetadataProcessor.work", v16);
    workQueue = v13->_workQueue;
    v13->_workQueue = v17;

    v19 = dispatch_queue_create("com.apple.passd.PDAccountStatementMetadataProcessor.reply", v16);
    replyQueue = v13->_replyQueue;
    v13->_replyQueue = v19;

    v13->_requestLock._os_unfair_lock_opaque = 0;
    v21 = v13->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100047F40;
    block[3] = &unk_10083C470;
    v24 = v13;
    dispatch_async(v21, block);
  }

  return v13;
}

- (void)triggerStatementMetadataProcessingForAccountIdentifier:(id)identifier statementIdentifier:(id)statementIdentifier completion:(id)completion
{
  completionCopy = completion;
  statementIdentifierCopy = statementIdentifier;
  identifierCopy = identifier;
  v11 = [[PDAccountStatementMetadataProcessorRequest alloc] initWithAccountIdentifier:identifierCopy statementIdentifier:statementIdentifierCopy reason:1 completion:completionCopy];

  [(PDAccountStatementMetadataProcessor *)self _addRequestToProcessQueue:v11];
}

- (void)accountManager:(id)manager statementsChangedForAccountIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    v6 = [[PDAccountStatementMetadataProcessorRequest alloc] initWithAccountIdentifier:identifierCopy statementIdentifier:0 reason:0 completion:0];

    [(PDAccountStatementMetadataProcessor *)self _addRequestToProcessQueue:v6];
  }
}

- (void)accountManager:(id)manager didAddAccount:(id)account
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000480F4;
  block[3] = &unk_10083C470;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)accountManager:(id)manager didUpdateAccount:(id)account oldAccount:(id)oldAccount
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100048170;
  block[3] = &unk_10083C470;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)accountManager:(id)manager didRemoveAccount:(id)account
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000481EC;
  block[3] = &unk_10083C470;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)passAdded:(id)added
{
  addedCopy = added;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004828C;
  v7[3] = &unk_10083C420;
  v8 = addedCopy;
  selfCopy = self;
  v6 = addedCopy;
  dispatch_async(workQueue, v7);
}

- (void)passRemoved:(id)removed
{
  removedCopy = removed;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000483B4;
  v7[3] = &unk_10083C420;
  v8 = removedCopy;
  selfCopy = self;
  v6 = removedCopy;
  dispatch_async(workQueue, v7);
}

- (void)_executeNextStatementMetadataProcessingRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100048508;
  block[3] = &unk_10083D320;
  v12 = requestCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = requestCopy;
  dispatch_async(workQueue, block);
}

- (void)performScheduledActivityWithIdentifier:(id)identifier activityCriteria:(id)criteria
{
  identifierCopy = identifier;
  criteriaCopy = criteria;
  if (self->_runningScheduledActivity)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not running AccountStatementMetadataActivity task since one is already running", buf, 2u);
    }

LABEL_19:

    goto LABEL_20;
  }

  selfCopy = self;
  v10 = identifierCopy;
  if (v10 == @"AccountStatementMetadataActivity" || (v11 = v10) != 0 && (v12 = [(__CFString *)v10 isEqualToString:@"AccountStatementMetadataActivity"], v11, v12))
  {
    v27 = criteriaCopy;
    v28 = identifierCopy;
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Running AccountStatementMetadataActivity task", buf, 2u);
    }

    selfCopy->_runningScheduledActivity = 1;
    _queue_eligibleAccounts = [(PDAccountStatementMetadataProcessor *)selfCopy _queue_eligibleAccounts];
    v15 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = _queue_eligibleAccounts;
    v16 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v35;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v35 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v34 + 1) + 8 * i);
          [v20 type];
          v21 = PKAccountTypeToString();
          accountIdentifier = [v20 accountIdentifier];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v39 = accountIdentifier;
            v40 = 2112;
            v41 = v21;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Running AccountStatementMetadataActivity task for account identifier %@, type %@", buf, 0x16u);
          }

          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_10004A934;
          v31[3] = &unk_10083EB78;
          v31[4] = v20;
          v31[5] = selfCopy;
          v32 = accountIdentifier;
          v33 = v21;
          v23 = v21;
          v24 = accountIdentifier;
          [v15 addOperation:v31];
        }

        v17 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v17);
    }

    v8 = obj;

    v25 = +[NSNull null];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10004AC28;
    v30[3] = &unk_10083EBA0;
    v30[4] = selfCopy;
    v26 = [v15 evaluateWithInput:v25 completion:v30];

    criteriaCopy = v27;
    identifierCopy = v28;
    goto LABEL_19;
  }

LABEL_20:
}

- (void)_addRequestToProcessQueue:(id)queue
{
  queueCopy = queue;
  if (queueCopy)
  {
    v5 = queueCopy;
    p_super = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "Statement metadata process request incoming %@", buf, 0xCu);
    }

    os_unfair_lock_lock(&self->_requestLock);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = self->_requestList;
    v8 = [(NSMutableOrderedSet *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if ([(NSMutableOrderedSet *)v12 coalesceWithRequest:v5, v13])
          {
            if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v19 = v12;
              _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "Statement metadata process request coalesced onto %@", buf, 0xCu);
            }

            p_super = &v5->super.super;
            goto LABEL_18;
          }
        }

        v9 = [(NSMutableOrderedSet *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    [(NSMutableOrderedSet *)self->_requestList addObject:v5];
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "Statement metadata process request queued %@", buf, 0xCu);
    }

    v7 = v5;
LABEL_18:

    os_unfair_lock_unlock(&self->_requestLock);
    [(PDAccountStatementMetadataProcessor *)self _executeNextRequestIfPossible];
  }
}

- (void)_executeNextRequestIfPossible
{
  os_unfair_lock_lock(&self->_requestLock);
  v3 = self->_currentRequest;
  if (v3 || ([(NSMutableOrderedSet *)self->_requestList firstObject], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    os_unfair_lock_unlock(&self->_requestLock);
  }

  else
  {
    v5 = v4;
    [(NSMutableOrderedSet *)self->_requestList removeObjectAtIndex:0];
    v6 = v5;
    objc_storeStrong(&self->_currentRequest, v5);
    os_unfair_lock_unlock(&self->_requestLock);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10004AF70;
    v7[3] = &unk_10083EBC8;
    v7[4] = self;
    v8 = v6;
    v3 = v6;
    [(PDAccountStatementMetadataProcessor *)self _executeNextStatementMetadataProcessingRequest:v3 completion:v7];
  }
}

- (id)_queue_eligibleAccounts
{
  accounts = [(PDDatabaseManager *)self->_databaseManager accounts];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004B160;
  v6[3] = &unk_10083EBF0;
  v6[4] = self;
  v4 = [accounts objectsPassingTest:v6];

  return v4;
}

- (BOOL)_queue_isAccountEligible:(id)eligible
{
  eligibleCopy = eligible;
  accountIdentifier = [eligibleCopy accountIdentifier];
  type = [eligibleCopy type];
  v7 = PKAccountTypeToString();
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = accountIdentifier;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Checking if accountID %@, type %@ is eligible for supportsStatementMetadata.", &v14, 0x16u);
  }

  if (([eligibleCopy supportsStatementMetadata] & 1) == 0)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = accountIdentifier;
      v16 = 2112;
      v17 = v7;
      v9 = "Account identifier: %@, type: %@, is not eligible for supportsStatementMetadata since its not a supported feature.";
      goto LABEL_9;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  [eligibleCopy state];
  if (PKAccountStateIsTerminal())
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = accountIdentifier;
      v16 = 2112;
      v17 = v7;
      v9 = "Account identifier: %@, type: %@, is not eligible for supportsStatementMetadata since state is terminal.";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, &v14, 0x16u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (!type || type == 3)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v14 = 138412546;
    v15 = accountIdentifier;
    v16 = 2112;
    v17 = v7;
    v9 = "Account identifier: %@, type: %@, is not eligible for supportsStatementMetadata since the account type is not supported.";
    goto LABEL_9;
  }

  if (type == 1)
  {
    databaseManager = self->_databaseManager;
    associatedPassUniqueID = [eligibleCopy associatedPassUniqueID];
    LOBYTE(databaseManager) = [(PDDatabaseManager *)databaseManager passExistsWithUniqueID:associatedPassUniqueID];

    if ((databaseManager & 1) == 0)
    {
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      v14 = 138412546;
      v15 = accountIdentifier;
      v16 = 2112;
      v17 = v7;
      v9 = "Account identifier: %@, type: %@, is not eligible for supportsStatementMetadata since there is no account on device.";
      goto LABEL_9;
    }
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = accountIdentifier;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Account identifier: %@, type: %@, is eligible for supportsStatementMetadata.", &v14, 0x16u);
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)_queue_updateScheduledActivityIfNeccessary
{
  _queue_eligibleAccounts = [(PDAccountStatementMetadataProcessor *)self _queue_eligibleAccounts];
  v3 = [_queue_eligibleAccounts count];

  if (v3)
  {
    if (PDScheduledActivityExists())
    {
      v4 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        v5 = "Not scheduling AccountStatementMetadataActivity since one already exists";
LABEL_7:
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, &v11, 2u);
      }
    }

    else
    {
      v6 = PKRandomIntegerInRange();
      v7 = PKRandomIntegerInRange();
      v8 = +[NSDate date];
      v4 = [v8 dateByAddingTimeInterval:v7 * 60.0 + v6 * 3600.0];

      PDScheduledActivityClientRegister();
      v9 = [PDScheduledActivityCriteria maintenanceActivityCriteriaWithStartDate:v4];
      [v9 setRepeating:0];
      [v9 setRequireNetworkConnectivity:1];
      [v9 setRequireScreenSleep:1];
      [v9 setRequireMainsPower:1];
      PDScheduledActivityRegister();
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v4;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Scheduled AccountStatementMetadataActivity with start time %@", &v11, 0xCu);
      }
    }
  }

  else
  {
    PDScheduledActivityRemove();
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      v5 = "Not scheduling AccountStatementMetadataActivity since there are no applicable accounts on device";
      goto LABEL_7;
    }
  }
}

@end