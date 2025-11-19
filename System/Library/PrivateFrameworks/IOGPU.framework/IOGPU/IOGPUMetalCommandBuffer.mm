@interface IOGPUMetalCommandBuffer
- (void)_debugBytes:(const char *)a3 length:(unint64_t)a4 output_type:(unsigned int)a5;
- (void)_encodePurgedResources;
- (void)_reserveKernelCommandBufferSpace:(unint64_t)a3;
- (void)addPurgedHeap:(id)a3;
- (void)addPurgedResource:(id)a3;
- (void)commit;
- (void)commitAndReset;
- (void)dealloc;
- (void)didCompleteWithStartTime:(unint64_t)a3 endTime:(unint64_t)a4 error:(id)a5;
- (void)encodeConditionalAbortEvent:(id)a3;
- (void)encodeSignalEvent:(id)a3 value:(unint64_t)a4;
- (void)encodeSignalEvent:(id)a3 value:(unint64_t)a4 agentMask:(unint64_t)a5;
- (void)encodeSignalEventScheduled:(id)a3 value:(unint64_t)a4;
- (void)encodeSubmitSleepMS:(unsigned int)a3;
- (void)encodeWaitForEvent:(id)a3 value:(unint64_t)a4;
- (void)fillCommandBufferArgs:(IOGPUCommandQueueCommandBufferArgs *)a3 commandQueue:(id)a4;
- (void)getCurrentKernelCommandBufferPointer:(void *)a3 end:(void *)a4;
- (void)getCurrentKernelCommandBufferStart:(void *)a3 current:(void *)a4 end:(void *)a5;
- (void)kernelCommandCollectTimeStamp;
- (void)kprintfBytes:(const char *)a3 length:(unint64_t)a4;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)a3;
- (void)setCurrentCommandEncoder:(id)a3;
- (void)setCurrentSegmentListPointer:(void *)a3;
- (void)setLabel:(id)a3;
- (void)setProtectionOptions:(unint64_t)a3;
- (void)setResponsibleTaskIDs:(const unsigned int *)a3 count:(unsigned int)a4;
- (void)useInternalResidencySet:(id)a3;
- (void)useInternalResidencySets:(const void *)a3 count:(unint64_t)a4;
- (void)useResidencySet:(id)a3;
- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4;
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

- (void)setLabel:(id)a3
{
  v9.receiver = self;
  v9.super_class = IOGPUMetalCommandBuffer;
  [(_MTLObjectWithLabel *)&v9 setLabel:?];
  if (*__globalGPUCommPage)
  {
    v5 = [(MTLDevice *)self->_device deviceRef];
    v6 = *(&self->super.super.super.isa + *MEMORY[0x1E6974280]);
    v7 = *MEMORY[0x1E6974288];
    v8 = *(&self->super.super.super.isa + v7);
    [a3 cStringUsingEncoding:1];
    *(&self->super.super.super.isa + v7) = IOGPUDeviceTraceObjectLabel(v5, 8, 0, v6, v8);
  }
}

- (void)getCurrentKernelCommandBufferStart:(void *)a3 current:(void *)a4 end:(void *)a5
{
  storage = self->_storage;
  if (a3)
  {
    *a3 = storage->var4;
  }

  if (a4)
  {
    *a4 = storage->var5;
  }

  if (a5)
  {
    *a5 = storage->var6;
  }
}

- (void)getCurrentKernelCommandBufferPointer:(void *)a3 end:(void *)a4
{
  storage = self->_storage;
  if (a3)
  {
    *a3 = storage->var5;
  }

  if (a4)
  {
    *a4 = storage->var6;
  }
}

- (void)didCompleteWithStartTime:(unint64_t)a3 endTime:(unint64_t)a4 error:(id)a5
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
  [(_MTLCommandBuffer *)&v12 didCompleteWithStartTime:a3 endTime:a4 error:a5];
  storage = self->_storage;
  var0 = storage->var0;
  IOGPUMetalCommandBufferStorageDealloc(storage);
  if (((*(&self->super.super.super.isa + *MEMORY[0x1E6974298]))[400] & 1) == 0)
  {
    [(IOGPUMetalDevice *)var0 kickCleanupQueue];
  }

  self->_storage = 0;
}

- (void)setCurrentSegmentListPointer:(void *)a3
{
  storage = self->_storage;
  storage->var12 = a3;
  storage->var13 = (a3 + 32);
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
  v6 = [(_MTLCommandBuffer *)&v7 retainedReferences];
  self->_storage = IOGPUMetalCommandBufferStoragePoolCreateStorage(v4, v5, v6);
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

- (void)setCurrentCommandEncoder:(id)a3
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
    [a3 globalTraceObjectID];
    getpid();
    IOGPUDeviceTraceEvent();
  }

  storage = self->_storage;
  if (storage)
  {
    storage->var26 = [a3 globalTraceObjectID];
  }
}

- (void)pushDebugGroup:(id)a3
{
  if (*__globalGPUCommPage)
  {
    v5 = [(MTLDevice *)self->_device deviceRef];
    v6 = [(_MTLCommandBuffer *)self globalTraceObjectID];
    [a3 cStringUsingEncoding:1];
    IOGPUDeviceTraceObjectLabel(v5, 48, 5, v6, 0);
  }

  v7.receiver = self;
  v7.super_class = IOGPUMetalCommandBuffer;
  [(_MTLCommandBuffer *)&v7 pushDebugGroup:a3];
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

- (void)_reserveKernelCommandBufferSpace:(unint64_t)a3
{
  storage = self->_storage;
  result = storage->var5;
  var6 = storage->var6;
  v8 = result;
  if (var6 - result < a3)
  {
    [(IOGPUMetalCommandBuffer *)self growKernelCommandBuffer:a3];
    [(IOGPUMetalCommandBuffer *)self getCurrentKernelCommandBufferPointer:&v8 end:&var6];
    result = v8;
    if (var6 - v8 < a3)
    {
      [IOGPUMetalCommandBuffer _reserveKernelCommandBufferSpace:];
    }

    storage = self->_storage;
  }

  storage->var5 = result + a3;
  return result;
}

- (void)_debugBytes:(const char *)a3 length:(unint64_t)a4 output_type:(unsigned int)a5
{
  v9 = (a4 + 19) & 0xFFFFFFFC;
  v10 = [(IOGPUMetalCommandBuffer *)self _reserveKernelCommandBufferSpace:(a4 + 19) & 0xFFFFFFFFFFFFFFFCLL];
  v11 = v10;
  *v10 = 0;
  v10[1] = v9;
  v10[2] = a5;
  v10[3] = a4;
  memcpy(v10 + 4, a3, a4);
  IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, v11);
  storage = self->_storage;

  IOGPUMetalCommandBufferStorageEndKernelCommands(storage, v11 + v9);
}

- (void)kprintfBytes:(const char *)a3 length:(unint64_t)a4
{
  [(IOGPUMetalCommandBuffer *)self commitEncoder];

  [(IOGPUMetalCommandBuffer *)self _debugBytes:a3 length:a4 output_type:0];
}

- (void)encodeSubmitSleepMS:(unsigned int)a3
{
  [(IOGPUMetalCommandBuffer *)self commitEncoder];
  v5 = [(IOGPUMetalCommandBuffer *)self _reserveKernelCommandBufferSpace:16];
  v6 = v5;
  *v5 = 0x1000000002;
  v5[2] = a3;
  v5[3] = 0;
  IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, v5);
  storage = self->_storage;

  IOGPUMetalCommandBufferStorageEndKernelCommands(storage, v6 + 16);
}

- (void)encodeSignalEvent:(id)a3 value:(unint64_t)a4
{
  if (*(&self->super.super.super.isa + *MEMORY[0x1E6974278]))
  {
    [IOGPUMetalCommandBuffer encodeSignalEvent:value:];
  }

  [(IOGPUMetalCommandBuffer *)self commitEncoder];
  v7 = [(IOGPUMetalCommandBuffer *)self _reserveKernelCommandBufferSpace:24];
  *v7 = [a3 _encodeIOGPUKernelSignalEventCommandArgs:v7 + 2 value:a4];
  v7[1] = 24;
  IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, v7);
  IOGPUMetalCommandBufferStorageEndKernelCommands(self->_storage, v7 + 24);
  if (*(&self->super.super.super.isa + *MEMORY[0x1E69742A8]) == 1)
  {

    [(_MTLCommandBuffer *)self _addRetainedObject:a3];
  }
}

- (void)encodeSignalEvent:(id)a3 value:(unint64_t)a4 agentMask:(unint64_t)a5
{
  if (*(&self->super.super.super.isa + *MEMORY[0x1E6974278]))
  {
    [IOGPUMetalCommandBuffer encodeSignalEvent:value:agentMask:];
  }

  [(IOGPUMetalCommandBuffer *)self commitEncoder];
  v9 = [(IOGPUMetalCommandBuffer *)self _reserveKernelCommandBufferSpace:32];
  *v9 = [a3 _encodeIOGPUKernelSignalEventAgentCommandArgs:v9 + 2 value:a4 agentMask:a5];
  v9[1] = 32;
  IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, v9);
  IOGPUMetalCommandBufferStorageEndKernelCommands(self->_storage, v9 + 32);
  if (*(&self->super.super.super.isa + *MEMORY[0x1E69742A8]) == 1)
  {

    [(_MTLCommandBuffer *)self _addRetainedObject:a3];
  }
}

- (void)encodeSignalEventScheduled:(id)a3 value:(unint64_t)a4
{
  if (*(&self->super.super.super.isa + *MEMORY[0x1E6974278]))
  {
    [IOGPUMetalCommandBuffer encodeSignalEventScheduled:value:];
  }

  [(IOGPUMetalCommandBuffer *)self commitEncoder];
  v7 = [(IOGPUMetalCommandBuffer *)self _reserveKernelCommandBufferSpace:24];
  *v7 = [a3 _encodeIOGPUKernelSignalEventScheduledCommandArgs:v7 + 2 value:a4];
  v7[1] = 24;
  IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, v7);
  IOGPUMetalCommandBufferStorageEndKernelCommands(self->_storage, v7 + 24);
  if (*(&self->super.super.super.isa + *MEMORY[0x1E69742A8]) == 1)
  {

    [(_MTLCommandBuffer *)self _addRetainedObject:a3];
  }
}

- (void)encodeWaitForEvent:(id)a3 value:(unint64_t)a4
{
  if (*(&self->super.super.super.isa + *MEMORY[0x1E6974278]))
  {
    [IOGPUMetalCommandBuffer encodeWaitForEvent:value:];
  }

  [(IOGPUMetalCommandBuffer *)self commitEncoder];
  v7 = [(IOGPUMetalCommandBuffer *)self _reserveKernelCommandBufferSpace:24];
  *v7 = [a3 _encodeIOGPUKernelWaitEventCommandArgs:v7 + 2 value:a4 timeout:0xFFFFFFFFLL];
  v7[1] = 24;
  IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, v7);
  IOGPUMetalCommandBufferStorageEndKernelCommands(self->_storage, v7 + 24);
  if (*(&self->super.super.super.isa + *MEMORY[0x1E69742A8]) == 1)
  {

    [(_MTLCommandBuffer *)self _addRetainedObject:a3];
  }
}

- (void)encodeConditionalAbortEvent:(id)a3
{
  if (*(&self->super.super.super.isa + *MEMORY[0x1E6974278]))
  {
    [IOGPUMetalCommandBuffer encodeConditionalAbortEvent:];
  }

  [(IOGPUMetalCommandBuffer *)self commitEncoder];
  v5 = [(IOGPUMetalCommandBuffer *)self _reserveKernelCommandBufferSpace:24];
  *(v5 + 2) = 0;
  *(v5 + 1) = 0;
  *v5 = [a3 _encodeIOGPUKernelConditionalEventAbortCommandArgs:v5 + 2];
  v5[1] = 24;
  IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, v5);
  IOGPUMetalCommandBufferStorageEndKernelCommands(self->_storage, v5 + 24);
  if (*(&self->super.super.super.isa + *MEMORY[0x1E69742A8]) == 1)
  {

    [(_MTLCommandBuffer *)self _addRetainedObject:a3];
  }
}

- (void)setProtectionOptions:(unint64_t)a3
{
  if (*(&self->super.super.super.isa + *MEMORY[0x1E6974278]))
  {
    [IOGPUMetalCommandBuffer setProtectionOptions:];
  }

  if (self->_protectionOptions != a3)
  {
    [(IOGPUMetalCommandBuffer *)self commitEncoder];
    self->_protectionOptions = a3;
    v5 = [(IOGPUMetalCommandBuffer *)self _reserveKernelCommandBufferSpace:16];
    v6 = v5;
    *v5 = 0x1000000009;
    v5[1] = a3;
    IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, v5);
    storage = self->_storage;

    IOGPUMetalCommandBufferStorageEndKernelCommands(storage, v6 + 16);
  }
}

- (void)addPurgedResource:(id)a3
{
  purgedResources = self->_purgedResources;
  if (!purgedResources)
  {
    purgedResources = objc_alloc_init(MEMORY[0x1E695DFA8]);
    self->_purgedResources = purgedResources;
  }

  [(NSMutableSet *)purgedResources addObject:a3];
}

- (void)addPurgedHeap:(id)a3
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

    v6 = *(a3 + 7);

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

- (void)fillCommandBufferArgs:(IOGPUCommandQueueCommandBufferArgs *)a3 commandQueue:(id)a4
{
  storage = self->_storage;
  a3->var0 = *(storage->var3 + 32);
  a3->var1 = *(storage->var8 + 32);
  var0 = storage->var7.var0;
  if (var0)
  {
    LODWORD(var0) = var0[32];
  }

  a3->var2 = var0;
  v9 = storage->var38[1];
  if (v9)
  {
    LODWORD(v9) = v9[32];
  }

  a3->var5 = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__IOGPUMetalCommandBuffer_fillCommandBufferArgs_commandQueue___block_invoke;
  aBlock[3] = &unk_1E8362950;
  aBlock[4] = self;
  v10 = _Block_copy(aBlock);
  a3->var3.var1 = v10;
  self->_scheduledCallbackBlockPtr = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__IOGPUMetalCommandBuffer_fillCommandBufferArgs_commandQueue___block_invoke_2;
  v12[3] = &unk_1E8362978;
  v12[4] = self;
  v12[5] = a4;
  v11 = _Block_copy(v12);
  a3->var4.var1 = v11;
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

- (void)setResponsibleTaskIDs:(const unsigned int *)a3 count:(unsigned int)a4
{
  if (*(&self->super.super.super.isa + *MEMORY[0x1E6974278]))
  {
    [IOGPUMetalCommandBuffer setResponsibleTaskIDs:count:];
  }

  [(IOGPUMetalCommandBuffer *)self commitEncoder];
  if (a3)
  {
    v7 = a4;
  }

  else
  {
    v7 = 0;
  }

  v8 = (4 * v7 + 15) & 0xFFFFFFFC;
  v9 = [(IOGPUMetalCommandBuffer *)self _reserveKernelCommandBufferSpace:(4 * v7 + 15) & 0x7FFFFFFFCLL];
  v10 = v9;
  *v9 = 14;
  v9[1] = v8;
  v9[2] = v7;
  if (v7)
  {
    v11 = v9 + 3;
    do
    {
      v12 = *a3++;
      *v11++ = v12;
      --v7;
    }

    while (v7);
  }

  IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, v9);
  storage = self->_storage;

  IOGPUMetalCommandBufferStorageEndKernelCommands(storage, v10 + v8);
}

- (void)useResidencySet:(id)a3
{
  v6 = a3;
  IOGPUMetalCommandBufferStorageAddResidencySets(self->_storage, &v6, 1, 0);
  if (*__globalGPUCommPage)
  {
    v4 = *(&self->super.super.super.isa + *MEMORY[0x1E6974280]);
    v5 = v6[6];
    IOGPUDeviceTraceEvent();
  }
}

- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  IOGPUMetalCommandBufferStorageAddResidencySets(self->_storage, a3, a4, 0);
  v7 = __globalGPUCommPage;
  if (*__globalGPUCommPage)
  {
    v8 = v4 == 0;
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
        v11 = *(*v5 + 6);
        IOGPUDeviceTraceEvent();
        v7 = __globalGPUCommPage;
      }

      ++v5;
      --v4;
    }

    while (v4);
  }
}

- (void)useInternalResidencySet:(id)a3
{
  v6 = a3;
  IOGPUMetalCommandBufferStorageAddResidencySets(self->_storage, &v6, 1, 1u);
  if (*__globalGPUCommPage)
  {
    v4 = *(&self->super.super.super.isa + *MEMORY[0x1E6974280]);
    v5 = v6[6];
    IOGPUDeviceTraceEvent();
  }
}

- (void)useInternalResidencySets:(const void *)a3 count:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  IOGPUMetalCommandBufferStorageAddResidencySets(self->_storage, a3, a4, 1u);
  v7 = __globalGPUCommPage;
  if (*__globalGPUCommPage)
  {
    v8 = v4 == 0;
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
        v11 = *(*v5 + 6);
        IOGPUDeviceTraceEvent();
        v7 = __globalGPUCommPage;
      }

      ++v5;
      --v4;
    }

    while (v4);
  }
}

@end