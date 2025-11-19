@interface FindMyTheftAndLossReminderFactory
+ (void)reminderViewControllerForContext:(id)a3 actionHandler:(id)a4 completion:(id)a5;
- (FindMyTheftAndLossReminderFactory)init;
@end

@implementation FindMyTheftAndLossReminderFactory

+ (void)reminderViewControllerForContext:(id)a3 actionHandler:(id)a4 completion:(id)a5
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = _Block_copy(a4);
  v9 = _Block_copy(a5);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  swift_getObjCClassMetadata();
  v12 = a3;
  static FindMyTheftAndLossReminderFactory.reminderViewController(context:actionHandler:completion:)(v12, sub_24B2CFEE8, v10, sub_24B2C6390, v11);
}

- (FindMyTheftAndLossReminderFactory)init
{
  v3.receiver = self;
  v3.super_class = FindMyTheftAndLossReminderFactory;
  return [(FindMyTheftAndLossReminderFactory *)&v3 init];
}

@end