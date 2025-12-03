@interface GEOExperimentServerLocalProxy
+ (void)_deleteExperimentInfoFromDisk;
- (BOOL)_removeOldExperimentsInfoIfNecessary:(BOOL)necessary;
- (GEOABAssignmentResponse)experimentsInfo;
- (GEOExperimentServerLocalProxy)initWithDelegate:(id)delegate;
- (GEOExperimentServerProxyDelegate)delegate;
- (id)captureStatePlistWithHints:(os_state_hints_s *)hints;
- (id)fetchBucketIDWithError:(id *)error;
- (void)_debug_fetchAllAvailableExperiments:(id)experiments;
- (void)_debug_setActiveExperimentBranchDictionaryRepresentation:(id)representation;
- (void)_debug_setBucketIdDictionaryRepresentation:(id)representation;
- (void)_debug_setQuerySubstring:(id)substring forExperimentType:(int64_t)type dispatcherRequestType:(int)requestType;
- (void)_loadExperimentsConfiguration:(id)configuration;
- (void)_notifyExperimentsInfoChanged:(id)changed current:(id)current;
- (void)_setupRefreshTask;
- (void)_submitNonRepeatingRetryTask:(double)task;
- (void)_updateIfNecessary;
- (void)_writeExperimentInfoToDisk:(id)disk;
- (void)abAssignUUIDWithSyncCompletionHandler:(id)handler;
- (void)cancelRefreshTask;
- (void)dealloc;
- (void)fetchBucketID:(id)d;
- (void)forceUpdate:(id)update;
- (void)refreshDatasetABStatus:(id)status;
- (void)resourceManifestManager:(id)manager didChangeActiveTileGroup:(id)group fromOldTileGroup:(id)tileGroup;
- (void)submitBackgroundTasksNeededDuringDaemonStart;
@end

@implementation GEOExperimentServerLocalProxy

- (GEOExperimentServerProxyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)resourceManifestManager:(id)manager didChangeActiveTileGroup:(id)group fromOldTileGroup:(id)tileGroup
{
  managerCopy = manager;
  groupCopy = group;
  tileGroupCopy = tileGroup;
  v10 = objc_autoreleasePoolPush();
  experimentsInfo = self->_experimentsInfo;
  if (!experimentsInfo)
  {
    [(GEOExperimentServerLocalProxy *)self _removeOldExperimentsInfoIfNecessary:1];
LABEL_6:
    [(GEOExperimentServerLocalProxy *)self forceUpdate:0];
    goto LABEL_7;
  }

  hasRefreshIntervalSeconds = [(GEOABAssignmentResponse *)experimentsInfo hasRefreshIntervalSeconds];
  if ([(GEOExperimentServerLocalProxy *)self _removeOldExperimentsInfoIfNecessary:1]|| !hasRefreshIntervalSeconds)
  {
    goto LABEL_6;
  }

LABEL_7:
  objc_autoreleasePoolPop(v10);
}

- (id)captureStatePlistWithHints:(os_state_hints_s *)hints
{
  os_unfair_lock_lock_with_options();
  v4 = sub_100001E24(self->_experimentsInfo);
  os_unfair_lock_unlock(&self->_experimentsInfoLock);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__NSDictionary0__struct;
  }

  v6 = v5;

  return v5;
}

- (void)_debug_setBucketIdDictionaryRepresentation:(id)representation
{
  v4 = [representation objectForKeyedSubscript:@"bucketId"];
  if (v4)
  {
    v16 = v4;
    unsignedIntegerValue = [v4 unsignedIntegerValue];
    os_unfair_lock_lock_with_options();
    mapsAbClientMetadata = [(GEOABAssignmentResponse *)self->_experimentsInfo mapsAbClientMetadata];
    clientDatasetMetadata = [mapsAbClientMetadata clientDatasetMetadata];
    [clientDatasetMetadata setBucketId:unsignedIntegerValue];

    parsecClientMetadata = [(GEOABAssignmentResponse *)self->_experimentsInfo parsecClientMetadata];
    clientDatasetMetadata2 = [parsecClientMetadata clientDatasetMetadata];
    [clientDatasetMetadata2 setBucketId:unsignedIntegerValue];

    siriClientMetadata = [(GEOABAssignmentResponse *)self->_experimentsInfo siriClientMetadata];
    clientDatasetMetadata3 = [siriClientMetadata clientDatasetMetadata];
    [clientDatasetMetadata3 setBucketId:unsignedIntegerValue];

    rapClientMetadata = [(GEOABAssignmentResponse *)self->_experimentsInfo rapClientMetadata];
    clientDatasetMetadata4 = [rapClientMetadata clientDatasetMetadata];
    [clientDatasetMetadata4 setBucketId:unsignedIntegerValue];

    [(GEOExperimentServerLocalProxy *)self _writeExperimentInfoToDisk:self->_experimentsInfo];
    os_unfair_lock_unlock(&self->_experimentsInfoLock);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    experimentsInfo = [(GEOExperimentServerLocalProxy *)self experimentsInfo];
    [WeakRetained serverProxy:self didChangeExperimentsInfo:experimentsInfo];

    notify_post("com.apple.GeoServices.experimentsChanged");
    v4 = v16;
  }
}

- (void)_debug_setActiveExperimentBranchDictionaryRepresentation:(id)representation
{
  v4 = GeoServicesConfig_DebugActiveExperimentBranch[1];
  GEOConfigSetDictionary();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  experimentsInfo = [(GEOExperimentServerLocalProxy *)self experimentsInfo];
  [WeakRetained serverProxy:self didChangeExperimentsInfo:experimentsInfo];

  notify_post("com.apple.GeoServices.experimentsChanged");
}

- (void)_debug_fetchAllAvailableExperiments:(id)experiments
{
  experimentsCopy = experiments;
  if (experimentsCopy)
  {
    v4 = objc_alloc_init(GEOABAssignmentRequest);
    v5 = [GEOPDClientMetadata alloc];
    v6 = +[GEOMapService sharedService];
    defaultTraits = [v6 defaultTraits];
    v8 = [v5 initWithTraits:defaultTraits];
    [v4 setClientMetadata:v8];

    [v4 setRequestType:2];
    v9 = +[_GEOExperimentServiceRequester sharedInstance];
    v10 = +[GEOMapService sharedService];
    defaultTraits2 = [v10 defaultTraits];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000720C;
    v12[3] = &unk_100081778;
    v13 = experimentsCopy;
    [v9 startWithRequest:v4 traits:defaultTraits2 completionHandler:v12];
  }
}

- (void)_loadExperimentsConfiguration:(id)configuration
{
  configurationCopy = configuration;
  os_unfair_lock_lock_with_options();
  v5 = self->_currentRequest;
  v6 = objc_alloc_init(GEOABAssignmentRequest);
  v7 = [GEOPDClientMetadata alloc];
  v8 = +[GEOMapService sharedService];
  defaultTraits = [v8 defaultTraits];
  v10 = [v7 initWithTraits:defaultTraits];
  [v6 setClientMetadata:v10];

  v11 = sub_1000076C4();
  [v6 setGuid:v11];

  objc_storeStrong(&self->_currentRequest, v6);
  os_unfair_lock_unlock(&self->_currentRequestLock);
  if (v5)
  {
    v12 = +[_GEOExperimentServiceRequester sharedInstance];
    [v12 cancelRequest:v5];
  }

  v13 = +[_GEOExperimentServiceRequester sharedInstance];
  v14 = +[GEOMapService sharedService];
  defaultTraits2 = [v14 defaultTraits];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000782C;
  v18[3] = &unk_100081750;
  v18[4] = self;
  v19 = v6;
  v20 = configurationCopy;
  v16 = configurationCopy;
  v17 = v6;
  [v13 startWithRequest:v17 traits:defaultTraits2 completionHandler:v18];
}

- (void)submitBackgroundTasksNeededDuringDaemonStart
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v2, &location);
  geo_dispatch_async_qos();
  objc_destroyWeak(&v2);
  objc_destroyWeak(&location);
}

- (void)forceUpdate:(id)update
{
  updateCopy = update;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Updating experiment configuration", buf, 2u);
  }

  *buf = 0;
  v20 = buf;
  v21 = 0x2810000000;
  v22 = &unk_10007851D;
  v23 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100007D48;
  v16[3] = &unk_100082ED0;
  v18 = buf;
  v6 = updateCopy;
  v17 = v6;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100007DD8;
  v14[3] = &unk_1000833E0;
  v7 = objc_retainBlock(v16);
  v15 = v7;
  [v6 setExpirationHandler:v14];
  v8 = GEOGetURL();

  if (v8)
  {
    [(GEOExperimentServerLocalProxy *)self _removeOldExperimentsInfoIfNecessary:0];
    objc_initWeak(&location, self);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100007E28;
    v10[3] = &unk_100081700;
    v11 = v7;
    objc_copyWeak(&v12, &location);
    v10[4] = self;
    [(GEOExperimentServerLocalProxy *)self _loadExperimentsConfiguration:v10];
    objc_destroyWeak(&v12);

    objc_destroyWeak(&location);
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(location) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "No experiments URL populated. Not updating (will update if/when tile group changes).", &location, 2u);
    }
  }

  _Block_object_dispose(buf, 8);
}

- (void)_writeExperimentInfoToDisk:(id)disk
{
  diskCopy = disk;
  v4 = +[NSFileManager defaultManager];
  if (diskCopy)
  {
    data = [diskCopy data];
    v6 = GEOExperimentConfigurationPath();
    v16 = 0;
    v7 = [data writeToFile:v6 options:268435457 error:&v16];
    v8 = v16;

    if ((v7 & 1) == 0)
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v18 = v8;
        v10 = "Failed to write experiment configuration to disk: %{public}@";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v10, buf, 0xCu);
        goto LABEL_10;
      }

      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v11 = GEOExperimentConfigurationPath();
  v12 = [v4 fileExistsAtPath:v11 isDirectory:0];

  if (v12)
  {
    v13 = GEOExperimentConfigurationPath();
    v15 = 0;
    v14 = [v4 removeItemAtPath:v13 error:&v15];
    v8 = v15;

    if ((v14 & 1) == 0)
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v18 = v8;
        v10 = "Failed to remove experiment configuration from disk: %{public}@";
        goto LABEL_9;
      }

LABEL_10:
    }

LABEL_11:
  }
}

- (void)_updateIfNecessary
{
  os_unfair_lock_lock_with_options();
  experimentsInfo = self->_experimentsInfo;
  if (experimentsInfo && ([(GEOABAssignmentResponse *)experimentsInfo hasRefreshIntervalSeconds]& 1) != 0)
  {
    v6 = GEOURLString();
    sourceURL = [(GEOABAssignmentResponse *)self->_experimentsInfo sourceURL];
    if (v6 | sourceURL)
    {
      v5 = [v6 isEqualToString:sourceURL];
      os_unfair_lock_unlock(&self->_experimentsInfoLock);
      if ((v5 & 1) == 0)
      {
        [(GEOExperimentServerLocalProxy *)self forceUpdate];
      }
    }

    else
    {
      os_unfair_lock_unlock(&self->_experimentsInfoLock);
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_experimentsInfoLock);

    [(GEOExperimentServerLocalProxy *)self forceUpdate];
  }
}

- (void)_notifyExperimentsInfoChanged:(id)changed current:(id)current
{
  currentCopy = current;
  changedCopy = changed;
  v11 = [NSMutableDictionary dictionaryWithCapacity:2];
  v8 = sub_100001E24(changedCopy);

  [v11 setObject:v8 forKeyedSubscript:NSKeyValueChangeOldKey];
  v9 = sub_100001E24(currentCopy);

  [v11 setObject:v9 forKeyedSubscript:NSKeyValueChangeNewKey];
  v10 = +[NSNotificationCenter defaultCenter];
  [v10 postNotificationName:@"GEOExperimentInfoChangedInternalNotification" object:self userInfo:v11];
}

- (BOOL)_removeOldExperimentsInfoIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = GEOURLString();
  os_unfair_lock_lock_with_options();
  experimentsInfo = self->_experimentsInfo;
  if (!experimentsInfo)
  {
    os_unfair_lock_unlock(&self->_experimentsInfoLock);
    LOBYTE(v8) = 0;
    goto LABEL_24;
  }

  sourceURL = [(GEOABAssignmentResponse *)experimentsInfo sourceURL];
  if (v5 | sourceURL)
  {
    v8 = [v5 isEqualToString:sourceURL] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  if ([(GEOABAssignmentResponse *)self->_experimentsInfo hasBranchExpirationTtlHours])
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(GEOABAssignmentResponse *)self->_experimentsInfo timestamp];
    v11 = v10 + (3600 * [(GEOABAssignmentResponse *)self->_experimentsInfo branchExpirationTtlHours]);
    if (v11 < Current)
    {
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 134349312;
        v27 = v11;
        v28 = 2050;
        v29 = Current;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Experiments expired. Deleting existing experiments config. Expiration time %{public}f current time %{public}f", buf, 0x16u);
      }

      v13 = self->_experimentsInfo;
      goto LABEL_12;
    }
  }

  v13 = self->_experimentsInfo;
  if (v8)
  {
LABEL_12:
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Deleting cached experiments config", buf, 2u);
    }

    v15 = self->_experimentsInfo;
    self->_experimentsInfo = 0;

    v16 = +[NSFileManager defaultManager];
    v17 = GEOExperimentConfigurationPath();
    v25 = 0;
    v18 = [v16 removeItemAtPath:v17 error:&v25];
    v19 = v25;

    if ((v18 & 1) == 0)
    {
      v20 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v27 = *&v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to remove stale environments configuration: %{public}@", buf, 0xCu);
      }
    }

    v8 = 1;
  }

  v21 = self->_experimentsInfo;
  os_unfair_lock_unlock(&self->_experimentsInfoLock);
  if (v8)
  {
    if (necessaryCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      experimentsInfo = [(GEOExperimentServerLocalProxy *)self experimentsInfo];
      [WeakRetained serverProxy:self didChangeExperimentsInfo:experimentsInfo];
    }

    notify_post("com.apple.GeoServices.experimentsChanged");
    [(GEOExperimentServerLocalProxy *)self _notifyExperimentsInfoChanged:v13 current:v21];
  }

LABEL_24:
  return v8;
}

- (void)_debug_setQuerySubstring:(id)substring forExperimentType:(int64_t)type dispatcherRequestType:(int)requestType
{
  if (type)
  {
    v6 = GeoServicesConfig_Experiment[1];
    _GEOSetQueryForExperimentType();
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    experimentsInfo = [(GEOExperimentServerLocalProxy *)self experimentsInfo];
    [WeakRetained serverProxy:self didChangeExperimentsInfo:experimentsInfo];

    notify_post("com.apple.GeoServices.experimentsChanged");
  }
}

- (GEOABAssignmentResponse)experimentsInfo
{
  os_unfair_lock_lock_with_options();
  v3 = self->_experimentsInfo;
  os_unfair_lock_unlock(&self->_experimentsInfoLock);

  return v3;
}

- (void)_submitNonRepeatingRetryTask:(double)task
{
  if (sub_10001FD1C())
  {
    v4 = [objc_alloc(sub_100020080()) initWithIdentifier:GEOExperimentServerLocalProxyBackgroundTaskRetryIdentifier];
    [v4 setTrySchedulingBefore:task];
    sharedScheduler = [sub_10001FF30() sharedScheduler];
    v10 = 0;
    v6 = [sharedScheduler submitTaskRequest:v4 error:&v10];
    v7 = v10;

    if ((v6 & 1) == 0)
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = @"Unknown";
        if (v7)
        {
          v9 = v7;
        }

        *buf = 138412290;
        v12 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to submit nonrepeating task with error: %@", buf, 0xCu);
      }
    }
  }
}

- (void)_setupRefreshTask
{
  if (sub_10001FD1C())
  {
    os_unfair_lock_lock_with_options();
    experimentsInfo = self->_experimentsInfo;
    if (experimentsInfo && ([(GEOABAssignmentResponse *)experimentsInfo hasRefreshIntervalSeconds]& 1) != 0)
    {
      v38 = self->_taskIsolater;
      _geo_isolate_lock_data();
      Current = CFAbsoluteTimeGetCurrent();
      refreshIntervalSeconds = [(GEOABAssignmentResponse *)self->_experimentsInfo refreshIntervalSeconds];
      [(GEOABAssignmentResponse *)self->_experimentsInfo timestamp];
      v7 = v6;
      os_unfair_lock_unlock(&self->_experimentsInfoLock);
      v8 = GeoServicesConfig_ExperimentMaxRefreshInterval[1];
      GEOConfigGetDouble();
      v9 = GeoServicesConfig_ExperimentMinRefreshInterval[1];
      GEOConfigGetDouble();
      GEOConfigGetDouble();
      v10 = refreshIntervalSeconds;
      if (v11 < refreshIntervalSeconds)
      {
        v12 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          GEOConfigGetDouble();
          GEOConfigGetDouble();
          GEOConfigGetDouble();
          *buf = 134218240;
          v40 = v10;
          v41 = 2048;
          v42 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Experiment response has refresh interval of %f. Capping at %f.", buf, 0x16u);
        }

        GEOConfigGetDouble();
        GEOConfigGetDouble();
        GEOConfigGetDouble();
        v10 = v14;
      }

      v15 = GeoServicesConfig_ExperimentRunImmediatelyInterval[1];
      GEOConfigGetDouble();
      if (v7 + v10 - Current < v16)
      {
        v17 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          GEOConfigGetDouble();
          *buf = 134217984;
          v40 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Experiment should have refreshed already or will refresh in the next %f seconds, going to run it now", buf, 0xCu);
        }

        [(GEOExperimentServerLocalProxy *)self forceUpdate];
        goto LABEL_34;
      }

      repeatingTask = self->_repeatingTask;
      if (!repeatingTask || ([(BGRepeatingSystemTaskRequest *)repeatingTask interval], v20 == v10))
      {
        v28 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v40 = v10;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Setting experiment refresh interval to %f", buf, 0xCu);
        }

        v29 = [objc_alloc(sub_1000201D0()) initWithIdentifier:GEOExperimentServerLocalProxyBackgroundTaskIdentifier];
        v30 = self->_repeatingTask;
        self->_repeatingTask = v29;

        [(BGRepeatingSystemTaskRequest *)self->_repeatingTask setPriority:2];
        [(BGRepeatingSystemTaskRequest *)self->_repeatingTask setInterval:v10];
        [(BGRepeatingSystemTaskRequest *)self->_repeatingTask setRequiresNetworkConnectivity:1];
        [(BGRepeatingSystemTaskRequest *)self->_repeatingTask setPreventsDeviceSleep:1];
        sharedScheduler = [sub_10001FF30() sharedScheduler];
        v32 = self->_repeatingTask;
        v36 = 0;
        v33 = [sharedScheduler submitTaskRequest:v32 error:&v36];
        v25 = v36;

        if (v33)
        {
          goto LABEL_33;
        }

        v34 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *&v35 = COERCE_DOUBLE(@"Unknown");
          if (v25)
          {
            v35 = v25;
          }

          *buf = 138412290;
          v40 = *&v35;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Failed to submit task with error: %@", buf, 0xCu);
        }

        v26 = self->_repeatingTask;
        self->_repeatingTask = 0;
      }

      else
      {
        v21 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v40 = v10;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Updating experiment refresh interval to %f", buf, 0xCu);
        }

        sharedScheduler2 = [sub_10001FF30() sharedScheduler];
        v23 = self->_repeatingTask;
        v37 = 0;
        v24 = [sharedScheduler2 updateTaskRequest:v23 error:&v37];
        v25 = v37;

        if (v24)
        {
          goto LABEL_33;
        }

        v26 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *&v27 = COERCE_DOUBLE(@"Unknown");
          if (v25)
          {
            v27 = v25;
          }

          *buf = 138412290;
          v40 = *&v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to update task with error: %@", buf, 0xCu);
        }
      }

LABEL_33:
LABEL_34:
      _geo_isolate_unlock();

      return;
    }

    os_unfair_lock_unlock(&self->_experimentsInfoLock);

    [(GEOExperimentServerLocalProxy *)self cancelRefreshTask];
  }
}

- (id)fetchBucketIDWithError:(id *)error
{
  os_unfair_lock_lock_with_options();
  mapsAbClientMetadata = [(GEOABAssignmentResponse *)self->_experimentsInfo mapsAbClientMetadata];
  clientDatasetMetadata = [mapsAbClientMetadata clientDatasetMetadata];
  bucketId = [clientDatasetMetadata bucketId];

  os_unfair_lock_unlock(&self->_experimentsInfoLock);

  return [NSNumber numberWithUnsignedInt:bucketId];
}

- (void)fetchBucketID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  mapsAbClientMetadata = [(GEOABAssignmentResponse *)self->_experimentsInfo mapsAbClientMetadata];
  clientDatasetMetadata = [mapsAbClientMetadata clientDatasetMetadata];
  bucketId = [clientDatasetMetadata bucketId];

  os_unfair_lock_unlock(&self->_experimentsInfoLock);
  v8 = [NSNumber numberWithUnsignedInt:bucketId];
  dCopy[2](dCopy, v8, 0);
}

- (void)abAssignUUIDWithSyncCompletionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    v6 = sub_1000076C4();
    v4 = GeoServicesConfig_ExperimentsBucketGUIDTimestamp[1];
    GEOConfigGetDouble();
    v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    handlerCopy[2](handlerCopy, v6, v5, 0);
  }
}

- (void)refreshDatasetABStatus:(id)status
{
  statusCopy = status;
  v5 = statusCopy;
  if (statusCopy && [statusCopy hasDatasetId])
  {
    os_unfair_lock_lock_with_options();
    mapsAbClientMetadata = [(GEOABAssignmentResponse *)self->_experimentsInfo mapsAbClientMetadata];
    clientDatasetMetadata = [mapsAbClientMetadata clientDatasetMetadata];

    if (clientDatasetMetadata)
    {
      datasetId = [clientDatasetMetadata datasetId];
      if (datasetId != [v5 datasetId])
      {
        v9 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 67240448;
          datasetId2 = [clientDatasetMetadata datasetId];
          v41 = 1026;
          datasetId3 = [v5 datasetId];
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Data set changed (%{public}u -> %{public}u)", buf, 0xEu);
        }

        if (!self->_experimentsInfo)
        {
          v10 = objc_alloc_init(GEOABAssignmentResponse);
          experimentsInfo = self->_experimentsInfo;
          self->_experimentsInfo = v10;

          v12 = objc_alloc_init(GEOABSecondPartyPlaceRequestClientMetaData);
          [(GEOABAssignmentResponse *)self->_experimentsInfo setMapsAbClientMetadata:v12];

          v13 = objc_alloc_init(GEOABSecondPartyPlaceRequestClientMetaData);
          [(GEOABAssignmentResponse *)self->_experimentsInfo setParsecClientMetadata:v13];

          v14 = objc_alloc_init(GEOABSecondPartyPlaceRequestClientMetaData);
          [(GEOABAssignmentResponse *)self->_experimentsInfo setSiriClientMetadata:v14];

          v15 = objc_alloc_init(GEOABSecondPartyPlaceRequestClientMetaData);
          [(GEOABAssignmentResponse *)self->_experimentsInfo setRapClientMetadata:v15];

          v16 = objc_alloc_init(GEOPDABClientDatasetMetadata);
          mapsAbClientMetadata2 = [(GEOABAssignmentResponse *)self->_experimentsInfo mapsAbClientMetadata];
          [mapsAbClientMetadata2 setClientDatasetMetadata:v16];

          v18 = objc_alloc_init(GEOPDABClientDatasetMetadata);
          parsecClientMetadata = [(GEOABAssignmentResponse *)self->_experimentsInfo parsecClientMetadata];
          [parsecClientMetadata setClientDatasetMetadata:v18];

          v20 = objc_alloc_init(GEOPDABClientDatasetMetadata);
          siriClientMetadata = [(GEOABAssignmentResponse *)self->_experimentsInfo siriClientMetadata];
          [siriClientMetadata setClientDatasetMetadata:v20];

          v22 = objc_alloc_init(GEOPDABClientDatasetMetadata);
          rapClientMetadata = [(GEOABAssignmentResponse *)self->_experimentsInfo rapClientMetadata];
          [rapClientMetadata setClientDatasetMetadata:v22];
        }

        datasetId4 = [v5 datasetId];
        mapsAbClientMetadata3 = [(GEOABAssignmentResponse *)self->_experimentsInfo mapsAbClientMetadata];
        clientDatasetMetadata2 = [mapsAbClientMetadata3 clientDatasetMetadata];
        [clientDatasetMetadata2 setDatasetId:datasetId4];

        datasetId5 = [v5 datasetId];
        parsecClientMetadata2 = [(GEOABAssignmentResponse *)self->_experimentsInfo parsecClientMetadata];
        clientDatasetMetadata3 = [parsecClientMetadata2 clientDatasetMetadata];
        [clientDatasetMetadata3 setDatasetId:datasetId5];

        datasetId6 = [v5 datasetId];
        siriClientMetadata2 = [(GEOABAssignmentResponse *)self->_experimentsInfo siriClientMetadata];
        clientDatasetMetadata4 = [siriClientMetadata2 clientDatasetMetadata];
        [clientDatasetMetadata4 setDatasetId:datasetId6];

        datasetId7 = [v5 datasetId];
        rapClientMetadata2 = [(GEOABAssignmentResponse *)self->_experimentsInfo rapClientMetadata];
        clientDatasetMetadata5 = [rapClientMetadata2 clientDatasetMetadata];
        [clientDatasetMetadata5 setDatasetId:datasetId7];

        [(GEOExperimentServerLocalProxy *)self _writeExperimentInfoToDisk:self->_experimentsInfo];
        v36 = +[GEOResourceManifestManager modernManager];
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_100009814;
        v38[3] = &unk_100083EC0;
        v38[4] = self;
        [v36 updateManifest:v38];

        v37 = +[GEOPlaceDataLocalProxy shared];
        [v37 clearCache];
      }
    }

    os_unfair_lock_unlock(&self->_experimentsInfoLock);
  }
}

- (void)dealloc
{
  v6 = self->_taskIsolater;
  _geo_isolate_lock_data();
  GEOUnregisterStateCaptureLegacy();
  v3 = +[GEOResourceManifestManager modernManager];
  [v3 removeTileGroupObserver:self];

  if (self->_currentRequest)
  {
    v4 = +[_GEOExperimentServiceRequester sharedInstance];
    [v4 cancelRequest:self->_currentRequest];
  }

  _geo_isolate_unlock();

  v5.receiver = self;
  v5.super_class = GEOExperimentServerLocalProxy;
  [(GEOExperimentServerLocalProxy *)&v5 dealloc];
}

- (GEOExperimentServerLocalProxy)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = GEOExperimentServerLocalProxy;
  v5 = [(GEOExperimentServerLocalProxy *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v6->_experimentsInfoLock._os_unfair_lock_opaque = 0;
    v6->_currentRequestLock._os_unfair_lock_opaque = 0;
    v7 = geo_isolater_create();
    taskIsolater = v6->_taskIsolater;
    v6->_taskIsolater = v7;

    v9 = GEOExperimentConfigurationPath();
    v10 = [NSData dataWithContentsOfFile:v9];

    if ([v10 length])
    {
      v11 = [[GEOABAssignmentResponse alloc] initWithData:v10];
      experimentsInfo = v6->_experimentsInfo;
      v6->_experimentsInfo = v11;
    }

    v13 = dispatch_get_global_queue(21, 0);
    GEORegisterPListStateCaptureLegacy();

    repeatingTask = v6->_repeatingTask;
    v6->_repeatingTask = 0;

    v15 = v6;
  }

  return v6;
}

- (void)cancelRefreshTask
{
  if (sub_10001FD1C())
  {
    sharedScheduler = [sub_10001FF30() sharedScheduler];
    v3 = GEOExperimentServerLocalProxyBackgroundTaskIdentifier;
    v11 = 0;
    [sharedScheduler cancelTaskRequestWithIdentifier:GEOExperimentServerLocalProxyBackgroundTaskIdentifier error:&v11];
    v4 = v11;

    if (v4)
    {
      v5 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v13 = v3;
        v14 = 2112;
        v15 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Trouble cancelling %@ with error %@", buf, 0x16u);
      }
    }

    sharedScheduler2 = [sub_10001FF30() sharedScheduler];
    v7 = GEOExperimentServerLocalProxyBackgroundTaskRetryIdentifier;
    v10 = 0;
    [sharedScheduler2 cancelTaskRequestWithIdentifier:GEOExperimentServerLocalProxyBackgroundTaskRetryIdentifier error:&v10];
    v8 = v10;

    if (v8)
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v13 = v7;
        v14 = 2112;
        v15 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Trouble cancelling %@ with error %@", buf, 0x16u);
      }
    }
  }
}

+ (void)_deleteExperimentInfoFromDisk
{
  v3 = +[NSFileManager defaultManager];
  v2 = GEOExperimentConfigurationPath();
  [v3 removeItemAtPath:v2 error:0];
}

@end