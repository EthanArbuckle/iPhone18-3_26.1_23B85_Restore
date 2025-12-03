@interface MAParallelProgress
- (BOOL)isCancelled;
- (BOOL)isCancelledWithProgress:(double)progress index:(unint64_t)index;
- (MAParallelProgress)initWithProgressReporter:(id)reporter parallelOperationCount:(unint64_t)count;
@end

@implementation MAParallelProgress

- (BOOL)isCancelledWithProgress:(double)progress index:(unint64_t)index
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v7 = [(MAFloatVector *)self->_progressValues count];
  if (v7 <= index)
  {
    v10 = v7;
    v11 = KGLoggingConnection();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v15 = 134218240;
      indexCopy = index;
      v17 = 2048;
      v18 = v10;
      _os_log_fault_impl(&dword_255870000, v11, OS_LOG_TYPE_FAULT, "Parallel progress index(%lu) out of bounds(%lu)", &v15, 0x16u);
    }
  }

  else
  {
    *&v8 = progress;
    [(MAMutableFloatVector *)self->_progressValues setFloat:index atIndex:v8];
    [(MAFloatVector *)self->_progressValues mean];
    progress = v9;
  }

  v12 = [(MAProgressReporter *)self->_progressReporter isCancelledWithProgress:progress];
  os_unfair_lock_unlock(&self->_lock);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)isCancelled
{
  os_unfair_lock_lock(&self->_lock);
  isCancelled = [(MAProgressReporter *)self->_progressReporter isCancelled];
  os_unfair_lock_unlock(&self->_lock);
  return isCancelled;
}

- (MAParallelProgress)initWithProgressReporter:(id)reporter parallelOperationCount:(unint64_t)count
{
  reporterCopy = reporter;
  v13.receiver = self;
  v13.super_class = MAParallelProgress;
  v8 = [(MAParallelProgress *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v8->_progressReporter, reporter);
    v10 = [(MAFloatVector *)MAMutableFloatVector zerosOfCount:count];
    progressValues = v9->_progressValues;
    v9->_progressValues = v10;
  }

  return v9;
}

@end