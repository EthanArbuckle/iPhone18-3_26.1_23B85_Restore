@interface NotificationViewController
- (_TtC45HealthMedicationsNotificationContentExtension26NotificationViewController)initWithCoder:(id)coder;
- (_TtC45HealthMedicationsNotificationContentExtension26NotificationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didReceiveNotification:(id)notification;
@end

@implementation NotificationViewController

- (_TtC45HealthMedicationsNotificationContentExtension26NotificationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_100006658();
  sub_100006648();
  sub_100006638();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    v6 = sub_1000065B8();
    name = v7;
  }

  else
  {
    v6 = 0;
  }

  bundleCopy = bundle;
  v9 = sub_100001B2C(v6, name, bundle);

  return v9;
}

- (_TtC45HealthMedicationsNotificationContentExtension26NotificationViewController)initWithCoder:(id)coder
{
  sub_100006658();
  sub_100006648();
  sub_100006638();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
  sub_100005E84();
}

- (void)didReceiveNotification:(id)notification
{
  sub_100006658();
  sub_100006648();
  sub_100006638();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  notificationCopy = notification;
  selfCopy = self;
  sub_100003DA0(notificationCopy);
}

@end