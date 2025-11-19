@interface PSDScheduler
+ (BOOL)_isInternalInstall;
+ (BOOL)_isSyncShameDisabled;
+ (id)sharedScheduler;
- (BOOL)_canAttemptRetryForActivity:(id)a3;
- (BOOL)_shouldHandleCallbackForActivity:(id)a3;
- (BOOL)buddyStageDependencyClearedForActivity:(id)a3;
- (BOOL)scheduleSyncSession:(id)a3;
- (BOOL)shouldLaunchAsDryRun;
- (PSDScheduler)init;
- (PSYSyncSession)syncSession;
- (double)_timeoutForActivity:(id)a3;
- (id)_localizedString:(id)a3;
- (id)_syncOptionsForActivity:(id)a3;
- (id)activitiesForSessionActivites:(id)a3;
- (id)nrDeviceForPairingIdentifier:(id)a3;
- (int)_indexOfNextEligibleActivity;
- (int64_t)_maxSupportedActivitiesForCurrentLink;
- (void)_abortActivity:(id)a3;
- (void)_abortRunningActivities;
- (void)_activityDidTimeout:(id)a3;
- (void)_activityTimeoutHandler:(id)a3;
- (void)_activityWasInterrupted:(id)a3;
- (void)_cancelAllActivityTimers;
- (void)_clearActivityTimer:(id)a3;
- (void)_currentProgressUpdated:(float)a3 forActivity:(id)a4;
- (void)_dequeueNextActivityAfter:(id)a3;
- (void)_finishActivity:(id)a3 success:(BOOL)a4 error:(id)a5;
- (void)_popATimeoutAlert:(unint64_t)a3;
- (void)_queue_cleanup;
- (void)_queue_enumerateSchedulerObserversWithBlock:(id)a3;
- (void)_queue_tellObserversDidClearSyncSession:(id)a3 withBlock:(id)a4;
- (void)_queue_tellObserversDidUpdateSyncSessionWithUpdate:(id)a3;
- (void)_queue_tellObserversWillStartSyncSession;
- (void)_queue_updateSyncSessionActivity:(id)a3;
- (void)_queue_updateWithSyncSession:(id)a3;
- (void)_resetLinkMonitor;
- (void)_scheduleNextActivityIfPossible;
- (void)_scheduleTimeoutForActivity:(id)a3;
- (void)_scheduledActivitiesDidComplete;
- (void)_setupLinkMonitorForDevice:(id)a3;
- (void)_startActivity:(id)a3;
- (void)_takeStackshotSequenceWithLabel:(id)a3;
- (void)_updateDefaults;
- (void)activity:(id)a3 didUpdateProgress:(float)a4;
- (void)activityDidCompleteSending:(id)a3;
- (void)addSchedulerObserver:(id)a3;
- (void)cancelSyncSession;
- (void)linkChangedToLinkType:(int64_t)a3;
- (void)registry:(id)a3 changed:(id)a4 properties:(id)a5;
- (void)removeSchedulerObserver:(id)a3;
@end

@implementation PSDScheduler

+ (id)sharedScheduler
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001120C;
  block[3] = &unk_10002C778;
  block[4] = a1;
  if (qword_100038090 != -1)
  {
    dispatch_once(&qword_100038090, block);
  }

  v2 = qword_100038088;

  return v2;
}

- (PSDScheduler)init
{
  v16.receiver = self;
  v16.super_class = PSDScheduler;
  v2 = [(PSDScheduler *)&v16 init];
  key = v2;
  if (v2)
  {
    v3 = v2;
    v4 = +[NSMapTable weakToStrongObjectsMapTable];
    schedulerObservers = v3->_schedulerObservers;
    v3->_schedulerObservers = v4;

    [(PSDScheduler *)v3 _updateDefaults];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.pairedsyncd.scheduler", v6);
    queue = v3->_queue;
    v3->_queue = v7;

    dispatch_queue_set_specific(v3->_queue, &key, 1, 0);
    if ([objc_opt_class() _isInternalInstall] && (objc_msgSend(objc_opt_class(), "_isSyncShameDisabled") & 1) == 0)
    {
      v9 = dispatch_queue_create("com.apple.pairedsyncd.scheduler.alertqueue", v6);
      alertQueue = key->_alertQueue;
      key->_alertQueue = v9;
    }

    v11 = objc_alloc_init(NSMutableDictionary);
    timeoutTimers = key->_timeoutTimers;
    key->_timeoutTimers = v11;

    v13 = key;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v14;
}

- (void)addSchedulerObserver:(id)a3
{
  v4 = a3;
  v5 = [[PSDSchedulerObserver alloc] initWithObserver:v4];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001144C;
  block[3] = &unk_10002CC30;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(queue, block);
}

- (void)removeSchedulerObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011538;
  v7[3] = &unk_10002C8B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)_updateDefaults
{
  CFPreferencesAppSynchronize(@"com.apple.pairedsyncd");
  [CFPreferencesCopyAppValue(@"SyncClientTimeOut" @"com.apple.pairedsyncd")];
  v4 = v3;
  v5 = v3 > 0.0;
  v6 = 300.0;
  if (v5)
  {
    v6 = v4;
  }

  self->_syncTopicTimeout = v6;
  self->_maxSupportedParallelActivitiesPreferenceValue = [CFPreferencesCopyAppValue(@"NumberOfSyncTopicsToRunSimultaneously" @"com.apple.pairedsyncd")];
  v7 = psd_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = psd_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      syncTopicTimeout = self->_syncTopicTimeout;
      maxSupportedParallelActivitiesPreferenceValue = self->_maxSupportedParallelActivitiesPreferenceValue;
      v12 = 134218240;
      v13 = syncTopicTimeout;
      v14 = 2048;
      v15 = maxSupportedParallelActivitiesPreferenceValue;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "syncTopicTimeout %f maxSupportedParallelActivitiesPreferenceValue: %zd", &v12, 0x16u);
    }
  }
}

- (void)_setupLinkMonitorForDevice:(id)a3
{
  v4 = a3;
  v5 = [[PSYLinkUpgradeMonitor alloc] initWithRegistryDevice:v4 delegateQueue:self->_queue];

  linkUpgradeMonitor = self->_linkUpgradeMonitor;
  self->_linkUpgradeMonitor = v5;

  [(PSYLinkUpgradeMonitor *)self->_linkUpgradeMonitor setDelegate:self];
  self->_currentNRLinkType = [(PSYLinkUpgradeMonitor *)self->_linkUpgradeMonitor currentLinkType];
  v7 = self->_linkUpgradeMonitor;

  [(PSYLinkUpgradeMonitor *)v7 requestLinkUpgrade];
}

- (void)_resetLinkMonitor
{
  [(PSYLinkUpgradeMonitor *)self->_linkUpgradeMonitor resetCompanionLinkPreference];
  linkUpgradeMonitor = self->_linkUpgradeMonitor;
  self->_linkUpgradeMonitor = 0;
}

- (id)nrDeviceForPairingIdentifier:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[PSYRegistrySingleton registry];
    v5 = [v4 getActiveDevice];

    v6 = [v5 pairingID];
    v7 = [v6 isEqual:v3];

    if (v7)
    {
      v8 = v5;
    }

    else
    {
      v9 = +[PSYRegistrySingleton registry];
      v10 = [v9 getPairedDevices];

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        v13 = *v20;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v19 + 1) + 8 * i);
            v16 = [v15 pairingID];
            v17 = [v16 isEqual:v3];

            if (v17)
            {
              v12 = v15;
              goto LABEL_15;
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:

      v8 = v12;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)scheduleSyncSession:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011A34;
  block[3] = &unk_10002C7C8;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

- (id)_localizedString:(id)a3
{
  v3 = a3;
  v4 = [NSBundle bundleWithIdentifier:@"com.apple.private.PairedSync"];
  v5 = +[NSLocale preferredLanguages];
  v6 = [v5 firstObject];
  if (!v6)
  {
    sub_10001B428();
  }

  v7 = +[NSLocale preferredLanguages];
  v8 = [v7 firstObject];
  v9 = v3;
  v10 = v4;
  v11 = v8;
  if (![v9 length] || !objc_msgSend(@"Localizable", "length") || !objc_msgSend(v11, "length"))
  {
    goto LABEL_10;
  }

  v12 = [v10 localizations];
  v13 = [NSArray arrayWithObject:v11];
  v14 = CFBundleCopyLocalizationsForPreferences(v12, v13);
  if (![(__CFArray *)v14 count])
  {
    goto LABEL_8;
  }

  v15 = [(__CFArray *)v14 objectAtIndex:0];
  v16 = [v10 pathForResource:@"Localizable" ofType:@"strings" inDirectory:0 forLocalization:v15];

  if (v16)
  {
    v17 = [NSDictionary dictionaryWithContentsOfFile:v16];
    v18 = [v17 objectForKey:v9];
  }

  else
  {
LABEL_8:
    v18 = 0;
  }

  if (!v18)
  {
LABEL_10:
    v18 = [v10 localizedStringForKey:v9 value:&stru_10002E0D0 table:@"Localizable"];
  }

  return v18;
}

- (PSYSyncSession)syncSession
{
  key = self;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000122C0;
  v11 = sub_1000122D0;
  v12 = 0;
  if (dispatch_get_specific(&key) == 1)
  {
    objc_storeStrong(&v12, self->_syncSession);
  }

  else
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000122D8;
    block[3] = &unk_10002CB40;
    block[4] = self;
    block[5] = &v7;
    dispatch_sync(queue, block);
  }

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)activitiesForSessionActivites:(id)a3
{
  v4 = a3;
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [PSDActivity alloc];
        v13 = [v11 activityInfo];
        v14 = [(PSDActivity *)v12 initWithActivityInfo:v13 queue:self->_queue];

        [(PSDActivity *)v14 setDelegate:self];
        if (v14)
        {
          [v5 addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)_dequeueNextActivityAfter:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 activityInfo];
    v6 = [v5 label];
    v7 = [v6 isEqualToString:@"com.apple.pairedsync.nanoprefsyncdfirst"];

    if (v7)
    {
      self->_completedNanoPreferencesSync = 1;
    }

    [v4 setDelegate:0];
    [(NSMutableArray *)self->_runningActivityQueue removeObject:v4];
  }

  [(PSDScheduler *)self _scheduleNextActivityIfPossible];
}

- (int)_indexOfNextEligibleActivity
{
  v3 = [(PSDScheduler *)self activityQueue];
  v4 = [(PSYSyncSession *)self->_syncSession completedActivityLabelsSet];
  if ([v3 count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [v3 objectAtIndex:v5];
      if ([(PSDScheduler *)self buddyStageDependencyClearedForActivity:v6])
      {
        break;
      }

LABEL_16:

      if ([v3 count] <= ++v5)
      {
        goto LABEL_17;
      }
    }

    v7 = [v6 activityInfo];
    v8 = [v7 dependentServices];

    if (v8 && [v8 count])
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v16;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(v9);
            }

            if (![v4 containsObject:*(*(&v15 + 1) + 8 * i)])
            {

              goto LABEL_16;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  else
  {
LABEL_17:
    LODWORD(v5) = -1;
  }

  return v5;
}

- (BOOL)buddyStageDependencyClearedForActivity:(id)a3
{
  v4 = a3;
  if (-[PSYSyncSession syncSessionType](self->_syncSession, "syncSessionType") || ([v4 activityInfo], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "dependentBuddyStages"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6, !v8))
  {
    v5 = 1;
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = [v4 activityInfo];
    v10 = [v9 dependentBuddyStages];

    v11 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v28 + 1) + 8 * i) unsignedIntegerValue];
          if (v15 > 2)
          {
            if (v15 == 3)
            {
              if (!self->_buddyPastInstallAllAppsSelection)
              {
                v25 = psd_log();
                v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

                if (!v26)
                {
                  goto LABEL_38;
                }

                v18 = psd_log();
                if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_37;
                }

                v19 = [v4 activityInfo];
                v20 = [v19 label];
                *buf = 134218242;
                v33 = 3;
                v34 = 2112;
                v35 = v20;
LABEL_36:
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "buddy stage dependency: %lu not cleared for :%@", buf, 0x16u);

                goto LABEL_37;
              }
            }

            else if (v15 == 4 && !self->_buddyPastApplePay)
            {
              v16 = psd_log();
              v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

              if (v17)
              {
                v18 = psd_log();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  v19 = [v4 activityInfo];
                  v20 = [v19 label];
                  *buf = 134218242;
                  v33 = 4;
                  v34 = 2112;
                  v35 = v20;
                  goto LABEL_36;
                }

LABEL_37:
              }

LABEL_38:
              v5 = 0;
              goto LABEL_39;
            }
          }

          else if (v15 == 1)
          {
            if (!self->_buddyPastActivation)
            {
              v23 = psd_log();
              v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

              if (!v24)
              {
                goto LABEL_38;
              }

              v18 = psd_log();
              if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_37;
              }

              v19 = [v4 activityInfo];
              v20 = [v19 label];
              *buf = 134218242;
              v33 = 1;
              v34 = 2112;
              v35 = v20;
              goto LABEL_36;
            }
          }

          else if (v15 == 2 && !self->_buddyPastAppleID)
          {
            v21 = psd_log();
            v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

            if (!v22)
            {
              goto LABEL_38;
            }

            v18 = psd_log();
            if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_37;
            }

            v19 = [v4 activityInfo];
            v20 = [v19 label];
            *buf = 134218242;
            v33 = 2;
            v34 = 2112;
            v35 = v20;
            goto LABEL_36;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v5 = 1;
LABEL_39:
  }

  return v5;
}

- (void)_scheduleNextActivityIfPossible
{
  v3 = [(NSMutableArray *)self->_runningActivityQueue count];
  maxSupportedParallelActivitiesPreferenceValue = self->_maxSupportedParallelActivitiesPreferenceValue;
  if (maxSupportedParallelActivitiesPreferenceValue <= 0)
  {
    maxSupportedParallelActivitiesPreferenceValue = [(PSDScheduler *)self _maxSupportedActivitiesForCurrentLink];
  }

  v5 = maxSupportedParallelActivitiesPreferenceValue - v3;
  v6 = psd_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = psd_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 134218240;
      v31 = v3;
      v32 = 2048;
      v33[0] = maxSupportedParallelActivitiesPreferenceValue;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "current running: %lu maxSupported: %lu", &v30, 0x16u);
    }
  }

  if (v5 >= 1)
  {
    while (1)
    {
      v9 = [(PSDScheduler *)self _indexOfNextEligibleActivity];
      if ((v9 & 0x80000000) != 0)
      {
        break;
      }

      v10 = [(PSDScheduler *)self activityQueue];
      v11 = v9;
      v12 = [v10 objectAtIndex:v9];

      if (!v12)
      {
        goto LABEL_13;
      }

      if (self->_completedNanoPreferencesSync)
      {
        goto LABEL_17;
      }

      v13 = 0;
LABEL_14:
      v14 = [v12 activityInfo];
      v15 = [v14 label];
      v16 = [v15 isEqualToString:@"com.apple.pairedsync.nanoprefsyncdfirst"];

      if (!v16)
      {
        v20 = [(NSMutableArray *)self->_runningActivityQueue count];
        v21 = v13 ^ 1;
        if (v20)
        {
          v21 = 1;
        }

        if ((v21 & 1) != 0 || (-[PSDScheduler activityQueue](self, "activityQueue"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 count], v22, v23))
        {
          v24 = psd_log();
          v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

          if (v25)
          {
            v26 = psd_log();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              runningActivityQueue = self->_runningActivityQueue;
              completedNanoPreferencesSync = self->_completedNanoPreferencesSync;
              v29 = [(PSDScheduler *)self activityQueue];
              v30 = 138412802;
              v31 = runningActivityQueue;
              v32 = 1024;
              LODWORD(v33[0]) = completedNanoPreferencesSync;
              WORD2(v33[0]) = 2112;
              *(v33 + 6) = v29;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Waiting for completion of running activities to finish %@ completed nano preferences sync: %d pending activities: %@", &v30, 0x1Cu);
            }
          }
        }

        else
        {
          [(PSDScheduler *)self _scheduledActivitiesDidComplete];
        }

        goto LABEL_32;
      }

      if ((v9 & 0x80000000) == 0)
      {
        v11 = v9;
LABEL_17:
        v17 = [(PSDScheduler *)self activityQueue];
        [v17 removeObjectAtIndex:v11];
      }

      [(NSMutableArray *)self->_runningActivityQueue addObject:v12];
      [(PSDScheduler *)self _startActivity:v12];

      if (!--v5)
      {
        return;
      }
    }

    v12 = 0;
LABEL_13:
    v13 = 1;
    goto LABEL_14;
  }

  v18 = psd_log();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

  if (v19)
  {
    v12 = psd_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 134218240;
      v31 = v3;
      v32 = 2048;
      v33[0] = maxSupportedParallelActivitiesPreferenceValue;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Cannot schedule new activity. current running: %lu maxSupported: %lu", &v30, 0x16u);
    }

LABEL_32:
  }
}

- (void)_startActivity:(id)a3
{
  v4 = a3;
  v5 = [(PSDScheduler *)self _syncOptionsForActivity:v4];
  v6 = [v4 activityInfo];
  v7 = [v6 label];

  v8 = psd_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = psd_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Starting activity %{public}@", buf, 0xCu);
    }
  }

  v11 = [(PSYSyncSession *)self->_syncSession activityForLabel:v7];
  *buf = 0;
  v12 = [PDRConnectivityStatus getDropoutCounter:buf];
  v13 = [PSYSyncSessionActivity alloc];
  v14 = [v11 activityInfo];
  [v11 activityProgress];
  v16 = v15;
  v17 = [v11 error];
  v18 = [v11 interruptionCount];
  LOBYTE(v21) = v12;
  v19 = [v13 initWithActivityInfo:v14 progress:v17 error:1 state:0 finishedSending:v18 interruptionCount:*buf startDropoutCount:v16 sawADropout:v21];

  [(PSDScheduler *)self _queue_updateSyncSessionActivity:v19];
  [(PSDScheduler *)self _scheduleTimeoutForActivity:v4];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100013100;
  v25[3] = &unk_10002CCA8;
  v26 = v4;
  v27 = self;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100013224;
  v22[3] = &unk_10002CCD0;
  v23 = v26;
  v24 = self;
  v20 = v26;
  [v20 beginSyncWithOptions:v5 completion:v25 interruptionHandler:v22];
}

- (void)_abortRunningActivities
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_runningActivityQueue;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(PSDScheduler *)self _abortActivity:*(*(&v8 + 1) + 8 * v7), v8];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_abortActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 activityInfo];
  v6 = [v5 label];

  v7 = psd_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = psd_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Canceling activity %{public}@", buf, 0xCu);
    }
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001355C;
  v14[3] = &unk_10002CCA8;
  v15 = v4;
  v16 = self;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000136A0;
  v11[3] = &unk_10002CCD0;
  v12 = v15;
  v13 = self;
  v10 = v15;
  [v10 abortSyncWithCompletion:v14 interruptionHandler:v11];
}

- (void)_finishActivity:(id)a3 success:(BOOL)a4 error:(id)a5
{
  v7 = a3;
  v8 = a5;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000137F0;
  block[3] = &unk_10002CC30;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(queue, block);
}

- (void)_clearActivityTimer:(id)a3
{
  v4 = a3;
  v5 = psd_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

  if (v6)
  {
    v7 = psd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001B5D4(v4);
    }
  }

  v8 = [NSValue valueWithPointer:v4];
  v9 = [(NSMutableDictionary *)self->_timeoutTimers objectForKeyedSubscript:v8];
  [v9 invalidate];
  [(NSMutableDictionary *)self->_timeoutTimers removeObjectForKey:v8];
}

- (void)_cancelAllActivityTimers
{
  v3 = psd_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = psd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10001B678();
    }
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_timeoutTimers;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMutableDictionary *)self->_timeoutTimers objectForKeyedSubscript:*(*(&v12 + 1) + 8 * v10), v12];
        [v11 invalidate];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(NSMutableDictionary *)self->_timeoutTimers removeAllObjects];
}

- (void)_activityWasInterrupted:(id)a3
{
  v4 = a3;
  [(PSDScheduler *)self _clearActivityTimer:v4];
  if ([(PSDScheduler *)self _shouldHandleCallbackForActivity:v4])
  {
    v5 = [v4 activityInfo];
    v6 = [v5 label];

    v7 = [(PSYSyncSession *)self->_syncSession activityForLabel:v6];
    v28 = 0;
    v8 = [PDRConnectivityStatus getDropoutCounter:&v28];
    v9 = 1;
    if (([v7 sawADropout] & 1) == 0 && (v8 & 1) == 0)
    {
      v10 = [v7 startDropoutCount];
      v9 = v10 != v28;
    }

    v11 = [PSYSyncSessionActivity alloc];
    v12 = [v7 activityInfo];
    [v7 activityProgress];
    v14 = v13;
    v15 = [v7 error];
    LOBYTE(v27) = v9;
    v16 = [v11 initWithActivityInfo:v12 progress:v15 error:2 state:objc_msgSend(v7 finishedSending:"isFinishedSending") interruptionCount:objc_msgSend(v7 startDropoutCount:"interruptionCount") + 1 sawADropout:{objc_msgSend(v7, "startDropoutCount"), v14, v27}];

    [(PSDScheduler *)self _queue_updateSyncSessionActivity:v16];
    if ([(PSDScheduler *)self _canAttemptRetryForActivity:v4])
    {
      [(PSDScheduler *)self _startActivity:v4];
    }

    else
    {
      v17 = [v4 activityInfo];
      v18 = [v17 label];

      v19 = [(PSYSyncSession *)self->_syncSession activityForLabel:v18];
      v20 = psd_log();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

      if (v21)
      {
        v22 = psd_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_10001B6B4(v4, v19);
        }
      }

      v23 = [v4 activityInfo];
      v24 = [v23 label];

      v25 = [NSString stringWithFormat:@"Sync client %@ interrupted", v24];
      [(PSDScheduler *)self _takeStackshotSequenceWithLabel:v25];

      v26 = [NSError errorWithDomain:@"com.apple.pairedsync" code:42 userInfo:0];
      [(PSDScheduler *)self _finishActivity:v4 success:0 error:v26];
    }
  }
}

- (void)_activityDidTimeout:(id)a3
{
  v4 = a3;
  [(PSDScheduler *)self _clearActivityTimer:v4];
  if ([(PSDScheduler *)self _shouldHandleCallbackForActivity:v4])
  {
    v5 = [v4 activityInfo];
    v6 = [v5 label];

    v7 = [(PSYSyncSession *)self->_syncSession activityForLabel:v6];
    v19 = 0;
    v8 = [PDRConnectivityStatus getDropoutCounter:&v19];
    v9 = [v7 startDropoutCount];
    v10 = (v9 != v19) | v8;
    v11 = psd_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

    if (v12)
    {
      v13 = psd_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10001B74C();
      }
    }

    if ((v10 & 1) == 0)
    {
      v14 = psd_log();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

      if (v15)
      {
        v16 = psd_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10001B7E8();
        }
      }

      v17 = [NSString stringWithFormat:@"Sync client %@ timed out", v6];
      [(PSDScheduler *)self _takeStackshotSequenceWithLabel:v17];
    }

    v18 = PSYErrorForCode();
    [(PSDScheduler *)self _finishActivity:v4 success:0 error:v18];
  }
}

- (void)_takeStackshotSequenceWithLabel:(id)a3
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 1;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000141C4;
  v13[3] = &unk_10002C7F0;
  v10 = a3;
  v14 = v10;
  v15 = v16;
  v4 = objc_retainBlock(v13);
  (v4[2])();
  v5 = 2;
  v6 = 1000000000;
  do
  {
    v7 = dispatch_time(0, v6);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100014244;
    block[3] = &unk_10002CCF8;
    v9 = v4;
    v12 = v9;
    dispatch_after(v7, queue, block);

    v6 += 1000000000;
    --v5;
  }

  while (v5);

  _Block_object_dispose(v16, 8);
}

- (void)_popATimeoutAlert:(unint64_t)a3
{
  alertQueue = self->_alertQueue;
  if (alertQueue)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000142CC;
    block[3] = &unk_10002C778;
    block[4] = a3;
    dispatch_async(alertQueue, block);
  }
}

+ (BOOL)_isInternalInstall
{
  if (qword_1000380A0 != -1)
  {
    sub_10001B858();
  }

  return byte_100038098;
}

+ (BOOL)_isSyncShameDisabled
{
  if (qword_1000380A8 != -1)
  {
    sub_10001B86C();
  }

  return byte_100037DC8;
}

- (void)_scheduleTimeoutForActivity:(id)a3
{
  v4 = a3;
  [(PSDScheduler *)self _timeoutForActivity:v4];
  v6 = v5;
  v7 = psd_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = psd_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 activityInfo];
      v11 = [v10 label];
      *buf = 138543618;
      v19 = v11;
      v20 = 2048;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Scheduling timeout for activity %{public}@ in %1.2f seconds", buf, 0x16u);
    }
  }

  v12 = [v4 activityInfo];
  v13 = [v12 label];
  v14 = [NSString stringWithFormat:@"com.apple.pairedsync.activity.%@", v13];

  v15 = [[PCPersistentTimer alloc] initWithTimeInterval:v14 serviceIdentifier:self target:"_activityTimeoutHandler:" selector:v4 userInfo:v6];
  [v15 setMinimumEarlyFireProportion:1.0];
  timeoutTimers = self->_timeoutTimers;
  v17 = [NSValue valueWithPointer:v4];
  [(NSMutableDictionary *)timeoutTimers setObject:v15 forKeyedSubscript:v17];

  [v15 scheduleInQueue:self->_queue];
}

- (void)_activityTimeoutHandler:(id)a3
{
  v4 = [a3 userInfo];
  v5 = psd_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = psd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 activityInfo];
      v9 = [v8 label];
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ timed out", &v10, 0xCu);
    }
  }

  [(PSDScheduler *)self _activityDidTimeout:v4];
}

- (BOOL)_shouldHandleCallbackForActivity:(id)a3
{
  if (a3)
  {
    return [(NSMutableArray *)self->_runningActivityQueue containsObject:?];
  }

  else
  {
    return 0;
  }
}

- (double)_timeoutForActivity:(id)a3
{
  v4 = [a3 activityInfo];
  v5 = [v4 timeoutSeconds];

  [v5 doubleValue];
  if (v6 <= 0.0 || ([v5 doubleValue], v7 > self->_syncTopicTimeout) || (objc_msgSend(v5, "doubleValue"), syncTopicTimeout = v8, v8 == 0.0))
  {
    v10 = +[NSUserDefaults standardUserDefaults];
    [v10 synchronize];

    v11 = +[NSUserDefaults standardUserDefaults];
    v12 = [v11 persistentDomainForName:@"com.apple.pairedsync"];

    v13 = [v12 objectForKey:@"activityTimeout"];
    [v13 doubleValue];
    syncTopicTimeout = v14;
  }

  if (syncTopicTimeout == 0.0)
  {
    syncTopicTimeout = self->_syncTopicTimeout;
  }

  return syncTopicTimeout;
}

- (BOOL)_canAttemptRetryForActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 activityInfo];
  v6 = [v5 label];

  v7 = [(PSYSyncSession *)self->_syncSession activityForLabel:v6];
  v8 = [v7 interruptionCount];
  v9 = [(PSDScheduler *)self _maximumInterruptionCountForActivity:v4];

  return v8 < v9;
}

- (id)_syncOptionsForActivity:(id)a3
{
  v4 = objc_alloc_init(PSYSyncOptions);
  [v4 setDryRun:{-[PSDScheduler shouldLaunchAsDryRun](self, "shouldLaunchAsDryRun")}];
  v5 = [(PSDScheduler *)self testInputsEnumerator];
  v6 = [v5 nextObject];

  [v4 setTestInput:v6];
  v7 = [(PSYSyncSession *)self->_syncSession pairingIdentifier];
  [v4 setPairingIdentifier:v7];

  v8 = [(PSYSyncSession *)self->_syncSession sessionIdentifier];
  [v4 setSessionIdentifier:v8];

  [v4 setSyncSessionType:{-[PSYSyncSession syncSessionType](self->_syncSession, "syncSessionType")}];

  return v4;
}

- (void)_scheduledActivitiesDidComplete
{
  syncSession = self->_syncSession;
  v4 = psd_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (syncSession)
  {
    if (v5)
    {
      v6 = psd_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "All scheduled activities completed", buf, 2u);
      }
    }

    v7 = [(PSDScheduler *)self monitoredPairing];

    if (v7)
    {
      v8 = +[PSYRegistrySingleton registry];
      [v8 removeDelegate:self];

      [(PSDScheduler *)self setMonitoredPairing:0];
    }

    [(PSDScheduler *)self _resetLinkMonitor];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = [(PSYSyncSession *)self->_syncSession activities];
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      while (2)
      {
        v13 = 0;
        do
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if ([*(*(&v28 + 1) + 8 * v13) sawADropout])
          {

            [(PSDScheduler *)self _popADropoutAlert:[(PSYSyncSession *)self->_syncSession syncSessionType]];
            goto LABEL_30;
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v28 objects:v34 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = [(PSYSyncSession *)self->_syncSession activities];
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      while (2)
      {
        v18 = 0;
        do
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v24 + 1) + 8 * v18) error];
          v20 = [v19 code];

          if (v20 == 2)
          {

            [(PSDScheduler *)self _popATimeoutAlert:[(PSYSyncSession *)self->_syncSession syncSessionType]];
            goto LABEL_30;
          }

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v24 objects:v33 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_30:
    v21 = [(PSYSyncSession *)self->_syncSession syncSessionByUpdatingSyncSessionState:2];
    [(PSDScheduler *)self _queue_updateWithSyncSession:v21];
    v22 = +[NSNotificationCenter defaultCenter];
    [v22 postNotificationName:@"PSDSchedulerDidCompleteNotification" object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, PSYDeviceSyncDidCompleteDarwinNotification, 0, 0, 1u);
    [(PSDScheduler *)self _queue_cleanup];
  }

  else
  {
    if (!v5)
    {
      return;
    }

    v21 = psd_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "No active sync session. Skipping", buf, 2u);
    }
  }
}

- (void)_queue_cleanup
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_runningActivityQueue;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v13 + 1) + 8 * v7) setDelegate:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  runningActivityQueue = self->_runningActivityQueue;
  self->_runningActivityQueue = 0;

  [(PSDScheduler *)self setActivityQueue:0];
  v9 = self->_syncSession;
  [(PSDScheduler *)self setSyncSession:0];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000150C4;
  v11[3] = &unk_10002C840;
  v12 = v9;
  v10 = v9;
  [(PSDScheduler *)self _queue_tellObserversDidClearSyncSession:v10 withBlock:v11];
}

- (void)cancelSyncSession
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015190;
  block[3] = &unk_10002C840;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_queue_updateSyncSessionActivity:(id)a3
{
  syncSession = self->_syncSession;
  v8 = a3;
  v5 = a3;
  v6 = [NSArray arrayWithObjects:&v8 count:1];
  v7 = [(PSYSyncSession *)syncSession syncSessionByUpdatingActivities:v6, v8];

  if (v7)
  {
    [(PSDScheduler *)self _queue_updateWithSyncSession:v7];
  }
}

- (void)_queue_updateWithSyncSession:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_syncSession] & 1) == 0)
  {
    v4 = [[PSYSyncSessionUpdate alloc] initWithOriginalSession:self->_syncSession updatedSession:v5];
    [(PSDScheduler *)self setSyncSession:v5];
    [(PSDScheduler *)self _queue_tellObserversDidUpdateSyncSessionWithUpdate:v4];
  }
}

- (void)_currentProgressUpdated:(float)a3 forActivity:(id)a4
{
  v6 = a4;
  v7 = v6;
  LODWORD(v8) = 1.0;
  if (a3 <= 1.0)
  {
    *&v8 = a3;
  }

  if (a3 >= 0.0)
  {
    v9 = *&v8;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = [v6 activityInfo];
  v11 = [v10 label];

  v12 = [(PSYSyncSession *)self->_syncSession activityForLabel:v11];
  v13 = v12;
  if (v12)
  {
    [v12 activityProgress];
    if (v14 < v9)
    {
      v15 = [v13 syncSessionActivityByUpdatingProgress:?];
      syncSession = self->_syncSession;
      v19 = v15;
      v17 = [NSArray arrayWithObjects:&v19 count:1];
      v18 = [(PSYSyncSession *)syncSession syncSessionByUpdatingActivities:v17];

      [(PSDScheduler *)self _queue_updateWithSyncSession:v18];
    }
  }
}

- (void)activityDidCompleteSending:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001557C;
  v7[3] = &unk_10002C8B8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)activity:(id)a3 didUpdateProgress:(float)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015820;
  block[3] = &unk_10002CD60;
  v11 = a4;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

- (BOOL)shouldLaunchAsDryRun
{
  v2 = [(PSDScheduler *)self options];
  v3 = [v2 dryRun];

  return v3;
}

- (void)_queue_enumerateSchedulerObserversWithBlock:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_schedulerObservers;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMapTable *)self->_schedulerObservers objectForKey:*(*(&v11 + 1) + 8 * v9), v11];
        v4[2](v4, v10);

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_queue_tellObserversWillStartSyncSession
{
  dispatch_assert_queue_V2(self->_queue);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100015A1C;
  v3[3] = &unk_10002CD88;
  v3[4] = self;
  [(PSDScheduler *)self _queue_enumerateSchedulerObserversWithBlock:v3];
}

- (void)_queue_tellObserversDidUpdateSyncSessionWithUpdate:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100015ACC;
  v6[3] = &unk_10002CDB0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PSDScheduler *)self _queue_enumerateSchedulerObserversWithBlock:v6];
}

- (void)_queue_tellObserversDidClearSyncSession:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = [(NSMapTable *)self->_schedulerObservers count];
  if (*(v16 + 6))
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100015C64;
    v12[3] = &unk_10002CE00;
    v14[1] = &v15;
    v14[0] = v7;
    v12[4] = self;
    v13 = v6;
    [(PSDScheduler *)self _queue_enumerateSchedulerObserversWithBlock:v12];
    v8 = v14;
  }

  else
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100015E08;
    block[3] = &unk_10002CCF8;
    v8 = &v11;
    v11 = v7;
    dispatch_async(queue, block);
  }

  _Block_object_dispose(&v15, 8);
}

- (int64_t)_maxSupportedActivitiesForCurrentLink
{
  currentNRLinkType = self->_currentNRLinkType;
  v3 = 4;
  if (self->_buddyPastAppleID)
  {
    v3 = 6;
  }

  v4 = 1;
  if (self->_buddyPastAppleID)
  {
    v4 = 2;
  }

  v5 = 4;
  if (self->_buddyPastAppleID)
  {
    v5 = 6;
  }

  if (currentNRLinkType == 2)
  {
    v4 = v5;
  }

  if (currentNRLinkType == 3)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

- (void)registry:(id)a3 changed:(id)a4 properties:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = psd_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = psd_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Buddy Registry changed", buf, 2u);
    }
  }

  v12 = [v7 pairingID];
  v13 = [(PSDScheduler *)self monitoredPairing];
  if (![v12 isEqual:v13])
  {

    goto LABEL_9;
  }

  v14 = [v8 containsObject:PDRDevicePropertyKeyWatchBuddyStage];

  if (v14)
  {
    queue = self->_queue;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100015FD4;
    v16[3] = &unk_10002C8B8;
    v17 = v7;
    v18 = self;
    dispatch_async(queue, v16);
    v12 = v17;
LABEL_9:
  }
}

- (void)linkChangedToLinkType:(int64_t)a3
{
  if (self->_currentNRLinkType != a3)
  {
    self->_currentNRLinkType = a3;
    v4 = psd_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = psd_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        currentNRLinkType = self->_currentNRLinkType;
        v8 = 134217984;
        v9 = currentNRLinkType;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "link changed to %lu", &v8, 0xCu);
      }
    }

    [(PSDScheduler *)self _scheduleNextActivityIfPossible];
  }
}

@end