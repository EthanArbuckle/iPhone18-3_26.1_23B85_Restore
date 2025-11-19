@interface FAScreenTimeSettingsCacheOperation
+ (id)cacheQueue;
- (FAScreenTimeSettingsCacheOperation)initWithDSID:(id)a3;
- (id)_cacheURL;
- (id)_cacheURLWithError:(id *)a3;
- (id)_createCacheFile;
- (id)_fetchData:(id *)a3;
- (id)_onQueue:(id)a3;
- (id)cacheScreenTimeSettingsObject:(id)a3;
- (id)invalidate;
- (id)loadScreenTimeSettingsObject;
@end

@implementation FAScreenTimeSettingsCacheOperation

- (FAScreenTimeSettingsCacheOperation)initWithDSID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FAScreenTimeSettingsCacheOperation;
  v6 = [(FAScreenTimeSettingsCacheOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dsid, a3);
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

- (id)cacheScreenTimeSettingsObject:(id)a3
{
  v4 = a3;
  v5 = [(FAScreenTimeSettingsCacheOperation *)self _createCacheFile];
  v6 = [AAFPromise alloc];
  v7 = [v4 dataRepresentation];

  v8 = [v6 initWithValue:v7];
  v14[0] = v8;
  v14[1] = v5;
  v9 = [NSArray arrayWithObjects:v14 count:2];
  v10 = [AAFPromise all:v9];
  v11 = [v10 then];
  v12 = (v11)[2](v11, &stru_1000A65A0);

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
  v3 = [(FAScreenTimeSettingsCacheOperation *)self _cacheURL];
  v4 = [v3 then];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000B4CC;
  v7[3] = &unk_1000A65F0;
  v7[4] = self;
  v5 = (v4)[2](v4, v7);

  return v5;
}

- (id)_cacheURLWithError:(id *)a3
{
  v5 = [(FAScreenTimeSettingsCacheOperation *)self dsid];

  if (v5)
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

      if (a3)
      {
        v10 = v8;
        *a3 = v8;
      }
    }

    v11 = [v7 URLByAppendingPathComponent:@"com.apple.family/cachedObjects" isDirectory:1];
    v12 = [(FAScreenTimeSettingsCacheOperation *)self dsid];
    v13 = [v12 stringValue];
    v14 = [v11 URLByAppendingPathComponent:v13 isDirectory:0];
  }

  else if (a3)
  {
    v15 = _FALogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10007838C();
    }

    [NSError fa_familyErrorWithCode:-1013];
    *a3 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_fetchData:(id *)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10000B900;
  v13 = sub_10000B910;
  v14 = 0;
  v5 = [objc_opt_class() cacheQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B918;
  block[3] = &unk_1000A6618;
  block[4] = self;
  block[5] = &v9;
  block[6] = a3;
  dispatch_sync(v5, block);

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
  v3 = [(FAScreenTimeSettingsCacheOperation *)self _cacheURL];
  v4 = [v3 then];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000BBB4;
  v7[3] = &unk_1000A65F0;
  v7[4] = self;
  v5 = (v4)[2](v4, v7);

  return v5;
}

- (id)_onQueue:(id)a3
{
  v4 = a3;
  v5 = [AAFPromise alloc];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000BE0C;
  v9[3] = &unk_1000A6668;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 initWithBlock:v9];

  return v7;
}

@end