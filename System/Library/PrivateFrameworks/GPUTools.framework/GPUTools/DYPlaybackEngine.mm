@interface DYPlaybackEngine
- (BOOL)_executeDFS:(void *)s;
- (BOOL)_executeFSE:(void *)e;
- (BOOL)_executeFunctionStream:(void *)stream;
- (BOOL)_executeFunctions:(CoreFunction *)functions count:(unint64_t)count;
- (DYFunctionPlayer)player;
- (DYPlaybackEngine)init;
- (DYPlaybackEngine)initWithCaptureStore:(id)store;
- (id)playbackToFunction:(unsigned int)function;
- (void)_addPointerDataSizeMapToPlayer;
- (void)_allocateAndFillDataCache;
- (void)_executeDeltaFSEs;
- (void)_performPlaybackRequest:(unsigned int)request;
- (void)dealloc;
@end

@implementation DYPlaybackEngine

- (DYPlaybackEngine)init
{
  [(DYPlaybackEngine *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (DYPlaybackEngine)initWithCaptureStore:(id)store
{
  if (!store)
  {
    [DYPlaybackEngine initWithCaptureStore:];
  }

  v8.receiver = self;
  v8.super_class = DYPlaybackEngine;
  result = [(DYPlaybackEngine *)&v8 init];
  if (result)
  {
    v5 = result;
    v6 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"gputools.%@.%p", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", object_getClassName(result)), result), "UTF8String"];
    v5->_playbackQueue = dispatch_queue_create(v6, 0);
    storeCopy = store;
    result = v5;
    v5->_captureStore = storeCopy;
  }

  return result;
}

- (void)dealloc
{
  cache = self->_cache;
  if (cache)
  {
    GPUTools::Playback::PlaybackEngineDecodeCache::~PlaybackEngineDecodeCache(cache);
    MEMORY[0x25302FA40]();
  }

  playbackQueue = self->_playbackQueue;
  if (playbackQueue)
  {
    dispatch_release(playbackQueue);
    self->_playbackQueue = 0;
  }

  v5.receiver = self;
  v5.super_class = DYPlaybackEngine;
  [(DYPlaybackEngine *)&v5 dealloc];
}

- (DYFunctionPlayer)player
{
  os_unfair_lock_lock(&self->_playerLock);
  if (!self->_player)
  {
    newFunctionPlayer = [(DYPlaybackEngine *)self newFunctionPlayer];
    self->_player = newFunctionPlayer;
    [(DYFunctionPlayer *)newFunctionPlayer setEngine:self];
  }

  os_unfair_lock_unlock(&self->_playerLock);
  return self->_player;
}

- (void)_allocateAndFillDataCache
{
  host_info_outCnt[0] = 40;
  v3 = MEMORY[0x25302FF60](self, a2);
  v4 = host_statistics(v3, 2, host_info_out, host_info_outCnt);
  if (!v4)
  {
    v5 = (*MEMORY[0x277D85FA0] >> 1) * host_info_out[0];
    captureStore = self->_captureStore;
    if (captureStore)
    {
      [(DYCaptureStore *)captureStore getSortedFilePositionsForDataCaching];
      if (v8 != *host_info_outCnt)
      {
        if (((v8 - *host_info_outCnt) & 0x8000000000000000) == 0)
        {
          operator new();
        }

LABEL_9:
        std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
      }
    }

    else
    {
      *host_info_outCnt = 0;
      v8 = 0;
      v9 = 0;
    }

    operator new();
  }

  mach_error_string(v4);
  dy_abort();
  goto LABEL_9;
}

- (void)_addPointerDataSizeMapToPlayer
{
  *v8 = 0u;
  *__p = 0u;
  v10 = 1065353216;
  for (i = *(self->_cache + 17); i; i = *i)
  {
    v4 = i[4];
    v11 = i + 3;
    std::__hash_table<std::__hash_value_type<void *,unsigned long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void * const&>,std::tuple<>>(v8, i + 3)[3] = v4;
  }

  [(DYFunctionPlayer *)self->_player addPointerDataSizeMap:v8];
  v5 = __p[0];
  if (__p[0])
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = v8[0];
  v8[0] = 0;
  if (v7)
  {
    operator delete(v7);
  }
}

- (BOOL)_executeFunctions:(CoreFunction *)functions count:(unint64_t)count
{
  if (!count)
  {
    return 0;
  }

  cache = self->_cache;
  i = self->_fseIterator.__i_;
  if (i < cache[3] || i >= cache[4])
  {
    v8 = 1;
    countCopy = count;
  }

  else
  {
    v8 = 0;
    functionBatchOffset = self->_functionBatchOffset;
    currentFunctionIndex = self->_currentFunctionIndex;
    targetFunctionIndex = self->_targetFunctionIndex;
    if (count - functionBatchOffset + currentFunctionIndex > targetFunctionIndex && targetFunctionIndex > currentFunctionIndex)
    {
      countCopy = targetFunctionIndex - currentFunctionIndex;
    }

    else
    {
      countCopy = count - functionBatchOffset;
    }

    self->_currentFunctionIndex = currentFunctionIndex + countCopy;
    if (!countCopy)
    {
      goto LABEL_14;
    }

    functions += functionBatchOffset;
  }

  [(DYFunctionPlayer *)self->_player executeFunctions:functions count:countCopy subCommandIndex:self->_targetSubCommandIndex];
  functionBatchOffset = self->_functionBatchOffset;
LABEL_14:
  v14 = countCopy + functionBatchOffset;
  if (v14 == count)
  {
    self->_functionBatchOffset = 0;
    return (self->_currentFunctionIndex == self->_targetFunctionIndex) & ~v8;
  }

  else
  {
    self->_functionBatchOffset = v14;
    return 1;
  }
}

- (BOOL)_executeDFS:(void *)s
{
  v3 = *s;
  v4 = *(*s + 504);
  v5 = *(*s + 520);
  if (v5 == v4)
  {
LABEL_4:
    result = 0;
    *(v3 + 520) = *(v3 + 496);
  }

  else
  {
    while (1)
    {
      v8 = (*(**v5 + 16))(*v5, a2);
      if ([(DYPlaybackEngine *)self _executeFunctions:v8 count:(*(**v5 + 24))()])
      {
        break;
      }

      v3 = *s;
      v5 = (*(*s + 520) + 8);
      *(*s + 520) = v5;
      if (v5 == v4)
      {
        goto LABEL_4;
      }
    }

    if (!self->_functionBatchOffset)
    {
      *(*s + 520) += 8;
    }

    return 1;
  }

  return result;
}

- (BOOL)_executeFunctionStream:(void *)stream
{
  if (!*(self->_cache + 5))
  {
    operator new[]();
  }

  cache = self->_cache;
  if (cache[6] && [(DYPlaybackEngine *)self _executeFunctions:cache[5] count:?])
  {
    if (!self->_functionBatchOffset)
    {
      *(self->_cache + 6) = 0;
    }

    LOBYTE(v6) = 1;
    return v6;
  }

  else
  {
    v7 = *(stream + 63);
    v8 = *(v7 + 24);
    GPUTools::FD::CoreFunction::CoreFunction(v40);
    v41 = v8;
    v42 = v8;
    v9 = *(v7 + 8);
    v43 = *(v7 + 24);
    v44 = v9;
    v45 = (*(*v9 + 16))(v9);
    v10 = stream + 472;
    while (1)
    {
      v11 = *(stream + 58);
      if (v11 != v41)
      {
        break;
      }

      v12 = 0;
LABEL_29:
      v24 = self->_cache;
      v24[6] = v12;
      v6 = [(DYPlaybackEngine *)self _executeFunctions:v24[5] count:v12];
      if (v6)
      {
        if (!self->_functionBatchOffset)
        {
          goto LABEL_37;
        }

        goto LABEL_38;
      }

      if (!v12)
      {
        v25 = *stream;
        if (*stream)
        {
          GPUTools::FD::CoreFunction::CoreFunction(v35);
          v26 = *(v25 + 456);
          v36 = v26;
          v27 = *(v25 + 464);
          v37 = v27;
          v28 = *(v25 + 480);
          v38 = v28;
          v29 = *(v25 + 488);
          v39 = v29;
        }

        else
        {
          v30 = *(stream + 63);
          v31 = v30[2];
          GPUTools::FD::CoreFunction::CoreFunction(v35);
          v36 = v31;
          *&v37 = v31;
          v32 = v30[1];
          *(&v37 + 1) = v30[3];
          v38 = v32;
          v29 = (*(*v32 + 16))(v32);
          v39 = v29;
          v26 = v36;
          v27 = v37;
          v28 = v38;
        }

        *(stream + 58) = v26;
        *v10 = v27;
        *(stream + 61) = v28;
        *(stream + 496) = v29;
        GPUTools::FD::CoreFunction::~CoreFunction(v35);
LABEL_37:
        *(self->_cache + 6) = 0;
LABEL_38:
        GPUTools::FD::CoreFunction::~CoreFunction(v40);
        return v6;
      }
    }

    v12 = 0;
    v13 = *v10;
    while (1)
    {
      if (*(stream + 2) == -1 || v13 == v11)
      {
        if (((*(**(stream + 61) + 64))(*(stream + 61), v11, *(stream + 60) - v11, stream + 8) & 1) == 0)
        {
          goto LABEL_41;
        }

        v15 = *(stream + 110) + *(stream + 58);
        *(stream + 59) = v15;
        v16 = *(stream + 3);
        if ((v16 & 0x1000) != 0 && (v16 & 0x2000) == 0)
        {
          break;
        }
      }

LABEL_17:
      v17 = *(self->_cache + 5);
      GPUTools::FD::CoreFunction::operator=();
      v18 = *(stream + 59);
      if (v18 == *(stream + 58))
      {
        if (*(stream + 496) == 1)
        {
          v19 = *(stream + 60) - v18;
          v20 = (*(**(stream + 61) + 56))(*(stream + 61));
          v21 = *(stream + 58);
          *v10 = (*(**(stream + 61) + 48))(*(stream + 61), v21, *(stream + 60) - v21) + v21;
          GPUTools::FD::TFunctionStream<GPUTools::FD::CoreFunction,void>::_Iterator<GPUTools::FD::CoreFunction>::_decode_associated(stream + 2, v20);
        }

        else
        {
          GPUTools::FD::TFunctionStream<GPUTools::FD::CoreFunction,void>::_Iterator<GPUTools::FD::CoreFunction>::_decode(stream + 2);
        }
      }

      v13 = *(stream + 59);
      *(stream + 58) = v13;
      ++v12;
      if (v13 != v41)
      {
        v11 = v13;
        if (v12 != 1149)
        {
          continue;
        }
      }

      goto LABEL_29;
    }

    while (1)
    {
      v22 = *(stream + 60);
      if (v15 >= v22)
      {
        break;
      }

      v23 = (*(**(stream + 61) + 56))(*(stream + 61), v15, v22 - v15);
      v15 = (*(**(stream + 61) + 48))(*(stream + 61), *(stream + 59), *(stream + 60) - *(stream + 59)) + *v10;
      *v10 = v15;
      if ((v23 & 0x2000) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_41:
    v34 = *(stream + 2);
    result = dy_abort();
    __break(1u);
  }

  return result;
}

- (BOOL)_executeFSE:(void *)e
{
  self->_currentFile = *(e + 65);
  [(DYFunctionPlayer *)self->_player performNewExecutionFileActions];
  if (!*e)
  {
    goto LABEL_6;
  }

  if ([(DYPlaybackEngine *)self _executeDFS:e])
  {
    return 1;
  }

  v6 = *e;
  if (*e)
  {
    GPUTools::FD::CoreFunction::CoreFunction(v21);
    v22 = *(v6 + 456);
    v23 = *(v6 + 464);
    v24 = *(v6 + 480);
    v25 = *(v6 + 488);
  }

  else
  {
LABEL_6:
    v7 = *(e + 63);
    v8 = v7[2];
    GPUTools::FD::CoreFunction::CoreFunction(v21);
    v22 = v8;
    *&v23 = v8;
    v9 = v7[1];
    *(&v23 + 1) = v7[3];
    v24 = v9;
    v25 = (*(*v9 + 16))(v9);
  }

  v10 = *(e + 63);
  v11 = *(v10 + 24);
  GPUTools::FD::CoreFunction::CoreFunction(v15);
  v16 = v11;
  v17 = v11;
  v12 = *(v10 + 8);
  v18 = *(v10 + 24);
  v19 = v12;
  v20 = (*(*v12 + 16))(v12);
  v13 = v22;
  v14 = v16;
  GPUTools::FD::CoreFunction::~CoreFunction(v15);
  GPUTools::FD::CoreFunction::~CoreFunction(v21);
  return v13 != v14 && [(DYPlaybackEngine *)self _executeFunctionStream:e];
}

- (void)_executeDeltaFSEs
{
  [(DYFunctionPlayer *)self->_player prepareForNonCaptureExecution];
  cache = self->_cache;
  i = self->_fseIterator.__i_;
  v5 = *(cache + 1);
  if (i != v5)
  {
    do
    {
      [(DYPlaybackEngine *)self _executeFSE:*i];
      i = self->_fseIterator.__i_ + 8;
      self->_fseIterator.__i_ = i;
    }

    while (i != v5);
    cache = self->_cache;
  }

  self->_currentFunctionIndex = 0;
  self->_fseIterator.__i_ = *(cache + 3);
}

- (void)_performPlaybackRequest:(unsigned int)request
{
  [(DYPlaybackEngine *)self onPlaybackRequestStart];
  if (!self->_player)
  {
    [DYPlaybackEngine _performPlaybackRequest:];
  }

  if (!self->_cache)
  {
    [DYPlaybackEngine _performPlaybackRequest:];
  }

  if (request && self->_targetFunctionIndex == self->_currentFunctionIndex)
  {
    goto LABEL_7;
  }

  [(DYPlaybackEngine *)self _executeFunctionStreamEntriesPerformingLoopIterationActions:0 iteration:0];
  if (self->_currentFunctionIndex != self->_targetFunctionIndex)
  {
    [DYPlaybackEngine _performPlaybackRequest:];
  }

  if (request)
  {
LABEL_7:
    v5 = 0;
    do
    {
      if (![(DYPlaybackEngine *)self shouldPerformPlaybackLoopIteration:v5])
      {
        break;
      }

      [(DYPlaybackEngine *)self _executeFunctionStreamEntriesPerformingLoopIterationActions:1 iteration:v5];
      if (self->_currentFunctionIndex != self->_targetFunctionIndex)
      {
        [DYPlaybackEngine _performPlaybackRequest:];
      }

      if (self->_waitUntilCompleteAfterEveryFrame)
      {
        [(DYPlaybackEngine *)self waitUntilCompleted];
      }

      v5 = (v5 + 1);
    }

    while (request != v5);
  }

  [(DYPlaybackEngine *)self onPlaybackRequestCompleted];
}

- (id)playbackToFunction:(unsigned int)function
{
  v5 = objc_opt_new();
  loopCount = self->_loopCount;
  playbackQueue = self->_playbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__DYPlaybackEngine_playbackToFunction___block_invoke;
  block[3] = &unk_279309B30;
  functionCopy = function;
  v11 = loopCount;
  block[4] = self;
  block[5] = v5;
  dispatch_async(playbackQueue, block);
  return v5;
}

uint64_t __39__DYPlaybackEngine_playbackToFunction___block_invoke(uint64_t a1)
{
  [*(a1 + 32) playbackToFunction:*(a1 + 48) withLoops:*(a1 + 52)];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v3 = *(a1 + 40);

  return [v3 setResult:v2];
}

@end