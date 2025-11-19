@interface IOGPUMetal4CommandQueue
- (IOGPUMetal4CommandQueue)initWithDevice:(id)a3;
- (IOGPUMetal4CommandQueue)initWithDevice:(id)a3 descriptor:(id)a4;
- (id)initIOGPUMTL4CommandQueue:(id)a3 descriptor:(id)a4 args:(IOGPUDeviceNewCommandQueueArgs *)a5 argsSize:(unsigned int)a6;
- (id)preCommit:(const void *)a3 count:(unint64_t)a4 options:(id)a5;
- (void)_commit:(const void *)a3 count:(unint64_t)a4 commitFeedback:(id)a5;
- (void)addResidencySet:(id)a3;
- (void)addResidencySets:(id *)a3 count:(unint64_t)a4;
- (void)allocateMappingCommandBuffer;
- (void)commitFillArgs:(id *)a3 count:(unint64_t)a4 args:(unint64_t)a5 argsSize:(unsigned int)a6 commitFeedback:(id)a7;
- (void)commitMappingCommandBuffer;
- (void)copyBufferMappingsFromBuffer:(id)a3 toBuffer:(id)a4 operations:(id *)a5 count:(unint64_t)a6;
- (void)dealloc;
- (void)endTier1MappingCommands;
- (void)removeResidencySet:(id)a3;
- (void)removeResidencySets:(id *)a3 count:(unint64_t)a4;
- (void)signalEvent:(id)a3 value:(unint64_t)a4;
- (void)updateBufferMappings:(id)a3 heap:(id)a4 operations:(id *)a5 count:(unint64_t)a6;
@end

@implementation IOGPUMetal4CommandQueue

- (id)initIOGPUMTL4CommandQueue:(id)a3 descriptor:(id)a4 args:(IOGPUDeviceNewCommandQueueArgs *)a5 argsSize:(unsigned int)a6
{
  if (!a5)
  {
    [IOGPUMetal4CommandQueue initIOGPUMTL4CommandQueue:descriptor:args:argsSize:];
  }

  if (a6 <= 0x407)
  {
    [IOGPUMetal4CommandQueue initIOGPUMTL4CommandQueue:descriptor:args:argsSize:];
  }

  v20.receiver = self;
  v20.super_class = IOGPUMetal4CommandQueue;
  v10 = [(_MTL4CommandQueue *)&v20 initWithDescriptor:a4 device:a3];
  v11 = v10;
  if (v10)
  {
    v10->_qosLevel = 2;
    bzero(a5, 0x408uLL);
    x = 0;
    pid_for_task(*MEMORY[0x1E69E9A60], &x);
    proc_pidpath(x, a5, 0x400u);
    a5->var1 = v11->_qosLevel;
    *&a5->var2 = 256;
    v12 = IOGPUCommandQueueCreate([a3 deviceRef], a5, a6);
    v11->_commandQueue = v12;
    if (!v12)
    {
      goto LABEL_14;
    }

    v13 = [a3 newDevicePoolAliasedCommandAllocator];
    v11->_commandAllocator = v13;
    if (!v13)
    {
      goto LABEL_14;
    }

    if (a4 && (v14 = [a4 feedbackQueue]) != 0)
    {
      v15 = dispatch_queue_create_with_target_V2("com.Metal4.CompletionQueue", 0, v14);
    }

    else
    {
      v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
      v15 = dispatch_queue_create("com.Metal4.CompletionQueue", v16);
    }

    v11->_completionQueue = v15;
    if (v15 && ((IOGPUCommandQueueSetDispatchQueue(v11->_commandQueue, v15), v11->_resourceGroupsLock._os_unfair_lock_opaque = 0, v11->_mappingLock._os_unfair_lock_opaque = 0, v11->_disableAsyncMapping) || (v17 = [*(&v11->super.super.super.isa + *MEMORY[0x1E6974240]) newSharedEvent], (v11->_postMappingEvent = v17) != 0)))
    {
      *(&v11->super.super.super.isa + *MEMORY[0x1E6974248]) = IOGPUCommandQueueGetGlobalTraceObjectID(v11->_commandQueue);
      *(&v11->super.super.super.isa + *MEMORY[0x1E6974250]) = 0;
      *(&v11->super.super.super.isa + *MEMORY[0x1E6974258]) = 0;
    }

    else
    {
LABEL_14:

      return 0;
    }
  }

  return v11;
}

- (IOGPUMetal4CommandQueue)initWithDevice:(id)a3 descriptor:(id)a4
{
  v6[129] = *MEMORY[0x1E69E9840];
  result = [(IOGPUMetal4CommandQueue *)self initIOGPUMTL4CommandQueue:a3 descriptor:a4 args:v6 argsSize:1032];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (IOGPUMetal4CommandQueue)initWithDevice:(id)a3
{
  v5[129] = *MEMORY[0x1E69E9840];
  result = [(IOGPUMetal4CommandQueue *)self initIOGPUMTL4CommandQueue:a3 descriptor:0 args:v5 argsSize:1032];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  self->_mappingCommandBuffer = 0;

  self->_postMappingEvent = 0;
  self->_resourceGroups[0] = 0;

  self->_resourceGroups[1] = 0;
  completionQueue = self->_completionQueue;
  if (completionQueue)
  {
    dispatch_release(completionQueue);
  }

  self->_completionQueue = 0;

  self->_commandAllocator = 0;
  commandQueue = self->_commandQueue;
  if (commandQueue)
  {
    IOGPUCommandQueueRelease(commandQueue);
  }

  self->_commandQueue = 0;
  v5.receiver = self;
  v5.super_class = IOGPUMetal4CommandQueue;
  [(_MTL4CommandQueue *)&v5 dealloc];
}

- (id)preCommit:(const void *)a3 count:(unint64_t)a4 options:(id)a5
{
  if (*__globalGPUCommPage)
  {
    self->_lastSubmissionID = IOGPUDeviceGetNextGlobalTraceID([*(&self->super.super.super.isa + *MEMORY[0x1E6974240]) deviceRef]);
    if (a4)
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = a3[v9];
        v12 = [v11 commandAllocator];
        if (*__globalGPUCommPage)
        {
          v13 = v12;
          [v11 globalTraceObjectID];
          [v13 globalTraceObjectID];
          [v13 allocatedSize];
          lastSubmissionID = self->_lastSubmissionID;
          IOGPUDeviceTraceEvent();
        }

        v9 = v10++;
      }

      while (v9 < a4);
    }
  }

  v16.receiver = self;
  v16.super_class = IOGPUMetal4CommandQueue;
  return [(_MTL4CommandQueue *)&v16 preCommit:a3 count:a4 options:a5];
}

- (void)commitFillArgs:(id *)a3 count:(unint64_t)a4 args:(unint64_t)a5 argsSize:(unsigned int)a6 commitFeedback:(id)a7
{
  if (a4)
  {
    v8 = a4;
    lastSubmissionID = self->_lastSubmissionID;
    v11 = a6;
    do
    {
      v12 = *a3;
      v13 = [*a3 commandAllocator];
      v14 = [v13 getGeneration];
      v15 = [v12 commandBufferStorage];
      if (v13)
      {
        v16 = v15 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        [IOGPUMetal4CommandQueue commitFillArgs:count:args:argsSize:commitFeedback:];
      }

      v17 = v15;
      IOGPUMetal4CommandBufferStorageFinalizeCommandBuffer(v15);
      aBlock[0] = MEMORY[0x1E69E9820];
      --v8;
      aBlock[1] = 3221225472;
      aBlock[2] = __77__IOGPUMetal4CommandQueue_commitFillArgs_count_args_argsSize_commitFeedback___block_invoke;
      aBlock[3] = &unk_1E8362FC8;
      aBlock[4] = self;
      aBlock[5] = v12;
      v21 = v14;
      aBlock[8] = v17;
      aBlock[9] = lastSubmissionID;
      aBlock[6] = v13;
      aBlock[7] = a7;
      v22 = v8 == 0;
      *(a5 + 24) = _Block_copy(aBlock);
      [v12 fillCommandBufferArgs:a5];
      a5 += v11;
      ++a3;
    }

    while (v8);
  }
}

void __77__IOGPUMetal4CommandQueue_commitFillArgs_count_args_argsSize_commitFeedback___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4)
  {
    v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithIOGPUError:a4 MTL4QueueError:1];
  }

  else
  {
    v8 = 0;
  }

  v11 = v8;
  LOBYTE(v10) = *(a1 + 84);
  LODWORD(v9) = a4;
  [*(a1 + 32) commandBufferComplete:*(a1 + 40) commandAllocator:*(a1 + 48) commandAllocatorGeneration:*(a1 + 80) storage:*(a1 + 64) submissionID:*(a1 + 72) startTime:a2 completionTime:a3 kernelError:v9 error:v8 commitFeedback:*(a1 + 56) commitComplete:v10];
}

- (void)_commit:(const void *)a3 count:(unint64_t)a4 commitFeedback:(id)a5
{
  if (!a4)
  {
    [IOGPUMetal4CommandQueue _commit:count:commitFeedback:];
  }

  [(IOGPUMetal4CommandQueue *)self commitMappingCommandBuffer];
  v9 = [*(&self->super.super.super.isa + *MEMORY[0x1E6974240]) cmdBufArgsSize];
  v10 = malloc_type_malloc(v9 * a4 + 32, 0x1080040130C75C4uLL);
  if (!v10)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [IOGPUMetal4CommandQueue _commit:count:commitFeedback:];
    }

    abort();
  }

  v11 = v10;
  v12 = v10 + 32;
  [(IOGPUMetal4CommandQueue *)self commitFillArgs:a3 count:a4 args:v10 + 32 argsSize:v9 commitFeedback:a5];
  *v11 = v12;
  v11[1] = self;
  *(v11 + 4) = v9;
  *(v11 + 5) = a4;
  v11[3] = self->_lastSubmissionID;
  v13 = *(&self->super.super.super.isa + *MEMORY[0x1E6974260]);

  dispatch_async_f(v13, v11, submitCommandBuffers);
}

- (void)signalEvent:(id)a3 value:(unint64_t)a4
{
  *(&self->super.super.super.isa + *MEMORY[0x1E6974250]) = 0;
  *(&self->super.super.super.isa + *MEMORY[0x1E6974258]) = 0;
  [(IOGPUMetal4CommandQueue *)self commitMappingCommandBuffer];
  if ([a3 _isSharedEvent])
  {
    v7 = [a3 eventPort];
    v8 = *(&self->super.super.super.isa + *MEMORY[0x1E6974260]);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__IOGPUMetal4CommandQueue_signalEvent_value___block_invoke;
    v12[3] = &unk_1E8362FF0;
    v13 = v7;
    v12[4] = self;
    v12[5] = a4;
    v9 = v12;
    v10 = v8;
  }

  else
  {
    v10 = *(&self->super.super.super.isa + *MEMORY[0x1E6974260]);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__IOGPUMetal4CommandQueue_signalEvent_value___block_invoke_2;
    v11[3] = &unk_1E8363018;
    v11[4] = a3;
    v11[5] = self;
    v11[6] = a4;
    v9 = v11;
  }

  dispatch_async(v10, v9);
}

uint64_t __45__IOGPUMetal4CommandQueue_signalEvent_value___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) eventName];
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 40) + 128);

  return IOGPUCommandQueueSignalMTLEvent(v4, v2, v3);
}

- (void)addResidencySet:(id)a3
{
  *(&self->super.super.super.isa + *MEMORY[0x1E6974250]) = 0;
  v3 = a3;
  *(&self->super.super.super.isa + *MEMORY[0x1E6974258]) = 0;
  _addResidencySets(self, &v3, 1uLL, 0);
}

- (void)addResidencySets:(id *)a3 count:(unint64_t)a4
{
  *(&self->super.super.super.isa + *MEMORY[0x1E6974250]) = 0;
  *(&self->super.super.super.isa + *MEMORY[0x1E6974258]) = 0;
  _addResidencySets(self, a3, a4, 1);
}

- (void)removeResidencySet:(id)a3
{
  *(&self->super.super.super.isa + *MEMORY[0x1E6974250]) = 0;
  v3 = a3;
  *(&self->super.super.super.isa + *MEMORY[0x1E6974258]) = 0;
  _removeResidencySets(self, &v3, 1uLL, 0);
}

- (void)removeResidencySets:(id *)a3 count:(unint64_t)a4
{
  *(&self->super.super.super.isa + *MEMORY[0x1E6974250]) = 0;
  *(&self->super.super.super.isa + *MEMORY[0x1E6974258]) = 0;
  _removeResidencySets(self, a3, a4, 0);
}

- (void)updateBufferMappings:(id)a3 heap:(id)a4 operations:(id *)a5 count:(unint64_t)a6
{
  *(&self->super.super.super.isa + *MEMORY[0x1E6974250]) = 0;
  *(&self->super.super.super.isa + *MEMORY[0x1E6974258]) = 0;
  os_unfair_lock_lock(&self->_mappingLock);
  mappingCommandBuffer = self->_mappingCommandBuffer;
  if (!mappingCommandBuffer)
  {
    [(IOGPUMetal4CommandQueue *)self allocateMappingCommandBuffer];
    mappingCommandBuffer = self->_mappingCommandBuffer;
  }

  [(IOGPUMetal4CommandBuffer *)mappingCommandBuffer updateBufferMappings:a3 heap:a4 operations:a5 count:a6];
  self->_tier1ResourceMapping = 1;

  os_unfair_lock_unlock(&self->_mappingLock);
}

- (void)copyBufferMappingsFromBuffer:(id)a3 toBuffer:(id)a4 operations:(id *)a5 count:(unint64_t)a6
{
  *(&self->super.super.super.isa + *MEMORY[0x1E6974250]) = 0;
  *(&self->super.super.super.isa + *MEMORY[0x1E6974258]) = 0;
  os_unfair_lock_lock(&self->_mappingLock);
  mappingCommandBuffer = self->_mappingCommandBuffer;
  if (!mappingCommandBuffer)
  {
    [(IOGPUMetal4CommandQueue *)self allocateMappingCommandBuffer];
    mappingCommandBuffer = self->_mappingCommandBuffer;
  }

  [(IOGPUMetal4CommandBuffer *)mappingCommandBuffer copyBufferMappingsFromBuffer:a3 toBuffer:a4 operations:a5 count:a6];
  self->_tier1ResourceMapping = 1;

  os_unfair_lock_unlock(&self->_mappingLock);
}

- (void)allocateMappingCommandBuffer
{
  os_unfair_lock_assert_owner(&self->_mappingLock);
  if (!self->_mappingCommandBuffer)
  {
    v3 = [*(&self->super.super.super.isa + *MEMORY[0x1E6974240]) newCommandBuffer];
    self->_mappingCommandBuffer = v3;
    if (!v3)
    {
      [IOGPUMetal4CommandQueue allocateMappingCommandBuffer];
    }

    commandAllocator = self->_commandAllocator;

    [(IOGPUMetal4CommandBuffer *)v3 beginCommandBufferWithAllocator:commandAllocator];
  }
}

- (void)commitMappingCommandBuffer
{
  os_unfair_lock_lock(&self->_mappingLock);
  if (self->_mappingCommandBuffer)
  {
    [(IOGPUMetal4CommandQueue *)self endTier1MappingCommands];
    [(IOGPUMetal4CommandBuffer *)self->_mappingCommandBuffer commitEncoder];
    [(IOGPUMetal4CommandBuffer *)self->_mappingCommandBuffer endCommandBuffer];
    mappingCommandBuffer = self->_mappingCommandBuffer;
    v3 = mappingCommandBuffer;
    self->_mappingCommandBuffer = 0;
    os_unfair_lock_unlock(&self->_mappingLock);
    if (v3)
    {
      [(IOGPUMetal4CommandQueue *)self _commit:&mappingCommandBuffer count:1 commitFeedback:0];
    }
  }

  else
  {

    os_unfair_lock_unlock(&self->_mappingLock);
  }
}

- (void)endTier1MappingCommands
{
  os_unfair_lock_assert_owner(&self->_mappingLock);
  if (self->_mappingCommandBuffer && self->_tier1ResourceMapping)
  {
    if (!self->_disableAsyncMapping)
    {
      [*(&self->super.super.super.isa + *MEMORY[0x1E6974240]) launchMappingThread];
      mappingCommandBuffer = self->_mappingCommandBuffer;
      postMappingEvent = self->_postMappingEvent;
      ++self->_postMappingValue;
      [IOGPUMetal4CommandBuffer encodePostMappingWaitEvent:"encodePostMappingWaitEvent:postMappingValue:timeout:" postMappingValue:postMappingEvent timeout:?];
    }

    self->_tier1ResourceMapping = 0;
  }
}

- (void)_commit:count:commitFeedback:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[IOGPUMetal4CommandQueue _commit:count:commitFeedback:]";
  _os_log_error_impl(&dword_1CA097000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s Failed to malloc for commit", &v1, 0xCu);
  v0 = *MEMORY[0x1E69E9840];
}

@end