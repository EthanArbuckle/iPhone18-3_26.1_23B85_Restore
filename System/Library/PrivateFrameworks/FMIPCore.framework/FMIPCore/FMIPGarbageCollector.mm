@interface FMIPGarbageCollector
- (void)scheduleAccountVerificationWithNotification:(id)notification;
@end

@implementation FMIPGarbageCollector

- (void)scheduleAccountVerificationWithNotification:(id)notification
{
  notificationCopy = notification;

  sub_24A78E504(notificationCopy);
}

@end