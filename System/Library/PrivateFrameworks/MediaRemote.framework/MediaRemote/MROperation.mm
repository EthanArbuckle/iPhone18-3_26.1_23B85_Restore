@interface MROperation
- (MROperation)initWithBlock:(id)block completionHandler:(id)handler;
- (NSDate)cancellationDate;
- (NSDate)endDate;
- (NSDate)startDate;
- (double)executionDuration;
- (double)totalDuration;
- (double)waitDuration;
- (void)cancel;
- (void)main;
@end

@implementation MROperation

- (MROperation)initWithBlock:(id)block completionHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = MROperation;
  v8 = [(MROperation *)&v18 init];
  if (v8)
  {
    v9 = [blockCopy copy];
    operationBlock = v8->_operationBlock;
    v8->_operationBlock = v9;

    v11 = [MEMORY[0x1E695DF00] now];
    creationDate = v8->_creationDate;
    v8->_creationDate = v11;

    v8->_lock._os_unfair_lock_opaque = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __47__MROperation_initWithBlock_completionHandler___block_invoke;
    v16[3] = &unk_1E769A4F0;
    v17 = handlerCopy;
    v13 = MEMORY[0x1A58E3570](v16);
    completionHandler = v8->_completionHandler;
    v8->_completionHandler = v13;
  }

  return v8;
}

void __47__MROperation_initWithBlock_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  os_unfair_lock_lock(v6 + 62);
  v3 = [MEMORY[0x1E695DF00] now];
  v4 = *&v6[68]._os_unfair_lock_opaque;
  *&v6[68]._os_unfair_lock_opaque = v3;

  os_unfair_lock_unlock(v6 + 62);
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

- (void)main
{
  os_unfair_lock_lock(&self->_lock);
  if ([(MROperation *)self isCancelled])
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v3 = [MEMORY[0x1E695DF00] now];
    startDate = self->_startDate;
    self->_startDate = v3;

    os_unfair_lock_unlock(&self->_lock);
    operationBlock = [(MROperation *)self operationBlock];

    if (operationBlock)
    {
      operationBlock2 = [(MROperation *)self operationBlock];
      (operationBlock2)[2](operationBlock2, self);
    }

    completionHandler = [(MROperation *)self completionHandler];
    completionHandler[2](completionHandler, self);
  }
}

- (void)cancel
{
  v7.receiver = self;
  v7.super_class = MROperation;
  [(MROperation *)&v7 cancel];
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x1E695DF00] now];
  cancellationDate = self->_cancellationDate;
  self->_cancellationDate = v3;

  startDate = self->_startDate;
  os_unfair_lock_unlock(&self->_lock);
  if (!startDate)
  {
    completionHandler = [(MROperation *)self completionHandler];
    (completionHandler)[2](completionHandler, self);
  }
}

- (NSDate)startDate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_startDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSDate)endDate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_endDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSDate)cancellationDate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_cancellationDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (double)executionDuration
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_startDate;
  v4 = self->_endDate;
  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF00] now];
    }

    [(NSDate *)v4 timeIntervalSinceDate:v3];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (double)totalDuration
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_endDate;
  os_unfair_lock_unlock(&self->_lock);
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DF00] now];
  }

  [(NSDate *)v3 timeIntervalSinceDate:self->_creationDate];
  v5 = v4;

  return v5;
}

- (double)waitDuration
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_startDate;
  os_unfair_lock_unlock(&self->_lock);
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DF00] now];
  }

  [(NSDate *)v3 timeIntervalSinceDate:self->_creationDate];
  v5 = v4;

  return v5;
}

@end