@interface MSPSyncManager
- (BOOL)service:(id)service startSession:(id)session error:(id *)error;
- (BOOL)syncSession:(id)session resetDataStoreWithError:(id *)error;
- (MSPSyncManager)init;
- (id)_wrapPin:(id)pin changeType:(int64_t)type;
- (id)pins;
- (unsigned)syncSession:(id)session enqueueChanges:(id)changes error:(id *)error;
- (void)_addPin:(id)pin;
- (void)_applyAddItem:(id)item;
- (void)_applyDeleteItem:(id)item;
- (void)_applyUpdateItem:(id)item;
- (void)_clearAllNanoPersistableData;
- (void)_notifyObservers;
- (void)_removePin:(id)pin;
- (void)_resumeSyncService;
- (void)_setHasChangesAvailable;
- (void)_updateFromDisk;
- (void)_updatePin:(id)pin;
- (void)service:(id)service didSwitchFromPairingID:(id)d toPairingID:(id)iD;
- (void)setDroppedPin:(id)pin;
- (void)setNeedsFullSync;
- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion;
- (void)syncSession:(id)session didEndWithError:(id)error;
@end

@implementation MSPSyncManager

- (MSPSyncManager)init
{
  v15.receiver = self;
  v15.super_class = MSPSyncManager;
  v2 = [(MSPSyncManager *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.companionsync.save", v3);
    saveQueue = v2->_saveQueue;
    v2->_saveQueue = v4;

    [(MSPSyncManager *)v2 _updateFromDisk];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v6 = getSYServiceClass_softClass;
    v24 = getSYServiceClass_softClass;
    if (!getSYServiceClass_softClass)
    {
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __getSYServiceClass_block_invoke;
      v19 = &unk_279866440;
      v20 = &v21;
      __getSYServiceClass_block_invoke(&v16);
      v6 = v22[3];
    }

    v7 = v6;
    _Block_object_dispose(&v21, 8);
    v8 = [[v6 alloc] initWithService:@"com.apple.private.alloy.maps.sync" priority:0 asMasterStore:1 options:0];
    service = v2->_service;
    v2->_service = v8;

    [(SYService *)v2->_service setDelegate:v2 queue:v2->_saveQueue];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v10 = getNRPairedDeviceRegistryClass_softClass_0;
    v24 = getNRPairedDeviceRegistryClass_softClass_0;
    if (!getNRPairedDeviceRegistryClass_softClass_0)
    {
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __getNRPairedDeviceRegistryClass_block_invoke_0;
      v19 = &unk_279866440;
      v20 = &v21;
      __getNRPairedDeviceRegistryClass_block_invoke_0(&v16);
      v10 = v22[3];
    }

    v11 = v10;
    _Block_object_dispose(&v21, 8);
    sharedInstance = [v10 sharedInstance];
    getActivePairedDevice = [sharedInstance getActivePairedDevice];

    if (getActivePairedDevice)
    {
      [(MSPSyncManager *)v2 _resumeSyncService];
    }
  }

  return v2;
}

- (void)_resumeSyncService
{
  service = self->_service;
  v3 = 0;
  [(SYService *)service resume:&v3];
}

- (void)setNeedsFullSync
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D0E798];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = NSStringFromSelector(a2);
    resetSyncRequested = self->_resetSyncRequested;
    v9 = 138478083;
    v10 = v6;
    v11 = 1024;
    v12 = resetSyncRequested;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEBUG, "com.apple.pairedsync.mapssync Isync:%{private}@ (resetSyncRequested:%i)", &v9, 0x12u);
  }

  if (!self->_resetSyncRequested)
  {
    self->_resetSyncRequested = 1;
    [(SYService *)self->_service setNeedsResetSync];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_setHasChangesAvailable
{
  if (!self->_resetSyncRequested)
  {
    v3 = self->_pendingSyncItems;
    objc_sync_enter(v3);
    v4 = [(NSMutableArray *)self->_pendingSyncItems count];
    objc_sync_exit(v3);

    if (v4)
    {
      service = self->_service;

      [(SYService *)service setHasChangesAvailable];
    }
  }
}

- (BOOL)service:(id)service startSession:(id)session error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  sessionCopy = session;
  v9 = *MEMORY[0x277D0E798];
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    resetSyncRequested = self->_resetSyncRequested;
    *buf = 138478083;
    v28 = @"startSession";
    v29 = 1024;
    v30 = resetSyncRequested;
    _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_DEBUG, "com.apple.pairedsync.mapssync Isync:%{private}@ (resetSyncRequested:%i)", buf, 0x12u);
  }

  if (self->_resetSyncRequested)
  {
    self->_resetSyncRequested = 0;
    v12 = self->_pendingSyncItems;
    objc_sync_enter(v12);
    [(MSPSyncManager *)self _updateFromDisk];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = self->_pins;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = *v23;
      do
      {
        v16 = 0;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v13);
          }

          pendingSyncItems = self->_pendingSyncItems;
          v18 = [(MSPSyncManager *)self _wrapPin:*(*(&v22 + 1) + 8 * v16) changeType:1, v22];
          [(NSMutableArray *)pendingSyncItems addObject:v18];

          ++v16;
        }

        while (v14 != v16);
        v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    objc_sync_exit(v12);
    [(MSPSyncManager *)self preparingSync];
  }

  [sessionCopy setDelegate:{self, v22}];
  v19 = objc_alloc_init(MSPSerializer);
  [sessionCopy setSerializer:v19];

  [sessionCopy setTargetQueue:self->_saveQueue];
  v20 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)service:(id)service didSwitchFromPairingID:(id)d toPairingID:(id)iD
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v9 = *MEMORY[0x277D0E798];
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138478083;
    v14 = dCopy;
    v15 = 2113;
    v16 = iDCopy;
    _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_DEBUG, "com.apple.pairedsync.mapssync Isync:didSwitchFromPairingID:%{private}@ toPairingID:%{private}@", buf, 0x16u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__MSPSyncManager_service_didSwitchFromPairingID_toPairingID___block_invoke;
  block[3] = &unk_279866158;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v11 = *MEMORY[0x277D85DE8];
}

- (unsigned)syncSession:(id)session enqueueChanges:(id)changes error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  changesCopy = changes;
  v32 = *MEMORY[0x277D0E798];
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v50 = @"enqueueChanges";
    _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_DEBUG, "com.apple.pairedsync.mapssync Isync:%{private}@", buf, 0xCu);
  }

  obja = self->_pendingSyncItems;
  objc_sync_enter(obja);
  v38 = [(NSMutableArray *)self->_pendingSyncItems mutableCopy];
  array = [MEMORY[0x277CBEB18] array];
  pendingSyncItems = self->_pendingSyncItems;
  self->_pendingSyncItems = array;

  objc_sync_exit(obja);
  firstObject = [v38 firstObject];
  if (firstObject)
  {
    v11 = firstObject;
    while (1)
    {
      v37 = v11;
      if ((changesCopy[2]() & 1) == 0)
      {
        break;
      }

      [v38 removeObjectAtIndex:0];
      firstObject2 = [v38 firstObject];

      v11 = firstObject2;
      if (!firstObject2)
      {
        goto LABEL_7;
      }
    }

    obj = self->_pendingSyncItems;
    objc_sync_enter(obj);
    v15 = [MEMORY[0x277CBEB58] setWithCapacity:{-[NSMutableArray count](self->_pendingSyncItems, "count")}];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v16 = self->_pendingSyncItems;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v17)
    {
      v18 = *v44;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v44 != v18)
          {
            objc_enumerationMutation(v16);
          }

          syncId = [*(*(&v43 + 1) + 8 * i) syncId];
          [v15 addObject:syncId];
        }

        v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v17);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v21 = v38;
    v22 = [v21 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v22)
    {
      v23 = 0;
      v24 = *v40;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v40 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v39 + 1) + 8 * j);
          syncId2 = [v26 syncId];
          v28 = [v15 containsObject:syncId2];

          if ((v28 & 1) == 0)
          {
            [(NSMutableArray *)self->_pendingSyncItems insertObject:v26 atIndex:v23++];
          }
        }

        v22 = [v21 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v22);
    }

    objc_sync_exit(obj);
    v29 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138477827;
      v50 = @"continue";
      _os_log_impl(&dword_25813A000, v29, OS_LOG_TYPE_DEBUG, "com.apple.pairedsync.mapssync Isync:%{private}@", buf, 0xCu);
    }

    v13 = 1;
    v14 = v37;
  }

  else
  {
LABEL_7:
    if ([sessionCopy isResetSync])
    {
      [(MSPSyncManager *)self completedPreparingSync];
    }

    GEOFindOrCreateLog();
    v14 = v13 = 2;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138477827;
      v50 = @"sendComplete";
      _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEBUG, "com.apple.pairedsync.mapssync Isync:%{private}@", buf, 0xCu);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  completionCopy = completion;
  v9 = *MEMORY[0x277D0E798];
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v25 = @"applyChanges";
    _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_DEBUG, "com.apple.pairedsync.mapssync Isync:%{private}@", buf, 0xCu);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = changesCopy;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        changeType = [v16 changeType];
        switch(changeType)
        {
          case 3:
            [(MSPSyncManager *)self _applyDeleteItem:v16];
            break;
          case 2:
            [(MSPSyncManager *)self _applyUpdateItem:v16];
            break;
          case 1:
            [(MSPSyncManager *)self _applyAddItem:v16];
            break;
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
    [(MSPSyncManager *)self _notifyObservers];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)syncSession:(id)session didEndWithError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  errorCopy = error;
  v8 = *MEMORY[0x277D0E798];
  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138478339;
    v12 = @"complete";
    v13 = 1024;
    isResetSync = [sessionCopy isResetSync];
    v15 = 2113;
    v16 = errorCopy;
    _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEBUG, "com.apple.pairedsync.mapssync Isync:%{private}@ (resetSync:%i error:%{private}@)", &v11, 0x1Cu);
  }

  if ([sessionCopy isResetSync])
  {
    [(MSPSyncManager *)self completedSync];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)syncSession:(id)session resetDataStoreWithError:(id *)error
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D0E798];
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138477827;
    v10 = @"resetDataStore";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "com.apple.pairedsync.mapssync Isync:%{private}@", &v9, 0xCu);
  }

  [(MSPSyncManager *)self _clearAllNanoPersistableData];
  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_clearAllNanoPersistableData
{
  [(NSMutableArray *)self->_pins removeAllObjects];
  [(NSMutableDictionary *)self->_pinsMap removeAllObjects];
  obj = self->_pendingSyncItems;
  objc_sync_enter(obj);
  [(NSMutableArray *)self->_pendingSyncItems removeAllObjects];
  objc_sync_exit(obj);
}

- (void)_applyAddItem:(id)item
{
  itemCopy = item;
  if ([itemCopy hasPin])
  {
    v4 = [itemCopy pin];
    [(MSPSyncManager *)self _addPin:v4];
  }
}

- (void)_applyUpdateItem:(id)item
{
  itemCopy = item;
  if ([itemCopy hasPin])
  {
    v4 = [itemCopy pin];
    [(MSPSyncManager *)self _updatePin:v4];
  }
}

- (void)_applyDeleteItem:(id)item
{
  itemCopy = item;
  if ([itemCopy hasPin])
  {
    v4 = [itemCopy pin];
    [(MSPSyncManager *)self _removePin:v4];
  }
}

- (void)_notifyObservers
{
  v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_pins copyItems:1];
  saveQueue = self->_saveQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__MSPSyncManager__notifyObservers__block_invoke;
  v6[3] = &unk_279865EF8;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(saveQueue, v6);
}

uint64_t __34__MSPSyncManager__notifyObservers__block_invoke(uint64_t a1)
{
  [*(a1 + 32) writePins:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 notifyObservers];
}

- (void)_updateFromDisk
{
  v24 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  pendingSyncItems = self->_pendingSyncItems;
  self->_pendingSyncItems = array;

  readPins = [(MSPSyncManager *)self readPins];
  v6 = [readPins mutableCopy];
  pins = self->_pins;
  self->_pins = v6;

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  pinsMap = self->_pinsMap;
  self->_pinsMap = dictionary;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = self->_pins;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = self->_pinsMap;
        identifier = [v15 identifier];
        [(NSMutableDictionary *)v16 setObject:v15 forKeyedSubscript:identifier];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_wrapPin:(id)pin changeType:(int64_t)type
{
  pinCopy = pin;
  v6 = objc_alloc_init(MSPCompanionSyncedItem);
  identifier = [pinCopy identifier];
  v8 = [MSPCompanionSyncedItem syncIdWithPrefix:@"pin:" identifier:identifier];
  [(MSPCompanionSyncedItem *)v6 setSyncId:v8];

  [(MSPCompanionSyncedItem *)v6 setPin:pinCopy];
  [(MSPCompanionSyncedItem *)v6 setSyChangeType:type];

  return v6;
}

- (void)_addPin:(id)pin
{
  pins = self->_pins;
  pinCopy = pin;
  [(NSMutableArray *)pins addObject:pinCopy];
  pinsMap = self->_pinsMap;
  identifier = [pinCopy identifier];
  [(NSMutableDictionary *)pinsMap setObject:pinCopy forKey:identifier];
}

- (void)_updatePin:(id)pin
{
  pinsMap = self->_pinsMap;
  pinCopy = pin;
  identifier = [pinCopy identifier];
  v9 = [(NSMutableDictionary *)pinsMap objectForKeyedSubscript:identifier];

  [(NSMutableArray *)self->_pins removeObject:v9];
  [(NSMutableArray *)self->_pins addObject:pinCopy];
  v7 = self->_pinsMap;
  identifier2 = [pinCopy identifier];
  [(NSMutableDictionary *)v7 setObject:pinCopy forKey:identifier2];
}

- (void)_removePin:(id)pin
{
  identifier = [pin identifier];
  v4 = [(NSMutableDictionary *)self->_pinsMap objectForKeyedSubscript:identifier];
  [(NSMutableArray *)self->_pins removeObject:v4];
  [(NSMutableDictionary *)self->_pinsMap removeObjectForKey:identifier];
}

- (id)pins
{
  v2 = [(NSMutableArray *)self->_pins copy];

  return v2;
}

- (void)setDroppedPin:(id)pin
{
  v23 = *MEMORY[0x277D85DE8];
  pinCopy = pin;
  v5 = self->_pendingSyncItems;
  objc_sync_enter(v5);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(NSMutableArray *)self->_pins copy];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  v8 = v7;
  if (v7)
  {
    v9 = *v19;
    v10 = v7;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        [(MSPSyncManager *)self _removePin:v12];
        pendingSyncItems = self->_pendingSyncItems;
        v14 = [(MSPSyncManager *)self _wrapPin:v12 changeType:3];
        [(NSMutableArray *)pendingSyncItems addObject:v14];
      }

      v10 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  if (pinCopy)
  {
    [(MSPSyncManager *)self _addPin:pinCopy];
    v15 = self->_pendingSyncItems;
    v16 = [(MSPSyncManager *)self _wrapPin:pinCopy changeType:1];
    [(NSMutableArray *)v15 addObject:v16];

    objc_sync_exit(v5);
LABEL_11:
    [(MSPSyncManager *)self writePins:self->_pins];
    [(MSPSyncManager *)self _setHasChangesAvailable];
    goto LABEL_12;
  }

  objc_sync_exit(v5);

  if (v8)
  {
    goto LABEL_11;
  }

LABEL_12:

  v17 = *MEMORY[0x277D85DE8];
}

@end