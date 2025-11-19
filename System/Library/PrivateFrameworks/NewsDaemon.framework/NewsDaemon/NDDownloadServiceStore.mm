@interface NDDownloadServiceStore
- (NDDownloadLimits)lastKnownLimits;
- (NDDownloadServiceStore)initWithParentDirectory:(id)a3;
- (NSArray)lastKnownRequests;
- (id)_filePathForKey:(id)a3;
- (void)setLastKnownLimits:(id)a3;
- (void)setLastKnownRequests:(id)a3;
@end

@implementation NDDownloadServiceStore

- (NDDownloadServiceStore)initWithParentDirectory:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NDDownloadServiceStore;
  v5 = [(NDDownloadServiceStore *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    parentDirectory = v5->_parentDirectory;
    v5->_parentDirectory = v6;
  }

  return v5;
}

- (NSArray)lastKnownRequests
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(NDDownloadServiceStore *)self _filePathForKey:@"last-known-requests"];
  v5 = [NSData dataWithContentsOfFile:v4];

  if (v5)
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
    v19 = 0;
    v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v8 fromData:v6 error:&v19];
    v10 = v19;

    v11 = FCOfflineDownloadsLog;
    if (v9)
    {
      if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v21 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "successfully loaded last known requests from store: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_ERROR))
      {
        sub_100052DAC(v10, v11, v12, v13, v14, v15, v16, v17);
      }

      v9 = &__NSArray0__struct;
    }
  }

  else
  {
    v9 = sub_100007930();
  }

  objc_autoreleasePoolPop(v3);

  return v9;
}

- (void)setLastKnownRequests:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v21 = 0;
  v6 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v21];
  v7 = v21;
  v8 = v7;
  if (v6)
  {
    v9 = v6;
    v10 = [(NDDownloadServiceStore *)self _filePathForKey:@"last-known-requests"];
    v18 = v8;
    v11 = [v9 writeToFile:v10 options:1 error:&v18];
    v12 = v18;

    if (v11)
    {
      v13 = FCOfflineDownloadsLog;
      if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        v15 = [v4 count];
        *buf = 134217984;
        v23 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "successfully saved %lu last known requests to store", buf, 0xCu);
      }
    }

    else
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100007C2C;
      v16[3] = &unk_100071D20;
      v17 = v12;
      sub_100007C2C(v16);
    }
  }

  else
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100007BE0;
    v19[3] = &unk_100071D20;
    v12 = v7;
    v20 = v12;
    sub_100007BE0(v19);
    v9 = v20;
  }

  objc_autoreleasePoolPop(v5);
}

- (NDDownloadLimits)lastKnownLimits
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(NDDownloadServiceStore *)self _filePathForKey:@"last-known-limits"];
  v5 = [NSData dataWithContentsOfFile:v4];

  if (v5)
  {
    v6 = v5;
    v17 = 0;
    v7 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v17];
    v8 = v17;
    v9 = FCOfflineDownloadsLog;
    if (v7)
    {
      if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v19 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "successfully loaded last known limits from store: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_ERROR))
      {
        sub_100052E80(v8, v9, v10, v11, v12, v13, v14, v15);
      }

      v7 = +[NDDownloadLimits defaultLimits];
    }
  }

  else
  {
    v7 = sub_100007E2C();
  }

  objc_autoreleasePoolPop(v3);

  return v7;
}

- (void)setLastKnownLimits:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v20 = 0;
  v6 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v20];
  v7 = v20;
  v8 = v7;
  if (v6)
  {
    v9 = v6;
    v10 = [(NDDownloadServiceStore *)self _filePathForKey:@"last-known-limits"];
    v17 = v8;
    v11 = [v9 writeToFile:v10 options:1 error:&v17];
    v12 = v17;

    if (v11)
    {
      v13 = FCOfflineDownloadsLog;
      if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "successfully saved last known limits to store", v14, 2u);
      }
    }

    else
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000080F4;
      v15[3] = &unk_100071D20;
      v16 = v12;
      sub_1000080F4(v15);
    }
  }

  else
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000080A8;
    v18[3] = &unk_100071D20;
    v12 = v7;
    v19 = v12;
    sub_1000080A8(v18);
    v9 = v19;
  }

  objc_autoreleasePoolPop(v5);
}

- (id)_filePathForKey:(id)a3
{
  v4 = a3;
  v5 = [(NDDownloadServiceStore *)self parentDirectory];
  v6 = [v5 stringByAppendingPathComponent:v4];

  return v6;
}

@end