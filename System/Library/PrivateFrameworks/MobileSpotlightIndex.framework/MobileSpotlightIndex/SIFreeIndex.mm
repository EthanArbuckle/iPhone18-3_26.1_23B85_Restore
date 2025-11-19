@interface SIFreeIndex
@end

@implementation SIFreeIndex

void ___SIFreeIndex_block_invoke_3(uint64_t a1)
{
  si_cancel_activectx(*(a1 + 32));
  v2 = *(a1 + 32);
  v3 = v2[8];
  if (v3)
  {
    v2[8] = 0;
    *(v3 + 105) = 1;
    if (*v3)
    {
      dispatch_source_cancel(*v3);
      dispatch_resume(*v3);
      dispatch_release(*v3);
      dispatch_sync(*(v3 + 8), &__block_literal_global_4015);
      dispatch_release(*(v3 + 8));
    }

    free(v3);
    v2 = *(a1 + 32);
  }

  free(v2);
}

void ___SIFreeIndex_block_invoke_4(uint64_t a1)
{
  pthread_mutex_lock(&schlock);
  if (global_schedulers[0])
  {
    value = 0;
    if (CFDictionaryGetValueIfPresent(global_schedulers[0], *(a1 + 32), &value) && (v2 = atomic_load(value + 25)) == 0)
    {
      callBacks = *byte_1F427BAE8;
      v3 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, &callBacks);
      CFArrayAppendValue(v3, value);
      CFDictionaryRemoveValue(global_schedulers[0], *(a1 + 32));
      pthread_mutex_unlock(&schlock);
      if (v3)
      {
        CFRelease(v3);
      }
    }

    else
    {
      pthread_mutex_unlock(&schlock);
    }
  }

  else
  {

    pthread_mutex_unlock(&schlock);
  }
}

dispatch_queue_t ___SIFreeIndex_block_invoke_2()
{
  result = dispatch_queue_create("index flush suspend queue", 0);
  gFlushSuspendQueue = result;
  return result;
}

@end