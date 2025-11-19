@interface _MFMessageContentRequestScheduler
- (id)afterDelay:(double)a3 performBlock:(id)a4;
- (id)initWithScheduler:(void *)a3 requestID:(void *)a4 messagePersistence:;
- (id)performCancelableBlock:(id)a3;
- (id)performWithObject:(id)a3;
- (void)performBlock:(id)a3;
- (void)performBlockWithActivity:(uint64_t)a3 requestID:;
- (void)performSyncBarrierBlock:(id)a3;
- (void)performSyncBlock:(id)a3;
- (void)performVoucherPreservingBlock:(id)a3;
@end

@implementation _MFMessageContentRequestScheduler

- (id)initWithScheduler:(void *)a3 requestID:(void *)a4 messagePersistence:
{
  v8 = a2;
  v9 = a4;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = _MFMessageContentRequestScheduler;
    v10 = objc_msgSendSuper2(&v12, sel_init);
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 2, a2);
      objc_storeStrong(a1 + 3, a4);
      a1[1] = a3;
    }
  }

  return a1;
}

- (id)afterDelay:(double)a3 performBlock:(id)a4
{
  v6 = a4;
  requestID = self->_requestID;
  scheduler = self->_scheduler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61___MFMessageContentRequestScheduler_afterDelay_performBlock___block_invoke;
  v12[3] = &unk_1E7AA6E50;
  v12[4] = self;
  v13 = v6;
  v14 = requestID;
  v9 = v6;
  v10 = [(EFScheduler *)scheduler afterDelay:v12 performBlock:a3];

  return v10;
}

- (void)performBlockWithActivity:(uint64_t)a3 requestID:
{
  v5 = a2;
  if (a1)
  {
    if (a3)
    {
      v6 = [MEMORY[0x1E699AC90] signpostLog];
      v7 = v6;
      v8 = *(a1 + 8);
      if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
      {
        *v10 = 0;
        _os_signpost_emit_with_name_impl(&dword_1B0389000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v8, "MFMessageContentRequestScheduler", "Begin work on scheduler", v10, 2u);
      }
    }

    v5[2](v5);
    if (a3)
    {
      v9 = [MEMORY[0x1E699AC90] signpostLog];
      [_MFMessageContentRequestScheduler performBlockWithActivity:v9 requestID:a1];
    }
  }
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  requestID = self->_requestID;
  scheduler = self->_scheduler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50___MFMessageContentRequestScheduler_performBlock___block_invoke;
  v8[3] = &unk_1E7AA6E50;
  v8[4] = self;
  v9 = v4;
  v10 = requestID;
  v7 = v4;
  [(EFScheduler *)scheduler performBlock:v8];
}

- (id)performCancelableBlock:(id)a3
{
  v4 = a3;
  scheduler = self->_scheduler;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60___MFMessageContentRequestScheduler_performCancelableBlock___block_invoke;
  v9[3] = &unk_1E7AA6E78;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [(EFScheduler *)scheduler performCancelableBlock:v9];

  return v7;
}

- (void)performSyncBlock:(id)a3
{
  v4 = a3;
  requestID = self->_requestID;
  scheduler = self->_scheduler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54___MFMessageContentRequestScheduler_performSyncBlock___block_invoke;
  v8[3] = &unk_1E7AA6E50;
  v8[4] = self;
  v9 = v4;
  v10 = requestID;
  v7 = v4;
  [(EFScheduler *)scheduler performSyncBlock:v8];
}

- (void)performSyncBarrierBlock:(id)a3
{
  v4 = a3;
  requestID = self->_requestID;
  scheduler = self->_scheduler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61___MFMessageContentRequestScheduler_performSyncBarrierBlock___block_invoke;
  v8[3] = &unk_1E7AA6E50;
  v8[4] = self;
  v9 = v4;
  v10 = requestID;
  v7 = v4;
  [(EFScheduler *)scheduler performSyncBarrierBlock:v8];
}

- (void)performVoucherPreservingBlock:(id)a3
{
  v4 = a3;
  requestID = self->_requestID;
  scheduler = self->_scheduler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67___MFMessageContentRequestScheduler_performVoucherPreservingBlock___block_invoke;
  v8[3] = &unk_1E7AA6E50;
  v8[4] = self;
  v9 = v4;
  v10 = requestID;
  v7 = v4;
  [(EFScheduler *)scheduler performVoucherPreservingBlock:v8];
}

- (id)performWithObject:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() onScheduler:self performWithObject:v4];

  return v5;
}

- (void)performBlockWithActivity:(os_log_t)log requestID:(uint64_t)a2 .cold.1(os_log_t log, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(log))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0389000, log, OS_SIGNPOST_INTERVAL_END, v3, "MFMessageContentRequestScheduler", "End work on scheduler", v4, 2u);
  }
}

@end