@interface MFUserNotificationCenterUpgrader
- (BOOL)_canAccessDatabase;
- (BOOL)_hasBeenUpgraded;
- (BOOL)_performUpgrade;
- (MFUserNotificationCenterUpgrader)initWithDelegate:(id)a3 systemUserNotificationCenter:(id)a4 conversationSubscriptionProvider:(id)a5 favoritesReader:(id)a6 vipReader:(id)a7 activeAccounts:(id)a8;
- (MFUserNotificationCenterUpgraderDelegate)delegate;
- (id)_criteriaForAccountIDs:(id)a3 clearedInfo:(id)a4 since:(id)a5 favoritesReader:(id)a6;
- (id)_criterionForCutOffDates:(id)a3 sinceDate:(id)a4;
- (id)_criterionForDismissedMessages:(id)a3;
- (id)_criterionForExcludedDateRanges:(id)a3;
- (id)_criterionForObservedMailboxesInAccount:(id)a3 favoritesReader:(id)a4;
- (id)_criterionForSpecialNotifications:(id)a3;
- (id)_lastClearedInfo;
- (id)_notificationMessagesForAccountIDs:(id)a3 count:(unint64_t)a4 clearedInfo:(id)a5 sinceDate:(id)a6;
- (void)_markUpgradeComplete;
- (void)_upgrade;
- (void)_verifyDatabaseAccessAndPerformUpgrade;
- (void)performUpgradeIfNecessary;
@end

@implementation MFUserNotificationCenterUpgrader

- (MFUserNotificationCenterUpgrader)initWithDelegate:(id)a3 systemUserNotificationCenter:(id)a4 conversationSubscriptionProvider:(id)a5 favoritesReader:(id)a6 vipReader:(id)a7 activeAccounts:(id)a8
{
  v14 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v15 = a7;
  v16 = a8;
  v25.receiver = self;
  v25.super_class = MFUserNotificationCenterUpgrader;
  v17 = [(MFUserNotificationCenterUpgrader *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_delegate, v14);
    objc_storeStrong(&v18->_systemUserNotificationCenter, a4);
    objc_storeStrong(&v18->_conversationSubscriptionProvider, a5);
    objc_storeStrong(&v18->_vipReader, a7);
    objc_storeStrong(&v18->_favoritesReader, a6);
    objc_storeStrong(&v18->_activeAccounts, a8);
    v19 = [EFScheduler serialDispatchQueueSchedulerWithName:@"com.apple.email.MFUserNotificationCenterUpgrader" qualityOfService:17];
    scheduler = v18->_scheduler;
    v18->_scheduler = v19;
  }

  return v18;
}

- (void)performUpgradeIfNecessary
{
  scheduler = self->_scheduler;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000A766C;
  v3[3] = &unk_100156400;
  v3[4] = self;
  [(EFAssertableScheduler *)scheduler performBlock:v3];
}

- (void)_verifyDatabaseAccessAndPerformUpgrade
{
  [(EFAssertableScheduler *)self->_scheduler assertIsExecuting:1];
  if ([(MFUserNotificationCenterUpgrader *)self _canAccessDatabase])
  {

    [(MFUserNotificationCenterUpgrader *)self _upgrade];
  }

  else
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"performUpgradeIfNecessary" name:MailMessageLibraryDidFinishReconciliation object:0];
  }
}

- (void)_upgrade
{
  [(EFAssertableScheduler *)self->_scheduler assertIsExecuting:1];
  if ([(MFUserNotificationCenterUpgrader *)self _performUpgrade])
  {
    [(MFUserNotificationCenterUpgrader *)self _markUpgradeComplete];
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:MailMessageLibraryDidFinishReconciliation object:0];
  }
}

- (BOOL)_hasBeenUpgraded
{
  v2 = +[NSUserDefaults em_userDefaults];
  v3 = [v2 BOOLForKey:@"MFUserNotificationCenterUpgraderDefaultStatus"];

  return v3;
}

- (void)_markUpgradeComplete
{
  [(EFAssertableScheduler *)self->_scheduler assertIsExecuting:1];
  v2 = MSUserNotificationsLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "UPGRADE: Marking upgrade to Notification Center complete", v4, 2u);
  }

  v3 = +[NSUserDefaults em_userDefaults];
  [v3 setBool:1 forKey:@"MFUserNotificationCenterUpgraderDefaultStatus"];
}

- (id)_lastClearedInfo
{
  v2 = [(MFUserNotificationCenterUpgrader *)self systemUserNotificationCenter];
  v3 = [v2 clearedInfoForDataProviderMigration];

  return v3;
}

- (BOOL)_performUpgrade
{
  [(EFAssertableScheduler *)self->_scheduler assertIsExecuting:1];
  v3 = MSUserNotificationsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "UPGRADE: Starting upgrade to notification center", buf, 2u);
  }

  v17 = [(MFUserNotificationCenterUpgrader *)self _lastClearedInfo];
  v4 = +[NSDate date];
  v18 = [v4 dateByAddingTimeInterval:-604800.0];

  v5 = [(MFUserNotificationCenterUpgrader *)self activeAccounts];
  v19 = [v5 ef_compactMap:&stru_10015A1B8];

  v20 = [(MFUserNotificationCenterUpgrader *)self _notificationMessagesForAccountIDs:v19 count:500 clearedInfo:v17 sinceDate:v18];
  v6 = MSUserNotificationsLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v20 count];
    *buf = 134217984;
    v31 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "UPGRADE: Found %lu messages for notification center upgrade:", buf, 0xCu);
  }

  if ([v20 count] || -[MFUserNotificationCenterUpgrader _canAccessDatabase](self, "_canAccessDatabase"))
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000A7DB8;
    v26[3] = &unk_10015A1E0;
    v16 = objc_alloc_init(NSMutableSet);
    v27 = v16;
    v28 = self;
    [v20 ef_compactMap:v26];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v8 = v23 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v29 count:16];
    if (v9)
    {
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = [(MFUserNotificationCenterUpgrader *)self systemUserNotificationCenter];
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_1000A7E88;
          v21[3] = &unk_100156918;
          v21[4] = v12;
          [v13 addNotificationRequest:v12 withCompletionHandler:v21];
        }

        v9 = [v8 countByEnumeratingWithState:&v22 objects:v29 count:16];
      }

      while (v9);
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_notificationMessagesForAccountIDs:(id)a3 count:(unint64_t)a4 clearedInfo:(id)a5 sinceDate:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = MSUserNotificationsLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "UPGRADE: Gathering criteria for accounts: %@", buf, 0xCu);
  }

  v14 = [(MFUserNotificationCenterUpgrader *)self favoritesReader];
  v15 = [(MFUserNotificationCenterUpgrader *)self _criteriaForAccountIDs:v10 clearedInfo:v11 since:v12 favoritesReader:v14];

  v16 = MSUserNotificationsLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = a4;
    *&buf[12] = 2112;
    *&buf[14] = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "UPGRADE: for %lu messages matching criteria: %@", buf, 0x16u);
  }

  if ([v15 count])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v40 = 1;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000A8420;
    v36[3] = &unk_10015A208;
    v37 = 6330559;
    v36[4] = buf;
    v36[5] = a4;
    v17 = [v15 ef_map:v36];
    if (*(*&buf[8] + 24) == 1)
    {
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_1000A8504;
      v34[3] = &unk_10015A228;
      v34[4] = MFComparatorFunctionForSortOrder();
      v35 = 256;
      v18 = [v17 ef_uniquifyWithComparator:v34];
      v19 = [v18 count];
      if (v19 >= a4)
      {
        v20 = a4;
      }

      else
      {
        v20 = v19;
      }

      v21 = [v18 subarrayWithRange:{0, v20}];

      v22 = [MFMessageResultsGenerator alloc];
      v38 = @"MSResultsKeyBodySummary";
      v23 = [NSArray arrayWithObjects:&v38 count:1];
      v24 = [(MFMessageResultsGenerator *)v22 initWithKeys:v23 downloadIfNecessary:0];

      v25 = objc_alloc_init(CNContactStore);
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1000A851C;
      v30[3] = &unk_10015A250;
      v26 = v24;
      v31 = v26;
      v32 = self;
      v33 = v25;
      v27 = v25;
      v28 = [v21 ef_compactMap:v30];
    }

    else
    {
      v28 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (id)_criteriaForAccountIDs:(id)a3 clearedInfo:(id)a4 since:(id)a5 favoritesReader:(id)a6
{
  v9 = a3;
  v10 = a4;
  v35 = a5;
  v42 = v10;
  v36 = +[NSMutableArray array];
  v34 = [v10 objectForKeyedSubscript:@"MFMailBulletinLastAllClearedKey"];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1000A8E58;
  v47[3] = &unk_10015A278;
  v11 = v9;
  v48 = v11;
  v49 = self;
  v32 = objc_retainBlock(v47);
  v12 = [(MFUserNotificationCenterUpgrader *)self activeAccounts];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1000A8F2C;
  v45[3] = &unk_10015A2A0;
  v13 = v32;
  v46 = v13;
  v41 = [v12 ef_compactMap:v45];

  v14 = [(MFUserNotificationCenterUpgrader *)self activeAccounts];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1000A8F68;
  v43[3] = &unk_10015A2A0;
  v15 = v13;
  v44 = v15;
  v40 = [v14 ef_compactMap:v43];

  v37 = +[MFMessageCriterion unreadMessageCriterion];
  v38 = [MFMessageCriterion messageIsServerSearchResultCriterion:0];
  v39 = [MFMessageCriterion messageIsDeletedCriterion:0];
  v16 = [v42 objectForKeyedSubscript:@"MFMailDismissedBulletins"];
  v17 = [(MFUserNotificationCenterUpgrader *)self _criterionForDismissedMessages:v16];

  v18 = [v42 objectForKeyedSubscript:@"MFMailBulletinClearedDateRangesKey"];
  v19 = [(MFUserNotificationCenterUpgrader *)self _criterionForExcludedDateRanges:v18];

  v20 = +[MFMessageCriterion threadMuteMessageCriterion];
  v33 = [MFMessageCriterion notCriterionWithCriterion:v20];

  v21 = [(MFUserNotificationCenterUpgrader *)self _criterionForCutOffDates:v34 sinceDate:v35];
  if ([v41 count])
  {
    v22 = [MFMessageCriterion orCompoundCriterionWithCriteria:v41];
    v51[0] = v22;
    v51[1] = v37;
    v51[2] = v38;
    v51[3] = v39;
    v51[4] = v33;
    v23 = [NSArray arrayWithObjects:v51 count:5];
    v24 = [NSMutableArray arrayWithArray:v23];

    if (v17)
    {
      [v24 addObject:v17];
    }

    if (v19)
    {
      [v24 addObject:v19];
    }

    if (v21)
    {
      [v24 addObject:v21];
    }

    v25 = [MFMessageCriterion andCompoundCriterionWithCriteria:v24];
    [v36 addObject:v25];
  }

  if ([v40 count])
  {
    v26 = [(MFUserNotificationCenterUpgrader *)self _criterionForSpecialNotifications:v11];
    if (v26)
    {
      v27 = [MFMessageCriterion orCompoundCriterionWithCriteria:v40];
      v50[0] = v27;
      v50[1] = v37;
      v50[2] = v38;
      v50[3] = v39;
      v50[4] = v26;
      v28 = [NSArray arrayWithObjects:v50 count:5];
      v29 = [NSMutableArray arrayWithArray:v28];

      if (v17)
      {
        [v29 addObject:v17];
      }

      if (v19)
      {
        [v29 addObject:v19];
      }

      if (v21)
      {
        [v29 addObject:v21];
      }

      v30 = [MFMessageCriterion andCompoundCriterionWithCriteria:v29];
      [v36 addObject:v30];
    }
  }

  return v36;
}

- (id)_criterionForObservedMailboxesInAccount:(id)a3 favoritesReader:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v5 mailboxesToBeObservedWithFavoritesReader:{v6, 0}];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) criterion];
        if (v12)
        {
          [v7 addObject:v12];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  if ([v7 count])
  {
    v13 = [MFMessageCriterion orCompoundCriterionWithCriteria:v7];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_criterionForDismissedMessages:(id)a3
{
  v3 = [a3 ef_compactMap:&stru_10015A2E0];
  if ([v3 count])
  {
    v4 = [MFMessageCriterion orCompoundCriterionWithCriteria:v3];
    v5 = [MFMessageCriterion notCriterionWithCriterion:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_criterionForCutOffDates:(id)a3 sinceDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    if (!v5 || ([v6 laterDate:v5], v8 = objc_claimAutoreleasedReturnValue(), v8, v8 == v7))
    {
      v9 = v7;

      v5 = v9;
    }

    goto LABEL_6;
  }

  if (v5)
  {
LABEL_6:
    v10 = [MFMessageCriterion alloc];
    [v5 timeIntervalSince1970];
    v12 = [NSString stringWithFormat:@"%lld", v11];
    v13 = [v10 initWithType:11 qualifier:6 expression:v12];

    goto LABEL_7;
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (id)_criterionForExcludedDateRanges:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 ef_map:&stru_10015A320];
    v5 = [MFMessageCriterion orCompoundCriterionWithCriteria:v4];
    v6 = [MFMessageCriterion notCriterionWithCriterion:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_criterionForSpecialNotifications:(id)a3
{
  v3 = a3;
  v4 = [v3 containsObject:MSUserNotificationCenterTopicVIP];
  v5 = [v3 containsObject:MSUserNotificationCenterTopicNotifiedThreads];
  v6 = +[NSMutableArray array];
  if (v4)
  {
    v7 = [MFMessageCriterion senderIsVIPCriterion:1];
    [v6 addObject:v7];
  }

  if (v5)
  {
    v8 = +[MFMessageCriterion threadNotifyMessageCriterion];
    [v6 addObject:v8];
  }

  v9 = [MFMessageCriterion orCompoundCriterionWithCriteria:v6];

  return v9;
}

- (BOOL)_canAccessDatabase
{
  if (![(MFUserNotificationCenterUpgrader *)self _dataMigrationIsComplete])
  {
    v4 = MSUserNotificationsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      v6 = "Upgrader: Device needs to go through data migration, deferring";
      v7 = v4;
      v8 = 2;
      goto LABEL_7;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v2 = +[MFMailMessageLibrary defaultInstance];
  v3 = [v2 protectedDataAvailability];

  v4 = MSUserNotificationsLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v11 = 134217984;
      v12 = v3;
      v6 = "Upgrader: Protected database is not available (= %lu), waiting for reconciliation to finish/or device to unlock";
      v7 = v4;
      v8 = 12;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, &v11, v8);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v5)
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Upgrader: Protected database is available.", &v11, 2u);
  }

  v9 = 1;
LABEL_9:

  return v9;
}

- (MFUserNotificationCenterUpgraderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end