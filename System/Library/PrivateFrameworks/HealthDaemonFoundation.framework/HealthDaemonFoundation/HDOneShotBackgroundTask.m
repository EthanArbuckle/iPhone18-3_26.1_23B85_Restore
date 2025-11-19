@interface HDOneShotBackgroundTask
- (BGSystemTask)currentTask;
- (BOOL)cancelRequestAndReturnError:(id *)a3;
- (BOOL)rescheduleWhileRunning;
- (BOOL)runImmediatelyAndReturnError:(id *)a3 completion:(id)a4;
- (BOOL)submitRequest:(id)a3 error:(id *)a4 completion:(id)a5;
- (BOOL)submitRequestWithMaximumDelay:(double)a3 error:(id *)a4 completion:(id)a5;
- (BOOL)submitRequestWithMaximumDelay:(double)a3 minimumDelay:(double)a4 error:(id *)a5 completion:(id)a6;
- (HDCoalescedTaskPoolQuota)quota;
- (HDOneShotBackgroundTask)init;
- (HDOneShotBackgroundTask)initWithDefaultRequest:(id)a3 loggingCategory:(id)a4 scheduler:(id)a5 handler:(id)a6;
- (HDOneShotBackgroundTask)initWithName:(id)a3 loggingCategory:(id)a4 scheduler:(id)a5 handler:(id)a6;
- (NSString)identifier;
- (id)handler;
- (void)addExpirationHandler:(id)a3;
- (void)launchTask;
- (void)setHandler:(id)a3;
- (void)setQuota:(id)a3;
- (void)setRescheduleWhileRunning:(BOOL)a3;
- (void)setScheduler:(id)a3;
- (void)set_currentTask:(id)a3;
@end

@implementation HDOneShotBackgroundTask

- (NSString)identifier
{
  v2 = *(self + OBJC_IVAR___HDOneShotBackgroundTask_identifier);
  v3 = *(self + OBJC_IVAR___HDOneShotBackgroundTask_identifier + 8);

  v4 = sub_2515BB8DC();

  return v4;
}

- (void)set_currentTask:(id)a3
{
  v4 = *(self + OBJC_IVAR___HDOneShotBackgroundTask__currentTask);
  *(self + OBJC_IVAR___HDOneShotBackgroundTask__currentTask) = a3;
  v3 = a3;
}

- (BOOL)rescheduleWhileRunning
{
  v3 = OBJC_IVAR___HDOneShotBackgroundTask_rescheduleWhileRunning;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRescheduleWhileRunning:(BOOL)a3
{
  v5 = OBJC_IVAR___HDOneShotBackgroundTask_rescheduleWhileRunning;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (HDCoalescedTaskPoolQuota)quota
{
  v3 = OBJC_IVAR___HDOneShotBackgroundTask_quota;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setQuota:(id)a3
{
  v5 = OBJC_IVAR___HDOneShotBackgroundTask_quota;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (id)handler
{
  v2 = *(self + OBJC_IVAR___HDOneShotBackgroundTask_handler + 8);
  v5[4] = *(self + OBJC_IVAR___HDOneShotBackgroundTask_handler);
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2515A9C50;
  v5[3] = &block_descriptor_71;
  v3 = _Block_copy(v5);

  return v3;
}

- (void)setHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR___HDOneShotBackgroundTask_handler);
  v7 = *(self + OBJC_IVAR___HDOneShotBackgroundTask_handler + 8);
  *v6 = sub_2515AF744;
  v6[1] = v5;
}

- (void)setScheduler:(id)a3
{
  v4 = *(self + OBJC_IVAR___HDOneShotBackgroundTask_scheduler);
  *(self + OBJC_IVAR___HDOneShotBackgroundTask_scheduler) = a3;
  v3 = a3;
}

- (HDOneShotBackgroundTask)initWithDefaultRequest:(id)a3 loggingCategory:(id)a4 scheduler:(id)a5 handler:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  return HDOneShotBackgroundTask.init(defaultRequest:loggingCategory:scheduler:handler:)(v11, v12, a5, sub_2515AF744, v10);
}

- (HDOneShotBackgroundTask)initWithName:(id)a3 loggingCategory:(id)a4 scheduler:(id)a5 handler:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = sub_2515BB8EC();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  v13 = a4;
  v14 = a5;
  return sub_2515AA72C(v9, v11, v13, a5, sub_2515AF418, v12);
}

- (BOOL)submitRequestWithMaximumDelay:(double)a3 error:(id *)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  v8[2] = v7;
  v9 = self;
  HDOneShotBackgroundTask.submitRequest(maximumDelay:completion:)(sub_2515AF748, v8, a3);

  return 1;
}

- (BOOL)submitRequestWithMaximumDelay:(double)a3 minimumDelay:(double)a4 error:(id *)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = (self + OBJC_IVAR___HDOneShotBackgroundTask_state);
  v12 = self;
  os_unfair_lock_lock(v11);
  sub_2515AAC74(&v11[2], v12, sub_2515AF748, v10, &v14, a4, a3);
  os_unfair_lock_unlock(v11);

  return 1;
}

- (BOOL)submitRequest:(id)a3 error:(id *)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  v8[2] = v7;
  v9 = (self + OBJC_IVAR___HDOneShotBackgroundTask_state);
  v10 = a3;
  v11 = self;
  os_unfair_lock_lock(v9);
  sub_2515ABC40(&v9[2], v11, sub_2515AF748, v8, v10, &v13);
  os_unfair_lock_unlock(v9);

  return 1;
}

- (BOOL)cancelRequestAndReturnError:(id *)a3
{
  v4 = self;
  HDOneShotBackgroundTask.cancelRequest()();

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
  v5 = self + OBJC_IVAR___HDOneShotBackgroundTask_state;
  _Block_copy(v4);
  v6 = self;
  os_unfair_lock_lock(v5);
  sub_2515ACA34(v5 + 8, v6, v4);
  os_unfair_lock_unlock(v5);

  _Block_release(v4);
}

- (BOOL)runImmediatelyAndReturnError:(id *)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = self;
  HDOneShotBackgroundTask.runImmediately(completion:)(sub_2515A86FC, v6);

  return 1;
}

- (void)launchTask
{
  v2 = self;
  sub_2515AD998();
}

- (HDOneShotBackgroundTask)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BGSystemTask)currentTask
{
  v2 = [(HDOneShotBackgroundTask *)self _currentTask];

  return v2;
}

@end