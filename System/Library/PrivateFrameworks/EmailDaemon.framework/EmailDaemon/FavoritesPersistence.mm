@interface FavoritesPersistence
- (BOOL)hasFavoriteMailboxes;
- (BOOL)showingOutbox;
- (FavoritesCollection)mailboxesCollection;
- (FavoritesPersistence)initWithConversationSubscriptionProvider:(id)provider accountsProvider:(id)accountsProvider mailboxPersistence:(id)persistence daemonInterface:(id)interface analyticsCollector:(id)collector;
- (id)coreAnalyticsPeriodicEvent;
- (id)dictionaryRepresentation;
- (id)favoriteMailboxesForAccount:(id)account;
- (id)indexPathForItem:(id)item;
- (id)mailboxesForAutoFetch;
- (id)orderedFavoriteMailboxesForAccount:(id)account includeUnifiedMailboxes:(BOOL)mailboxes;
- (void)_accountsDidChange:(id)change;
- (void)_focusDidChange:(id)change;
- (void)_keyValueStoreChangedExternally:(id)externally;
- (void)_mailboxListingChanged:(id)changed;
- (void)_mailboxNameChanged:(id)changed;
- (void)dealloc;
- (void)messageRepository:(id)repository query:(id)query countDidChange:(int64_t)change;
- (void)setLastSelectedItem:(id)item;
- (void)updateCollections:(id)collections changeType:(unint64_t)type withReason:(id)reason source:(id)source;
- (void)updateCollections:(id)collections forItemChangeAddedItems:(id)items removedItems:(id)removedItems withReason:(id)reason source:(id)source;
- (void)updateCollections:(id)collections forOrderChange:(unint64_t)change withReason:(id)reason source:(id)source;
- (void)userNotificationCenterSettingsDidChange:(id)change;
@end

@implementation FavoritesPersistence

- (FavoritesPersistence)initWithConversationSubscriptionProvider:(id)provider accountsProvider:(id)accountsProvider mailboxPersistence:(id)persistence daemonInterface:(id)interface analyticsCollector:(id)collector
{
  providerCopy = provider;
  accountsProviderCopy = accountsProvider;
  persistenceCopy = persistence;
  interfaceCopy = interface;
  collectorCopy = collector;
  v60.receiver = self;
  v60.super_class = FavoritesPersistence;
  v15 = [(FavoritesPersistence *)&v60 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accountsProvider, accountsProvider);
    objc_storeStrong(&v16->_conversationSubscriptionProvider, provider);
    v17 = [[MFRecursiveLock alloc] initWithName:@"FavoritesManagerLock" andDelegate:0];
    lock = v16->_lock;
    v16->_lock = v17;

    v19 = MFMailDirectory();
    v20 = [v19 stringByAppendingPathComponent:@"MailboxCollections.plist"];
    storagePath = v16->_storagePath;
    v16->_storagePath = v20;

    objc_storeStrong(&v16->_mailboxPersistence, persistence);
    objc_storeStrong(&v16->_daemonInterface, interface);
    v22 = [EFScheduler serialDispatchQueueSchedulerWithName:@"com.apple.FavoritesPersistence.writeCollectionData" qualityOfService:17];
    writeCollectionScheduler = v16->_writeCollectionScheduler;
    v16->_writeCollectionScheduler = v22;

    v24 = [EFScheduler serialDispatchQueueSchedulerWithName:@"com.apple.FavoritesPersistence.mergeExternalChanges"];
    mergeExternalChangesScheduler = v16->_mergeExternalChangesScheduler;
    v16->_mergeExternalChangesScheduler = v24;

    sub_10001F338(v16);
    v26 = +[NSNotificationCenter defaultCenter];
    v27 = MFUserAgent();
    isMaild = [v27 isMaild];

    if (isMaild)
    {
      v29 = [EFObservable observableOnNotifyTokenWithName:@"FavoritePersistenceShouldReload"];
      v30 = +[EFScheduler mainThreadScheduler];
      v31 = [v29 debounceWithTimeInterval:v30 scheduler:0.1];
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_10001FBEC;
      v57[3] = &unk_100156F68;
      v32 = v16;
      v58 = v32;
      v33 = v26;
      v59 = v33;
      v34 = [v31 subscribeWithResultBlock:v57];
      favoritesPersistenceUpdateToken = v32->_favoritesPersistenceUpdateToken;
      v32->_favoritesPersistenceUpdateToken = v34;

      [v33 postNotificationName:@"MailApplicationFavoritesDidChange" object:v32];
      v36 = [collectorCopy registerForLogEventsWithPeriodicDataProvider:v32];
    }

    [v26 addObserver:v16 selector:"_mailboxListingChanged:" name:AccountMailboxListingDidChange object:0];
    [v26 addObserver:v16 selector:"_mailboxNameChanged:" name:MFMailboxUidWasRenamedNotification object:0];
    [v26 addObserver:v16 selector:"_accountsDidChange:" name:ECMailAccountsDidChangeNotification object:0];
    [v26 addObserver:v16 selector:"_focusDidChange:" name:@"MFFocusDidChangeNotification" object:0];
    v37 = MFUserAgent();
    isMaild2 = [v37 isMaild];

    if (isMaild2)
    {
      [v26 addObserver:v16 selector:"_keyValueStoreChangedExternally:" name:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:0];
    }

    else
    {
      v39 = [NSUbiquitousKeyValueStore additionalStoreWithIdentifier:@"com.apple.mail.favorites"];
      kvStore = v16->_kvStore;
      v16->_kvStore = v39;

      if (v16->_kvStore)
      {
        [v26 addObserver:v16 selector:"_keyValueStoreChangedExternally:" name:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:?];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10001FC78;
        block[3] = &unk_1001563D8;
        v55 = v26;
        v56 = v16;
        dispatch_async(&_dispatch_main_q, block);

        v41 = v55;
      }

      else
      {
        v41 = sub_10001EB38();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v62 = @"com.apple.mail.favorites";
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "failed to create kv store for %@", buf, 0xCu);
        }
      }
    }

    v42 = +[NSUserDefaults em_userDefaults];
    v43 = EMUserDefaultDisableFollowUp;
    v16->_hideFollowUp = [v42 BOOLForKey:EMUserDefaultDisableFollowUp];
    objc_initWeak(buf, v16);
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_10001FD3C;
    v51[3] = &unk_100156F90;
    objc_copyWeak(&v53, buf);
    v44 = v42;
    v52 = v44;
    v45 = [v44 ef_observeKeyPath:v43 options:1 autoCancelToken:1 usingBlock:v51];
    userDefaultsObserver = v16->_userDefaultsObserver;
    v16->_userDefaultsObserver = v45;

    objc_destroyWeak(&v53);
    objc_destroyWeak(buf);
  }

  return v16;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = FavoritesPersistence;
  [(FavoritesPersistence *)&v4 dealloc];
}

- (BOOL)showingOutbox
{
  [(NSRecursiveLock *)self->_lock lock];
  showingOutbox = self->_showingOutbox;
  [(NSRecursiveLock *)self->_lock unlock];
  return showingOutbox;
}

- (void)setLastSelectedItem:(id)item
{
  itemCopy = item;
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_lastSelectedItem != itemCopy)
  {
    objc_storeStrong(&self->_lastSelectedItem, item);
    itemCopy = [NSString stringWithFormat:@"setLastSelectedItem: %@", itemCopy];
    sub_1000217A8(self, itemCopy);
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (FavoritesCollection)mailboxesCollection
{
  [(NSRecursiveLock *)self->_lock lock];
  if ([(NSMutableArray *)self->_mailboxCollections count])
  {
    v3 = [(NSMutableArray *)self->_mailboxCollections objectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (id)mailboxesForAutoFetch
{
  v3 = [NSMutableSet alloc];
  v4 = sub_100021E20(self, 7);
  v5 = [v3 initWithArray:v4];

  [(NSRecursiveLock *)self->_lock lock];
  mailboxesCollection = [(FavoritesPersistence *)self mailboxesCollection];
  visibleItems = [mailboxesCollection visibleItems];

  includeFavoriteMailboxesDuringFetch = self->_includeFavoriteMailboxesDuringFetch;
  [(NSRecursiveLock *)self->_lock unlock];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = visibleItems;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if ([v13 type] == 4)
        {
          representingMailbox = v13;
          v15 = sub_100021E20(self, [representingMailbox mailboxType]);
          [v5 addObjectsFromArray:v15];

LABEL_14:
          continue;
        }

        if ([v13 type] == 2 && includeFavoriteMailboxesDuringFetch)
        {
          representingMailbox = [v13 representingMailbox];
          if (representingMailbox)
          {
            [v5 addObject:representingMailbox];
          }

          goto LABEL_14;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  allObjects = [v5 allObjects];

  return allObjects;
}

- (id)indexPathForItem:(id)item
{
  itemCopy = item;
  v5 = sub_100021A2C(self);
  for (i = 0; ; ++i)
  {
    if (i >= [v5 count])
    {
      v10 = 0;
      goto LABEL_7;
    }

    v7 = [v5 objectAtIndex:i];
    visibleItems = [v7 visibleItems];
    v9 = [visibleItems indexOfObject:itemCopy];

    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }
  }

  v10 = [NSIndexPath indexPathForRow:v9 inSection:i];

LABEL_7:

  return v10;
}

- (void)updateCollections:(id)collections changeType:(unint64_t)type withReason:(id)reason source:(id)source
{
  collectionsCopy = collections;
  reasonCopy = reason;
  sourceCopy = source;
  sub_1000221E4(self, collectionsCopy, reasonCopy);
  [(NSRecursiveLock *)self->_lock lock];
  v12 = [collectionsCopy mutableCopy];
  mailboxCollections = self->_mailboxCollections;
  self->_mailboxCollections = v12;

  visibleMailboxCollections = self->_visibleMailboxCollections;
  self->_visibleMailboxCollections = 0;

  [(NSRecursiveLock *)self->_lock unlock];
  if (type != 2)
  {
    sub_1000D2414(self, sourceCopy);
  }
}

- (void)updateCollections:(id)collections forItemChangeAddedItems:(id)items removedItems:(id)removedItems withReason:(id)reason source:(id)source
{
  collectionsCopy = collections;
  itemsCopy = items;
  removedItemsCopy = removedItems;
  reasonCopy = reason;
  sourceCopy = source;
  [(FavoritesPersistence *)self updateCollections:collectionsCopy changeType:0 withReason:reasonCopy source:sourceCopy];
  [(NSRecursiveLock *)self->_lock lock];
  sub_100022C04(&self->super.isa, itemsCopy, removedItemsCopy);
  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)updateCollections:(id)collections forOrderChange:(unint64_t)change withReason:(id)reason source:(id)source
{
  collectionsCopy = collections;
  reasonCopy = reason;
  sourceCopy = source;
  [(FavoritesPersistence *)self updateCollections:collectionsCopy changeType:1 withReason:reasonCopy source:sourceCopy];
  +[NSNotificationCenter defaultCenter];
  if (change)
    v12 = {;
    [v12 postNotificationName:@"MailApplicationFavoritesOrderDidChange" object:0];
  }

  else
    v12 = {;
    [v12 postNotificationName:@"MailApplicationAccountsOrderDidChange" object:0];
  }
}

- (void)_keyValueStoreChangedExternally:(id)externally
{
  userInfo = [externally userInfo];
  v5 = [userInfo objectForKey:NSUbiquitousKeyValueStoreChangeReasonKey];
  integerValue = [v5 integerValue];

  if (integerValue == 2)
  {
    v7 = sub_10001EB38();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000D3248(v7);
    }
  }

  else
  {
    v8 = [userInfo objectForKey:NSUbiquitousKeyValueStoreChangedKeysKey];
    sub_1000231BC(self, integerValue, v8);
  }
}

- (void)_accountsDidChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:ECMailAccountsDidChangeNotificationKeyPreviousAccountIdentifiers];

  userInfo2 = [changeCopy userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:ECMailAccountsDidChangeNotificationKeyAccountIdentifiers];

  v16 = [v6 isEqualToSet:v8] ^ 1;
  v9 = v6;
  v13 = v9;
  v10 = v8;
  v14 = v10;
  selfCopy = self;
  v11 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v11 performBlock:&v12];
}

- (void)_focusDidChange:(id)change
{
  selfCopy = self;
  changeCopy = change;
  v7 = changeCopy;
  v4 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v4 performBlock:&v5];
}

- (void)_mailboxListingChanged:(id)changed
{
  changedCopy = changed;
  v6 = sub_10001EB38();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138543362;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100024758;
  v9[3] = &unk_1001563D8;
  v10 = changedCopy;
  selfCopy = self;
  v8 = changedCopy;
  dispatch_async(&_dispatch_main_q, v9);
}

- (void)_mailboxNameChanged:(id)changed
{
  changedCopy = changed;
  [(NSRecursiveLock *)self->_lock lock];
  object = [changedCopy object];
  mailboxesCollection = [(FavoritesPersistence *)self mailboxesCollection];
  [mailboxesCollection itemsOfType:2];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v7 = v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v16 + 1) + 8 * v10);
      representingMailbox = [v11 representingMailbox];
      if ([representingMailbox isEqual:object])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v8 = v11;

    if (!v8)
    {
      goto LABEL_14;
    }

    syncKey = [v8 syncKey];
    if ([v8 shouldSync])
    {
      [v8 wasChangedExternally];
      v14 = sub_100023038(self, v8);
      [(NSUbiquitousKeyValueStore *)self->_kvStore setObject:v14 forKey:syncKey];
      [(NSUbiquitousKeyValueStore *)self->_kvStore synchronize];
      v15 = [NSString stringWithFormat:@"_mailboxNameChanged: changedItem: %@", v8];
      sub_1000217A8(self, v15);
    }
  }

  else
  {
LABEL_9:
    syncKey = v7;
  }

LABEL_14:
  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)userNotificationCenterSettingsDidChange:(id)change
{
  changeCopy = change;
  v4 = [changeCopy objectForKeyedSubscript:MSUserNotificationCenterTopicFavoriteMailboxes];
  v5 = [v4 alertSetting] == 2 || objc_msgSend(v4, "notificationCenterSetting") == 2 || objc_msgSend(v4, "lockScreenSetting") == 2;
  [(NSRecursiveLock *)self->_lock lock];
  self->_includeFavoriteMailboxesDuringFetch = v5;
  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)messageRepository:(id)repository query:(id)query countDidChange:(int64_t)change
{
  v7 = change > 0;
  v8 = MFLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218240;
    changeCopy = change;
    v13 = 2048;
    v14 = change > 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#Favorites Outbox countDidChange to: %lld shouldShow: %lld", &v11, 0x16u);
  }

  [(NSRecursiveLock *)self->_lock lock];
  if (self->_showingOutbox == v7)
  {
    [(NSRecursiveLock *)self->_lock unlock];
  }

  else
  {
    self->_showingOutbox = v7;
    [(NSRecursiveLock *)self->_lock unlock];
    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#Favorites Posting notifications for outbox visibility change", &v11, 2u);
    }

    visibleMailboxCollections = self->_visibleMailboxCollections;
    self->_visibleMailboxCollections = 0;

    sub_1000D2414(self, 0);
  }
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = objc_alloc_init(NSMutableArray);
  [(NSRecursiveLock *)self->_lock lock];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_mailboxCollections;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (([v9 transient] & 1) == 0)
        {
          dictionaryRepresentation = [v9 dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  [(NSRecursiveLock *)self->_lock unlock];
  [v3 setObject:v4 forKeyedSubscript:@"Collections"];
  lastSelectedItem = self->_lastSelectedItem;
  if (lastSelectedItem)
  {
    dictionaryRepresentation2 = [(FavoriteItem *)lastSelectedItem dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKeyedSubscript:@"LastSelectedItem"];
  }

  return v3;
}

- (BOOL)hasFavoriteMailboxes
{
  mailboxesCollection = [(FavoritesPersistence *)self mailboxesCollection];
  visibleItems = [mailboxesCollection visibleItems];
  v4 = [visibleItems ef_any:&stru_1001571E0];

  return v4;
}

- (id)favoriteMailboxesForAccount:(id)account
{
  v3 = [(FavoritesPersistence *)self orderedFavoriteMailboxesForAccount:account includeUnifiedMailboxes:0];
  v4 = [v3 set];

  return v4;
}

- (id)orderedFavoriteMailboxesForAccount:(id)account includeUnifiedMailboxes:(BOOL)mailboxes
{
  accountCopy = account;
  v21 = objc_alloc_init(NSMutableOrderedSet);
  if (mailboxes)
  {
    mailboxesCollection = [(FavoritesPersistence *)self mailboxesCollection];
    visibleItems = [mailboxesCollection visibleItems];
  }

  else
  {
    visibleItems = sub_100021C88(self, 2);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = visibleItems;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        if ([v13 type] != 2)
        {
          if ([v13 type] != 4)
          {
            continue;
          }

          representingMailboxes = [v13 representingMailboxes];
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_100025CE8;
          v22[3] = &unk_100157208;
          v23 = accountCopy;
          v19 = [representingMailboxes ef_filter:v22];

          [v21 addObjectsFromArray:v19];
          representingMailbox = v23;
          goto LABEL_15;
        }

        v14 = v13;
        account = [v14 account];
        v16 = account == accountCopy;

        if (v16)
        {
          representingMailbox = [v14 representingMailbox];
          if (representingMailbox)
          {
            [v21 addObject:representingMailbox];
          }

LABEL_15:
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  return v21;
}

- (id)coreAnalyticsPeriodicEvent
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  mailboxesCollection = [(FavoritesPersistence *)self mailboxesCollection];
  selectedItems = [mailboxesCollection selectedItems];

  v6 = [selectedItems countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(selectedItems);
        }

        analyticsKey = [*(*(&v16 + 1) + 8 * i) analyticsKey];
        if (analyticsKey)
        {
          v10 = [v3 objectForKeyedSubscript:analyticsKey];
          integerValue = [v10 integerValue];

          if (integerValue >= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = integerValue;
          }

          v13 = [NSNumber numberWithInteger:v12 + 1];
          [v3 setObject:v13 forKeyedSubscript:analyticsKey];
        }
      }

      v6 = [selectedItems countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = [[EMCoreAnalyticsEvent alloc] initWithEventName:@"com.apple.mail.mailboxes.favorites.configuration" collectionData:v3];

  return v14;
}

@end