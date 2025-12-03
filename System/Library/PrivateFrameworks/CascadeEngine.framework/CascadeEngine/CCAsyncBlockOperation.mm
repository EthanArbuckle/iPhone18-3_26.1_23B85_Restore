@interface CCAsyncBlockOperation
- (BOOL)isCancelled;
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (CCAsyncBlockOperation)initWithPersonaIdentifier:(id)identifier asyncOperationBlock:(id)block;
- (void)cancel;
- (void)complete;
- (void)start;
@end

@implementation CCAsyncBlockOperation

- (CCAsyncBlockOperation)initWithPersonaIdentifier:(id)identifier asyncOperationBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  v13.receiver = self;
  v13.super_class = CCAsyncBlockOperation;
  v9 = [(CCAsyncBlockOperation *)&v13 init];
  if (v9)
  {
    v10 = [blockCopy copy];
    block = v9->_block;
    v9->_block = v10;

    v9->_executing = 0;
    v9->_finished = 0;
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_personaIdentifier, identifier);
  }

  return v9;
}

- (void)start
{
  if (![(CCAsyncBlockOperation *)self isCancelled])
  {
    [(CCAsyncBlockOperation *)self willChangeValueForKey:@"isExecuting"];
    os_unfair_lock_lock(&self->_lock);
    self->_executing = 1;
    os_unfair_lock_unlock(&self->_lock);
    [(CCAsyncBlockOperation *)self didChangeValueForKey:@"isExecuting"];
    personaIdentifier = self->_personaIdentifier;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __30__CCAsyncBlockOperation_start__block_invoke;
    v4[3] = &unk_1E85C3230;
    v4[4] = self;
    [MEMORY[0x1E698E9D0] runAsPersonaIdentifier:personaIdentifier block:v4];
  }
}

void __30__CCAsyncBlockOperation_start__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 code] == 1)
  {
    [*(a1 + 32) complete];
  }

  else
  {
    objc_initWeak(&location, *(a1 + 32));
    v4 = [*(a1 + 32) block];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __30__CCAsyncBlockOperation_start__block_invoke_2;
    v7[3] = &unk_1E85C3280;
    objc_copyWeak(&v8, &location);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __30__CCAsyncBlockOperation_start__block_invoke_3;
    v5[3] = &unk_1E85C27B8;
    objc_copyWeak(&v6, &location);
    (v4)[2](v4, v7, v5);

    objc_destroyWeak(&v6);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

uint64_t __30__CCAsyncBlockOperation_start__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained isCancelled];

  return v2;
}

void __30__CCAsyncBlockOperation_start__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained complete];
}

- (void)complete
{
  [(CCAsyncBlockOperation *)self willChangeValueForKey:@"isFinished"];
  [(CCAsyncBlockOperation *)self willChangeValueForKey:@"isExecuting"];
  os_unfair_lock_lock(&self->_lock);
  self->_executing = 0;
  self->_finished = 1;
  os_unfair_lock_unlock(&self->_lock);
  [(CCAsyncBlockOperation *)self didChangeValueForKey:@"isExecuting"];

  [(CCAsyncBlockOperation *)self didChangeValueForKey:@"isFinished"];
}

- (void)cancel
{
  [(CCAsyncBlockOperation *)self willChangeValueForKey:@"isFinished"];
  [(CCAsyncBlockOperation *)self willChangeValueForKey:@"isExecuting"];
  [(CCAsyncBlockOperation *)self willChangeValueForKey:@"isCancelled"];
  os_unfair_lock_lock(&self->_lock);
  self->_executing = 0;
  self->_finished = 1;
  self->_cancelled = 1;
  os_unfair_lock_unlock(&self->_lock);
  [(CCAsyncBlockOperation *)self didChangeValueForKey:@"isCancelled"];
  [(CCAsyncBlockOperation *)self didChangeValueForKey:@"isExecuting"];

  [(CCAsyncBlockOperation *)self didChangeValueForKey:@"isFinished"];
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

@end