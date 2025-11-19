@interface NRBypassQueue
- (NRBypassQueue)init;
- (void)resume;
- (void)suspend;
@end

@implementation NRBypassQueue

- (NRBypassQueue)init
{
  v9.receiver = self;
  v9.super_class = NRBypassQueue;
  v2 = [(NRBypassQueue *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.nanoregistry.bypass.queue", v3);
    v5 = *(v2 + 2);
    *(v2 + 2) = v4;

    v6 = dispatch_queue_create_with_target_V2("com.apple.nanoregistry.suspendable.queue", v3, *(v2 + 2));
    v7 = *(v2 + 1);
    *(v2 + 1) = v6;

    *(v2 + 7) = 0;
  }

  return v2;
}

void __24__NRBypassQueue_suspend__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    dispatch_suspend(*(*(a1 + 32) + 8));
  }
}

- (void)suspend
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __24__NRBypassQueue_suspend__block_invoke;
  v4[3] = &unk_1E86DAE98;
  v4[4] = self;
  v3 = self;
  os_unfair_lock_lock_with_options();
  __24__NRBypassQueue_suspend__block_invoke(v4);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)resume
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __23__NRBypassQueue_resume__block_invoke;
  v4[3] = &unk_1E86DAE98;
  v4[4] = self;
  v3 = self;
  os_unfair_lock_lock_with_options();
  __23__NRBypassQueue_resume__block_invoke(v4);
  os_unfair_lock_unlock(&self->_lock);
}

void __23__NRBypassQueue_resume__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 24) == 1)
  {
    *(v1 + 24) = 0;
    dispatch_resume(*(*(a1 + 32) + 8));
  }
}

@end