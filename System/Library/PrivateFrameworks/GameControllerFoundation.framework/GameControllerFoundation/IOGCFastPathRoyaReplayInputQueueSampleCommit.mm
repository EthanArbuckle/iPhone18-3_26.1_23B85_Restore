@interface IOGCFastPathRoyaReplayInputQueueSampleCommit
@end

@implementation IOGCFastPathRoyaReplayInputQueueSampleCommit

uint64_t ____IOGCFastPathRoyaReplayInputQueueSampleCommit_block_invoke(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock_with_options();
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  os_unfair_lock_unlock(a2);
  v6 = *(v5 + 24);
  v7 = atomic_load((*(a1 + 32) + 160));
  if (v6 >= v7)
  {
    atomic_store(v6, (*(a1 + 32) + 160));
    atomic_store(atomic_load_explicit((*(a1 + 32) + 144), memory_order_acquire), (*(a1 + 32) + 146));
  }

  return 0;
}

@end