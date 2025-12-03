@interface IOGPUMetal4CommandBuffer
- (IOGPUMetal4CommandBuffer)initWithDevice:(id)device;
- (IOGPUResourceList)ioGPUResourceList;
- (id)akPrivateResourceList;
- (id)akResourceList;
- (void)_reserveKernelCommandBufferSpace:(unint64_t)space;
- (void)allocDebugBuffer;
- (void)allocateSidebandBuffer:(unsigned int)buffer;
- (void)beginCommandBufferWithAllocator:(id)allocator;
- (void)beginCommandBufferWithAllocator:(id)allocator options:(id)options;
- (void)beginIOGPUCommandBufferWithAllocator:(id)allocator options:(id)options;
- (void)beginSegment:(void *)segment;
- (void)copyBufferMappingsFromBuffer:(id)buffer toBuffer:(id)toBuffer operations:(id *)operations count:(unint64_t)count;
- (void)dealloc;
- (void)encodePostMappingWaitEvent:(id)event postMappingValue:(unint64_t)value timeout:(unsigned int)timeout;
- (void)encodeSignalEvent:(id)event value:(unint64_t)value;
- (void)encodeWaitForEvent:(id)event value:(unint64_t)value;
- (void)endCommandBuffer;
- (void)endCurrentSegment;
- (void)fillCommandBufferArgs:(IOGPUCommandQueueCommandBufferArgs *)args;
- (void)getCurrentKernelCommandBufferPointer:(void *)pointer end:(void *)end;
- (void)getCurrentKernelCommandBufferStart:(void *)start current:(void *)current end:(void *)end;
- (void)getDebugBufferPointerStart:(void *)start end:(void *)end;
- (void)getSegmentListPointerStart:(void *)start current:(void *)current end:(void *)end;
- (void)growDebugBuffer:(unsigned int)buffer;
- (void)growKernelCommandBuffer:(unint64_t)buffer;
- (void)growSegmentList;
- (void)growSidebandBuffer:(unsigned int)buffer;
- (void)resetCommandBuffer;
- (void)setCurrentKernelCommandBufferPointer:(void *)pointer;
- (void)setCurrentSegmentListPointer:(void *)pointer;
- (void)setProtectionOptions:(unint64_t)options;
- (void)updateBufferMappings:(id)mappings heap:(id)heap operations:(id *)operations count:(unint64_t)count;
- (void)useInternalResidencySet:(id)set;
- (void)useInternalResidencySets:(const void *)sets count:(unint64_t)count;
- (void)useResidencySet:(id)set;
- (void)useResidencySets:(const void *)sets count:(unint64_t)count;
@end

@implementation IOGPUMetal4CommandBuffer

- (IOGPUMetal4CommandBuffer)initWithDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = IOGPUMetal4CommandBuffer;
  v3 = [(_MTL4CommandBuffer *)&v6 initWithDevice:device];
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

- (void)beginIOGPUCommandBufferWithAllocator:(id)allocator options:(id)options
{
  [(IOGPUMetal4CommandBuffer *)self resetCommandBuffer:allocator];
  allocatorCopy = allocator;
  v7 = *MEMORY[0x1E6974208];
  *(&self->super.super.super.isa + v7) = allocatorCopy;
  v8 = *MEMORY[0x1E6974218];
  v9 = [(objc_class *)allocatorCopy getCommandBufferStorage:*(&self->super.super.super.isa + v8) retainReferences:0];
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

- (void)beginCommandBufferWithAllocator:(id)allocator
{
  [(IOGPUMetal4CommandBuffer *)self beginIOGPUCommandBufferWithAllocator:allocator options:0];
  v5.receiver = self;
  v5.super_class = IOGPUMetal4CommandBuffer;
  [(_MTL4CommandBuffer *)&v5 beginCommandBufferWithAllocator:allocator];
}

- (void)beginCommandBufferWithAllocator:(id)allocator options:(id)options
{
  [IOGPUMetal4CommandBuffer beginIOGPUCommandBufferWithAllocator:"beginIOGPUCommandBufferWithAllocator:options:" options:?];
  v7.receiver = self;
  v7.super_class = IOGPUMetal4CommandBuffer;
  [(_MTL4CommandBuffer *)&v7 beginCommandBufferWithAllocator:allocator options:options];
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

- (void)fillCommandBufferArgs:(IOGPUCommandQueueCommandBufferArgs *)args
{
  v3 = *MEMORY[0x1E6974208];
  if (!*(&self->super.super.super.isa + v3) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer fillCommandBufferArgs:];
  }

  args->var0 = *(storage->var3 + 32);
  args->var1 = *(storage->var8 + 32);
  var0 = storage->var7.var0;
  if (var0)
  {
    LODWORD(var0) = var0[32];
  }

  args->var2 = var0;
  args->var5 = 0;
  v7 = storage->var38[1];
  if (v7)
  {
    LODWORD(v7) = v7[32];
  }

  args->var5 = v7;
  args->var3.var1 = 0;
  args->var6 = *(&self->super.super.super.isa + *MEMORY[0x1E6974218]);

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

- (void)getCurrentKernelCommandBufferStart:(void *)start current:(void *)current end:(void *)end
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer getCurrentKernelCommandBufferStart:current:end:];
  }

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
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer getCurrentKernelCommandBufferPointer:end:];
  }

  if (pointer)
  {
    *pointer = storage->var5;
  }

  if (end)
  {
    *end = storage->var6;
  }
}

- (void)setCurrentKernelCommandBufferPointer:(void *)pointer
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer setCurrentKernelCommandBufferPointer:];
  }

  storage->var5 = pointer;
}

- (void)growKernelCommandBuffer:(unint64_t)buffer
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer growKernelCommandBuffer:];
  }

  IOGPUMetalCommandBufferStorageGrowKernelCommandBuffer(storage, buffer);
}

- (void)getSegmentListPointerStart:(void *)start current:(void *)current end:(void *)end
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer getSegmentListPointerStart:current:end:];
  }

  IOGPUMetalCommandBufferStorageGetSegmentListPointers(storage, start, current, end);
}

- (void)setCurrentSegmentListPointer:(void *)pointer
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer setCurrentSegmentListPointer:];
  }

  storage->var12 = pointer;
  storage->var13 = (pointer + 32);
}

- (void)beginSegment:(void *)segment
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer beginSegment:];
  }

  IOGPUMetalCommandBufferStorageBeginSegment(storage, segment);
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

- (void)setProtectionOptions:(unint64_t)options
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || !self->_storage)
  {
    [IOGPUMetal4CommandBuffer setProtectionOptions:];
  }

  if (self->_protectionOptions != options)
  {
    self->_protectionOptions = options;
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

- (void)growDebugBuffer:(unsigned int)buffer
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer growDebugBuffer:];
  }

  IOGPUMetalCommandBufferStorageGrowDebugBuffer(storage, buffer);
}

- (void)getDebugBufferPointerStart:(void *)start end:(void *)end
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer getDebugBufferPointerStart:end:];
  }

  IOGPUMetalCommandBufferStorageGetDebugBufferPointers(storage, start, end);
}

- (void)allocateSidebandBuffer:(unsigned int)buffer
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer allocateSidebandBuffer:];
  }

  IOGPUMetalCommandBufferStorageAllocSidebandBuffer(storage, buffer);
}

- (void)growSidebandBuffer:(unsigned int)buffer
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer growSidebandBuffer:];
  }

  IOGPUMetalCommandBufferStorageGrowSidebandBuffer(storage, buffer);
}

- (void)useResidencySet:(id)set
{
  setCopy = set;
  storage = self->_storage;
  if (storage)
  {
    if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]))
    {
      [IOGPUMetal4CommandBuffer useResidencySet:];
    }

    IOGPUMetalCommandBufferStorageAddResidencySets(storage, &setCopy, 1, 0);
    if (*__globalGPUCommPage)
    {
      v5 = *(&self->super.super.super.isa + *MEMORY[0x1E6974218]);
      v6 = setCopy[6];
      IOGPUDeviceTraceEvent();
    }
  }
}

- (void)useResidencySets:(const void *)sets count:(unint64_t)count
{
  storage = self->_storage;
  if (storage)
  {
    if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]))
    {
      [IOGPUMetal4CommandBuffer useResidencySets:count:];
    }

    countCopy = count;
    setsCopy = sets;
    IOGPUMetalCommandBufferStorageAddResidencySets(storage, sets, count, 0);
    v8 = __globalGPUCommPage;
    if (*__globalGPUCommPage)
    {
      v9 = countCopy == 0;
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
          v12 = *(*setsCopy + 6);
          IOGPUDeviceTraceEvent();
          v8 = __globalGPUCommPage;
        }

        ++setsCopy;
        --countCopy;
      }

      while (countCopy);
    }
  }
}

- (void)useInternalResidencySet:(id)set
{
  setCopy = set;
  storage = self->_storage;
  if (storage)
  {
    if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]))
    {
      [IOGPUMetal4CommandBuffer useInternalResidencySet:];
    }

    IOGPUMetalCommandBufferStorageAddResidencySets(storage, &setCopy, 1, 1u);
    if (*__globalGPUCommPage)
    {
      v5 = *(&self->super.super.super.isa + *MEMORY[0x1E6974218]);
      v6 = setCopy[6];
      IOGPUDeviceTraceEvent();
    }
  }
}

- (void)useInternalResidencySets:(const void *)sets count:(unint64_t)count
{
  storage = self->_storage;
  if (storage)
  {
    if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]))
    {
      [IOGPUMetal4CommandBuffer useInternalResidencySets:count:];
    }

    countCopy = count;
    setsCopy = sets;
    IOGPUMetalCommandBufferStorageAddResidencySets(storage, sets, count, 1u);
    v8 = __globalGPUCommPage;
    if (*__globalGPUCommPage)
    {
      v9 = countCopy == 0;
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
          v12 = *(*setsCopy + 6);
          IOGPUDeviceTraceEvent();
          v8 = __globalGPUCommPage;
        }

        ++setsCopy;
        --countCopy;
      }

      while (countCopy);
    }
  }
}

- (void)_reserveKernelCommandBufferSpace:(unint64_t)space
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x1E6974208]) || (storage = self->_storage) == 0)
  {
    [IOGPUMetal4CommandBuffer _reserveKernelCommandBufferSpace:];
  }

  result = storage->var5;
  var6 = storage->var6;
  v8 = result;
  if (var6 - result < space)
  {
    [(IOGPUMetal4CommandBuffer *)self growKernelCommandBuffer:space];
    [(IOGPUMetal4CommandBuffer *)self getCurrentKernelCommandBufferPointer:&v8 end:&var6];
    result = v8;
    if (var6 - v8 < space)
    {
      [IOGPUMetal4CommandBuffer _reserveKernelCommandBufferSpace:];
    }

    storage = self->_storage;
  }

  storage->var5 = result + space;
  return result;
}

- (void)encodeSignalEvent:(id)event value:(unint64_t)value
{
  [(IOGPUMetal4CommandBuffer *)self commitEncoder];
  v7 = [(IOGPUMetal4CommandBuffer *)self _reserveKernelCommandBufferSpace:24];
  *v7 = [event _encodeIOGPUKernelSignalEventCommandArgs:v7 + 2 value:value];
  v7[1] = 24;
  IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, v7);
  storage = self->_storage;

  IOGPUMetalCommandBufferStorageEndKernelCommands(storage, v7 + 24);
}

- (void)encodeWaitForEvent:(id)event value:(unint64_t)value
{
  [(IOGPUMetal4CommandBuffer *)self commitEncoder];
  v7 = [(IOGPUMetal4CommandBuffer *)self _reserveKernelCommandBufferSpace:24];
  *v7 = [event _encodeIOGPUKernelWaitEventCommandArgs:v7 + 2 value:value timeout:0xFFFFFFFFLL];
  v7[1] = 24;
  IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, v7);
  storage = self->_storage;

  IOGPUMetalCommandBufferStorageEndKernelCommands(storage, v7 + 24);
}

- (void)updateBufferMappings:(id)mappings heap:(id)heap operations:(id *)operations count:(unint64_t)count
{
  [(IOGPUMetal4CommandBuffer *)self commitEncoder];
  if (IOGPUResourceGetResourceType([mappings resourceRef]) == 64)
  {
    if (!heap)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [IOGPUMetal4CommandBuffer updateBufferMappings:heap:operations:count:];
    if (!heap)
    {
      goto LABEL_7;
    }
  }

  if ([heap type] != 1)
  {
    [IOGPUMetal4CommandBuffer updateBufferMappings:heap:operations:count:];
  }

  placementSparsePageSize = [mappings placementSparsePageSize];
  if (placementSparsePageSize > [heap maxCompatiblePlacementSparsePageSize])
  {
    [IOGPUMetal4CommandBuffer updateBufferMappings:heap:operations:count:];
  }

LABEL_7:
  0xFFFFFFFFFFFFFFFCLL = [(IOGPUMetal4CommandBuffer *)self _reserveKernelCommandBufferSpace:(16 * count + 23) & 0xFFFFFFFFFFFFFFFCLL];
  v13 = 0xFFFFFFFFFFFFFFFCLL;
  *0xFFFFFFFFFFFFFFFCLL = 16;
  0xFFFFFFFFFFFFFFFCLL[1] = (16 * count + 23) & 0xFFFFFFFC;
  if (heap)
  {
    v14 = *(*(heap + 7) + 80);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(mappings + 20);
  0xFFFFFFFFFFFFFFFCLL[2] = v14;
  0xFFFFFFFFFFFFFFFCLL[3] = v15;
  0xFFFFFFFFFFFFFFFCLL[4] = count;
  if (count)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      if (!heap && operations[v16].var0 != 1)
      {
        [IOGPUMetal4CommandBuffer updateBufferMappings:heap:operations:count:];
      }

      v18 = &operations[v16];
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

    while (v16 < count);
  }

  IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, v13);
  storage = self->_storage;

  IOGPUMetalCommandBufferStorageEndKernelCommands(storage, ((16 * count + 23) & 0xFFFFFFFC) + v13);
}

- (void)copyBufferMappingsFromBuffer:(id)buffer toBuffer:(id)toBuffer operations:(id *)operations count:(unint64_t)count
{
  [(IOGPUMetal4CommandBuffer *)self commitEncoder];
  if (IOGPUResourceGetResourceType([buffer resourceRef]) != 64)
  {
    [IOGPUMetal4CommandBuffer copyBufferMappingsFromBuffer:toBuffer:operations:count:];
  }

  if (IOGPUResourceGetResourceType([toBuffer resourceRef]) != 64)
  {
    [IOGPUMetal4CommandBuffer copyBufferMappingsFromBuffer:toBuffer:operations:count:];
  }

  placementSparsePageSize = [buffer placementSparsePageSize];
  if (placementSparsePageSize != [toBuffer placementSparsePageSize])
  {
    [IOGPUMetal4CommandBuffer copyBufferMappingsFromBuffer:toBuffer:operations:count:];
  }

  0xFFFFFFFFFFFFFFFCLL = [(IOGPUMetal4CommandBuffer *)self _reserveKernelCommandBufferSpace:(16 * count + 23) & 0xFFFFFFFFFFFFFFFCLL];
  v13 = 0xFFFFFFFFFFFFFFFCLL;
  0xFFFFFFFFFFFFFFFCLL->i32[0] = 17;
  0xFFFFFFFFFFFFFFFCLL->i32[1] = (16 * count + 23) & 0xFFFFFFFC;
  v14 = *(toBuffer + 20);
  0xFFFFFFFFFFFFFFFCLL[1].i32[0] = *(buffer + 20);
  0xFFFFFFFFFFFFFFFCLL[1].i32[1] = v14;
  0xFFFFFFFFFFFFFFFCLL[2].i32[0] = count;
  if (count)
  {
    v15 = 0xFFFFFFFFFFFFFFFCLL + 4;
    p_var1 = &operations->var1;
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

    while (v18 < count);
  }

  IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, 0xFFFFFFFFFFFFFFFCLL);
  storage = self->_storage;

  IOGPUMetalCommandBufferStorageEndKernelCommands(storage, ((16 * count + 23) & 0xFFFFFFFC) + v13);
}

- (void)encodePostMappingWaitEvent:(id)event postMappingValue:(unint64_t)value timeout:(unsigned int)timeout
{
  v9 = [(IOGPUMetal4CommandBuffer *)self _reserveKernelCommandBufferSpace:24];
  *v9 = 0x1800000012;
  eventPort = [event eventPort];
  v9[2] = value;
  *(v9 + 2) = eventPort;
  *(v9 + 3) = timeout;
  IOGPUMetalCommandBufferStorageBeginKernelCommands(self->_storage, v9);
  storage = self->_storage;

  IOGPUMetalCommandBufferStorageEndKernelCommands(storage, v9 + 24);
}

@end