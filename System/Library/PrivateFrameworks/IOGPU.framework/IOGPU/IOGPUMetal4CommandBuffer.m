@interface IOGPUMetal4CommandBuffer
- (IOGPUMetal4CommandBuffer)initWithDevice:(id)a3;
- (IOGPUResourceList)ioGPUResourceList;
- (id)akPrivateResourceList;
- (id)akResourceList;
- (void)_reserveKernelCommandBufferSpace:(unint64_t)a3;
- (void)allocDebugBuffer;
- (void)allocateSidebandBuffer:(unsigned int)a3;
- (void)beginCommandBufferWithAllocator:(id)a3;
- (void)beginCommandBufferWithAllocator:(id)a3 options:(id)a4;
- (void)beginIOGPUCommandBufferWithAllocator:(id)a3 options:(id)a4;
- (void)beginSegment:(void *)a3;
- (void)copyBufferMappingsFromBuffer:(id)a3 toBuffer:(id)a4 operations:(id *)a5 count:(unint64_t)a6;
- (void)dealloc;
- (void)encodePostMappingWaitEvent:(id)a3 postMappingValue:(unint64_t)a4 timeout:(unsigned int)a5;
- (void)encodeSignalEvent:(id)a3 value:(unint64_t)a4;
- (void)encodeWaitForEvent:(id)a3 value:(unint64_t)a4;
- (void)endCommandBuffer;
- (void)endCurrentSegment;
- (void)fillCommandBufferArgs:(IOGPUCommandQueueCommandBufferArgs *)a3;
- (void)getCurrentKernelCommandBufferPointer:(void *)a3 end:(void *)a4;
- (void)getCurrentKernelCommandBufferStart:(void *)a3 current:(void *)a4 end:(void *)a5;
- (void)getDebugBufferPointerStart:(void *)a3 end:(void *)a4;
- (void)getSegmentListPointerStart:(void *)a3 current:(void *)a4 end:(void *)a5;
- (void)growDebugBuffer:(unsigned int)a3;
- (void)growKernelCommandBuffer:(unint64_t)a3;
- (void)growSegmentList;
- (void)growSidebandBuffer:(unsigned int)a3;
- (void)resetCommandBuffer;
- (void)setCurrentKernelCommandBufferPointer:(void *)a3;
- (void)setCurrentSegmentListPointer:(void *)a3;
- (void)setProtectionOptions:(unint64_t)a3;
- (void)updateBufferMappings:(id)a3 heap:(id)a4 operations:(id *)a5 count:(unint64_t)a6;
- (void)useInternalResidencySet:(id)a3;
- (void)useInternalResidencySets:(const void *)a3 count:(unint64_t)a4;
- (void)useResidencySet:(id)a3;
- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4;
@end

@implementation IOGPUMetal4CommandBuffer

- (IOGPUMetal4CommandBuffer)initWithDevice:(id)a3
{
  v6.receiver = self;
  v6.super_class = IOGPUMetal4CommandBuffer;
  v3 = [(_MTL4CommandBuffer *)&v6 initWithDevice:a3];
  v4 = v3;
  if (v3)
  {
    *(&v3->super.super.super.isa + *MEMORY[0x1E6974218]) = IOGPUDeviceGetNextGlobalTraceID([*(&v3->super.super.super.isa + *MEMORY[0x1E6974210]) deviceRef]);
    if (*__globalGPUCommPage)
    {
      IOGPUDeviceTraceEvent();
    }
  }

  return v4;
}

- (void)dealloc
{
  [(IOGPUMetal4CommandBuffer *)self resetCommandBuffer];
  v3.receiver = self;
  v3.super_class = IOGPUMetal4CommandBuffer;
  [(_MTL4CommandBuffer *)&v3 dealloc];
}

- (void)beginIOGPUCommandBufferWithAllocator:(id)a3 options:(id)a4
{
  [(IOGPUMetal4CommandBuffer *)self resetCommandBuffer:a3];
  v6 = a3;
  v7 = *MEMORY[0x1E6974208];
  *(&self->super.super.super.isa + v7) = v6;
  v8 = *MEMORY[0x1E6974218];
  v9 = [(objc_class *)v6 getCommandBufferStorage:*(&self->super.super.super.isa + v8) retainReferences:0];
  self->_storage = v9;
  v10 = *(&self->super.super.super.isa + v7);
  if (v10)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    [IOGPUMetal4CommandBuffer beginIOGPUCommandBufferWithAllocator:options:];
  }

  if (*__globalGPUCommPage)
  {
    v12 = *(&self->super.super.super.isa + v8);
    [v10 globalTraceObjectID];
    [*(&self->super.super.super.isa + v7) allocatedSize];

    IOGPUDeviceTraceEvent();
  }
}

- (void)beginCommandBufferWithAllocator:(id)a3
{
  [(IOGPUMetal4CommandBuffer *)self beginIOGPUCommandBufferWithAllocator:a3 options:0];
  v5.receiver = self;
  v5.super_class = IOGPUMetal4CommandBuffer;
  [(_MTL4CommandBuffer *)&v5 beginCommandBufferWithAllocator:a3];
}

- (void)beginCommandBufferWithAllocator:(id)a3 options:(id)a4
{
  [IOGPUMetal4CommandBuffer beginIOGPUCommandBufferWithAllocator:"beginIOGPUCommandBufferWithAllocator:options:" options:?];
  v7.receiver = self;
  v7.super_class = IOGPUMetal4CommandBuffer;
  [(_MTL4CommandBuffer *)&v7 beginCommandBufferWithAllocator:a3 options:a4];
}

- (void)endCommandBuffer
{
  v2 = *MEMORY[0x1E6974208];
  if (!*(&self->super.super.super.isa + v2) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer endCommandBuffer];
  }

  IOGPUMetal4CommandBufferStorageEndCommandBuffer(storage);
  if (*__globalGPUCommPage)
  {
    v5 = *(&self->super.super.super.isa + *MEMORY[0x1E6974218]);
    [*(&self->super.super.super.isa + v2) globalTraceObjectID];
    [*(&self->super.super.super.isa + v2) allocatedSize];

    IOGPUDeviceTraceEvent();
  }
}

- (void)fillCommandBufferArgs:(IOGPUCommandQueueCommandBufferArgs *)a3
{
  v3 = *MEMORY[0x1E6974208];
  if (!*(&self->super.super.super.isa + v3) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer fillCommandBufferArgs:];
  }

  a3->var0 = *(storage->var3 + 32);
  a3->var1 = *(storage->var8 + 32);
  var0 = storage->var7.var0;
  if (var0)
  {
    LODWORD(var0) = var0[32];
  }

  a3->var2 = var0;
  a3->var5 = 0;
  v7 = storage->var38[1];
  if (v7)
  {
    LODWORD(v7) = v7[32];
  }

  a3->var5 = v7;
  a3->var3.var1 = 0;
  a3->var6 = *(&self->super.super.super.isa + *MEMORY[0x1E6974218]);

  *(&self->super.super.super.isa + v3) = 0;
  self->_storage = 0;
}

- (void)resetCommandBuffer
{
  storage = self->_storage;
  v4 = *MEMORY[0x1E6974208];
  if (storage)
  {
    v5 = *(&self->super.super.super.isa + v4);
    if (!v5)
    {
      [IOGPUMetal4CommandBuffer resetCommandBuffer];
    }

    [v5 returnCommandBufferStorage:storage commandAllocatorGeneration:{objc_msgSend(*(&self->super.super.super.isa + v4), "getGeneration")}];
    self->_storage = 0;
  }

  *(&self->super.super.super.isa + v4) = 0;
  v6.receiver = self;
  v6.super_class = IOGPUMetal4CommandBuffer;
  [(_MTL4CommandBuffer *)&v6 resetCommandBuffer];
}

- (IOGPUResourceList)ioGPUResourceList
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer ioGPUResourceList];
  }

  return &storage->var14;
}

- (id)akResourceList
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer akResourceList];
  }

  return storage->var20;
}

- (id)akPrivateResourceList
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer akPrivateResourceList];
  }

  return storage->var21;
}

- (void)getCurrentKernelCommandBufferStart:(void *)a3 current:(void *)a4 end:(void *)a5
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer getCurrentKernelCommandBufferStart:current:end:];
  }

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
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer getCurrentKernelCommandBufferPointer:end:];
  }

  if (a3)
  {
    *a3 = storage->var5;
  }

  if (a4)
  {
    *a4 = storage->var6;
  }
}

- (void)setCurrentKernelCommandBufferPointer:(void *)a3
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer setCurrentKernelCommandBufferPointer:];
  }

  storage->var5 = a3;
}

- (void)growKernelCommandBuffer:(unint64_t)a3
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer growKernelCommandBuffer:];
  }

  IOGPUMetalCommandBufferStorageGrowKernelCommandBuffer(storage, a3);
}

- (void)getSegmentListPointerStart:(void *)a3 current:(void *)a4 end:(void *)a5
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer getSegmentListPointerStart:current:end:];
  }

  IOGPUMetalCommandBufferStorageGetSegmentListPointers(storage, a3, a4, a5);
}

- (void)setCurrentSegmentListPointer:(void *)a3
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer setCurrentSegmentListPointer:];
  }

  storage->var12 = a3;
  storage->var13 = (a3 + 32);
}

- (void)beginSegment:(void *)a3
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer beginSegment:];
  }

  IOGPUMetalCommandBufferStorageBeginSegment(storage, a3);
}

- (void)endCurrentSegment
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer endCurrentSegment];
  }

  IOGPUMetalCommandBufferStorageEndSegment(storage);
}

- (void)growSegmentList
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer growSegmentList];
  }

  IOGPUMetalCommandBufferStorageGrowSegmentList(storage);
}

- (void)setProtectionOptions:(unint64_t)a3
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || !self->_storage)
  {
    [IOGPUMetal4CommandBuffer setProtectionOptions:];
  }

  if (self->_protectionOptions != a3)
  {
    self->_protectionOptions = a3;
  }
}

- (void)allocDebugBuffer
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer allocDebugBuffer];
  }

  IOGPUMetalCommandBufferStorageAllocDebugBuffer(storage);
}

- (void)growDebugBuffer:(unsigned int)a3
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer growDebugBuffer:];
  }

  IOGPUMetalCommandBufferStorageGrowDebugBuffer(storage, a3);
}

- (void)getDebugBufferPointerStart:(void *)a3 end:(void *)a4
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer getDebugBufferPointerStart:end:];
  }

  IOGPUMetalCommandBufferStorageGetDebugBufferPointers(storage, a3, a4);
}

- (void)allocateSidebandBuffer:(unsigned int)a3
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer allocateSidebandBuffer:];
  }

  IOGPUMetalCommandBufferStorageAllocSidebandBuffer(storage, a3);
}

- (void)growSidebandBuffer:(unsigned int)a3
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer growSidebandBuffer:];
  }

  IOGPUMetalCommandBufferStorageGrowSidebandBuffer(storage, a3);
}

- (void)useResidencySet:(id)a3
{
  v7 = a3;
  storage = self->_storage;
  if (storage)
  {
    if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]))
    {
      [IOGPUMetal4CommandBuffer useResidencySet:];
    }

    IOGPUMetalCommandBufferStorageAddResidencySets(storage, &v7, 1, 0);
    if (*__globalGPUCommPage)
    {
      v5 = *(&self->super.super.super.isa + *MEMORY[0x1E6974218]);
      v6 = v7[6];
      IOGPUDeviceTraceEvent();
    }
  }
}

- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4
{
  storage = self->_storage;
  if (storage)
  {
    if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]))
    {
      [IOGPUMetal4CommandBuffer useResidencySets:count:];
    }

    v6 = a4;
    v7 = a3;
    IOGPUMetalCommandBufferStorageAddResidencySets(storage, a3, a4, 0);
    v8 = __globalGPUCommPage;
    if (*__globalGPUCommPage)
    {
      v9 = v6 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = MEMORY[0x1E6974218];
      do
      {
        if (*v8)
        {
          v11 = *(&self->super.super.super.isa + *v10);
          v12 = *(*v7 + 6);
          IOGPUDeviceTraceEvent();
          v8 = __globalGPUCommPage;
        }

        ++v7;
        --v6;
      }

      while (v6);
    }
  }
}

- (void)useInternalResidencySet:(id)a3
{
  v7 = a3;
  storage = self->_storage;
  if (storage)
  {
    if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]))
    {
      [IOGPUMetal4CommandBuffer useInternalResidencySet:];
    }

    IOGPUMetalCommandBufferStorageAddResidencySets(storage, &v7, 1, 1u);
    if (*__globalGPUCommPage)
    {
      v5 = *(&self->super.super.super.isa + *MEMORY[0x1E6974218]);
      v6 = v7[6];
      IOGPUDeviceTraceEvent();
    }
  }
}

- (void)useInternalResidencySets:(const void *)a3 count:(unint64_t)a4
{
  storage = self->_storage;
  if (storage)
  {
    if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]))
    {
      [IOGPUMetal4CommandBuffer useInternalResidencySets:count:];
    }

    v6 = a4;
    v7 = a3;
    IOGPUMetalCommandBufferStorageAddResidencySets(storage, a3, a4, 1u);
    v8 = __globalGPUCommPage;
    if (*__globalGPUCommPage)
    {
      v9 = v6 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = MEMORY[0x1E6974218];
      do
      {
        if (*v8)
        {
          v11 = *(&self->super.super.super.isa + *v10);
          v12 = *(*v7 + 6);
          IOGPUDeviceTraceEvent();
          v8 = __globalGPUCommPage;
        }

        ++v7;
        --v6;
      }

      while (v6);
    }
  }
}

- (void)_reserveKernelCommandBufferSpace:(unint64_t)a3
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer _reserveKernelCommandBufferSpace:];
  }

  result = storage->var5;
  var6 = storage->var6;
  v8 = result;
  if (var6 - result < a3)
  {
    [(IOGPUMetal4CommandBuffer *)self growKernelCommandBuffer:a3];
    [(IOGPUMetal4CommandBuffer *)self getCurrentKernelCommandBufferPointer:&v8 end:&var6];
    result = v8;
    if (var6 - v8 < a3)
    {
      [IOGPUMetal4CommandBuffer _reserveKernelCommandBufferSpace:];
    }

    storage = self->_storage;
  }

  storage->var5 = result + a3;
  return result;
}

- (void)encodeSignalEvent:(id)a3 value:(unint64_t)a4
{
  [(IOGPUMetal4CommandBuffer *)self commitEncoder];
  v7 = [(IOGPUMetal4CommandBuffer *)self _reserveKernelCommandBufferSpace:24];
  *v7 = [a3 _encodeIOGPUKernelSignalEventCommandArgs:v7 + 2 value:a4];
  v7[1] = 24;
  IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, v7);
  storage = self->_storage;

  IOGPUMetalCommandBufferStorageEndKernelCommands(storage, v7 + 24);
}

- (void)encodeWaitForEvent:(id)a3 value:(unint64_t)a4
{
  [(IOGPUMetal4CommandBuffer *)self commitEncoder];
  v7 = [(IOGPUMetal4CommandBuffer *)self _reserveKernelCommandBufferSpace:24];
  *v7 = [a3 _encodeIOGPUKernelWaitEventCommandArgs:v7 + 2 value:a4 timeout:0xFFFFFFFFLL];
  v7[1] = 24;
  IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, v7);
  storage = self->_storage;

  IOGPUMetalCommandBufferStorageEndKernelCommands(storage, v7 + 24);
}

- (void)updateBufferMappings:(id)a3 heap:(id)a4 operations:(id *)a5 count:(unint64_t)a6
{
  [(IOGPUMetal4CommandBuffer *)self commitEncoder];
  if (IOGPUResourceGetResourceType([a3 resourceRef]) == 64)
  {
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [IOGPUMetal4CommandBuffer updateBufferMappings:heap:operations:count:];
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if ([a4 type] != 1)
  {
    [IOGPUMetal4CommandBuffer updateBufferMappings:heap:operations:count:];
  }

  v11 = [a3 placementSparsePageSize];
  if (v11 > [a4 maxCompatiblePlacementSparsePageSize])
  {
    [IOGPUMetal4CommandBuffer updateBufferMappings:heap:operations:count:];
  }

LABEL_7:
  v12 = [(IOGPUMetal4CommandBuffer *)self _reserveKernelCommandBufferSpace:(16 * a6 + 23) & 0xFFFFFFFFFFFFFFFCLL];
  v13 = v12;
  *v12 = 16;
  v12[1] = (16 * a6 + 23) & 0xFFFFFFFC;
  if (a4)
  {
    v14 = *(*(a4 + 7) + 80);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a3 + 20);
  v12[2] = v14;
  v12[3] = v15;
  v12[4] = a6;
  if (a6)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      if (!a4 && a5[v16].var0 != 1)
      {
        [IOGPUMetal4CommandBuffer updateBufferMappings:heap:operations:count:];
      }

      v18 = &a5[v16];
      v19 = &v13[4 * v16 + 5];
      v20 = *v19 & 0xFE;
      if (!v18->var0)
      {
        ++v20;
      }

      *v19 = v20;
      length = v18->var1.length;
      var2 = v18->var2;
      location = v18->var1.location;
      *(v19 + 4) = var2;
      *(v19 + 8) = length;
      *(v19 + 12) = location;
      v16 = v17++;
    }

    while (v16 < a6);
  }

  IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, v13);
  storage = self->_storage;

  IOGPUMetalCommandBufferStorageEndKernelCommands(storage, ((16 * a6 + 23) & 0xFFFFFFFC) + v13);
}

- (void)copyBufferMappingsFromBuffer:(id)a3 toBuffer:(id)a4 operations:(id *)a5 count:(unint64_t)a6
{
  [(IOGPUMetal4CommandBuffer *)self commitEncoder];
  if (IOGPUResourceGetResourceType([a3 resourceRef]) != 64)
  {
    [IOGPUMetal4CommandBuffer copyBufferMappingsFromBuffer:toBuffer:operations:count:];
  }

  if (IOGPUResourceGetResourceType([a4 resourceRef]) != 64)
  {
    [IOGPUMetal4CommandBuffer copyBufferMappingsFromBuffer:toBuffer:operations:count:];
  }

  v11 = [a3 placementSparsePageSize];
  if (v11 != [a4 placementSparsePageSize])
  {
    [IOGPUMetal4CommandBuffer copyBufferMappingsFromBuffer:toBuffer:operations:count:];
  }

  v12 = [(IOGPUMetal4CommandBuffer *)self _reserveKernelCommandBufferSpace:(16 * a6 + 23) & 0xFFFFFFFFFFFFFFFCLL];
  v13 = v12;
  v12->i32[0] = 17;
  v12->i32[1] = (16 * a6 + 23) & 0xFFFFFFFC;
  v14 = *(a4 + 20);
  v12[1].i32[0] = *(a3 + 20);
  v12[1].i32[1] = v14;
  v12[2].i32[0] = a6;
  if (a6)
  {
    v15 = v12 + 4;
    p_var1 = &a5->var1;
    v17 = 1;
    do
    {
      v15[-1] = vmovn_s64(*(p_var1 - 1));
      v18 = v17;
      v19 = *p_var1;
      p_var1 += 3;
      v15->i32[0] = v19;
      v15 += 2;
      ++v17;
    }

    while (v18 < a6);
  }

  IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, v12);
  storage = self->_storage;

  IOGPUMetalCommandBufferStorageEndKernelCommands(storage, ((16 * a6 + 23) & 0xFFFFFFFC) + v13);
}

- (void)encodePostMappingWaitEvent:(id)a3 postMappingValue:(unint64_t)a4 timeout:(unsigned int)a5
{
  v9 = [(IOGPUMetal4CommandBuffer *)self _reserveKernelCommandBufferSpace:24];
  *v9 = 0x1800000012;
  v10 = [a3 eventPort];
  v9[2] = a4;
  *(v9 + 2) = v10;
  *(v9 + 3) = a5;
  IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, v9);
  storage = self->_storage;

  IOGPUMetalCommandBufferStorageEndKernelCommands(storage, v9 + 24);
}

@end