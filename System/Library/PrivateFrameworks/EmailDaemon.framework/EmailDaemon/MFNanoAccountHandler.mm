@interface MFNanoAccountHandler
- (MFNanoAccountHandler)initWithExecutionQueue:(id)queue syncProvider:(id)provider;
- (NSArray)activeAccounts;
- (id)_nanoMailboxesFromMailAccount:(id)account;
- (id)accountWithId:(id)id;
- (id)favoriteMailboxUidList;
- (id)nanoAccountFromMailAccount:(id)account;
- (void)_accountsChanged:(id)changed;
- (void)_addObservers;
- (void)_checkIfSettingsChanged;
- (void)_handleAccountEmailTokenHasChanged;
- (void)_handleImportantBridgeSettingHasChanged;
- (void)_handleNewAccountIdentityAvailable;
- (void)_notifyFavoritesManagerSelectedMailboxesChanged;
- (void)_settingsChanged:(id)changed;
- (void)dealloc;
- (void)handleWatchAccountsUpdated;
- (void)notifyAuthenticationFailedForAccount:(id)account;
- (void)updateBridgeSettingsWithMailboxSelection:(id)selection;
@end

@implementation MFNanoAccountHandler

- (MFNanoAccountHandler)initWithExecutionQueue:(id)queue syncProvider:(id)provider
{
  queueCopy = queue;
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = MFNanoAccountHandler;
  v9 = [(MFNanoAccountHandler *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_executionQueue, queue);
    objc_storeStrong(&v10->_syncProvider, provider);
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
  devices = [v3 devices];
  active = [devices active];
  notAltAccount = [active notAltAccount];
  final = [notAltAccount final];

  if ([final supportsCapability:3634739697])
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

- (id)accountWithId:(id)id
{
  v4 = [MailAccount accountWithUniqueId:id];
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
  syncProvider = [(MFNanoAccountHandler *)self syncProvider];
  watchAccounts = [syncProvider watchAccounts];

  v3 = +[NSMutableDictionary dictionary];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = watchAccounts;
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
        localId = [v8 localId];
        [v3 setObject:v9 forKeyedSubscript:localId];

        v11 = MFLogGeneral();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          localId2 = [v8 localId];
          standaloneState = [v8 standaloneState];
          *buf = 138543618;
          v23 = localId2;
          v24 = 2048;
          v25 = standaloneState;
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

- (void)notifyAuthenticationFailedForAccount:(id)account
{
  accountCopy = account;
  v4 = accountCopy;
  if (accountCopy && ([accountCopy localId], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#Nano Posting Darwin Notification Account Authentication Failed", v10, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v11 = @"MFNanoWatchAuthenticationFailedAccountIdDarwinNotificationUserInfoKey";
    localId = [v4 localId];
    v12 = localId;
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

- (void)updateBridgeSettingsWithMailboxSelection:(id)selection
{
  selectionCopy = selection;
  v4 = +[MFNanoBridgeSettingsManager sharedInstance];
  [v4 setUpdateMailboxSelection:selectionCopy];

  [(MFNanoAccountHandler *)self _notifyFavoritesManagerSelectedMailboxesChanged];
}

- (void)_accountsChanged:(id)changed
{
  executionQueue = self->_executionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007B198;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(executionQueue, block);
}

- (void)_settingsChanged:(id)changed
{
  changedCopy = changed;
  executionQueue = self->_executionQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007B2EC;
  v7[3] = &unk_1001563D8;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(executionQueue, v7);
}

- (id)nanoAccountFromMailAccount:(id)account
{
  accountCopy = account;
  v5 = accountCopy;
  if (accountCopy)
  {
    nano_account = [accountCopy nano_account];
    v7 = [(MFNanoAccountHandler *)self _nanoMailboxesFromMailAccount:v5];
    [nano_account setMailboxes:v7];
  }

  else
  {
    nano_account = 0;
  }

  return nano_account;
}

- (id)_nanoMailboxesFromMailAccount:(id)account
{
  accountCopy = account;
  v4 = +[MFNanoBridgeSettingsManager sharedInstance];
  bridgeSettingsMailboxSelection = [v4 bridgeSettingsMailboxSelection];

  allMailboxUids = [accountCopy allMailboxUids];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007B62C;
  v11[3] = &unk_100159550;
  v7 = accountCopy;
  v12 = v7;
  v8 = bridgeSettingsMailboxSelection;
  v13 = v8;
  v9 = [allMailboxUids ef_map:v11];

  return v9;
}

- (void)_checkIfSettingsChanged
{
  if ([(NNMKSyncProvider *)self->_syncProvider isPaired])
  {
    v3 = [NNMKMailboxSelection alloc];
    activeAccounts = [(MFNanoAccountHandler *)self activeAccounts];
    v8 = [v3 initWithAccounts:activeAccounts];

    mailboxSelection = [(NNMKSyncProvider *)self->_syncProvider mailboxSelection];
    LOBYTE(v3) = [v8 isEqual:mailboxSelection];

    if ((v3 & 1) == 0)
    {
      [(NNMKSyncProvider *)self->_syncProvider updateMailboxSelection:v8];
      [(MFNanoAccountHandler *)self _notifyFavoritesManagerSelectedMailboxesChanged];
    }

    v6 = +[MFNanoBridgeSettingsManager sharedInstance];
    organizeByThread = [v6 organizeByThread];

    if (organizeByThread != [(NNMKSyncProvider *)self->_syncProvider organizeByThread])
    {
      [(NNMKSyncProvider *)self->_syncProvider setOrganizeByThread:organizeByThread];
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
    mailboxSelection = [(NNMKSyncProvider *)self->_syncProvider mailboxSelection];
    allMailboxesSyncEnabled = [mailboxSelection allMailboxesSyncEnabled];

    v7 = [allMailboxesSyncEnabled countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(allMailboxesSyncEnabled);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          accountId = [v10 accountId];
          v12 = [v4 objectForKeyedSubscript:accountId];

          if (!v12)
          {
            accountId2 = [v10 accountId];
            v12 = [MailAccount accountWithUniqueId:accountId2];

            if (v12)
            {
              accountId3 = [v10 accountId];
              [v4 setObject:v12 forKeyedSubscript:accountId3];
            }
          }

          v15 = [v10 url];
          absoluteString = [v15 absoluteString];
          v17 = [v12 mailboxUidForURL:absoluteString];

          if (v17)
          {
            [v3 addObject:v17];
          }
        }

        v7 = [allMailboxesSyncEnabled countByEnumeratingWithState:&v19 objects:v23 count:16];
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