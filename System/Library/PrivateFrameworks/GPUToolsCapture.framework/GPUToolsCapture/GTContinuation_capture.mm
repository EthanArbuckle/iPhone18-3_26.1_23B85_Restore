@interface GTContinuation_capture
- (GTContinuation_capture)init;
- (GTContinuation_capture)initWithQueue:(id)queue block:(id)block;
- (void)dealloc;
@end

@implementation GTContinuation_capture

- (void)dealloc
{
  dispatch_release(self->queue);
  v3.receiver = self;
  v3.super_class = GTContinuation_capture;
  [(GTContinuation_capture *)&v3 dealloc];
}

- (GTContinuation_capture)initWithQueue:(id)queue block:(id)block
{
  if (!queue)
  {
    if (s_logUsingOsLog == 1)
    {
      v8 = gt_tagged_log(16);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v9 = "fail: queue cannot be NULL";
        goto LABEL_12;
      }

LABEL_16:
      abort();
    }

    v10 = __stderrp;
    v11 = @"fail: queue cannot be NULL";
LABEL_15:
    fprintf(v10, "%s\n", [[NSString stringWithFormat:?];
    goto LABEL_16;
  }

  if (!block)
  {
    if (s_logUsingOsLog == 1)
    {
      v8 = gt_tagged_log(16);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v9 = "fail: block cannot be NULL";
LABEL_12:
        _os_log_fault_impl(&dword_0, v8, OS_LOG_TYPE_FAULT, v9, buf, 2u);
        abort();
      }

      goto LABEL_16;
    }

    v10 = __stderrp;
    v11 = @"fail: block cannot be NULL";
    goto LABEL_15;
  }

  v12.receiver = self;
  v12.super_class = GTContinuation_capture;
  v6 = [(GTContinuation_capture *)&v12 init];
  if (v6)
  {
    dispatch_retain(queue);
    v6->queue = queue;
    v6->block = [block copy];
  }

  return v6;
}

- (GTContinuation_capture)init
{
  [(GTContinuation_capture *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end