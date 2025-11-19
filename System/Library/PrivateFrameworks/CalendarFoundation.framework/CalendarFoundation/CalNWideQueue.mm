@interface CalNWideQueue
- (CalNWideQueue)initWithSerialQueue:(id)a3 andWidth:(unint64_t)a4;
- (void)executeBlock:(id)a3;
@end

@implementation CalNWideQueue

- (CalNWideQueue)initWithSerialQueue:(id)a3 andWidth:(unint64_t)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CalNWideQueue;
  v7 = [(CalNWideQueue *)&v13 init];
  if (v7)
  {
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = dispatch_queue_create("CalNWideQueue", 0);
    }

    queue = v7->_queue;
    v7->_queue = v8;

    v10 = dispatch_semaphore_create(a4);
    semaphore = v7->_semaphore;
    v7->_semaphore = v10;
  }

  return v7;
}

- (void)executeBlock:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__CalNWideQueue_executeBlock___block_invoke;
  v7[3] = &unk_1E7EC6890;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __30__CalNWideQueue_executeBlock___block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 16), 0xFFFFFFFFFFFFFFFFLL);
  v2 = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__CalNWideQueue_executeBlock___block_invoke_2;
  v4[3] = &unk_1E7EC6A08;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

intptr_t __30__CalNWideQueue_executeBlock___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 32) + 16);

  return dispatch_semaphore_signal(v2);
}

@end