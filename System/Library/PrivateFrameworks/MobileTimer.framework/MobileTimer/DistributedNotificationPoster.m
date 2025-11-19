@interface DistributedNotificationPoster
+ (void)postNotificationForUserPreferences:(BOOL)a3 localNotifications:(BOOL)a4;
@end

@implementation DistributedNotificationPoster

+ (void)postNotificationForUserPreferences:(BOOL)a3 localNotifications:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AAE8] mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    v13 = @"bundleIdentifier";
    v14[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (!v4)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  v8 = 0;
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_6:
  v9 = @"com.apple.mobiletimer-framework.preferences-changed-externally";
  if (v5 && v4)
  {
    v9 = @"com.apple.mobiletimer-framework.preferences-and-notifications-changed-externally";
  }

  if (v5)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"com.apple.mobiletimer-framework.local-notifications-changed-externally";
  }

  v11 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v11 postNotificationName:v10 object:0 userInfo:v8 deliverImmediately:1];

LABEL_12:
  v12 = *MEMORY[0x1E69E9840];
}

@end