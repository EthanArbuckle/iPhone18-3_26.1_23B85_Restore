@interface NotificationRelay
+ (id)sharedRelay;
- (NotificationRelay)init;
- (void)relayFrameworkNotification:(id)notification;
@end

@implementation NotificationRelay

+ (id)sharedRelay
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__NotificationRelay_sharedRelay__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedRelay_onceToken != -1)
  {
    dispatch_once(&sharedRelay_onceToken, block);
  }

  v2 = sharedRelay_sharedRelay;

  return v2;
}

uint64_t __32__NotificationRelay_sharedRelay__block_invoke(uint64_t result)
{
  if (!sharedRelay_sharedRelay)
  {
    v1 = objc_alloc_init(*(result + 32));
    v2 = sharedRelay_sharedRelay;
    sharedRelay_sharedRelay = v1;

    return MEMORY[0x1EEE66BB8](v1, v2);
  }

  return result;
}

- (NotificationRelay)init
{
  v7.receiver = self;
  v7.super_class = NotificationRelay;
  v2 = [(NotificationRelay *)&v7 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_relayFrameworkNotification_ name:@"com.apple.mobiletimer-framework.preferences-and-notifications-changed-externally" object:0];

    defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_relayFrameworkNotification_ name:@"com.apple.mobiletimer-framework.preferences-changed-externally" object:0];

    defaultCenter3 = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel_relayFrameworkNotification_ name:@"com.apple.mobiletimer-framework.local-notifications-changed-externally" object:0];
  }

  return v2;
}

- (void)relayFrameworkNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v15 = [userInfo objectForKey:@"bundleIdentifier"];

  name = [notificationCopy name];

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v9 = [v15 isEqualToString:bundleIdentifier];

  if (v9)
  {
    goto LABEL_13;
  }

  if ([name isEqualToString:@"com.apple.mobiletimer-framework.preferences-and-notifications-changed-externally"])
  {
    v10 = 1;
    v11 = @"com.apple.mobiletimer-framework.preferences-and-notifications-changed";
    v12 = 1;
LABEL_4:
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:v11 object:0];

    goto LABEL_11;
  }

  v12 = [name isEqualToString:@"com.apple.mobiletimer-framework.preferences-changed-externally"];
  v14 = [name isEqualToString:@"com.apple.mobiletimer-framework.local-notifications-changed-externally"];
  if (v12)
  {
    v11 = @"com.apple.mobiletimer-framework.preferences-changed";
  }

  else
  {
    v11 = @"com.apple.mobiletimer-framework.local-notifications-changed";
  }

  v10 = v12 ^ 1 | v14;
  if (v12 & 1) != 0 || (v14)
  {
    goto LABEL_4;
  }

  v10 = 0;
  v12 = 0;
LABEL_11:
  if ([(NotificationRelay *)self refreshManagers])
  {
    [(NotificationRelay *)self refreshManagersForPreferences:v12 localNotifications:v10 & 1];
  }

LABEL_13:
}

@end