@interface HUWrappedAudioQueue
- (BOOL)_attemptQueueStart;
- (BOOL)_startQueueWithRetry;
- (BOOL)play;
- (HUWrappedAudioQueue)initWithSampleRate:(double)a3;
- (id)convertBufferIfNecessary:(id)a3;
- (unint64_t)_minimumBufferByteSize;
- (void)_rebuildAudioQueue;
- (void)_reconfigureQueueFormatForMultiChannelOutputIfNecessary;
- (void)_scheduleDeferredStop;
- (void)_tearDownAudioQueue;
- (void)bufferCallback:(AudioQueueBuffer *)a3;
- (void)dealloc;
- (void)scheduleBuffer:(id)a3 completionHandler:(id)a4;
- (void)scheduleBuffer:(id)a3 completionHandler:(id)a4 lastBuffer:(BOOL)a5;
- (void)setAudioDevice:(unsigned int)a3;
- (void)setAudioQueueFlags:(unsigned int)a3;
- (void)setOutputFormat:(id)a3;
- (void)stop;
@end

@implementation HUWrappedAudioQueue

- (HUWrappedAudioQueue)initWithSampleRate:(double)a3
{
  v22.receiver = self;
  v22.super_class = HUWrappedAudioQueue;
  v4 = [(HUWrappedAudioQueue *)&v22 init];
  v5 = v4;
  if (v4)
  {
    *&v4->_bufferLock._os_unfair_lock_opaque = 0;
    v6 = [objc_alloc(MEMORY[0x1E6958418]) initWithCommonFormat:1 sampleRate:1 channels:0 interleaved:a3];
    format = v5->_format;
    v5->_format = v6;

    v8 = [objc_alloc(MEMORY[0x1E6958418]) initWithCommonFormat:1 sampleRate:1 channels:1 interleaved:a3];
    queueFormat = v5->_queueFormat;
    v5->_queueFormat = v8;

    v10 = [MEMORY[0x1E695DFA0] orderedSet];
    availableBuffers = v5->_availableBuffers;
    v5->_availableBuffers = v10;

    v12 = [MEMORY[0x1E695DFA0] orderedSet];
    inflightBuffers = v5->_inflightBuffers;
    v5->_inflightBuffers = v12;

    v14 = objc_alloc_init(MEMORY[0x1E696AB30]);
    buffersAvailable = v5->_buffersAvailable;
    v5->_buffersAvailable = v14;

    cachedAudioConverter = v5->_cachedAudioConverter;
    v5->_cachedAudioConverter = 0;

    v5->_audioQueueFlags = 0;
    v17 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, -1);
    v18 = dispatch_queue_create("hustopqueue", v17);
    deferredStopQueue = v5->_deferredStopQueue;
    v5->_deferredStopQueue = v18;

    v5->_audioDevice = 0;
    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    [v20 addObserver:v5 selector:sel_handleMediaServicesReset name:*MEMORY[0x1E6958128] object:0];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(HUWrappedAudioQueue *)self _tearDownAudioQueue];
  v4.receiver = self;
  v4.super_class = HUWrappedAudioQueue;
  [(HUWrappedAudioQueue *)&v4 dealloc];
}

- (id)convertBufferIfNecessary:(id)a3
{
  v4 = a3;
  v5 = [(HUWrappedAudioQueue *)self queueFormat];
  v6 = [v4 format];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = v4;
    goto LABEL_10;
  }

  v9 = [(HUWrappedAudioQueue *)self cachedAudioConverter];
  if (v9)
  {
    v10 = v9;
    v11 = [(HUWrappedAudioQueue *)self cachedAudioConverter];
    v12 = [v11 inputFormat];
    v13 = [v4 format];
    if ([v12 isEqual:v13])
    {
      v14 = [(HUWrappedAudioQueue *)self cachedAudioConverter];
      v15 = [v14 outputFormat];
      v16 = [(HUWrappedAudioQueue *)self queueFormat];
      v17 = [v15 isEqual:v16];

      if (v17)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v18 = objc_alloc(MEMORY[0x1E69583F0]);
  v19 = [v4 format];
  v20 = [(HUWrappedAudioQueue *)self queueFormat];
  v21 = [v18 initFromFormat:v19 toFormat:v20];
  [(HUWrappedAudioQueue *)self setCachedAudioConverter:v21];

LABEL_9:
  v22 = [(HUWrappedAudioQueue *)self queueFormat];
  [v22 sampleRate];
  v24 = v23;
  v25 = [v4 format];
  [v25 sampleRate];
  *&v24 = v24 / v26;

  v27 = objc_alloc(MEMORY[0x1E6958440]);
  v28 = [(HUWrappedAudioQueue *)self queueFormat];
  v8 = [v27 initWithPCMFormat:v28 frameCapacity:(*&v24 * objc_msgSend(v4, "frameLength"))];

  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  v29 = [(HUWrappedAudioQueue *)self cachedAudioConverter];
  v34 = v36;
  v35 = 0;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __48__HUWrappedAudioQueue_convertBufferIfNecessary___block_invoke;
  v32[3] = &unk_1E85CD258;
  v33 = v4;
  [v29 convertToBuffer:v8 error:&v35 withInputFromBlock:v32];
  v30 = v35;

  _Block_object_dispose(v36, 8);
LABEL_10:

  return v8;
}

id __48__HUWrappedAudioQueue_convertBufferIfNecessary___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24) == 1)
  {
    v5 = 0;
    *a3 = 1;
  }

  else
  {
    *(v4 + 24) = 1;
    *a3 = 0;
    v5 = *(a1 + 32);
  }

  return v5;
}

- (void)scheduleBuffer:(id)a3 completionHandler:(id)a4 lastBuffer:(BOOL)a5
{
  v5 = a5;
  [(HUWrappedAudioQueue *)self scheduleBuffer:a3 completionHandler:a4];
  if (v5)
  {
    AX_PERFORM_WITH_LOCK();
  }
}

uint64_t __67__HUWrappedAudioQueue_scheduleBuffer_completionHandler_lastBuffer___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) aqRef];

  return AudioQueueFlush(v1);
}

- (void)scheduleBuffer:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(HUWrappedAudioQueue *)self state])
  {
    v8 = [(HUWrappedAudioQueue *)self convertBufferIfNecessary:v6];

    v9 = [v8 frameLength];
    v10 = [v8 format];
    v11 = (*([v10 streamDescription] + 24) * v9);

    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__12;
    v47 = __Block_byref_object_dispose__12;
    v48 = 0;
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x2020000000;
    v42 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __56__HUWrappedAudioQueue_scheduleBuffer_completionHandler___block_invoke;
    v31 = &unk_1E85CD280;
    v32 = self;
    v33 = v41;
    v35 = &v37;
    v36 = v11;
    v34 = &v43;
    AX_PERFORM_WITH_LOCK();
    v12 = v44[5];
    if (v12)
    {
      if (*(v38 + 6))
      {
        v23 = MEMORY[0x1E69E9820];
        v24 = 3221225472;
        v25 = __56__HUWrappedAudioQueue_scheduleBuffer_completionHandler___block_invoke_2;
        v26 = &unk_1E85C9F60;
        v27 = self;
        AX_PERFORM_WITH_LOCK();
        v7[2](v7);
      }

      else
      {
        [v12 setCompletionHandler:v7];
        *([v44[5] aqBuffer] + 16) = v11;
        if ([v8 frameLength] == 1)
        {
          v14 = [(HUWrappedAudioQueue *)self queueFormat];
          v15 = *([v14 streamDescription] + 24);

          v16 = *[v44[5] aqBuffer];
          if (v15 << 8 >= v16)
          {
            v17 = v16;
          }

          else
          {
            v17 = (v15 << 8);
          }

          bzero(*([v44[5] aqBuffer] + 8), v17);
          *([v44[5] aqBuffer] + 16) = v17;
        }

        else
        {
          memcpy(*([v44[5] aqBuffer] + 8), *(objc_msgSend(v8, "audioBufferList") + 16), v11);
        }

        v18 = v44[5];
        *([v18 aqBuffer] + 24) = v18;
        if ([(HUWrappedAudioQueue *)self state])
        {
          v19 = 0;
          v20 = &v19;
          v21 = 0x2020000000;
          v22 = 0;
          AX_PERFORM_WITH_LOCK();
          if (*(v20 + 6) == -66671)
          {
            AX_PERFORM_WITH_LOCK();
            v7[2](v7);
          }

          else if ([(HUWrappedAudioQueue *)self state]== 3)
          {
            AX_PERFORM_WITH_LOCK();
          }

          else
          {
            [(HUWrappedAudioQueue *)self _attemptQueueStart];
          }

          _Block_object_dispose(&v19, 8);
        }

        else
        {
          -[HUWrappedAudioQueue bufferCallback:](self, "bufferCallback:", [v44[5] aqBuffer]);
        }
      }
    }

    else
    {
      v13 = [(HUWrappedAudioQueue *)self buffersAvailable];
      [v13 wait];

      [(HUWrappedAudioQueue *)self scheduleBuffer:v8 completionHandler:v7];
    }

    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(v41, 8);
    _Block_object_dispose(&v43, 8);
  }

  else
  {
    v7[2](v7);
    v8 = v6;
  }
}

void __56__HUWrappedAudioQueue_scheduleBuffer_completionHandler___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) inflightBuffers];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count] == 0;

  v3 = [*(a1 + 32) availableBuffers];
  v4 = [v3 count];

  if (v4)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v5 = [*(a1 + 32) availableBuffers];
    v6 = [v5 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v37;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v37 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v36 + 1) + 8 * i);
          if ([v11 byteSize] >= *(a1 + 64))
          {
            if ([v11 byteSize] == *(a1 + 64))
            {
              v25 = v11;

              v8 = v25;
              goto LABEL_22;
            }

            if (v8)
            {
              v12 = [v11 byteSize] - *(a1 + 64);
              if (v12 < [v8 byteSize] - *(a1 + 64))
              {
                v13 = v11;

                v8 = v13;
              }
            }

            else
            {
              v8 = v11;
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }

LABEL_22:

      if (v8)
      {
        v26 = 0;
        v27 = v8;
LABEL_26:
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v27);
        if (v26)
        {
        }

        v28 = [*(a1 + 32) availableBuffers];
        [v28 removeObject:*(*(*(a1 + 48) + 8) + 40)];

        if ([*(*(*(a1 + 48) + 8) + 40) byteSize] < *(a1 + 64))
        {
          AudioQueueFreeBuffer([*(a1 + 32) aqRef], objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "aqBuffer"));
          [*(*(*(a1 + 48) + 8) + 40) setAqBuffer:0];
          outBuffer = 0;
          v29 = [*(a1 + 32) aqRef];
          v30 = *(a1 + 64);
          v31 = [*(a1 + 32) _minimumBufferByteSize];
          if (v30 <= v31)
          {
            v32 = v31;
          }

          else
          {
            v32 = v30;
          }

          *(*(*(a1 + 56) + 8) + 24) = AudioQueueAllocateBuffer(v29, v32, &outBuffer);
          [*(*(*(a1 + 48) + 8) + 40) setAqBuffer:outBuffer];
        }

        v33 = [*(a1 + 32) inflightBuffers];
        [v33 addObject:*(*(*(a1 + 48) + 8) + 40)];

        goto LABEL_34;
      }
    }

    else
    {
    }

    v5 = [*(a1 + 32) availableBuffers];
    v27 = [v5 firstObject];
    v8 = 0;
    v26 = 1;
    goto LABEL_26;
  }

  v14 = [*(a1 + 32) inflightBuffers];
  v15 = [v14 count];

  if (v15 <= 0x31)
  {
    outBuffer = 0;
    v16 = [*(a1 + 32) aqRef];
    v17 = *(a1 + 64);
    v18 = [*(a1 + 32) _minimumBufferByteSize];
    if (v17 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    *(*(*(a1 + 56) + 8) + 24) = AudioQueueAllocateBuffer(v16, v19, &outBuffer);
    v20 = objc_alloc_init(HUWrappedAudioQueueBuffer);
    [(HUWrappedAudioQueueBuffer *)v20 setAqBuffer:outBuffer];
    v21 = *(*(a1 + 48) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;
    v23 = v20;

    v24 = [*(a1 + 32) inflightBuffers];
    [v24 addObject:*(*(*(a1 + 48) + 8) + 40)];
  }

LABEL_34:
  v34 = *MEMORY[0x1E69E9840];
}

uint64_t __56__HUWrappedAudioQueue_scheduleBuffer_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _tearDownAudioQueue];
  v2 = *(a1 + 32);

  return [v2 _rebuildAudioQueue];
}

uint64_t __56__HUWrappedAudioQueue_scheduleBuffer_completionHandler___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) audioQueueActive] && *(*(*(a1 + 40) + 8) + 24) == 1)
  {
    AudioQueueReset([*(a1 + 32) aqRef]);
  }

  result = AudioQueueEnqueueBuffer([*(a1 + 32) aqRef], objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "aqBuffer"), 0, 0);
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t __56__HUWrappedAudioQueue_scheduleBuffer_completionHandler___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _tearDownAudioQueue];
  v2 = *(a1 + 32);

  return [v2 _rebuildAudioQueue];
}

uint64_t __56__HUWrappedAudioQueue_scheduleBuffer_completionHandler___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) aqRef];

  return AudioQueuePause(v1);
}

- (BOOL)_startQueueWithRetry
{
  [(HUWrappedAudioQueue *)self _buildAudioQueue];
  if ([(HUWrappedAudioQueue *)self _attemptQueueStart])
  {
    return 1;
  }

  v4 = 0;
  do
  {
    v5 = v4;
    [(HUWrappedAudioQueue *)self _tearDownAudioQueue];
    if (v5)
    {
      [MEMORY[0x1E696AF00] sleepForTimeInterval:0.1];
    }

    if (v5 == 2)
    {
      break;
    }

    [(HUWrappedAudioQueue *)self _buildAudioQueue];
    v6 = [(HUWrappedAudioQueue *)self _attemptQueueStart];
    v4 = v5 + 1;
  }

  while (!v6);
  return v5 < 2;
}

- (BOOL)_attemptQueueStart
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2020000000;
  v4 = 0;
  AX_PERFORM_WITH_LOCK();
  _Block_object_dispose(v3, 8);
  return 1;
}

uint64_t __41__HUWrappedAudioQueue__attemptQueueStart__block_invoke(uint64_t a1)
{
  result = AudioQueueStart([*(a1 + 32) aqRef], 0);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __39__HUWrappedAudioQueue__buildAudioQueue__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) aqRef];
  if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 _rebuildAudioQueue];
  }

  return result;
}

- (BOOL)play
{
  if ([(HUWrappedAudioQueue *)self shouldRebuildAudioQueue])
  {
    [(HUWrappedAudioQueue *)self _tearDownAudioQueue];
    [(HUWrappedAudioQueue *)self setShouldRebuildAudioQueue:0];
  }

  [(HUWrappedAudioQueue *)self _buildAudioQueue];
  v3 = [(HUWrappedAudioQueue *)self deferredStopQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__HUWrappedAudioQueue_play__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_sync(v3, block);

  if ([(HUWrappedAudioQueue *)self state]== 3 && ![(HUWrappedAudioQueue *)self _startQueueWithRetry])
  {
    return 0;
  }

  v4 = 1;
  [(HUWrappedAudioQueue *)self setState:1];
  return v4;
}

void __27__HUWrappedAudioQueue_play__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) deferredStopSource];

  if (v2)
  {
    v3 = [*(a1 + 32) deferredStopSource];
    dispatch_source_cancel(v3);

    v4 = *(a1 + 32);

    [v4 setDeferredStopSource:0];
  }
}

uint64_t __28__HUWrappedAudioQueue_pause__block_invoke(uint64_t a1)
{
  AudioQueuePause([*(a1 + 32) aqRef]);
  v2 = *(a1 + 32);

  return [v2 setState:3];
}

- (void)stop
{
  AX_PERFORM_WITH_LOCK();
  [(HUWrappedAudioQueue *)self setState:0];
  v3 = [(HUWrappedAudioQueue *)self buffersAvailable];
  [v3 broadcast];

  [(HUWrappedAudioQueue *)self _scheduleDeferredStop];
}

uint64_t __27__HUWrappedAudioQueue_stop__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) aqRef];

  return AudioQueueReset(v1);
}

- (void)setAudioDevice:(unsigned int)a3
{
  if (self->_audioDevice != a3)
  {
    self->_audioDevice = a3;
    [(HUWrappedAudioQueue *)self setShouldRebuildAudioQueue:1];
  }
}

- (void)setOutputFormat:(id)a3
{
  v6 = a3;
  v4 = [(HUWrappedAudioQueue *)self format];
  v5 = [v6 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    [(HUWrappedAudioQueue *)self setFormat:v6];
    [(HUWrappedAudioQueue *)self setShouldRebuildAudioQueue:1];
  }

  [(HUWrappedAudioQueue *)self _reconfigureQueueFormatForMultiChannelOutputIfNecessary];
}

- (void)setAudioQueueFlags:(unsigned int)a3
{
  if (self->_audioQueueFlags != a3)
  {
    self->_audioQueueFlags = a3;
    [(HUWrappedAudioQueue *)self setShouldRebuildAudioQueue:1];
  }
}

uint64_t __47__HUWrappedAudioQueue_handleMediaServicesReset__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _tearDownAudioQueue];
  v2 = *(a1 + 32);

  return [v2 _rebuildAudioQueue];
}

- (void)bufferCallback:(AudioQueueBuffer *)a3
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__36;
  v8 = __Block_byref_object_dispose__37;
  v9 = 0;
  AX_PERFORM_WITH_LOCK();
  v3 = v5[5];
  if (v3)
  {
    (*(v3 + 16))();
  }

  _Block_object_dispose(&v4, 8);
}

void __38__HUWrappedAudioQueue_bufferCallback___block_invoke(uint64_t a1)
{
  v9 = *(*(a1 + 48) + 24);
  v2 = [v9 completionHandler];

  if (v2)
  {
    v3 = [v9 completionHandler];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [v9 setCompletionHandler:0];
  }

  v6 = [*(a1 + 32) inflightBuffers];
  [v6 removeObject:v9];

  v7 = [*(a1 + 32) availableBuffers];
  [v7 addObject:v9];

  v8 = [*(a1 + 32) buffersAvailable];
  [v8 broadcast];
}

- (void)_scheduleDeferredStop
{
  v3 = [(HUWrappedAudioQueue *)self deferredStopQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__HUWrappedAudioQueue__scheduleDeferredStop__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_async(v3, block);
}

void __44__HUWrappedAudioQueue__scheduleDeferredStop__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) deferredStopSource];

  if (v2)
  {
    v3 = [*(a1 + 32) deferredStopSource];
    dispatch_source_cancel(v3);

    [*(a1 + 32) setDeferredStopSource:0];
  }

  v4 = [*(a1 + 32) deferredStopQueue];
  v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v4);
  [*(a1 + 32) setDeferredStopSource:v5];

  v6 = [*(a1 + 32) deferredStopSource];

  if (v6)
  {
    v7 = [*(a1 + 32) deferredStopSource];
    v8 = dispatch_time(0, 500000000);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);

    v9 = [*(a1 + 32) deferredStopSource];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __44__HUWrappedAudioQueue__scheduleDeferredStop__block_invoke_2;
    handler[3] = &unk_1E85C9F60;
    handler[4] = *(a1 + 32);
    dispatch_source_set_event_handler(v9, handler);

    v10 = [*(a1 + 32) deferredStopSource];
    dispatch_resume(v10);
  }
}

uint64_t __44__HUWrappedAudioQueue__scheduleDeferredStop__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (!result)
  {
    v3 = *(a1 + 32);
    return AX_PERFORM_WITH_LOCK();
  }

  return result;
}

uint64_t __44__HUWrappedAudioQueue__scheduleDeferredStop__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) aqRef];

  return AudioQueueStop(v1, 1u);
}

- (unint64_t)_minimumBufferByteSize
{
  v3 = [(HUWrappedAudioQueue *)self format];
  [v3 sampleRate];
  v5 = (v4 * 0.1);
  v6 = [(HUWrappedAudioQueue *)self format];
  v7 = *([v6 streamDescription] + 24) * v5;

  return v7;
}

- (void)_tearDownAudioQueue
{
  if ([(HUWrappedAudioQueue *)self aqRef])
  {
    AudioQueueRemovePropertyListener([(HUWrappedAudioQueue *)self aqRef], 0x6171726Eu, WrappedAudioQueueRunningStateChanged, self);
    AudioQueueStop([(HUWrappedAudioQueue *)self aqRef], 1u);
    AudioQueueDispose([(HUWrappedAudioQueue *)self aqRef], 1u);
    [(HUWrappedAudioQueue *)self setState:0];
    [(HUWrappedAudioQueue *)self setAqRef:0];
    AX_PERFORM_WITH_LOCK();
  }
}

void __42__HUWrappedAudioQueue__tearDownAudioQueue__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFA0] orderedSet];
  [*(a1 + 32) setAvailableBuffers:v2];

  v3 = [MEMORY[0x1E695DFA0] orderedSet];
  [*(a1 + 32) setInflightBuffers:v3];
}

- (void)_rebuildAudioQueue
{
  outAQ = 0;
  AudioQueueNewOutput([(AVAudioFormat *)self->_queueFormat streamDescription], WrappedAudioQueueCallback, self, 0, 0, [(HUWrappedAudioQueue *)self audioQueueFlags], &outAQ);
  if ([(HUWrappedAudioQueue *)self audioDevice])
  {
    ioDataSize = 8;
    outData = 0;
    *&inAddress.mSelector = *" diubolg";
    inAddress.mElement = 0;
    if (!AudioObjectGetPropertyData([(HUWrappedAudioQueue *)self audioDevice], &inAddress, 0, 0, &ioDataSize, &outData))
    {
      AudioQueueSetProperty(outAQ, 0x61716364u, &outData, 8u);
    }

    if (outData)
    {
      CFRelease(outData);
    }
  }

  *&inAddress.mSelector = 0;
  AudioQueueCreateTimeline(outAQ, &inAddress);
  [(HUWrappedAudioQueue *)self setAqTimeline:*&inAddress.mSelector];
  v3 = outAQ;
  self->_aqRef = outAQ;
  AudioQueueAddPropertyListener(v3, 0x6171726Eu, WrappedAudioQueueRunningStateChanged, self);
  v4 = [(HUWrappedAudioQueue *)self buffersAvailable];
  [v4 broadcast];
}

- (void)_reconfigureQueueFormatForMultiChannelOutputIfNecessary
{
  v3 = [(HUWrappedAudioQueue *)self format];
  queueFormat = self->_queueFormat;
  self->_queueFormat = v3;

  MEMORY[0x1EEE66BB8](v3, queueFormat);
}

@end