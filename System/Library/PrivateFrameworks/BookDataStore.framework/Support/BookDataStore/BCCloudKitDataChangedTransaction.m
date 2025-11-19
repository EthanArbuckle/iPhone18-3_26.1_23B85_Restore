@interface BCCloudKitDataChangedTransaction
- (BCCloudKitDataChangedTransaction)initWithEntityName:(id)a3 notificationName:(id)a4 delegate:(id)a5;
- (void)performWorkWithCompletion:(id)a3;
@end

@implementation BCCloudKitDataChangedTransaction

- (BCCloudKitDataChangedTransaction)initWithEntityName:(id)a3 notificationName:(id)a4 delegate:(id)a5
{
  v8 = a4;
  v13.receiver = self;
  v13.super_class = BCCloudKitDataChangedTransaction;
  v9 = [(BCCloudKitTransaction *)&v13 initWithEntityName:a3 delegate:a5];
  if (v9)
  {
    v10 = [v8 copy];
    notificationName = v9->_notificationName;
    v9->_notificationName = v10;
  }

  return v9;
}

- (void)performWorkWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[BULogUtilities shared];
  v6 = [v5 verboseLoggingEnabled];

  if (v6)
  {
    v7 = sub_10000DB80();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(BCCloudKitDataChangedTransaction *)self notificationName];
      *buf = 138543362;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\Transaction - posting notification %{public}@\\"", buf, 0xCu);
    }
  }

  v9 = +[NSDistributedNotificationCenter defaultCenter];
  v10 = [(BCCloudKitDataChangedTransaction *)self notificationName];
  [v9 postNotificationName:v10 object:0];

  if (sub_10000CE34())
  {
    v11 = sub_100002614();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(BCCloudKitDataChangedTransaction *)self notificationName];
      *buf = 138543362;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "posting BDSServiceNotificationName for %{public}@", buf, 0xCu);
    }

    v13 = [(BCCloudKitDataChangedTransaction *)self notificationName];
    v19 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 postNotificationName:@"BDSServiceNotificationName" object:0 userInfo:v14];
  }

  v16 = objc_retainBlock(v4);
  v17 = v16;
  if (v16)
  {
    (*(v16 + 2))(v16);
  }
}

@end