@interface FAScreenTimeSettingsCacheOperation
+ (id)cacheQueue;
- (FAScreenTimeSettingsCacheOperation)initWithDSID:(id)d;
- (id)_cacheURL;
- (id)_cacheURLWithError:(id *)error;
- (id)_createCacheFile;
- (id)_fetchData:(id *)data;
- (id)_onQueue:(id)queue;
- (id)cacheScreenTimeSettingsObject:(id)object;
- (id)invalidate;
- (id)loadScreenTimeSettingsObject;
@end

@implementation FAScreenTimeSettingsCacheOperation

- (FAScreenTimeSettingsCacheOperation)initWithDSID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = FAScreenTimeSettingsCacheOperation;
  v6 = [(FAScreenTimeSettingsCacheOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dsid, d);
  }

  return v7;
}

+ (id)cacheQueue
{
  if (qword_1000B9928 != -1)
  {
    sub_1000780D8();
  }

  v3 = qword_1000B9920;

  return v3;
}

- (id)cacheScreenTimeSettingsObject:(id)object
{
  objectCopy = object;
  _createCacheFile = [(FAScreenTimeSettingsCacheOperation *)self _createCacheFile];
  v6 = [AAFPromise alloc];
  dataRepresentation = [objectCopy dataRepresentation];

  v8 = [v6 initWithValue:dataRepresentation];
  v14[0] = v8;
  v14[1] = _createCacheFile;
  v9 = [NSArray arrayWithObjects:v14 count:2];
  v10 = [AAFPromise all:v9];
  then = [v10 then];
  v12 = (then)[2](then, &stru_1000A65A0);

  return v12;
}

- (id)loadScreenTimeSettingsObject
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000B238;
  v4[3] = &unk_1000A6198;
  v4[4] = self;
  v2 = [[AAFPromise alloc] initWithBlock:v4];

  return v2;
}

- (id)invalidate
{
  _cacheURL = [(FAScreenTimeSettingsCacheOperation *)self _cacheURL];
  then = [_cacheURL then];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000B4CC;
  v7[3] = &unk_1000A65F0;
  v7[4] = self;
  v5 = (then)[2](then, v7);

  return v5;
}

- (id)_cacheURLWithError:(id *)error
{
  dsid = [(FAScreenTimeSettingsCacheOperation *)self dsid];

  if (dsid)
  {
    v6 = +[NSFileManager defaultManager];
    v17 = 0;
    v7 = [v6 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v17];
    v8 = v17;

    if (v8)
    {
      v9 = _FALogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100078318();
      }

      if (error)
      {
        v10 = v8;
        *error = v8;
      }
    }

    v11 = [v7 URLByAppendingPathComponent:@"com.apple.family/cachedObjects" isDirectory:1];
    dsid2 = [(FAScreenTimeSettingsCacheOperation *)self dsid];
    stringValue = [dsid2 stringValue];
    v14 = [v11 URLByAppendingPathComponent:stringValue isDirectory:0];
  }

  else if (error)
  {
    v15 = _FALogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10007838C();
    }

    [NSError fa_familyErrorWithCode:-1013];
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_fetchData:(id *)data
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10000B900;
  v13 = sub_10000B910;
  v14 = 0;
  cacheQueue = [objc_opt_class() cacheQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B918;
  block[3] = &unk_1000A6618;
  block[4] = self;
  block[5] = &v9;
  block[6] = data;
  dispatch_sync(cacheQueue, block);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)_cacheURL
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000BA70;
  v4[3] = &unk_1000A6198;
  v4[4] = self;
  v2 = [[AAFPromise alloc] initWithBlock:v4];

  return v2;
}

- (id)_createCacheFile
{
  _cacheURL = [(FAScreenTimeSettingsCacheOperation *)self _cacheURL];
  then = [_cacheURL then];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000BBB4;
  v7[3] = &unk_1000A65F0;
  v7[4] = self;
  v5 = (then)[2](then, v7);

  return v5;
}

- (id)_onQueue:(id)queue
{
  queueCopy = queue;
  v5 = [AAFPromise alloc];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000BE0C;
  v9[3] = &unk_1000A6668;
  v9[4] = self;
  v10 = queueCopy;
  v6 = queueCopy;
  v7 = [v5 initWithBlock:v9];

  return v7;
}

@end