@interface CPLEngineSchedulerBlocker
- (CPLEngineSchedulerBlocker)initWithReason:(id)reason scheduler:(id)scheduler;
- (void)dealloc;
- (void)unblock;
@end

@implementation CPLEngineSchedulerBlocker

- (void)unblock
{
  engineLibrary = [(CPLEngineScheduler *)self->_scheduler engineLibrary];
  syncManager = [engineLibrary syncManager];
  [syncManager unblockSyncSessionWithReason:self->_reason];

  [(CPLEngineScheduler *)self->_scheduler enableSynchronizationWithReason:self->_reason];
  self->_blocking = 0;
}

- (void)dealloc
{
  if (self->_blocking)
  {
    [(CPLEngineScheduler *)self->_scheduler enableSynchronizationWithReason:self->_reason];
  }

  v3.receiver = self;
  v3.super_class = CPLEngineSchedulerBlocker;
  [(CPLEngineSchedulerBlocker *)&v3 dealloc];
}

- (CPLEngineSchedulerBlocker)initWithReason:(id)reason scheduler:(id)scheduler
{
  reasonCopy = reason;
  schedulerCopy = scheduler;
  v12.receiver = self;
  v12.super_class = CPLEngineSchedulerBlocker;
  v8 = [(CPLEngineSchedulerBlocker *)&v12 init];
  if (v8)
  {
    v9 = [reasonCopy copy];
    reason = v8->_reason;
    v8->_reason = v9;

    objc_storeStrong(&v8->_scheduler, scheduler);
  }

  return v8;
}

@end