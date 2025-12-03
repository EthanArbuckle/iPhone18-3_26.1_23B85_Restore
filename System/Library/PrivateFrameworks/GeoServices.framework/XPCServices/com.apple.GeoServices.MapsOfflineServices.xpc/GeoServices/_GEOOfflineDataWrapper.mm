@interface _GEOOfflineDataWrapper
- (BOOL)hasDataForKey:(id)key;
- (id)getDataFileURLSync:(id)sync sandboxExtensionOwner:(id *)owner;
- (id)getDataSync:(id)sync;
- (void)getAvailableRegionsWithCallback:(id)callback;
- (void)getDataAsync:(id)async callback:(id)callback;
- (void)getDataFileURLAsync:(id)async callback:(id)callback;
- (void)hasDataForKey:(id)key callback:(id)callback;
@end

@implementation _GEOOfflineDataWrapper

- (void)getAvailableRegionsWithCallback:(id)callback
{
  callbackCopy = callback;
  v4 = +[GEOOfflineDataAccess sharedInstance];
  qos_class_self();
  global_queue = geo_get_global_queue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000013D8;
  v7[3] = &unk_100008300;
  v8 = callbackCopy;
  v6 = callbackCopy;
  [v4 getFullyDownloadedRegionsWithCallbackQueue:global_queue callback:v7];
}

- (BOOL)hasDataForKey:(id)key
{
  keyCopy = key;
  v4 = [GEOOfflineDataKey alloc];
  layer = [keyCopy layer];
  serviceKey = [keyCopy serviceKey];

  v7 = [v4 initWithLayer:layer serviceKey:serviceKey];
  v8 = +[GEOOfflineDataAccess sharedInstance];
  LOBYTE(layer) = [v8 hasDataForKey:v7 error:0];

  return layer;
}

- (void)hasDataForKey:(id)key callback:(id)callback
{
  callbackCopy = callback;
  keyCopy = key;
  v7 = [GEOOfflineDataKey alloc];
  layer = [keyCopy layer];
  serviceKey = [keyCopy serviceKey];

  v10 = [v7 initWithLayer:layer serviceKey:serviceKey];
  v11 = +[GEOOfflineDataAccess sharedInstance];
  qos_class_self();
  global_queue = geo_get_global_queue();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100001918;
  v14[3] = &unk_100008270;
  v15 = callbackCopy;
  v13 = callbackCopy;
  [v11 hasDataForKey:v10 callbackQueue:global_queue callback:v14];
}

- (id)getDataFileURLSync:(id)sync sandboxExtensionOwner:(id *)owner
{
  syncCopy = sync;
  if ([syncCopy layer] == 12)
  {
    if (owner)
    {
      v6 = [GEOOfflineDataKey alloc];
      layer = [syncCopy layer];
      serviceKey = [syncCopy serviceKey];
      v9 = [v6 initWithLayer:layer serviceKey:serviceKey];

      v10 = +[GEOOfflineDataAccess sharedInstance];
      v23 = 0;
      v11 = [v10 dataForKey:v9 error:&v23];
      v12 = v23;

      if (v11)
      {
        fileURL = [v11 fileURL];
        if (fileURL)
        {
          v14 = fileURL;
          v15 = v11;
          *owner = v11;
          v16 = v14;
          v17 = v16;
LABEL_16:

          goto LABEL_17;
        }

        v21 = sub_1000014D8();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138477827;
          v25 = syncCopy;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Expected filesystem-backed data for key %{private}@", buf, 0xCu);
        }

        v16 = 0;
      }

      else
      {
        domain = [v12 domain];
        v19 = GEOErrorDomain();
        v20 = OS_LOG_TYPE_ERROR;
        if ([domain isEqual:v19])
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
          v25 = syncCopy;
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

- (void)getDataFileURLAsync:(id)async callback:(id)callback
{
  asyncCopy = async;
  callbackCopy = callback;
  if ([asyncCopy layer] == 12)
  {
    v7 = [GEOOfflineDataKey alloc];
    layer = [asyncCopy layer];
    serviceKey = [asyncCopy serviceKey];
    v10 = [v7 initWithLayer:layer serviceKey:serviceKey];

    v11 = +[GEOOfflineDataAccess sharedInstance];
    qos_class_self();
    global_queue = geo_get_global_queue();
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100001DBC;
    v15[3] = &unk_100008220;
    v16 = asyncCopy;
    v17 = callbackCopy;
    [v11 getDataForKey:v10 callbackQueue:global_queue callback:v15];

LABEL_3:
    goto LABEL_4;
  }

  if (callbackCopy)
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
      v19 = callbackCopy;
      dispatch_async(v14, block);

      v10 = v19;
      goto LABEL_3;
    }
  }

LABEL_4:
}

- (id)getDataSync:(id)sync
{
  syncCopy = sync;
  v4 = [GEOOfflineDataKey alloc];
  layer = [syncCopy layer];
  serviceKey = [syncCopy serviceKey];

  v7 = [v4 initWithLayer:layer serviceKey:serviceKey];
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

- (void)getDataAsync:(id)async callback:(id)callback
{
  asyncCopy = async;
  callbackCopy = callback;
  v7 = [GEOOfflineDataKey alloc];
  layer = [asyncCopy layer];
  serviceKey = [asyncCopy serviceKey];
  v10 = [v7 initWithLayer:layer serviceKey:serviceKey];

  v11 = +[GEOOfflineDataAccess sharedInstance];
  qos_class_self();
  global_queue = geo_get_global_queue();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100002204;
  v15[3] = &unk_100008220;
  v16 = asyncCopy;
  v17 = callbackCopy;
  v13 = callbackCopy;
  v14 = asyncCopy;
  [v11 getDataForKey:v10 callbackQueue:global_queue callback:v15];
}

@end