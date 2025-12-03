@interface BCCloudKitDataChangedTransaction
- (BCCloudKitDataChangedTransaction)initWithEntityName:(id)name notificationName:(id)notificationName delegate:(id)delegate;
- (void)performWorkWithCompletion:(id)completion;
@end

@implementation BCCloudKitDataChangedTransaction

- (BCCloudKitDataChangedTransaction)initWithEntityName:(id)name notificationName:(id)notificationName delegate:(id)delegate
{
  notificationNameCopy = notificationName;
  v13.receiver = self;
  v13.super_class = BCCloudKitDataChangedTransaction;
  v9 = [(BCCloudKitTransaction *)&v13 initWithEntityName:name delegate:delegate];
  if (v9)
  {
    v10 = [notificationNameCopy copy];
    notificationName = v9->_notificationName;
    v9->_notificationName = v10;
  }

  return v9;
}

- (void)performWorkWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[BULogUtilities shared];
  verboseLoggingEnabled = [v5 verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v7 = sub_10000DB80();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      notificationName = [(BCCloudKitDataChangedTransaction *)self notificationName];
      *buf = 138543362;
      v21 = notificationName;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\Transaction - posting notification %{public}@\\"", buf, 0xCu);
    }
  }

  v9 = +[NSDistributedNotificationCenter defaultCenter];
  notificationName2 = [(BCCloudKitDataChangedTransaction *)self notificationName];
  [v9 postNotificationName:notificationName2 object:0];

  if (sub_10000CE34())
  {
    v11 = sub_100002614();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      notificationName3 = [(BCCloudKitDataChangedTransaction *)self notificationName];
      *buf = 138543362;
      v21 = notificationName3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "posting BDSServiceNotificationName for %{public}@", buf, 0xCu);
    }

    notificationName4 = [(BCCloudKitDataChangedTransaction *)self notificationName];
    v19 = notificationName4;
    v14 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 postNotificationName:@"BDSServiceNotificationName" object:0 userInfo:v14];
  }

  v16 = objc_retainBlock(completionCopy);
  v17 = v16;
  if (v16)
  {
    (*(v16 + 2))(v16);
  }
}

@end