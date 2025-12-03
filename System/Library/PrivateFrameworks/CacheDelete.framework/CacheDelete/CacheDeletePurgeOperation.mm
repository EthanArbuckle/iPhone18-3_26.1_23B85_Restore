@interface CacheDeletePurgeOperation
- (BOOL)reportedAmountMatchesFreedSpace:(id)space;
- (CacheDeletePurgeOperation)initWithInfo:(id)info services:(id)services volumes:(id)volumes;
- (id)filterServices:(id)services;
- (id)purgeSentinel:(BOOL)sentinel outInode:(unint64_t *)inode;
- (void)_startOperation:(id)operation;
- (void)cancelOperation;
- (void)oneShot:(id)shot volume:(id)volume urgency:(int)urgency donation:(unint64_t)donation currentRoundResults:(id)results timeout:(unint64_t)timeout info:(id)info optionalTestInfo:(id)self0;
- (void)tryFSPurge:(unint64_t)purge atUrgency:(int)urgency onVolume:(id)volume orderedServices:(id)services completion:(id)completion;
@end

@implementation CacheDeletePurgeOperation

- (CacheDeletePurgeOperation)initWithInfo:(id)info services:(id)services volumes:(id)volumes
{
  infoCopy = info;
  v28.receiver = self;
  v28.super_class = CacheDeletePurgeOperation;
  v9 = [(CacheDeleteOperation *)&v28 initWithInfo:infoCopy services:services volumes:volumes];
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = +[NSMutableDictionary dictionary];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  services = [(CacheDeleteOperation *)v9 services];
  v12 = [services countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(services);
        }

        v16 = *(*(&v24 + 1) + 8 * v15);
        services2 = [(CacheDeleteOperation *)v9 services];
        v18 = [services2 objectForKeyedSubscript:v16];

        if ([v18 doesPurge])
        {
          [v10 setObject:v18 forKeyedSubscript:v16];
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [services countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v13);
  }

  [(CacheDeleteOperation *)v9 setServices:v10];
  result = [(CacheDeleteOperation *)v9 result];
  v20 = [result objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9->_purge_amount_needed = [v20 unsignedLongLongValue];
    v9->_purge_amount_reported = 0;

LABEL_13:
    v21 = v9;
    goto LABEL_17;
  }

  v22 = CDGetLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v30 = infoCopy;
    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "CACHE_DELETE_AMOUNT is missing in info: %{public}@", buf, 0xCu);
  }

  v21 = 0;
LABEL_17:

  return v21;
}

- (void)cancelOperation
{
  [(CacheDeletePurgeOperation *)self setCancel:1];
  v3 = CDGetLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CancelPurge Start ", buf, 2u);
  }

  services = [(CacheDeleteOperation *)self services];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __44__CacheDeletePurgeOperation_cancelOperation__block_invoke;
  v5[3] = &unk_100061AA0;
  v5[4] = self;
  [services enumerateKeysAndObjectsUsingBlock:v5];
}

void __44__CacheDeletePurgeOperation_cancelOperation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 inFlight])
  {
    v6 = [*(a1 + 32) services];
    v7 = [v6 objectForKeyedSubscript:v5];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __44__CacheDeletePurgeOperation_cancelOperation__block_invoke_2;
    v8[3] = &unk_100060D58;
    v9 = v5;
    [v7 serviceCancelPurge:v8];
  }
}

void __44__CacheDeletePurgeOperation_cancelOperation__block_invoke_2(uint64_t a1)
{
  v2 = CDGetLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CancelPurge complete (service=%{public}@)", &v4, 0xCu);
  }
}

- (void)tryFSPurge:(unint64_t)purge atUrgency:(int)urgency onVolume:(id)volume orderedServices:(id)services completion:(id)completion
{
  volumeCopy = volume;
  servicesCopy = services;
  completionCopy = completion;
  info = [(CacheDeleteOperation *)self info];
  v15 = [info objectForKeyedSubscript:@"CACHE_DELETE_FREESPACE_GOAL"];
  v16 = evaluateNumberProperty();

  if (!v16)
  {
    v17 = CDGetLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      info2 = [(CacheDeleteOperation *)self info];
      *buf = 67109378;
      LODWORD(v38[0]) = 106;
      WORD2(v38[0]) = 2112;
      *(v38 + 6) = info2;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%d tryFSPurge WARNING: Calculating goal (missing from info dict: %@)", buf, 0x12u);
    }

    v16 = [NSNumber numberWithUnsignedLongLong:purge];
    if ([volumeCopy freespace] + purge > purge)
    {
      v19 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [volumeCopy freespace] + purge);

      v16 = v19;
    }

    v20 = CDGetLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38[0] = v16;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, " tryFSPurge goal %@", buf, 0xCu);
    }
  }

  v35[0] = @"CACHE_DELETE_VOLUME";
  mountPoint = [volumeCopy mountPoint];
  v36[0] = mountPoint;
  v35[1] = @"CACHE_DELETE_AMOUNT";
  v22 = [NSNumber numberWithUnsignedLongLong:purge];
  v36[1] = v22;
  v36[2] = v16;
  v35[2] = @"CACHE_DELETE_FREESPACE_GOAL";
  v35[3] = @"CACHE_DELETE_SERVICES";
  v36[3] = servicesCopy;
  v35[4] = @"CACHE_DELETE_RELEASE_SPACE";
  purgeCopy = purge;
  v31 = servicesCopy;
  info3 = [(CacheDeleteOperation *)self info];
  v24 = [info3 objectForKeyedSubscript:@"CACHE_DELETE_RELEASE_SPACE"];
  v25 = [NSNumber numberWithBool:evaluateBoolProperty()];
  v36[4] = v25;
  v26 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:5];

  services = [(CacheDeleteOperation *)self services];
  v28 = [services objectForKeyedSubscript:@"com.apple.deleted_helper"];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = __86__CacheDeletePurgeOperation_tryFSPurge_atUrgency_onVolume_orderedServices_completion___block_invoke;
  v33[3] = &unk_100061AC8;
  v34 = completionCopy;
  v29 = completionCopy;
  [(CacheDeletePurgeOperation *)self serviceRequest:v28 volume:volumeCopy urgency:urgency donation:purgeCopy info:v26 optionalTestInfo:0 completion:v33];
}

void __86__CacheDeletePurgeOperation_tryFSPurge_atUrgency_onVolume_orderedServices_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CDGetLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "fsPurge: result: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)reportedAmountMatchesFreedSpace:(id)space
{
  amountPurged = [space amountPurged];
  if ([(CacheDeletePurgeOperation *)self purge_amount_reported]<= amountPurged)
  {
    v5 = &off_100065620;
  }

  else
  {
    v5 = [NSNumber numberWithUnsignedLongLong:[(CacheDeletePurgeOperation *)self purge_amount_reported]- amountPurged];
  }

  [v5 doubleValue];
  v7 = v6;
  v8 = [NSNumber numberWithUnsignedLongLong:[(CacheDeletePurgeOperation *)self purge_amount_needed]];
  [v8 doubleValue];
  v10 = v7 <= v9 * 0.03;

  return v10;
}

- (id)purgeSentinel:(BOOL)sentinel outInode:(unint64_t *)inode
{
  sentinelCopy = sentinel;
  v6 = sentinelDir();
  v7 = v6;
  if (!v6)
  {
    v9 = 0;
    goto LABEL_28;
  }

  memset(&v29, 0, sizeof(v29));
  v8 = [v6 stringByAppendingPathComponent:@"CacheDeleteFSPurgeInProgress"];
  v9 = v8;
  if (!sentinelCopy)
  {
    v18 = unlink([v8 UTF8String]);
    v13 = CDGetLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String = [v9 UTF8String];
      if (v18)
      {
        v20 = __error();
        v21 = strerror(*v20);
      }

      else
      {
        v21 = "No Error";
      }

      *buf = 136315394;
      st_ino = uTF8String;
      v32 = 2080;
      v33 = v21;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "purgeDoneSentinel unlink'd %s : %s", buf, 0x16u);
    }

    goto LABEL_27;
  }

  if (mkdir([v7 UTF8String], 0x1EDu) && *__error() != 17)
  {
    v10 = CDGetLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      uTF8String2 = [v7 UTF8String];
      v27 = __error();
      v28 = strerror(*v27);
      *buf = 136315394;
      st_ino = uTF8String2;
      v32 = 2080;
      v33 = v28;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "purgeDoneSentinel mkdir failed for %s : %s", buf, 0x16u);
    }
  }

  v11 = open([v9 UTF8String], 514, 448);
  v12 = CDGetLogHandle();
  v13 = v12;
  if (v11 == -1)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      uTF8String3 = [v9 UTF8String];
      v23 = __error();
      v24 = strerror(*v23);
      *buf = 136315394;
      st_ino = uTF8String3;
      v32 = 2080;
      v33 = v24;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "purgeDoneSentinel unable to open %s : %s", buf, 0x16u);
    }

LABEL_27:

    goto LABEL_28;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    uTF8String4 = [v9 UTF8String];
    *buf = 136315138;
    st_ino = uTF8String4;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "purgeDoneSentinel Created %s", buf, 0xCu);
  }

  if (fstat(v11, &v29))
  {
    v15 = CDGetLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = __error();
      v17 = strerror(*v16);
      *buf = 138412546;
      st_ino = v9;
      v32 = 2080;
      v33 = v17;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "purgeDoneSentinel Unable to fstat %@ : %s", buf, 0x16u);
    }
  }

  else
  {
    if (inode)
    {
      *inode = v29.st_ino;
    }

    v15 = CDGetLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      st_ino = v29.st_ino;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "purgeDoneSentinel ino: %llu", buf, 0xCu);
    }
  }

  close(v11);
LABEL_28:

  return v9;
}

uint64_t __87__CacheDeletePurgeOperation_batchServicesForVolume_atUrgency_services_batchSize_block___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = evaluateStringProperty();
  v6 = evaluateStringProperty();

  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = evaluateNumberProperty();

  v9 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v10 = evaluateNumberProperty();

  v11 = [*(a1 + 40) objectForKeyedSubscript:v5];

  if (!v11)
  {

    v8 = 0;
  }

  v12 = [*(a1 + 40) objectForKeyedSubscript:v6];

  if (v12)
  {
    v13 = v10 != 0;
    if (v8 && v10)
    {
      v14 = [v10 compare:v8];
      goto LABEL_11;
    }
  }

  else
  {

    v13 = 0;
    v10 = 0;
  }

  if (v8 == 0 && v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = -1;
  }

LABEL_11:

  return v14;
}

- (id)filterServices:(id)services
{
  servicesCopy = services;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [servicesCopy objectForKeyedSubscript:{@"CACHE_DELETE_SERVICES", 0}];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = fsPurgeableTypeToServiceMap();
        allValues = [v11 allValues];
        v13 = [allValues containsObject:v10];

        if (v13)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = [v4 copy];

  return v14;
}

- (void)_startOperation:(id)operation
{
  operationCopy = operation;
  [(CacheDeleteOperation *)self setStart_time:mach_absolute_time()];
  selfCopy = self;
  info = [(CacheDeleteOperation *)self info];
  v167 = [info mutableCopy];

  v211 = 0;
  v212 = &v211;
  v213 = 0x3032000000;
  v214 = __Block_byref_object_copy__5;
  v215 = __Block_byref_object_dispose__5;
  v216 = 0;
  info2 = [(CacheDeleteOperation *)selfCopy info];
  v6 = [info2 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v166 = evaluateStringProperty();

  if (v166)
  {
    v7 = [CacheDeleteDaemonVolume volumeWithPath:?];
    v169 = v7;
    v8 = selfCopy;
    if (!v7)
    {
      v9 = CDGetLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        buf.f_bsize = 138412290;
        *&buf.f_iosize = v166;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to validate volume: %@", &buf, 0xCu);
      }

      v7 = 0;
      v8 = selfCopy;
    }

    initialFreespace = [v7 initialFreespace];
    info3 = [(CacheDeleteOperation *)v8 info];
    v12 = [info3 objectForKeyedSubscript:@"CACHE_DELETE_CALLING_PROCESS"];
    v162 = evaluateStringProperty();

    v13 = [CDPurgeOperationResult alloc];
    volumeNames = [(CacheDeleteOperation *)selfCopy volumeNames];
    purge_amount_needed = [(CacheDeletePurgeOperation *)selfCopy purge_amount_needed];
    if (v162)
    {
      v16 = v162;
    }

    else
    {
      v16 = @"unknown";
    }

    v17 = [(CDPurgeOperationResult *)v13 initWithVolumes:volumeNames requestedBytes:purge_amount_needed mainVolume:v169 clientProcName:v16];
    [(CacheDeletePurgeOperation *)selfCopy setPurgeResult:v17];

    urgency = [(CacheDeleteOperation *)selfCopy urgency];
    purgeResult = [(CacheDeletePurgeOperation *)selfCopy purgeResult];
    [purgeResult setLevel:urgency];

    info4 = [(CacheDeleteOperation *)selfCopy info];
    v21 = [info4 objectForKeyedSubscript:@"CACHE_DELETE_EVENT_KEY"];
    v22 = [v21 isEqualToString:@"CD_LOWDISK_EVENT"];
    purgeResult2 = [(CacheDeletePurgeOperation *)selfCopy purgeResult];
    [purgeResult2 setLowDisk:v22];

    info5 = [(CacheDeleteOperation *)selfCopy info];
    v25 = [info5 objectForKeyedSubscript:@"CACHE_DELETE_EVENT_KEY"];
    v26 = [v25 isEqualToString:@"CD_VERYLOWDISK_EVENT"];
    purgeResult3 = [(CacheDeletePurgeOperation *)selfCopy purgeResult];
    [purgeResult3 setVeryLowDisk:v26];

    info6 = [(CacheDeleteOperation *)selfCopy info];
    v29 = [info6 objectForKeyedSubscript:@"CACHE_DELETE_EVENT_KEY"];
    v30 = [v29 isEqualToString:@"CD_NEAR_LOW_DISK_EVENT"];
    purgeResult4 = [(CacheDeletePurgeOperation *)selfCopy purgeResult];
    [purgeResult4 setNearLowDisk:v30];

    info7 = [(CacheDeleteOperation *)selfCopy info];
    v33 = [info7 objectForKeyedSubscript:@"CACHE_DELETE_EVENT_KEY"];
    v34 = [v33 isEqualToString:@"CD_IDLE_PURGE_NOTIFY_DISK_EVENT"];
    purgeResult5 = [(CacheDeletePurgeOperation *)selfCopy purgeResult];
    [purgeResult5 setIdlePurge:v34];

    v36 = [NSNumber numberWithUnsignedLongLong:initialFreespace];
    [v167 setObject:v36 forKeyedSubscript:@"CACHE_DELETE_FREESPACE_BEGIN"];

    [v167 setObject:&off_100065620 forKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
    v37 = CDGetLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      urgencyLimit = [(CacheDeleteOperation *)selfCopy urgencyLimit];
      result = [(CacheDeleteOperation *)selfCopy result];
      buf.f_bsize = 67109378;
      buf.f_iosize = urgencyLimit;
      LOWORD(buf.f_blocks) = 2114;
      *(&buf.f_blocks + 2) = result;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "urgencyLimit: %d, info at start: %{public}@", &buf, 0x12u);
    }

    [(CacheDeletePurgeOperation *)selfCopy setPurge_amount_reported:0];
    v205 = 0;
    v206 = &v205;
    v207 = 0x3032000000;
    v208 = __Block_byref_object_copy__5;
    v209 = __Block_byref_object_dispose__5;
    v210 = 0;
    v40 = CDGetLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      mountPoint = [v169 mountPoint];
      fsType = [v169 fsType];
      freespace = [v169 freespace];
      buf.f_bsize = 138543874;
      *&buf.f_iosize = mountPoint;
      WORD2(buf.f_blocks) = 2114;
      *(&buf.f_blocks + 6) = fsType;
      HIWORD(buf.f_bfree) = 2048;
      buf.f_bavail = freespace;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "mainVolume: %{public}@, fstype: %{public}@ freespace:%lld ", &buf, 0x20u);
    }

    fsType2 = [v169 fsType];
    if ([fsType2 isEqualToString:@"apfs"])
    {
      services = [(CacheDeleteOperation *)selfCopy services];
      v46 = [services objectForKeyedSubscript:@"com.apple.deleted_helper"];
      v47 = v46 == 0;

      if (!v47)
      {
        CurrentEventId = FSEventsGetCurrentEventId();
        v49 = CDGetLogHandle();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          buf.f_bsize = 134217984;
          *&buf.f_iosize = CurrentEventId;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "beforePurgeEventID: %llu", &buf, 0xCu);
        }

        v203 = 0u;
        *dsema = 0u;
        memset(&context, 0, sizeof(context));
        v201 = 0;
        v50 = [(CacheDeletePurgeOperation *)selfCopy purgeSentinel:1 outInode:&v201];
        if (v201)
        {
          bzero(&buf, 0x878uLL);
          v51 = v50;
          if (statfs([v50 UTF8String], &buf))
          {
            v52 = CDGetLogHandle();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              v156 = v50;
              uTF8String = [v50 UTF8String];
              v158 = __error();
              v159 = strerror(*v158);
              *v226 = 136446466;
              v227 = uTF8String;
              v228 = 2080;
              v229 = v159;
              _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "statfs failed for %{public}s : %s", v226, 0x16u);
            }

            obj = 0;
            v163 = 0;
            v164 = 0;

LABEL_103:
            _Block_object_dispose(&v205, 8);

            v53 = v169;
            goto LABEL_104;
          }

          *&v203 = v201;
          *(&v203 + 1) = buf.f_fsid;
          v136 = dispatch_semaphore_create(0);
          v137 = dsema[1];
          dsema[1] = v136;

          context.info = &v203;
          v138 = sentinelDir();
          v225 = v138;
          v135 = FSEventStreamCreate(0, fsEventStreamMonitor, &context, [NSArray arrayWithObjects:&v225 count:1], 0xFFFFFFFFFFFFFFFFLL, 0.0, 0x51u);
          if (v135)
          {
            v139 = CDGetLogHandle();
            if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
            {
              *v226 = 138412290;
              v227 = v138;
              _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "Created FSEventStream with: %@", v226, 0xCu);
            }

            if (qword_10006E2C8 != -1)
            {
              dispatch_once(&qword_10006E2C8, &__block_literal_global_6);
            }

            FSEventStreamSetDispatchQueue(v135, _MergedGlobals_1_0);
            FSEventStreamStart(v135);
          }

          else
          {
            v140 = CDGetLogHandle();
            if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
            {
              v160 = __error();
              v161 = strerror(*v160);
              *v226 = 136315138;
              v227 = v161;
              _os_log_error_impl(&_mh_execute_header, v140, OS_LOG_TYPE_ERROR, "unable to create fsEventStream: %s", v226, 0xCu);
            }
          }
        }

        else
        {
          v134 = CDGetLogHandle();
          if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf.f_bsize) = 0;
            _os_log_error_impl(&_mh_execute_header, v134, OS_LOG_TYPE_ERROR, "unable to create sentinel file", &buf, 2u);
          }

          v135 = 0;
        }

        *&buf.f_bsize = 0;
        buf.f_blocks = &buf;
        buf.f_bfree = 0x2020000000;
        buf.f_bavail = 0;
        v141 = CDGetLogHandle();
        if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
        {
          volumes = [(CacheDeleteOperation *)selfCopy volumes];
          *v226 = 138412290;
          v227 = volumes;
          _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "VOLUMES: %@", v226, 0xCu);
        }

        v196[0] = _NSConcreteStackBlock;
        v196[1] = 3221225472;
        v196[2] = __45__CacheDeletePurgeOperation__startOperation___block_invoke_72;
        v196[3] = &unk_100061B60;
        v196[4] = selfCopy;
        v143 = v169;
        v197 = v143;
        v144 = v167;
        v198 = v144;
        p_buf = &buf;
        v200 = &v205;
        [(CacheDeleteOperation *)selfCopy performBlockWithUrgency:v196];
        v145 = 0;
        if (v135 && v201)
        {
          v146 = [(CacheDeletePurgeOperation *)selfCopy purgeSentinel:0 outInode:0];
          dispatch_semaphore_wait(dsema[1], 0xFFFFFFFFFFFFFFFFLL);
          v145 = LOBYTE(dsema[0]);
          v147 = dsema[1];
          dsema[1] = 0;

          FSEventStreamStop(v135);
          FSEventStreamInvalidate(v135);
          FSEventStreamRelease(v135);
        }

        if ([(CacheDeletePurgeOperation *)selfCopy purge_amount_reported]|| [v143 amountPurged])
        {
          if (v206[5])
          {
            v223[0] = @"CACHE_DELETE_FSPURGED_VOLUMES";
            v148 = [NSNumber numberWithUnsignedLongLong:CurrentEventId];
            v221 = v148;
            v222 = v206[5];
            v149 = [NSDictionary dictionaryWithObjects:&v222 forKeys:&v221 count:1];
            v224[0] = v149;
            v223[1] = @"rescan";
            v150 = [NSNumber numberWithBool:v145];
            v224[1] = v150;
            v163 = [NSDictionary dictionaryWithObjects:v224 forKeys:v223 count:2];
          }

          else
          {
            v163 = 0;
          }

          amountPurged = [v143 amountPurged];
          if (amountPurged >= [(CacheDeletePurgeOperation *)selfCopy purge_amount_needed])
          {
            v152 = CDGetLogHandle();
            if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
            {
              mountPoint2 = [v143 mountPoint];
              *v226 = 138543362;
              v227 = mountPoint2;
              _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "[Purge goal satisfied by fsPurge for %{public}@, skipping cleanup and services loop", v226, 0xCu);
            }

            [v144 setObject:&__kCFBooleanFalse forKeyedSubscript:@"CACHE_DELETE_QUERY_AFTER_PURGE"];
            v154 = 24;
LABEL_134:

            _Block_object_dispose(&buf, 8);
            if (v154)
            {
              obj = 0;
              v171 = 0;
              v164 = 0;
LABEL_76:
              v101 = mach_absolute_time();
              [(CacheDeleteOperation *)selfCopy start_time];
              v103 = v102;
              v104 = gTimebaseConversion;
              v105 = [v167 objectForKeyedSubscript:@"CACHE_DELETE_QUERY_AFTER_PURGE"];
              v106 = v105 == 0;

              if (v106)
              {
                v107 = [NSNumber numberWithInt:[(CacheDeletePurgeOperation *)selfCopy reportedAmountMatchesFreedSpace:v169]^ 1];
                [v167 setObject:v107 forKeyedSubscript:@"CACHE_DELETE_QUERY_AFTER_PURGE"];
              }

              if (v163)
              {
                [v167 setObject:v163 forKeyedSubscript:@"CACHE_DELETE_FS_PURGE_NOTIFY"];
              }

              v108 = [NSNumber numberWithUnsignedLongLong:[(CacheDeletePurgeOperation *)selfCopy purge_amount_reported]];
              [v167 setObject:v108 forKeyedSubscript:@"CACHE_DELETE_AMOUNT_REPORTED"];

              v109 = [NSNumber numberWithDouble:(v101 - v103) * v104 / 1000000000.0];
              [v167 setObject:v109 forKeyedSubscript:@"CACHE_DELETE_ELAPSED_TIME"];

              if ([(CacheDeletePurgeOperation *)selfCopy cancel])
              {
                [v167 setObject:@"Purge operation was cancelled" forKeyedSubscript:@"CACHE_DELETE_ERROR"];
              }

              v110 = [NSNumber numberWithUnsignedLongLong:[v169 amountPurged]];
              [v167 setObject:v110 forKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

              v111 = [NSNumber numberWithUnsignedLongLong:[(CacheDeletePurgeOperation *)selfCopy purge_amount_reported]];
              [v167 setObject:v111 forKeyedSubscript:@"CACHE_DELETE_AMOUNT_REPORTED"];

              freespace2 = [v169 freespace];
              v113 = [NSNumber numberWithUnsignedLongLong:freespace2];
              [v167 setObject:v113 forKeyedSubscript:@"CACHE_DELETE_FREESPACE_END"];

              purgeResult6 = [(CacheDeletePurgeOperation *)selfCopy purgeResult];
              [purgeResult6 setEndFreeSpace:freespace2];

              purgeResult7 = [(CacheDeletePurgeOperation *)selfCopy purgeResult];
              [purgeResult7 finish];

              v116 = [v167 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
              unsignedLongLongValue = [v116 unsignedLongLongValue];

              if ([(CacheDeletePurgeOperation *)selfCopy cancel])
              {
                [v167 setObject:@"Operation Cancelled" forKeyedSubscript:@"CACHE_DELETE_ERROR"];
                [v167 setObject:&__kCFBooleanTrue forKeyedSubscript:@"CACHE_DELETE_OPERATION_CANCELLED"];
              }

              else if (unsignedLongLongValue < [(CacheDeletePurgeOperation *)selfCopy purge_amount_needed])
              {
                v118 = CDGetLogHandle();
                if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
                {
                  mountPoint3 = [v169 mountPoint];
                  buf.f_bsize = 138543362;
                  *&buf.f_iosize = mountPoint3;
                  _os_log_error_impl(&_mh_execute_header, v118, OS_LOG_TYPE_ERROR, "CacheDelete was unable to satisfy the purge request for volume: %{public}@", &buf, 0xCu);
                }

                purgeResult8 = [(CacheDeletePurgeOperation *)selfCopy purgeResult];
                [purgeResult8 setSuccess:0];
              }

              analyticsReporter = [(CacheDeleteOperation *)selfCopy analyticsReporter];
              purgeResult9 = [(CacheDeletePurgeOperation *)selfCopy purgeResult];
              [analyticsReporter reportPurge:purgeResult9];

              testFailures = [(CacheDeleteOperation *)selfCopy testFailures];
              if (testFailures)
              {
                testFailures2 = [(CacheDeleteOperation *)selfCopy testFailures];
                v124 = [testFailures2 count] == 0;

                if (!v124)
                {
                  testFailures3 = [(CacheDeleteOperation *)selfCopy testFailures];
                  [v167 setObject:testFailures3 forKeyedSubscript:@"CACHE_DELETE_TEST_FAILURES"];
                }
              }

              v126 = CDGetLogHandle();
              if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
              {
                buf.f_bsize = 134349314;
                *&buf.f_iosize = unsignedLongLongValue;
                WORD2(buf.f_blocks) = 2114;
                *(&buf.f_blocks + 6) = v169;
                _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "Purge Result: %{public}llu bytes on: %{public}@", &buf, 0x16u);
              }

              v175 = 0u;
              v176 = 0u;
              v173 = 0u;
              v174 = 0u;
              v127 = v167;
              v128 = [v127 countByEnumeratingWithState:&v173 objects:v217 count:16];
              if (v128)
              {
                v129 = *v174;
                do
                {
                  for (i = 0; i != v128; i = i + 1)
                  {
                    if (*v174 != v129)
                    {
                      objc_enumerationMutation(v127);
                    }

                    v131 = *(*(&v173 + 1) + 8 * i);
                    v132 = CDGetLogHandle();
                    if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
                    {
                      v133 = [v127 objectForKeyedSubscript:v131];
                      buf.f_bsize = 138543618;
                      *&buf.f_iosize = v131;
                      WORD2(buf.f_blocks) = 2114;
                      *(&buf.f_blocks + 6) = v133;
                      _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "%{public}@ : %{public}@", &buf, 0x16u);
                    }
                  }

                  v128 = [v127 countByEnumeratingWithState:&v173 objects:v217 count:16];
                }

                while (v128);
              }

              operationCopy[2](operationCopy, v127);
              goto LABEL_103;
            }

LABEL_27:
            services2 = [(CacheDeleteOperation *)selfCopy services];
            v55 = [services2 count] > 1;

            if (v55)
            {
              v194 = 0u;
              v195 = 0u;
              v192 = 0u;
              v193 = 0u;
              v56 = selfCopy;
              services3 = [(CacheDeleteOperation *)selfCopy services];
              v58 = [services3 countByEnumeratingWithState:&v192 objects:v220 count:16];
              if (v58)
              {
                v59 = *v193;
                while (2)
                {
                  for (j = 0; j != v58; j = j + 1)
                  {
                    if (*v193 != v59)
                    {
                      objc_enumerationMutation(services3);
                    }

                    v61 = *(*(&v192 + 1) + 8 * j);
                    services4 = [(CacheDeleteOperation *)v56 services];
                    v63 = [services4 objectForKeyedSubscript:v61];

                    v64 = [v63 ID];
                    v65 = [v64 isEqualToString:@"com.apple.mobile.cache_delete_mobile_backup"];

                    if (v65)
                    {
                      objc_storeStrong(v212 + 5, v63);

                      goto LABEL_38;
                    }

                    v56 = selfCopy;
                  }

                  v58 = [services3 countByEnumeratingWithState:&v192 objects:v220 count:16];
                  if (v58)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_38:
            }

            services5 = [(CacheDeleteOperation *)selfCopy services];
            v67 = [services5 mutableCopy];

            v68 = v212[5];
            if (v68)
            {
              v69 = [v68 ID];
              [v67 removeObjectForKey:v69];
            }

            [v67 removeObjectForKey:@"com.apple.deleted_helper"];
            v171 = objc_opt_new();
            v190 = 0u;
            v191 = 0u;
            v188 = 0u;
            v189 = 0u;
            obj = v67;
            v70 = [obj countByEnumeratingWithState:&v188 objects:v219 count:16];
            if (v70)
            {
              v71 = *v189;
              do
              {
                for (k = 0; k != v70; k = k + 1)
                {
                  if (*v189 != v71)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v73 = *(*(&v188 + 1) + 8 * k);
                  v74 = fsPurgeableTypeForService();

                  if (v74)
                  {
                    [v171 addObject:v73];
                  }
                }

                v70 = [obj countByEnumeratingWithState:&v188 objects:v219 count:16];
              }

              while (v70);
            }

            [obj removeObjectsForKeys:v171];
            v164 = [obj copy];
            if (v212[5])
            {
              if (![(CacheDeletePurgeOperation *)selfCopy cancel])
              {
                if (!-[CacheDeletePurgeOperation reportedAmountMatchesFreedSpace:](selfCopy, "reportedAmountMatchesFreedSpace:", v169) || (-[CacheDeletePurgeOperation purgeResult](selfCopy, "purgeResult"), v75 = objc_claimAutoreleasedReturnValue(), v76 = [v75 isVeryLowDisk], v75, v76))
                {
                  [(CacheDeleteOperation *)selfCopy non_negative_time_remaining];
                  v78 = v77;
                  v186 = 0u;
                  v187 = 0u;
                  v184 = 0u;
                  v185 = 0u;
                  volumes2 = [(CacheDeleteOperation *)selfCopy volumes];
                  v80 = [volumes2 countByEnumeratingWithState:&v184 objects:v218 count:16];
                  if (v80)
                  {
                    v81 = *v185;
                    v168 = volumes2;
                    do
                    {
                      for (m = 0; m != v80; m = m + 1)
                      {
                        if (*v185 != v81)
                        {
                          objc_enumerationMutation(v168);
                        }

                        v83 = *(*(&v184 + 1) + 8 * m);
                        v84 = +[NSMutableArray array];
                        purge_amount_needed2 = [(CacheDeletePurgeOperation *)selfCopy purge_amount_needed];
                        if (purge_amount_needed2 > [v169 amountPurged])
                        {
                          purge_amount_needed3 = [(CacheDeletePurgeOperation *)selfCopy purge_amount_needed];
                          amountPurged2 = [v169 amountPurged];
                          v88 = CDGetLogHandle();
                          v89 = purge_amount_needed3 - amountPurged2;
                          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
                          {
                            buf.f_bsize = 134218242;
                            *&buf.f_iosize = purge_amount_needed3 - amountPurged2;
                            WORD2(buf.f_blocks) = 2114;
                            *(&buf.f_blocks + 6) = v83;
                            _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "[Purge VERY_LOWDISK]: asking snapshot holders for %llu bytes from %{public}@", &buf, 0x16u);
                          }

                          v90 = v212[5];
                          if ([(CacheDeleteOperation *)selfCopy clientSpecifiedTimeout])
                          {
                            v91 = v78;
                          }

                          else
                          {
                            v91 = 900;
                          }

                          result2 = [(CacheDeleteOperation *)selfCopy result];
                          v93 = [result2 objectForKeyedSubscript:@"CACHE_DELETE_TEST_PARAMETERS"];
                          [(CacheDeletePurgeOperation *)selfCopy oneShot:v90 volume:v83 urgency:3 donation:v89 currentRoundResults:v84 timeout:v91 info:&off_100065B08 optionalTestInfo:v93];
                        }
                      }

                      volumes2 = v168;
                      v80 = [v168 countByEnumeratingWithState:&v184 objects:v218 count:16];
                    }

                    while (v80);
                  }
                }
              }
            }

            v94 = CDGetLogHandle();
            if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
            {
              mountPoint4 = [v169 mountPoint];
              freespace3 = [v169 freespace];
              initialFreespace2 = [v169 initialFreespace];
              buf.f_bsize = 138543874;
              *&buf.f_iosize = mountPoint4;
              WORD2(buf.f_blocks) = 2048;
              *(&buf.f_blocks + 6) = freespace3;
              HIWORD(buf.f_bfree) = 2048;
              buf.f_bavail = initialFreespace2;
              _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "mainVolume: %{public}@, freespace:%lld initialfreespace:%lld", &buf, 0x20u);
            }

            amountPurged3 = [v169 amountPurged];
            if (amountPurged3 >= [(CacheDeletePurgeOperation *)selfCopy purge_amount_needed])
            {
              v99 = CDGetLogHandle();
              if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
              {
                mountPoint5 = [v169 mountPoint];
                buf.f_bsize = 138543362;
                *&buf.f_iosize = mountPoint5;
                _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "[Purge goal satisfied for %{public}@, skipping services loop", &buf, 0xCu);
              }
            }

            else
            {
              *&buf.f_bsize = 0;
              buf.f_blocks = &buf;
              buf.f_bfree = 0x2020000000;
              LOBYTE(buf.f_bavail) = [(CacheDeleteOperation *)selfCopy timeoutNotReached];
              v177[0] = _NSConcreteStackBlock;
              v177[1] = 3221225472;
              v177[2] = __45__CacheDeletePurgeOperation__startOperation___block_invoke_92;
              v177[3] = &unk_100061BD8;
              v182 = &buf;
              v177[4] = selfCopy;
              v178 = v169;
              v179 = v167;
              v180 = v166;
              v164 = v164;
              v181 = v164;
              v183 = &v211;
              [(CacheDeleteOperation *)selfCopy performBlockWithUrgency:v177];

              _Block_object_dispose(&buf, 8);
            }

            goto LABEL_76;
          }
        }

        else
        {
          v163 = 0;
        }

        v154 = 0;
        goto LABEL_134;
      }
    }

    else
    {
    }

    v163 = 0;
    goto LABEL_27;
  }

  v53 = CDGetLogHandle();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.f_bsize) = 0;
    _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "No volume name in info dictionary.", &buf, 2u);
  }

  obj = 0;
  v164 = 0;
LABEL_104:

  _Block_object_dispose(&v211, 8);
}

void __45__CacheDeletePurgeOperation__startOperation___block_invoke(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.cache_delete.purge_fsevents", v3);
  v2 = _MergedGlobals_1_0;
  _MergedGlobals_1_0 = v1;
}

uint64_t __45__CacheDeletePurgeOperation__startOperation___block_invoke_72(uint64_t a1, uint64_t a2)
{
  v36 = [*(a1 + 32) timeoutNotReached];
  v34 = dispatch_semaphore_create(0);
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2020000000;
  v53[3] = nan("");
  v4 = *(a1 + 32);
  v5 = [v4 info];
  v38 = [v4 filterServices:v5];

  v6 = v34;
  v37 = mach_absolute_time();
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v7 = [*(a1 + 32) volumes];
  v8 = [v7 countByEnumeratingWithState:&v49 objects:v68 count:16];
  if (!v8)
  {
    goto LABEL_23;
  }

  v10 = *v50;
  *&v9 = 134219010;
  v33 = v9;
  obj = v7;
  while (2)
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v50 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v49 + 1) + 8 * i);
      v13 = [*(a1 + 32) purge:v33 amount:?needed];
      if (v13 <= [*(a1 + 40) amountPurged])
      {
        v15 = 0;
      }

      else
      {
        v14 = [*(a1 + 32) purge_amount_needed];
        v15 = v14 - [*(a1 + 40) amountPurged];
      }

      v16 = [v12 mountPoint];
      v17 = dropBreadcrumb();

      v18 = [*(a1 + 32) purge_amount_needed];
      if (v18 <= [*(a1 + 40) amountPurged])
      {
        v30 = CDGetLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [v12 mountPoint];
          *buf = 138412290;
          v59 = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Purge satisfied, skipping %@", buf, 0xCu);
        }

        goto LABEL_22;
      }

      if ([*(a1 + 32) cancel])
      {
        [*(a1 + 48) setObject:&__kCFBooleanTrue forKeyedSubscript:@"CACHE_DELETE_OPERATION_CANCELLED"];
LABEL_22:
        v36 = 0;
        v7 = obj;
        goto LABEL_23;
      }

      v19 = *(a1 + 32);
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = __45__CacheDeletePurgeOperation__startOperation___block_invoke_77;
      v39[3] = &unk_100061B38;
      v47 = v37;
      v44 = *(a1 + 56);
      v45 = &v54;
      v43 = v53;
      v39[4] = v19;
      v20 = *(a1 + 40);
      v48 = a2;
      v40 = v20;
      v41 = v12;
      v46 = *(a1 + 64);
      v21 = v6;
      v42 = v21;
      [v19 tryFSPurge:v15 atUrgency:a2 onVolume:v12 orderedServices:v38 completion:v39];
      dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
      v22 = [*(a1 + 40) amountPurged];
      if (v22 >= [*(a1 + 32) purge_amount_needed])
      {
        v23 = CDGetLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v55[3];
          v25 = [*(a1 + 40) amountPurged];
          v26 = [*(a1 + 32) purge_amount_needed];
          v27 = [*(a1 + 40) mountPoint];
          v28 = *(*(*(a1 + 56) + 8) + 24);
          *buf = v33;
          v59 = v24;
          v60 = 2048;
          v61 = v25;
          v62 = 2048;
          v63 = v26;
          v64 = 2112;
          v65 = v27;
          v66 = 2048;
          v67 = v28;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "fsPurge satisfied request: %llu purged (%llu measured) of %llu needed on volume: %@, ET: %f", buf, 0x34u);

          v6 = v34;
        }

        v29 = [*(a1 + 32) purgeResult];
        [v29 setFsPurgeSuccess:1];

        v36 = 0;
      }
    }

    v7 = obj;
    v8 = [obj countByEnumeratingWithState:&v49 objects:v68 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_23:

  _Block_object_dispose(v53, 8);
  _Block_object_dispose(&v54, 8);

  return v36 & 1;
}

void __45__CacheDeletePurgeOperation__startOperation___block_invoke_77(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 64) + 8) + 24) = gTimebaseConversion * (mach_absolute_time() - *(a1 + 96)) / 1000000000.0;
  *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24) + *(*(*(a1 + 72) + 8) + 24);
  if (v3)
  {
    *(*(*(a1 + 80) + 8) + 24) += [v3 reportedBytes];
    v4 = [*(a1 + 32) purgeResult];
    [v4 addResult:v3];

    [*(a1 + 32) setPurge_amount_reported:{objc_msgSend(v3, "reportedBytes") + objc_msgSend(*(a1 + 32), "purge_amount_reported")}];
    v5 = [*(a1 + 32) analyticsReporter];
    [v5 reportPurgeTimingInfo:v3];
  }

  v6 = CDGetLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v3 reportedBytes];
    v8 = *(*(*(a1 + 80) + 8) + 24);
    v9 = [*(a1 + 40) amountPurged];
    v10 = [*(a1 + 32) purge_amount_needed];
    v11 = [*(a1 + 40) mountPoint];
    v12 = *(a1 + 104);
    v13 = [*(a1 + 48) mountPoint];
    v14 = *(*(*(a1 + 64) + 8) + 24);
    v26 = 134219778;
    v27 = v7;
    v28 = 2048;
    v29 = v8;
    v30 = 2048;
    v31 = v9;
    v32 = 2048;
    v33 = v10;
    v34 = 2114;
    v35 = v11;
    v36 = 1024;
    v37 = v12;
    v38 = 2112;
    v39 = v13;
    v40 = 2048;
    v41 = v14;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "fsPurge reports %llu purged (%llu total reported, %llu measured) of %llu needed on volume: %{public}@ at urgency: %d by purging volume: %@, ET: %f", &v26, 0x4Eu);
  }

  if ([v3 reportedBytes])
  {
    v15 = *(*(*(a1 + 88) + 8) + 40);
    if (!v15)
    {
      v16 = objc_opt_new();
      v17 = *(*(a1 + 88) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      v15 = *(*(*(a1 + 88) + 8) + 40);
    }

    v19 = [*(a1 + 48) uuid];
    v20 = [v19 UUIDString];
    [v15 addObject:v20];

    v21 = CDGetLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [*(a1 + 48) mountPoint];
      v23 = [*(a1 + 48) uuid];
      v24 = [v23 UUIDString];
      v26 = 138412546;
      v27 = v22;
      v28 = 2112;
      v29 = v24;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "fsPurge noting purge on %@ : %@", &v26, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 56));
  if (![v3 reportedBytes])
  {
    v25 = [*(a1 + 48) mountPoint];
    removeBreadcrumb();
  }
}

uint64_t __45__CacheDeletePurgeOperation__startOperation___block_invoke_92(uint64_t a1, unsigned int a2)
{
  v3 = *(*(a1 + 72) + 8);
  if (*(v3 + 24) == 1)
  {
    v4 = [*(a1 + 32) timeoutNotReached];
    v3 = *(*(a1 + 72) + 8);
  }

  else
  {
    v4 = 0;
  }

  *(v3 + 24) = v4;
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v5 = CDGetLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 40) mountPoint];
      *buf = 67109378;
      *v69 = 598;
      *&v69[4] = 2112;
      *&v69[6] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%d : Timeout reached for (%@) - stopping purge urgency loop.", buf, 0x12u);
    }

    goto LABEL_10;
  }

  if ([*(a1 + 32) cancel])
  {
    [*(a1 + 48) setObject:&__kCFBooleanTrue forKeyedSubscript:@"CACHE_DELETE_OPERATION_CANCELLED"];
LABEL_10:
    v7 = 0;
    return v7 & 1;
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = [*(a1 + 32) volumes];
  v44 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
  if (v44)
  {
    v43 = *v65;
    *&v9 = 138544130;
    v41 = v9;
    do
    {
      v10 = 0;
      do
      {
        if (*v65 != v43)
        {
          v11 = v10;
          objc_enumerationMutation(obj);
          v10 = v11;
        }

        v45 = v10;
        v12 = *(*(&v64 + 1) + 8 * v10);
        v60 = 0;
        v61 = &v60;
        v62 = 0x2020000000;
        v13 = *(a1 + 32);
        v47 = v12;
        v14 = [v12 mountPoint];
        v15 = [v13 volumeContribution:v47 urgency:a2 isTargetVolume:{objc_msgSend(v14, "isEqualToString:", *(a1 + 56))}];

        v63 = v15;
        v16 = [*(a1 + 32) purge_amount_needed];
        if (v16 <= [*(a1 + 40) amountPurged])
        {
          v18 = 0;
        }

        else
        {
          v17 = [*(a1 + 32) purge_amount_needed];
          v18 = v17 - [*(a1 + 40) amountPurged];
        }

        v19 = v61[3];
        if (v19 >= v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = v61[3];
        }

        if (v19)
        {
          v18 = v20;
        }

        v61[3] = v18;
        v21 = CDGetLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          *v69 = v47;
          *&v69[8] = 1024;
          *&v69[10] = a2;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Purging %{public}@ at urgency = %d", buf, 0x12u);
        }

        v22 = CDGetLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v47 mountPoint];
          *buf = 67109634;
          *v69 = 635;
          *&v69[4] = 2112;
          *&v69[6] = v23;
          *&v69[14] = 1024;
          *&v69[16] = a2;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%d calling batchServicesForVolume: %@, atUrgency: %d, with services:", buf, 0x18u);
        }

        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v24 = *(a1 + 64);
        v25 = [v24 countByEnumeratingWithState:&v56 objects:v72 count:16];
        if (v25)
        {
          v26 = *v57;
          do
          {
            for (i = 0; i != v25; i = i + 1)
            {
              if (*v57 != v26)
              {
                objc_enumerationMutation(v24);
              }

              v28 = *(*(&v56 + 1) + 8 * i);
              v29 = CDGetLogHandle();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109378;
                *v69 = 637;
                *&v69[4] = 2112;
                *&v69[6] = v28;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%d\t%@", buf, 0x12u);
              }
            }

            v25 = [v24 countByEnumeratingWithState:&v56 objects:v72 count:16];
          }

          while (v25);
        }

        v52 = 0;
        v53 = &v52;
        v54 = 0x2020000000;
        v55 = 0;
        v30 = *(a1 + 64);
        v50 = *(a1 + 72);
        v31 = *(a1 + 32);
        v48 = *(a1 + 40);
        v49 = *(a1 + 32);
        v51 = *(a1 + 80);
        [v31 batchServicesForVolume:? atUrgency:? services:? batchSize:? block:?];
        v32 = [*(a1 + 32) purge_amount_needed];
        v33 = [*(a1 + 40) amountPurged];
        v34 = CDGetLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [v47 mountPoint];
          v36 = *(v53 + 6);
          *buf = v41;
          *v69 = v35;
          *&v69[8] = 1024;
          *&v69[10] = a2;
          *&v69[14] = 1024;
          *&v69[16] = v36;
          v70 = 2048;
          v71 = (v32 - v33) & ~((v32 - v33) >> 63);
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[Purge End](Volume %{public}@, Urgency %d) finished after %d Rounds (%llu bytes left)", buf, 0x22u);
        }

        v37 = CDGetLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = "do not proceed";
          if (*(*(*(a1 + 72) + 8) + 24))
          {
            v38 = "proceed";
          }

          *buf = 67109378;
          *v69 = 874;
          *&v69[4] = 2080;
          *&v69[6] = v38;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%d Volume loop: %s", buf, 0x12u);
        }

        _Block_object_dispose(&v52, 8);
        _Block_object_dispose(&v60, 8);
        v10 = v45 + 1;
      }

      while ((v45 + 1) != v44);
      v44 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
    }

    while (v44);
  }

  v39 = CDGetLogHandle();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(*(a1 + 72) + 8) + 24))
    {
      v40 = "proceed";
    }

    else
    {
      v40 = "do not proceed";
    }

    *buf = 67109634;
    *v69 = 878;
    *&v69[4] = 1024;
    *&v69[6] = a2;
    *&v69[10] = 2080;
    *&v69[12] = v40;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%d Urgency Loop [%d] returning: %s", buf, 0x18u);
  }

  v7 = *(*(*(a1 + 72) + 8) + 24);
  return v7 & 1;
}

uint64_t __45__CacheDeletePurgeOperation__startOperation___block_invoke_93(uint64_t a1, void *a2)
{
  v2 = a2;
  v149 = +[NSMutableArray array];
  *(*(*(a1 + 56) + 8) + 24) = 0;
  v3 = [*(a1 + 32) amountPurged];
  if (v3 >= [*(a1 + 40) purge_amount_needed])
  {
LABEL_4:
    LOBYTE(v4) = 0;
    goto LABEL_5;
  }

  v4 = [v2 count];
  if (v4)
  {
    if (([*(a1 + 40) cancel] & 1) == 0)
    {
      LOBYTE(v4) = [*(a1 + 40) timeoutNotReached];
      goto LABEL_5;
    }

    goto LABEL_4;
  }

LABEL_5:
  *(*(*(a1 + 64) + 8) + 24) = v4;
  v5 = CDGetLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      v6 = "TRUE";
    }

    else
    {
      v6 = "FALSE";
    }

    *buf = 67109378;
    *v196 = 651;
    *&v196[4] = 2080;
    *&v196[6] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%d proceed: %s, batch:", buf, 0x12u);
  }

  v189 = 0u;
  v190 = 0u;
  v187 = 0u;
  v188 = 0u;
  obj = v2;
  v7 = [obj countByEnumeratingWithState:&v187 objects:v199 count:16];
  if (v7)
  {
    v8 = *v188;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v188 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v187 + 1) + 8 * i);
        v11 = CDGetLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v10 ID];
          *buf = 67109378;
          *v196 = 653;
          *&v196[4] = 2112;
          *&v196[6] = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%d\t%@", buf, 0x12u);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v187 objects:v199 count:16];
    }

    while (v7);
  }

  v13 = obj;
  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
    goto LABEL_127;
  }

  v13 = obj;
  while (1)
  {
    v14 = [v13 count];
    v15 = CDGetLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = "FALSE";
      if (*(*(*(a1 + 64) + 8) + 24))
      {
        v16 = "TRUE";
      }

      *buf = 67109634;
      *v196 = 665;
      *&v196[4] = 2080;
      *&v196[6] = v16;
      *&v196[14] = 2048;
      *&v196[16] = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%d proceed: %s, numPlayers: %lu", buf, 0x1Cu);
    }

    v17 = [*(a1 + 40) purge_amount_needed];
    if (v17 <= [*(a1 + 32) amountPurged] || (v18 = objc_msgSend(*(a1 + 40), "purge_amount_needed"), v19 = objc_msgSend(*(a1 + 32), "amountPurged"), v18 == v19))
    {
      v21 = CDGetLogHandle();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_126;
      }

      v132 = [*(a1 + 40) purge_amount_needed];
      v133 = [*(a1 + 32) amountPurged];
      *buf = 134218496;
      *v196 = 0;
      *&v196[8] = 2048;
      *&v196[10] = v132;
      *&v196[18] = 2048;
      *&v196[20] = v133;
      v134 = "[Purge Start] aborting, (roundGoal <= 0): %llu, purge_amount_needed: %llu, amountPurged: %llu";
      v135 = v21;
      v136 = 32;
      goto LABEL_125;
    }

    v146 = v18 - v19;
    v20 = v14 > v18 - v19;
    v21 = CDGetLogHandle();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      break;
    }

    if (v22)
    {
      v23 = *(a1 + 88);
      v24 = *(*(*(a1 + 56) + 8) + 24);
      v25 = [*(a1 + 48) mountPoint];
      v26 = *(*(*(a1 + 72) + 8) + 24);
      *buf = 67110146;
      *v196 = v23;
      *&v196[4] = 1024;
      *&v196[6] = v24;
      *&v196[10] = 2114;
      *&v196[12] = v25;
      *&v196[20] = 2048;
      *&v196[22] = v146;
      v197 = 2048;
      v198 = v26;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[Purge Start](Urgency %d : Round %d) Volume = %{public}@, Goal = %llu, Donation = %llu, Remaining Services:", buf, 0x2Cu);
    }

    v185 = 0u;
    v186 = 0u;
    v183 = 0u;
    v184 = 0u;
    v27 = v13;
    v28 = [v27 countByEnumeratingWithState:&v183 objects:v194 count:16];
    if (v28)
    {
      v29 = *v184;
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v184 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v183 + 1) + 8 * j);
          v32 = CDGetLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = [v31 ID];
            *buf = 67109378;
            *v196 = 678;
            *&v196[4] = 2112;
            *&v196[6] = v33;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%d\t%@", buf, 0x12u);
          }
        }

        v28 = [v27 countByEnumeratingWithState:&v183 objects:v194 count:16];
      }

      while (v28);
    }

    v34 = v146 / v14;
    v35 = *(*(a1 + 72) + 8);
    if (v146 / v14 >= *(v35 + 24))
    {
      v34 = *(v35 + 24);
    }

    *(v35 + 24) = v34;
    group = dispatch_group_create();
    v36 = [CacheDeleteAsyncTimeoutFlag alloc];
    v37 = [*(a1 + 40) response_queue];
    v152 = [(CacheDeleteAsyncTimeoutFlag *)v36 initWithQueue:v37];

    v150 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v27, "count")}];
    v38 = CDGetLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [*(a1 + 48) mountPoint];
      v40 = *(a1 + 88);
      v41 = *(*(*(a1 + 56) + 8) + 24);
      *buf = 138543874;
      *v196 = v39;
      *&v196[8] = 1024;
      *&v196[10] = v40;
      *&v196[14] = 1024;
      *&v196[16] = v41;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[Purge Main](Volume: %{public}@, Urgency %d : Round %d) Begin", buf, 0x18u);
    }

    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
    v147 = v27;
    v151 = [v147 countByEnumeratingWithState:&v179 objects:v193 count:16];
    v42 = a1;
    if (v151)
    {
      v148 = *v180;
LABEL_45:
      v43 = 0;
      while (1)
      {
        if (*v180 != v148)
        {
          objc_enumerationMutation(v147);
          v42 = a1;
        }

        v154 = *(*(&v179 + 1) + 8 * v43);
        v44 = *(*(v42 + 64) + 8);
        if (*(v44 + 24) == 1)
        {
          v45 = [*(v42 + 40) timeoutNotReached];
          v42 = a1;
          v44 = *(*(a1 + 64) + 8);
        }

        else
        {
          v45 = 0;
        }

        *(v44 + 24) = v45;
        if (([*(v42 + 40) cancel] & 1) != 0 || *(*(*(a1 + 64) + 8) + 24) != 1)
        {
          break;
        }

        objc_initWeak(&location, *(a1 + 40));
        v46 = [*(a1 + 40) response_queue];
        v47 = CDGetLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = [*(a1 + 48) mountPoint];
          v49 = *(a1 + 88);
          v50 = *(*(*(a1 + 56) + 8) + 24);
          v51 = [v154 ID];
          v52 = *(*(*(a1 + 72) + 8) + 24);
          *buf = 138544386;
          *v196 = v48;
          *&v196[8] = 1024;
          *&v196[10] = v49;
          *&v196[14] = 1024;
          *&v196[16] = v50;
          *&v196[20] = 2114;
          *&v196[22] = v51;
          v197 = 2048;
          v198 = v52;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[Purge Main](Volume: %{public}@, Urgency %d : Round %d) %{public}@ request %llu bytes", buf, 0x2Cu);
        }

        dispatch_group_enter(group);
        v54 = *(a1 + 40);
        v53 = *(a1 + 48);
        v55 = *(a1 + 88);
        v56 = *(*(*(a1 + 72) + 8) + 24);
        v57 = [v54 info];
        v58 = [*(a1 + 40) result];
        v59 = [v58 objectForKeyedSubscript:@"CACHE_DELETE_TEST_PARAMETERS"];
        v167[0] = _NSConcreteStackBlock;
        v167[1] = 3221225472;
        v167[2] = __45__CacheDeletePurgeOperation__startOperation___block_invoke_95;
        v167[3] = &unk_100061B88;
        objc_copyWeak(&v176, &location);
        v60 = v46;
        v168 = v60;
        v169 = v152;
        v61 = v149;
        v62 = *(a1 + 48);
        v63 = *(a1 + 56);
        v170 = v61;
        v171 = v62;
        v177 = *(a1 + 88);
        v175 = v63;
        v172 = v154;
        v173 = v150;
        v174 = group;
        [v54 serviceRequest:v154 volume:v53 urgency:v55 donation:v56 info:v57 optionalTestInfo:v59 completion:v167];

        objc_destroyWeak(&v176);
        objc_destroyWeak(&location);
        v43 = v43 + 1;
        v42 = a1;
        if (v151 == v43)
        {
          v151 = [v147 countByEnumeratingWithState:&v179 objects:v193 count:16];
          v42 = a1;
          if (v151)
          {
            goto LABEL_45;
          }

          break;
        }
      }
    }

    [*(a1 + 40) non_negative_time_remaining];
    if (v64 >= 0x2D)
    {
      v65 = 45;
    }

    else
    {
      v65 = v64;
    }

    v66 = dispatch_time(0, 1000000000 * v65);
    v67 = CDGetLogHandle();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v68 = [*(a1 + 48) mountPoint];
      v69 = *(a1 + 88);
      v70 = *(*(*(a1 + 56) + 8) + 24);
      *buf = 138544130;
      *v196 = v68;
      *&v196[8] = 1024;
      *&v196[10] = v69;
      *&v196[14] = 1024;
      *&v196[16] = v70;
      *&v196[20] = 2048;
      *&v196[22] = v65;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "[Purge Main](Volume: %{public}@, Urgency %d : Round %d) Waiting for end of round: %llu seconds", buf, 0x22u);
    }

    if (dispatch_group_wait(group, v66))
    {
      [(CacheDeleteAsyncTimeoutFlag *)v152 setTimedOut:1];
      v71 = [*(a1 + 40) purgeResult];
      [v71 setTimedOut:1];

      v72 = [*(a1 + 40) purgeResult];
      [v72 setNoOfTimeouts:{objc_msgSend(v72, "noOfTimeouts") + 1}];

      v73 = [NSMutableArray alloc];
      v74 = [*(a1 + 40) services];
      v75 = [v73 initWithCapacity:{objc_msgSend(v74, "count")}];

      v76 = [*(a1 + 40) services];
      v165[0] = _NSConcreteStackBlock;
      v165[1] = 3221225472;
      v165[2] = __45__CacheDeletePurgeOperation__startOperation___block_invoke_96;
      v165[3] = &unk_100061AA0;
      v77 = v75;
      v166 = v77;
      [v76 enumerateKeysAndObjectsUsingBlock:v165];

      v78 = [v77 count] == 0;
      v79 = CDGetLogHandle();
      v80 = v79;
      if (v78)
      {
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          v131 = [*(a1 + 48) mountPoint];
          *buf = 138543362;
          *v196 = v131;
          _os_log_error_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "Timed out with no inFlight list for volume: %{public}@", buf, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          v81 = [*(a1 + 48) mountPoint];
          v82 = *(a1 + 88);
          v83 = *(*(*(a1 + 56) + 8) + 24);
          *buf = 138544386;
          *v196 = v81;
          *&v196[8] = 1024;
          *&v196[10] = v82;
          *&v196[14] = 1024;
          *&v196[16] = v83;
          *&v196[20] = 2048;
          *&v196[22] = v65;
          v197 = 2114;
          v198 = v77;
          _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "[Purge Main](Volume: %{public}@, Urgency %d : Round %d) Timed out waiting for %llu seconds: %{public}@", buf, 0x2Cu);
        }

        v84 = [*(a1 + 40) purgeResult];
        [v84 setTimeoutTime:v65];

        v163 = 0u;
        v164 = 0u;
        v161 = 0u;
        v162 = 0u;
        v80 = v77;
        v85 = [v80 countByEnumeratingWithState:&v161 objects:v192 count:16];
        if (v85)
        {
          v86 = *v162;
          do
          {
            for (k = 0; k != v85; k = k + 1)
            {
              if (*v162 != v86)
              {
                objc_enumerationMutation(v80);
              }

              v88 = *(*(&v161 + 1) + 8 * k);
              v89 = [*(a1 + 40) purgeResult];
              v90 = [v89 timedOutServices];
              v91 = [v90 containsObject:v88];

              if ((v91 & 1) == 0)
              {
                v92 = [*(a1 + 40) purgeResult];
                v93 = [v92 timedOutServices];
                [v93 addObject:v88];
              }
            }

            v85 = [v80 countByEnumeratingWithState:&v161 objects:v192 count:16];
          }

          while (v85);
        }
      }
    }

    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    v94 = v149;
    v95 = 0;
    v96 = [v94 countByEnumeratingWithState:&v157 objects:v191 count:16];
    if (v96)
    {
      v97 = *v158;
      do
      {
        for (m = 0; m != v96; m = m + 1)
        {
          if (*v158 != v97)
          {
            objc_enumerationMutation(v94);
          }

          v99 = *(*(&v157 + 1) + 8 * m);
          v100 = [v99 reportedBytes];
          [v99 requestedBytes];
          v95 += v100;
        }

        v96 = [v94 countByEnumeratingWithState:&v157 objects:v191 count:16];
      }

      while (v96);
    }

    v101 = [*(a1 + 32) amountPurged];
    if (*(*(*(a1 + 80) + 8) + 40))
    {
      v102 = v101;
      v103 = CDGetLogHandle();
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        v104 = [*(a1 + 48) mountPoint];
        v105 = *(a1 + 88);
        v106 = *(*(*(a1 + 56) + 8) + 24);
        *buf = 138543874;
        *v196 = v104;
        *&v196[8] = 1024;
        *&v196[10] = v105;
        *&v196[14] = 1024;
        *&v196[16] = v106;
        _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "[Purge Cleanup](Volume: %{public}@, Urgency %d : Round %d) Begin", buf, 0x18u);
      }

      v107 = [*(a1 + 40) purge_amount_needed];
      if (v107 > [*(a1 + 32) amountPurged])
      {
        [*(a1 + 40) non_negative_time_remaining];
        v109 = v108;
        if (*(*(*(a1 + 56) + 8) + 24) <= 1 && [v150 count])
        {
          v110 = [v150 count];
          v111 = v95 - v102;
          if (v95 < v102)
          {
            v111 = 0;
          }

          v112 = v146 / v110 + v111;
          if (v146 > v102 && v146 - v102 < v112)
          {
            v112 = v146 - v102;
          }

LABEL_99:
          if (v112)
          {
            v113 = *(a1 + 40);
            v114 = *(*(*(a1 + 80) + 8) + 40);
            v115 = *(a1 + 48);
            v116 = *(a1 + 88);
            if ([v113 clientSpecifiedTimeout])
            {
              v117 = v109;
            }

            else
            {
              v117 = 900;
            }

            v118 = [*(a1 + 40) result];
            v119 = [v118 objectForKeyedSubscript:@"CACHE_DELETE_TEST_PARAMETERS"];
            [v113 oneShot:v114 volume:v115 urgency:v116 donation:v112 currentRoundResults:v94 timeout:v117 info:0 optionalTestInfo:v119];
          }
        }

        else
        {
          v112 = v146 - v102;
          if (v146 > v102)
          {
            goto LABEL_99;
          }
        }
      }

      v120 = CDGetLogHandle();
      if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
      {
        v121 = [*(a1 + 48) mountPoint];
        v122 = *(a1 + 88);
        v123 = *(*(*(a1 + 56) + 8) + 24);
        *buf = 138543874;
        *v196 = v121;
        *&v196[8] = 1024;
        *&v196[10] = v122;
        *&v196[14] = 1024;
        *&v196[16] = v123;
        _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "[Purge Cleanup](Volume: %{public}@, Urgency %d : Round %d) End", buf, 0x18u);
      }
    }

    v13 = v150;

    v124 = *(*(a1 + 56) + 8);
    v125 = *(v124 + 24);
    *(v124 + 24) = v125 + 1;
    if (v125 > 3)
    {
      goto LABEL_111;
    }

    v126 = [*(a1 + 32) amountPurged];
    if (v126 >= [*(a1 + 40) purge_amount_needed])
    {
      goto LABEL_111;
    }

    v127 = [v13 count];
    if (v127)
    {
      if (([*(a1 + 40) cancel] & 1) == 0)
      {
        LOBYTE(v127) = [*(a1 + 40) timeoutNotReached];
        goto LABEL_112;
      }

LABEL_111:
      LOBYTE(v127) = 0;
    }

LABEL_112:
    *(*(*(a1 + 64) + 8) + 24) = v127;
    v128 = CDGetLogHandle();
    if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(*(a1 + 64) + 8) + 24))
      {
        v129 = "proceed";
      }

      else
      {
        v129 = "do not proceed";
      }

      v130 = [v13 count];
      *buf = 67109634;
      *v196 = 861;
      *&v196[4] = 2080;
      *&v196[6] = v129;
      *&v196[14] = 2048;
      *&v196[16] = v130;
      _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "%d Retry loop: %s, currentRoundService.count: %lu", buf, 0x1Cu);
    }

    if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
    {
      goto LABEL_127;
    }
  }

  if (!v22)
  {
    goto LABEL_126;
  }

  *buf = 134217984;
  *v196 = v146;
  v134 = "[Purge Start] aborting, (_donation <= 0), roundGoal: %llu";
  v135 = v21;
  v136 = 12;
LABEL_125:
  _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, v134, buf, v136);
LABEL_126:

LABEL_127:
  v137 = [*(a1 + 32) amountPurged];
  if (v137 >= [*(a1 + 40) purge_amount_needed] || (objc_msgSend(*(a1 + 40), "cancel") & 1) != 0)
  {
    v138 = 0;
  }

  else
  {
    v138 = [*(a1 + 40) timeoutNotReached];
  }

  *(*(*(a1 + 64) + 8) + 24) = v138;
  v139 = CDGetLogHandle();
  if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      v140 = "TRUE";
    }

    else
    {
      v140 = "FALSE";
    }

    v141 = [v13 count];
    *buf = 67109634;
    *v196 = 867;
    *&v196[4] = 2080;
    *&v196[6] = v140;
    *&v196[14] = 2048;
    *&v196[16] = v141;
    _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "%d batch returning %s currentRoundServices count: %lu", buf, 0x1Cu);
  }

  v142 = CDGetLogHandle();
  if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      v143 = "proceed";
    }

    else
    {
      v143 = "do not proceed";
    }

    *buf = 67109378;
    *v196 = 868;
    *&v196[4] = 2080;
    *&v196[6] = v143;
    _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_DEFAULT, "%d Batch loop: %s", buf, 0x12u);
  }

  v144 = *(*(*(a1 + 64) + 8) + 24);
  return v144 & 1;
}

void __45__CacheDeletePurgeOperation__startOperation___block_invoke_95(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    if (([*(a1 + 40) timedOut] & 1) == 0)
    {
      v17 = [v5 purgeResult];
      [v17 addResult:v3];

      [*(a1 + 48) addObject:v3];
      [v5 setPurge_amount_reported:{objc_msgSend(v3, "reportedBytes") + objc_msgSend(v5, "purge_amount_reported")}];
      v18 = CDGetLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [*(a1 + 56) mountPoint];
        v20 = *(a1 + 104);
        v21 = *(*(*(a1 + 88) + 8) + 24);
        v22 = [*(a1 + 64) ID];
        v23 = [v3 reportedBytes];
        v24 = [v3 requestedBytes];
        [v3 duration];
        v29 = 138544898;
        v30 = v19;
        v31 = 1024;
        v32 = v20;
        v33 = 1024;
        *v34 = v21;
        *&v34[4] = 2114;
        *&v34[6] = v22;
        v35 = 2048;
        v36 = v23;
        v37 = 2048;
        v38 = v24;
        v39 = 2048;
        v40 = v25;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[Purge Result](Volume: %{public}@, Urgency %d : Round %d) %{public}@ purged (%llu / %llu) bytes : elapsed time %lfs", &v29, 0x40u);
      }

      v26 = [v3 reportedBytes];
      if (v26 >= [v3 requestedBytes])
      {
        [*(a1 + 72) addObject:*(a1 + 64)];
        v6 = CDGetLogHandle();
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        v7 = [*(a1 + 64) ID];
        v28 = *(a1 + 104);
        v10 = [*(a1 + 56) mountPoint];
        v29 = 138543874;
        v30 = v7;
        v31 = 1024;
        v32 = v28;
        v33 = 2114;
        *v34 = v10;
        v14 = "** %{public}@ will continue purging at urgency %d on volume: %{public}@";
      }

      else
      {
        v6 = CDGetLogHandle();
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        v7 = [*(a1 + 64) ID];
        v27 = *(a1 + 104);
        v10 = [*(a1 + 56) mountPoint];
        v29 = 138543874;
        v30 = v7;
        v31 = 1024;
        v32 = v27;
        v33 = 2114;
        *v34 = v10;
        v14 = "** %{public}@ is disqualified from purging at urgency %d on volume: %{public}@";
      }

      v15 = v6;
      v16 = 28;
      goto LABEL_16;
    }

    v6 = CDGetLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 56) mountPoint];
      v8 = *(a1 + 104);
      v9 = *(*(*(a1 + 88) + 8) + 24);
      v10 = [*(a1 + 64) ID];
      v11 = [v3 reportedBytes];
      v12 = [v3 requestedBytes];
      [v3 duration];
      v29 = 138544898;
      v30 = v7;
      v31 = 1024;
      v32 = v8;
      v33 = 1024;
      *v34 = v9;
      *&v34[4] = 2114;
      *&v34[6] = v10;
      v35 = 2048;
      v36 = v11;
      v37 = 2048;
      v38 = v12;
      v39 = 2048;
      v40 = v13;
      v14 = "[Purge Result(tardy!)](Volume: %{public}@, Urgency %d : Round %d) %{public}@ purged (%llu / %llu) bytes : elapsed time %lfs";
      v15 = v6;
      v16 = 64;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, &v29, v16);

      goto LABEL_17;
    }
  }

  else
  {
    v6 = CDGetLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 56) mountPoint];
      v29 = 138543362;
      v30 = v7;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Purge failed (volume %{public}@ possibly invalid)", &v29, 0xCu);
LABEL_17:
    }
  }

LABEL_18:

  dispatch_group_leave(*(a1 + 80));
}

void __45__CacheDeletePurgeOperation__startOperation___block_invoke_96(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 inFlight])
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (void)oneShot:(id)shot volume:(id)volume urgency:(int)urgency donation:(unint64_t)donation currentRoundResults:(id)results timeout:(unint64_t)timeout info:(id)info optionalTestInfo:(id)self0
{
  shotCopy = shot;
  volumeCopy = volume;
  resultsCopy = results;
  infoCopy = info;
  testInfoCopy = testInfo;
  v15 = CDGetLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    mountPoint = [volumeCopy mountPoint];
    *buf = 138543618;
    v56 = mountPoint;
    v57 = 1024;
    urgencyCopy4 = urgency;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[Purge OneShot](Volume: %{public}@, Urgency %d) Begin", buf, 0x12u);
  }

  volumes = [(CacheDeleteOperation *)self volumes];
  firstObject = [volumes firstObject];

  purge_amount_needed = [(CacheDeletePurgeOperation *)self purge_amount_needed];
  if (purge_amount_needed > [firstObject amountPurged])
  {
    v20 = [CacheDeleteAsyncTimeoutFlag alloc];
    response_queue = [(CacheDeleteOperation *)self response_queue];
    v22 = [(CacheDeleteAsyncTimeoutFlag *)v20 initWithQueue:response_queue];

    objc_initWeak(&location, self);
    response_queue2 = [(CacheDeleteOperation *)self response_queue];
    v24 = dispatch_semaphore_create(0);
    response_queue3 = [(CacheDeleteOperation *)self response_queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __111__CacheDeletePurgeOperation_oneShot_volume_urgency_donation_currentRoundResults_timeout_info_optionalTestInfo___block_invoke;
    block[3] = &unk_100061C28;
    block[4] = self;
    v26 = shotCopy;
    v44 = v26;
    v27 = volumeCopy;
    urgencyCopy2 = urgency;
    v45 = v27;
    v52[1] = donation;
    v46 = infoCopy;
    v47 = testInfoCopy;
    objc_copyWeak(v52, &location);
    v28 = response_queue2;
    v48 = v28;
    v29 = v22;
    v49 = v29;
    v50 = resultsCopy;
    v30 = v24;
    v51 = v30;
    dispatch_async(response_queue3, block);

    v31 = dispatch_time(0, 1000000000 * timeout);
    if (dispatch_semaphore_wait(v30, v31))
    {
      [(CacheDeleteAsyncTimeoutFlag *)v29 setTimedOut:1];
      v32 = CDGetLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        mountPoint2 = [v27 mountPoint];
        v34 = [v26 ID];
        *buf = 138543874;
        v56 = mountPoint2;
        v57 = 1024;
        urgencyCopy4 = urgency;
        v59 = 2114;
        v60 = v34;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[Purge OneShot] (Volume: %{public}@, Urgency %d) Timed out waiting for: %{public}@", buf, 0x1Cu);
      }
    }

    objc_destroyWeak(v52);
    objc_destroyWeak(&location);
  }

  v35 = CDGetLogHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    mountPoint3 = [volumeCopy mountPoint];
    *buf = 138543618;
    v56 = mountPoint3;
    v57 = 1024;
    urgencyCopy4 = urgency;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[Purge OneShot](Volume: %{public}@, Urgency %d) End", buf, 0x12u);
  }
}

void __111__CacheDeletePurgeOperation_oneShot_volume_urgency_donation_currentRoundResults_timeout_info_optionalTestInfo___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 120);
  v5 = *(a1 + 112);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __111__CacheDeletePurgeOperation_oneShot_volume_urgency_donation_currentRoundResults_timeout_info_optionalTestInfo___block_invoke_2;
  v9[3] = &unk_100061C00;
  objc_copyWeak(&v16, (a1 + 104));
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(a1 + 88);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 96);
  [v2 serviceRequest:v3 volume:v7 urgency:v4 donation:v5 info:v6 optionalTestInfo:v8 completion:v9];

  objc_destroyWeak(&v16);
}

void __111__CacheDeletePurgeOperation_oneShot_volume_urgency_donation_currentRoundResults_timeout_info_optionalTestInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    if ([*(a1 + 40) timedOut])
    {
      v6 = CDGetLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [*(a1 + 56) ID];
        v8 = [v3 reportedBytes];
        v9 = [v3 requestedBytes];
        v10 = [*(a1 + 64) mountPoint];
        [v3 duration];
        v16 = 138544386;
        v17 = v7;
        v18 = 2048;
        v19 = v8;
        v20 = 2048;
        v21 = v9;
        v22 = 2114;
        v23 = v10;
        v24 = 2048;
        v25 = v11;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[Purge Result (oneShot, tardy!)] %{public}@ purged (%llu / %llu) bytes on volume: %{public}@ in %lf seconds", &v16, 0x34u);
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      v12 = [v5 purgeResult];
      [v12 addResult:v3];

      [*(a1 + 48) addObject:v3];
      [v5 setPurge_amount_reported:{objc_msgSend(v3, "reportedBytes") + objc_msgSend(v5, "purge_amount_reported")}];
      v6 = CDGetLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 56) ID];
        v13 = [v3 reportedBytes];
        v14 = [v3 requestedBytes];
        v10 = [*(a1 + 64) mountPoint];
        [v3 duration];
        v16 = 138544386;
        v17 = v7;
        v18 = 2048;
        v19 = v13;
        v20 = 2048;
        v21 = v14;
        v22 = 2114;
        v23 = v10;
        v24 = 2048;
        v25 = v15;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Purge Result (oneShot)] %{public}@ purged (%llu / %llu) bytes on volume: %{public}@ in %lf seconds", &v16, 0x34u);
        goto LABEL_10;
      }
    }
  }

  else
  {
    v6 = CDGetLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 64) mountPoint];
      v16 = 138543362;
      v17 = v7;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Purge oneShot failed (volume %{public}@ was likely invalid)", &v16, 0xCu);
LABEL_11:
    }
  }

  dispatch_semaphore_signal(*(a1 + 72));
}

void __101__CacheDeletePurgeOperation_serviceRequest_volume_urgency_donation_info_optionalTestInfo_completion___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(CDPurgeServiceRequestResult);
  [(CDPurgeServiceRequestResult *)v2 setRequestedBytes:*(a1 + 80)];
  [(CDServiceRequestResult *)v2 setUrgency:*(a1 + 88)];
  v3 = [*(a1 + 32) ID];
  [(CDServiceRequestResult *)v2 setServiceName:v3];

  v4 = [*(a1 + 40) servicesToTranslate];
  v5 = [*(a1 + 32) ID];
  [v4 containsObject:v5];

  v6 = [*(a1 + 48) objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v7 = mapVolume();
  [*(a1 + 48) setObject:v7 forKeyedSubscript:@"CACHE_DELETE_VOLUME"];

  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  objc_initWeak(&location, *(a1 + 40));
  v8 = mach_absolute_time();
  v9 = *(a1 + 32);
  v10 = *(a1 + 88);
  v11 = [*(a1 + 48) copy];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __101__CacheDeletePurgeOperation_serviceRequest_volume_urgency_donation_info_optionalTestInfo_completion___block_invoke_3;
  v14[3] = &unk_100061C50;
  v22[1] = v8;
  objc_copyWeak(v22, &location);
  v21 = v25;
  v15 = *(a1 + 32);
  v16 = *(a1 + 56);
  v20 = *(a1 + 72);
  v17 = *(a1 + 64);
  v12 = v2;
  v23 = *(a1 + 88);
  v13 = *(a1 + 40);
  v18 = v12;
  v19 = v13;
  [v9 servicePurge:v10 info:v11 replyBlock:v14];

  objc_destroyWeak(v22);
  objc_destroyWeak(&location);
  _Block_object_dispose(v25, 8);
}

void __101__CacheDeletePurgeOperation_serviceRequest_volume_urgency_donation_info_optionalTestInfo_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = mach_absolute_time();
  v5 = *(a1 + 96);
  v6 = gTimebaseConversion;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v8 = *(*(a1 + 80) + 8);
  if (*(v8 + 24) == 1)
  {
    v9 = CDGetLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v21 = [*(a1 + 32) ID];
      v22 = [*(a1 + 40) mountPoint];
      *buf = 138543618;
      v33 = v21;
      v34 = 2114;
      v35 = *&v22;
      _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Purge callback firing more than once for service %{public}@ on volume: %{public}@", buf, 0x16u);
    }

    v10 = [*(a1 + 32) ID];
    v23 = [*(a1 + 40) mountPoint];
    _CacheDeleteAbortWithMessage();
  }

  else
  {
    *(v8 + 24) = 1;
    v11 = [v3 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
    v10 = evaluateNumberProperty();

    v12 = CDGetLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v6 * (v4 - v5);
      v14 = [*(a1 + 32) ID];
      v15 = [v10 unsignedLongLongValue];
      v16 = [*(a1 + 40) mountPoint];
      *buf = 138544130;
      v33 = v14;
      v34 = 2048;
      v35 = v13 / 1000000000.0;
      v36 = 2048;
      v37 = v15;
      v38 = 2114;
      v39 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ took %f seconds, purged %llu bytes on volume: %{public}@", buf, 0x2Au);
    }

    if (WeakRetained)
    {
      v17 = *(a1 + 48);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __101__CacheDeletePurgeOperation_serviceRequest_volume_urgency_donation_info_optionalTestInfo_completion___block_invoke_132;
      block[3] = &unk_100060ED8;
      v25 = v3;
      v26 = *(a1 + 56);
      v27 = *(a1 + 32);
      v18 = *(a1 + 40);
      v31 = *(a1 + 104);
      v19 = *(a1 + 64);
      v20 = *(a1 + 72);
      v28 = v18;
      v29 = v19;
      v30 = v20;
      dispatch_async(v17, block);
    }

    else
    {
      (*(*(a1 + 72) + 16))();
    }
  }
}

void __101__CacheDeletePurgeOperation_serviceRequest_volume_urgency_donation_info_optionalTestInfo_completion___block_invoke_132(uint64_t a1)
{
  v10 = [*(a1 + 32) objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v10 unsignedLongLongValue];
  }

  else
  {
    v2 = 0;
  }

  [*(a1 + 40) setReportedBytes:v2];
  [*(a1 + 40) finish];
  if ([*(a1 + 40) reportedBytes])
  {
    v3 = +[CDDaemonPurgeableResultCache sharedPurgeableResultsCache];
    v4 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 40) reportedBytes]);
    v5 = [*(a1 + 48) ID];
    [v3 deductPurgeableAmount:v4 serviceID:v5 volume:*(a1 + 56) urgency:*(a1 + 80)];
  }

  v6 = [*(a1 + 64) analyticsReporter];
  [v6 reportPurgeTimingInfo:*(a1 + 40)];

  v7 = *(a1 + 64);
  v8 = [*(a1 + 32) objectForKeyedSubscript:@"CACHE_DELETE_TEST_FAILURES"];
  [v7 processTestFailures:v8];

  v9 = *(a1 + 40);
  (*(*(a1 + 72) + 16))();
}

@end