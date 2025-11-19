@interface PSDSchedulerAWDLogger
+ (id)defaultLogger;
- (PSDSchedulerAWDLogger)init;
- (PSDSchedulerAWDLogger)initWithCoder:(id)a3;
- (void)accumulateStatisticsForSegment:(id)a3;
- (void)bookmarkCurrentStatistics:(id)a3;
- (void)clearSessionState;
- (void)encodeWithCoder:(id)a3;
- (void)initialize;
- (void)logAWDDurationsForSync;
- (void)saveSessionState;
- (void)scheduler:(id)a3 didUpdateSyncSessionWithUpdate:(id)a4;
- (void)scheduler:(id)a3 willStartSyncSession:(id)a4;
@end

@implementation PSDSchedulerAWDLogger

+ (id)defaultLogger
{
  if (qword_100038048 != -1)
  {
    sub_10001ACC4();
  }

  v3 = qword_100038040;

  return v3;
}

- (void)initialize
{
  v3 = objc_alloc_init(PSDSchedulerAWDSessionState);
  sessionState = self->_sessionState;
  self->_sessionState = v3;

  v5 = +[NSMutableDictionary dictionary];
  cumulativeStatisticsCollections = self->_cumulativeStatisticsCollections;
  self->_cumulativeStatisticsCollections = v5;

  v7 = +[NSMutableDictionary dictionary];
  segmentStartingStatisticsCollections = self->_segmentStartingStatisticsCollections;
  self->_segmentStartingStatisticsCollections = v7;

  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("com.apple.PairedSync.awdLoggingQueue", v11);
  queue = self->_queue;
  self->_queue = v9;
}

- (PSDSchedulerAWDLogger)init
{
  v5.receiver = self;
  v5.super_class = PSDSchedulerAWDLogger;
  v2 = [(PSDSchedulerAWDLogger *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PSDSchedulerAWDLogger *)v2 initialize];
  }

  return v3;
}

- (PSDSchedulerAWDLogger)initWithCoder:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = PSDSchedulerAWDLogger;
  v5 = [(PSDSchedulerAWDLogger *)&v28 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionState"];
    sessionState = v5->_sessionState;
    v5->_sessionState = v6;

    v36[0] = objc_opt_class();
    v36[1] = objc_opt_class();
    v36[2] = objc_opt_class();
    v8 = [NSArray arrayWithObjects:v36 count:3];
    v9 = [NSSet setWithArray:v8];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"cumulativeStatisticsCollections"];
    v11 = [v10 mutableCopy];
    cumulativeStatisticsCollections = v5->_cumulativeStatisticsCollections;
    v5->_cumulativeStatisticsCollections = v11;

    v35[0] = objc_opt_class();
    v35[1] = objc_opt_class();
    v35[2] = objc_opt_class();
    v13 = [NSArray arrayWithObjects:v35 count:3];
    v14 = [NSSet setWithArray:v13];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"segmentStartingStatisticsCollections"];
    v16 = [v15 mutableCopy];
    segmentStartingStatisticsCollections = v5->_segmentStartingStatisticsCollections;
    v5->_segmentStartingStatisticsCollections = v16;

    if (v5->_cumulativeStatisticsCollections && v5->_sessionState && v5->_segmentStartingStatisticsCollections)
    {
      v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v19 = dispatch_queue_create("com.apple.PairedSync.awdLoggingQueue", v18);
      queue = v5->_queue;
      v5->_queue = v19;
    }

    else
    {
      v21 = psd_log();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

      if (v22)
      {
        v23 = psd_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v26 = v5->_segmentStartingStatisticsCollections;
          v25 = v5->_sessionState;
          v27 = v5->_cumulativeStatisticsCollections;
          *buf = 134218496;
          v30 = v27;
          v31 = 2048;
          v32 = v25;
          v33 = 2048;
          v34 = v26;
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed unarchiving PSDSchedulerAWDLogger %p %p %p", buf, 0x20u);
        }
      }

      [(PSDSchedulerAWDLogger *)v5 initialize];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sessionState = self->_sessionState;
  v5 = a3;
  [v5 encodeObject:sessionState forKey:@"sessionState"];
  [v5 encodeObject:self->_cumulativeStatisticsCollections forKey:@"cumulativeStatisticsCollections"];
  [v5 encodeObject:self->_segmentStartingStatisticsCollections forKey:@"segmentStartingStatisticsCollections"];
}

- (void)scheduler:(id)a3 willStartSyncSession:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100006A84;
  v8[3] = &unk_10002C8B8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)scheduler:(id)a3 didUpdateSyncSessionWithUpdate:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100006BFC;
  v8[3] = &unk_10002C8B8;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)saveSessionState
{
  v3 = +[PSDFileManager defaultManager];
  v4 = [v3 storageURL];
  v5 = [v4 URLByAppendingPathComponent:@"AWDLogger.dat"];

  v6 = [v5 path];
  LOBYTE(self) = [NSKeyedArchiver secureArchiveRootObject:self toFile:v6];

  if ((self & 1) == 0)
  {
    v7 = psd_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v9 = psd_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10001ACD8();
      }
    }
  }
}

- (void)clearSessionState
{
  v3 = +[PSDFileManager defaultManager];
  v4 = [v3 storageURL];
  v5 = [v4 URLByAppendingPathComponent:@"AWDLogger.dat"];

  v6 = +[NSFileManager defaultManager];
  v12 = 0;
  v7 = [v6 removeItemAtURL:v5 error:&v12];
  v8 = v12;

  if ((v7 & 1) == 0)
  {
    v9 = psd_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v10)
    {
      v11 = psd_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10001AD18(v8, v11);
      }
    }
  }

  [(PSDSchedulerAWDLogger *)self initialize];
}

- (void)logAWDDurationsForSync
{
  v2 = [(PSDSchedulerAWDLogger *)self sessionState];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v32 = [v3 pathForResource:@"activity-service" ofType:@"plist"];

  v31 = [NSData dataWithContentsOfFile:v32];
  v30 = [NSPropertyListSerialization propertyListWithData:v31 options:0 format:0 error:0];
  v4 = [v30 objectForKeyedSubscript:@"activity-service"];
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = sub_100007974;
  v70 = sub_100007984;
  v71 = 0;
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_10000798C;
  v61[3] = &unk_10002CA18;
  v62 = v2;
  v65 = &v66;
  v5 = v4;
  v63 = v5;
  v64 = self;
  v29 = v62;
  [v62 enumerateActivityNamesWithBlock:v61];
  v6 = +[NSMutableSet set];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v7 = +[PSDIDSServiceStatisticsCollection knownChannelNames];
  v8 = [v7 countByEnumeratingWithState:&v57 objects:v75 count:16];
  if (v8)
  {
    v9 = *v58;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v58 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [(NSMutableDictionary *)self->_cumulativeStatisticsCollections objectForKeyedSubscript:*(*(&v57 + 1) + 8 * i)];
        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_10000827C;
        v55[3] = &unk_10002CA40;
        v56 = v6;
        [v11 enumerateServiceStatisticsWithBlock:v55];
      }

      v8 = [v7 countByEnumeratingWithState:&v57 objects:v75 count:16];
    }

    while (v8);
  }

  v37 = +[NSMutableSet set];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v5;
  v12 = [obj countByEnumeratingWithState:&v51 objects:v74 count:16];
  if (v12)
  {
    v13 = *v52;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v52 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = [obj objectForKeyedSubscript:*(*(&v51 + 1) + 8 * j)];
        if (v15)
        {
          [v37 addObjectsFromArray:v15];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v51 objects:v74 count:16];
    }

    while (v12);
  }

  [v6 minusSet:v37];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v33 = v6;
  v35 = [v33 countByEnumeratingWithState:&v47 objects:v73 count:16];
  if (v35)
  {
    v34 = *v48;
    do
    {
      for (k = 0; k != v35; k = k + 1)
      {
        if (*v48 != v34)
        {
          objc_enumerationMutation(v33);
        }

        v16 = *(*(&v47 + 1) + 8 * k);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v17 = +[PSDIDSServiceStatisticsCollection knownChannelNames];
        v18 = [v17 countByEnumeratingWithState:&v43 objects:v72 count:16];
        if (v18)
        {
          v19 = 0;
          v40 = 0;
          v41 = v17;
          v39 = 0;
          v20 = 0;
          v21 = *v44;
          do
          {
            for (m = 0; m != v18; m = m + 1)
            {
              if (*v44 != v21)
              {
                objc_enumerationMutation(v41);
              }

              v23 = *(*(&v43 + 1) + 8 * m);
              v24 = [(NSMutableDictionary *)self->_cumulativeStatisticsCollections objectForKeyedSubscript:v23];
              v25 = [v24 statisticsForServiceName:v16];
              v26 = [v25 deliveredMessageCount];
              if ([v23 isEqualToString:@"syncMessagesStats"])
              {
                v19 += [v25 bytes];
              }

              else if ([v23 isEqualToString:@"defaultMessagesStats"])
              {
                v40 += [v25 bytes];
              }

              else if ([v23 isEqualToString:@"urgentMessagesStats"])
              {
                v39 += [v25 bytes];
              }

              v20 += v26;
            }

            v17 = v41;
            v18 = [v41 countByEnumeratingWithState:&v43 objects:v72 count:16];
          }

          while (v18);
        }

        else
        {
          v19 = 0;
          LODWORD(v40) = 0;
          LODWORD(v39) = 0;
          v20 = 0;
        }

        v27 = [@"service-" stringByAppendingString:v16];
        LOBYTE(v28) = 0;
        +[AWDPairedSyncSyncReport submitWithActivityName:syncDuration:timeoutCount:syncErrorCode:syncType:recordCount:syncByteCount:defaultByteCount:urgentByteCount:sawADropout:](AWDPairedSyncSyncReport, "submitWithActivityName:syncDuration:timeoutCount:syncErrorCode:syncType:recordCount:syncByteCount:defaultByteCount:urgentByteCount:sawADropout:", v27, 0, 0, [v67[5] integerValue], v20, v19, 0.0, __PAIR64__(v39, v40), v28);
      }

      v35 = [v33 countByEnumeratingWithState:&v47 objects:v73 count:16];
    }

    while (v35);
  }

  _Block_object_dispose(&v66, 8);
}

- (void)bookmarkCurrentStatistics:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = +[PSDIDSServiceStatisticsCollection knownChannelNames];
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

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v4 objectForKeyedSubscript:v10];
        v12 = [PSDIDSServiceStatisticsCollection statisticsCollectionWithChannelName:v10 statisticsDictionary:v11];
        [(NSMutableDictionary *)self->_segmentStartingStatisticsCollections setObject:v12 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)accumulateStatisticsForSegment:(id)a3
{
  v4 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = +[PSDIDSServiceStatisticsCollection knownChannelNames];
  v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v17 = *v28;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        v8 = [v4 objectForKeyedSubscript:v7];
        v9 = [PSDIDSServiceStatisticsCollection statisticsCollectionWithChannelName:v7 statisticsDictionary:v8];

        v10 = [(NSMutableDictionary *)self->_segmentStartingStatisticsCollections objectForKeyedSubscript:v7];
        v11 = [(NSMutableDictionary *)self->_cumulativeStatisticsCollections objectForKeyedSubscript:v7];
        v12 = [PSDIDSServiceStatisticsCollection statisticsCollectionWithChannelName:v7 statisticsDictionary:0];
        v23 = 0;
        v24 = &v23;
        v25 = 0x2020000000;
        v26 = 0;
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100008734;
        v18[3] = &unk_10002CA68;
        v22 = &v23;
        v13 = v10;
        v19 = v13;
        v14 = v11;
        v20 = v14;
        v15 = v12;
        v21 = v15;
        [v9 enumerateServiceStatisticsWithBlock:v18];
        if (*(v24 + 24) == 1)
        {
          [(PSDSchedulerAWDLogger *)self bookmarkCurrentStatistics:v4];
        }

        else
        {
          [(NSMutableDictionary *)self->_cumulativeStatisticsCollections setObject:v15 forKeyedSubscript:v7];
        }

        _Block_object_dispose(&v23, 8);
      }

      v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v5);
  }
}

@end