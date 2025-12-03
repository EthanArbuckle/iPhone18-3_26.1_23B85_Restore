@interface HDOneShotBackgroundTask
- (BGSystemTask)currentTask;
- (BOOL)cancelRequestAndReturnError:(id *)error;
- (BOOL)rescheduleWhileRunning;
- (BOOL)runImmediatelyAndReturnError:(id *)error completion:(id)completion;
- (BOOL)submitRequest:(id)request error:(id *)error completion:(id)completion;
- (BOOL)submitRequestWithMaximumDelay:(double)delay error:(id *)error completion:(id)completion;
- (BOOL)submitRequestWithMaximumDelay:(double)delay minimumDelay:(double)minimumDelay error:(id *)error completion:(id)completion;
- (HDCoalescedTaskPoolQuota)quota;
- (HDOneShotBackgroundTask)init;
- (HDOneShotBackgroundTask)initWithDefaultRequest:(id)request loggingCategory:(id)category scheduler:(id)scheduler handler:(id)handler;
- (HDOneShotBackgroundTask)initWithName:(id)name loggingCategory:(id)category scheduler:(id)scheduler handler:(id)handler;
- (NSString)identifier;
- (id)handler;
- (void)addExpirationHandler:(id)handler;
- (void)launchTask;
- (void)setHandler:(id)handler;
- (void)setQuota:(id)quota;
- (void)setRescheduleWhileRunning:(BOOL)running;
- (void)setScheduler:(id)scheduler;
- (void)set_currentTask:(id)task;
@end

@implementation HDOneShotBackgroundTask

- (NSString)identifier
{
  v2 = *(self + OBJC_IVAR___HDOneShotBackgroundTask_identifier);
  v3 = *(self + OBJC_IVAR___HDOneShotBackgroundTask_identifier + 8);

  v4 = sub_2515BB8DC();

  return v4;
}

- (void)set_currentTask:(id)task
{
  v4 = *(self + OBJC_IVAR___HDOneShotBackgroundTask__currentTask);
  *(self + OBJC_IVAR___HDOneShotBackgroundTask__currentTask) = task;
  taskCopy = task;
}

- (BOOL)rescheduleWhileRunning
{
  v3 = OBJC_IVAR___HDOneShotBackgroundTask_rescheduleWhileRunning;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRescheduleWhileRunning:(BOOL)running
{
  v5 = OBJC_IVAR___HDOneShotBackgroundTask_rescheduleWhileRunning;
  swift_beginAccess();
  *(self + v5) = running;
}

- (HDCoalescedTaskPoolQuota)quota
{
  v3 = OBJC_IVAR___HDOneShotBackgroundTask_quota;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setQuota:(id)quota
{
  v5 = OBJC_IVAR___HDOneShotBackgroundTask_quota;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = quota;
  quotaCopy = quota;
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

- (void)setHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR___HDOneShotBackgroundTask_handler);
  v7 = *(self + OBJC_IVAR___HDOneShotBackgroundTask_handler + 8);
  *v6 = sub_2515AF744;
  v6[1] = v5;
}

- (void)setScheduler:(id)scheduler
{
  v4 = *(self + OBJC_IVAR___HDOneShotBackgroundTask_scheduler);
  *(self + OBJC_IVAR___HDOneShotBackgroundTask_scheduler) = scheduler;
  schedulerCopy = scheduler;
}

- (HDOneShotBackgroundTask)initWithDefaultRequest:(id)request loggingCategory:(id)category scheduler:(id)scheduler handler:(id)handler
{
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  requestCopy = request;
  categoryCopy = category;
  schedulerCopy = scheduler;
  return HDOneShotBackgroundTask.init(defaultRequest:loggingCategory:scheduler:handler:)(requestCopy, categoryCopy, scheduler, sub_2515AF744, v10);
}

- (HDOneShotBackgroundTask)initWithName:(id)name loggingCategory:(id)category scheduler:(id)scheduler handler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = sub_2515BB8EC();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  categoryCopy = category;
  schedulerCopy = scheduler;
  return sub_2515AA72C(v9, v11, categoryCopy, scheduler, sub_2515AF418, v12);
}

- (BOOL)submitRequestWithMaximumDelay:(double)delay error:(id *)error completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  v8[2] = v7;
  selfCopy = self;
  HDOneShotBackgroundTask.submitRequest(maximumDelay:completion:)(sub_2515AF748, v8, delay);

  return 1;
}

- (BOOL)submitRequestWithMaximumDelay:(double)delay minimumDelay:(double)minimumDelay error:(id *)error completion:(id)completion
{
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = (self + OBJC_IVAR___HDOneShotBackgroundTask_state);
  selfCopy = self;
  os_unfair_lock_lock(v11);
  sub_2515AAC74(&v11[2], selfCopy, sub_2515AF748, v10, &v14, minimumDelay, delay);
  os_unfair_lock_unlock(v11);

  return 1;
}

- (BOOL)submitRequest:(id)request error:(id *)error completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  v8[2] = v7;
  v9 = (self + OBJC_IVAR___HDOneShotBackgroundTask_state);
  requestCopy = request;
  selfCopy = self;
  os_unfair_lock_lock(v9);
  sub_2515ABC40(&v9[2], selfCopy, sub_2515AF748, v8, requestCopy, &v13);
  os_unfair_lock_unlock(v9);

  return 1;
}

- (BOOL)cancelRequestAndReturnError:(id *)error
{
  selfCopy = self;
  HDOneShotBackgroundTask.cancelRequest()();

  if (v5)
  {
    if (error)
    {
      v6 = sub_2515BB84C();

      v7 = v6;
      *error = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

- (void)addExpirationHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = self + OBJC_IVAR___HDOneShotBackgroundTask_state;
  _Block_copy(v4);
  selfCopy = self;
  os_unfair_lock_lock(v5);
  sub_2515ACA34(v5 + 8, selfCopy, v4);
  os_unfair_lock_unlock(v5);

  _Block_release(v4);
}

- (BOOL)runImmediatelyAndReturnError:(id *)error completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  selfCopy = self;
  HDOneShotBackgroundTask.runImmediately(completion:)(sub_2515A86FC, v6);

  return 1;
}

- (void)launchTask
{
  selfCopy = self;
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
  _currentTask = [(HDOneShotBackgroundTask *)self _currentTask];

  return _currentTask;
}

@end