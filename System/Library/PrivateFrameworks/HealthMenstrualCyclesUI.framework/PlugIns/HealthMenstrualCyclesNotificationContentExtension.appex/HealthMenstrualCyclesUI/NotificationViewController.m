@interface NotificationViewController
- (_TtC49HealthMenstrualCyclesNotificationContentExtension26NotificationViewController)initWithCoder:(id)a3;
- (_TtC49HealthMenstrualCyclesNotificationContentExtension26NotificationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didReceiveNotification:(id)a3;
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

  v3 = self;
  sub_1000012F0();
}

- (void)didReceiveNotification:(id)a3
{
  sub_100002B58();
  sub_100002B48();
  sub_100002B38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_1000014C8(v5);
}

- (_TtC49HealthMenstrualCyclesNotificationContentExtension26NotificationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_100002B58();
  sub_100002B48();
  sub_100002B38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    sub_100002AB8();
    v7 = a4;
    a3 = sub_100002A88();
  }

  else
  {
    v8 = a4;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for NotificationViewController();
  v9 = [(NotificationViewController *)&v11 initWithNibName:a3 bundle:a4];

  return v9;
}

- (_TtC49HealthMenstrualCyclesNotificationContentExtension26NotificationViewController)initWithCoder:(id)a3
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
  v5 = a3;
  v6 = [(NotificationViewController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end