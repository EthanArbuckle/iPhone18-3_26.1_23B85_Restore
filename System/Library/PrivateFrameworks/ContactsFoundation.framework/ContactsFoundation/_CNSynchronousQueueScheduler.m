@interface _CNSynchronousQueueScheduler
- (_CNSynchronousQueueScheduler)initWithQueue:(id)a3;
- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5;
- (id)performCancelableBlock:(id)a3 qualityOfService:(unint64_t)a4;
- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4;
@end

@implementation _CNSynchronousQueueScheduler

- (_CNSynchronousQueueScheduler)initWithQueue:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _CNSynchronousQueueScheduler;
  v6 = [(_CNSynchronousQueueScheduler *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = v7;
  }

  return v7;
}

- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  queue = self->_queue;
  v9 = v6;
  v14 = v9;
  if (a4 <= 2)
  {
    if (!a4)
    {
      v12 = _Block_copy(v9);
      goto LABEL_17;
    }

    if (a4 == 2)
    {
      v10 = QOS_CLASS_BACKGROUND;
LABEL_15:
      v11 = dispatch_block_create_with_qos_class(0, v10, 0, v9);
      goto LABEL_16;
    }

LABEL_11:
    v10 = QOS_CLASS_DEFAULT;
    goto LABEL_15;
  }

  if (a4 <= 4)
  {
    if (a4 == 3)
    {
      v10 = QOS_CLASS_UTILITY;
    }

    else
    {
      v10 = QOS_CLASS_USER_INITIATED;
    }

    goto LABEL_15;
  }

  if (a4 == 5)
  {
    v10 = QOS_CLASS_USER_INTERACTIVE;
    goto LABEL_15;
  }

  if (a4 != 6)
  {
    goto LABEL_11;
  }

  v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v9);
LABEL_16:
  v13 = v11;
  v12 = objc_opt_self();

LABEL_17:
  dispatch_sync(queue, v12);

  objc_autoreleasePoolPop(v7);
}

- (id)performCancelableBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(SynchronousQueueSchedulerCancelationToken);
  queue = self->_queue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __72___CNSynchronousQueueScheduler_performCancelableBlock_qualityOfService___block_invoke;
  v20[3] = &unk_1E6ED52C0;
  v9 = v6;
  v22 = v9;
  v10 = v7;
  v21 = v10;
  v11 = v20;
  v12 = v11;
  if (a4 > 2)
  {
    if (a4 <= 4)
    {
      if (a4 == 3)
      {
        v13 = QOS_CLASS_UTILITY;
      }

      else
      {
        v13 = QOS_CLASS_USER_INITIATED;
      }

      goto LABEL_15;
    }

    if (a4 == 5)
    {
      v13 = QOS_CLASS_USER_INTERACTIVE;
      goto LABEL_15;
    }

    if (a4 == 6)
    {
      v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v11);
LABEL_16:
      v16 = v14;
      v15 = objc_opt_self();

      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (a4)
  {
    if (a4 == 2)
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

  dispatch_sync(queue, v15);
  v17 = v21;
  v18 = v10;

  return v10;
}

- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5
{
  v8 = a4;
  queue = self->_queue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __73___CNSynchronousQueueScheduler_afterDelay_performBlock_qualityOfService___block_invoke;
  v19[3] = &unk_1E6ED52E8;
  v21 = a3;
  v10 = v8;
  v20 = v10;
  v11 = v19;
  v12 = v11;
  if (a5 <= 2)
  {
    if (!a5)
    {
      v15 = _Block_copy(v11);
      goto LABEL_17;
    }

    if (a5 == 2)
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

  if (a5 <= 4)
  {
    if (a5 == 3)
    {
      v13 = QOS_CLASS_UTILITY;
    }

    else
    {
      v13 = QOS_CLASS_USER_INITIATED;
    }

    goto LABEL_15;
  }

  if (a5 == 5)
  {
    v13 = QOS_CLASS_USER_INTERACTIVE;
    goto LABEL_15;
  }

  if (a5 != 6)
  {
    goto LABEL_11;
  }

  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v11);
LABEL_16:
  v16 = v14;
  v15 = objc_opt_self();

LABEL_17:
  dispatch_sync(queue, v15);

  v17 = objc_alloc_init(SynchronousQueueSchedulerCancelationToken);

  return v17;
}

@end