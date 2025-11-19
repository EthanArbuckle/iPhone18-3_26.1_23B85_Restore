@interface AutoFetchController
+ (AutoFetchController)sharedController;
+ (BOOL)shouldSyncAccountByMailbox:(id)a3;
+ (id)activeAccountsToSyncByAccount;
+ (id)partitionAccounts:(id)a3;
+ (id)partitionMailboxes:(id)a3;
- (AutoFetchController)init;
- (AutoFetchControllerDataSource)dataSource;
- (MFAccountsProvider)accountsProvider;
- (NSArray)activeAccountsToSyncByMailbox;
- (NSArray)visibleMailboxesToSyncByMailbox;
- (NSSet)displayedAccountsToSyncByMailbox;
- (id)diagnosticInformation;
- (id)favoritesPersistence;
- (void)_accountContentsDidChange:(id)a3;
- (void)_freeSpaceStatusDidChange:(id)a3;
- (void)_networkConfigurationChanged:(id)a3;
- (void)_networkHasAlternateAdvice:(id)a3;
- (void)_updateState:(int64_t)a3;
- (void)fetchNow:(int)a3 withMailboxes:(id)a4;
- (void)resetPushStateWithCompletion:(id)a3;
- (void)setSuppressedContexts:(id)a3;
@end

@implementation AutoFetchController

+ (AutoFetchController)sharedController
{
  if (qword_1001854C8 != -1)
  {
    sub_1000D06A4();
  }

  v3 = qword_1001854C0;

  return v3;
}

- (NSArray)visibleMailboxesToSyncByMailbox
{
  v3 = [(AutoFetchController *)self dataSource];
  v4 = [v3 visibleMailboxes];

  if (![v4 count])
  {
    v5 = [(AutoFetchController *)self favoritesPersistence];
    v6 = [v5 mailboxesForAutoFetch];

    v4 = v6;
  }

  v7 = [v4 ef_filter:&stru_100156650];

  return v7;
}

- (AutoFetchControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (NSArray)activeAccountsToSyncByMailbox
{
  v2 = +[MailAccount activeAccounts];
  v3 = [v2 ef_filter:&stru_100156610];

  return v3;
}

- (NSSet)displayedAccountsToSyncByMailbox
{
  v2 = [(AutoFetchController *)self accountsProvider];
  v3 = [v2 displayedAccounts];
  v4 = [v3 ef_filter:&stru_100156630];

  return v4;
}

- (MFAccountsProvider)accountsProvider
{
  v2 = sub_100027C70();
  v3 = [v2 accountsProvider];

  return v3;
}

- (AutoFetchController)init
{
  v13.receiver = self;
  v13.super_class = AutoFetchController;
  v2 = [(AutoFetchController *)&v13 init];
  if (v2)
  {
    v3 = [EFLocked alloc];
    v4 = objc_opt_new();
    v5 = [v3 initWithObject:v4];
    state = v2->_state;
    v2->_state = v5;

    v7 = objc_alloc_init(MFAccountAutoFetchController);
    accountController = v2->_accountController;
    v2->_accountController = v7;

    v9 = [(AutoFetchController *)v2 mailboxController];
    [v9 setDataSource:v2];

    v10 = +[NSNotificationCenter defaultCenter];
    v11 = [(AutoFetchController *)v2 freeSpaceMonitor];
    [v10 addObserver:v2 selector:"_freeSpaceStatusDidChange:" name:@"MFDiskFreeSpaceMonitorDidChangeNotification" object:v11];

    [v10 addObserver:v2 selector:"_networkConfigurationChanged:" name:NetworkConfigurationDidChangeNotification object:0];
    [v10 addObserver:v2 selector:"_networkHasAlternateAdvice:" name:NetworkSymptomsHasAlternativeAdvice object:0];
    [v10 addObserver:v2 selector:"_accountContentsDidChange:" name:MailAccountContentsDidChange object:0];
    [v10 addObserver:v2 selector:"_mailboxAutoFetchStarted:" name:@"MailboxAutoFetchProcessStartNotification" object:0];
    [v10 addObserver:v2 selector:"_mailboxAutoFetchFinished:" name:@"MailboxAutoFetchProcessFinishedNotification" object:0];
    [v10 addObserver:v2 selector:"_mailboxAutoFetchDone:" name:@"MailboxAutoFetchDoneNotification" object:0];
  }

  return v2;
}

- (void)_updateState:(int64_t)a3
{
  v5 = [(AutoFetchController *)self state];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100009AD4;
  v6[3] = &unk_1001564C0;
  v6[4] = self;
  v6[5] = a3;
  [v5 performWhileLocked:v6];
}

- (id)favoritesPersistence
{
  v2 = sub_100027C70();
  v3 = [v2 favoritesPersistence];

  return v3;
}

- (void)_freeSpaceStatusDidChange:(id)a3
{
  v4 = [(AutoFetchController *)self freeSpaceMonitor];
  v5 = [v4 isFreeSpaceCritical];

  if ((v5 & 1) == 0)
  {
    v6 = MFAutoFetchLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "low disk mode turned OFF, starting autofetch", v7, 2u);
    }

    [(AutoFetchController *)self fetchNow:16];
  }
}

- (void)_accountContentsDidChange:(id)a3
{
  v10 = a3;
  v4 = MFUserAgent();
  v5 = [v4 isMaild];

  if (v5)
  {
    v6 = [v10 object];
    v7 = [v10 userInfo];
    v8 = [v7 objectForKey:MailAccountContentsDidChangeUids];

    if (!v8)
    {
      v9 = [v6 primaryMailboxUid];
      v8 = [NSArray arrayWithObject:v9];
    }

    [(AutoFetchController *)self fetchNow:EMFetchTypePush withMailboxes:v8];
  }
}

- (void)_networkConfigurationChanged:(id)a3
{
  v4 = a3;
  v5 = [(AutoFetchController *)self networkController];
  v6 = [v5 isNetworkUp];

  if (v6)
  {
    v7 = dispatch_get_global_queue(17, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000A0A8;
    v10[3] = &unk_1001563D8;
    v10[4] = self;
    v11 = v4;
    dispatch_async(v7, v10);
  }

  else
  {
    v8 = sub_10000A284();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 name];
      *buf = 138412290;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: network down", buf, 0xCu);
    }
  }
}

- (void)_networkHasAlternateAdvice:(id)a3
{
  v4 = sub_10000A284();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "RNF: received notification, dropping all connections", buf, 2u);
  }

  v5 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A39C;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(v5, block);
}

+ (BOOL)shouldSyncAccountByMailbox:(id)a3
{
  v3 = [a3 taskManager];
  v4 = v3 == 0;

  return v4;
}

+ (id)partitionAccounts:(id)a3
{
  v3 = [a3 ef_partition:&stru_100156500];
  v4 = [AutoFetchPartition alloc];
  v5 = [v3 first];
  v6 = [v3 second];
  v7 = [(AutoFetchPartition *)v4 initWithSyncedByMailbox:v5 syncedByAccount:v6];

  return v7;
}

+ (id)partitionMailboxes:(id)a3
{
  v3 = [a3 ef_partition:&stru_100156540];
  v4 = [AutoFetchPartition alloc];
  v5 = [v3 first];
  v6 = [v3 second];
  v7 = [(AutoFetchPartition *)v4 initWithSyncedByMailbox:v5 syncedByAccount:v6];

  return v7;
}

+ (id)activeAccountsToSyncByAccount
{
  v2 = +[MailAccount activeAccounts];
  v3 = [v2 ef_filter:&stru_100156560];

  return v3;
}

- (void)fetchNow:(int)a3 withMailboxes:(id)a4
{
  v19 = a4;
  v21 = [AutoFetchController partitionMailboxes:?];
  v5 = [v21 syncedByAccount];
  v20 = [v5 ef_groupBy:&stru_1001565C8];

  v6 = +[NSNotificationCenter defaultCenter];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v20;
  v24 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v24)
  {
    v7 = a3 & 0x800;
    v22 = *v39;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v39 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v38 + 1) + 8 * i);
        v9 = [obj objectForKeyedSubscript:v8];
        v26 = v8;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v34 objects:v44 count:16];
        if (v11)
        {
          v12 = *v35;
          while (1)
          {
            if (*v35 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v42 = @"AutoFetchDontNotify";
            v13 = [NSNumber numberWithBool:v7 != 0];
            v43 = v13;
            v14 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];

            [v6 postNotificationName:@"AutoFetchPushStartedNotification" object:self userInfo:v14];
            if (!--v11)
            {
              v11 = [v10 countByEnumeratingWithState:&v34 objects:v44 count:16];
              if (!v11)
              {
                break;
              }
            }
          }
        }

        v15 = [(AutoFetchController *)self accountController];
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_10000B188;
        v28[3] = &unk_1001565F0;
        v16 = v10;
        v29 = v16;
        v30 = v26;
        v33 = v7 >> 11;
        v31 = v6;
        v32 = self;
        [v15 fetchNow:a3 withMailboxes:v16 fromAccount:v26 completion:v28];
      }

      v24 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v24);
  }

  v17 = [(AutoFetchController *)self mailboxController];
  v18 = [v21 syncedByMailbox];
  [v17 fetchNow:a3 withMailboxes:v18];
}

- (void)resetPushStateWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[MailAccount mailAccounts];
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        if ([v10 canFetch])
        {
          [v5 addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  sub_10000B850(v6, "stopListeningForNotifications");
  v11 = +[MFPowerController sharedInstance];
  if ([v11 isBatterySaverModeEnabled])
  {
  }

  else
  {
    v12 = +[MFPowerController sharedInstance];
    v13 = [v12 gameModeEnabled];

    if ((v13 & 1) == 0)
    {
      sub_10000B850(v5, "startListeningForNotifications");
    }
  }

  +[MailAccount activeAccounts];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v14 = v21 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = *v21;
    while (2)
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v20 + 1) + 8 * j) uniqueIdForPersistentConnection];
        if (PCSettingsGetStyle() != 2)
        {
          LODWORD(v15) = 1;
          goto LABEL_24;
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_24:

  ClassPollInterval = PCSettingsGetClassPollInterval();
  if (ClassPollInterval == -1)
  {
    v19 = 0;
  }

  else
  {
    v19 = v15;
  }

  v3[2](v3, 1, v19, ClassPollInterval, 0);
}

- (void)setSuppressedContexts:(id)a3
{
  v5 = a3;
  v4 = [(AutoFetchController *)self mailboxController];
  [v4 setSuppressedContexts:v5];
}

- (id)diagnosticInformation
{
  v2 = [(AutoFetchController *)self mailboxController];
  v3 = [v2 diagnosticInformation];

  return v3;
}

@end