@interface FABroadcaster
+ (void)_broadcastNotificationName:(id)a3 userInfo:(id)a4;
@end

@implementation FABroadcaster

+ (void)_broadcastNotificationName:(id)a3 userInfo:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = _FALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "+[FABroadcaster _broadcastNotificationName:userInfo:]";
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_1B70B0000, v7, OS_LOG_TYPE_DEFAULT, "%s: %@", &v11, 0x16u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, v5, 0, 0, 1u);
  CFNotificationCenterPostNotification(DarwinNotifyCenter, v5, v6, 0, 1u);
  v9 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v9 postNotificationName:v5 object:0 userInfo:v6];

  v10 = *MEMORY[0x1E69E9840];
}

@end