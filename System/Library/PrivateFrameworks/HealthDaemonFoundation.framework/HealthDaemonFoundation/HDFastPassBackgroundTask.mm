@interface HDFastPassBackgroundTask
- (BGSystemTask)currentTask;
- (HDFastPassBackgroundTask)init;
- (HDFastPassBackgroundTask)initWithName:(id)a3 loggingCategory:(id)a4 scheduler:(id)a5 handler:(id)a6;
- (NSString)identifier;
- (id)handler;
- (void)addExpirationHandler:(id)a3;
- (void)setHandler:(id)a3;
- (void)setScheduler:(id)a3;
- (void)set_currentTask:(id)a3;
@end

@implementation HDFastPassBackgroundTask

- (NSString)identifier
{
  v2 = *(self + OBJC_IVAR___HDFastPassBackgroundTask_identifier);
  v3 = *(self + OBJC_IVAR___HDFastPassBackgroundTask_identifier + 8);

  v4 = sub_2515BB8DC();

  return v4;
}

- (void)set_currentTask:(id)a3
{
  v4 = *(self + OBJC_IVAR___HDFastPassBackgroundTask__currentTask);
  *(self + OBJC_IVAR___HDFastPassBackgroundTask__currentTask) = a3;
  v3 = a3;
}

- (id)handler
{
  v2 = *(self + OBJC_IVAR___HDFastPassBackgroundTask_handler + 8);
  v5[4] = *(self + OBJC_IVAR___HDFastPassBackgroundTask_handler);
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2515AF9F8;
  v5[3] = &block_descriptor_30;
  v3 = _Block_copy(v5);

  return v3;
}

- (void)setHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR___HDFastPassBackgroundTask_handler);
  v7 = *(self + OBJC_IVAR___HDFastPassBackgroundTask_handler + 8);
  *v6 = sub_2515B1688;
  v6[1] = v5;
}

- (void)setScheduler:(id)a3
{
  v4 = *(self + OBJC_IVAR___HDFastPassBackgroundTask_scheduler);
  *(self + OBJC_IVAR___HDFastPassBackgroundTask_scheduler) = a3;
  v3 = a3;
}

- (HDFastPassBackgroundTask)initWithName:(id)a3 loggingCategory:(id)a4 scheduler:(id)a5 handler:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = sub_2515BB8EC();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  return sub_2515AFC48(v9, v11, a4, a5, sub_2515B1570, v12);
}

- (void)addExpirationHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = self + OBJC_IVAR___HDFastPassBackgroundTask_state;
  _Block_copy(v4);
  v6 = self;
  os_unfair_lock_lock(v5);
  sub_2515B029C(v5 + 8, v6, v4);
  os_unfair_lock_unlock(v5);

  _Block_release(v4);
}

- (HDFastPassBackgroundTask)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BGSystemTask)currentTask
{
  v2 = [(HDFastPassBackgroundTask *)self _currentTask];

  return v2;
}

@end