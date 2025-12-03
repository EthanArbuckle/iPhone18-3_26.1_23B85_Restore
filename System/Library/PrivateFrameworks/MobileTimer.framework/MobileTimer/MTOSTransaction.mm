@interface MTOSTransaction
+ (id)transactionWithDescription:(id)description timeout:(double)timeout timeoutBlock:(id)block;
- (MTOSTransaction)initWithDescription:(id)description timeout:(double)timeout timeoutBlock:(id)block;
- (void)_cancel;
- (void)dealloc;
- (void)end;
@end

@implementation MTOSTransaction

+ (id)transactionWithDescription:(id)description timeout:(double)timeout timeoutBlock:(id)block
{
  blockCopy = block;
  descriptionCopy = description;
  v9 = [objc_alloc(objc_opt_class()) initWithDescription:descriptionCopy timeout:blockCopy timeoutBlock:timeout];

  return v9;
}

- (MTOSTransaction)initWithDescription:(id)description timeout:(double)timeout timeoutBlock:(id)block
{
  descriptionCopy = description;
  blockCopy = block;
  v25.receiver = self;
  v25.super_class = MTOSTransaction;
  v10 = [(MTOSTransaction *)&v25 init];
  if (v10)
  {
    [descriptionCopy UTF8String];
    v11 = os_transaction_create();
    v12 = *(v10 + 1);
    *(v10 + 1) = v11;

    v13 = dispatch_queue_create("com.apple.MTOSTransaction.serial", 0);
    v14 = *(v10 + 3);
    *(v10 + 3) = v13;

    v15 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v10 + 3));
    v16 = *(v10 + 2);
    *(v10 + 2) = v15;

    objc_initWeak(&location, v10);
    v17 = *(v10 + 2);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __60__MTOSTransaction_initWithDescription_timeout_timeoutBlock___block_invoke;
    handler[3] = &unk_1E7B0E228;
    objc_copyWeak(&v23, &location);
    v22 = blockCopy;
    dispatch_source_set_event_handler(v17, handler);
    v18 = *(v10 + 2);
    v19 = dispatch_time(0, (timeout * 1000000000.0));
    dispatch_source_set_timer(v18, v19, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(*(v10 + 2));

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __60__MTOSTransaction_initWithDescription_timeout_timeoutBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained transaction];

  if (v2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      (*(v3 + 16))();
    }

    [WeakRetained _cancel];
  }
}

- (void)end
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__MTOSTransaction_end__block_invoke;
  block[3] = &unk_1E7B0C9D8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_cancel
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
  }

  transaction = self->_transaction;
  self->_transaction = 0;

  v5 = self->_timer;
  self->_timer = 0;
}

- (void)dealloc
{
  [(MTOSTransaction *)self _cancel];
  v3.receiver = self;
  v3.super_class = MTOSTransaction;
  [(MTOSTransaction *)&v3 dealloc];
}

@end