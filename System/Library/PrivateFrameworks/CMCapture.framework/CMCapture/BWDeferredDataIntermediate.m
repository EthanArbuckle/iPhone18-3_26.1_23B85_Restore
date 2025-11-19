@interface BWDeferredDataIntermediate
- (id)fetchWithCustomClassesAndRetain:(id)a3 err:(int *)a4;
- (uint64_t)_setURL:(NSObject *)a3 prefetchQueue:;
- (void)dealloc;
@end

@implementation BWDeferredDataIntermediate

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWDeferredDataIntermediate;
  [(BWDeferredIntermediate *)&v3 dealloc];
}

uint64_t __52__BWDeferredDataIntermediate__setURL_prefetchQueue___block_invoke(uint64_t a1)
{
  v4 = 0;
  v2 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:*(*(a1 + 32) + 128) options:0 error:&v4];
  if (v4)
  {
    __52__BWDeferredDataIntermediate__setURL_prefetchQueue___block_invoke_cold_1();
  }

  pthread_mutex_lock((*(a1 + 32) + 8));
  if (!v4)
  {
    *(*(a1 + 32) + 152) = v2;
  }

  *(*(a1 + 32) + 144) = 0;
  pthread_cond_signal((*(a1 + 32) + 72));
  return pthread_mutex_unlock((*(a1 + 32) + 8));
}

- (id)fetchWithCustomClassesAndRetain:(id)a3 err:(int *)a4
{
  if (a4)
  {
    *a4 = -16136;
  }

  return 0;
}

- (uint64_t)_setURL:(NSObject *)a3 prefetchQueue:
{
  if (result)
  {
    if (a2)
    {
      v3 = result;
      if (*(result + 152) || *(result + 128))
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
        return 4294951161;
      }

      else
      {
        *(result + 128) = [a2 copy];
        if (a3)
        {
          *(v3 + 144) = 1;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __52__BWDeferredDataIntermediate__setURL_prefetchQueue___block_invoke;
          block[3] = &unk_1E798F870;
          block[4] = v3;
          dispatch_async(a3, block);
        }

        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      return 4294951162;
    }
  }

  return result;
}

@end