@interface PSDSchedulerCoreAnalyticsLogger
+ (id)defaultLogger;
- (PSDSchedulerCoreAnalyticsLogger)initWithSessionState:(id)a3 URL:(id)a4;
- (id)binNameForDuration:(double)a3 bins:(int *)a4 count:(int)a5;
- (int64_t)_linkTypeForAmountOfTimeKey:(id)a3;
- (void)_appendLinkAvailabilityForKey:(id)a3 fromDictionary:(id)a4 syncDuration:(double)a5 intoDictionary:(id)a6 outputKey:(id)a7;
- (void)_appendLinkInformationForActivity:(id)a3 inEventInfo:(id)a4 forEventDuration:(double)a5;
- (void)_appendPairedWatchInforamtionToEvent:(id)a3 withDevice:(id)a4;
- (void)_resetLinkMonitor;
- (void)_setupLinkMonitorWithPairingIdentifier:(id)a3;
- (void)_updateCurrentLinkStats;
- (void)activityDidCompleteSending:(id)a3;
- (void)clearSessionState;
- (void)didFinishActivity:(id)a3 inSession:(id)a4;
- (void)didFinishSession:(id)a3;
- (void)didStartActivity:(id)a3;
- (void)linkChangedToLinkType:(int64_t)a3;
- (void)saveSessionState;
- (void)scheduler:(id)a3 didUpdateSyncSessionWithUpdate:(id)a4;
- (void)scheduler:(id)a3 willStartSyncSession:(id)a4;
- (void)sendEvent:(id)a3;
@end

@implementation PSDSchedulerCoreAnalyticsLogger

+ (id)defaultLogger
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E348;
  block[3] = &unk_10002C778;
  block[4] = a1;
  if (qword_100038080 != -1)
  {
    dispatch_once(&qword_100038080, block);
  }

  v2 = qword_100038078;

  return v2;
}

- (PSDSchedulerCoreAnalyticsLogger)initWithSessionState:(id)a3 URL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = PSDSchedulerCoreAnalyticsLogger;
  v9 = [(PSDSchedulerCoreAnalyticsLogger *)&v16 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v11 = dispatch_queue_create("com.apple.PairedSync.AnalyticsQueue", v10);
    analyticsQueue = v9->_analyticsQueue;
    v9->_analyticsQueue = v11;

    objc_storeStrong(&v9->_sessionState, a3);
    objc_storeStrong(&v9->_sessionStateURL, a4);
    v13 = objc_alloc_init(NSMutableSet);
    activeSyncTopics = v9->_activeSyncTopics;
    v9->_activeSyncTopics = v13;
  }

  return v9;
}

- (void)scheduler:(id)a3 willStartSyncSession:(id)a4
{
  v5 = a4;
  analyticsQueue = self->_analyticsQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000E6F0;
  v8[3] = &unk_10002C8B8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(analyticsQueue, v8);
}

- (void)scheduler:(id)a3 didUpdateSyncSessionWithUpdate:(id)a4
{
  v5 = a4;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000E8EC;
  v15[3] = &unk_10002C9A0;
  v15[4] = self;
  [v5 enumerateNewlyRunningActivitiesWithBlock:v15];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000E8F4;
  v14[3] = &unk_10002C9A0;
  v14[4] = self;
  [v5 enumerateChangedActivitiesWithBlock:v14];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10000E960;
  v11 = &unk_10002C978;
  v12 = self;
  v6 = v5;
  v13 = v6;
  [v6 enumerateNewlyCompletedActivitiesWithBlock:&v8];
  if ([v6 didUpdateCompleteSyncSession])
  {
    v7 = [v6 updatedSession];
    [(PSDSchedulerCoreAnalyticsLogger *)self didFinishSession:v7];
  }
}

- (void)_setupLinkMonitorWithPairingIdentifier:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = +[PSYRegistrySingleton registry];
    v6 = [v5 deviceForPairingID:v4];

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

- (void)linkChangedToLinkType:(int64_t)a3
{
  if (self->_currentLinkType != a3)
  {
    [(PSDSchedulerCoreAnalyticsLogger *)self _updateCurrentLinkStats];
    self->_currentLinkType = a3;
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

  v8 = [(PSDSchedulerCoreAnalyticsLogger *)self sessionState];
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

        [v8 updateLinkDurationForActivity:*(*(&v14 + 1) + 8 * v13) withLinkType:currentLinkType linkStartTime:v5 endTime:{v3, v14}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)didStartActivity:(id)a3
{
  v4 = a3;
  analyticsQueue = self->_analyticsQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000EDD8;
  v7[3] = &unk_10002C8B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(analyticsQueue, v7);
}

- (void)activityDidCompleteSending:(id)a3
{
  v4 = a3;
  analyticsQueue = self->_analyticsQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000EF24;
  v7[3] = &unk_10002C8B8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(analyticsQueue, v7);
}

- (void)didFinishActivity:(id)a3 inSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  analyticsQueue = self->_analyticsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F060;
  block[3] = &unk_10002CC30;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(analyticsQueue, block);
}

- (void)didFinishSession:(id)a3
{
  v4 = a3;
  analyticsQueue = self->_analyticsQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000F1A8;
  v7[3] = &unk_10002C8B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(analyticsQueue, v7);
}

- (void)saveSessionState
{
  v3 = [(PSDSchedulerCoreAnalyticsLogger *)self sessionState];
  v4 = [(PSDSchedulerCoreAnalyticsLogger *)self sessionStateURL];
  v5 = [v4 path];
  v6 = [NSKeyedArchiver secureArchiveRootObject:v3 toFile:v5];

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
  v4 = [(PSDSchedulerCoreAnalyticsLogger *)self sessionStateURL];
  v11 = 0;
  v5 = [v3 removeItemAtURL:v4 error:&v11];
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

- (void)_appendLinkInformationForActivity:(id)a3 inEventInfo:(id)a4 forEventDuration:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(PSDSchedulerCoreAnalyticsLogger *)self sessionState];
  v26 = v8;
  v11 = [v10 linkDurationsForActivity:v8];
  [(PSDSchedulerCoreAnalyticsLogger *)self _appendLinkAvailabilityForKey:@"amountOfTimeLinkOnBT" fromDictionary:v11 syncDuration:v9 intoDictionary:@"percentOfTimeLinkOnBT" outputKey:a5];
  [(PSDSchedulerCoreAnalyticsLogger *)self _appendLinkAvailabilityForKey:@"amountOfTimeLinkOnAWDL" fromDictionary:v11 syncDuration:v9 intoDictionary:@"percentOfTimeLinkOnAWDL" outputKey:a5];
  [(PSDSchedulerCoreAnalyticsLogger *)self _appendLinkAvailabilityForKey:@"amountOfTimeLinkOnInfraWiFi" fromDictionary:v11 syncDuration:v9 intoDictionary:@"percentOfTimeLinkOnInfraWiFi" outputKey:a5];
  [(PSDSchedulerCoreAnalyticsLogger *)self _appendLinkAvailabilityForKey:@"amountOfTimeLinkOnOther" fromDictionary:v11 syncDuration:v9 intoDictionary:@"percentOfTimeLinkOnOther" outputKey:a5];
  [(PSDSchedulerCoreAnalyticsLogger *)self _appendLinkAvailabilityForKey:@"amountOfTimeLinkInactive" fromDictionary:v11 syncDuration:v9 intoDictionary:@"percentOfTimeLinkInactive" outputKey:a5];
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
  [v9 setObject:v25 forKeyedSubscript:@"linkType"];
}

- (int64_t)_linkTypeForAmountOfTimeKey:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"amountOfTimeLinkOnBT"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"amountOfTimeLinkOnAWDL"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"amountOfTimeLinkOnOther"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"amountOfTimeLinkOnInfraWiFi"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_appendLinkAvailabilityForKey:(id)a3 fromDictionary:(id)a4 syncDuration:(double)a5 intoDictionary:(id)a6 outputKey:(id)a7
{
  v17 = a3;
  v10 = a4;
  v11 = a6;
  v12 = a7;
  v13 = [v10 objectForKeyedSubscript:v17];

  if (v13)
  {
    v14 = [v10 objectForKeyedSubscript:v17];
    [v14 doubleValue];
    v15 = [PSDAnalyticsUtils binPercentageRangeForInputDuration:"binPercentageRangeForInputDuration:withTotalDuration:" withTotalDuration:?];

    [v11 setObject:v15 forKeyedSubscript:v12];
    v16 = [v10 objectForKeyedSubscript:v17];
    [v11 setObject:v16 forKeyedSubscript:v17];
  }
}

- (void)_appendPairedWatchInforamtionToEvent:(id)a3 withDevice:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 systemBuildVersion];
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
    [v5 setObject:v11 forKeyedSubscript:@"syncVersion"];

    [v5 setObject:v8 forKeyedSubscript:@"pairedDeviceBuildVersion"];
    if ([v8 length]>= 2)
    {
      v12 = [v8 substringToIndex:2];
      [v5 setObject:v12 forKeyedSubscript:@"pairedDeviceBuildPrefix"];
    }

    [v5 setObject:v9 forKeyedSubscript:@"pairedDeviceModel"];
    v13 = [v7 valueForProperty:PDRDevicePropertyKeyIsInternalInstall];
    [v5 setObject:v13 forKeyedSubscript:@"pairedDeviceHasInternalInstall"];
  }

  else
  {
    v14 = psd_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (!v15)
    {
      goto LABEL_9;
    }

    v8 = psd_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "skipping adding paired device information as device is nil", v16, 2u);
    }
  }

LABEL_9:
}

- (void)sendEvent:(id)a3
{
  v3 = a3;
  v4 = psd_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    if (v5)
    {
      v6 = psd_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        v9 = v3;
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

- (id)binNameForDuration:(double)a3 bins:(int *)a4 count:(int)a5
{
  if (a5 < 1)
  {
LABEL_5:
    [NSString stringWithFormat:@">%d", a3, a4[a5 - 1], v9];
  }

  else
  {
    v5 = 0;
    while (1)
    {
      v6 = a4[v5];
      if (v6 > a3)
      {
        break;
      }

      if (a5 == ++v5)
      {
        goto LABEL_5;
      }
    }

    if (v5 * 4)
    {
      [NSString stringWithFormat:@"%d-%d", a3, a4[v5 - 1], v6];
    }

    else
    {
      [NSString stringWithFormat:@"<%d", a3, *a4, v9];
    }
  }
  v7 = ;

  return v7;
}

@end