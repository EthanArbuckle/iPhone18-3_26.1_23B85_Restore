@interface SetupAvailabilityChangedHandlerForServiceEntry
@end

@implementation SetupAvailabilityChangedHandlerForServiceEntry

void ___SetupAvailabilityChangedHandlerForServiceEntry_block_invoke(uint64_t a1, int token)
{
  state64 = 0xAAAAAAAAAAAAAAAALL;
  notify_get_state(token, &state64);
  pthread_rwlock_wrlock(&stru_280AEE6C8);
  v3 = *(a1 + 32);
  *(&_MergedGlobals_2 + v3) = state64 != 0;
  v4 = _Block_copy(*(&_MergedGlobals_2 + v3 + 3));
  pthread_rwlock_unlock(&stru_280AEE6C8);
  if (v4)
  {
    v4[2](v4, state64 != 0);
    _Block_release(v4);
  }
}

@end