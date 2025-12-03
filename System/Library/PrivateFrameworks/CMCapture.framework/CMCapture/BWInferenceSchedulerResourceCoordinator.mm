@interface BWInferenceSchedulerResourceCoordinator
- (BWInferenceSchedulerResourceCoordinator)init;
- (id)formatsWithRequestedPoolsRemainingAfterSubtractingFormats:(id)formats;
- (id)pixelBufferPoolForFormat:(id)format;
- (int)requestPixelBufferPoolForFormat:(id)format size:(unint64_t)size;
- (int)requestPixelBufferPoolForRequirement:(id)requirement size:(unint64_t)size;
- (void)dealloc;
- (void)preparePixelBufferPoolsWithBackPressureDrivenPipelining:(BOOL)pipelining;
@end

@implementation BWInferenceSchedulerResourceCoordinator

- (BWInferenceSchedulerResourceCoordinator)init
{
  v4.receiver = self;
  v4.super_class = BWInferenceSchedulerResourceCoordinator;
  v2 = [(BWInferenceSchedulerResourceCoordinator *)&v4 init];
  if (v2)
  {
    v2->_requestedPoolSizeByFormat = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_pixelBufferPoolByFormat = 0;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceSchedulerResourceCoordinator;
  [(BWInferenceSchedulerResourceCoordinator *)&v3 dealloc];
}

- (int)requestPixelBufferPoolForRequirement:(id)requirement size:(unint64_t)size
{
  videoFormat = [requirement videoFormat];

  return [(BWInferenceSchedulerResourceCoordinator *)self requestPixelBufferPoolForFormat:videoFormat size:size];
}

- (int)requestPixelBufferPoolForFormat:(id)format size:(unint64_t)size
{
  if (self->_pixelBufferPoolByFormat)
  {
    [BWInferenceSchedulerResourceCoordinator requestPixelBufferPoolForFormat:? size:?];
    return v9;
  }

  else
  {
    v7 = [(NSMutableDictionary *)self->_requestedPoolSizeByFormat objectForKeyedSubscript:?];
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_requestedPoolSizeByFormat, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLong:{size + objc_msgSend(v7, "intValue")}], format);
    return 0;
  }
}

- (void)preparePixelBufferPoolsWithBackPressureDrivenPipelining:(BOOL)pipelining
{
  if (self->_pixelBufferPoolByFormat)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Coordinator has already prepared shared pixel buffer pools!" userInfo:0]);
  }

  pipeliningCopy = pipelining;
  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_requestedPoolSizeByFormat;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_requestedPoolSizeByFormat objectForKeyedSubscript:{v9), "intValue"}];
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Inference pool for %@", objc_msgSend(v9, "description")];
        LOBYTE(v13) = pipeliningCopy;
        v12 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:clientProvidesPool:memoryPool:providesBackPressure:reportSlowBackPressureAllocations:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:clientProvidesPool:memoryPool:providesBackPressure:reportSlowBackPressureAllocations:", [v9 underlyingVideoFormat], v10, v11, 0, +[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool"), pipeliningCopy, v13);
        [v15 setObject:v12 forKeyedSubscript:v9];
      }

      v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v6);
  }

  self->_pixelBufferPoolByFormat = v15;
}

- (id)pixelBufferPoolForFormat:(id)format
{
  pixelBufferPoolByFormat = self->_pixelBufferPoolByFormat;
  if (!pixelBufferPoolByFormat)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Coordinator has not prepared shared pixel buffer pools!" userInfo:{0, v3, v4}]);
  }

  return [(NSMutableDictionary *)pixelBufferPoolByFormat objectForKeyedSubscript:format];
}

- (id)formatsWithRequestedPoolsRemainingAfterSubtractingFormats:(id)formats
{
  v4 = [MEMORY[0x1E695DFA8] setWithArray:{-[NSMutableDictionary allKeys](self->_pixelBufferPoolByFormat, "allKeys")}];
  [v4 minusSet:formats];

  return [v4 allObjects];
}

- (uint64_t)requestPixelBufferPoolForFormat:(_DWORD *)a1 size:.cold.1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end