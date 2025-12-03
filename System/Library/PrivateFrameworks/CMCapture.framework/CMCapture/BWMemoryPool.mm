@interface BWMemoryPool
+ (BWMemoryPool)sharedMemoryPool;
+ (void)initialize;
- (BOOL)getInUseFootprint:(unint64_t *)footprint andOutOfUseFootprint:(unint64_t *)useFootprint;
- (BWMemoryPool)init;
- (id)newFlushAssertion:(id)assertion;
- (id)newMTLBufferWithLength:(unint64_t)length forDevice:(id)device;
- (int)disableForCaptureDevice:(id)device;
- (int)disableForCaptureStream:(id)stream;
- (int)enableForCaptureDevice:(id)device;
- (int)enableForCaptureStream:(id)stream;
- (uint64_t)_createMemoryPoolWithMaximizeSystemMemory:(uint64_t)result;
- (uint64_t)_ensureMemoryWithSize:(int)size withMaximizeSystemMemory:(int)memory useOptimizedMemorySizeDistributionsIfAvailable:;
- (uint64_t)_maximizeAvailableSystemMemory;
- (uint64_t)_sizesDistributionWithTotalSize:(int)size useOptimizedMemorySizeDistributionsIfAvailable:;
- (void)_addFlushAssertion;
- (void)_checkRemainingFlushAssertions;
- (void)_disable;
- (void)_releaseModelManagerAssertion;
- (void)_removeFlushAssertion;
- (void)dealloc;
- (void)disableForClientBundleId:(id)id;
- (void)disableWithCompletionHandler:(id)handler;
- (void)enableForPixelBufferAttributes:(id)attributes;
- (void)ensureMemoryAsyncWithSize:(unint64_t)size withMaximizeSystemMemory:(BOOL)memory useOptimizedMemorySizeDistributionsIfAvailable:(BOOL)available forClientBundleId:(id)id;
- (void)flush;
- (void)releaseModelManagerAssertion;
@end

@implementation BWMemoryPool

+ (BWMemoryPool)sharedMemoryPool
{
  if (sharedMemoryPool_initMemoryPool != -1)
  {
    +[BWMemoryPool sharedMemoryPool];
  }

  return sharedMemoryPool_sMemoryPool;
}

- (void)_addFlushAssertion
{
  os_unfair_lock_lock(&self->_flushAssertionLock);
  ++self->_flushAssertionCount;

  os_unfair_lock_unlock(&self->_flushAssertionLock);
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWMemoryPool)init
{
  v5.receiver = self;
  v5.super_class = BWMemoryPool;
  v2 = [(BWMemoryPool *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v2->_queue = dispatch_queue_create("com.apple.bwgraph.memorypool", v3);
    *&v2->_flushAssertionCount = 0;
    v2->_clientDenyList = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{0x1F21851F0, 0}];
  }

  return v2;
}

- (void)dealloc
{
  [(BWMemoryPool *)self _disable];

  v3.receiver = self;
  v3.super_class = BWMemoryPool;
  [(BWMemoryPool *)&v3 dealloc];
}

- (void)releaseModelManagerAssertion
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__BWMemoryPool_releaseModelManagerAssertion__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_async(queue, block);
}

void __46__BWMemoryPool__maximizeAvailableSystemMemory__block_invoke()
{
  if (dword_1ED8445D0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)ensureMemoryAsyncWithSize:(unint64_t)size withMaximizeSystemMemory:(BOOL)memory useOptimizedMemorySizeDistributionsIfAvailable:(BOOL)available forClientBundleId:(id)id
{
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __132__BWMemoryPool_ensureMemoryAsyncWithSize_withMaximizeSystemMemory_useOptimizedMemorySizeDistributionsIfAvailable_forClientBundleId___block_invoke;
  v7[3] = &unk_1E79988E0;
  v7[4] = self;
  v7[5] = id;
  v7[6] = size;
  memoryCopy = memory;
  availableCopy = available;
  dispatch_async(queue, v7);
}

void __132__BWMemoryPool_ensureMemoryAsyncWithSize_withMaximizeSystemMemory_useOptimizedMemorySizeDistributionsIfAvailable_forClientBundleId___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(*(a1 + 32) + 48) containsObject:*(a1 + 40)])
  {
    if (dword_1ED8445D0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    [(BWMemoryPool *)*(a1 + 32) _ensureMemoryWithSize:*(a1 + 56) withMaximizeSystemMemory:*(a1 + 57) useOptimizedMemorySizeDistributionsIfAvailable:?];
  }

  objc_autoreleasePoolPop(v2);
}

- (void)disableForClientBundleId:(id)id
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__BWMemoryPool_disableForClientBundleId___block_invoke;
  v4[3] = &unk_1E798F898;
  v4[4] = self;
  v4[5] = id;
  dispatch_sync(queue, v4);
}

void __41__BWMemoryPool_disableForClientBundleId___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 48) containsObject:*(a1 + 40)])
  {
    if (dword_1ED8445D0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v3 = *(a1 + 32);

    [(BWMemoryPool *)v3 _disable];
  }
}

- (void)disableWithCompletionHandler:(id)handler
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__BWMemoryPool_disableWithCompletionHandler___block_invoke;
  v4[3] = &unk_1E7990390;
  v4[4] = self;
  v4[5] = handler;
  dispatch_async(queue, v4);
}

- (void)flush
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__BWMemoryPool_flush__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_removeFlushAssertion
{
  os_unfair_lock_lock(&self->_flushAssertionLock);
  v3 = self->_flushAssertionCount - 1;
  self->_flushAssertionCount = v3;
  os_unfair_lock_unlock(&self->_flushAssertionLock);
  if (!v3)
  {

    [(BWMemoryPool *)self flush];
  }
}

- (void)enableForPixelBufferAttributes:(id)attributes
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__BWMemoryPool_enableForPixelBufferAttributes___block_invoke;
  v4[3] = &unk_1E798F898;
  v4[4] = self;
  v4[5] = attributes;
  dispatch_sync(queue, v4);
}

void __47__BWMemoryPool_enableForPixelBufferAttributes___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v2 = objc_alloc(MEMORY[0x1E695DF90]);
    v3 = *MEMORY[0x1E69660D8];
    v5 = [v2 initWithDictionary:{objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", *MEMORY[0x1E69660D8])}];
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(*(a1 + 32) + 24)];
    [v5 setObject:v4 forKeyedSubscript:*MEMORY[0x1E696CE38]];
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v3];
  }
}

- (int)enableForCaptureStream:(id)stream
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__BWMemoryPool_enableForCaptureStream___block_invoke;
  block[3] = &unk_1E79907B0;
  block[5] = stream;
  block[6] = &v7;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __39__BWMemoryPool_enableForCaptureStream___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 16))
  {
    v2 = result;
    result = [*(result + 40) setProperty:*off_1E798C048 value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", *(v1 + 24))}];
    *(*(*(v2 + 48) + 8) + 24) = result;
    v3 = *(*(v2 + 48) + 8);
    v4 = *(v3 + 24);
    if (v4 == -12784 || v4 == -12787)
    {
      *(v3 + 24) = 0;
    }
  }

  return result;
}

- (int)disableForCaptureStream:(id)stream
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__BWMemoryPool_disableForCaptureStream___block_invoke;
  v6[3] = &unk_1E798FAF8;
  v6[4] = stream;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __40__BWMemoryPool_disableForCaptureStream___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) setProperty:*off_1E798A010 value:&unk_1F2246378];
  *(*(*(a1 + 40) + 8) + 24) = result;
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 24);
  if (v4 == -12784 || v4 == -12787)
  {
    *(v3 + 24) = 0;
  }

  return result;
}

- (int)enableForCaptureDevice:(id)device
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__BWMemoryPool_enableForCaptureDevice___block_invoke;
  block[3] = &unk_1E79907B0;
  block[5] = device;
  block[6] = &v7;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __39__BWMemoryPool_enableForCaptureDevice___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 16))
  {
    v2 = result;
    result = [*(result + 40) setProperty:*off_1E798A010 value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", *(v1 + 24))}];
    *(*(*(v2 + 48) + 8) + 24) = result;
    v3 = *(*(v2 + 48) + 8);
    v4 = *(v3 + 24);
    if (v4 == -12784 || v4 == -12787)
    {
      *(v3 + 24) = 0;
    }
  }

  return result;
}

- (id)newMTLBufferWithLength:(unint64_t)length forDevice:(id)device
{
  if (!self->_pool)
  {
    return [device newBufferWithLength:length options:0];
  }

  v15[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{self->_poolId, *MEMORY[0x1E696CE38]}];
  v14[1] = *MEMORY[0x1E696CE30];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:length];
  v7 = *MEMORY[0x1E696CE60];
  v15[1] = v6;
  v15[2] = &unk_1F2246378;
  v8 = *MEMORY[0x1E696CFA0];
  v14[2] = v7;
  v14[3] = v8;
  v15[3] = MEMORY[0x1E695E118];
  v9 = IOSurfaceCreate([MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4]);
  if (!v9)
  {
    [BWMemoryPool newMTLBufferWithLength:forDevice:];
    return [device newBufferWithLength:length options:0];
  }

  v10 = v9;
  v11 = [device newBufferWithIOSurface:v9];
  if (!v11)
  {
    [BWMemoryPool newMTLBufferWithLength:v10 forDevice:?];
    return [device newBufferWithLength:length options:0];
  }

  v12 = v11;
  CFRelease(v10);
  return v12;
}

- (int)disableForCaptureDevice:(id)device
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__BWMemoryPool_disableForCaptureDevice___block_invoke;
  v6[3] = &unk_1E798FAF8;
  v6[4] = device;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __40__BWMemoryPool_disableForCaptureDevice___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) setProperty:*off_1E798A010 value:&unk_1F2246378];
  *(*(*(a1 + 40) + 8) + 24) = result;
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 24);
  if (v4 == -12784 || v4 == -12787)
  {
    *(v3 + 24) = 0;
  }

  return result;
}

void __45__BWMemoryPool__releaseModelManagerAssertion__block_invoke(uint64_t a1)
{
  if (dword_1ED8445D0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (BOOL)getInUseFootprint:(unint64_t *)footprint andOutOfUseFootprint:(unint64_t *)useFootprint
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__BWMemoryPool_getInUseFootprint_andOutOfUseFootprint___block_invoke;
  v7[3] = &unk_1E799B9A0;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = footprint;
  v7[7] = useFootprint;
  dispatch_sync(queue, v7);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

BWMemoryPool *__32__BWMemoryPool_sharedMemoryPool__block_invoke()
{
  result = objc_alloc_init(BWMemoryPool);
  sharedMemoryPool_sMemoryPool = result;
  return result;
}

- (void)_disable
{
  if (self)
  {

    *(self + 16) = 0;
    *(self + 24) = 0;
    [(BWMemoryPool *)self _checkRemainingFlushAssertions];

    [(BWMemoryPool *)self _releaseModelManagerAssertion];
  }
}

- (void)_releaseModelManagerAssertion
{
  if (self)
  {
    v2 = *(self + 40);
    if (v2)
    {
      if (dword_1ED8445D0)
      {
        OUTLINED_FUNCTION_0_104();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v4 = OUTLINED_FUNCTION_8_5(os_log_and_send_and_compose_flags_and_os_log_type);
        if (OUTLINED_FUNCTION_6(v4))
        {
          v5 = *(self + 40);
          v8 = 136315394;
          v9 = "[BWMemoryPool _releaseModelManagerAssertion]";
          v10 = 2048;
          v11 = v5;
          OUTLINED_FUNCTION_58_1();
        }

        OUTLINED_FUNCTION_5_75();
        v2 = *(self + 40);
      }

      v6 = v2;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __45__BWMemoryPool__releaseModelManagerAssertion__block_invoke;
      v7[3] = &unk_1E798F870;
      v7[4] = v6;
      [v6 invalidateWithCompletionHandler:v7];

      *(self + 40) = 0;
    }
  }
}

- (uint64_t)_maximizeAvailableSystemMemory
{
  if (result)
  {
    v1 = result;
    if (!*(result + 40))
    {
      if (dword_1ED8445D0)
      {
        OUTLINED_FUNCTION_0_104();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v3 = OUTLINED_FUNCTION_8_5(os_log_and_send_and_compose_flags_and_os_log_type);
        if (OUTLINED_FUNCTION_6(v3))
        {
          OUTLINED_FUNCTION_5_6();
          OUTLINED_FUNCTION_58_1();
        }

        OUTLINED_FUNCTION_5_75();
      }

      v4 = [objc_alloc(MEMORY[0x1E69B26E0]) initWithPolicy:@"Camera" description:@"com.apple.cameracapture"];
      *(v1 + 40) = v4;
      return [v4 acquireWithCompletionHandler:&__block_literal_global_110];
    }
  }

  return result;
}

- (uint64_t)_ensureMemoryWithSize:(int)size withMaximizeSystemMemory:(int)memory useOptimizedMemorySizeDistributionsIfAvailable:
{
  selfCopy = self;
  if (self)
  {
    if (a2)
    {
      if (*(self + 16) || [(BWMemoryPool *)self _createMemoryPoolWithMaximizeSystemMemory:size])
      {
        v8 = [(BWMemoryPool *)selfCopy _sizesDistributionWithTotalSize:a2 useOptimizedMemorySizeDistributionsIfAvailable:memory];
        v9 = *(selfCopy + 16);
        v64 = *MEMORY[0x1E696CF80];
        v65 = v8;
        v10 = [v9 ensureMemory:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v65, &v64, 1)}];
        selfCopy = v10 == 0;
        v18 = OUTLINED_FUNCTION_2_0(v10, v11, v12, v13, v14, v15, v16, v17, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, 0);
        if (v18)
        {
          v19 = v18;
          v20 = MEMORY[0];
          v21 = *MEMORY[0x1E696CE30];
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (MEMORY[0] != v20)
              {
                objc_enumerationMutation(v8);
              }

              v23 = [objc_msgSend(*(8 * i) valueForKey:{v21), "intValue"}];
            }

            v19 = OUTLINED_FUNCTION_2_0(v23, v24, v25, v26, v27, v28, v29, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v63);
          }

          while (v19);
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }

  return selfCopy;
}

void __45__BWMemoryPool_disableWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [(BWMemoryPool *)*(a1 + 32) _disable];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void __21__BWMemoryPool_flush__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    [*(v3 + 16) flush:MEMORY[0x1E695E0F8]];
  }

  objc_autoreleasePoolPop(v2);
}

- (id)newFlushAssertion:(id)assertion
{
  v5 = [BWMemoryPoolFlushAssertion alloc];

  return [(BWMemoryPoolFlushAssertion *)v5 initWithIdentifier:assertion pool:self];
}

- (void)_checkRemainingFlushAssertions
{
  if (self)
  {
    os_unfair_lock_lock(self + 9);
    if (self[8]._os_unfair_lock_opaque)
    {
      OUTLINED_FUNCTION_0_104();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v3 = OUTLINED_FUNCTION_8_5(os_log_and_send_and_compose_flags_and_os_log_type);
      if (OUTLINED_FUNCTION_6(v3))
      {
        OUTLINED_FUNCTION_5_6();
        OUTLINED_FUNCTION_58_1();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    os_unfair_lock_unlock(self + 9);
  }
}

- (uint64_t)_createMemoryPoolWithMaximizeSystemMemory:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }

    if (*(v3 + 16))
    {
      return 1;
    }

    if (a2)
    {
      [(BWMemoryPool *)v3 _maximizeAvailableSystemMemory];
    }

    v6[0] = *MEMORY[0x1E696CF88];
    v7[0] = [MEMORY[0x1E696AD98] numberWithBool:0];
    v6[1] = *MEMORY[0x1E696CF78];
    v6[2] = @"IOSurfaceMemoryPoolEntitlement";
    v7[1] = [MEMORY[0x1E696AD98] numberWithBool:1];
    v7[2] = @"com.apple.private.cameracapture.memorypool";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];
    v5 = [objc_alloc(MEMORY[0x1E696CDF8]) initWithProperties:v4];
    *(v3 + 16) = v5;
    result = [v5 poolId];
    if (result)
    {
      *(v3 + 24) = [*(v3 + 16) poolId];
      return 1;
    }
  }

  return result;
}

- (uint64_t)_sizesDistributionWithTotalSize:(int)size useOptimizedMemorySizeDistributionsIfAvailable:
{
  if (result)
  {
    v3 = (a2 << 20);
    v4 = ((v3 + v3) / 6.0);
    v5 = (v3 / 6.0);
    v6 = (v3 * 3.0 / 6.0);
    if (size)
    {
      v7 = [+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")];
      if ([objc_msgSend(objc_msgSend(v7 "memoryPoolSizeDistributions")] >= 1)
      {
        v4 = ([objc_msgSend(objc_msgSend(v7 "memoryPoolSizeDistributions")] << 20);
      }

      if ([objc_msgSend(objc_msgSend(v7 "memoryPoolSizeDistributions")] >= 1)
      {
        v5 = ([objc_msgSend(objc_msgSend(v7 "memoryPoolSizeDistributions")] << 20);
      }

      if ((MEMORY[0xFFFFFC021] & 8) != 0)
      {
        if ([objc_msgSend(objc_msgSend(v7 "memoryPoolSizeDistributions")] >= 1)
        {
          v6 = ([objc_msgSend(objc_msgSend(v7 "memoryPoolSizeDistributions")] << 20);
        }

        goto LABEL_12;
      }
    }

    else if ((MEMORY[0xFFFFFC021] & 8) != 0)
    {
LABEL_12:
      v14 = *MEMORY[0x1E696CE30];
      v24[0] = *MEMORY[0x1E696CE60];
      v13 = v24[0];
      v24[1] = v14;
      v25[0] = &unk_1F2246390;
      v25[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v6];
      v26[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
      v22[1] = v14;
      v23[0] = &unk_1F2246378;
      v22[0] = v13;
      v23[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v4];
      v26[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
      v20[1] = v14;
      v21[0] = &unk_1F22463A8;
      v20[0] = v13;
      v21[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v5];
      v26[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
      v10 = MEMORY[0x1E695DEC8];
      v11 = v26;
      v12 = 3;
      return [v10 arrayWithObjects:v11 count:v12];
    }

    v9 = *MEMORY[0x1E696CE30];
    v17[0] = *MEMORY[0x1E696CE60];
    v8 = v17[0];
    v17[1] = v9;
    v18[0] = &unk_1F2246378;
    v18[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v4];
    v19[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v15[1] = v9;
    v16[0] = &unk_1F22463A8;
    v15[0] = v8;
    v16[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v5];
    v19[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v10 = MEMORY[0x1E695DEC8];
    v11 = v19;
    v12 = 2;
    return [v10 arrayWithObjects:v11 count:v12];
  }

  return result;
}

void __55__BWMemoryPool_getInUseFootprint_andOutOfUseFootprint___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  if (v1)
  {
    v2 = [v1 copyDebugInfo];
    obj = [v2 objectForKeyedSubscript:@"InUse"];
    v3 = [v2 objectForKeyedSubscript:@"OutOfUse"];
    v4 = [v3 count];
    if (v4 == 1)
    {
      v60 = v2;
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      v12 = [objc_msgSend(v3 objectAtIndexedSubscript:{0), "objectForKeyedSubscript:", @"Buckets"}];
      v13 = [v12 countByEnumeratingWithState:&v107 objects:v106 count:16];
      if (v13)
      {
        v21 = v13;
        v22 = 0;
        v23 = *v108;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v108 != v23)
            {
              objc_enumerationMutation(v12);
            }

            v25 = *(*(&v107 + 1) + 8 * i);
            v26 = [v25 objectForKeyedSubscript:@"Bucket buffer size"];
            v27 = [v25 objectForKeyedSubscript:@"Descriptors"];
            v28 = [v26 integerValue];
            v22 += [v27 count] * v28;
          }

          v21 = [v12 countByEnumeratingWithState:&v107 objects:v106 count:16];
        }

        while (v21);
      }

      else
      {
        v22 = 0;
      }

      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v29 = OUTLINED_FUNCTION_9_55(0, v14, v15, v16, v17, v18, v19, v20, v57, v60, obj, a1, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, *(&v82 + 1), v83, *(&v83 + 1), v84, *(&v84 + 1), v85, *(&v85 + 1), v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, 0);
      if (v29)
      {
        v30 = v29;
        v31 = 0;
        v32 = *v103;
        while (2)
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v103 != v32)
            {
              objc_enumerationMutation(obja);
            }

            v34 = *(*(&v102 + 1) + 8 * j);
            v35 = [objc_msgSend(v34 objectForKeyedSubscript:{@"Pool Id", "unsignedLongLongValue"}];
            if (v35 != *(v65[4] + 24))
            {
              OUTLINED_FUNCTION_7_65(v35, v36, v37, v38, v39, v40, v41, v42, v58, v61, obja, v65);
              goto LABEL_35;
            }

            v84 = 0u;
            v85 = 0u;
            v82 = 0u;
            v83 = 0u;
            v43 = [v34 objectForKeyedSubscript:@"Components"];
            v44 = [v43 countByEnumeratingWithState:&v82 objects:&v66 count:16];
            if (v44)
            {
              v52 = v44;
              v53 = *v83;
              do
              {
                v54 = 0;
                do
                {
                  if (*v83 != v53)
                  {
                    objc_enumerationMutation(v43);
                  }

                  v31 += [objc_msgSend(*(*(&v82 + 1) + 8 * v54++) objectForKeyedSubscript:{@"Length", "unsignedLongLongValue"}];
                }

                while (v52 != v54);
                v44 = [v43 countByEnumeratingWithState:&v82 objects:&v66 count:16];
                v52 = v44;
              }

              while (v44);
            }
          }

          v30 = OUTLINED_FUNCTION_9_55(v44, v45, v46, v47, v48, v49, v50, v51, v58, v61, obja, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, *(&v82 + 1), v83, *(&v83 + 1), v84, *(&v84 + 1), v85, *(&v85 + 1), v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);
          if (v30)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v31 = 0;
      }

      v55 = v65[6];
      if (v55)
      {
        *v55 = v31;
      }

      v56 = v65[7];
      if (v56)
      {
        *v56 = v22;
      }

LABEL_35:
      v2 = v61;
    }

    else
    {
      OUTLINED_FUNCTION_7_65(v4, v5, v6, v7, v8, v9, v10, v11, v57, v59, obj, a1);
    }
  }

  else
  {
    v2 = 0;
  }
}

- (void)newMTLBufferWithLength:(const void *)a1 forDevice:.cold.1(const void *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  CFRelease(a1);
}

@end