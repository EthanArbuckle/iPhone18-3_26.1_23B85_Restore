@interface MFNanoAccountHandler
- (MFNanoAccountHandler)initWithExecutionQueue:(id)a3 syncProvider:(id)a4;
- (NSArray)activeAccounts;
- (id)_nanoMailboxesFromMailAccount:(id)a3;
- (id)accountWithId:(id)a3;
- (id)favoriteMailboxUidList;
- (id)nanoAccountFromMailAccount:(id)a3;
- (void)_accountsChanged:(id)a3;
- (void)_addObservers;
- (void)_checkIfSettingsChanged;
- (void)_handleAccountEmailTokenHasChanged;
- (void)_handleImportantBridgeSettingHasChanged;
- (void)_handleNewAccountIdentityAvailable;
- (void)_notifyFavoritesManagerSelectedMailboxesChanged;
- (void)_settingsChanged:(id)a3;
- (void)dealloc;
- (void)handleWatchAccountsUpdated;
- (void)notifyAuthenticationFailedForAccount:(id)a3;
- (void)updateBridgeSettingsWithMailboxSelection:(id)a3;
@end

@implementation MFNanoAccountHandler

- (MFNanoAccountHandler)initWithExecutionQueue:(id)a3 syncProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = MFNanoAccountHandler;
  v9 = [(MFNanoAccountHandler *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_executionQueue, a3);
    objc_storeStrong(&v10->_syncProvider, a4);
    [(MFNanoAccountHandler *)v10 _checkIfSettingsChanged];
    [(MFNanoAccountHandler *)v10 _addObservers];
    [(MFNanoAccountHandler *)v10 _handleNewAccountIdentityAvailable];
    v11 = +[MFNanoBridgeSettingsManager sharedInstance];
  }

  return v10;
}

- (void)_addObservers
{
  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"_accountsChanged:" name:ECMailAccountsDidChangeNotification object:0];
  v3 = +[PDRRegistry sharedInstance];
  v4 = [v3 devices];
  v5 = [v4 active];
  v6 = [v5 notAltAccount];
  v7 = [v6 final];

  if ([v7 supportsCapability:3634739697])
  {
    [v9 addObserver:self selector:"_accountsChanged:" name:AccountMailboxListingDidChange object:0];
  }

  [v9 addObserver:self selector:"_settingsChanged:" name:@"MailDefaultsChangedNotification" object:0];
  [v9 addObserver:self selector:"_swipeActionsChanged:" name:@"MailApplicationDidChangeSwipeActions" object:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_10007A8E4, @"MFNanoAccountIdentityAvailableDarwinNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_10007A8EC, @"MFNanoMailImportantBridgeSettingHasChangedDarwinNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_10007A8F4, @"MFNanoWatchAccountEmailTokenChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"MFNanoAccountIdentityAvailableDarwinNotification", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"MFNanoMailImportantBridgeSettingHasChangedDarwinNotification", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"MFNanoWatchAccountEmailTokenChanged", 0);
  v4.receiver = self;
  v4.super_class = MFNanoAccountHandler;
  [(MFNanoAccountHandler *)&v4 dealloc];
}

- (id)accountWithId:(id)a3
{
  v4 = [MailAccount accountWithUniqueId:a3];
  v5 = [(MFNanoAccountHandler *)self nanoAccountFromMailAccount:v4];

  return v5;
}

- (NSArray)activeAccounts
{
  v3 = +[MailAccount nano_activeMailAccounts];
  v4 = v3;
  if (v3)
  {
    v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [(MFNanoAccountHandler *)self nanoAccountFromMailAccount:*(*(&v12 + 1) + 8 * i), v12];
          [v5 addObject:v10];
        }

        v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (void)handleWatchAccountsUpdated
{
  v2 = [(MFNanoAccountHandler *)self syncProvider];
  v17 = [v2 watchAccounts];

  v3 = +[NSMutableDictionary dictionary];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v17;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v5)
  {
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 standaloneState]);
        v10 = [v8 localId];
        [v3 setObject:v9 forKeyedSubscript:v10];

        v11 = MFLogGeneral();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [v8 localId];
          v13 = [v8 standaloneState];
          *buf = 138543618;
          v23 = v12;
          v24 = 2048;
          v25 = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "#Nano Account %{public}@, State: %lu", buf, 0x16u);
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v5);
  }

  v14 = +[MFNanoBridgeSettingsManager sharedInstance];
  [v14 setStandaloneAccountStateByAccountId:v3];

  v15 = MFLogGeneral();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#Nano Posting Darwin Notification Watch Account Status Changed", buf, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"MFNanoWatchAccountStatusChanged", 0, 0, 1u);
}

- (void)notifyAuthenticationFailedForAccount:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 localId], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#Nano Posting Darwin Notification Account Authentication Failed", v10, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v11 = @"MFNanoWatchAuthenticationFailedAccountIdDarwinNotificationUserInfoKey";
    v8 = [v4 localId];
    v12 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"MFNanoWatchAuthenticationFailedDarwinNotification", v9, 0, 1u);
  }

  else
  {
    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000D4A6C(v9);
    }
  }
}

- (void)updateBridgeSettingsWithMailboxSelection:(id)a3
{
  v5 = a3;
  v4 = +[MFNanoBridgeSettingsManager sharedInstance];
  [v4 setUpdateMailboxSelection:v5];

  [(MFNanoAccountHandler *)self _notifyFavoritesManagerSelectedMailboxesChanged];
}

- (void)_accountsChanged:(id)a3
{
  executionQueue = self->_executionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007B198;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(executionQueue, block);
}

- (void)_settingsChanged:(id)a3
{
  v4 = a3;
  executionQueue = self->_executionQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007B2EC;
  v7[3] = &unk_1001563D8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(executionQueue, v7);
}

- (id)nanoAccountFromMailAccount:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 nano_account];
    v7 = [(MFNanoAccountHandler *)self _nanoMailboxesFromMailAccount:v5];
    [v6 setMailboxes:v7];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_nanoMailboxesFromMailAccount:(id)a3
{
  v3 = a3;
  v4 = +[MFNanoBridgeSettingsManager sharedInstance];
  v5 = [v4 bridgeSettingsMailboxSelection];

  v6 = [v3 allMailboxUids];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007B62C;
  v11[3] = &unk_100159550;
  v7 = v3;
  v12 = v7;
  v8 = v5;
  v13 = v8;
  v9 = [v6 ef_map:v11];

  return v9;
}

- (void)_checkIfSettingsChanged
{
  if ([(NNMKSyncProvider *)self->_syncProvider isPaired])
  {
    v3 = [NNMKMailboxSelection alloc];
    v4 = [(MFNanoAccountHandler *)self activeAccounts];
    v8 = [v3 initWithAccounts:v4];

    v5 = [(NNMKSyncProvider *)self->_syncProvider mailboxSelection];
    LOBYTE(v3) = [v8 isEqual:v5];

    if ((v3 & 1) == 0)
    {
      [(NNMKSyncProvider *)self->_syncProvider updateMailboxSelection:v8];
      [(MFNanoAccountHandler *)self _notifyFavoritesManagerSelectedMailboxesChanged];
    }

    v6 = +[MFNanoBridgeSettingsManager sharedInstance];
    v7 = [v6 organizeByThread];

    if (v7 != [(NNMKSyncProvider *)self->_syncProvider organizeByThread])
    {
      [(NNMKSyncProvider *)self->_syncProvider setOrganizeByThread:v7];
    }
  }
}

- (id)favoriteMailboxUidList
{
  v3 = +[NSMutableArray array];
  if ([(NNMKSyncProvider *)self->_syncProvider isPaired])
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [(NNMKSyncProvider *)self->_syncProvider mailboxSelection];
    v6 = [v5 allMailboxesSyncEnabled];

    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = [v10 accountId];
          v12 = [v4 objectForKeyedSubscript:v11];

          if (!v12)
          {
            v13 = [v10 accountId];
            v12 = [MailAccount accountWithUniqueId:v13];

            if (v12)
            {
              v14 = [v10 accountId];
              [v4 setObject:v12 forKeyedSubscript:v14];
            }
          }

          v15 = [v10 url];
          v16 = [v15 absoluteString];
          v17 = [v12 mailboxUidForURL:v16];

          if (v17)
          {
            [v3 addObject:v17];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }
  }

  return v3;
}

- (void)_notifyFavoritesManagerSelectedMailboxesChanged
{
  dispatch_assert_queue_V2(self->_executionQueue);
  [(MFNanoAccountHandler *)self favoriteMailboxUidList];
  v3 = v6 = self;
  v7 = v3;
  v4 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v4 performBlock:&v5];
}

- (void)_handleNewAccountIdentityAvailable
{
  executionQueue = self->_executionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007BDF4;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(executionQueue, block);
}

- (void)_handleImportantBridgeSettingHasChanged
{
  executionQueue = self->_executionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007C08C;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(executionQueue, block);
}

- (void)_handleAccountEmailTokenHasChanged
{
  executionQueue = self->_executionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007C108;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(executionQueue, block);
}

@end