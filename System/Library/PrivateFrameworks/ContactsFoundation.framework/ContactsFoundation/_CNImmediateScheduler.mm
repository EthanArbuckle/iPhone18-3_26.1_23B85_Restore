@interface _CNImmediateScheduler
- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5;
- (id)performCancelableBlock:(id)a3 qualityOfService:(unint64_t)a4;
- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4;
@end

@implementation _CNImmediateScheduler

- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = v5;
  v12 = v7;
  if (a4 <= 2)
  {
    if (!a4)
    {
      v10 = _Block_copy(v7);
      goto LABEL_17;
    }

    if (a4 == 2)
    {
      v8 = QOS_CLASS_BACKGROUND;
LABEL_15:
      v9 = dispatch_block_create_with_qos_class(0, v8, 0, v7);
      goto LABEL_16;
    }

LABEL_11:
    v8 = QOS_CLASS_DEFAULT;
    goto LABEL_15;
  }

  if (a4 <= 4)
  {
    if (a4 == 3)
    {
      v8 = QOS_CLASS_UTILITY;
    }

    else
    {
      v8 = QOS_CLASS_USER_INITIATED;
    }

    goto LABEL_15;
  }

  if (a4 == 5)
  {
    v8 = QOS_CLASS_USER_INTERACTIVE;
    goto LABEL_15;
  }

  if (a4 != 6)
  {
    goto LABEL_11;
  }

  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v7);
LABEL_16:
  v11 = v9;
  v10 = objc_opt_self();

LABEL_17:
  v10[2](v10);

  objc_autoreleasePoolPop(v6);
}

- (id)performCancelableBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(CNImmediateSchedulerCancelationToken);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65___CNImmediateScheduler_performCancelableBlock_qualityOfService___block_invoke;
  v18[3] = &unk_1E6ED52C0;
  v7 = v5;
  v20 = v7;
  v8 = v6;
  v19 = v8;
  v9 = v18;
  v10 = v9;
  if (a4 > 2)
  {
    if (a4 <= 4)
    {
      if (a4 == 3)
      {
        v11 = QOS_CLASS_UTILITY;
      }

      else
      {
        v11 = QOS_CLASS_USER_INITIATED;
      }

      goto LABEL_15;
    }

    if (a4 == 5)
    {
      v11 = QOS_CLASS_USER_INTERACTIVE;
      goto LABEL_15;
    }

    if (a4 == 6)
    {
      v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v9);
LABEL_16:
      v14 = v12;
      v13 = objc_opt_self();

      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (a4)
  {
    if (a4 == 2)
    {
      v11 = QOS_CLASS_BACKGROUND;
LABEL_15:
      v12 = dispatch_block_create_with_qos_class(0, v11, 0, v9);
      goto LABEL_16;
    }

LABEL_11:
    v11 = QOS_CLASS_DEFAULT;
    goto LABEL_15;
  }

  v13 = _Block_copy(v9);
LABEL_17:

  v13[2](v13);
  v15 = v19;
  v16 = v8;

  return v8;
}

- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5
{
  v8 = MEMORY[0x1E696AF00];
  v9 = a4;
  [v8 sleepForTimeInterval:a3];
  [(_CNImmediateScheduler *)self performBlock:v9 qualityOfService:a5];

  v10 = objc_alloc_init(CNImmediateSchedulerCancelationToken);

  return v10;
}

@end