@interface IOGPUMetal4CommandQueue
- (IOGPUMetal4CommandQueue)initWithDevice:(id)device;
- (IOGPUMetal4CommandQueue)initWithDevice:(id)device descriptor:(id)descriptor;
- (id)initIOGPUMTL4CommandQueue:(id)queue descriptor:(id)descriptor args:(IOGPUDeviceNewCommandQueueArgs *)args argsSize:(unsigned int)size;
- (id)preCommit:(const void *)commit count:(unint64_t)count options:(id)options;
- (void)_commit:(const void *)_commit count:(unint64_t)count commitFeedback:(id)feedback;
- (void)addResidencySet:(id)set;
- (void)addResidencySets:(id *)sets count:(unint64_t)count;
- (void)allocateMappingCommandBuffer;
- (void)commitFillArgs:(id *)args count:(unint64_t)count args:(unint64_t)a5 argsSize:(unsigned int)size commitFeedback:(id)feedback;
- (void)commitMappingCommandBuffer;
- (void)copyBufferMappingsFromBuffer:(id)buffer toBuffer:(id)toBuffer operations:(id *)operations count:(unint64_t)count;
- (void)dealloc;
- (void)endTier1MappingCommands;
- (void)removeResidencySet:(id)set;
- (void)removeResidencySets:(id *)sets count:(unint64_t)count;
- (void)signalEvent:(id)event value:(unint64_t)value;
- (void)updateBufferMappings:(id)mappings heap:(id)heap operations:(id *)operations count:(unint64_t)count;
@end

@implementation IOGPUMetal4CommandQueue

- (id)initIOGPUMTL4CommandQueue:(id)queue descriptor:(id)descriptor args:(IOGPUDeviceNewCommandQueueArgs *)args argsSize:(unsigned int)size
{
  if (!args)
  {
    [IOGPUMetal4CommandQueue initIOGPUMTL4CommandQueue:descriptor:args:argsSize:];
  }

  if (size <= 0x407)
  {
    [IOGPUMetal4CommandQueue initIOGPUMTL4CommandQueue:descriptor:args:argsSize:];
  }

  v20.receiver = self;
  v20.super_class = IOGPUMetal4CommandQueue;
  v10 = [(_MTL4CommandQueue *)&v20 initWithDescriptor:descriptor device:queue];
  v11 = v10;
  if (v10)
  {
    v10->_qosLevel = 2;
    bzero(args, 0x408uLL);
    x = 0;
    pid_for_task(*MEMORY[0x1E69E9A60], &x);
    proc_pidpath(x, args, 0x400u);
    args->var1 = v11->_qosLevel;
    *&args->var2 = 256;
    v12 = IOGPUCommandQueueCreate([queue deviceRef], args, size);
    v11->_commandQueue = v12;
    if (!v12)
    {
      goto LABEL_14;
    }

    newDevicePoolAliasedCommandAllocator = [queue newDevicePoolAliasedCommandAllocator];
    v11->_commandAllocator = newDevicePoolAliasedCommandAllocator;
    if (!newDevicePoolAliasedCommandAllocator)
    {
      goto LABEL_14;
    }

    if (descriptor && (v14 = [descriptor feedbackQueue]) != 0)
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

- (IOGPUMetal4CommandQueue)initWithDevice:(id)device descriptor:(id)descriptor
{
  v6[129] = *MEMORY[0x1E69E9840];
  result = [(IOGPUMetal4CommandQueue *)self initIOGPUMTL4CommandQueue:device descriptor:descriptor args:v6 argsSize:1032];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (IOGPUMetal4CommandQueue)initWithDevice:(id)device
{
  v5[129] = *MEMORY[0x1E69E9840];
  result = [(IOGPUMetal4CommandQueue *)self initIOGPUMTL4CommandQueue:device descriptor:0 args:v5 argsSize:1032];
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

- (id)preCommit:(const void *)commit count:(unint64_t)count options:(id)options
{
  if (*__globalGPUCommPage)
  {
    self->_lastSubmissionID = IOGPUDeviceGetNextGlobalTraceID([*(&self->super.super.super.isa + *MEMORY[0x1E6974240]) deviceRef]);
    if (count)
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = commit[v9];
        commandAllocator = [v11 commandAllocator];
        if (*__globalGPUCommPage)
        {
          v13 = commandAllocator;
          [v11 globalTraceObjectID];
          [v13 globalTraceObjectID];
          [v13 allocatedSize];
          lastSubmissionID = self->_lastSubmissionID;
          IOGPUDeviceTraceEvent();
        }

        v9 = v10++;
      }

      while (v9 < count);
    }
  }

  v16.receiver = self;
  v16.super_class = IOGPUMetal4CommandQueue;
  return [(_MTL4CommandQueue *)&v16 preCommit:commit count:count options:options];
}

- (void)commitFillArgs:(id *)args count:(unint64_t)count args:(unint64_t)a5 argsSize:(unsigned int)size commitFeedback:(id)feedback
{
  if (count)
  {
    countCopy = count;
    lastSubmissionID = self->_lastSubmissionID;
    sizeCopy = size;
    do
    {
      v12 = *args;
      commandAllocator = [*args commandAllocator];
      getGeneration = [commandAllocator getGeneration];
      commandBufferStorage = [v12 commandBufferStorage];
      if (commandAllocator)
      {
        v16 = commandBufferStorage == 0;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        [IOGPUMetal4CommandQueue commitFillArgs:count:args:argsSize:commitFeedback:];
      }

      v17 = commandBufferStorage;
      IOGPUMetal4CommandBufferStorageFinalizeCommandBuffer(commandBufferStorage);
      aBlock[0] = MEMORY[0x1E69E9820];
      --countCopy;
      aBlock[1] = 3221225472;
      aBlock[2] = __77__IOGPUMetal4CommandQueue_commitFillArgs_count_args_argsSize_commitFeedback___block_invoke;
      aBlock[3] = &unk_1E8362FC8;
      aBlock[4] = self;
      aBlock[5] = v12;
      v21 = getGeneration;
      aBlock[8] = v17;
      aBlock[9] = lastSubmissionID;
      aBlock[6] = commandAllocator;
      aBlock[7] = feedback;
      v22 = countCopy == 0;
      *(a5 + 24) = _Block_copy(aBlock);
      [v12 fillCommandBufferArgs:a5];
      a5 += sizeCopy;
      ++args;
    }

    while (countCopy);
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

- (void)_commit:(const void *)_commit count:(unint64_t)count commitFeedback:(id)feedback
{
  if (!count)
  {
    [IOGPUMetal4CommandQueue _commit:count:commitFeedback:];
  }

  [(IOGPUMetal4CommandQueue *)self commitMappingCommandBuffer];
  cmdBufArgsSize = [*(&self->super.super.super.isa + *MEMORY[0x1E6974240]) cmdBufArgsSize];
  v10 = malloc_type_malloc(cmdBufArgsSize * count + 32, 0x1080040130C75C4uLL);
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
  [(IOGPUMetal4CommandQueue *)self commitFillArgs:_commit count:count args:v10 + 32 argsSize:cmdBufArgsSize commitFeedback:feedback];
  *v11 = v12;
  v11[1] = self;
  *(v11 + 4) = cmdBufArgsSize;
  *(v11 + 5) = count;
  v11[3] = self->_lastSubmissionID;
  v13 = *(&self->super.super.super.isa + *MEMORY[0x1E6974260]);

  dispatch_async_f(v13, v11, submitCommandBuffers);
}

- (void)signalEvent:(id)event value:(unint64_t)value
{
  *(&self->super.super.super.isa + *MEMORY[0x1E6974250]) = 0;
  *(&self->super.super.super.isa + *MEMORY[0x1E6974258]) = 0;
  [(IOGPUMetal4CommandQueue *)self commitMappingCommandBuffer];
  if ([event _isSharedEvent])
  {
    eventPort = [event eventPort];
    v8 = *(&self->super.super.super.isa + *MEMORY[0x1E6974260]);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__IOGPUMetal4CommandQueue_signalEvent_value___block_invoke;
    v12[3] = &unk_1E8362FF0;
    v13 = eventPort;
    v12[4] = self;
    v12[5] = value;
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
    v11[4] = event;
    v11[5] = self;
    v11[6] = value;
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

- (void)addResidencySet:(id)set
{
  *(&self->super.super.super.isa + *MEMORY[0x1E6974250]) = 0;
  setCopy = set;
  *(&self->super.super.super.isa + *MEMORY[0x1E6974258]) = 0;
  _addResidencySets(self, &setCopy, 1uLL, 0);
}

- (void)addResidencySets:(id *)sets count:(unint64_t)count
{
  *(&self->super.super.super.isa + *MEMORY[0x1E6974250]) = 0;
  *(&self->super.super.super.isa + *MEMORY[0x1E6974258]) = 0;
  _addResidencySets(self, sets, count, 1);
}

- (void)removeResidencySet:(id)set
{
  *(&self->super.super.super.isa + *MEMORY[0x1E6974250]) = 0;
  setCopy = set;
  *(&self->super.super.super.isa + *MEMORY[0x1E6974258]) = 0;
  _removeResidencySets(self, &setCopy, 1uLL, 0);
}

- (void)removeResidencySets:(id *)sets count:(unint64_t)count
{
  *(&self->super.super.super.isa + *MEMORY[0x1E6974250]) = 0;
  *(&self->super.super.super.isa + *MEMORY[0x1E6974258]) = 0;
  _removeResidencySets(self, sets, count, 0);
}

- (void)updateBufferMappings:(id)mappings heap:(id)heap operations:(id *)operations count:(unint64_t)count
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

  [(IOGPUMetal4CommandBuffer *)mappingCommandBuffer updateBufferMappings:mappings heap:heap operations:operations count:count];
  self->_tier1ResourceMapping = 1;

  os_unfair_lock_unlock(&self->_mappingLock);
}

- (void)copyBufferMappingsFromBuffer:(id)buffer toBuffer:(id)toBuffer operations:(id *)operations count:(unint64_t)count
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

  [(IOGPUMetal4CommandBuffer *)mappingCommandBuffer copyBufferMappingsFromBuffer:buffer toBuffer:toBuffer operations:operations count:count];
  self->_tier1ResourceMapping = 1;

  os_unfair_lock_unlock(&self->_mappingLock);
}

- (void)allocateMappingCommandBuffer
{
  os_unfair_lock_assert_owner(&self->_mappingLock);
  if (!self->_mappingCommandBuffer)
  {
    newCommandBuffer = [*(&self->super.super.super.isa + *MEMORY[0x1E6974240]) newCommandBuffer];
    self->_mappingCommandBuffer = newCommandBuffer;
    if (!newCommandBuffer)
    {
      [IOGPUMetal4CommandQueue allocateMappingCommandBuffer];
    }

    commandAllocator = self->_commandAllocator;

    [(IOGPUMetal4CommandBuffer *)newCommandBuffer beginCommandBufferWithAllocator:commandAllocator];
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