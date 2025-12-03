@interface SYQueueDumper
+ (void)registerQueue:(id)queue;
@end

@implementation SYQueueDumper

+ (void)registerQueue:(id)queue
{
  queueCopy = queue;
  if (registerQueue__onceToken != -1)
  {
    +[SYQueueDumper registerQueue:];
  }

  v4 = dumperQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__SYQueueDumper_registerQueue___block_invoke_3;
  block[3] = &unk_1E86C9FB0;
  v7 = queueCopy;
  v5 = queueCopy;
  dispatch_sync(v4, block);
}

uint64_t __31__SYQueueDumper_registerQueue___block_invoke()
{
  v0 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
  v1 = queues;
  queues = v0;

  v2 = dispatch_queue_create("QueueDumper", 0);
  v3 = dumperQueue;
  dumperQueue = v2;

  return os_state_add_handler();
}

_DWORD *__31__SYQueueDumper_registerQueue___block_invoke_2()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  [queues compact];
  v1 = [queues allObjects];
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  v3 = [v2 initWithCapacity:{objc_msgSend(queues, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v1;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * v8) debugDescription];
        [v3 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:200 options:0 error:0];
  v11 = malloc_type_malloc([v10 length] + 200, 0x1000040BEF03554uLL);
  *v11 = 1;
  v11[1] = [v10 length];
  __strlcpy_chk();
  [v10 getBytes:v11 + 50 range:{0, objc_msgSend(v10, "length")}];

  objc_autoreleasePoolPop(v0);
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t __31__SYQueueDumper_registerQueue___block_invoke_3(uint64_t a1)
{
  for (i = 0; i < [queues count]; ++i)
  {
    if ([queues pointerAtIndex:i] == *(a1 + 32))
    {
      break;
    }
  }

  result = [queues count];
  if (i == result)
  {
    v4 = queues;
    v5 = *(a1 + 32);

    return [v4 addPointer:v5];
  }

  return result;
}

@end