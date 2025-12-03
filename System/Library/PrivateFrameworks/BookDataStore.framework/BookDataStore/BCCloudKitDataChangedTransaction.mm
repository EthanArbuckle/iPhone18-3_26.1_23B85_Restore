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
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
  verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v7 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      notificationName = [(BCCloudKitDataChangedTransaction *)self notificationName];
      *buf = 138543362;
      v22 = notificationName;
      _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "\\Transaction - posting notification %{public}@\\"", buf, 0xCu);
    }
  }

  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  notificationName2 = [(BCCloudKitDataChangedTransaction *)self notificationName];
  [defaultCenter postNotificationName:notificationName2 object:0];

  if (BDSXPCNotificationsEnabled())
  {
    v11 = BDSServiceXPCNotificationLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      notificationName3 = [(BCCloudKitDataChangedTransaction *)self notificationName];
      *buf = 138543362;
      v22 = notificationName3;
      _os_log_impl(&dword_1E45E0000, v11, OS_LOG_TYPE_DEFAULT, "posting BDSServiceNotificationName for %{public}@", buf, 0xCu);
    }

    notificationName4 = [(BCCloudKitDataChangedTransaction *)self notificationName];
    v20 = notificationName4;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"BDSServiceNotificationName" object:0 userInfo:v14];
  }

  v16 = _Block_copy(completionCopy);
  v17 = v16;
  if (v16)
  {
    (*(v16 + 2))(v16);
  }

  v18 = *MEMORY[0x1E69E9840];
}

@end