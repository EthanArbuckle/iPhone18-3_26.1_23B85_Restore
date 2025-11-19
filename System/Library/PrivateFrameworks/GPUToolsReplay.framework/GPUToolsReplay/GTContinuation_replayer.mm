@interface GTContinuation_replayer
- (GTContinuation_replayer)init;
- (GTContinuation_replayer)initWithQueue:(id)a3 block:(id)a4;
- (void)dealloc;
@end

@implementation GTContinuation_replayer

- (void)dealloc
{
  dispatch_release(self->queue);
  v3.receiver = self;
  v3.super_class = GTContinuation_replayer;
  [(GTContinuation_replayer *)&v3 dealloc];
}

- (GTContinuation_replayer)initWithQueue:(id)a3 block:(id)a4
{
  if (!a3)
  {
    if (s_logUsingOsLog == 1)
    {
      v8 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v9 = "fail: queue cannot be NULL";
        goto LABEL_12;
      }

LABEL_16:
      abort();
    }

    v10 = *MEMORY[0x277D85DF8];
    v11 = MEMORY[0x277CCACA8];
    v12 = @"fail: queue cannot be NULL";
LABEL_15:
    fprintf(v10, "%s\n", [objc_msgSend(v11 stringWithFormat:v12, a4), "UTF8String"]);
    goto LABEL_16;
  }

  if (!a4)
  {
    if (s_logUsingOsLog == 1)
    {
      v8 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v9 = "fail: block cannot be NULL";
LABEL_12:
        _os_log_fault_impl(&dword_24D764000, v8, OS_LOG_TYPE_FAULT, v9, buf, 2u);
        abort();
      }

      goto LABEL_16;
    }

    v10 = *MEMORY[0x277D85DF8];
    v11 = MEMORY[0x277CCACA8];
    v12 = @"fail: block cannot be NULL";
    goto LABEL_15;
  }

  v13.receiver = self;
  v13.super_class = GTContinuation_replayer;
  v6 = [(GTContinuation_replayer *)&v13 init];
  if (v6)
  {
    dispatch_retain(a3);
    v6->queue = a3;
    v6->block = [a4 copy];
  }

  return v6;
}

- (GTContinuation_replayer)init
{
  [(GTContinuation_replayer *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end