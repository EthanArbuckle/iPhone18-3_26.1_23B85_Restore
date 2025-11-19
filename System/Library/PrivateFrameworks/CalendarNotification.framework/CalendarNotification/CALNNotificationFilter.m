@interface CALNNotificationFilter
+ (BOOL)shouldIgnoreNotificationForEvent:(id)a3;
@end

@implementation CALNNotificationFilter

+ (BOOL)shouldIgnoreNotificationForEvent:(id)a3
{
  v3 = [a3 junkStatus];
  if (v3 == 1)
  {
    v4 = +[CALNLogSubsystem alarmEngine];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [CALNNotificationFilter shouldIgnoreNotificationForEvent:v4];
    }
  }

  return v3 == 1;
}

@end