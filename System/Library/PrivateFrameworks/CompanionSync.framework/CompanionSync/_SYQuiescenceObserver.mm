@interface _SYQuiescenceObserver
- (BOOL)waitForDeallocationCompleteWithTimeout:(double)a3;
- (BOOL)waitForQuiescenceWithTimeout:(double)a3;
- (void)decrementAllocationCount:(id)a3;
- (void)incrementAllocationCount:(id)a3;
- (void)notifyOnDeallocationComplete:(id)a3;
- (void)notifyOnQuiescence:(id)a3;
- (void)registerQueue:(id)a3;
@end

@implementation _SYQuiescenceObserver

- (void)registerQueue:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = self->_quiescenceQueues;
    objc_sync_enter(v5);
    [(NSPointerArray *)self->_quiescenceQueues addPointer:v6];
    objc_sync_exit(v5);

    v4 = v6;
  }
}

- (BOOL)waitForQuiescenceWithTimeout:(double)a3
{
  if (a3 >= 0.0)
  {
    v5 = dispatch_time(0, (a3 * 1000000000.0));
  }

  else
  {
    v5 = -1;
  }

  v6 = _EnqueueOnNewGroup(self->_quiescenceQueues);
  v7 = _dispatch_group_wait_off_main_thread(v6, v5, a3) == 0;

  return v7;
}

- (void)notifyOnQuiescence:(id)a3
{
  quiescenceQueues = self->_quiescenceQueues;
  v4 = a3;
  group = _EnqueueOnNewGroup(quiescenceQueues);
  v5 = dispatch_get_global_queue(21, 0);
  dispatch_group_notify(group, v5, v4);
}

- (void)incrementAllocationCount:(id)a3
{
  v7 = a3;
  v5 = objc_opt_new();
  [v5 setObject:v7];
  [v5 setReturnAddress:v3];
  v6 = self->_allocations;
  objc_sync_enter(v6);
  [(NSMutableSet *)self->_allocations addObject:v5];
  objc_sync_exit(v6);

  dispatch_group_enter(self->_allocationGroup);
}

- (void)decrementAllocationCount:(id)a3
{
  v5 = a3;
  v4 = self->_allocations;
  objc_sync_enter(v4);
  _CleanupAllocations(self->_allocations);
  objc_sync_exit(v4);

  dispatch_group_leave(self->_allocationGroup);
}

- (BOOL)waitForDeallocationCompleteWithTimeout:(double)a3
{
  if (a3 >= 0.0)
  {
    v5 = dispatch_time(0, (a3 * 1000000000.0));
  }

  else
  {
    v5 = -1;
  }

  v6 = _dispatch_group_wait_off_main_thread(self->_allocationGroup, v5, a3);
  v7 = self->_allocations;
  objc_sync_enter(v7);
  _CleanupAllocations(self->_allocations);
  objc_sync_exit(v7);

  if (v6)
  {
    NSLog(&cfstr_ArghBreakHereP.isa);
  }

  return v6 == 0;
}

- (void)notifyOnDeallocationComplete:(id)a3
{
  v4 = [a3 copy];
  allocationGroup = self->_allocationGroup;
  v6 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54___SYQuiescenceObserver_notifyOnDeallocationComplete___block_invoke;
  block[3] = &unk_1E86CAA90;
  v9 = v4;
  v7 = v4;
  dispatch_group_notify(allocationGroup, v6, block);
}

@end