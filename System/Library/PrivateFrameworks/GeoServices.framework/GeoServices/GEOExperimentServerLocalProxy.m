@interface GEOExperimentServerLocalProxy
+ (void)_deleteExperimentInfoFromDisk;
- (BOOL)_removeOldExperimentsInfoIfNecessary:(BOOL)a3;
- (GEOABAssignmentResponse)experimentsInfo;
- (GEOExperimentServerLocalProxy)initWithDelegate:(id)a3;
- (GEOExperimentServerProxyDelegate)delegate;
- (id)captureStatePlistWithHints:(os_state_hints_s *)a3;
- (id)fetchBucketIDWithError:(id *)a3;
- (void)_debug_fetchAllAvailableExperiments:(id)a3;
- (void)_debug_setActiveExperimentBranchDictionaryRepresentation:(id)a3;
- (void)_debug_setBucketIdDictionaryRepresentation:(id)a3;
- (void)_debug_setQuerySubstring:(id)a3 forExperimentType:(int64_t)a4 dispatcherRequestType:(int)a5;
- (void)_loadExperimentsConfiguration:(id)a3;
- (void)_notifyExperimentsInfoChanged:(id)a3 current:(id)a4;
- (void)_setupRefreshTask;
- (void)_submitNonRepeatingRetryTask:(double)a3;
- (void)_updateIfNecessary;
- (void)_writeExperimentInfoToDisk:(id)a3;
- (void)abAssignUUIDWithSyncCompletionHandler:(id)a3;
- (void)cancelRefreshTask;
- (void)dealloc;
- (void)fetchBucketID:(id)a3;
- (void)forceUpdate:(id)a3;
- (void)refreshDatasetABStatus:(id)a3;
- (void)resourceManifestManager:(id)a3 didChangeActiveTileGroup:(id)a4 fromOldTileGroup:(id)a5;
- (void)submitBackgroundTasksNeededDuringDaemonStart;
@end

@implementation GEOExperimentServerLocalProxy

- (GEOExperimentServerProxyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)resourceManifestManager:(id)a3 didChangeActiveTileGroup:(id)a4 fromOldTileGroup:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  experimentsInfo = self->_experimentsInfo;
  if (!experimentsInfo)
  {
    [(GEOExperimentServerLocalProxy *)self _removeOldExperimentsInfoIfNecessary:1];
LABEL_6:
    [(GEOExperimentServerLocalProxy *)self forceUpdate:0];
    goto LABEL_7;
  }

  v12 = [(GEOABAssignmentResponse *)experimentsInfo hasRefreshIntervalSeconds];
  if ([(GEOExperimentServerLocalProxy *)self _removeOldExperimentsInfoIfNecessary:1]|| !v12)
  {
    goto LABEL_6;
  }

LABEL_7:
  objc_autoreleasePoolPop(v10);
}

- (id)captureStatePlistWithHints:(os_state_hints_s *)a3
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

- (void)_debug_setBucketIdDictionaryRepresentation:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"bucketId"];
  if (v4)
  {
    v16 = v4;
    v5 = [v4 unsignedIntegerValue];
    os_unfair_lock_lock_with_options();
    v6 = [(GEOABAssignmentResponse *)self->_experimentsInfo mapsAbClientMetadata];
    v7 = [v6 clientDatasetMetadata];
    [v7 setBucketId:v5];

    v8 = [(GEOABAssignmentResponse *)self->_experimentsInfo parsecClientMetadata];
    v9 = [v8 clientDatasetMetadata];
    [v9 setBucketId:v5];

    v10 = [(GEOABAssignmentResponse *)self->_experimentsInfo siriClientMetadata];
    v11 = [v10 clientDatasetMetadata];
    [v11 setBucketId:v5];

    v12 = [(GEOABAssignmentResponse *)self->_experimentsInfo rapClientMetadata];
    v13 = [v12 clientDatasetMetadata];
    [v13 setBucketId:v5];

    [(GEOExperimentServerLocalProxy *)self _writeExperimentInfoToDisk:self->_experimentsInfo];
    os_unfair_lock_unlock(&self->_experimentsInfoLock);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v15 = [(GEOExperimentServerLocalProxy *)self experimentsInfo];
    [WeakRetained serverProxy:self didChangeExperimentsInfo:v15];

    notify_post("com.apple.GeoServices.experimentsChanged");
    v4 = v16;
  }
}

- (void)_debug_setActiveExperimentBranchDictionaryRepresentation:(id)a3
{
  v4 = GeoServicesConfig_DebugActiveExperimentBranch[1];
  GEOConfigSetDictionary();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [(GEOExperimentServerLocalProxy *)self experimentsInfo];
  [WeakRetained serverProxy:self didChangeExperimentsInfo:v6];

  notify_post("com.apple.GeoServices.experimentsChanged");
}

- (void)_debug_fetchAllAvailableExperiments:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(GEOABAssignmentRequest);
    v5 = [GEOPDClientMetadata alloc];
    v6 = +[GEOMapService sharedService];
    v7 = [v6 defaultTraits];
    v8 = [v5 initWithTraits:v7];
    [v4 setClientMetadata:v8];

    [v4 setRequestType:2];
    v9 = +[_GEOExperimentServiceRequester sharedInstance];
    v10 = +[GEOMapService sharedService];
    v11 = [v10 defaultTraits];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000720C;
    v12[3] = &unk_100081778;
    v13 = v3;
    [v9 startWithRequest:v4 traits:v11 completionHandler:v12];
  }
}

- (void)_loadExperimentsConfiguration:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = self->_currentRequest;
  v6 = objc_alloc_init(GEOABAssignmentRequest);
  v7 = [GEOPDClientMetadata alloc];
  v8 = +[GEOMapService sharedService];
  v9 = [v8 defaultTraits];
  v10 = [v7 initWithTraits:v9];
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
  v15 = [v14 defaultTraits];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000782C;
  v18[3] = &unk_100081750;
  v18[4] = self;
  v19 = v6;
  v20 = v4;
  v16 = v4;
  v17 = v6;
  [v13 startWithRequest:v17 traits:v15 completionHandler:v18];
}

- (void)submitBackgroundTasksNeededDuringDaemonStart
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v2, &location);
  geo_dispatch_async_qos();
  objc_destroyWeak(&v2);
  objc_destroyWeak(&location);
}

- (void)forceUpdate:(id)a3
{
  v4 = a3;
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
  v6 = v4;
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

- (void)_writeExperimentInfoToDisk:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  if (v3)
  {
    v5 = [v3 data];
    v6 = GEOExperimentConfigurationPath();
    v16 = 0;
    v7 = [v5 writeToFile:v6 options:268435457 error:&v16];
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
    v4 = [(GEOABAssignmentResponse *)self->_experimentsInfo sourceURL];
    if (v6 | v4)
    {
      v5 = [v6 isEqualToString:v4];
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

- (void)_notifyExperimentsInfoChanged:(id)a3 current:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [NSMutableDictionary dictionaryWithCapacity:2];
  v8 = sub_100001E24(v7);

  [v11 setObject:v8 forKeyedSubscript:NSKeyValueChangeOldKey];
  v9 = sub_100001E24(v6);

  [v11 setObject:v9 forKeyedSubscript:NSKeyValueChangeNewKey];
  v10 = +[NSNotificationCenter defaultCenter];
  [v10 postNotificationName:@"GEOExperimentInfoChangedInternalNotification" object:self userInfo:v11];
}

- (BOOL)_removeOldExperimentsInfoIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = GEOURLString();
  os_unfair_lock_lock_with_options();
  experimentsInfo = self->_experimentsInfo;
  if (!experimentsInfo)
  {
    os_unfair_lock_unlock(&self->_experimentsInfoLock);
    LOBYTE(v8) = 0;
    goto LABEL_24;
  }

  v7 = [(GEOABAssignmentResponse *)experimentsInfo sourceURL];
  if (v5 | v7)
  {
    v8 = [v5 isEqualToString:v7] ^ 1;
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
    if (v3)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v23 = [(GEOExperimentServerLocalProxy *)self experimentsInfo];
      [WeakRetained serverProxy:self didChangeExperimentsInfo:v23];
    }

    notify_post("com.apple.GeoServices.experimentsChanged");
    [(GEOExperimentServerLocalProxy *)self _notifyExperimentsInfoChanged:v13 current:v21];
  }

LABEL_24:
  return v8;
}

- (void)_debug_setQuerySubstring:(id)a3 forExperimentType:(int64_t)a4 dispatcherRequestType:(int)a5
{
  if (a4)
  {
    v6 = GeoServicesConfig_Experiment[1];
    _GEOSetQueryForExperimentType();
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = [(GEOExperimentServerLocalProxy *)self experimentsInfo];
    [WeakRetained serverProxy:self didChangeExperimentsInfo:v8];

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

- (void)_submitNonRepeatingRetryTask:(double)a3
{
  if (sub_10001FD1C())
  {
    v4 = [objc_alloc(sub_100020080()) initWithIdentifier:GEOExperimentServerLocalProxyBackgroundTaskRetryIdentifier];
    [v4 setTrySchedulingBefore:a3];
    v5 = [sub_10001FF30() sharedScheduler];
    v10 = 0;
    v6 = [v5 submitTaskRequest:v4 error:&v10];
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
      v5 = [(GEOABAssignmentResponse *)self->_experimentsInfo refreshIntervalSeconds];
      [(GEOABAssignmentResponse *)self->_experimentsInfo timestamp];
      v7 = v6;
      os_unfair_lock_unlock(&self->_experimentsInfoLock);
      v8 = GeoServicesConfig_ExperimentMaxRefreshInterval[1];
      GEOConfigGetDouble();
      v9 = GeoServicesConfig_ExperimentMinRefreshInterval[1];
      GEOConfigGetDouble();
      GEOConfigGetDouble();
      v10 = v5;
      if (v11 < v5)
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
        v31 = [sub_10001FF30() sharedScheduler];
        v32 = self->_repeatingTask;
        v36 = 0;
        v33 = [v31 submitTaskRequest:v32 error:&v36];
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

        v22 = [sub_10001FF30() sharedScheduler];
        v23 = self->_repeatingTask;
        v37 = 0;
        v24 = [v22 updateTaskRequest:v23 error:&v37];
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

- (id)fetchBucketIDWithError:(id *)a3
{
  os_unfair_lock_lock_with_options();
  v4 = [(GEOABAssignmentResponse *)self->_experimentsInfo mapsAbClientMetadata];
  v5 = [v4 clientDatasetMetadata];
  v6 = [v5 bucketId];

  os_unfair_lock_unlock(&self->_experimentsInfoLock);

  return [NSNumber numberWithUnsignedInt:v6];
}

- (void)fetchBucketID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(GEOABAssignmentResponse *)self->_experimentsInfo mapsAbClientMetadata];
  v6 = [v5 clientDatasetMetadata];
  v7 = [v6 bucketId];

  os_unfair_lock_unlock(&self->_experimentsInfoLock);
  v8 = [NSNumber numberWithUnsignedInt:v7];
  v4[2](v4, v8, 0);
}

- (void)abAssignUUIDWithSyncCompletionHandler:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v6 = sub_1000076C4();
    v4 = GeoServicesConfig_ExperimentsBucketGUIDTimestamp[1];
    GEOConfigGetDouble();
    v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v3[2](v3, v6, v5, 0);
  }
}

- (void)refreshDatasetABStatus:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 hasDatasetId])
  {
    os_unfair_lock_lock_with_options();
    v6 = [(GEOABAssignmentResponse *)self->_experimentsInfo mapsAbClientMetadata];
    v7 = [v6 clientDatasetMetadata];

    if (v7)
    {
      v8 = [v7 datasetId];
      if (v8 != [v5 datasetId])
      {
        v9 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 67240448;
          v40 = [v7 datasetId];
          v41 = 1026;
          v42 = [v5 datasetId];
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
          v17 = [(GEOABAssignmentResponse *)self->_experimentsInfo mapsAbClientMetadata];
          [v17 setClientDatasetMetadata:v16];

          v18 = objc_alloc_init(GEOPDABClientDatasetMetadata);
          v19 = [(GEOABAssignmentResponse *)self->_experimentsInfo parsecClientMetadata];
          [v19 setClientDatasetMetadata:v18];

          v20 = objc_alloc_init(GEOPDABClientDatasetMetadata);
          v21 = [(GEOABAssignmentResponse *)self->_experimentsInfo siriClientMetadata];
          [v21 setClientDatasetMetadata:v20];

          v22 = objc_alloc_init(GEOPDABClientDatasetMetadata);
          v23 = [(GEOABAssignmentResponse *)self->_experimentsInfo rapClientMetadata];
          [v23 setClientDatasetMetadata:v22];
        }

        v24 = [v5 datasetId];
        v25 = [(GEOABAssignmentResponse *)self->_experimentsInfo mapsAbClientMetadata];
        v26 = [v25 clientDatasetMetadata];
        [v26 setDatasetId:v24];

        v27 = [v5 datasetId];
        v28 = [(GEOABAssignmentResponse *)self->_experimentsInfo parsecClientMetadata];
        v29 = [v28 clientDatasetMetadata];
        [v29 setDatasetId:v27];

        v30 = [v5 datasetId];
        v31 = [(GEOABAssignmentResponse *)self->_experimentsInfo siriClientMetadata];
        v32 = [v31 clientDatasetMetadata];
        [v32 setDatasetId:v30];

        v33 = [v5 datasetId];
        v34 = [(GEOABAssignmentResponse *)self->_experimentsInfo rapClientMetadata];
        v35 = [v34 clientDatasetMetadata];
        [v35 setDatasetId:v33];

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

- (GEOExperimentServerLocalProxy)initWithDelegate:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = GEOExperimentServerLocalProxy;
  v5 = [(GEOExperimentServerLocalProxy *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
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
    v2 = [sub_10001FF30() sharedScheduler];
    v3 = GEOExperimentServerLocalProxyBackgroundTaskIdentifier;
    v11 = 0;
    [v2 cancelTaskRequestWithIdentifier:GEOExperimentServerLocalProxyBackgroundTaskIdentifier error:&v11];
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

    v6 = [sub_10001FF30() sharedScheduler];
    v7 = GEOExperimentServerLocalProxyBackgroundTaskRetryIdentifier;
    v10 = 0;
    [v6 cancelTaskRequestWithIdentifier:GEOExperimentServerLocalProxyBackgroundTaskRetryIdentifier error:&v10];
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