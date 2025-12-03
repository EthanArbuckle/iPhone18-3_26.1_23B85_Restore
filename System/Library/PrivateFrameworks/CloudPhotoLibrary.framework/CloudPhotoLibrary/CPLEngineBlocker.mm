@interface CPLEngineBlocker
- (CPLEngineBlocker)initWithWriteTransactionBlocker:(id)blocker schedulerBlocker:(id)schedulerBlocker;
- (void)dealloc;
- (void)unblock;
@end

@implementation CPLEngineBlocker

- (void)unblock
{
  [(CPLEngineWriteTransactionBlocker *)self->_writeTransactionBlocker unblock];
  [(CPLEngineSchedulerBlocker *)self->_schedulerBlocker unblock];
  self->_blocking = 0;
}

- (void)dealloc
{
  if (self->_blocking)
  {
    [(CPLEngineWriteTransactionBlocker *)self->_writeTransactionBlocker unblock];
    [(CPLEngineSchedulerBlocker *)self->_schedulerBlocker unblock];
  }

  v3.receiver = self;
  v3.super_class = CPLEngineBlocker;
  [(CPLEngineBlocker *)&v3 dealloc];
}

- (CPLEngineBlocker)initWithWriteTransactionBlocker:(id)blocker schedulerBlocker:(id)schedulerBlocker
{
  blockerCopy = blocker;
  schedulerBlockerCopy = schedulerBlocker;
  v12.receiver = self;
  v12.super_class = CPLEngineBlocker;
  v9 = [(CPLEngineBlocker *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_writeTransactionBlocker, blocker);
    objc_storeStrong(&v10->_schedulerBlocker, schedulerBlocker);
    v10->_blocking = 1;
  }

  return v10;
}

@end