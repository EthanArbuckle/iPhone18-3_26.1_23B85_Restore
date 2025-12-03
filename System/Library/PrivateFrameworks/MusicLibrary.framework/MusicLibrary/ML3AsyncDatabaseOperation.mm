@interface ML3AsyncDatabaseOperation
- (BOOL)_verifyLibraryAndAttributesProperties:(id *)properties;
- (BOOL)isCancelled;
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (BOOL)success;
- (ML3AsyncDatabaseOperation)initWithLibrary:(id)library writer:(id)writer;
- (id)error;
- (void)_execute;
- (void)cancel;
- (void)execute;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation ML3AsyncDatabaseOperation

- (BOOL)_verifyLibraryAndAttributesProperties:(id *)properties
{
  attributes = [(ML3DatabaseOperation *)self attributes];

  if (attributes)
  {
    library = [(ML3DatabaseOperation *)self library];

    if (library)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v7 = [ML3MediaLibraryWriter writerErrorWithCode:600 description:@"Operation does not have library reference."];
    if (!properties)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing attributes for operation type: %@", self];
    v7 = [ML3MediaLibraryWriter writerErrorWithCode:500 description:v8];

    if (!properties)
    {
      goto LABEL_9;
    }
  }

  if (v7)
  {
    v9 = v7;
    *properties = v7;
  }

LABEL_9:

  return v7 == 0;
}

- (void)_execute
{
  v5 = 0;
  v3 = [(ML3AsyncDatabaseOperation *)self _verifyLibraryAndAttributesProperties:&v5];
  v4 = v5;
  if (v3)
  {
    [(ML3AsyncDatabaseOperation *)self execute];
  }

  else
  {
    [(ML3AsyncDatabaseOperation *)self finishWithError:v4];
  }
}

- (BOOL)success
{
  os_unfair_lock_lock(&self->_lock);
  success = self->_success;
  os_unfair_lock_unlock(&self->_lock);
  return success;
}

- (id)error
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_error;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)finishWithError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  [(ML3AsyncDatabaseOperation *)self willChangeValueForKey:@"success"];
  [(ML3AsyncDatabaseOperation *)self willChangeValueForKey:@"error"];
  [(ML3AsyncDatabaseOperation *)self willChangeValueForKey:@"isFinished"];
  [(ML3AsyncDatabaseOperation *)self willChangeValueForKey:@"isExecuting"];
  os_unfair_lock_lock(&self->_lock);
  self->_success = errorCopy == 0;
  error = self->_error;
  self->_error = errorCopy;
  v6 = errorCopy;

  self->_executing = 0;
  self->_finished = 1;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v8 = v7;

  v9 = v8 - self->_startTime;
  self->_startTime = 0.0;
  success = self->_success;
  v11 = os_log_create("com.apple.amp.medialibrary", "Default");
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (success)
  {
    if (v12)
    {
      v14 = 134218240;
      selfCopy2 = self;
      v16 = 2048;
      v17 = v9;
      v13 = "[ML3AsyncDatabaseOperation] Async operation %p finished successfully in %.3f seconds";
LABEL_6:
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, v13, &v14, 0x16u);
    }
  }

  else if (v12)
  {
    v14 = 134218240;
    selfCopy2 = self;
    v16 = 2048;
    v17 = v9;
    v13 = "[ML3AsyncDatabaseOperation] Async operation %p failed in %.3f seconds";
    goto LABEL_6;
  }

  os_unfair_lock_unlock(&self->_lock);
  [(ML3AsyncDatabaseOperation *)self didChangeValueForKey:@"isExecuting"];
  [(ML3AsyncDatabaseOperation *)self didChangeValueForKey:@"isFinished"];
  [(ML3AsyncDatabaseOperation *)self didChangeValueForKey:@"error"];
  [(ML3AsyncDatabaseOperation *)self didChangeValueForKey:@"success"];
}

- (void)execute
{
  v4 = [objc_opt_class() instanceMethodForSelector:a2];
  if (v4 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3AsyncDatabaseOperation.m" lineNumber:91 description:{@"Subclass %@ must implement -%@ defined in %@.", v6, v7, @"[ML3AsyncDatabaseOperation class]"}];
  }
}

- (void)start
{
  [(ML3AsyncDatabaseOperation *)self willChangeValueForKey:@"isExecuting"];
  os_unfair_lock_lock(&self->_lock);
  self->_executing = 1;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  self->_startTime = v3;
  os_unfair_lock_unlock(&self->_lock);
  [(ML3AsyncDatabaseOperation *)self didChangeValueForKey:@"isExecuting"];

  [(ML3AsyncDatabaseOperation *)self _execute];
}

- (BOOL)isFinished
{
  os_unfair_lock_lock(&self->_lock);
  finished = self->_finished;
  os_unfair_lock_unlock(&self->_lock);
  return finished;
}

- (BOOL)isExecuting
{
  os_unfair_lock_lock(&self->_lock);
  executing = self->_executing;
  os_unfair_lock_unlock(&self->_lock);
  return executing;
}

- (BOOL)isCancelled
{
  os_unfair_lock_lock(&self->_lock);
  cancelled = self->_cancelled;
  os_unfair_lock_unlock(&self->_lock);
  return cancelled;
}

- (void)cancel
{
  [(ML3AsyncDatabaseOperation *)self willChangeValueForKey:@"isCancelled"];
  os_unfair_lock_lock(&self->_lock);
  self->_cancelled = 1;
  os_unfair_lock_unlock(&self->_lock);

  [(ML3AsyncDatabaseOperation *)self didChangeValueForKey:@"isCancelled"];
}

- (ML3AsyncDatabaseOperation)initWithLibrary:(id)library writer:(id)writer
{
  v5.receiver = self;
  v5.super_class = ML3AsyncDatabaseOperation;
  result = [(ML3DatabaseOperation *)&v5 initWithLibrary:library writer:writer];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

@end