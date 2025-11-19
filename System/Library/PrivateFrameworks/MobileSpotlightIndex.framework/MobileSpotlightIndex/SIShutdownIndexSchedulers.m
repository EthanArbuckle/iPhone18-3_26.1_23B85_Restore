@interface SIShutdownIndexSchedulers
@end

@implementation SIShutdownIndexSchedulers

void ___SIShutdownIndexSchedulers_block_invoke(uint64_t a1)
{
  for (i = 0; i != 168; i += 8)
  {
    si_workqueue_destroy(*(*(a1 + 32) + i));
  }

  free(*(a1 + 32));
  for (j = 40; j != 176; j += 8)
  {
    v4 = *(a1 + j);
    if (v4)
    {
      si_scheduler_drain_locked(v4, *(a1 + 360));
    }
  }

  for (k = 40; k != 176; k += 8)
  {
    v6 = *(a1 + k);
    if (v6 && atomic_fetch_add((v6 + 96), 0xFFFFFFFF) == 1)
    {
      _si_scheduler_destroy(v6);
    }
  }

  v7 = *(a1 + 360);
  v8 = *(a1 + 368);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___SIShutdownIndexSchedulers_block_invoke_2;
  block[3] = &__block_descriptor_tmp_1204;
  v13 = *(a1 + 392);
  v10 = *(a1 + 376);
  v11 = v8;
  v12 = v7;
  dispatch_group_notify(v7, v8, block);
}

void ___SIShutdownIndexSchedulers_block_invoke_2(uint64_t a1)
{
  if (!*(a1 + 64))
  {
    pthread_mutex_lock(&schlock);
    v2 = 0;
    v3 = 0;
    v4 = *MEMORY[0x1E695E480];
    v5 = &byte_1F427B2D9;
    do
    {
      v6 = global_schedulers[v2];
      if (v6)
      {
        v7 = *v5 ? 32 : 40;
        v8 = *(a1 + v7);
        value = 0;
        if (CFDictionaryGetValueIfPresent(v6, v8, &value))
        {
          if (!atomic_load(value + 25))
          {
            if (!v3)
            {
              callBacks = *byte_1F427BAE8;
              v3 = CFArrayCreateMutable(v4, 0, &callBacks);
            }

            CFArrayAppendValue(v3, value);
            CFDictionaryRemoveValue(global_schedulers[v2], v8);
          }
        }
      }

      ++v2;
      v5 += 56;
    }

    while (v2 != 12);
    pthread_mutex_unlock(&schlock);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = ___SIShutdownIndexSchedulers_block_invoke_3;
  v11[3] = &__block_descriptor_tmp_1203;
  v10 = *(a1 + 48);
  v11[4] = *(a1 + 56);
  dispatch_async(v10, v11);
}

@end