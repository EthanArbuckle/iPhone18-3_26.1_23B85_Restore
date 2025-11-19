@interface AppBadgeController
+ (OS_os_log)log;
- (AppBadgeController)initWithMessagePersistence:(id)a3 hookRegistry:(id)a4 mailboxProvider:(id)a5 focusController:(id)a6 bucketBarController:(id)a7;
- (id)_enabledAndExcludedMailboxesExcludingAccountIDs:(id)a3;
- (id)_excludedAccountIdentifiersByCurrentFocus;
- (void)_createCountQueryPredicateFromNotificationTopics;
- (void)_nts_getAccountsExcludedFromUnreadCount:(id *)a3 includeUnreadVIPs:(BOOL *)a4 includeUnreadNotifiedThreads:(BOOL *)a5 includeUnreadPrimaries:(BOOL *)a6;
- (void)_startObservingCountPredicate:(id)a3 serverCountMailboxScope:(id)a4;
- (void)bucketBarConfigurationControllerRequiresReload:(id)a3;
- (void)countDidChange:(int64_t)a3 acknowledgementToken:(id)a4;
- (void)currentFocusChanged:(id)a3;
- (void)dealloc;
- (void)mailboxListChanged:(id)a3;
- (void)setBadgeCount:(int64_t)a3;
- (void)userNotificationCenterSettingsDidChange:(id)a3;
@end

@implementation AppBadgeController

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007410;
  block[3] = &unk_1001562E8;
  block[4] = a1;
  if (qword_1001854B8 != -1)
  {
    dispatch_once(&qword_1001854B8, block);
  }

  v2 = qword_1001854B0;

  return v2;
}

- (AppBadgeController)initWithMessagePersistence:(id)a3 hookRegistry:(id)a4 mailboxProvider:(id)a5 focusController:(id)a6 bucketBarController:(id)a7
{
  v13 = a3;
  v35 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v36.receiver = self;
  v36.super_class = AppBadgeController;
  v17 = [(AppBadgeController *)&v36 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_messagePersistence, a3);
    objc_storeStrong(&v18->_hookRegistry, a4);
    objc_storeStrong(&v18->_mailboxProvider, a5);
    v18->_oldBadgeCount = 0x7FFFFFFFFFFFFFFFLL;
    v19 = [UNUserNotificationCenter alloc];
    v20 = [v19 initWithBundleIdentifier:kMFMobileMailBundleIdentifier];
    notificationCenter = v18->_notificationCenter;
    v18->_notificationCenter = v20;

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = [EFScheduler serialDispatchQueueSchedulerWithName:v23 qualityOfService:25];
    scheduler = v18->_scheduler;
    v18->_scheduler = v24;

    v26 = [EMObjectID alloc];
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = [v26 initWithRepresentedObjectID:v28];
    mailboxObserverID = v18->_mailboxObserverID;
    v18->_mailboxObserverID = v29;

    objc_storeStrong(&v18->_bucketBarController, a7);
    [v16 addConfigurationObserver:v18];
    v31 = [v13 mailboxPersistence];
    [v31 addChangeObserver:v18 withIdentifier:v18->_mailboxObserverID];

    v32 = [v15 addObserver:v18 currentFocus:&v18->_currentFocus];
    focusObservationToken = v18->_focusObservationToken;
    v18->_focusObservationToken = v32;
  }

  return v18;
}

- (void)dealloc
{
  v3 = [(EDMessagePersistence *)self->_messagePersistence mailboxPersistence];
  [v3 removeChangeObserverWithIdentifier:self->_mailboxObserverID];

  [(MSBucketBarConfigurationController *)self->_bucketBarController removeConfigurationObserver:self];
  [(EDMessageCountQueryHandler *)self->_queryHandler cancel];
  v4.receiver = self;
  v4.super_class = AppBadgeController;
  [(AppBadgeController *)&v4 dealloc];
}

- (void)_nts_getAccountsExcludedFromUnreadCount:(id *)a3 includeUnreadVIPs:(BOOL *)a4 includeUnreadNotifiedThreads:(BOOL *)a5 includeUnreadPrimaries:(BOOL *)a6
{
  v11 = +[NSMutableSet set];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v12 = [(AppBadgeController *)self notificationSettingsByTopic];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100007998;
  v16[3] = &unk_100156310;
  v18 = &v29;
  v19 = &v25;
  v20 = &v21;
  v13 = v11;
  v17 = v13;
  [v12 enumerateKeysAndObjectsUsingBlock:v16];

  if (a3)
  {
    v14 = v13;
    *a3 = v13;
  }

  if (a4)
  {
    *a4 = *(v30 + 24);
  }

  if (a5)
  {
    *a5 = *(v26 + 24);
  }

  if (a6)
  {
    if (EMBlackPearlIsFeatureEnabled())
    {
      v15 = *(v22 + 24);
    }

    else
    {
      v15 = 0;
    }

    *a6 = v15;
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
}

- (id)_enabledAndExcludedMailboxesExcludingAccountIDs:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableSet set];
  v5 = +[NSMutableSet set];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = +[MailAccount activeAccounts];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 primaryMailboxUid];
        if (v11)
        {
          v12 = [v10 uniqueID];
          v13 = [v3 containsObject:v12];

          if (v13)
          {
            v14 = v5;
          }

          else
          {
            v14 = v4;
          }

          [v14 addObject:v11];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = [EFPair pairWithFirst:v4 second:v5];

  return v15;
}

- (void)setBadgeCount:(int64_t)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100007D38;
  v3[3] = &unk_100156360;
  v3[4] = self;
  v3[5] = a3;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)_createCountQueryPredicateFromNotificationTopics
{
  v59 = 0;
  v58 = 0;
  v57 = 0;
  [(AppBadgeController *)self _nts_getAccountsExcludedFromUnreadCount:&v57 includeUnreadVIPs:&v59 + 1 includeUnreadNotifiedThreads:&v59 includeUnreadPrimaries:&v58];
  v3 = v57;
  v4 = [(AppBadgeController *)self _excludedAccountIdentifiersByCurrentFocus];
  v48 = [v3 setByAddingObjectsFromSet:v4];

  v51 = [(AppBadgeController *)self _enabledAndExcludedMailboxesExcludingAccountIDs:v48];
  v50 = [(AppBadgeController *)self mailboxProvider];
  v5 = [v51 first];
  v6 = [v5 allObjects];
  v7 = [v50 mailboxesFromLegacyMailboxes:v6];

  v8 = [v51 second];
  v9 = [v8 allObjects];
  v49 = [v50 mailboxesFromLegacyMailboxes:v9];

  v45 = objc_alloc_init(NSMutableArray);
  v47 = objc_alloc_init(NSMutableArray);
  if (EMBlackPearlIsFeatureEnabled())
  {
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_1000089AC;
    v54[3] = &unk_100156388;
    v54[4] = self;
    v55 = v45;
    v56 = v47;
    [v7 enumerateObjectsUsingBlock:v54];
  }

  v10 = +[AppBadgeController log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HIBYTE(v59);
    v12 = v59;
    v13 = v58;
    v14 = [v46 ef_mapSelector:"ef_publicDescription"];
    v15 = [v47 ef_mapSelector:"ef_publicDescription"];
    *buf = 67110402;
    *v67 = v11;
    *&v67[4] = 1024;
    *&v67[6] = v12;
    LOWORD(v68) = 1024;
    *(&v68 + 2) = v13;
    HIWORD(v68) = 2114;
    v69 = v48;
    v70 = 2114;
    v71 = v14;
    v72 = 2114;
    v73 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Generating new query include VIPs:%{BOOL}d, include Notified Threads: %{BOOL}d, include Primary: %{BOOL}d, excluding accounts: %{public}@, enabled mailboxes with primary: %{public}@\n without primary: %{public}@", buf, 0x32u);
  }

  if ([v49 count])
  {
    v16 = objc_alloc_init(NSMutableArray);
    if (HIBYTE(v59) == 1)
    {
      v17 = [EMMessageListItemPredicates predicateForIsVIP:1];
      [v16 addObject:v17];
    }

    if (v59 == 1)
    {
      v18 = +[EMMessageListItemPredicates predicateForNotifyMessages];
      [v16 addObject:v18];
    }

    if ((v59 & 0x100) != 0 || (v59 & 1) != 0 || v58 == 1)
    {
      v19 = [(AppBadgeController *)self currentFocus];
      v20 = v19;
      if (v19)
      {
        v52[0] = _NSConcreteStackBlock;
        v52[1] = 3221225472;
        v52[2] = sub_100008AB8;
        v52[3] = &unk_1001563B0;
        v53 = v19;
        v21 = [v49 ef_filter:v52];
      }

      else
      {
        v21 = v49;
      }

      if ([v16 count] == 1)
      {
        [v16 firstObject];
      }

      else
      {
        [NSCompoundPredicate orPredicateWithSubpredicates:v16];
      }
      v23 = ;
      v24 = [EMMessageListItemPredicates predicateForMessagesInMailboxes:v21];
      v65[0] = v23;
      v65[1] = v24;
      v25 = [NSArray arrayWithObjects:v65 count:2];
      v22 = [NSCompoundPredicate andPredicateWithSubpredicates:v25];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v26 = [EMMessageListItemPredicates predicateForMessagesInMailboxes:v7];
  if (v58 == 1 && EMBlackPearlIsFeatureEnabled() && [v46 count])
  {
    if ([v47 count])
    {
      v27 = [EMMessageListItemPredicates predicateForMessagesInMailboxes:v46];
      v64[0] = v27;
      v28 = +[EMMessageListItemPredicates predicateForPrimaryMessages];
      v64[1] = v28;
      v29 = [NSArray arrayWithObjects:v64 count:2];
      v30 = [NSPredicate ef_andCompoundPredicateWithSubpredicates:v29];

      v31 = [EMMessageListItemPredicates predicateForMessagesInMailboxes:v47];
      v63[0] = v30;
      v63[1] = v31;
      v32 = [NSArray arrayWithObjects:v63 count:2];
      v33 = [NSCompoundPredicate orPredicateWithSubpredicates:v32];

      v26 = v33;
    }

    else
    {
      v62[0] = v26;
      v30 = +[EMMessageListItemPredicates predicateForPrimaryMessages];
      v62[1] = v30;
      v31 = [NSArray arrayWithObjects:v62 count:2];
      [NSCompoundPredicate andPredicateWithSubpredicates:v31];
      v26 = v32 = v26;
    }
  }

  if (v22)
  {
    v61[0] = v26;
    v61[1] = v22;
    v34 = [NSArray arrayWithObjects:v61 count:2];
    v35 = [NSCompoundPredicate orPredicateWithSubpredicates:v34];

    v26 = v35;
  }

  v60[0] = v26;
  v36 = +[EMMessageListItemPredicates predicateForUnreadMessages];
  v60[1] = v36;
  v37 = [NSArray arrayWithObjects:v60 count:2];
  v38 = [NSCompoundPredicate andPredicateWithSubpredicates:v37];

  if ([v7 count])
  {
    v39 = v7;
    if (EMBlackPearlIsFeatureEnabled() && v58 == 1)
    {
      v40 = v47;

      v39 = v40;
    }

    v41 = [v39 ef_mapSelector:"objectID"];
    v42 = [EMMailboxScope mailboxScopeForMailboxObjectIDs:v41 forExclusion:0];

    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  v44 = +[AppBadgeController log];
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v67 = v38;
    *&v67[8] = 2112;
    v68 = v43;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Generated app badge predicate %@\nserverCountMailboxScope %@", buf, 0x16u);
  }

  [(AppBadgeController *)self _startObservingCountPredicate:v38 serverCountMailboxScope:v43];
}

- (id)_excludedAccountIdentifiersByCurrentFocus
{
  v2 = [(AppBadgeController *)self currentFocus];
  v3 = [v2 focusedAccountIdentifiers];

  if ([v3 count])
  {
    v4 = objc_alloc_init(NSMutableSet);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = +[MailAccount activeAccounts];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [*(*(&v11 + 1) + 8 * i) identifier];
          if (v9 && ([v3 containsObject:v9] & 1) == 0)
          {
            [v4 addObject:v9];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = +[NSSet set];
  }

  return v4;
}

- (void)_startObservingCountPredicate:(id)a3 serverCountMailboxScope:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[EMQuery alloc] initWithTargetClass:objc_opt_class() predicate:v6 sortDescriptors:&__NSArray0__struct queryOptions:0 label:@"App badge"];
  v9 = [(AppBadgeController *)self query];
  v10 = [v8 isEqual:v9];

  if ((v10 & 1) == 0)
  {
    v11 = [(AppBadgeController *)self queryHandler];
    [v11 cancel];

    v12 = +[AppBadgeController log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updating app badge with predicate %@", &v17, 0xCu);
    }

    v13 = [EDMessageCountQueryHandler alloc];
    v14 = [(AppBadgeController *)self messagePersistence];
    v15 = [(AppBadgeController *)self hookRegistry];
    v16 = [v13 initWithQuery:v8 serverCountMailboxScope:v7 messagePersistence:v14 hookRegistry:v15 observer:self];
    [(AppBadgeController *)self setQueryHandler:v16];

    [(AppBadgeController *)self setQuery:v8];
  }
}

- (void)userNotificationCenterSettingsDidChange:(id)a3
{
  v4 = a3;
  v5 = [(AppBadgeController *)self scheduler];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100009090;
  v7[3] = &unk_1001563D8;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [v5 performBlock:v7];
}

- (void)countDidChange:(int64_t)a3 acknowledgementToken:(id)a4
{
  v6 = a4;
  [v6 invoke];
  [(AppBadgeController *)self setBadgeCount:a3];
}

- (void)mailboxListChanged:(id)a3
{
  v4 = [(AppBadgeController *)self scheduler];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100009218;
  v5[3] = &unk_100156400;
  v5[4] = self;
  [v4 performBlock:v5];
}

- (void)currentFocusChanged:(id)a3
{
  v4 = a3;
  v5 = [(AppBadgeController *)self scheduler];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000092FC;
  v7[3] = &unk_1001563D8;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [v5 performBlock:v7];
}

- (void)bucketBarConfigurationControllerRequiresReload:(id)a3
{
  v4 = [(AppBadgeController *)self scheduler];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100009474;
  v5[3] = &unk_100156400;
  v5[4] = self;
  [v4 performBlock:v5];
}

@end