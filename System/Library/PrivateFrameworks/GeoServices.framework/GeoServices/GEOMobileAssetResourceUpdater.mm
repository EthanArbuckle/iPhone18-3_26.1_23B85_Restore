@interface GEOMobileAssetResourceUpdater
+ (id)sharedUpdater;
+ (void)run;
+ (void)submitBackgroundTasksNeededDuringDaemonStart;
- (id)initInternal;
- (void)_fetchAssets;
- (void)_processResources:(id)a3 group:(id)a4;
- (void)_pruneOldResourcesIn:(id)a3;
- (void)_update:(id)a3;
- (void)_updateComplete;
- (void)_updateOnQueue;
@end

@implementation GEOMobileAssetResourceUpdater

- (void)_pruneOldResourcesIn:(id)a3
{
  v3 = a3;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v35;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v34 + 1) + 8 * i);
        if (([v9 state] & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          if (!v6)
          {
            v6 = +[NSMutableArray array];
          }

          [v6 addObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v10 = [v6 lastObject];
  v11 = [v10 resourceInfo];
  v12 = [v11 policy];

  v27 = v10;
  v28 = v3;
  if ((v12 - 2) >= 2)
  {
    if (v12 != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v13 = [v10 resourceInfo];
  v14 = [v13 isExpired];

  if ((v14 & 1) == 0)
  {
LABEL_18:
    [v6 removeLastObject];
  }

LABEL_19:
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v31;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v30 + 1) + 8 * j);
        v21 = sub_100020BFC();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v39 = v20;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Will delete old resource %@", buf, 0xCu);
        }

        v29 = 0;
        v22 = [v20 remove:&v29];
        v23 = v29;
        v24 = v23;
        if (v22)
        {
          v25 = v23 == 0;
        }

        else
        {
          v25 = 0;
        }

        if (!v25)
        {
          v26 = sub_100020BFC();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v39 = v20;
            v40 = 2112;
            v41 = v24;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Unable to delete old resource %@: %@", buf, 0x16u);
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v17);
  }
}

- (void)_processResources:(id)a3 group:(id)a4
{
  v6 = a4;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001A99C;
  v19[3] = &unk_100083A30;
  v7 = [a3 mutableCopy];
  v20 = v7;
  v21 = self;
  v8 = v6;
  v22 = v8;
  v9 = objc_retainBlock(v19);
  v10 = [v7 lastObject];
  if (([v10 state] | 4) == 4)
  {
    goto LABEL_2;
  }

  v11 = [v10 resourceInfo];
  v12 = [v11 policy];

  if ((v12 - 2) >= 2)
  {
    if (v12 != 4)
    {
LABEL_8:
      updateWorkQueue = self->_updateWorkQueue;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10001A9E4;
      v16[3] = &unk_100082CC8;
      v17 = v10;
      v18 = v9;
      [v17 downloadWithOptions:0 queue:updateWorkQueue completion:v16];

      goto LABEL_3;
    }
  }

  else
  {
    v13 = [v10 resourceInfo];
    v14 = [v13 isExpired];

    if (!v14)
    {
      goto LABEL_8;
    }
  }

LABEL_2:
  (v9[2])(v9);
LABEL_3:
}

- (void)_fetchAssets
{
  v3 = dispatch_group_create();
  sub_100038C98();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v19 = 0u;
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        dispatch_group_enter(v3);
        updateWorkQueue = self->_updateWorkQueue;
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_10001ACB0;
        v13[3] = &unk_100081D20;
        v13[4] = v8;
        v14 = v3;
        v15 = self;
        [v8 listResources:1 queue:updateWorkQueue results:v13];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v10 = self->_updateWorkQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001ADCC;
  block[3] = &unk_1000838C8;
  block[4] = self;
  dispatch_group_notify(v3, v10, block);
}

- (void)_updateComplete
{
  v3 = sub_100020BFC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Update complete", v5, 2u);
  }

  self->_running = 0;
  v4 = GeoServicesConfig_MobileAssetUpdateStartedAt[1];
  _GEOConfigRemoveValue();
}

- (void)_updateOnQueue
{
  if (self->_running)
  {
    v2 = sub_100020BFC();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Already running, will not start again", buf, 2u);
    }
  }

  else
  {
    self->_running = 1;
    GEOGetMonotonicTime();
    v4 = GeoServicesConfig_MobileAssetUpdateStartedAt[1];
    GEOConfigSetDouble();
    v5 = sub_100020BFC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Fetching MA catalog", buf, 2u);
    }

    v2 = objc_alloc_init(sub_100023640());
    [v2 setAllowsCellularAccess:0];
    [v2 setAllowsExpensiveAccess:0];
    [v2 setDiscretionary:1];
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v6 = qword_100096028;
    v17 = qword_100096028;
    if (!qword_100096028)
    {
      *buf = _NSConcreteStackBlock;
      v10 = 3221225472;
      v11 = sub_100023560;
      v12 = &unk_1000830D0;
      v13 = &v14;
      sub_100023560(buf);
      v6 = v15[3];
    }

    v7 = v6;
    _Block_object_dispose(&v14, 8);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001B06C;
    v8[3] = &unk_100081CF8;
    v8[4] = self;
    [v7 startCatalogDownload:@"com.apple.MobileAsset.GeoPolygonDataAssets" options:v2 then:v8];
  }
}

- (void)_update:(id)a3
{
  v4 = a3;
  updateWorkQueue = self->_updateWorkQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001B21C;
  v7[3] = &unk_100083940;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(updateWorkQueue, v7);
}

- (id)initInternal
{
  v12.receiver = self;
  v12.super_class = GEOMobileAssetResourceUpdater;
  v2 = [(GEOMobileAssetResourceUpdater *)&v12 init];
  if (v2)
  {
    v3 = geo_dispatch_queue_create_with_workloop_qos();
    updateWorkQueue = v2->_updateWorkQueue;
    v2->_updateWorkQueue = v3;

    v5 = GeoServicesConfig_MobileAssetUpdateStartedAt[1];
    GEOConfigGetDouble();
    if (v6 > 0.0)
    {
      v7 = v6;
      GEOGetMonotonicTime();
      if (v7 < v8)
      {
        v9 = sub_100020BFC();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Was updating when geod quit, re-starting update", v11, 2u);
        }

        [(GEOMobileAssetResourceUpdater *)v2 _update:0];
      }
    }
  }

  return v2;
}

+ (void)run
{
  v2 = [a1 sharedUpdater];
  [v2 _update:0];
}

+ (void)submitBackgroundTasksNeededDuringDaemonStart
{
  if (sub_10001FD1C())
  {
    v2 = [sub_10001FF30() sharedScheduler];
    v3 = GEOMobileAssetResourceUpdaterTaskIdentifier;
    v4 = [v2 taskRequestForIdentifier:GEOMobileAssetResourceUpdaterTaskIdentifier];
    if (v4)
    {
      v5 = sub_100020BFC();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v15 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "MobileAsset background task is already scheduled (%{public}@)", buf, 0xCu);
      }
    }

    else
    {
      v5 = [objc_alloc(sub_1000201D0()) initWithIdentifier:v3];
      v6 = GeoServicesConfig_MobileAssetUpdateInterval[1];
      GEOConfigGetDouble();
      v8 = v7;
      if (v7 <= 0x3840)
      {
        v8 = 14400;
      }

      if (v8 >= 0x278D00)
      {
        v8 = 2592000;
      }

      [v5 setInterval:v8];
      [v5 setPriority:1];
      [v5 setRequiresExternalPower:1];
      [v5 setRequiresNetworkConnectivity:1];
      [v5 setRequiresInexpensiveNetworkConnectivity:1];
      [v5 setNetworkDownloadSize:10485760];
      v13 = 0;
      v9 = [v2 submitTaskRequest:v5 error:&v13];
      v10 = v13;
      if ((v9 & 1) == 0)
      {
        v11 = sub_100020BFC();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = @"Unknown";
          if (v10)
          {
            v12 = v10;
          }

          *buf = 138412290;
          v15 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to submit repeating task with error: %@", buf, 0xCu);
        }
      }
    }
  }
}

+ (id)sharedUpdater
{
  if (qword_100095FD8 != -1)
  {
    dispatch_once(&qword_100095FD8, &stru_100081CD0);
  }

  v3 = qword_100095FD0;

  return v3;
}

@end