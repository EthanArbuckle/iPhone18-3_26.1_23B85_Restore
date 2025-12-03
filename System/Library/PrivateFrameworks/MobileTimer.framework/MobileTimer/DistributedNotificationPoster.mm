@interface DistributedNotificationPoster
+ (void)postNotificationForUserPreferences:(BOOL)preferences localNotifications:(BOOL)notifications;
@end

@implementation DistributedNotificationPoster

+ (void)postNotificationForUserPreferences:(BOOL)preferences localNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  preferencesCopy = preferences;
  v14[1] = *MEMORY[0x1E69E9840];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (bundleIdentifier)
  {
    v13 = @"bundleIdentifier";
    v14[0] = bundleIdentifier;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    if (preferencesCopy)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (!notificationsCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  v8 = 0;
  if (!preferencesCopy)
  {
    goto LABEL_5;
  }

LABEL_6:
  v9 = @"com.apple.mobiletimer-framework.preferences-changed-externally";
  if (preferencesCopy && notificationsCopy)
  {
    v9 = @"com.apple.mobiletimer-framework.preferences-and-notifications-changed-externally";
  }

  if (preferencesCopy)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"com.apple.mobiletimer-framework.local-notifications-changed-externally";
  }

  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter postNotificationName:v10 object:0 userInfo:v8 deliverImmediately:1];

LABEL_12:
  v12 = *MEMORY[0x1E69E9840];
}

@end