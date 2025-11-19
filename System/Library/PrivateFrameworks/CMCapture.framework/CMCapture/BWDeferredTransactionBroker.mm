@interface BWDeferredTransactionBroker
+ (id)sharedInstance;
- (void)_openTransaction:(uint64_t)a3 pid:(uint64_t)a4 name:;
- (void)closeTransaction:(int)a3;
- (void)exitImmediately;
@end

@implementation BWDeferredTransactionBroker

+ (id)sharedInstance
{
  if (sharedInstance_sOnceEngineToken != -1)
  {
    +[BWDeferredTransactionBroker sharedInstance];
  }

  return sharedInstance_sBroker;
}

- (void)exitImmediately
{
  os_unfair_lock_lock(&self->_lock);
  for (i = 16; i != 96; i += 16)
  {
    v4 = *(&self->super.isa + i);
    if (v4)
    {

      *(&self->super.isa + i) = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  if ((xpc_transaction_try_exit_clean() & 1) == 0)
  {
    _exit(0);
  }
}

- (void)_openTransaction:(uint64_t)a3 pid:(uint64_t)a4 name:
{
  if (a1)
  {
    if (a2 >= 5)
    {
      [BWDeferredTransactionBroker _openTransaction:pid:name:];
    }

    [(BWDeferredTransactionBroker *)a1 _openTransaction:a2 pid:a3 name:a4];
  }
}

- (void)closeTransaction:(int)a3
{
  if (a3 >= 5)
  {
    [BWDeferredTransactionBroker _openTransaction:pid:name:];
  }

  os_unfair_lock_lock(&self->_lock);
  v5 = self + 16 * a3;
  v6 = *(v5 + 6);
  if (v6)
  {
    v7 = v6 - 1;
    *(v5 + 6) = v7;
    if (!v7)
    {
      v8 = *(v5 + 2);
      if (v8)
      {

        *(v5 + 2) = 0;
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

uint64_t __45__BWDeferredTransactionBroker_sharedInstance__block_invoke()
{
  v0 = [BWDeferredTransactionBroker alloc];
  if (v0)
  {
    v2.receiver = v0;
    v2.super_class = BWDeferredTransactionBroker;
    v0 = objc_msgSendSuper2(&v2, sel_init);
    if (v0)
    {
      v0->_lock._os_unfair_lock_opaque = 0;
    }
  }

  sharedInstance_sBroker = v0;
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_0_68();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_0_68();
  return fig_note_initialize_category_with_default_work_cf();
}

- (void)_openTransaction:(uint64_t)a3 pid:(uint64_t)a4 name:.cold.2(os_unfair_lock_s *a1, int a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(a1 + 2);
  v7 = &a1[4 * a2];
  os_unfair_lock_opaque = v7[6]._os_unfair_lock_opaque;
  if (!os_unfair_lock_opaque)
  {
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v10 = _transactionNames[a2];
    if (a4)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-%@", a4];
    }

    else
    {
      v11 = &stru_1F216A3D0;
    }

    v12 = [v9 initWithFormat:@"FigCaptureDeferred-%s%@", v10, v11];
    [v12 cStringUsingEncoding:4];
    *&v7[4]._os_unfair_lock_opaque = FigOSTransactionCreate();

    os_unfair_lock_opaque = v7[6]._os_unfair_lock_opaque;
  }

  v7[6]._os_unfair_lock_opaque = os_unfair_lock_opaque + 1;

  os_unfair_lock_unlock(a1 + 2);
}

@end