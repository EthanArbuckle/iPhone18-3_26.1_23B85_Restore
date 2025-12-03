@interface FMFGarbageCollector
- (void)scheduleAccountVerificationWithNotification:(id)notification;
@end

@implementation FMFGarbageCollector

- (void)scheduleAccountVerificationWithNotification:(id)notification
{
  notificationCopy = notification;

  sub_24A49BA0C(notificationCopy);
}

@end