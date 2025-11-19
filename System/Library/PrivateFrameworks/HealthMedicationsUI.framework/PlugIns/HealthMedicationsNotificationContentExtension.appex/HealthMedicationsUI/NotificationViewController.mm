@interface NotificationViewController
- (_TtC45HealthMedicationsNotificationContentExtension26NotificationViewController)initWithCoder:(id)a3;
- (_TtC45HealthMedicationsNotificationContentExtension26NotificationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didReceiveNotification:(id)a3;
@end

@implementation NotificationViewController

- (_TtC45HealthMedicationsNotificationContentExtension26NotificationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_100006658();
  sub_100006648();
  sub_100006638();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    v6 = sub_1000065B8();
    a3 = v7;
  }

  else
  {
    v6 = 0;
  }

  v8 = a4;
  v9 = sub_100001B2C(v6, a3, a4);

  return v9;
}

- (_TtC45HealthMedicationsNotificationContentExtension26NotificationViewController)initWithCoder:(id)a3
{
  sub_100006658();
  sub_100006648();
  sub_100006638();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  sub_100005E84();
}

- (void)didReceiveNotification:(id)a3
{
  sub_100006658();
  sub_100006648();
  sub_100006638();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_100003DA0(v5);
}

@end