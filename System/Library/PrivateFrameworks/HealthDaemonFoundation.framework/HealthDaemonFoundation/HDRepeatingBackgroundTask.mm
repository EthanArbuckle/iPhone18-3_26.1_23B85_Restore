@interface HDRepeatingBackgroundTask
+ (void)registerDisabledTaskWithName:(id)a3 scheduler:(id)a4 loggingCategory:(id)a5;
- (BGSystemTask)currentTask;
- (BOOL)cancelRequestAndReturnError:(id *)a3;
- (HDBackgroundTaskCondition)condition;
- (HDRepeatingBackgroundTask)init;
- (HDRepeatingBackgroundTask)initWithName:(id)a3 loggingCategory:(id)a4 scheduler:(id)a5 handler:(id)a6 condition:(id)a7;
- (NSString)identifier;
- (double)minimumRetryInterval;
- (id)getRequest;
- (id)handler;
- (unsigned)errorCount;
- (void)addExpirationHandler:(id)a3;
- (void)setCondition:(id)a3;
- (void)setDispatchQueue:(id)a3;
- (void)setHandler:(id)a3;
- (void)setMinimumRetryInterval:(double)a3;
- (void)setScheduler:(id)a3;
- (void)set_currentTask:(id)a3;
@end

@implementation HDRepeatingBackgroundTask

- (NSString)identifier
{
  v2 = *(self + OBJC_IVAR___HDRepeatingBackgroundTask_identifier);
  v3 = *(self + OBJC_IVAR___HDRepeatingBackgroundTask_identifier + 8);

  v4 = sub_2515BB8DC();

  return v4;
}

- (void)set_currentTask:(id)a3
{
  v4 = *(self + OBJC_IVAR___HDRepeatingBackgroundTask__currentTask);
  *(self + OBJC_IVAR___HDRepeatingBackgroundTask__currentTask) = a3;
  v3 = a3;
}

- (double)minimumRetryInterval
{
  v3 = OBJC_IVAR___HDRepeatingBackgroundTask_minimumRetryInterval;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMinimumRetryInterval:(double)a3
{
  v5 = OBJC_IVAR___HDRepeatingBackgroundTask_minimumRetryInterval;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unsigned)errorCount
{
  v2 = (self + OBJC_IVAR___HDRepeatingBackgroundTask_state);
  v3 = self;
  os_unfair_lock_lock(v2);
  os_unfair_lock_opaque = v2[6]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v2);

  return os_unfair_lock_opaque;
}

- (id)handler
{
  v2 = *(self + OBJC_IVAR___HDRepeatingBackgroundTask_handler + 8);
  v5[4] = *(self + OBJC_IVAR___HDRepeatingBackgroundTask_handler);
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2515A4968;
  v5[3] = &block_descriptor_31;
  v3 = _Block_copy(v5);

  return v3;
}

- (void)setHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR___HDRepeatingBackgroundTask_handler);
  v7 = *(self + OBJC_IVAR___HDRepeatingBackgroundTask_handler + 8);
  *v6 = sub_2515A89A4;
  v6[1] = v5;
}

- (void)setScheduler:(id)a3
{
  v4 = *(self + OBJC_IVAR___HDRepeatingBackgroundTask_scheduler);
  *(self + OBJC_IVAR___HDRepeatingBackgroundTask_scheduler) = a3;
  v3 = a3;
}

- (HDBackgroundTaskCondition)condition
{
  v2 = *(self + OBJC_IVAR___HDRepeatingBackgroundTask_condition);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)setCondition:(id)a3
{
  v3 = *(self + OBJC_IVAR___HDRepeatingBackgroundTask_condition);
  *(self + OBJC_IVAR___HDRepeatingBackgroundTask_condition) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setDispatchQueue:(id)a3
{
  v4 = *(self + OBJC_IVAR___HDRepeatingBackgroundTask_dispatchQueue);
  *(self + OBJC_IVAR___HDRepeatingBackgroundTask_dispatchQueue) = a3;
  v3 = a3;
}

- (HDRepeatingBackgroundTask)initWithName:(id)a3 loggingCategory:(id)a4 scheduler:(id)a5 handler:(id)a6 condition:(id)a7
{
  v10 = _Block_copy(a6);
  v11 = sub_2515BB8EC();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = a4;
  v16 = a5;
  swift_unknownObjectRetain();
  return HDRepeatingBackgroundTask.init(name:loggingCategory:scheduler:handler:condition:)(v11, v13, v15, a5, sub_2515A82AC, v14, a7);
}

+ (void)registerDisabledTaskWithName:(id)a3 scheduler:(id)a4 loggingCategory:(id)a5
{
  v8 = sub_2515BB8EC();
  v10 = v9;
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = v8;
  v11[4] = v10;
  v16[4] = sub_2515A89A8;
  v16[5] = v11;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_2515A5914;
  v16[3] = &block_descriptor_38;
  v12 = _Block_copy(v16);
  v13 = a5;
  v14 = a3;
  v15 = a4;

  [v15 registerForTaskWithIdentifier:v14 usingQueue:0 launchHandler:v12];

  _Block_release(v12);
}

- (id)getRequest
{
  v2 = self;
  v3 = HDRepeatingBackgroundTask.getRequest()();

  return v3;
}

- (BOOL)cancelRequestAndReturnError:(id *)a3
{
  v4 = self;
  HDRepeatingBackgroundTask.cancelRequest()();

  if (v5)
  {
    if (a3)
    {
      v6 = sub_2515BB84C();

      v7 = v6;
      *a3 = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

- (void)addExpirationHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = self + OBJC_IVAR___HDRepeatingBackgroundTask_state;
  _Block_copy(v4);
  v6 = self;
  os_unfair_lock_lock(v5);
  sub_2515A6480(v5 + 8, v6, v4);
  os_unfair_lock_unlock(v5);

  _Block_release(v4);
}

- (HDRepeatingBackgroundTask)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BGSystemTask)currentTask
{
  v2 = [(HDRepeatingBackgroundTask *)self _currentTask];

  return v2;
}

@end