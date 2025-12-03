@interface PSDSchedulerIDSObserver
- (PSDSchedulerIDSObserver)init;
- (id)aggdKeyForStatistics:(id)statistics channelName:(id)name;
- (void)_diffWithStatistics:(id)statistics;
- (void)_logAggdKey:(id)key value:(int64_t)value;
- (void)_logStatistics:(id)statistics channelName:(id)name;
- (void)_logStatisticsCollectionDiff:(id)diff;
- (void)_requestFinalStatisticsIfPossibleWithBlock:(id)block;
- (void)scheduler:(id)scheduler didClearSyncSession:(id)session withBlock:(id)block;
- (void)scheduler:(id)scheduler willStartSyncSession:(id)session;
@end

@implementation PSDSchedulerIDSObserver

- (PSDSchedulerIDSObserver)init
{
  v6.receiver = self;
  v6.super_class = PSDSchedulerIDSObserver;
  v2 = [(PSDSchedulerIDSObserver *)&v6 init];
  if (v2)
  {
    v3 = dispatch_get_global_queue(2, 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)scheduler:(id)scheduler willStartSyncSession:(id)session
{
  if ([session syncSessionType])
  {
    v5 = dispatch_semaphore_create(0);
    v6 = dispatch_get_global_queue(17, 0);
    IDSLocalPairingReunionSyncStartedForServices();

    v7 = dispatch_time(0, 30000000000);
    dispatch_semaphore_wait(v5, v7);
    v8 = psd_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = psd_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "IDSLocalPairingReunionSyncStartedForServices", buf, 2u);
      }
    }
  }

  else
  {
    IDSInitialLocalSyncStartedForServices();
    v11 = psd_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = psd_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "IDSInitialLocalSyncStartedForServices", buf, 2u);
      }
    }

    v14 = psd_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = psd_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Requesting IDS stats for sync start", buf, 2u);
      }
    }

    queue = self->_queue;
    IDSGetDeliveryStatsWithCompletionBlock();
  }

  self->_syncComplete = 0;
}

- (void)scheduler:(id)scheduler didClearSyncSession:(id)session withBlock:(id)block
{
  blockCopy = block;
  if ([session syncSessionType])
  {
    v8 = dispatch_semaphore_create(0);
    v9 = dispatch_get_global_queue(17, 0);
    IDSLocalPairingReunionSyncCompletedForServices();

    v10 = dispatch_time(0, 30000000000);
    dispatch_semaphore_wait(v8, v10);
    v11 = psd_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = psd_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "IDSLocalPairingReunionSyncCompletedForServices", buf, 2u);
      }
    }

    self->_syncComplete = 1;
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }
  }

  else
  {
    self->_syncComplete = 1;
    IDSInitialLocalSyncCompletedForServices();
    v14 = psd_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = psd_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "IDSInitialLocalSyncCompletedForServices", buf, 2u);
      }
    }

    [(PSDSchedulerIDSObserver *)self _requestFinalStatisticsIfPossibleWithBlock:blockCopy];
  }
}

- (void)_requestFinalStatisticsIfPossibleWithBlock:(id)block
{
  blockCopy = block;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001AF8;
  v7[3] = &unk_10002C6D0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(queue, v7);
}

- (void)_diffWithStatistics:(id)statistics
{
  statisticsCopy = statistics;
  if (self->_startingStatistics)
  {
    +[PSDIDSServiceStatisticsCollection knownChannelNames];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = v20 = 0u;
    v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = [(NSDictionary *)self->_startingStatistics objectForKeyedSubscript:v9];
          v11 = [PSDIDSServiceStatisticsCollection statisticsCollectionWithChannelName:v9 statisticsDictionary:v10];

          v12 = [statisticsCopy objectForKeyedSubscript:v9];
          v13 = [PSDIDSServiceStatisticsCollection statisticsCollectionWithChannelName:v9 statisticsDictionary:v12];

          v14 = [v13 statisticsCollectionByDiffingStatisticsCollection:v11];
          [(PSDSchedulerIDSObserver *)self _logStatisticsCollectionDiff:v14];
        }

        v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    startingStatistics = self->_startingStatistics;
    self->_startingStatistics = 0;
  }
}

- (void)_logStatisticsCollectionDiff:(id)diff
{
  diffCopy = diff;
  v5 = psd_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = psd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = diffCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Log statistics %@", buf, 0xCu);
    }
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001FFC;
  v9[3] = &unk_10002C6F8;
  v9[4] = self;
  v10 = diffCopy;
  v8 = diffCopy;
  [v8 enumerateServiceStatisticsWithBlock:v9];
}

- (void)_logStatistics:(id)statistics channelName:(id)name
{
  statisticsCopy = statistics;
  v10 = [(PSDSchedulerIDSObserver *)self aggdKeyForStatistics:statisticsCopy channelName:name];
  v7 = [v10 stringByAppendingString:@".deliveredBytes"];
  -[PSDSchedulerIDSObserver _logAggdKey:value:](self, "_logAggdKey:value:", v7, [statisticsCopy deliveredBytes]);
  v8 = [v10 stringByAppendingString:@".deliveredMessagesCount"];
  deliveredMessageCount = [statisticsCopy deliveredMessageCount];

  [(PSDSchedulerIDSObserver *)self _logAggdKey:v8 value:deliveredMessageCount];
}

- (id)aggdKeyForStatistics:(id)statistics channelName:(id)name
{
  nameCopy = name;
  serviceName = [statistics serviceName];
  v7 = [NSString stringWithFormat:@"pairedsync.%@.%@", nameCopy, serviceName];

  return v7;
}

- (void)_logAggdKey:(id)key value:(int64_t)value
{
  keyCopy = key;
  ADClientClearScalarKey();
  ADClientAddValueForScalarKey();
  v6 = psd_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = psd_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543618;
      v10 = keyCopy;
      v11 = 2048;
      valueCopy = value;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ADClientAddValueForScalarKey(%{public}@, %lld)", &v9, 0x16u);
    }
  }
}

@end