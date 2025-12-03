@interface _CNQueueScheduler
- (_CNQueueScheduler)initWithQueue:(id)queue;
- (id)_queueForQualityOfService:(unint64_t)service;
- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service;
- (id)performCancelableBlock:(id)block qualityOfService:(unint64_t)service;
- (void)performBlock:(id)block qualityOfService:(unint64_t)service;
@end

@implementation _CNQueueScheduler

- (_CNQueueScheduler)initWithQueue:(id)queue
{
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = _CNQueueScheduler;
  v6 = [(_CNQueueScheduler *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = v7;
  }

  return v7;
}

- (void)performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v7 = [(_CNQueueScheduler *)self _queueForQualityOfService:service];
  v8 = blockCopy;
  v13 = v8;
  if (service <= 2)
  {
    if (!service)
    {
      v11 = _Block_copy(v8);
      goto LABEL_17;
    }

    if (service == 2)
    {
      v9 = QOS_CLASS_BACKGROUND;
LABEL_15:
      v10 = dispatch_block_create_with_qos_class(0, v9, 0, v8);
      goto LABEL_16;
    }

LABEL_11:
    v9 = QOS_CLASS_DEFAULT;
    goto LABEL_15;
  }

  if (service <= 4)
  {
    if (service == 3)
    {
      v9 = QOS_CLASS_UTILITY;
    }

    else
    {
      v9 = QOS_CLASS_USER_INITIATED;
    }

    goto LABEL_15;
  }

  if (service == 5)
  {
    v9 = QOS_CLASS_USER_INTERACTIVE;
    goto LABEL_15;
  }

  if (service != 6)
  {
    goto LABEL_11;
  }

  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v8);
LABEL_16:
  v12 = v10;
  v11 = objc_opt_self();

LABEL_17:
  dispatch_async(v7, v11);
}

- (id)_queueForQualityOfService:(unint64_t)service
{
  queue = [(_CNQueueScheduler *)self queue];

  if (queue)
  {
    queue2 = [(_CNQueueScheduler *)self queue];
  }

  else
  {
    if (service - 1 > 4)
    {
      v7 = 0;
    }

    else
    {
      v7 = qword_185A91FE0[service - 1];
    }

    queue2 = dispatch_get_global_queue(v7, 0);
  }

  return queue2;
}

- (id)performCancelableBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v7 = objc_alloc_init(CNQueueSchedulerCancelationToken);
  v8 = [(_CNQueueScheduler *)self _queueForQualityOfService:service];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __61___CNQueueScheduler_performCancelableBlock_qualityOfService___block_invoke;
  v20[3] = &unk_1E6ED5858;
  v9 = v7;
  v21 = v9;
  v10 = blockCopy;
  v22 = v10;
  v11 = v20;
  v12 = v11;
  if (service > 2)
  {
    if (service <= 4)
    {
      if (service == 3)
      {
        v13 = QOS_CLASS_UTILITY;
      }

      else
      {
        v13 = QOS_CLASS_USER_INITIATED;
      }

      goto LABEL_15;
    }

    if (service == 5)
    {
      v13 = QOS_CLASS_USER_INTERACTIVE;
      goto LABEL_15;
    }

    if (service == 6)
    {
      v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v11);
LABEL_16:
      v16 = v14;
      v15 = objc_opt_self();

      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (service)
  {
    if (service == 2)
    {
      v13 = QOS_CLASS_BACKGROUND;
LABEL_15:
      v14 = dispatch_block_create_with_qos_class(0, v13, 0, v11);
      goto LABEL_16;
    }

LABEL_11:
    v13 = QOS_CLASS_DEFAULT;
    goto LABEL_15;
  }

  v15 = _Block_copy(v11);
LABEL_17:

  dispatch_async(v8, v15);
  v17 = v22;
  v18 = v9;

  return v9;
}

- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v9 = [(_CNQueueScheduler *)self _queueForQualityOfService:service];
  v10 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v9);

  v11 = [[CNDispatchSource alloc] initWithSource:v10];
  if (delay <= 1.84467441e10)
  {
    v12 = dispatch_time(0, (delay * 1000000000.0));
  }

  else
  {
    v12 = -1;
  }

  dispatch_source_set_timer(v10, v12, 0xFFFFFFFFFFFFFFFFLL, 0);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __62___CNQueueScheduler_afterDelay_performBlock_qualityOfService___block_invoke;
  v26[3] = &unk_1E6ED52C0;
  v13 = blockCopy;
  v28 = v13;
  v14 = v11;
  v27 = v14;
  v15 = v26;
  v16 = v15;
  if (service <= 2)
  {
    if (!service)
    {
      v19 = _Block_copy(v15);
      goto LABEL_20;
    }

    if (service == 2)
    {
      v17 = QOS_CLASS_BACKGROUND;
LABEL_18:
      v18 = dispatch_block_create_with_qos_class(0, v17, 0, v15);
      goto LABEL_19;
    }

LABEL_14:
    v17 = QOS_CLASS_DEFAULT;
    goto LABEL_18;
  }

  if (service <= 4)
  {
    if (service == 3)
    {
      v17 = QOS_CLASS_UTILITY;
    }

    else
    {
      v17 = QOS_CLASS_USER_INITIATED;
    }

    goto LABEL_18;
  }

  if (service == 5)
  {
    v17 = QOS_CLASS_USER_INTERACTIVE;
    goto LABEL_18;
  }

  if (service != 6)
  {
    goto LABEL_14;
  }

  v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v15);
LABEL_19:
  v20 = v18;
  v19 = objc_opt_self();

LABEL_20:
  dispatch_source_set_event_handler(v10, v19);

  v21 = objc_alloc_init(CNQueueSchedulerCancelationToken);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __62___CNQueueScheduler_afterDelay_performBlock_qualityOfService___block_invoke_2;
  v24[3] = &unk_1E6ED5830;
  v25 = v14;
  v22 = v14;
  [(CNCancelationToken *)v21 addCancelationBlock:v24];
  dispatch_resume(v10);

  return v21;
}

@end