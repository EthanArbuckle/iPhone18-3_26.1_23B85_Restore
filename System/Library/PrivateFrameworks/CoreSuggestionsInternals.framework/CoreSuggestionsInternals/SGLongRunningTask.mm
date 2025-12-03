@interface SGLongRunningTask
- (BOOL)shouldDefer;
- (SGLongRunningTask)initWithDeadline:(id)deadline manager:(id)manager;
- (void)markFinished;
@end

@implementation SGLongRunningTask

- (void)markFinished
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  [WeakRetained unregister:self];
}

- (BOOL)shouldDefer
{
  v2 = atomic_load(&self->_deferRequested);
  if (v2)
  {
    LOBYTE(deadline) = 1;
  }

  else
  {
    deadline = self->_deadline;
    if (deadline)
    {
      v4 = objc_opt_new();
      LOBYTE(deadline) = [(NSDate *)deadline compare:v4]== NSOrderedAscending;
    }
  }

  return deadline;
}

- (SGLongRunningTask)initWithDeadline:(id)deadline manager:(id)manager
{
  deadlineCopy = deadline;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = SGLongRunningTask;
  v9 = [(SGLongRunningTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deadline, deadline);
    objc_storeWeak(&v10->_manager, managerCopy);
  }

  return v10;
}

@end