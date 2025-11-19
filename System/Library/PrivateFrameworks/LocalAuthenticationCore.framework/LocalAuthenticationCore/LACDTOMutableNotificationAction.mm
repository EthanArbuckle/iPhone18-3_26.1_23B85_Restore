@interface LACDTOMutableNotificationAction
+ (id)doNotStartNewDelayAction;
+ (id)startNewDelayAction;
@end

@implementation LACDTOMutableNotificationAction

+ (id)doNotStartNewDelayAction
{
  v2 = [[a1 alloc] initWithIdentifier:@"com.apple.coreauthd.notifications.action.securityDelay.start" title:@"START_SECURITY_DELAY_ACTION" isTitleLocalized:0 isDestructive:0];

  return v2;
}

+ (id)startNewDelayAction
{
  v2 = [[a1 alloc] initWithIdentifier:@"com.apple.coreauthd.notifications.action.securityDelay.dismiss" title:@"NOT_NOW_ACTION" isTitleLocalized:0 isDestructive:1];

  return v2;
}

@end