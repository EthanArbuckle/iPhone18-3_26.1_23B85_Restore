@interface PSDSyncInitiator
+ (id)sharedSyncInitiator;
- (BOOL)_hasLastKnownDeviceChanged;
- (BOOL)_hasWatchMigrationCounterChanged;
- (BOOL)canSync;
- (PSDSyncInitiator)init;
- (PSDSyncInitiatorDelegate)delegate;
- (id)activityInfos:(id)infos screenedBySyncSessionType:(unint64_t)type byGeneratingCurrentSessionLabelSet:(id)set;
- (id)defaultSyncSessionForType:(unint64_t)type;
- (id)domainAccessorForPairingID:(id)d;
- (id)sortedActivityInfos:(id)infos;
- (id)syncSessionActivitiesForActivityInfos:(id)infos;
- (int)registerNotifyTokenWithName:(char *)name withQueue:(id)queue withBlock:(id)block;
- (unint64_t)needsSync;
- (unint64_t)readNotifyToken:(int)token;
- (void)_queue_saveResumeContextWithSyncSession:(id)session;
- (void)_startSyncIfNeeded;
- (void)scheduler:(id)scheduler didClearSyncSession:(id)session withBlock:(id)block;
- (void)scheduler:(id)scheduler didUpdateSyncSessionWithUpdate:(id)update;
- (void)scheduler:(id)scheduler willStartSyncSession:(id)session;
- (void)setDelegate:(id)delegate;
- (void)setState:(unint64_t)state;
- (void)startExternalSyncWithOptions:(id)options;
- (void)startSyncIfNeeded;
@end

@implementation PSDSyncInitiator

+ (id)sharedSyncInitiator
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002B74;
  block[3] = &unk_10002C778;
  block[4] = self;
  if (qword_100038038 != -1)
  {
    dispatch_once(&qword_100038038, block);
  }

  v2 = qword_100038030;

  return v2;
}

- (PSDSyncInitiator)init
{
  v31.receiver = self;
  v31.super_class = PSDSyncInitiator;
  v2 = [(PSDSyncInitiator *)&v31 init];
  if (v2)
  {
    v3 = psd_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = psd_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Initializing PSDSyncInitiator", buf, 2u);
      }
    }

    *(v2 + 32) = 0;
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.pairedsyncd.syncinitiator", v6);
    v8 = *(v2 + 1);
    *(v2 + 1) = v7;

    dispatch_suspend(*(v2 + 1));
    v9 = dispatch_queue_create_with_target_V2("com.apple.pairedsync.needssync", 0, *(v2 + 1));
    v10 = *(v2 + 6);
    *(v2 + 6) = v9;

    v11 = +[PSDResumeContext defaultURL];
    v12 = [PSDResumeContext contextWithURL:v11];
    v13 = *(v2 + 2);
    *(v2 + 2) = v12;

    v14 = +[PSDScheduler sharedScheduler];
    [v14 addSchedulerObserver:v2];

    [v2 setState:0];
    v15 = +[PDRDarwinNotifications pairedSyncIsOkayToSync];
    v16 = *(v2 + 1);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100002E98;
    v28[3] = &unk_10002C7A0;
    v17 = v2;
    v29 = v17;
    v17[6] = [v17 registerNotifyTokenWithName:v15 withQueue:v16 withBlock:v28];
    v18 = +[PDRDarwinNotifications watchDidBecomeActive];
    v19 = *(v2 + 1);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100002F3C;
    v26[3] = &unk_10002C7A0;
    v20 = v17;
    v27 = v20;
    v20[7] = [v20 registerNotifyTokenWithName:v18 withQueue:v19 withBlock:v26];
    v21 = *(v2 + 1);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100003054;
    v24[3] = &unk_10002C7A0;
    v22 = v20;
    v25 = v22;
    v22[9] = [v22 registerNotifyTokenWithName:"com.apple.mobile.keybagd.lock_status" withQueue:v21 withBlock:v24];
    [v22 startSyncIfNeeded];
  }

  return v2;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003220;
  block[3] = &unk_10002C7C8;
  block[4] = self;
  v6 = delegateCopy;
  v11 = v6;
  v12 = v13;
  dispatch_sync(queue, block);
  if (v6)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100003260;
    v7[3] = &unk_10002C7F0;
    v8 = v6;
    v9 = v13;
    dispatch_async(&_dispatch_main_q, v7);
  }

  _Block_object_dispose(v13, 8);
}

- (void)setState:(unint64_t)state
{
  self->_state = state;
  v5 = psd_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = psd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "[PSDSyncInitiator setState:]";
      v15 = 1024;
      stateCopy = state;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Sync initiator state changed to %d", buf, 0x12u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000033D4;
    v10[3] = &unk_10002C818;
    v11 = WeakRetained;
    stateCopy2 = state;
    dispatch_async(&_dispatch_main_q, v10);
  }
}

- (void)startSyncIfNeeded
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000345C;
  block[3] = &unk_10002C840;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_startSyncIfNeeded
{
  syncStarterQueue = self->_syncStarterQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000034D8;
  block[3] = &unk_10002C840;
  block[4] = self;
  dispatch_async(syncStarterQueue, block);
}

- (int)registerNotifyTokenWithName:(char *)name withQueue:(id)queue withBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  out_token = -1;
  if (blockCopy)
  {
    if (!notify_register_dispatch(name, &out_token, queueCopy, blockCopy))
    {
      goto LABEL_9;
    }
  }

  else if (!notify_register_check(name, &out_token))
  {
    goto LABEL_9;
  }

  v9 = psd_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

  if (v10)
  {
    v11 = psd_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10001AB28(name, v11);
    }
  }

LABEL_9:
  v12 = out_token;

  return v12;
}

- (unint64_t)readNotifyToken:(int)token
{
  if (token == -1)
  {
    return 0;
  }

  state64 = 0;
  if (notify_get_state(token, &state64))
  {
    return 0;
  }

  else
  {
    return state64;
  }
}

- (id)defaultSyncSessionForType:(unint64_t)type
{
  v5 = +[PSYRegistrySingleton registry];
  getActiveDevice = [v5 getActiveDevice];

  v39 = getActiveDevice;
  pairingID = [getActiveDevice pairingID];
  v7 = +[PSYRegistrySingleton registry];
  switchIndex = [v7 switchIndex];

  v37 = +[NSUUID UUID];
  v8 = PSYGetClientListDirectory();
  v9 = sub_1000188E8(v8);

  v10 = objc_alloc_init(NSMutableSet);
  v11 = [(PSDSyncInitiator *)self activityInfos:v9 screenedBySyncSessionType:type byGeneratingCurrentSessionLabelSet:v10];

  selfCopy = self;
  v12 = [(PSDSyncInitiator *)self sortedActivityInfos:v11];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v14)
  {
    v15 = v14;
    obj = v13;
    v41 = *v47;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v47 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v46 + 1) + 8 * i);
        dependentServices = [v17 dependentServices];
        v19 = [dependentServices mutableCopy];

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        dependentServices2 = [v17 dependentServices];
        v21 = [dependentServices2 countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v43;
          do
          {
            for (j = 0; j != v22; j = j + 1)
            {
              if (*v43 != v23)
              {
                objc_enumerationMutation(dependentServices2);
              }

              v25 = *(*(&v42 + 1) + 8 * j);
              if (([v10 containsObject:v25] & 1) == 0)
              {
                [v19 removeObject:v25];
              }
            }

            v22 = [dependentServices2 countByEnumeratingWithState:&v42 objects:v50 count:16];
          }

          while (v22);
        }

        v26 = [v19 count];
        dependentServices3 = [v17 dependentServices];
        v28 = [dependentServices3 count];

        if (v26 != v28)
        {
          [v17 setDependentServices:v19];
        }
      }

      v13 = obj;
      v15 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v15);
  }

  if ([v13 count])
  {
    v29 = [(PSDSyncInitiator *)selfCopy syncSessionActivitiesForActivityInfos:v13];
    v30 = v37;
    v31 = pairingID;
    v32 = [[PSYSyncSession alloc] initWithPairingIdentifier:pairingID switchIndex:switchIndex sessionIdentifier:v37 syncSessionType:0 supportsMigrationSync:? activities:? state:?];

    v33 = v39;
  }

  else
  {
    v32 = 0;
    v31 = pairingID;
    v33 = v39;
    v30 = v37;
  }

  return v32;
}

- (id)syncSessionActivitiesForActivityInfos:(id)infos
{
  infosCopy = infos;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [infosCopy count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = infosCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        LOBYTE(v12) = 0;
        v10 = [[PSYSyncSessionActivity alloc] initWithActivityInfo:*(*(&v13 + 1) + 8 * i) progress:0 error:0 state:0 finishedSending:0 interruptionCount:0 startDropoutCount:0.0 sawADropout:v12];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)activityInfos:(id)infos screenedBySyncSessionType:(unint64_t)type byGeneratingCurrentSessionLabelSet:(id)set
{
  infosCopy = infos;
  setCopy = set;
  v22 = +[NSMutableArray array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = infosCopy;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v24 = *v30;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        sessionTypes = [v11 sessionTypes];
        if (sessionTypes)
        {
        }

        else if ((type & 0xFFFFFFFFFFFFFFFDLL) == 0)
        {
          goto LABEL_19;
        }

        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        sessionTypes2 = [v11 sessionTypes];
        v14 = [sessionTypes2 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (!v14)
        {
          goto LABEL_20;
        }

        v15 = v14;
        v16 = 0;
        v17 = *v26;
        do
        {
          for (j = 0; j != v15; j = j + 1)
          {
            if (*v26 != v17)
            {
              objc_enumerationMutation(sessionTypes2);
            }

            v19 = *(*(&v25 + 1) + 8 * j);
            v16 |= [v19 integerValue] == type;
            if (type == 2)
            {
              v16 |= [v19 integerValue] == 0;
            }
          }

          v15 = [sessionTypes2 countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v15);

        if (v16)
        {
LABEL_19:
          [v22 addObject:v11];
          sessionTypes2 = [v11 label];
          [setCopy addObject:sessionTypes2];
LABEL_20:

          continue;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v9);
  }

  return v22;
}

- (id)sortedActivityInfos:(id)infos
{
  infosCopy = infos;
  v4 = PSYGetPreferredActivityOrdering();
  +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000046A8;
  v5 = v11[3] = &unk_10002C868;
  v12 = v5;
  [v4 enumerateObjectsUsingBlock:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100004728;
  v9[3] = &unk_10002C890;
  v10 = v5;
  v6 = v5;
  v7 = [infosCopy sortedArrayWithOptions:0 usingComparator:v9];

  return v7;
}

- (id)domainAccessorForPairingID:(id)d
{
  dCopy = d;
  v4 = +[PSYRegistrySingleton registry];
  v5 = [v4 deviceForPairingID:dCopy];

  pairingStorePath = [v5 pairingStorePath];
  v7 = pairingStorePath;
  if (v5)
  {
    v8 = pairingStorePath == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.pairedsync" pairingID:dCopy pairingDataStore:pairingStorePath];
  }

  return v9;
}

- (BOOL)_hasLastKnownDeviceChanged
{
  v3 = +[PSYRegistrySingleton registry];
  getActiveDevice = [v3 getActiveDevice];

  if (getActiveDevice)
  {
    pairingID = [getActiveDevice pairingID];
    v6 = [(PSDSyncInitiator *)self domainAccessorForPairingID:pairingID];
    if (!v6)
    {
      v16 = psd_log();
      v15 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

      if (!v15)
      {
LABEL_41:

        goto LABEL_42;
      }

      v7 = psd_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10001ABB4(pairingID);
      }

      goto LABEL_31;
    }

    v7 = v6;
    synchronize = [v6 synchronize];
    v41 = 0;
    v9 = [v7 integerForKey:@"syncSwitchIndex" keyExistsAndHasValidFormat:&v41];
    v10 = +[PSYRegistrySingleton registry];
    switchIndex = [v10 switchIndex];

    if (v41 == 1)
    {
      if (v9 != switchIndex)
      {
        v12 = psd_log();
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

        if (!v13)
        {
LABEL_39:
          LOBYTE(v15) = 1;
          goto LABEL_40;
        }

        v14 = psd_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v43 = v9;
          v44 = 2048;
          v45 = switchIndex;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Last known switch index has changed. Was %lld, but NanoRegistry is currently at %lld", buf, 0x16u);
        }

LABEL_38:

        goto LABEL_39;
      }

LABEL_31:
      LOBYTE(v15) = 0;
LABEL_40:

      goto LABEL_41;
    }

    v17 = CFPreferencesCopyValue(@"lastSwitchIndex", PSYPairedSyncDomainName, @"mobile", kCFPreferencesAnyHost);
    v14 = v17;
    if (v17)
    {
      integerValue = [v17 integerValue];
      if (integerValue != switchIndex)
      {
        v19 = integerValue;
        v20 = psd_log();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

        if (!v21)
        {
          goto LABEL_38;
        }

        v22 = psd_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v43 = v19;
          v44 = 2048;
          v45 = switchIndex;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Last known switch index has changed. Was %lld, but NanoRegistry is currently at %lld", buf, 0x16u);
        }

LABEL_37:

        goto LABEL_38;
      }
    }

    else
    {
      v23 = CFPreferencesCopyValue(@"lastSwitchIndex", @"pairedsyncd", @"mobile", kCFPreferencesAnyHost);
      v22 = v23;
      if (v23)
      {
        integerValue2 = [v23 integerValue];
        v25 = +[PSYRegistrySingleton registry];
        switchIndex2 = [v25 switchIndex];

        if (integerValue2 != switchIndex2)
        {
          v27 = psd_log();
          v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

          if (v28)
          {
            v29 = psd_log();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              v43 = integerValue2;
              v44 = 2048;
              v45 = switchIndex2;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Legacy flow: Last known switch index has changed. Was %lld, but NanoRegistry is currently at %lld", buf, 0x16u);
            }
          }

          goto LABEL_37;
        }
      }

      else
      {
        v30 = CFPreferencesCopyValue(@"lastPairingID", @"pairedsyncd", @"mobile", kCFPreferencesAnyHost);
        if (v30)
        {
          v31 = [[NSUUID alloc] initWithUUIDString:v30];
          v32 = +[PSYRegistrySingleton registry];
          pairingID2 = [v32 pairingID];

          if (v31 && pairingID2 && ([v31 isEqual:pairingID2] & 1) == 0)
          {
            v34 = psd_log();
            v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);

            if (v35)
            {
              v36 = psd_log();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                uUIDString = [v31 UUIDString];
                uUIDString2 = [pairingID2 UUIDString];
                *buf = 138543618;
                v43 = uUIDString;
                v44 = 2114;
                v45 = uUIDString2;
                v38 = uUIDString2;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Older legacy flow: Last known pairing ID has changed. Was %{public}@, but NanoRegistry is currently paired to %{public}@", buf, 0x16u);
              }
            }

            goto LABEL_37;
          }
        }
      }
    }

    goto LABEL_31;
  }

  LOBYTE(v15) = 0;
LABEL_42:

  return v15;
}

- (BOOL)_hasWatchMigrationCounterChanged
{
  v2 = +[PSYRegistrySingleton registry];
  pairingID = [v2 pairingID];

  if (!pairingID)
  {
    goto LABEL_16;
  }

  uUIDString = [pairingID UUIDString];
  v5 = +[PSYRegistrySingleton registry];
  v6 = [v5 deviceForPairingID:pairingID];

  v7 = [v6 valueForProperty:PDRDevicePropertyKeyMigrationCount];
  integerValue = [v7 integerValue];
  v9 = CFPreferencesCopyValue(PSYPairingIDMigrationCountDictionaryKey, PSYPairedSyncDomainName, @"mobile", kCFPreferencesAnyHost);
  v10 = psd_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = psd_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "_hasWatchMigrationCounterChanged: Reading pairingIDMigrationCountDictionary- Value is %@", &v23, 0xCu);
    }
  }

  v13 = [v9 objectForKeyedSubscript:uUIDString];
  integerValue2 = [v13 integerValue];
  v15 = psd_log();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

  if (integerValue == integerValue2)
  {
    if (!v16)
    {
      goto LABEL_15;
    }

    v17 = psd_log();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    LOWORD(v23) = 0;
    v18 = "Watch migration counter matches stored value. Not triggering migration sync.";
    v19 = v17;
    v20 = 2;
    goto LABEL_13;
  }

  if (!v16)
  {
    goto LABEL_15;
  }

  v17 = psd_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 134218240;
    v24 = integerValue2;
    v25 = 2048;
    v26 = integerValue;
    v18 = "Last watch migration counter changed. Was %ld, but NanoRegistry is currently at %ld. Triggering migration sync.";
    v19 = v17;
    v20 = 22;
LABEL_13:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, &v23, v20);
  }

LABEL_14:

LABEL_15:
  if (integerValue != integerValue2)
  {
    v21 = 1;
    goto LABEL_18;
  }

LABEL_16:
  v21 = 0;
LABEL_18:

  return v21;
}

- (unint64_t)needsSync
{
  v3 = +[PSYRegistrySingleton registry];
  getActiveDevice = [v3 getActiveDevice];

  if (getActiveDevice)
  {
    pairingID = [getActiveDevice pairingID];
    v6 = +[PSDSyncStateManager sharedSyncStateManager];
    v7 = [v6 isInitialSyncCompleteForPairingID:pairingID];

    v8 = psd_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = psd_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v43 = 138543362;
        *&v43[4] = pairingID;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Checking needsSync for device with pairingID: %{public}@", v43, 0xCu);
      }
    }

    if (!v7)
    {
      v19 = psd_log();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

      if (v20)
      {
        v21 = psd_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *v43 = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "needsSync- failed to check initial sync flag", v43, 2u);
        }
      }

      self->_syncHasDeviceButSyncFlagNotSet = 1;
      v16 = 3;
      goto LABEL_52;
    }

    v11 = +[PSDScheduler sharedScheduler];
    syncSession = [v11 syncSession];

    if (syncSession)
    {
      v13 = psd_log();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

      if (!v14)
      {
LABEL_12:
        v16 = 0;
LABEL_52:

LABEL_53:
        goto LABEL_54;
      }

      v15 = psd_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Don't need to trigger a new sync because a syncSession is actively in progress", v43, 2u);
      }

LABEL_11:

      goto LABEL_12;
    }

    if ([v7 BOOLValue] && -[PSDSyncInitiator _hasLastKnownDeviceChanged](self, "_hasLastKnownDeviceChanged"))
    {
      v22 = psd_log();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

      if (v23)
      {
        v24 = psd_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *v43 = 0;
          v25 = "needs Reunion sync because last known device has changed";
LABEL_38:
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v25, v43, 2u);
          goto LABEL_39;
        }

        goto LABEL_39;
      }

      goto LABEL_40;
    }

    v26 = [(PSDSyncInitiator *)self supportsMigration:getActiveDevice];
    v27 = psd_log();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

    if (v26)
    {
      if (v28)
      {
        v29 = psd_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *v43 = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "device supports migration checking if needs migration sync", v43, 2u);
        }
      }

      if ([v7 BOOLValue] && -[PSDSyncInitiator _hasWatchMigrationCounterChanged](self, "_hasWatchMigrationCounterChanged"))
      {
        v30 = psd_log();
        v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);

        if (v31)
        {
          v24 = psd_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *v43 = 0;
            v25 = "needs Migration sync because watch IDS device has changed";
            goto LABEL_38;
          }

LABEL_39:
        }

LABEL_40:
        [(PSDResumeContext *)self->_resumeContext reset];
        goto LABEL_41;
      }
    }

    else if (v28)
    {
      v32 = psd_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "device does not support migration NOT checking if needs migration sync", v43, 2u);
      }
    }

    syncSession2 = [(PSDResumeContext *)self->_resumeContext syncSession];

    if (syncSession2)
    {
      v34 = psd_log();
      v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);

      if (v35)
      {
        v36 = psd_log();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *v43 = 0;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "needs sync because sync was in progress and then was interrupted", v43, 2u);
        }
      }

      v16 = 2;
      goto LABEL_52;
    }

    bOOLValue = [v7 BOOLValue];
    v39 = psd_log();
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);

    if (bOOLValue)
    {
      if (!v40)
      {
        goto LABEL_12;
      }

      v15 = psd_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        uUIDString = [pairingID UUIDString];
        *v43 = 138543362;
        *&v43[4] = uUIDString;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Device %{public}@ has already completed initial sync", v43, 0xCu);
      }

      goto LABEL_11;
    }

    if (v40)
    {
      v42 = psd_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "needs sync because initial sync has not started yet", v43, 2u);
      }
    }

LABEL_41:
    v16 = 1;
    goto LABEL_52;
  }

  v17 = psd_log();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

  if (v18)
  {
    pairingID = psd_log();
    if (os_log_type_enabled(pairingID, OS_LOG_TYPE_DEFAULT))
    {
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, pairingID, OS_LOG_TYPE_DEFAULT, "No active device don't know if sync is needed", v43, 2u);
    }

    v16 = 3;
    goto LABEL_53;
  }

  v16 = 3;
LABEL_54:

  return v16;
}

- (BOOL)canSync
{
  isSyncAdvised = [(PSDSyncInitiator *)self isSyncAdvised];
  if (!isSyncAdvised)
  {
    v3 = psd_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = psd_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Can't sync because sync is not advised.", v7, 2u);
      }
    }
  }

  return isSyncAdvised;
}

- (void)scheduler:(id)scheduler willStartSyncSession:(id)session
{
  sessionCopy = session;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005770;
  v8[3] = &unk_10002C8B8;
  v8[4] = self;
  v9 = sessionCopy;
  v7 = sessionCopy;
  dispatch_async(queue, v8);
}

- (void)scheduler:(id)scheduler didUpdateSyncSessionWithUpdate:(id)update
{
  schedulerCopy = scheduler;
  updateCopy = update;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100005A88;
  v21[3] = &unk_10002C8E0;
  v21[4] = &v22;
  [updateCopy enumerateNewlyRunningActivitiesWithBlock:v21];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100005A9C;
  v20[3] = &unk_10002C8E0;
  v20[4] = &v22;
  [updateCopy enumerateNewlyCompletedActivitiesWithBlock:v20];
  originalSession = [updateCopy originalSession];
  syncSessionState = [originalSession syncSessionState];
  updatedSession = [updateCopy updatedSession];
  syncSessionState2 = [updatedSession syncSessionState];

  if (syncSessionState != syncSessionState2)
  {
    *(v23 + 24) = 1;
    goto LABEL_5;
  }

  if (v23[3])
  {
LABEL_5:
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005AB0;
    block[3] = &unk_10002C8B8;
    block[4] = self;
    v19 = updateCopy;
    dispatch_async(queue, block);
  }

  updatedSession2 = [updateCopy updatedSession];
  syncSessionState3 = [updatedSession2 syncSessionState];

  if (syncSessionState3 == 2)
  {
    v15 = self->_queue;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100005B04;
    v16[3] = &unk_10002C8B8;
    v16[4] = self;
    v17 = updateCopy;
    dispatch_async(v15, v16);
  }

  _Block_object_dispose(&v22, 8);
}

- (void)_queue_saveResumeContextWithSyncSession:(id)session
{
  [(PSDResumeContext *)self->_resumeContext setSyncSession:session];
  resumeContext = self->_resumeContext;
  v10 = 0;
  v5 = [(PSDResumeContext *)resumeContext save:&v10];
  v6 = v10;
  if ((v5 & 1) == 0)
  {
    v7 = psd_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v9 = psd_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10001AC3C(v6);
      }
    }
  }
}

- (void)scheduler:(id)scheduler didClearSyncSession:(id)session withBlock:(id)block
{
  sessionCopy = session;
  blockCopy = block;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005CD8;
  block[3] = &unk_10002C908;
  block[4] = self;
  v13 = sessionCopy;
  v14 = blockCopy;
  v10 = blockCopy;
  v11 = sessionCopy;
  dispatch_async(queue, block);
}

- (void)startExternalSyncWithOptions:(id)options
{
  optionsCopy = options;
  v5 = PSYGetClientListDirectory();
  v6 = sub_1000188E8(v5);

  jobs = [optionsCopy jobs];
  v8 = [jobs count];

  if (v8)
  {
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_100006200;
    v26 = &unk_10002C930;
    v27 = optionsCopy;
    v9 = [NSPredicate predicateWithBlock:&v23];
    v10 = [v6 filteredArrayUsingPredicate:v9];
  }

  else
  {
    v10 = [(PSDSyncInitiator *)self sortedActivityInfos:v6];
  }

  v11 = [(PSDSyncInitiator *)self syncSessionActivitiesForActivityInfos:v10];
  v12 = +[PSYRegistrySingleton registry];
  getActiveDevice = [v12 getActiveDevice];

  pairingID = [getActiveDevice pairingID];
  v15 = +[PSYRegistrySingleton registry];
  switchIndex = [v15 switchIndex];

  v17 = [PSYSyncSession alloc];
  v18 = +[NSUUID UUID];
  syncSessionType = [optionsCopy syncSessionType];
  v20 = [optionsCopy syncSessionType] == 2;
  v21 = [v17 initWithPairingIdentifier:pairingID switchIndex:switchIndex sessionIdentifier:v18 syncSessionType:syncSessionType supportsMigrationSync:v20 activities:v11 state:{0, v23, v24, v25, v26}];

  v22 = +[PSDScheduler sharedScheduler];
  [v22 scheduleSyncSession:v21];
}

- (PSDSyncInitiatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end