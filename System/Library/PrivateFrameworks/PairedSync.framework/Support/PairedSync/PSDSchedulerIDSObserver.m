@interface PSDSchedulerIDSObserver
- (PSDSchedulerIDSObserver)init;
- (id)aggdKeyForStatistics:(id)a3 channelName:(id)a4;
- (void)_diffWithStatistics:(id)a3;
- (void)_logAggdKey:(id)a3 value:(int64_t)a4;
- (void)_logStatistics:(id)a3 channelName:(id)a4;
- (void)_logStatisticsCollectionDiff:(id)a3;
- (void)_requestFinalStatisticsIfPossibleWithBlock:(id)a3;
- (void)scheduler:(id)a3 didClearSyncSession:(id)a4 withBlock:(id)a5;
- (void)scheduler:(id)a3 willStartSyncSession:(id)a4;
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

- (void)scheduler:(id)a3 willStartSyncSession:(id)a4
{
  if ([a4 syncSessionType])
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

- (void)scheduler:(id)a3 didClearSyncSession:(id)a4 withBlock:(id)a5
{
  v7 = a5;
  if ([a4 syncSessionType])
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
    if (v7)
    {
      v7[2](v7);
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

    [(PSDSchedulerIDSObserver *)self _requestFinalStatisticsIfPossibleWithBlock:v7];
  }
}

- (void)_requestFinalStatisticsIfPossibleWithBlock:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001AF8;
  v7[3] = &unk_10002C6D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_diffWithStatistics:(id)a3
{
  v4 = a3;
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

          v12 = [v4 objectForKeyedSubscript:v9];
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

- (void)_logStatisticsCollectionDiff:(id)a3
{
  v4 = a3;
  v5 = psd_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = psd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Log statistics %@", buf, 0xCu);
    }
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001FFC;
  v9[3] = &unk_10002C6F8;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v8 enumerateServiceStatisticsWithBlock:v9];
}

- (void)_logStatistics:(id)a3 channelName:(id)a4
{
  v6 = a3;
  v10 = [(PSDSchedulerIDSObserver *)self aggdKeyForStatistics:v6 channelName:a4];
  v7 = [v10 stringByAppendingString:@".deliveredBytes"];
  -[PSDSchedulerIDSObserver _logAggdKey:value:](self, "_logAggdKey:value:", v7, [v6 deliveredBytes]);
  v8 = [v10 stringByAppendingString:@".deliveredMessagesCount"];
  v9 = [v6 deliveredMessageCount];

  [(PSDSchedulerIDSObserver *)self _logAggdKey:v8 value:v9];
}

- (id)aggdKeyForStatistics:(id)a3 channelName:(id)a4
{
  v5 = a4;
  v6 = [a3 serviceName];
  v7 = [NSString stringWithFormat:@"pairedsync.%@.%@", v5, v6];

  return v7;
}

- (void)_logAggdKey:(id)a3 value:(int64_t)a4
{
  v5 = a3;
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
      v10 = v5;
      v11 = 2048;
      v12 = a4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ADClientAddValueForScalarKey(%{public}@, %lld)", &v9, 0x16u);
    }
  }
}

@end