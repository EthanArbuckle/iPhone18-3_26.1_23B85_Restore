@interface BBSyncService
- (BBSyncService)initWithDelegate:(id)delegate queue:(id)queue;
- (BBSyncServiceDelegate)delegate;
- (BOOL)_hasDestination;
- (BOOL)_syncHasDefaultPairedDevice;
- (id)_dismissalDictionaryForBulletin:(id)bulletin;
- (id)_platformFromDeviceType:(int64_t)type;
- (id)_syncAccount;
- (unint64_t)pairedDeviceCount;
- (void)_reallyEnqueueBulletin:(id)bulletin feeds:(unint64_t)feeds;
- (void)_reallySend;
- (void)_sendSyncMessage:(id)message;
- (void)_startTimerIfNecessary;
- (void)_stopTimer;
- (void)dealloc;
- (void)enqueueSyncedRemovalForBulletin:(id)bulletin feeds:(unint64_t)feeds;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d;
- (void)service:(id)service activeAccountsChanged:(id)changed;
@end

@implementation BBSyncService

- (BBSyncService)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = BBSyncService;
  v8 = [(BBSyncService *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v9->_queue, queue);
    v10 = [MEMORY[0x277CBEB58] set];
    pendingDismissalIDs = v9->_pendingDismissalIDs;
    v9->_pendingDismissalIDs = v10;

    v12 = [MEMORY[0x277CBEB58] set];
    pendingDismissalDictionaries = v9->_pendingDismissalDictionaries;
    v9->_pendingDismissalDictionaries = v12;

    v14 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.bulletinboard"];
    service = v9->_service;
    v9->_service = v14;

    [(IDSService *)v9->_service addDelegate:v9 queue:v9->_queue];
    v16 = v9;
  }

  return v9;
}

- (void)dealloc
{
  [(BSContinuousMachTimer *)self->_sendTimer invalidate];
  v3.receiver = self;
  v3.super_class = BBSyncService;
  [(BBSyncService *)&v3 dealloc];
}

- (unint64_t)pairedDeviceCount
{
  devices = [(IDSService *)self->_service devices];
  v3 = [devices count];

  return v3;
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  v4 = BBLogSync;
  if (os_log_type_enabled(BBLogSync, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "IDS activeAccountsChanged", v5, 2u);
  }
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d
{
  v38 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
  v11 = [service deviceForFromID:dCopy];
  if (v11)
  {
    v12 = [messageCopy objectForKey:@"f"];
    unsignedIntegerValue = [v12 unsignedIntegerValue];

    v14 = [messageCopy objectForKey:@"s"];
    v15 = [messageCopy objectForKey:@"u"];
    v29 = [messageCopy objectForKey:@"b"];
    v16 = [messageCopy objectForKey:@"m"];
    v17 = BBLogSync;
    if (os_log_type_enabled(BBLogSync, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      name = [v11 name];
      *buf = 138413058;
      v31 = messageCopy;
      v32 = 2114;
      v33 = v14;
      v34 = 2114;
      v35 = v15;
      v36 = 2114;
      v37 = name;
      _os_log_impl(&dword_241EFF000, v18, OS_LOG_TYPE_DEFAULT, "Received IDS message %@ for %{public}@ and %{public}@ from %{public}@", buf, 0x2Au);
    }

    if (v14)
    {
      v20 = -[BBSyncService _platformFromDeviceType:](self, "_platformFromDeviceType:", [v11 deviceType]);
      if (v20)
      {
        v28 = unsignedIntegerValue;
        mEMORY[0x277CF9650] = [MEMORY[0x277CF9650] sharedCategories];
        v22 = [mEMORY[0x277CF9650] bundleIDForPlatform:*MEMORY[0x277CF9638] fromBundleID:v14 platform:v20];

        if ([v22 length])
        {
          v23 = BBLogSync;
          if (os_log_type_enabled(BBLogSync, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v31 = v14;
            v32 = 2114;
            v33 = v22;
            _os_log_impl(&dword_241EFF000, v23, OS_LOG_TYPE_DEFAULT, "Mapping bundle id using categories: %{public}@ -> %{public}@", buf, 0x16u);
          }

          v24 = v22;

          v14 = v24;
        }

        unsignedIntegerValue = v28;
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained syncService:self receivedDismissalDictionaries:v29 dismissalIDs:v16 inSection:v14 universalSectionID:v15 forFeeds:unsignedIntegerValue];
  }

  else
  {
    v26 = BBLogSync;
    if (os_log_type_enabled(BBLogSync, OS_LOG_TYPE_ERROR))
    {
      [BBSyncService service:dCopy account:v26 incomingMessage:? fromID:?];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)enqueueSyncedRemovalForBulletin:(id)bulletin feeds:(unint64_t)feeds
{
  bulletinCopy = bulletin;
  dispatch_assert_queue_V2(self->_queue);
  if ([(BBSyncService *)self _hasDestination])
  {
    [(BBSyncService *)self _reallyEnqueueBulletin:bulletinCopy feeds:feeds];
  }
}

- (id)_syncAccount
{
  accounts = [(IDSService *)self->_service accounts];
  anyObject = [accounts anyObject];

  return anyObject;
}

- (BOOL)_hasDestination
{
  _syncAccount = [(BBSyncService *)self _syncAccount];
  if (_syncAccount)
  {
    _syncHasDefaultPairedDevice = 1;
  }

  else
  {
    _syncHasDefaultPairedDevice = [(BBSyncService *)self _syncHasDefaultPairedDevice];
  }

  return _syncHasDefaultPairedDevice;
}

- (void)_reallyEnqueueBulletin:(id)bulletin feeds:(unint64_t)feeds
{
  v20 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  dispatch_assert_queue_V2(self->_queue);
  sectionID = [bulletinCopy sectionID];
  if (self->_queuedFeed != feeds || ![(NSString *)self->_queuedSectionID isEqualToString:sectionID])
  {
    [(BBSyncService *)self _reallySend];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = [WeakRetained syncService:self universalSectionIdentifierForSectionIdentifier:sectionID];

    self->_queuedFeed = feeds;
    objc_storeStrong(&self->_queuedSectionID, sectionID);
    queuedUniversalSectionID = self->_queuedUniversalSectionID;
    self->_queuedUniversalSectionID = v9;
  }

  v11 = BBLogSync;
  if (os_log_type_enabled(BBLogSync, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    bulletinID = [bulletinCopy bulletinID];
    v18 = 138412290;
    v19 = bulletinID;
    _os_log_impl(&dword_241EFF000, v12, OS_LOG_TYPE_DEFAULT, "really enqueueing bulletin %@", &v18, 0xCu);
  }

  dismissalID = [bulletinCopy dismissalID];
  if (dismissalID)
  {
    [(NSMutableSet *)self->_pendingDismissalIDs addObject:dismissalID];
  }

  else
  {
    pendingDismissalDictionaries = self->_pendingDismissalDictionaries;
    v16 = [(BBSyncService *)self _dismissalDictionaryForBulletin:bulletinCopy];
    [(NSMutableSet *)pendingDismissalDictionaries addObject:v16];
  }

  [(BBSyncService *)self _startTimerIfNecessary];

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)_syncHasDefaultPairedDevice
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  devices = [(IDSService *)self->_service devices];
  v3 = [devices countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(devices);
        }

        if ([*(*(&v8 + 1) + 8 * i) isDefaultPairedDevice])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [devices countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)_reallySend
{
  dispatch_assert_queue_V2(self->_queue);
  [(BBSyncService *)self _stopTimer];
  if (self->_queuedSectionID)
  {
    if (self->_queuedFeed)
    {
      v3 = [(NSMutableSet *)self->_pendingDismissalDictionaries count];
      v4 = [(NSMutableSet *)self->_pendingDismissalIDs count];
      if (v3 | v4)
      {
        v5 = v4;
        v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
        [v11 bs_setSafeObject:self->_queuedSectionID forKey:@"s"];
        [v11 bs_setSafeObject:self->_queuedUniversalSectionID forKey:@"u"];
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_queuedFeed];
        [v11 bs_setSafeObject:v6 forKey:@"f"];

        if (v3)
        {
          allObjects = [(NSMutableSet *)self->_pendingDismissalDictionaries allObjects];
          [v11 bs_setSafeObject:allObjects forKey:@"b"];
        }

        if (v5)
        {
          allObjects2 = [(NSMutableSet *)self->_pendingDismissalIDs allObjects];
          [v11 bs_setSafeObject:allObjects2 forKey:@"m"];
        }

        [(BBSyncService *)self _sendSyncMessage:v11];
        [(NSMutableSet *)self->_pendingDismissalDictionaries removeAllObjects];
        [(NSMutableSet *)self->_pendingDismissalIDs removeAllObjects];
        queuedSectionID = self->_queuedSectionID;
        self->_queuedFeed = 0;
        self->_queuedSectionID = 0;

        queuedUniversalSectionID = self->_queuedUniversalSectionID;
        self->_queuedUniversalSectionID = 0;
      }
    }
  }
}

- (void)_sendSyncMessage:(id)message
{
  v24 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  _syncAccount = [(BBSyncService *)self _syncAccount];
  if (_syncAccount)
  {
    v6 = IDSCopyIDForAccount();
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v6, 0}];
    }

    else
    {
      v7 = 0;
    }

    v9 = BBLogSync;
    if (os_log_type_enabled(BBLogSync, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = v7;
      v22 = 2112;
      v23 = messageCopy;
      _os_log_impl(&dword_241EFF000, v9, OS_LOG_TYPE_DEFAULT, "_sendSyncMessage sending IDS message toCloudDestinations: %@ message : %@", buf, 0x16u);
    }

    v10 = objc_alloc(MEMORY[0x277CBEB38]);
    v11 = [v10 initWithObjectsAndKeys:{MEMORY[0x277CBEC28], *MEMORY[0x277D185A0], &unk_28542E878, *MEMORY[0x277D18650], 0}];
    service = self->_service;
    v18 = 0;
    v19 = 0;
    v13 = [(IDSService *)service sendMessage:messageCopy toDestinations:v7 priority:100 options:v11 identifier:&v19 error:&v18];
    v14 = v19;
    v15 = v18;
    if ((v13 & 1) == 0)
    {
      v16 = BBLogSync;
      if (os_log_type_enabled(BBLogSync, OS_LOG_TYPE_ERROR))
      {
        [(BBSyncService *)v15 _sendSyncMessage:v16];
      }
    }
  }

  else
  {
    v8 = BBLogSync;
    if (os_log_type_enabled(BBLogSync, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241EFF000, v8, OS_LOG_TYPE_DEFAULT, "_sendSyncMessage no syncAccount", buf, 2u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_dismissalDictionaryForBulletin:(id)bulletin
{
  v3 = MEMORY[0x277CBEB38];
  bulletinCopy = bulletin;
  dictionary = [v3 dictionary];
  syncHash = [bulletinCopy syncHash];
  [dictionary setObject:syncHash forKey:@"h"];

  date = [bulletinCopy date];

  if (date)
  {
    v8 = MEMORY[0x277CCABB0];
    [date timeIntervalSince1970];
    v9 = [v8 numberWithDouble:?];
    [dictionary setObject:v9 forKey:@"d"];
  }

  return dictionary;
}

- (void)_startTimerIfNecessary
{
  if (!self->_sendTimer)
  {
    objc_initWeak(&location, self);
    v3 = [objc_alloc(MEMORY[0x277CF0BD8]) initWithIdentifier:@"com.apple.bulletinboard.BBSyncService.sendTimer"];
    sendTimer = self->_sendTimer;
    self->_sendTimer = v3;

    v5 = self->_sendTimer;
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__BBSyncService__startTimerIfNecessary__block_invoke;
    v7[3] = &unk_278D2C1E0;
    objc_copyWeak(&v8, &location);
    [(BSContinuousMachTimer *)v5 scheduleWithFireInterval:queue leewayInterval:v7 queue:0.1 handler:0.1];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __39__BBSyncService__startTimerIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reallySend];
}

- (void)_stopTimer
{
  sendTimer = self->_sendTimer;
  if (sendTimer)
  {
    [(BSContinuousMachTimer *)sendTimer invalidate];
    v4 = self->_sendTimer;
    self->_sendTimer = 0;
  }
}

- (id)_platformFromDeviceType:(int64_t)type
{
  if ((type - 1) > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&unk_278D2C200 + type - 1);
  }

  return v4;
}

- (BBSyncServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)service:(uint64_t)a1 account:(NSObject *)a2 incomingMessage:fromID:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241EFF000, a2, OS_LOG_TYPE_ERROR, "Received IDS message from invalid device: %@.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_sendSyncMessage:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_241EFF000, a2, OS_LOG_TYPE_ERROR, "sending to cloud failed with error : %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end