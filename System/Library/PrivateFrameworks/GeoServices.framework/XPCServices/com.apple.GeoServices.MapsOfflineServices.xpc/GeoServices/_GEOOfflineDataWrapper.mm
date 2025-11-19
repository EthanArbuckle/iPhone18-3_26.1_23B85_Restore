@interface _GEOOfflineDataWrapper
- (BOOL)hasDataForKey:(id)a3;
- (id)getDataFileURLSync:(id)a3 sandboxExtensionOwner:(id *)a4;
- (id)getDataSync:(id)a3;
- (void)getAvailableRegionsWithCallback:(id)a3;
- (void)getDataAsync:(id)a3 callback:(id)a4;
- (void)getDataFileURLAsync:(id)a3 callback:(id)a4;
- (void)hasDataForKey:(id)a3 callback:(id)a4;
@end

@implementation _GEOOfflineDataWrapper

- (void)getAvailableRegionsWithCallback:(id)a3
{
  v3 = a3;
  v4 = +[GEOOfflineDataAccess sharedInstance];
  qos_class_self();
  global_queue = geo_get_global_queue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000013D8;
  v7[3] = &unk_100008300;
  v8 = v3;
  v6 = v3;
  [v4 getFullyDownloadedRegionsWithCallbackQueue:global_queue callback:v7];
}

- (BOOL)hasDataForKey:(id)a3
{
  v3 = a3;
  v4 = [GEOOfflineDataKey alloc];
  v5 = [v3 layer];
  v6 = [v3 serviceKey];

  v7 = [v4 initWithLayer:v5 serviceKey:v6];
  v8 = +[GEOOfflineDataAccess sharedInstance];
  LOBYTE(v5) = [v8 hasDataForKey:v7 error:0];

  return v5;
}

- (void)hasDataForKey:(id)a3 callback:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [GEOOfflineDataKey alloc];
  v8 = [v6 layer];
  v9 = [v6 serviceKey];

  v10 = [v7 initWithLayer:v8 serviceKey:v9];
  v11 = +[GEOOfflineDataAccess sharedInstance];
  qos_class_self();
  global_queue = geo_get_global_queue();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100001918;
  v14[3] = &unk_100008270;
  v15 = v5;
  v13 = v5;
  [v11 hasDataForKey:v10 callbackQueue:global_queue callback:v14];
}

- (id)getDataFileURLSync:(id)a3 sandboxExtensionOwner:(id *)a4
{
  v5 = a3;
  if ([v5 layer] == 12)
  {
    if (a4)
    {
      v6 = [GEOOfflineDataKey alloc];
      v7 = [v5 layer];
      v8 = [v5 serviceKey];
      v9 = [v6 initWithLayer:v7 serviceKey:v8];

      v10 = +[GEOOfflineDataAccess sharedInstance];
      v23 = 0;
      v11 = [v10 dataForKey:v9 error:&v23];
      v12 = v23;

      if (v11)
      {
        v13 = [v11 fileURL];
        if (v13)
        {
          v14 = v13;
          v15 = v11;
          *a4 = v11;
          v16 = v14;
          v17 = v16;
LABEL_16:

          goto LABEL_17;
        }

        v21 = sub_1000014D8();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138477827;
          v25 = v5;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Expected filesystem-backed data for key %{private}@", buf, 0xCu);
        }

        v16 = 0;
      }

      else
      {
        v18 = [v12 domain];
        v19 = GEOErrorDomain();
        v20 = OS_LOG_TYPE_ERROR;
        if ([v18 isEqual:v19])
        {
          if ([v12 code] == -8)
          {
            v20 = OS_LOG_TYPE_DEBUG;
          }

          else
          {
            v20 = OS_LOG_TYPE_ERROR;
          }
        }

        v16 = sub_1000014D8();
        if (os_log_type_enabled(v16, v20))
        {
          *buf = 138478083;
          v25 = v5;
          v26 = 2114;
          v27 = v12;
          _os_log_impl(&_mh_execute_header, v16, v20, "Failed to fetch key %{private}@: %{public}@", buf, 0x16u);
        }
      }

      v17 = 0;
      goto LABEL_16;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: outSandboxExtensionOwner != ((void*)0)", buf, 2u);
    }
  }

  v17 = 0;
LABEL_17:

  return v17;
}

- (void)getDataFileURLAsync:(id)a3 callback:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 layer] == 12)
  {
    v7 = [GEOOfflineDataKey alloc];
    v8 = [v5 layer];
    v9 = [v5 serviceKey];
    v10 = [v7 initWithLayer:v8 serviceKey:v9];

    v11 = +[GEOOfflineDataAccess sharedInstance];
    qos_class_self();
    global_queue = geo_get_global_queue();
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100001DBC;
    v15[3] = &unk_100008220;
    v16 = v5;
    v17 = v6;
    [v11 getDataForKey:v10 callbackQueue:global_queue callback:v15];

LABEL_3:
    goto LABEL_4;
  }

  if (v6)
  {
    qos_class_self();
    v13 = geo_get_global_queue();

    if (v13)
    {
      qos_class_self();
      v14 = geo_get_global_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100001DA4;
      block[3] = &unk_100008248;
      v19 = v6;
      dispatch_async(v14, block);

      v10 = v19;
      goto LABEL_3;
    }
  }

LABEL_4:
}

- (id)getDataSync:(id)a3
{
  v3 = a3;
  v4 = [GEOOfflineDataKey alloc];
  v5 = [v3 layer];
  v6 = [v3 serviceKey];

  v7 = [v4 initWithLayer:v5 serviceKey:v6];
  v8 = +[GEOOfflineDataAccess sharedInstance];
  v15 = 0;
  v9 = [v8 dataForKey:v7 error:&v15];
  v10 = v15;

  if (v9)
  {
    v14 = v10;
    v11 = [v9 readDataWithOptions:1 error:&v14];
    v12 = v14;

    v10 = v12;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)getDataAsync:(id)a3 callback:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [GEOOfflineDataKey alloc];
  v8 = [v5 layer];
  v9 = [v5 serviceKey];
  v10 = [v7 initWithLayer:v8 serviceKey:v9];

  v11 = +[GEOOfflineDataAccess sharedInstance];
  qos_class_self();
  global_queue = geo_get_global_queue();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100002204;
  v15[3] = &unk_100008220;
  v16 = v5;
  v17 = v6;
  v13 = v6;
  v14 = v5;
  [v11 getDataForKey:v10 callbackQueue:global_queue callback:v15];
}

@end