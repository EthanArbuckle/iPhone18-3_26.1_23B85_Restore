@interface IOGPUMetalCommandBuffer
- (void)_debugBytes:(const char *)bytes length:(unint64_t)length output_type:(unsigned int)output_type;
- (void)_encodePurgedResources;
- (void)_reserveKernelCommandBufferSpace:(unint64_t)space;
- (void)addPurgedHeap:(id)heap;
- (void)addPurgedResource:(id)resource;
- (void)commit;
- (void)commitAndReset;
- (void)dealloc;
- (void)didCompleteWithStartTime:(unint64_t)time endTime:(unint64_t)endTime error:(id)error;
- (void)encodeConditionalAbortEvent:(id)event;
- (void)encodeSignalEvent:(id)event value:(unint64_t)value;
- (void)encodeSignalEvent:(id)event value:(unint64_t)value agentMask:(unint64_t)mask;
- (void)encodeSignalEventScheduled:(id)scheduled value:(unint64_t)value;
- (void)encodeSubmitSleepMS:(unsigned int)s;
- (void)encodeWaitForEvent:(id)event value:(unint64_t)value;
- (void)fillCommandBufferArgs:(IOGPUCommandQueueCommandBufferArgs *)args commandQueue:(id)queue;
- (void)getCurrentKernelCommandBufferPointer:(void *)pointer end:(void *)end;
- (void)getCurrentKernelCommandBufferStart:(void *)start current:(void *)current end:(void *)end;
- (void)kernelCommandCollectTimeStamp;
- (void)kprintfBytes:(const char *)bytes length:(unint64_t)length;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)setCurrentCommandEncoder:(id)encoder;
- (void)setCurrentSegmentListPointer:(void *)pointer;
- (void)setLabel:(id)label;
- (void)setProtectionOptions:(unint64_t)options;
- (void)setResponsibleTaskIDs:(const unsigned int *)ds count:(unsigned int)count;
- (void)useInternalResidencySet:(id)set;
- (void)useInternalResidencySets:(const void *)sets count:(unint64_t)count;
- (void)useResidencySet:(id)set;
- (void)useResidencySets:(const void *)sets count:(unint64_t)count;
- (void)validate;
@end

@implementation IOGPUMetalCommandBuffer

- (void)commit
{
  if (*(&self->super.super.super.isa + *MEMORY[0x1E69742A0]) == 1)
  {
    v5.receiver = self;
    v5.super_class = IOGPUMetalCommandBuffer;
    [(_MTLCommandBuffer *)&v5 bindLogState];
  }

  if ([(_MTLCommandBuffer *)self isProfilingEnabled])
  {
    [(IOGPUMetalCommandBuffer *)self kernelCommandCollectTimeStamp];
  }

  if (self->_purgedResources)
  {
    [(IOGPUMetalCommandBuffer *)self _encodePurgedResources];
  }

  IOGPUMetalCommandBufferStorageFinalizeShmemHeader(self->_storage);
  if (*__globalGPUCommPage)
  {
    v3 = *(&self->super.super.super.isa + *MEMORY[0x1E6974280]);
    IOGPUDeviceTraceEvent();
  }

  v4.receiver = self;
  v4.super_class = IOGPUMetalCommandBuffer;
  [(_MTLCommandBuffer *)&v4 commit];
}

- (void)validate
{
  if (*(&self->super.super.super.isa + *MEMORY[0x1E69742B0]) >= 2)
  {
    [IOGPUMetalCommandBuffer validate];
  }

  if (*(&self->super.super.super.isa + *MEMORY[0x1E6974278]))
  {
    [IOGPUMetalCommandBuffer validate];
  }
}

- (void)dealloc
{
  iogpumetal_atomic_add(self->_device + 189, 0xFFFFFFFF);
  storage = self->_storage;
  if (storage)
  {
    var0 = storage->var0;
    IOGPUMetalCommandBufferStorageDealloc(storage);
    if (((*(&self->super.super.super.isa + *MEMORY[0x1E6974298]))[400] & 1) == 0)
    {
      [(IOGPUMetalDevice *)var0 kickCleanupQueue];
    }
  }

  commitAndResetSem = self->_commitAndResetSem;
  if (commitAndResetSem)
  {
    dispatch_release(commitAndResetSem);
  }

  self->_device = 0;
  self->_purgedResources = 0;
  v6.receiver = self;
  v6.super_class = IOGPUMetalCommandBuffer;
  [(_MTLCommandBuffer *)&v6 dealloc];
}

- (void)setLabel:(id)label
{
  v9.receiver = self;
  v9.super_class = IOGPUMetalCommandBuffer;
  [(_MTLObjectWithLabel *)&v9 setLabel:?];
  if (*__globalGPUCommPage)
  {
    deviceRef = [(MTLDevice *)self->_device deviceRef];
    v6 = *(&self->super.super.super.isa + *MEMORY[0x1E6974280]);
    v7 = *MEMORY[0x1E6974288];
    v8 = *(&self->super.super.super.isa + v7);
    [label cStringUsingEncoding:1];
    *(&self->super.super.super.isa + v7) = IOGPUDeviceTraceObjectLabel(deviceRef, 8, 0, v6, v8);
  }
}

- (void)getCurrentKernelCommandBufferStart:(void *)start current:(void *)current end:(void *)end
{
  storage = self->_storage;
  if (start)
  {
    *start = storage->var4;
  }

  if (current)
  {
    *current = storage->var5;
  }

  if (end)
  {
    *end = storage->var6;
  }
}

- (void)getCurrentKernelCommandBufferPointer:(void *)pointer end:(void *)end
{
  storage = self->_storage;
  if (pointer)
  {
    *pointer = storage->var5;
  }

  if (end)
  {
    *end = storage->var6;
  }
}

- (void)didCompleteWithStartTime:(unint64_t)time endTime:(unint64_t)endTime error:(id)error
{
  if (*(&self->super.super.super.isa + *MEMORY[0x1E6974270]))
  {
    [IOGPUMetalCommandBuffer didCompleteWithStartTime:endTime:error:];
  }

  if (*(&self->super.super.super.isa + *MEMORY[0x1E6974290]) == 1)
  {
    *(&self->super.super.super.isa + *MEMORY[0x1E69742B8]) = (*self->_submitToHardwareTimeStampPointer * *algn_1ED5DB184 / _iogpuTimebaseInfo);
  }

  device = self->_device;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [IOGPUMetalCommandBuffer didCompleteWithStartTime:endTime:error:];
  }

  v12.receiver = self;
  v12.super_class = IOGPUMetalCommandBuffer;
  [(_MTLCommandBuffer *)&v12 didCompleteWithStartTime:time endTime:endTime error:error];
  storage = self->_storage;
  var0 = storage->var0;
  IOGPUMetalCommandBufferStorageDealloc(storage);
  if (((*(&self->super.super.super.isa + *MEMORY[0x1E6974298]))[400] & 1) == 0)
  {
    [(IOGPUMetalDevice *)var0 kickCleanupQueue];
  }

  self->_storage = 0;
}

- (void)setCurrentSegmentListPointer:(void *)pointer
{
  storage = self->_storage;
  storage->var12 = pointer;
  storage->var13 = (pointer + 32);
}

- (void)commitAndReset
{
  commitAndResetSem = self->_commitAndResetSem;
  if (!commitAndResetSem)
  {
    [IOGPUMetalCommandBuffer commitAndReset];
  }

  dispatch_semaphore_wait(commitAndResetSem, 0xFFFFFFFFFFFFFFFFLL);
  if ([(_MTLCommandBuffer *)self isProfilingEnabled])
  {
    [(IOGPUMetalCommandBuffer *)self kernelCommandCollectTimeStamp];
  }

  if (self->_purgedResources)
  {
    [(IOGPUMetalCommandBuffer *)self _encodePurgedResources];
  }

  IOGPUMetalCommandBufferStorageFinalizeShmemHeader(self->_storage);
  v8.receiver = self;
  v8.super_class = IOGPUMetalCommandBuffer;
  [(_MTLCommandBuffer *)&v8 commitAndReset];
  if (self->_storage)
  {
    [IOGPUMetalCommandBuffer commitAndReset];
  }

  v4 = *(self->_device + 89);
  v5 = *(&self->super.super.super.isa + *MEMORY[0x1E6974280]);
  v7.receiver = self;
  v7.super_class = IOGPUMetalCommandBuffer;
  retainedReferences = [(_MTLCommandBuffer *)&v7 retainedReferences];
  self->_storage = IOGPUMetalCommandBufferStoragePoolCreateStorage(v4, v5, retainedReferences);
  dispatch_semaphore_signal(self->_commitAndResetSem);
}

- (void)kernelCommandCollectTimeStamp
{
  storage = self->_storage;
  var5 = storage->var5;
  if ((storage->var6 - var5) <= 0xF)
  {
    IOGPUMetalCommandBufferStorageGrowKernelCommandBuffer(storage, 16);
    storage = self->_storage;
    var5 = storage->var5;
  }

  IOGPUMetalCommandBufferStorageBeginSegment(storage, var5);
  *var5 = 0x1000000001;
  self->_submitToHardwareTimeStampPointer = (var5 + 8);
  self->_storage->var5 = var5 + 16;
  v5 = self->_storage;

  IOGPUMetalCommandBufferStorageEndSegment(v5);
}

- (void)setCurrentCommandEncoder:(id)encoder
{
  if (*(&self->super.super.super.isa + *MEMORY[0x1E69742B0]) >= 2)
  {
    [IOGPUMetalCommandBuffer setCurrentCommandEncoder:];
  }

  v7.receiver = self;
  v7.super_class = IOGPUMetalCommandBuffer;
  [(_MTLCommandBuffer *)&v7 setCurrentCommandEncoder:?];
  if (*__globalGPUCommPage)
  {
    v5 = *(&self->super.super.super.isa + *MEMORY[0x1E6974280]);
    [encoder globalTraceObjectID];
    getpid();
    IOGPUDeviceTraceEvent();
  }

  storage = self->_storage;
  if (storage)
  {
    storage->var26 = [encoder globalTraceObjectID];
  }
}

- (void)pushDebugGroup:(id)group
{
  if (*__globalGPUCommPage)
  {
    deviceRef = [(MTLDevice *)self->_device deviceRef];
    globalTraceObjectID = [(_MTLCommandBuffer *)self globalTraceObjectID];
    [group cStringUsingEncoding:1];
    IOGPUDeviceTraceObjectLabel(deviceRef, 48, 5, globalTraceObjectID, 0);
  }

  v7.receiver = self;
  v7.super_class = IOGPUMetalCommandBuffer;
  [(_MTLCommandBuffer *)&v7 pushDebugGroup:group];
}

- (void)popDebugGroup
{
  if (*__globalGPUCommPage)
  {
    [(MTLDevice *)self->_device deviceRef];
    [(_MTLCommandBuffer *)self globalTraceObjectID];
    IOGPUDeviceTraceEvent();
  }

  v3.receiver = self;
  v3.super_class = IOGPUMetalCommandBuffer;
  [(_MTLCommandBuffer *)&v3 popDebugGroup];
}

- (void)_reserveKernelCommandBufferSpace:(unint64_t)space
{
  storage = self->_storage;
  result = storage->var5;
  var6 = storage->var6;
  v8 = result;
  if (var6 - result < space)
  {
    [(IOGPUMetalCommandBuffer *)self growKernelCommandBuffer:space];
    [(IOGPUMetalCommandBuffer *)self getCurrentKernelCommandBufferPointer:&v8 end:&var6];
    result = v8;
    if (var6 - v8 < space)
    {
      [IOGPUMetalCommandBuffer _reserveKernelCommandBufferSpace:];
    }

    storage = self->_storage;
  }

  storage->var5 = result + space;
  return result;
}

- (void)_debugBytes:(const char *)bytes length:(unint64_t)length output_type:(unsigned int)output_type
{
  v9 = (length + 19) & 0xFFFFFFFC;
  0xFFFFFFFFFFFFFFFCLL = [(IOGPUMetalCommandBuffer *)self _reserveKernelCommandBufferSpace:(length + 19) & 0xFFFFFFFFFFFFFFFCLL];
  v11 = 0xFFFFFFFFFFFFFFFCLL;
  *0xFFFFFFFFFFFFFFFCLL = 0;
  0xFFFFFFFFFFFFFFFCLL[1] = v9;
  0xFFFFFFFFFFFFFFFCLL[2] = output_type;
  0xFFFFFFFFFFFFFFFCLL[3] = length;
  memcpy(0xFFFFFFFFFFFFFFFCLL + 4, bytes, length);
  IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, v11);
  storage = self->_storage;

  IOGPUMetalCommandBufferStorageEndKernelCommands(storage, v11 + v9);
}

- (void)kprintfBytes:(const char *)bytes length:(unint64_t)length
{
  [(IOGPUMetalCommandBuffer *)self commitEncoder];

  [(IOGPUMetalCommandBuffer *)self _debugBytes:bytes length:length output_type:0];
}

- (void)encodeSubmitSleepMS:(unsigned int)s
{
  [(IOGPUMetalCommandBuffer *)self commitEncoder];
  v5 = [(IOGPUMetalCommandBuffer *)self _reserveKernelCommandBufferSpace:16];
  v6 = v5;
  *v5 = 0x1000000002;
  v5[2] = s;
  v5[3] = 0;
  IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, v5);
  storage = self->_storage;

  IOGPUMetalCommandBufferStorageEndKernelCommands(storage, v6 + 16);
}

- (void)encodeSignalEvent:(id)event value:(unint64_t)value
{
  if (*(&self->super.super.super.isa + *MEMORY[0x1E6974278]))
  {
    [IOGPUMetalCommandBuffer encodeSignalEvent:value:];
  }

  [(IOGPUMetalCommandBuffer *)self commitEncoder];
  v7 = [(IOGPUMetalCommandBuffer *)self _reserveKernelCommandBufferSpace:24];
  *v7 = [event _encodeIOGPUKernelSignalEventCommandArgs:v7 + 2 value:value];
  v7[1] = 24;
  IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, v7);
  IOGPUMetalCommandBufferStorageEndKernelCommands(self->_storage, v7 + 24);
  if (*(&self->super.super.super.isa + *MEMORY[0x1E69742A8]) == 1)
  {

    [(_MTLCommandBuffer *)self _addRetainedObject:event];
  }
}

- (void)encodeSignalEvent:(id)event value:(unint64_t)value agentMask:(unint64_t)mask
{
  if (*(&self->super.super.super.isa + *MEMORY[0x1E6974278]))
  {
    [IOGPUMetalCommandBuffer encodeSignalEvent:value:agentMask:];
  }

  [(IOGPUMetalCommandBuffer *)self commitEncoder];
  v9 = [(IOGPUMetalCommandBuffer *)self _reserveKernelCommandBufferSpace:32];
  *v9 = [event _encodeIOGPUKernelSignalEventAgentCommandArgs:v9 + 2 value:value agentMask:mask];
  v9[1] = 32;
  IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, v9);
  IOGPUMetalCommandBufferStorageEndKernelCommands(self->_storage, v9 + 32);
  if (*(&self->super.super.super.isa + *MEMORY[0x1E69742A8]) == 1)
  {

    [(_MTLCommandBuffer *)self _addRetainedObject:event];
  }
}

- (void)encodeSignalEventScheduled:(id)scheduled value:(unint64_t)value
{
  if (*(&self->super.super.super.isa + *MEMORY[0x1E6974278]))
  {
    [IOGPUMetalCommandBuffer encodeSignalEventScheduled:value:];
  }

  [(IOGPUMetalCommandBuffer *)self commitEncoder];
  v7 = [(IOGPUMetalCommandBuffer *)self _reserveKernelCommandBufferSpace:24];
  *v7 = [scheduled _encodeIOGPUKernelSignalEventScheduledCommandArgs:v7 + 2 value:value];
  v7[1] = 24;
  IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, v7);
  IOGPUMetalCommandBufferStorageEndKernelCommands(self->_storage, v7 + 24);
  if (*(&self->super.super.super.isa + *MEMORY[0x1E69742A8]) == 1)
  {

    [(_MTLCommandBuffer *)self _addRetainedObject:scheduled];
  }
}

- (void)encodeWaitForEvent:(id)event value:(unint64_t)value
{
  if (*(&self->super.super.super.isa + *MEMORY[0x1E6974278]))
  {
    [IOGPUMetalCommandBuffer encodeWaitForEvent:value:];
  }

  [(IOGPUMetalCommandBuffer *)self commitEncoder];
  v7 = [(IOGPUMetalCommandBuffer *)self _reserveKernelCommandBufferSpace:24];
  *v7 = [event _encodeIOGPUKernelWaitEventCommandArgs:v7 + 2 value:value timeout:0xFFFFFFFFLL];
  v7[1] = 24;
  IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, v7);
  IOGPUMetalCommandBufferStorageEndKernelCommands(self->_storage, v7 + 24);
  if (*(&self->super.super.super.isa + *MEMORY[0x1E69742A8]) == 1)
  {

    [(_MTLCommandBuffer *)self _addRetainedObject:event];
  }
}

- (void)encodeConditionalAbortEvent:(id)event
{
  if (*(&self->super.super.super.isa + *MEMORY[0x1E6974278]))
  {
    [IOGPUMetalCommandBuffer encodeConditionalAbortEvent:];
  }

  [(IOGPUMetalCommandBuffer *)self commitEncoder];
  v5 = [(IOGPUMetalCommandBuffer *)self _reserveKernelCommandBufferSpace:24];
  *(v5 + 2) = 0;
  *(v5 + 1) = 0;
  *v5 = [event _encodeIOGPUKernelConditionalEventAbortCommandArgs:v5 + 2];
  v5[1] = 24;
  IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, v5);
  IOGPUMetalCommandBufferStorageEndKernelCommands(self->_storage, v5 + 24);
  if (*(&self->super.super.super.isa + *MEMORY[0x1E69742A8]) == 1)
  {

    [(_MTLCommandBuffer *)self _addRetainedObject:event];
  }
}

- (void)setProtectionOptions:(unint64_t)options
{
  if (*(&self->super.super.super.isa + *MEMORY[0x1E6974278]))
  {
    [IOGPUMetalCommandBuffer setProtectionOptions:];
  }

  if (self->_protectionOptions != options)
  {
    [(IOGPUMetalCommandBuffer *)self commitEncoder];
    self->_protectionOptions = options;
    v5 = [(IOGPUMetalCommandBuffer *)self _reserveKernelCommandBufferSpace:16];
    v6 = v5;
    *v5 = 0x1000000009;
    v5[1] = options;
    IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, v5);
    storage = self->_storage;

    IOGPUMetalCommandBufferStorageEndKernelCommands(storage, v6 + 16);
  }
}

- (void)addPurgedResource:(id)resource
{
  purgedResources = self->_purgedResources;
  if (!purgedResources)
  {
    purgedResources = objc_alloc_init(MEMORY[0x1E695DFA8]);
    self->_purgedResources = purgedResources;
  }

  [(NSMutableSet *)purgedResources addObject:resource];
}

- (void)addPurgedHeap:(id)heap
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    purgedResources = self->_purgedResources;
    if (!purgedResources)
    {
      purgedResources = objc_alloc_init(MEMORY[0x1E695DFA8]);
      self->_purgedResources = purgedResources;
    }

    v6 = *(heap + 7);

    [(NSMutableSet *)purgedResources addObject:v6];
  }
}

- (void)_encodePurgedResources
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = 4 * [(NSMutableSet *)self->_purgedResources count]+ 12;
  v4 = [(IOGPUMetalCommandBuffer *)self _reserveKernelCommandBufferSpace:v3];
  *v4 = 8;
  v4[1] = v3;
  v13 = v3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  purgedResources = self->_purgedResources;
  v6 = [(NSMutableSet *)purgedResources countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(purgedResources);
        }

        v8 = v11 + 1;
        v4[v11++ + 3] = *(*(*(&v14 + 1) + 8 * v10++) + 80);
      }

      while (v7 != v10);
      v7 = [(NSMutableSet *)purgedResources countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v4[2] = v8;
  IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, v4);
  IOGPUMetalCommandBufferStorageEndKernelCommands(self->_storage, v4 + v13);

  self->_purgedResources = 0;
  v12 = *MEMORY[0x1E69E9840];
}

- (void)fillCommandBufferArgs:(IOGPUCommandQueueCommandBufferArgs *)args commandQueue:(id)queue
{
  storage = self->_storage;
  args->var0 = *(storage->var3 + 32);
  args->var1 = *(storage->var8 + 32);
  var0 = storage->var7.var0;
  if (var0)
  {
    LODWORD(var0) = var0[32];
  }

  args->var2 = var0;
  v9 = storage->var38[1];
  if (v9)
  {
    LODWORD(v9) = v9[32];
  }

  args->var5 = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__IOGPUMetalCommandBuffer_fillCommandBufferArgs_commandQueue___block_invoke;
  aBlock[3] = &unk_1E8362950;
  aBlock[4] = self;
  v10 = _Block_copy(aBlock);
  args->var3.var1 = v10;
  self->_scheduledCallbackBlockPtr = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__IOGPUMetalCommandBuffer_fillCommandBufferArgs_commandQueue___block_invoke_2;
  v12[3] = &unk_1E8362978;
  v12[4] = self;
  v12[5] = queue;
  v11 = _Block_copy(v12);
  args->var4.var1 = v11;
  self->_completedCallbackBlockPtr = v11;
}

void __62__IOGPUMetalCommandBuffer_fillCommandBufferArgs_commandQueue___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (*__globalGPUCommPage)
  {
    [*(a1 + 32) globalTraceObjectID];
    IOGPUDeviceTraceEvent();
  }

  if (a4)
  {
    v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithIOGPUError:a4 MTL4QueueError:0];
    [*(a1 + 32) didScheduleWithStartTime:a2 endTime:a3 error:v9];
  }

  else
  {
    v8 = *(a1 + 32);

    [v8 didScheduleWithStartTime:a2 endTime:a3 error:0];
  }
}

void __62__IOGPUMetalCommandBuffer_fillCommandBufferArgs_commandQueue___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (*__globalGPUCommPage)
  {
    [*(a1 + 32) globalTraceObjectID];
    IOGPUDeviceTraceEvent();
  }

  if (a4)
  {
    v12 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithIOGPUError:a4 MTL4QueueError:0];
    *(*(a1 + 32) + 672) = a5;
    [*(a1 + 40) commandBufferDidComplete:*(a1 + 32) startTime:a2 completionTime:a3 error:v12];
  }

  else
  {
    v11 = *(a1 + 32);
    v10 = *(a1 + 40);

    [v10 commandBufferDidComplete:v11 startTime:a2 completionTime:a3 error:0];
  }
}

- (void)setResponsibleTaskIDs:(const unsigned int *)ds count:(unsigned int)count
{
  if (*(&self->super.super.super.isa + *MEMORY[0x1E6974278]))
  {
    [IOGPUMetalCommandBuffer setResponsibleTaskIDs:count:];
  }

  [(IOGPUMetalCommandBuffer *)self commitEncoder];
  if (ds)
  {
    countCopy = count;
  }

  else
  {
    countCopy = 0;
  }

  v8 = (4 * countCopy + 15) & 0xFFFFFFFC;
  0x7FFFFFFFCLL = [(IOGPUMetalCommandBuffer *)self _reserveKernelCommandBufferSpace:(4 * countCopy + 15) & 0x7FFFFFFFCLL];
  v10 = 0x7FFFFFFFCLL;
  *0x7FFFFFFFCLL = 14;
  0x7FFFFFFFCLL[1] = v8;
  0x7FFFFFFFCLL[2] = countCopy;
  if (countCopy)
  {
    v11 = 0x7FFFFFFFCLL + 3;
    do
    {
      v12 = *ds++;
      *v11++ = v12;
      --countCopy;
    }

    while (countCopy);
  }

  IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, 0x7FFFFFFFCLL);
  storage = self->_storage;

  IOGPUMetalCommandBufferStorageEndKernelCommands(storage, v10 + v8);
}

- (void)useResidencySet:(id)set
{
  setCopy = set;
  IOGPUMetalCommandBufferStorageAddResidencySets(self->_storage, &setCopy, 1, 0);
  if (*__globalGPUCommPage)
  {
    v4 = *(&self->super.super.super.isa + *MEMORY[0x1E6974280]);
    v5 = setCopy[6];
    IOGPUDeviceTraceEvent();
  }
}

- (void)useResidencySets:(const void *)sets count:(unint64_t)count
{
  countCopy = count;
  setsCopy = sets;
  IOGPUMetalCommandBufferStorageAddResidencySets(self->_storage, sets, count, 0);
  v7 = __globalGPUCommPage;
  if (*__globalGPUCommPage)
  {
    v8 = countCopy == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = MEMORY[0x1E6974280];
    do
    {
      if (*v7)
      {
        v10 = *(&self->super.super.super.isa + *v9);
        v11 = *(*setsCopy + 6);
        IOGPUDeviceTraceEvent();
        v7 = __globalGPUCommPage;
      }

      ++setsCopy;
      --countCopy;
    }

    while (countCopy);
  }
}

- (void)useInternalResidencySet:(id)set
{
  setCopy = set;
  IOGPUMetalCommandBufferStorageAddResidencySets(self->_storage, &setCopy, 1, 1u);
  if (*__globalGPUCommPage)
  {
    v4 = *(&self->super.super.super.isa + *MEMORY[0x1E6974280]);
    v5 = setCopy[6];
    IOGPUDeviceTraceEvent();
  }
}

- (void)useInternalResidencySets:(const void *)sets count:(unint64_t)count
{
  countCopy = count;
  setsCopy = sets;
  IOGPUMetalCommandBufferStorageAddResidencySets(self->_storage, sets, count, 1u);
  v7 = __globalGPUCommPage;
  if (*__globalGPUCommPage)
  {
    v8 = countCopy == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = MEMORY[0x1E6974280];
    do
    {
      if (*v7)
      {
        v10 = *(&self->super.super.super.isa + *v9);
        v11 = *(*setsCopy + 6);
        IOGPUDeviceTraceEvent();
        v7 = __globalGPUCommPage;
      }

      ++setsCopy;
      --countCopy;
    }

    while (countCopy);
  }
}

@end