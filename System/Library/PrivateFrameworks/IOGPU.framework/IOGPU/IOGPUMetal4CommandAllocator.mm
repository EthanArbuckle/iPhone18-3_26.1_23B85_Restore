@interface IOGPUMetal4CommandAllocator
- (BOOL)initAllocatorWithDevice:(id)a3;
- (IOGPUMetal4CommandAllocator)initWithDevice:(id)a3;
- (IOGPUMetal4CommandAllocator)initWithDevice:(id)a3 descriptor:(id)a4;
- (IOGPUMetal4CommandAllocator)initWithDeviceAndAliasToDevicePools:(id)a3;
- (IOGPUMetalCommandBufferStorage)getCommandBufferStorage:(unint64_t)a3 retainReferences:(BOOL)a4;
- (unint64_t)allocatedSize;
- (unsigned)getGeneration;
- (void)dealloc;
- (void)reset;
- (void)returnCommandBufferStorage:(IOGPUMetalCommandBufferStorage *)a3 commandAllocatorGeneration:(unsigned int)a4;
- (void)setCurrentCommandEncoder:(id)a3;
- (void)setHwResourcePool:(id *)a3 count:(unsigned int)a4;
@end

@implementation IOGPUMetal4CommandAllocator

- (IOGPUMetal4CommandAllocator)initWithDevice:(id)a3 descriptor:(id)a4
{
  v8.receiver = self;
  v8.super_class = IOGPUMetal4CommandAllocator;
  v5 = [(_MTL4CommandAllocator *)&v8 initWithDevice:a3 descriptor:a4];
  v6 = v5;
  if (v5 && ![(IOGPUMetal4CommandAllocator *)v5 initAllocatorWithDevice:a3])
  {

    return 0;
  }

  return v6;
}

- (IOGPUMetal4CommandAllocator)initWithDevice:(id)a3
{
  v7.receiver = self;
  v7.super_class = IOGPUMetal4CommandAllocator;
  v4 = [(_MTL4CommandAllocator *)&v7 initWithDevice:?];
  v5 = v4;
  if (v4 && ![(IOGPUMetal4CommandAllocator *)v4 initAllocatorWithDevice:a3])
  {

    return 0;
  }

  return v5;
}

- (BOOL)initAllocatorWithDevice:(id)a3
{
  NextGlobalTraceID = IOGPUDeviceGetNextGlobalTraceID([a3 deviceRef]);
  v6 = *MEMORY[0x1E6974200];
  *&self->_MTL4CommandAllocator_opaque[v6] = NextGlobalTraceID;
  self->_busyQueue.tqh_first = 0;
  self->_busyQueue.tqh_last = &self->_busyQueue.tqh_first;
  self->_lock._os_unfair_lock_opaque = 0;
  self->_storageCreateParams.hwResourcePools = 0;
  self->_storageCreateParams.var0 = 0;
  v7 = [objc_alloc(MEMORY[0x1E6974168]) initWithResourceListCapacity:1024];
  self->_storageCreateParams.akResourceListPool = v7;
  if (v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E6974168]) initWithResourceListCapacity:256];
    self->_storageCreateParams.akPrivateResourceListPool = v7;
    if (v7)
    {
      v7 = -[IOGPUMetalDeviceShmemPool initWithDevice:resourceClass:shmemSize:shmemType:options:]([IOGPUMetalDeviceShmemPool alloc], "initWithDevice:resourceClass:shmemSize:shmemType:options:", a3, objc_opt_class(), [a3 initialKernelCommandShmemSize], 1, 0);
      self->_storageCreateParams.kernelCommandShmemPool = v7;
      if (v7)
      {
        v7 = -[IOGPUMetalDeviceShmemPool initWithDevice:resourceClass:shmemSize:shmemType:options:]([IOGPUMetalDeviceShmemPool alloc], "initWithDevice:resourceClass:shmemSize:shmemType:options:", a3, objc_opt_class(), [a3 initialSegmentListShmemSize], 0, 0);
        self->_storageCreateParams.segmentListShmemPool = v7;
        if (v7)
        {
          v7 = -[IOGPUMetalDeviceShmemPool initWithDevice:resourceClass:shmemSize:shmemType:options:]([IOGPUMetalDeviceShmemPool alloc], "initWithDevice:resourceClass:shmemSize:shmemType:options:", a3, objc_opt_class(), [a3 initialSidebandShmemSize], 3, 0);
          self->_storageCreateParams.sidebandPool = v7;
          if (v7)
          {
            v7 = -[IOGPUMetalDeviceShmemPool initWithDevice:resourceClass:shmemSize:shmemType:options:]([IOGPUMetalDeviceShmemPool alloc], "initWithDevice:resourceClass:shmemSize:shmemType:options:", a3, objc_opt_class(), [a3 initialDebugBufferShmemSize], 2, 0);
            self->_storageCreateParams.debugBufferShmemPool = v7;
            if (v7)
            {
              IOGPUMetalCommandBufferStoragePoolCreate(a3, &self->_storageCreateParams);
              self->_commandBufferStoragePool = v7;
              if (v7)
              {
                if (*__globalGPUCommPage)
                {
                  v8 = *&self->_MTL4CommandAllocator_opaque[v6];
                  IOGPUDeviceTraceEvent();
                }

                LOBYTE(v7) = 1;
              }
            }
          }
        }
      }
    }
  }

  return v7;
}

- (IOGPUMetal4CommandAllocator)initWithDeviceAndAliasToDevicePools:(id)a3
{
  v4.receiver = self;
  v4.super_class = IOGPUMetal4CommandAllocator;
  result = [(_MTL4CommandAllocator *)&v4 initWithDevice:a3];
  if (result)
  {
    result->_aliasToDevice = 1;
  }

  return result;
}

- (void)dealloc
{
  p_busyQueue = &self->_busyQueue;
  tqh_first = self->_busyQueue.tqh_first;
  if (tqh_first)
  {
    var0 = tqh_first->var2.var0;
    --self->_busyQueueCount;
    if (var0)
    {
      do
      {
        v6 = var0;
        var1 = tqh_first->var2.var1;
        *(v6 + 24) = var1;
        *var1 = v6;
        IOGPUMetalCommandBufferStorageDealloc(tqh_first);
        var0 = *(v6 + 16);
        --self->_busyQueueCount;
        tqh_first = v6;
      }

      while (var0);
    }

    else
    {
      v6 = tqh_first;
    }

    v8 = *(v6 + 24);
    p_busyQueue->tqh_last = v8;
    *v8 = 0;
    IOGPUMetalCommandBufferStorageDealloc(v6);
  }

  commandBufferStoragePool = self->_commandBufferStoragePool;
  if (commandBufferStoragePool)
  {
    IOGPUMetalCommandBufferStoragePoolDealloc(commandBufferStoragePool);
  }

  self->_storageCreateParams.debugBufferShmemPool = 0;
  self->_storageCreateParams.sidebandPool = 0;

  self->_storageCreateParams.segmentListShmemPool = 0;
  self->_storageCreateParams.kernelCommandShmemPool = 0;
  if (self->_storageCreateParams.var0)
  {
    v10 = 0;
    do
    {

      self->_storageCreateParams.hwResourcePools[v10++] = 0;
    }

    while (v10 < self->_storageCreateParams.var0);
  }

  self->_storageCreateParams.var0 = 0;
  free(self->_storageCreateParams.hwResourcePools);
  self->_storageCreateParams.hwResourcePools = 0;

  v11.receiver = self;
  v11.super_class = IOGPUMetal4CommandAllocator;
  [(_MTL4CommandAllocator *)&v11 dealloc];
}

- (void)setCurrentCommandEncoder:(id)a3
{
  tqh_first = self->_busyQueue.tqh_first;
  if (tqh_first)
  {
    tqh_first->var26 = [a3 globalTraceObjectID];
  }
}

- (void)setHwResourcePool:(id *)a3 count:(unsigned int)a4
{
  p_storageCreateParams = &self->_storageCreateParams;
  if (self->_storageCreateParams.hwResourcePools)
  {
    [IOGPUMetal4CommandAllocator setHwResourcePool:count:];
  }

  if (self->_storageCreateParams.var0)
  {
    [IOGPUMetal4CommandAllocator setHwResourcePool:count:];
  }

  v7 = malloc_type_malloc(8 * a4, 0x80040B8603338uLL);
  p_storageCreateParams->hwResourcePools = v7;
  if (!v7)
  {
    [IOGPUMetal4CommandAllocator setHwResourcePool:count:];
  }

  if (a4)
  {
    v8 = 0;
    do
    {
      p_storageCreateParams->hwResourcePools[v8] = a3[v8];
      ++v8;
    }

    while (a4 != v8);
  }

  p_storageCreateParams->var0 = a4;
}

- (IOGPUMetalCommandBufferStorage)getCommandBufferStorage:(unint64_t)a3 retainReferences:(BOOL)a4
{
  v4 = a4;
  os_unfair_lock_lock(&self->_lock);
  if (self->_aliasToDevice)
  {
    v7 = *&self->_MTL4CommandAllocator_opaque[*MEMORY[0x1E69741F8]];
    v8 = &OBJC_IVAR___IOGPUMetalDevice__commandBufferStoragePool;
  }

  else
  {
    v8 = &OBJC_IVAR___IOGPUMetal4CommandAllocator__commandBufferStoragePool;
    v7 = self;
  }

  Storage = IOGPUMetalCommandBufferStoragePoolCreateStorage(*&v7->_MTL4CommandAllocator_opaque[*v8], a3, v4);
  v10 = Storage;
  p_busyQueue = &self->_busyQueue;
  tqh_first = self->_busyQueue.tqh_first;
  Storage->var2.var0 = tqh_first;
  if (tqh_first)
  {
    p_var1 = &tqh_first->var2.var1;
  }

  else
  {
    p_var1 = &self->_busyQueue.tqh_last;
  }

  *p_var1 = &Storage->var2.var0;
  p_busyQueue->tqh_first = Storage;
  Storage->var2.var1 = &p_busyQueue->tqh_first;
  ++self->_busyQueueCount;
  os_unfair_lock_unlock(&self->_lock);
  return v10;
}

- (void)returnCommandBufferStorage:(IOGPUMetalCommandBufferStorage *)a3 commandAllocatorGeneration:(unsigned int)a4
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_generation == a4)
  {
    --self->_busyQueueCount;
    var0 = a3->var2.var0;
    var1 = a3->var2.var1;
    if (var0)
    {
      p_var1 = &var0->var2.var1;
    }

    else
    {
      p_var1 = &self->_busyQueue.tqh_last;
    }

    *p_var1 = var1;
    *var1 = var0;
    IOGPUMetalCommandBufferStorageDealloc(a3);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)reset
{
  if (!self->_aliasToDevice)
  {
    os_unfair_lock_lock(&self->_lock);
    if (self->_busyQueueCount >= 1)
    {
      tqh_first = self->_busyQueue.tqh_first;
      if (tqh_first)
      {
        v4 = MEMORY[0x1E6974200];
        do
        {
          --self->_busyQueueCount;
          var0 = tqh_first->var2.var0;
          var1 = tqh_first->var2.var1;
          p_var1 = &var0->var2.var1;
          if (!var0)
          {
            p_var1 = &self->_busyQueue.tqh_last;
          }

          *p_var1 = var1;
          *var1 = var0;
          IOGPUMetalCommandBufferStorageDealloc(tqh_first);
          if (*__globalGPUCommPage)
          {
            v8 = *&self->_MTL4CommandAllocator_opaque[*v4];
            v9 = *&tqh_first->var31;
            IOGPUDeviceTraceEvent();
          }

          tqh_first = var0;
        }

        while (var0);
      }
    }

    ++self->_generation;
    os_unfair_lock_unlock(&self->_lock);
    v10.receiver = self;
    v10.super_class = IOGPUMetal4CommandAllocator;
    [(_MTL4CommandAllocator *)&v10 reset];
  }
}

- (unint64_t)allocatedSize
{
  p_storageCreateParams = &self->_storageCreateParams;
  v3 = [(IOGPUMetalDeviceShmemPool *)self->_storageCreateParams.kernelCommandShmemPool allocatedSize];
  v4 = [(IOGPUMetalDeviceShmemPool *)p_storageCreateParams->segmentListShmemPool allocatedSize]+ v3;
  v5 = [(IOGPUMetalDeviceShmemPool *)p_storageCreateParams->sidebandPool allocatedSize];
  v6 = v4 + v5 + [(IOGPUMetalDeviceShmemPool *)p_storageCreateParams->debugBufferShmemPool allocatedSize];
  if (p_storageCreateParams->var0)
  {
    v7 = 0;
    do
    {
      v6 += [(hwResourcePoolCount *)p_storageCreateParams->hwResourcePools[v7++] allocatedSize];
    }

    while (v7 < p_storageCreateParams->var0);
  }

  return v6;
}

- (unsigned)getGeneration
{
  os_unfair_lock_lock(&self->_lock);
  generation = self->_generation;
  os_unfair_lock_unlock(&self->_lock);
  return generation;
}

@end