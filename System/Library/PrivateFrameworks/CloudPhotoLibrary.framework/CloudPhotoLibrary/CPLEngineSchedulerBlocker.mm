@interface CPLEngineSchedulerBlocker
- (CPLEngineSchedulerBlocker)initWithReason:(id)a3 scheduler:(id)a4;
- (void)dealloc;
- (void)unblock;
@end

@implementation CPLEngineSchedulerBlocker

- (void)unblock
{
  v3 = [(CPLEngineScheduler *)self->_scheduler engineLibrary];
  v4 = [v3 syncManager];
  [v4 unblockSyncSessionWithReason:self->_reason];

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

- (CPLEngineSchedulerBlocker)initWithReason:(id)a3 scheduler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CPLEngineSchedulerBlocker;
  v8 = [(CPLEngineSchedulerBlocker *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    reason = v8->_reason;
    v8->_reason = v9;

    objc_storeStrong(&v8->_scheduler, a4);
  }

  return v8;
}

@end