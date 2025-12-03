@interface DSNotificationController
- (DSNotificationController)init;
- (void)cancelNotificationIfNecessary;
@end

@implementation DSNotificationController

- (DSNotificationController)init
{
  *(&self->super.isa + OBJC_IVAR___DSNotificationController_activeNotification) = 0;
  *&self->activeNotification[OBJC_IVAR___DSNotificationController_delegate] = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for NotificationController();
  return [(DSNotificationController *)&v4 init];
}

- (void)cancelNotificationIfNecessary
{
  selfCopy = self;
  NotificationController.cancelNotificationIfNecessary()();
}

@end