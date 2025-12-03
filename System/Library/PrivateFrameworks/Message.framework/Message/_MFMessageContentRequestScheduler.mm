@interface _MFMessageContentRequestScheduler
- (id)afterDelay:(double)delay performBlock:(id)block;
- (id)initWithScheduler:(void *)scheduler requestID:(void *)d messagePersistence:;
- (id)performCancelableBlock:(id)block;
- (id)performWithObject:(id)object;
- (void)performBlock:(id)block;
- (void)performBlockWithActivity:(uint64_t)activity requestID:;
- (void)performSyncBarrierBlock:(id)block;
- (void)performSyncBlock:(id)block;
- (void)performVoucherPreservingBlock:(id)block;
@end

@implementation _MFMessageContentRequestScheduler

- (id)initWithScheduler:(void *)scheduler requestID:(void *)d messagePersistence:
{
  v8 = a2;
  dCopy = d;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = _MFMessageContentRequestScheduler;
    v10 = objc_msgSendSuper2(&v12, sel_init);
    self = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 2, a2);
      objc_storeStrong(self + 3, d);
      self[1] = scheduler;
    }
  }

  return self;
}

- (id)afterDelay:(double)delay performBlock:(id)block
{
  blockCopy = block;
  requestID = self->_requestID;
  scheduler = self->_scheduler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61___MFMessageContentRequestScheduler_afterDelay_performBlock___block_invoke;
  v12[3] = &unk_1E7AA6E50;
  v12[4] = self;
  v13 = blockCopy;
  v14 = requestID;
  v9 = blockCopy;
  v10 = [(EFScheduler *)scheduler afterDelay:v12 performBlock:delay];

  return v10;
}

- (void)performBlockWithActivity:(uint64_t)activity requestID:
{
  v5 = a2;
  if (self)
  {
    if (activity)
    {
      signpostLog = [MEMORY[0x1E699AC90] signpostLog];
      v7 = signpostLog;
      v8 = *(self + 8);
      if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(signpostLog))
      {
        *v10 = 0;
        _os_signpost_emit_with_name_impl(&dword_1B0389000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v8, "MFMessageContentRequestScheduler", "Begin work on scheduler", v10, 2u);
      }
    }

    v5[2](v5);
    if (activity)
    {
      signpostLog2 = [MEMORY[0x1E699AC90] signpostLog];
      [_MFMessageContentRequestScheduler performBlockWithActivity:signpostLog2 requestID:self];
    }
  }
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  requestID = self->_requestID;
  scheduler = self->_scheduler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50___MFMessageContentRequestScheduler_performBlock___block_invoke;
  v8[3] = &unk_1E7AA6E50;
  v8[4] = self;
  v9 = blockCopy;
  v10 = requestID;
  v7 = blockCopy;
  [(EFScheduler *)scheduler performBlock:v8];
}

- (id)performCancelableBlock:(id)block
{
  blockCopy = block;
  scheduler = self->_scheduler;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60___MFMessageContentRequestScheduler_performCancelableBlock___block_invoke;
  v9[3] = &unk_1E7AA6E78;
  v9[4] = self;
  v10 = blockCopy;
  v6 = blockCopy;
  v7 = [(EFScheduler *)scheduler performCancelableBlock:v9];

  return v7;
}

- (void)performSyncBlock:(id)block
{
  blockCopy = block;
  requestID = self->_requestID;
  scheduler = self->_scheduler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54___MFMessageContentRequestScheduler_performSyncBlock___block_invoke;
  v8[3] = &unk_1E7AA6E50;
  v8[4] = self;
  v9 = blockCopy;
  v10 = requestID;
  v7 = blockCopy;
  [(EFScheduler *)scheduler performSyncBlock:v8];
}

- (void)performSyncBarrierBlock:(id)block
{
  blockCopy = block;
  requestID = self->_requestID;
  scheduler = self->_scheduler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61___MFMessageContentRequestScheduler_performSyncBarrierBlock___block_invoke;
  v8[3] = &unk_1E7AA6E50;
  v8[4] = self;
  v9 = blockCopy;
  v10 = requestID;
  v7 = blockCopy;
  [(EFScheduler *)scheduler performSyncBarrierBlock:v8];
}

- (void)performVoucherPreservingBlock:(id)block
{
  blockCopy = block;
  requestID = self->_requestID;
  scheduler = self->_scheduler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67___MFMessageContentRequestScheduler_performVoucherPreservingBlock___block_invoke;
  v8[3] = &unk_1E7AA6E50;
  v8[4] = self;
  v9 = blockCopy;
  v10 = requestID;
  v7 = blockCopy;
  [(EFScheduler *)scheduler performVoucherPreservingBlock:v8];
}

- (id)performWithObject:(id)object
{
  objectCopy = object;
  v5 = [objc_opt_class() onScheduler:self performWithObject:objectCopy];

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