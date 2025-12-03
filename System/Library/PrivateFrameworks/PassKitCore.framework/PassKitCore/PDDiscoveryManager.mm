@interface PDDiscoveryManager
- (void)_callDelegateWithLayoutsForUpdatedDiscoveryItemsAndMessages;
- (void)_processUpdatedNotifications;
- (void)_queue_insertDiscoveryNotificationsIfNecessary;
- (void)_queue_performNextProcessingDiscoveryObjects;
- (void)_queue_scheduleTaskForNextAction;
@end

@implementation PDDiscoveryManager

- (void)_queue_performNextProcessingDiscoveryObjects
{
  if (!self->_isEvaluatingRules)
  {
    if ([(NSMutableArray *)self->_pendingProcessingDiscoveryObjectsBlocks count])
    {
      v3 = [(NSMutableArray *)self->_pendingProcessingDiscoveryObjectsBlocks copy];
      [(NSMutableArray *)self->_pendingProcessingDiscoveryObjectsBlocks removeAllObjects];
      forceUpdateBadgeCountOnNextProcessingOfDiscoveryObjects = self->_forceUpdateBadgeCountOnNextProcessingOfDiscoveryObjects;
      self->_forceUpdateBadgeCountOnNextProcessingOfDiscoveryObjects = 0;
      objc_initWeak(&location, self);
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100012B44;
      v6[3] = &unk_100844AB8;
      v6[4] = self;
      objc_copyWeak(&v7, &location);
      v5 = objc_retainBlock(v6);
      self->_isEvaluatingRules = 1;
      [(PDDiscoveryManager *)self _queue_performProcessingDiscoveryObjectsShouldForceBadgeCountUpdate:forceUpdateBadgeCountOnNextProcessingOfDiscoveryObjects withCompletionBlocks:v3 finalCompletion:v5];

      objc_destroyWeak(&v7);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_processUpdatedNotifications
{
  objc_initWeak(&location, self);
  userNotificationManager = self->_userNotificationManager;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100012D34;
  v4[3] = &unk_100862B10;
  v4[4] = self;
  objc_copyWeak(&v5, &location);
  [(PDUserNotificationManager *)userNotificationManager userNotificationsOfType:27 completion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_callDelegateWithLayoutsForUpdatedDiscoveryItemsAndMessages
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100012BD8;
  v6[3] = &unk_10083DAE0;
  v6[4] = self;
  [(PDDiscoveryManager *)self discoveryArticleLayoutsWithCompletion:v6];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    replyQueue = self->_replyQueue;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000129CC;
    v5[3] = &unk_10083C470;
    v5[4] = self;
    dispatch_async(replyQueue, v5);
  }
}

- (void)_queue_insertDiscoveryNotificationsIfNecessary
{
  v16 = +[NSDate now];
  v3 = [NSDate dateWithTimeInterval:v16 sinceDate:60.0];
  v4 = [(PDDatabaseManager *)self->_databaseManager discoveryNotificationsRequiringInsertionForDate:v3];
  v5 = v4;
  if (v4)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v6 = v4;
    v7 = 0;
    v8 = 0;
    v9 = [v6 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v9)
    {
      v10 = *v35;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v34 + 1) + 8 * i);
          if ([v12 passQualifier] == 1)
          {
            v8 = 1;
          }

          else
          {
            v7 |= [v12 passQualifier] == 2;
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v9);
    }

    objc_initWeak(&location, self);
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x3032000000;
    v31[3] = sub_1000060AC;
    v31[4] = sub_10000B464;
    v32 = 0;
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = sub_1000060AC;
    v29[4] = sub_10000B464;
    v30 = 0;
    v13 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    if (v8)
    {
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10047EB04;
      v27[3] = &unk_1008524B0;
      objc_copyWeak(&v28, &location);
      v27[4] = v31;
      [v13 addOperation:v27];
      objc_destroyWeak(&v28);
    }

    if (v7)
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10047EDA4;
      v25[3] = &unk_1008524B0;
      objc_copyWeak(&v26, &location);
      v25[4] = v29;
      [v13 addOperation:v25];
      objc_destroyWeak(&v26);
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100013500;
    v19[3] = &unk_100862B88;
    objc_copyWeak(&v24, &location);
    v22 = v31;
    v23 = v29;
    v20 = v6;
    selfCopy = self;
    [v13 addOperation:v19];
    v14 = +[NSNull null];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100013800;
    v17[3] = &unk_10083E8A8;
    objc_copyWeak(&v18, &location);
    v15 = [v13 evaluateWithInput:v14 completion:v17];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v24);

    _Block_object_dispose(v29, 8);
    _Block_object_dispose(v31, 8);

    objc_destroyWeak(&location);
  }
}

- (void)_queue_scheduleTaskForNextAction
{
  databaseManager = self->_databaseManager;
  v4 = +[NSDate date];
  v5 = [(PDDatabaseManager *)databaseManager nextRelevantDiscoveryNotificationForDate:v4];

  if (v5)
  {
    scheduledDeliveryDate = [v5 scheduledDeliveryDate];
    v7 = +[NSDate now];
    v8 = [scheduledDeliveryDate compare:v7];

    if (v8 == 1)
    {
      v9 = [scheduledDeliveryDate dateByAddingTimeInterval:-30.0];

      v10 = v9;
      scheduledDeliveryDate = v10;
    }

    else
    {
      v12 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        selfCopy3 = self;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: Next scheduled delivery date is in the past. Scheduling for 10m out to let things clean up.", &v15, 0xCu);
      }

      v10 = [NSDate dateWithTimeIntervalSinceNow:600.0];
    }

    v11 = v10;
    v13 = [PDScheduledActivityCriteria priorityActivityCriteriaWithStartDate:v10];
    PDScheduledActivityRegister();
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      selfCopy3 = self;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@: Scheduled task for next action for: %@", &v15, 0x16u);
    }

LABEL_13:
    goto LABEL_14;
  }

  if (PDScheduledActivityExists())
  {
    PDScheduledActivityRemove();
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: Removing scheduled activity because there is no notification scheduled", &v15, 0xCu);
    }

    goto LABEL_13;
  }

LABEL_14:
}

@end