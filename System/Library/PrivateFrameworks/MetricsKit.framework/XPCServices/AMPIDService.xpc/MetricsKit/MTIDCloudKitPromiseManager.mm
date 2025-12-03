@interface MTIDCloudKitPromiseManager
- (MTIDCloudKitPromiseManager)initWithCallbackQueue:(id)queue;
- (id)waitForRecordToSync:(id)sync timeout:(double)timeout;
- (void)finishPromisesOfRecord:(id)record;
@end

@implementation MTIDCloudKitPromiseManager

- (MTIDCloudKitPromiseManager)initWithCallbackQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = MTIDCloudKitPromiseManager;
  v5 = [(MTIDCloudKitPromiseManager *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(MTIDCloudKitPromiseManager *)v5 setCallbackQueue:queueCopy];
    v7 = +[NSMutableDictionary dictionary];
    [(MTIDCloudKitPromiseManager *)v6 setDict:v7];
  }

  return v6;
}

- (id)waitForRecordToSync:(id)sync timeout:(double)timeout
{
  syncCopy = sync;
  if ([syncCopy mt_isSynchronized])
  {
    promise = [MTPromise promiseWithResult:syncCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    recordID = [syncCopy recordID];
    recordName = [recordID recordName];

    v10 = [MTPromiseWithTimeout alloc];
    callbackQueue = [(MTIDCloudKitPromiseManager *)self callbackQueue];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_10000FBC8;
    v22 = &unk_100020DC8;
    v23 = syncCopy;
    objc_copyWeak(&v25, &location);
    v12 = recordName;
    v24 = v12;
    v13 = [(MTPromiseWithTimeout *)v10 initWithTimeout:callbackQueue queue:&v19 timeoutBlock:timeout];

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v15 = [(MTIDCloudKitPromiseManager *)selfCopy dict:v19];
    v16 = [v15 objectForKeyedSubscript:v12];

    if (!v16)
    {
      v16 = +[NSMutableArray array];
      dict = [(MTIDCloudKitPromiseManager *)selfCopy dict];
      [dict setObject:v16 forKeyedSubscript:v12];
    }

    [v16 addObject:v13];

    objc_sync_exit(selfCopy);
    promise = [(MTPromiseWithTimeout *)v13 promise];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return promise;
}

- (void)finishPromisesOfRecord:(id)record
{
  recordCopy = record;
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  dict = [(MTIDCloudKitPromiseManager *)selfCopy dict];
  v9 = [dict objectForKeyedSubscript:recordName];

  if (v9)
  {
    dict2 = [(MTIDCloudKitPromiseManager *)selfCopy dict];
    [dict2 setObject:0 forKeyedSubscript:recordName];

    objc_sync_exit(selfCopy);
    callbackQueue = [(MTIDCloudKitPromiseManager *)selfCopy callbackQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000FE00;
    v12[3] = &unk_1000209E0;
    v13 = v9;
    v14 = recordCopy;
    dispatch_async(callbackQueue, v12);
  }

  else
  {
    objc_sync_exit(selfCopy);
  }
}

@end