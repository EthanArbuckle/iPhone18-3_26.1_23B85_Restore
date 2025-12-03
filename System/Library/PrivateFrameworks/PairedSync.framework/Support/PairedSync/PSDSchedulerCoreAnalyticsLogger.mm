@interface PSDSchedulerCoreAnalyticsLogger
+ (id)defaultLogger;
- (PSDSchedulerCoreAnalyticsLogger)initWithSessionState:(id)state URL:(id)l;
- (id)binNameForDuration:(double)duration bins:(int *)bins count:(int)count;
- (int64_t)_linkTypeForAmountOfTimeKey:(id)key;
- (void)_appendLinkAvailabilityForKey:(id)key fromDictionary:(id)dictionary syncDuration:(double)duration intoDictionary:(id)intoDictionary outputKey:(id)outputKey;
- (void)_appendLinkInformationForActivity:(id)activity inEventInfo:(id)info forEventDuration:(double)duration;
- (void)_appendPairedWatchInforamtionToEvent:(id)event withDevice:(id)device;
- (void)_resetLinkMonitor;
- (void)_setupLinkMonitorWithPairingIdentifier:(id)identifier;
- (void)_updateCurrentLinkStats;
- (void)activityDidCompleteSending:(id)sending;
- (void)clearSessionState;
- (void)didFinishActivity:(id)activity inSession:(id)session;
- (void)didFinishSession:(id)session;
- (void)didStartActivity:(id)activity;
- (void)linkChangedToLinkType:(int64_t)type;
- (void)saveSessionState;
- (void)scheduler:(id)scheduler didUpdateSyncSessionWithUpdate:(id)update;
- (void)scheduler:(id)scheduler willStartSyncSession:(id)session;
- (void)sendEvent:(id)event;
@end

@implementation PSDSchedulerCoreAnalyticsLogger

+ (id)defaultLogger
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E348;
  block[3] = &unk_10002C778;
  block[4] = self;
  if (qword_100038080 != -1)
  {
    dispatch_once(&qword_100038080, block);
  }

  v2 = qword_100038078;

  return v2;
}

- (PSDSchedulerCoreAnalyticsLogger)initWithSessionState:(id)state URL:(id)l
{
  stateCopy = state;
  lCopy = l;
  v16.receiver = self;
  v16.super_class = PSDSchedulerCoreAnalyticsLogger;
  v9 = [(PSDSchedulerCoreAnalyticsLogger *)&v16 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v11 = dispatch_queue_create("com.apple.PairedSync.AnalyticsQueue", v10);
    analyticsQueue = v9->_analyticsQueue;
    v9->_analyticsQueue = v11;

    objc_storeStrong(&v9->_sessionState, state);
    objc_storeStrong(&v9->_sessionStateURL, l);
    v13 = objc_alloc_init(NSMutableSet);
    activeSyncTopics = v9->_activeSyncTopics;
    v9->_activeSyncTopics = v13;
  }

  return v9;
}

- (void)scheduler:(id)scheduler willStartSyncSession:(id)session
{
  sessionCopy = session;
  analyticsQueue = self->_analyticsQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000E6F0;
  v8[3] = &unk_10002C8B8;
  v8[4] = self;
  v9 = sessionCopy;
  v7 = sessionCopy;
  dispatch_async(analyticsQueue, v8);
}

- (void)scheduler:(id)scheduler didUpdateSyncSessionWithUpdate:(id)update
{
  updateCopy = update;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000E8EC;
  v15[3] = &unk_10002C9A0;
  v15[4] = self;
  [updateCopy enumerateNewlyRunningActivitiesWithBlock:v15];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000E8F4;
  v14[3] = &unk_10002C9A0;
  v14[4] = self;
  [updateCopy enumerateChangedActivitiesWithBlock:v14];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10000E960;
  v11 = &unk_10002C978;
  selfCopy = self;
  v6 = updateCopy;
  v13 = v6;
  [v6 enumerateNewlyCompletedActivitiesWithBlock:&v8];
  if ([v6 didUpdateCompleteSyncSession])
  {
    updatedSession = [v6 updatedSession];
    [(PSDSchedulerCoreAnalyticsLogger *)self didFinishSession:updatedSession];
  }
}

- (void)_setupLinkMonitorWithPairingIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    v5 = +[PSYRegistrySingleton registry];
    v6 = [v5 deviceForPairingID:identifierCopy];

    if (v6)
    {
      v7 = [[PSYLinkUpgradeMonitor alloc] initWithRegistryDevice:v6 delegateQueue:self->_analyticsQueue];
      linkUpgradeMonitor = self->_linkUpgradeMonitor;
      self->_linkUpgradeMonitor = v7;

      [(PSYLinkUpgradeMonitor *)self->_linkUpgradeMonitor setDelegate:self];
    }

    self->_currentLinkType = [(PSYLinkUpgradeMonitor *)self->_linkUpgradeMonitor currentLinkType];
    v9 = +[NSDate date];
    currentLinkStartTime = self->_currentLinkStartTime;
    self->_currentLinkStartTime = v9;

    v11 = psd_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = psd_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_currentLinkType - 1;
        if (v14 > 3)
        {
          v15 = @"unknown";
        }

        else
        {
          v15 = off_10002CC50[v14];
        }

        v16 = 138412290;
        v17 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "current link type: %@", &v16, 0xCu);
      }
    }
  }
}

- (void)_resetLinkMonitor
{
  [(PSYLinkUpgradeMonitor *)self->_linkUpgradeMonitor resetCompanionLinkPreference];
  linkUpgradeMonitor = self->_linkUpgradeMonitor;
  self->_linkUpgradeMonitor = 0;
}

- (void)linkChangedToLinkType:(int64_t)type
{
  if (self->_currentLinkType != type)
  {
    [(PSDSchedulerCoreAnalyticsLogger *)self _updateCurrentLinkStats];
    self->_currentLinkType = type;
  }
}

- (void)_updateCurrentLinkStats
{
  v3 = +[NSDate date];
  currentLinkType = self->_currentLinkType;
  v5 = self->_currentLinkStartTime;
  v6 = +[NSDate date];
  currentLinkStartTime = self->_currentLinkStartTime;
  self->_currentLinkStartTime = v6;

  sessionState = [(PSDSchedulerCoreAnalyticsLogger *)self sessionState];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_activeSyncTopics;
  v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [sessionState updateLinkDurationForActivity:*(*(&v14 + 1) + 8 * v13) withLinkType:currentLinkType linkStartTime:v5 endTime:{v3, v14}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)didStartActivity:(id)activity
{
  activityCopy = activity;
  analyticsQueue = self->_analyticsQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000EDD8;
  v7[3] = &unk_10002C8B8;
  v7[4] = self;
  v8 = activityCopy;
  v6 = activityCopy;
  dispatch_async(analyticsQueue, v7);
}

- (void)activityDidCompleteSending:(id)sending
{
  sendingCopy = sending;
  analyticsQueue = self->_analyticsQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000EF24;
  v7[3] = &unk_10002C8B8;
  v8 = sendingCopy;
  selfCopy = self;
  v6 = sendingCopy;
  dispatch_async(analyticsQueue, v7);
}

- (void)didFinishActivity:(id)activity inSession:(id)session
{
  activityCopy = activity;
  sessionCopy = session;
  analyticsQueue = self->_analyticsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F060;
  block[3] = &unk_10002CC30;
  v12 = activityCopy;
  selfCopy = self;
  v14 = sessionCopy;
  v9 = sessionCopy;
  v10 = activityCopy;
  dispatch_async(analyticsQueue, block);
}

- (void)didFinishSession:(id)session
{
  sessionCopy = session;
  analyticsQueue = self->_analyticsQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000F1A8;
  v7[3] = &unk_10002C8B8;
  v7[4] = self;
  v8 = sessionCopy;
  v6 = sessionCopy;
  dispatch_async(analyticsQueue, v7);
}

- (void)saveSessionState
{
  sessionState = [(PSDSchedulerCoreAnalyticsLogger *)self sessionState];
  sessionStateURL = [(PSDSchedulerCoreAnalyticsLogger *)self sessionStateURL];
  path = [sessionStateURL path];
  v6 = [NSKeyedArchiver secureArchiveRootObject:sessionState toFile:path];

  if ((v6 & 1) == 0)
  {
    v7 = psd_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v9 = psd_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10001B218(v9);
      }
    }
  }
}

- (void)clearSessionState
{
  v3 = +[NSFileManager defaultManager];
  sessionStateURL = [(PSDSchedulerCoreAnalyticsLogger *)self sessionStateURL];
  v11 = 0;
  v5 = [v3 removeItemAtURL:sessionStateURL error:&v11];
  v6 = v11;

  if ((v5 & 1) == 0)
  {
    v7 = psd_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v9 = psd_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10001B25C(v6, v9);
      }
    }
  }

  v10 = objc_alloc_init(PSDSchedulerCoreAnalyticsSessionState);
  [(PSDSchedulerCoreAnalyticsLogger *)self setSessionState:v10];
}

- (void)_appendLinkInformationForActivity:(id)activity inEventInfo:(id)info forEventDuration:(double)duration
{
  activityCopy = activity;
  infoCopy = info;
  sessionState = [(PSDSchedulerCoreAnalyticsLogger *)self sessionState];
  v26 = activityCopy;
  v11 = [sessionState linkDurationsForActivity:activityCopy];
  [(PSDSchedulerCoreAnalyticsLogger *)self _appendLinkAvailabilityForKey:@"amountOfTimeLinkOnBT" fromDictionary:v11 syncDuration:infoCopy intoDictionary:@"percentOfTimeLinkOnBT" outputKey:duration];
  [(PSDSchedulerCoreAnalyticsLogger *)self _appendLinkAvailabilityForKey:@"amountOfTimeLinkOnAWDL" fromDictionary:v11 syncDuration:infoCopy intoDictionary:@"percentOfTimeLinkOnAWDL" outputKey:duration];
  [(PSDSchedulerCoreAnalyticsLogger *)self _appendLinkAvailabilityForKey:@"amountOfTimeLinkOnInfraWiFi" fromDictionary:v11 syncDuration:infoCopy intoDictionary:@"percentOfTimeLinkOnInfraWiFi" outputKey:duration];
  [(PSDSchedulerCoreAnalyticsLogger *)self _appendLinkAvailabilityForKey:@"amountOfTimeLinkOnOther" fromDictionary:v11 syncDuration:infoCopy intoDictionary:@"percentOfTimeLinkOnOther" outputKey:duration];
  [(PSDSchedulerCoreAnalyticsLogger *)self _appendLinkAvailabilityForKey:@"amountOfTimeLinkInactive" fromDictionary:v11 syncDuration:infoCopy intoDictionary:@"percentOfTimeLinkInactive" outputKey:duration];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v28;
    v17 = 0.0;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v27 + 1) + 8 * i);
        v20 = [v12 objectForKeyedSubscript:v19];
        [v20 floatValue];
        v22 = v21;

        if (v22 > v17)
        {
          v15 = [(PSDSchedulerCoreAnalyticsLogger *)self _linkTypeForAmountOfTimeKey:v19];
          v23 = [v12 objectForKeyedSubscript:v19];
          [v23 floatValue];
          v17 = v24;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  v25 = [NSNumber numberWithInteger:v15];
  [infoCopy setObject:v25 forKeyedSubscript:@"linkType"];
}

- (int64_t)_linkTypeForAmountOfTimeKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"amountOfTimeLinkOnBT"])
  {
    v4 = 1;
  }

  else if ([keyCopy isEqualToString:@"amountOfTimeLinkOnAWDL"])
  {
    v4 = 2;
  }

  else if ([keyCopy isEqualToString:@"amountOfTimeLinkOnOther"])
  {
    v4 = 4;
  }

  else if ([keyCopy isEqualToString:@"amountOfTimeLinkOnInfraWiFi"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_appendLinkAvailabilityForKey:(id)key fromDictionary:(id)dictionary syncDuration:(double)duration intoDictionary:(id)intoDictionary outputKey:(id)outputKey
{
  keyCopy = key;
  dictionaryCopy = dictionary;
  intoDictionaryCopy = intoDictionary;
  outputKeyCopy = outputKey;
  v13 = [dictionaryCopy objectForKeyedSubscript:keyCopy];

  if (v13)
  {
    v14 = [dictionaryCopy objectForKeyedSubscript:keyCopy];
    [v14 doubleValue];
    v15 = [PSDAnalyticsUtils binPercentageRangeForInputDuration:"binPercentageRangeForInputDuration:withTotalDuration:" withTotalDuration:?];

    [intoDictionaryCopy setObject:v15 forKeyedSubscript:outputKeyCopy];
    v16 = [dictionaryCopy objectForKeyedSubscript:keyCopy];
    [intoDictionaryCopy setObject:v16 forKeyedSubscript:keyCopy];
  }
}

- (void)_appendPairedWatchInforamtionToEvent:(id)event withDevice:(id)device
{
  eventCopy = event;
  deviceCopy = device;
  v7 = deviceCopy;
  if (deviceCopy)
  {
    systemBuildVersion = [deviceCopy systemBuildVersion];
    v9 = [v7 valueForProperty:PDRDevicePropertyKeyHWModelString];
    if ([v7 supportsCapability:1863581443])
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    v11 = [NSNumber numberWithInt:v10];
    [eventCopy setObject:v11 forKeyedSubscript:@"syncVersion"];

    [eventCopy setObject:systemBuildVersion forKeyedSubscript:@"pairedDeviceBuildVersion"];
    if ([systemBuildVersion length]>= 2)
    {
      v12 = [systemBuildVersion substringToIndex:2];
      [eventCopy setObject:v12 forKeyedSubscript:@"pairedDeviceBuildPrefix"];
    }

    [eventCopy setObject:v9 forKeyedSubscript:@"pairedDeviceModel"];
    v13 = [v7 valueForProperty:PDRDevicePropertyKeyIsInternalInstall];
    [eventCopy setObject:v13 forKeyedSubscript:@"pairedDeviceHasInternalInstall"];
  }

  else
  {
    v14 = psd_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (!v15)
    {
      goto LABEL_9;
    }

    systemBuildVersion = psd_log();
    if (os_log_type_enabled(systemBuildVersion, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, systemBuildVersion, OS_LOG_TYPE_DEFAULT, "skipping adding paired device information as device is nil", v16, 2u);
    }
  }

LABEL_9:
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  v4 = psd_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (eventCopy)
  {
    if (v5)
    {
      v6 = psd_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        v9 = eventCopy;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PSDSchedulerCoreAnalyticsLogger Sending Event: %@", &v8, 0xCu);
      }
    }

    AnalyticsSendEvent();
  }

  else if (v5)
  {
    v7 = psd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[PSDSchedulerCoreAnalyticsLogger sendEvent:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: No event passed.", &v8, 0xCu);
    }
  }
}

- (id)binNameForDuration:(double)duration bins:(int *)bins count:(int)count
{
  if (count < 1)
  {
LABEL_5:
    [NSString stringWithFormat:@">%d", duration, bins[count - 1], v9];
  }

  else
  {
    v5 = 0;
    while (1)
    {
      v6 = bins[v5];
      if (v6 > duration)
      {
        break;
      }

      if (count == ++v5)
      {
        goto LABEL_5;
      }
    }

    if (v5 * 4)
    {
      [NSString stringWithFormat:@"%d-%d", duration, bins[v5 - 1], v6];
    }

    else
    {
      [NSString stringWithFormat:@"<%d", duration, *bins, v9];
    }
  }
  v7 = ;

  return v7;
}

@end