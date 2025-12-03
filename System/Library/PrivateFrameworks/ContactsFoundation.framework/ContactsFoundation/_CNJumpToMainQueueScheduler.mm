@interface _CNJumpToMainQueueScheduler
- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service;
- (id)performCancelableBlock:(id)block qualityOfService:(unint64_t)service;
- (void)performBlock:(id)block qualityOfService:(unint64_t)service;
@end

@implementation _CNJumpToMainQueueScheduler

- (void)performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v6 = MEMORY[0x1E69E96A0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61___CNJumpToMainQueueScheduler_performBlock_qualityOfService___block_invoke;
  v15[3] = &unk_1E6ED5F68;
  v7 = blockCopy;
  v16 = v7;
  v8 = v15;
  v9 = v8;
  if (service > 2)
  {
    if (service <= 4)
    {
      if (service == 3)
      {
        v10 = QOS_CLASS_UTILITY;
      }

      else
      {
        v10 = QOS_CLASS_USER_INITIATED;
      }

      goto LABEL_15;
    }

    if (service == 5)
    {
      v10 = QOS_CLASS_USER_INTERACTIVE;
      goto LABEL_15;
    }

    if (service == 6)
    {
      v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v8);
LABEL_16:
      v13 = v11;
      v12 = objc_opt_self();

      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (service)
  {
    if (service == 2)
    {
      v10 = QOS_CLASS_BACKGROUND;
LABEL_15:
      v11 = dispatch_block_create_with_qos_class(0, v10, 0, v8);
      goto LABEL_16;
    }

LABEL_11:
    v10 = QOS_CLASS_DEFAULT;
    goto LABEL_15;
  }

  v12 = _Block_copy(v8);
LABEL_17:

  v14 = MEMORY[0x1E69E96A0];
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

- (id)performCancelableBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v6 = objc_alloc_init(CNMainQueueSchedulerCancelationToken);
  v7 = MEMORY[0x1E69E96A0];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __71___CNJumpToMainQueueScheduler_performCancelableBlock_qualityOfService___block_invoke;
  v20[3] = &unk_1E6ED5858;
  v8 = v6;
  v21 = v8;
  v9 = blockCopy;
  v22 = v9;
  v10 = v20;
  v11 = v10;
  if (service > 2)
  {
    if (service <= 4)
    {
      if (service == 3)
      {
        v12 = QOS_CLASS_UTILITY;
      }

      else
      {
        v12 = QOS_CLASS_USER_INITIATED;
      }

      goto LABEL_15;
    }

    if (service == 5)
    {
      v12 = QOS_CLASS_USER_INTERACTIVE;
      goto LABEL_15;
    }

    if (service == 6)
    {
      v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v10);
LABEL_16:
      v15 = v13;
      v14 = objc_opt_self();

      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (service)
  {
    if (service == 2)
    {
      v12 = QOS_CLASS_BACKGROUND;
LABEL_15:
      v13 = dispatch_block_create_with_qos_class(0, v12, 0, v10);
      goto LABEL_16;
    }

LABEL_11:
    v12 = QOS_CLASS_DEFAULT;
    goto LABEL_15;
  }

  v14 = _Block_copy(v10);
LABEL_17:

  v16 = MEMORY[0x1E69E96A0];
  dispatch_async(MEMORY[0x1E69E96A0], v14);

  v17 = v22;
  v18 = v8;

  return v8;
}

- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v8 = objc_alloc_init(CNMainQueueSchedulerCancelationToken);
  v9 = MEMORY[0x1E69E96A0];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __72___CNJumpToMainQueueScheduler_afterDelay_performBlock_qualityOfService___block_invoke;
  v22[3] = &unk_1E6ED5858;
  v10 = v8;
  v23 = v10;
  v11 = blockCopy;
  v24 = v11;
  v12 = v22;
  v13 = v12;
  if (service > 2)
  {
    if (service <= 4)
    {
      if (service == 3)
      {
        v14 = QOS_CLASS_UTILITY;
      }

      else
      {
        v14 = QOS_CLASS_USER_INITIATED;
      }

      goto LABEL_15;
    }

    if (service == 5)
    {
      v14 = QOS_CLASS_USER_INTERACTIVE;
      goto LABEL_15;
    }

    if (service == 6)
    {
      v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v12);
LABEL_16:
      v17 = v15;
      v16 = objc_opt_self();

      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (service)
  {
    if (service == 2)
    {
      v14 = QOS_CLASS_BACKGROUND;
LABEL_15:
      v15 = dispatch_block_create_with_qos_class(0, v14, 0, v12);
      goto LABEL_16;
    }

LABEL_11:
    v14 = QOS_CLASS_DEFAULT;
    goto LABEL_15;
  }

  v16 = _Block_copy(v12);
LABEL_17:

  v18 = MEMORY[0x1E69E96A0];
  dispatch_after(delay, MEMORY[0x1E69E96A0], v16);

  v19 = v24;
  v20 = v10;

  return v10;
}

@end