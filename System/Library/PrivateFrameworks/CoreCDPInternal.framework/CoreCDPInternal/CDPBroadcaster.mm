@interface CDPBroadcaster
+ (void)_broadcastNotificationName:(id)name userInfo:(id)info;
- (CDPBroadcaster)init;
- (void)init;
- (void)sendNotification:(id)notification userInfo:(id)info;
@end

@implementation CDPBroadcaster

- (CDPBroadcaster)init
{
  v10.receiver = self;
  v10.super_class = CDPBroadcaster;
  v3 = [(CDPBroadcaster *)&v10 init];
  p_isa = &v3->super.isa;
  if (!v3)
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CDPBroadcaster *)a2 init];
    }

    goto LABEL_8;
  }

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  if (!defaultCenter)
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CDPBroadcaster *)p_isa init];
    }

LABEL_8:

    v7 = 0;
    goto LABEL_9;
  }

  v6 = defaultCenter;
  objc_storeStrong(p_isa + 1, defaultCenter);

  v7 = p_isa;
LABEL_9:

  return v7;
}

- (void)sendNotification:(id)notification userInfo:(id)info
{
  infoCopy = info;
  notificationCopy = notification;
  broadcaster = [(CDPBroadcaster *)self broadcaster];
  [broadcaster postNotificationName:notificationCopy object:0 userInfo:infoCopy deliverImmediately:1];
}

+ (void)_broadcastNotificationName:(id)name userInfo:(id)info
{
  v14 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  infoCopy = info;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = nameCopy;
    v12 = 2114;
    v13 = infoCopy;
    _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Broadcasting notification: %{public}@, with userInfo: %{public}@", &v10, 0x16u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, nameCopy, infoCopy, 0, 1u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)init
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = NSStringFromSelector(self);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_1(&dword_24510B000, v4, v5, "[%{public}@ %{public}@]: Value for '%{public}s' was nil, failing init", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end