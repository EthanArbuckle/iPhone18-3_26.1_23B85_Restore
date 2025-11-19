@interface MBLogHelper
@end

@implementation MBLogHelper

uint64_t ___MBLogHelper_block_invoke_2()
{
  pthread_mutex_lock(&sLogLock);
  dispatch_source_set_timer(sFlushTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  if (sLog)
  {
    fflush(sLog);
  }

  return pthread_mutex_unlock(&sLogLock);
}

void ___MBLogHelper_block_invoke()
{
  _MBLogHelper_pid = getpid();
  v0 = dispatch_get_global_queue(17, 0);
  v1 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v0);
  v2 = sFlushTimer;
  sFlushTimer = v1;

  dispatch_source_set_timer(sFlushTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler(sFlushTimer, &__block_literal_global_11);
  v3 = sFlushTimer;

  dispatch_resume(v3);
}

@end