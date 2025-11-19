@interface HDSynchronousTaskGroup
- (HDSynchronousTaskGroup)init;
- (HDSynchronousTaskGroupDelegate)delegate;
- (void)failTaskWithError:(id)a3;
- (void)finishTask;
@end

@implementation HDSynchronousTaskGroup

- (HDSynchronousTaskGroup)init
{
  v3.receiver = self;
  v3.super_class = HDSynchronousTaskGroup;
  result = [(HDSynchronousTaskGroup *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
    result->_success = 1;
  }

  return result;
}

- (void)failTaskWithError:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  self->_success = 0;
  if (v7)
  {
    errors = self->_errors;
    if (!errors)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v6 = self->_errors;
      self->_errors = v5;

      errors = self->_errors;
    }

    [(NSMutableArray *)errors addObject:v7];
  }

  os_unfair_lock_unlock(&self->_lock);
  [(HDSynchronousTaskGroup *)self finishTask];
}

- (void)finishTask
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDSynchronousTaskGroup.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"resultCount >= 0"}];
}

- (HDSynchronousTaskGroupDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end