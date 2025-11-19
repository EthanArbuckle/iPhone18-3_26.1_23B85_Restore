@interface CDPBroadcaster
+ (void)_broadcastNotificationName:(id)a3 userInfo:(id)a4;
- (CDPBroadcaster)init;
- (void)init;
- (void)sendNotification:(id)a3 userInfo:(id)a4;
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

  v5 = [MEMORY[0x277CCA9A0] defaultCenter];
  if (!v5)
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

  v6 = v5;
  objc_storeStrong(p_isa + 1, v5);

  v7 = p_isa;
LABEL_9:

  return v7;
}

- (void)sendNotification:(id)a3 userInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CDPBroadcaster *)self broadcaster];
  [v8 postNotificationName:v7 object:0 userInfo:v6 deliverImmediately:1];
}

+ (void)_broadcastNotificationName:(id)a3 userInfo:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Broadcasting notification: %{public}@, with userInfo: %{public}@", &v10, 0x16u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, v5, v6, 0, 1u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)init
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_1(&dword_24510B000, v4, v5, "[%{public}@ %{public}@]: Value for '%{public}s' was nil, failing init", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end