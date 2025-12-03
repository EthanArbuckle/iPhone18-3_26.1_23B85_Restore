@interface FindMyTheftAndLossReminderFactory
+ (void)reminderViewControllerForContext:(id)context actionHandler:(id)handler completion:(id)completion;
- (FindMyTheftAndLossReminderFactory)init;
@end

@implementation FindMyTheftAndLossReminderFactory

+ (void)reminderViewControllerForContext:(id)context actionHandler:(id)handler completion:(id)completion
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = _Block_copy(handler);
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  swift_getObjCClassMetadata();
  contextCopy = context;
  static FindMyTheftAndLossReminderFactory.reminderViewController(context:actionHandler:completion:)(contextCopy, sub_24B2CFEE8, v10, sub_24B2C6390, v11);
}

- (FindMyTheftAndLossReminderFactory)init
{
  v3.receiver = self;
  v3.super_class = FindMyTheftAndLossReminderFactory;
  return [(FindMyTheftAndLossReminderFactory *)&v3 init];
}

@end