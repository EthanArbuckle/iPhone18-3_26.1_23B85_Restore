@interface NotificationViewController
- (_TtC49HealthMenstrualCyclesNotificationContentExtension26NotificationViewController)initWithCoder:(id)coder;
- (_TtC49HealthMenstrualCyclesNotificationContentExtension26NotificationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didReceiveNotification:(id)notification;
- (void)viewDidLoad;
@end

@implementation NotificationViewController

- (void)viewDidLoad
{
  sub_100002B58();
  sub_100002B48();
  sub_100002B38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_1000012F0();
}

- (void)didReceiveNotification:(id)notification
{
  sub_100002B58();
  sub_100002B48();
  sub_100002B38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  notificationCopy = notification;
  selfCopy = self;
  sub_1000014C8(notificationCopy);
}

- (_TtC49HealthMenstrualCyclesNotificationContentExtension26NotificationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_100002B58();
  sub_100002B48();
  sub_100002B38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    sub_100002AB8();
    bundleCopy = bundle;
    name = sub_100002A88();
  }

  else
  {
    bundleCopy2 = bundle;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for NotificationViewController();
  v9 = [(NotificationViewController *)&v11 initWithNibName:name bundle:bundle];

  return v9;
}

- (_TtC49HealthMenstrualCyclesNotificationContentExtension26NotificationViewController)initWithCoder:(id)coder
{
  sub_100002B58();
  sub_100002B48();
  sub_100002B38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for NotificationViewController();
  coderCopy = coder;
  v6 = [(NotificationViewController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end