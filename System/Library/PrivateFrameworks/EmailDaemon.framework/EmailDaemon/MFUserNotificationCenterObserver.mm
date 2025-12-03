@interface MFUserNotificationCenterObserver
- (BOOL)_nts_updateObservationWithAccounts:(id)accounts;
- (BOOL)isObservingMailbox:(id)mailbox inAccountID:(id)d;
- (MFUserNotificationCenterObserver)initWithVIPReader:(id)reader favoritesReader:(id)favoritesReader delegate:(id)delegate;
- (MFUserNotificationCenterObserverDelegate)delegate;
- (NSArray)activeAccounts;
- (void)_handleAccountsChanged:(id)changed;
- (void)_handleConversationFlagsChanged:(id)changed;
- (void)_handleFoldersChanged:(id)changed;
- (void)_handleMessagesAdded:(id)added;
- (void)_handleMessagesDeleted:(id)deleted;
- (void)_handleMessagesFlagsChanged:(id)changed;
- (void)_handleVIPsChanged:(id)changed;
- (void)_nts_startObservingAccounts:(id)accounts;
- (void)_nts_stopObservingAccountWithIDs:(id)ds;
- (void)_startObservingStore:(id)store;
- (void)_stopObservingStore:(id)store;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation MFUserNotificationCenterObserver

- (MFUserNotificationCenterObserver)initWithVIPReader:(id)reader favoritesReader:(id)favoritesReader delegate:(id)delegate
{
  readerCopy = reader;
  favoritesReaderCopy = favoritesReader;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = MFUserNotificationCenterObserver;
  v12 = [(MFUserNotificationCenterObserver *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, delegateCopy);
    objc_storeStrong(&v13->_vipReader, reader);
    objc_storeStrong(&v13->_favoritesReader, favoritesReader);
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_attr_make_with_qos_class(v14, QOS_CLASS_UTILITY, 0);
    v16 = dispatch_queue_create("com.apple.mail.UserNotificationCenter.Observer", v15);
    queue = v13->_queue;
    v13->_queue = v16;

    v18 = objc_alloc_init(NSMutableDictionary);
    observedStoresByAccountID = v13->_observedStoresByAccountID;
    v13->_observedStoresByAccountID = v18;

    activeAccounts = v13->_activeAccounts;
    v13->_activeAccounts = 0;

    v13->_activeAccountsLock._os_unfair_lock_opaque = 0;
  }

  return v13;
}

- (void)startObserving
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_handleAccountsChanged:" name:ECMailAccountsDidChangeNotification object:0];
  vipReader = [(MFUserNotificationCenterObserver *)self vipReader];
  [v3 addObserver:self selector:"_handleVIPsChanged:" name:EMVIPsDidChangeNotification object:vipReader];

  [v3 addObserver:self selector:"_handleConversationFlagsChanged:" name:EDConversationFlagsChanged object:0];
  queue = [(MFUserNotificationCenterObserver *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A518C;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stopObserving
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:ECMailAccountsDidChangeNotification object:0];
  [v3 removeObserver:self name:EMVIPsDidChangeNotification object:0];
  [v3 removeObserver:self name:@"MailApplicationDidChangePreviewLinesNotification" object:0];
  [v3 removeObserver:self name:MailMessageLibraryDidFinishReconciliation object:0];
  [v3 removeObserver:self name:EDConversationFlagsChanged object:0];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5324;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_startObservingStore:(id)store
{
  storeCopy = store;
  if (storeCopy)
  {
    v6 = storeCopy;
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"_handleMessagesAdded:" name:MailMessageStoreMessagesAdded object:v6];
    [v5 addObserver:self selector:"_handleMessagesFlagsChanged:" name:MailMessageStoreMessageFlagsChanged object:v6];
    [v5 addObserver:self selector:"_handleMessagesDeleted:" name:MailMessageStoreMessagesCompacted object:v6];

    storeCopy = v6;
  }
}

- (void)_stopObservingStore:(id)store
{
  storeCopy = store;
  if (storeCopy)
  {
    v6 = storeCopy;
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self name:MailMessageStoreMessagesAdded object:v6];
    [v5 removeObserver:self name:MailMessageStoreMessageFlagsChanged object:v6];
    [v5 removeObserver:self name:MailMessageStoreMessagesCompacted object:v6];

    storeCopy = v6;
  }
}

- (NSArray)activeAccounts
{
  os_unfair_lock_lock(&self->_activeAccountsLock);
  activeAccounts = self->_activeAccounts;
  if (!activeAccounts)
  {
    v4 = [MailAccount activeAccountsWithError:0];
    v5 = [v4 ef_filter:&stru_10015A178];
    v6 = self->_activeAccounts;
    self->_activeAccounts = v5;

    activeAccounts = self->_activeAccounts;
  }

  v7 = activeAccounts;
  os_unfair_lock_unlock(&self->_activeAccountsLock);

  return v7;
}

- (BOOL)isObservingMailbox:(id)mailbox inAccountID:(id)d
{
  mailboxCopy = mailbox;
  dCopy = d;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1000A58F0;
  v30 = sub_1000A5900;
  v31 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5908;
  block[3] = &unk_100157618;
  v25 = &v26;
  block[4] = self;
  v9 = dCopy;
  v24 = v9;
  dispatch_sync(queue, block);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v27[5];
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v32 count:16];
  if (v11)
  {
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v10);
        }

        mailbox = [*(*(&v19 + 1) + 8 * i) mailbox];
        uniqueId = [mailbox uniqueId];
        uniqueId2 = [mailboxCopy uniqueId];
        v17 = [uniqueId isEqual:uniqueId2];

        if (v17)
        {
          LOBYTE(v11) = 1;
          goto LABEL_11;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v19 objects:v32 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  _Block_object_dispose(&v26, 8);
  return v11;
}

- (void)_handleMessagesAdded:(id)added
{
  addedCopy = added;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A59F0;
  v7[3] = &unk_1001563D8;
  v8 = addedCopy;
  selfCopy = self;
  v6 = addedCopy;
  dispatch_async(queue, v7);
}

- (void)_handleMessagesFlagsChanged:(id)changed
{
  changedCopy = changed;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A5B44;
  v7[3] = &unk_1001563D8;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

- (void)_handleMessagesDeleted:(id)deleted
{
  deletedCopy = deleted;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A5CC8;
  v7[3] = &unk_1001563D8;
  v8 = deletedCopy;
  selfCopy = self;
  v6 = deletedCopy;
  dispatch_async(queue, v7);
}

- (void)_handleAccountsChanged:(id)changed
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5E00;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_handleVIPsChanged:(id)changed
{
  userInfo = [changed userInfo];
  v4 = [userInfo objectForKeyedSubscript:EMVIPsRemovedKey];
  delegate = [(MFUserNotificationCenterObserver *)self delegate];
  if ([v4 count])
  {
    [delegate notificationCenterObserver:self removedVIPs:v4];
  }

  else
  {
    [delegate vipsChangedForNotificationCenterObserver:self];
  }
}

- (void)_handleConversationFlagsChanged:(id)changed
{
  delegate = [(MFUserNotificationCenterObserver *)self delegate];
  [delegate conversationFlagsDidChangeForNotificationCenterObserver:self];
}

- (void)_handleFoldersChanged:(id)changed
{
  changedCopy = changed;
  object = [changedCopy object];
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A639C;
  v8[3] = &unk_1001563D8;
  v8[4] = self;
  v9 = object;
  v7 = object;
  dispatch_async(queue, v8);
}

- (void)_nts_startObservingAccounts:(id)accounts
{
  accountsCopy = accounts;
  dispatch_assert_queue_V2(self->_queue);
  v22 = +[NSNotificationCenter defaultCenter];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = accountsCopy;
  v23 = [obj countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v23)
  {
    v21 = *v31;
    v20 = MFMailAccountPushedMailboxUidsDidChange;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v30 + 1) + 8 * i);
        favoritesReader = [(MFUserNotificationCenterObserver *)self favoritesReader];
        v24 = [v4 mailboxesToBeObserved:favoritesReader];

        v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v24 count]);
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v7 = v24;
        v8 = [v7 countByEnumeratingWithState:&v26 objects:v36 count:16];
        if (v8)
        {
          v9 = *v27;
          do
          {
            for (j = 0; j != v8; j = j + 1)
            {
              if (*v27 != v9)
              {
                objc_enumerationMutation(v7);
              }

              v11 = *(*(&v26 + 1) + 8 * j);
              v12 = [v4 storeForMailboxUid:v11];
              if (v12)
              {
                [(MFUserNotificationCenterObserver *)self _startObservingStore:v12];
                [v6 addObject:v12];
              }

              else
              {
                v13 = MSUserNotificationsLog();
                if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                {
                  ef_publicDescription = [v11 ef_publicDescription];
                  *buf = 138543362;
                  v35 = ef_publicDescription;
                  _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Error: got nil store for mailbox uid %{public}@", buf, 0xCu);
                }
              }
            }

            v8 = [v7 countByEnumeratingWithState:&v26 objects:v36 count:16];
          }

          while (v8);
        }

        [v22 addObserver:self selector:"_handlePushedFoldersChanged:" name:v20 object:v4];
        [v22 addObserver:self selector:"_handleFavoriteMailboxesChanged:" name:@"MailApplicationAccountFavoritesDidChange" object:v4];
        uniqueID = [v4 uniqueID];
        [(NSMutableDictionary *)self->_observedStoresByAccountID setObject:v6 forKeyedSubscript:uniqueID];
      }

      v23 = [obj countByEnumeratingWithState:&v30 objects:v37 count:16];
    }

    while (v23);
  }

  v16 = MSUserNotificationsLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    allKeys = [(NSMutableDictionary *)self->_observedStoresByAccountID allKeys];
    *buf = 138543362;
    v35 = allKeys;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Observer: Started observing stores for accounts %{public}@", buf, 0xCu);
  }
}

- (void)_nts_stopObservingAccountWithIDs:(id)ds
{
  dsCopy = ds;
  dispatch_assert_queue_V2(self->_queue);
  v21 = +[NSNotificationCenter defaultCenter];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = dsCopy;
  v4 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v4)
  {
    v20 = *v27;
    v19 = MFMailAccountPushedMailboxUidsDidChange;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * i);
        dsCopy = [(NSMutableDictionary *)self->_observedStoresByAccountID objectForKeyedSubscript:v6, dsCopy];
        if (dsCopy)
        {
          v8 = [MailAccount accountWithUniqueId:v6];
          [v21 removeObserver:self name:v19 object:v8];
          [v21 removeObserver:self name:@"MailApplicationAccountFavoritesDidChange" object:v8];
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v9 = dsCopy;
          v10 = [v9 countByEnumeratingWithState:&v22 objects:v32 count:16];
          if (v10)
          {
            v11 = *v23;
            do
            {
              for (j = 0; j != v10; j = j + 1)
              {
                if (*v23 != v11)
                {
                  objc_enumerationMutation(v9);
                }

                [(MFUserNotificationCenterObserver *)self _stopObservingStore:*(*(&v22 + 1) + 8 * j)];
              }

              v10 = [v9 countByEnumeratingWithState:&v22 objects:v32 count:16];
            }

            while (v10);
          }

          [(NSMutableDictionary *)self->_observedStoresByAccountID setObject:0 forKeyedSubscript:v6];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v4);
  }

  v13 = MSUserNotificationsLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = obj;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Observer: Stopped observing stores for accounts %{public}@", buf, 0xCu);
  }

  v14 = MSUserNotificationsLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    allKeys = [(NSMutableDictionary *)self->_observedStoresByAccountID allKeys];
    *buf = 138543362;
    v31 = allKeys;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Observer: Currently observed accounts %{public}@", buf, 0xCu);
  }

  delegate = [(MFUserNotificationCenterObserver *)self delegate];
  [delegate notificationCenterObserver:self didStopListeningForChangesForAccountIDs:obj];
}

- (BOOL)_nts_updateObservationWithAccounts:(id)accounts
{
  accountsCopy = accounts;
  dispatch_assert_queue_V2(self->_queue);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = accountsCopy;
  v27 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v27)
  {
    v24 = 0;
    v26 = *v41;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v41 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v40 + 1) + 8 * i);
        uniqueID = [v4 uniqueID];
        v29 = [(NSMutableDictionary *)self->_observedStoresByAccountID objectForKeyedSubscript:?];
        v5 = [[NSMutableArray alloc] initWithArray:v29];
        favoritesReader = [(MFUserNotificationCenterObserver *)self favoritesReader];
        v31 = [v4 mailboxesToBeObserved:favoritesReader];

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v7 = v29;
        v8 = 0;
        v9 = [v7 countByEnumeratingWithState:&v36 objects:v45 count:16];
        if (v9)
        {
          v10 = *v37;
          do
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v37 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v36 + 1) + 8 * j);
              mailbox = [v12 mailbox];
              if (!mailbox || ([v31 containsObject:mailbox] & 1) == 0)
              {
                [v5 removeObject:v12];
                [(MFUserNotificationCenterObserver *)self _stopObservingStore:v12];
                v8 = 1;
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v36 objects:v45 count:16];
          }

          while (v9);
        }

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v14 = v31;
        v15 = [v14 countByEnumeratingWithState:&v32 objects:v44 count:16];
        if (v15)
        {
          v16 = *v33;
          do
          {
            for (k = 0; k != v15; k = k + 1)
            {
              if (*v33 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = [v4 storeForMailboxUid:*(*(&v32 + 1) + 8 * k)];
              if (v18 && ([v7 containsObject:v18] & 1) == 0)
              {
                [v5 addObject:v18];
                [(MFUserNotificationCenterObserver *)self _startObservingStore:v18];
                v8 = 1;
              }
            }

            v15 = [v14 countByEnumeratingWithState:&v32 objects:v44 count:16];
          }

          while (v15);
        }

        if (v8)
        {
          v19 = [v5 count];
          observedStoresByAccountID = self->_observedStoresByAccountID;
          if (v19)
          {
            v21 = v5;
          }

          else
          {
            v21 = 0;
          }

          [(NSMutableDictionary *)self->_observedStoresByAccountID setObject:v21 forKeyedSubscript:uniqueID];
          v24 = 1;
        }
      }

      v27 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v27);
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

- (MFUserNotificationCenterObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end