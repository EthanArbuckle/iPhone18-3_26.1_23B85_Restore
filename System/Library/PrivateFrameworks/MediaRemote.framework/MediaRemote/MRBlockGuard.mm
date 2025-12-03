@interface MRBlockGuard
- (MRBlockGuard)initWithTimeout:(double)timeout reason:(id)reason handler:(id)handler;
- (MRBlockGuard)initWithTimeout:(double)timeout reason:(id)reason queue:(id)queue handler:(id)handler;
@end

@implementation MRBlockGuard

- (MRBlockGuard)initWithTimeout:(double)timeout reason:(id)reason queue:(id)queue handler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__MRBlockGuard_initWithTimeout_reason_queue_handler___block_invoke;
  v16[3] = &unk_1E769BCD0;
  v17 = queueCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  v14 = [(MRBlockGuard *)self initWithTimeout:reason reason:v16 handler:timeout];

  return v14;
}

void __53__MRBlockGuard_initWithTimeout_reason_queue_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__MRBlockGuard_initWithTimeout_reason_queue_handler___block_invoke_2;
  v7[3] = &unk_1E769AB28;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (MRBlockGuard)initWithTimeout:(double)timeout reason:(id)reason handler:(id)handler
{
  reasonCopy = reason;
  handlerCopy = handler;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __47__MRBlockGuard_initWithTimeout_reason_handler___block_invoke;
  v15[3] = &unk_1E76A0B50;
  v18 = v20;
  v10 = reasonCopy;
  v16 = v10;
  timeoutCopy = timeout;
  v11 = handlerCopy;
  v17 = v11;
  v14.receiver = self;
  v14.super_class = MRBlockGuard;
  v12 = [(MSVBlockGuard *)&v14 initWithTimeout:v15 interruptionHandler:timeout];

  _Block_object_dispose(v20, 8);
  return v12;
}

void __47__MRBlockGuard_initWithTimeout_reason_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v2 = 0;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    if (a2)
    {
      v6 = [v5 initWithMRError:25 format:{@"Guarded operation <%@> was deallocated before disarmed", *(a1 + 32), v8}];
    }

    else
    {
      v6 = [v5 initWithMRError:26 format:{@"Guarded operation <%@> timed out after <%lf> seconds", *(a1 + 32), *(a1 + 56)}];
    }

    v2 = v6;
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v7 = [*(a1 + 40) copy];
    if (v7)
    {
      v9 = v7;
      (*(v7 + 16))(v7, v2);
      goto LABEL_9;
    }
  }

  v9 = 0;
LABEL_9:
}

@end