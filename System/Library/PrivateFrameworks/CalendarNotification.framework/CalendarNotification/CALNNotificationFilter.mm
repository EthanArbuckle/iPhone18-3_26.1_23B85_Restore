@interface CALNNotificationFilter
+ (BOOL)shouldIgnoreNotificationForEvent:(id)event;
@end

@implementation CALNNotificationFilter

+ (BOOL)shouldIgnoreNotificationForEvent:(id)event
{
  junkStatus = [event junkStatus];
  if (junkStatus == 1)
  {
    v4 = +[CALNLogSubsystem alarmEngine];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [CALNNotificationFilter shouldIgnoreNotificationForEvent:v4];
    }
  }

  return junkStatus == 1;
}

@end