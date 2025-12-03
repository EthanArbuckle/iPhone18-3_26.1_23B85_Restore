@interface IOGPUMetalDevice
- (BOOL)supportsVertexAmplificationCount:(unint64_t)count;
- (IOGPUMetalDevice)initWithAcceleratorPort:(unsigned int)port options:(unint64_t)options;
- (id)_deviceWrapper;
- (id)allocBufferSubDataWithLength:(unint64_t)length options:(unint64_t)options alignment:(unint64_t)alignment heapIndex:(signed __int16 *)index bufferIndex:(signed __int16 *)bufferIndex bufferOffset:(unint64_t *)offset parentAddress:(unint64_t)address parentLength:(unint64_t)self0;
- (id)newAccelerationStructureWithBuffer:(id)buffer offset:(unint64_t)offset;
- (id)newAccelerationStructureWithBuffer:(id)buffer offset:(unint64_t)offset resourceIndex:(unint64_t)index;
- (id)newAccelerationStructureWithSize:(unint64_t)size;
- (id)newAccelerationStructureWithSize:(unint64_t)size resourceIndex:(unint64_t)index;
- (id)newCommandQueueWithDescriptor:(id)descriptor;
- (id)newDevicePoolAliasedCommandAllocator;
- (id)newEvent;
- (id)newEventWithOptions:(int64_t)options;
- (id)newFence;
- (id)newIOCommandQueueWithDescriptor:(id)descriptor error:(id *)error;
- (id)newIOHandleWithURL:(id)l compressionType:(int64_t)type error:(id *)error;
- (id)newIOHandleWithURL:(id)l error:(id *)error;
- (id)newIndirectCommandBufferWithDescriptor:(id)descriptor maxCommandCount:(unint64_t)count options:(unint64_t)options;
- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor;
- (id)newLateEvalEvent;
- (id)newUncachedIOHandleWithURL:(id)l compressionType:(int64_t)type error:(id *)error;
- (id)newUncachedIOHandleWithURL:(id)l error:(id *)error;
- (uint64_t)updateResourcePoolPurgeability;
- (unint64_t)currentAllocatedSize;
- (unint64_t)maxBufferLength;
- (unint64_t)recommendedMaxWorkingSetSize;
- (void)_purgeDevice;
- (void)cancelPeriodicUpdateResourcePoolPurgeability;
- (void)dealloc;
- (void)deallocBufferSubData:(id)data heapIndex:(signed __int16)index bufferIndex:(signed __int16)bufferIndex bufferOffset:(unint64_t)offset length:(unint64_t)length;
- (void)kickCleanupQueue;
- (void)launchMappingThread;
- (void)periodicUpdateResourcePoolPurgeability;
- (void)setHwResourcePool:(id *)pool count:(int)count;
@end

@implementation IOGPUMetalDevice

- (unint64_t)currentAllocatedSize
{
  output = 0;
  if (IOGPUDeviceGetAllocatedSize(self->_deviceRef, &output))
  {
    return 0;
  }

  else
  {
    return output;
  }
}

- (void)kickCleanupQueue
{
  if (self)
  {
    os_unfair_lock_lock((self + 816));
    *(self + 821) = 1;
    if ((*(self + 820) & 1) == 0)
    {
      *(self + 820) = 1;
      v2 = *(self + 808);
      v3 = dispatch_time(0, 1000000000);
      dispatch_source_set_timer(v2, v3, 0x3B9ACA00uLL, 0x5F5E100uLL);
      dispatch_resume(*(self + 808));
    }

    os_unfair_lock_unlock((self + 816));
  }
}

- (void)periodicUpdateResourcePoolPurgeability
{
  if (!self)
  {
    return;
  }

  OUTLINED_FUNCTION_1(self);
  *(v1 + 821) = 0;
  v2 = OUTLINED_FUNCTION_0();
  os_unfair_lock_unlock(v2);
  if (!*(v1 + 680))
  {
    v6 = OUTLINED_FUNCTION_0();
    os_unfair_lock_lock(v6);
    goto LABEL_8;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v4 |= [*(*(v1 + 672) + 8 * v3++) updateResourcePurgeability];
  }

  while (v3 < *(v1 + 680));
  v5 = OUTLINED_FUNCTION_0();
  os_unfair_lock_lock(v5);
  if ((v4 & 1) == 0)
  {
LABEL_8:
    if ((*(v1 + 821) & 1) == 0)
    {
      dispatch_suspend(*(v1 + 808));
      *(v1 + 820) = 0;
    }
  }

  v7 = OUTLINED_FUNCTION_0();

  os_unfair_lock_unlock(v7);
}

- (unint64_t)maxBufferLength
{
  v3 = 0;
  IOGPUDeviceGetMaxResourceSize(&self->_deviceRef->var0.var0, &v3);
  return v3;
}

- (id)newFence
{
  v3 = [IOGPUMetalFence alloc];

  return [(IOGPUMetalFence *)v3 initWithDevice:self];
}

- (void)dealloc
{
  mappingQueue = self->_mappingQueue;
  if (mappingQueue)
  {
    dispatch_release(mappingQueue);
    self->_mappingQueue = 0;
  }

  device_pool_cleanup_queue = self->_device_pool_cleanup_queue;
  if (device_pool_cleanup_queue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__IOGPUMetalDevice_dealloc__block_invoke;
    block[3] = &unk_1E8362AB0;
    block[4] = self;
    dispatch_sync(device_pool_cleanup_queue, block);
    dispatch_release(self->_device_pool_cleanup_queue);
  }

  commandBufferStoragePool = self->_commandBufferStoragePool;
  if (commandBufferStoragePool)
  {
    IOGPUMetalCommandBufferStoragePoolDealloc(commandBufferStoragePool);
  }

  buffer_suballocator = self->_buffer_suballocator;
  if (buffer_suballocator)
  {
    IOGPUMetalSuballocatorDestroy(buffer_suballocator);
  }

  device_dispatch_queue = self->_device_dispatch_queue;
  if (device_dispatch_queue)
  {
    dispatch_release(device_dispatch_queue);
  }

  deviceRef = self->_deviceRef;
  if (deviceRef)
  {
    CFRelease(deviceRef);
  }

  self->_ioKernelCommandListShmemPool = 0;
  self->_storageCreateParams.kernelCommandShmemPool = 0;

  self->_storageCreateParams.segmentListShmemPool = 0;
  self->_storageCreateParams.sidebandPool = 0;

  self->_storageCreateParams.debugBufferShmemPool = 0;
  if (self->_storageCreateParams.var0)
  {
    v9 = 0;
    do
    {

      self->_storageCreateParams.hwResourcePools[v9++] = 0;
    }

    while (v9 < self->_storageCreateParams.var0);
  }

  self->_storageCreateParams.var0 = 0;
  free(self->_storageCreateParams.hwResourcePools);
  self->_storageCreateParams.hwResourcePools = 0;

  IOObjectRelease(self->_acceleratorPort);
  v10.receiver = self;
  v10.super_class = IOGPUMetalDevice;
  [(_MTLDevice *)&v10 dealloc];
}

void __27__IOGPUMetalDevice_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 808);
  if (*(v2 + 820) == 1)
  {
    dispatch_source_cancel(v3);
  }

  else
  {
    dispatch_resume(v3);
  }

  *(*(a1 + 32) + 820) = 0;
  dispatch_activate(*(*(a1 + 32) + 808));
  v4 = *(*(a1 + 32) + 808);

  dispatch_release(v4);
}

- (IOGPUMetalDevice)initWithAcceleratorPort:(unsigned int)port options:(unint64_t)options
{
  +[IOGPUMemoryInfo initialize];
  v19.receiver = self;
  v19.super_class = IOGPUMetalDevice;
  v7 = [(_MTLDevice *)&v19 init];
  if (v7)
  {
    v7[776] = MTLGetEnvDefault() != 0;
    *(v7 + 204) = 0;
    if (([v7 conformsToProtocol:&unk_1F49F7860] & 1) == 0)
    {
      [IOGPUMetalDevice initWithAcceleratorPort:options:];
    }

    if (options >= 0x10000)
    {
      [IOGPUMetalDevice initWithAcceleratorPort:options:];
    }

    v8 = IOGPUDeviceCreateWithOptions(port, options);
    *(v7 + 79) = v8;
    if (!v8)
    {
      goto LABEL_15;
    }

    IORegistryEntryGetRegistryEntryID(port, v7 + 103);
    *(v7 + 160) = port;
    IOObjectRetain(port);
    *(v7 + 84) = 0;
    *(v7 + 170) = 0;
    *(v7 + 86) = [objc_alloc(MEMORY[0x1E6974168]) initWithResourceListCapacity:1024];
    *(v7 + 87) = [objc_alloc(MEMORY[0x1E6974168]) initWithResourceListCapacity:256];
    IOGPUDeviceGetConfig64(*(v7 + 79), v7 + 180, v7 + 181, v7 + 91, v7 + 92, v7 + 188);
    IOGPUDeviceGetSharedMemorySize(*(v7 + 79), v7 + 93);
    *(v7 + 92) = 0;
    *(v7 + 91) = 0;
    v9 = -[IOGPUMetalDeviceShmemPool initWithDevice:resourceClass:shmemSize:shmemType:options:]([IOGPUMetalDeviceShmemPool alloc], "initWithDevice:resourceClass:shmemSize:shmemType:options:", v7, objc_opt_class(), [v7 initialKernelCommandShmemSize], 1, 0);
    *(v7 + 82) = v9;
    if (!v9)
    {
      [IOGPUMetalDevice initWithAcceleratorPort:options:];
    }

    v10 = -[IOGPUMetalDeviceShmemPool initWithDevice:resourceClass:shmemSize:shmemType:options:]([IOGPUMetalDeviceShmemPool alloc], "initWithDevice:resourceClass:shmemSize:shmemType:options:", v7, objc_opt_class(), [v7 initialSegmentListShmemSize], 0, 0);
    *(v7 + 81) = v10;
    if (!v10)
    {
      [IOGPUMetalDevice initWithAcceleratorPort:options:];
    }

    v11 = -[IOGPUMetalDeviceShmemPool initWithDevice:resourceClass:shmemSize:shmemType:options:]([IOGPUMetalDeviceShmemPool alloc], "initWithDevice:resourceClass:shmemSize:shmemType:options:", v7, objc_opt_class(), [v7 initialSidebandShmemSize], 3, 0);
    *(v7 + 83) = v11;
    if (!v11)
    {
      [IOGPUMetalDevice initWithAcceleratorPort:options:];
    }

    v12 = -[IOGPUMetalDeviceShmemPool initWithDevice:resourceClass:shmemSize:shmemType:options:]([IOGPUMetalDeviceShmemPool alloc], "initWithDevice:resourceClass:shmemSize:shmemType:options:", v7, objc_opt_class(), [v7 initialDebugBufferShmemSize], 2, 0);
    *(v7 + 88) = v12;
    if (!v12)
    {
      [IOGPUMetalDevice initWithAcceleratorPort:options:];
    }

    if ((v7[776] & 1) == 0)
    {
      *(v7 + 96) = -[IOGPUMetalDeviceShmemPool initWithDevice:resourceClass:shmemSize:shmemType:options:]([IOGPUMetalDeviceShmemPool alloc], "initWithDevice:resourceClass:shmemSize:shmemType:options:", v7, objc_opt_class(), [v7 initialIOKernelCommandListShmemSize], 1, 0);
    }

    *(v7 + 95) = 0;
    *(v7 + 99) = dispatch_queue_create("com.Metal.DeviceDispatchQueue", 0);
    IOGPUMetalSuballocatorCreate(v7);
    *(v7 + 98) = v13;
    IOGPUMetalCommandBufferStoragePoolCreate(v7, (v7 + 648));
    *(v7 + 89) = v14;
    if (v14)
    {
      *&v7[*MEMORY[0x1E6974310]] = IOGPUDeviceGetGlobalTraceObjectID(*(v7 + 79));
      if (*__globalGPUCommPage)
      {
        IOGPUDeviceGetGlobalTraceObjectID(*(v7 + 79));
        IOGPUDeviceTraceEvent();
      }

      *(v7 + 100) = dispatch_queue_create("com.Metal.DeviceCleaupQueue", 0);
      *(v7 + 101) = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v7 + 99));
      v7[820] = 0;
      v18[0] = 0;
      v18[1] = v18;
      v18[2] = 0x3052000000;
      v18[3] = __Block_byref_object_copy__0;
      v18[4] = __Block_byref_object_dispose__0;
      v18[5] = v7;
      v15 = *(v7 + 101);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __52__IOGPUMetalDevice_initWithAcceleratorPort_options___block_invoke;
      handler[3] = &unk_1E8362A38;
      handler[4] = v18;
      dispatch_source_set_event_handler(v15, handler);
      _Block_object_dispose(v18, 8);
    }

    else
    {
LABEL_15:

      return 0;
    }
  }

  return v7;
}

- (void)setHwResourcePool:(id *)pool count:(int)count
{
  p_storageCreateParams = &self->_storageCreateParams;
  if (self->_storageCreateParams.hwResourcePools)
  {
    [IOGPUMetalDevice setHwResourcePool:count:];
  }

  if (self->_storageCreateParams.var0)
  {
    [IOGPUMetalDevice setHwResourcePool:count:];
  }

  self->_storageCreateParams.hwResourcePools = malloc_type_malloc(8 * count, 0x80040B8603338uLL);
  if (count >= 1)
  {
    v7 = 0;
    do
    {
      p_storageCreateParams->hwResourcePools[v7] = pool[v7];
      ++v7;
    }

    while (count != v7);
  }

  p_storageCreateParams->var0 = count;
}

- (void)_purgeDevice
{
  v4.receiver = self;
  v4.super_class = IOGPUMetalDevice;
  [(_MTLDevice *)&v4 _purgeDevice];
  IOGPUMetalCommandBufferStoragePoolPurge(self->_commandBufferStoragePool);
  [(IOGPUMetalDeviceShmemPool *)self->_storageCreateParams.kernelCommandShmemPool purge];
  [(IOGPUMetalDeviceShmemPool *)self->_storageCreateParams.segmentListShmemPool purge];
  [(IOGPUMetalDeviceShmemPool *)self->_storageCreateParams.sidebandPool purge];
  [(IOGPUMetalDeviceShmemPool *)self->_storageCreateParams.debugBufferShmemPool purge];
  [(MTLResourceListPool *)self->_storageCreateParams.akResourceListPool purge];
  [(MTLResourceListPool *)self->_storageCreateParams.akPrivateResourceListPool purge];
  if (self->_storageCreateParams.var0)
  {
    v3 = 0;
    do
    {
      [(hwResourcePoolCount *)self->_storageCreateParams.hwResourcePools[v3++] purge];
    }

    while (v3 < self->_storageCreateParams.var0);
  }

  [(IOGPUMetalDeviceShmemPool *)self->_ioKernelCommandListShmemPool purge];
  [(IOGPUMetalDevice *)self kickCleanupQueue];
}

- (unint64_t)recommendedMaxWorkingSetSize
{
  videoRam = self->_videoRam;
  if (!videoRam)
  {
    return self->_sharedMemorySize;
  }

  return videoRam;
}

- (BOOL)supportsVertexAmplificationCount:(unint64_t)count
{
  if (count == 1)
  {
    return 1;
  }

  result = [(IOGPUMetalDevice *)self supportsVertexAmplification];
  if (count != 2)
  {
    return 0;
  }

  return result;
}

- (id)allocBufferSubDataWithLength:(unint64_t)length options:(unint64_t)options alignment:(unint64_t)alignment heapIndex:(signed __int16 *)index bufferIndex:(signed __int16 *)bufferIndex bufferOffset:(unint64_t *)offset parentAddress:(unint64_t)address parentLength:(unint64_t)self0
{
  v22 = 0;
  optionsCopy = options;
  lengthCopy = length;
  v21 = 0;
  if (address)
  {
    v14 = parentLength == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v21 = *offset;
  }

  buffer_suballocator = self->_buffer_suballocator;
  if (!buffer_suballocator)
  {
    return 0;
  }

  v16 = IOGPUMetalSuballocatorAllocate(buffer_suballocator, &lengthCopy, alignment, &optionsCopy, address, parentLength);
  v17 = v16;
  if (v16)
  {
    *index = WORD1(v22);
    *bufferIndex = v22;
    *offset = v21;
    if ((optionsCopy & 0x90000) == 0)
    {
      virtualAddress = [v16 virtualAddress];
      bzero((virtualAddress + v21), length);
    }
  }

  return v17;
}

- (void)deallocBufferSubData:(id)data heapIndex:(signed __int16)index bufferIndex:(signed __int16)bufferIndex bufferOffset:(unint64_t)offset length:(unint64_t)length
{
  v8[1] = offset;
  v11 = 0;
  indexCopy = index;
  bufferIndexCopy = bufferIndex;
  v8[0] = length;
  buffer_suballocator = self->_buffer_suballocator;
  if (!buffer_suballocator)
  {
    [IOGPUMetalDevice deallocBufferSubData:heapIndex:bufferIndex:bufferOffset:length:];
  }

  IOGPUMetalSuballocatorFree(buffer_suballocator, v8);
}

- (id)newCommandQueueWithDescriptor:(id)descriptor
{
  maxCommandBufferCount = [descriptor maxCommandBufferCount];

  return [(_MTLDevice *)self newCommandQueueWithMaxCommandBufferCount:maxCommandBufferCount];
}

- (id)newIndirectCommandBufferWithDescriptor:(id)descriptor maxCommandCount:(unint64_t)count options:(unint64_t)options
{
  v7 = [(IOGPUMetalDevice *)self newIndirectCommandBufferWithDescriptor:descriptor maxCount:count options:options];
  v8 = [[IOGPUMetalIndirectCommandBuffer alloc] initWithBuffer:v7 descriptor:descriptor maxCommandCount:count];

  return v8;
}

- (id)newEvent
{
  if ((self->_configBits & 0x4000) != 0)
  {
    v4 = [_IOGPUMetalMTLEvent alloc];

    return [(_IOGPUMetalMTLEvent *)v4 initWithDevice:self];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = IOGPUMetalDevice;
    return [(_MTLDevice *)&v5 newEvent];
  }
}

- (id)newEventWithOptions:(int64_t)options
{
  v5 = [_IOGPUMetalMTLEvent alloc];

  return [(_IOGPUMetalMTLEvent *)v5 initWithDevice:self options:options];
}

- (id)newLateEvalEvent
{
  v3 = [_IOGPUMetalMTLLateEvalEvent alloc];

  return [(_IOGPUMetalMTLLateEvalEvent *)v3 initWithDevice:self];
}

- (id)_deviceWrapper
{
  if (!objc_loadWeak(&self->_deviceWrapper))
  {
    return self;
  }

  Weak = objc_loadWeak(&self->_deviceWrapper);

  return [Weak _deviceWrapper];
}

- (id)newAccelerationStructureWithSize:(unint64_t)size
{
  if ([(_MTLDevice *)self requiresRaytracingEmulation])
  {
    v6 = [(IOGPUMetalDevice *)self newBufferWithLength:size options:32];
    if (v6)
    {
      v7 = v6;
      v8 = [[IOGPUMetalAccelerationStructure alloc] initWithBuffer:v6 offset:0];

      return v8;
    }
  }

  else
  {
    [(IOGPUMetalDevice *)self doesNotRecognizeSelector:a2];
  }

  return 0;
}

- (id)newAccelerationStructureWithSize:(unint64_t)size resourceIndex:(unint64_t)index
{
  if ([(_MTLDevice *)self requiresRaytracingEmulation])
  {
    v8 = [(IOGPUMetalDevice *)self newBufferWithLength:size options:32];
    if (v8)
    {
      v9 = v8;
      v10 = [[IOGPUMetalAccelerationStructure alloc] initWithBuffer:v8 offset:0 resourceIndex:index];

      return v10;
    }
  }

  else
  {
    [(IOGPUMetalDevice *)self doesNotRecognizeSelector:a2];
  }

  return 0;
}

- (id)newAccelerationStructureWithBuffer:(id)buffer offset:(unint64_t)offset
{
  if ([(_MTLDevice *)self requiresRaytracingEmulation])
  {
    if (!buffer)
    {
      [IOGPUMetalDevice newAccelerationStructureWithBuffer:offset:];
    }

    v8 = [IOGPUMetalAccelerationStructure alloc];

    return [(IOGPUMetalAccelerationStructure *)v8 initWithBuffer:buffer offset:offset];
  }

  else
  {
    [(IOGPUMetalDevice *)self doesNotRecognizeSelector:a2];
    return 0;
  }
}

- (id)newAccelerationStructureWithBuffer:(id)buffer offset:(unint64_t)offset resourceIndex:(unint64_t)index
{
  if ([(_MTLDevice *)self requiresRaytracingEmulation])
  {
    if (!buffer)
    {
      [IOGPUMetalDevice newAccelerationStructureWithBuffer:offset:resourceIndex:];
    }

    v10 = [IOGPUMetalAccelerationStructure alloc];

    return [(IOGPUMetalAccelerationStructure *)v10 initWithBuffer:buffer offset:offset resourceIndex:index];
  }

  else
  {
    [(IOGPUMetalDevice *)self doesNotRecognizeSelector:a2];
    return 0;
  }
}

- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor
{
  if ([(_MTLDevice *)self requiresRaytracingEmulation])
  {
    v6 = objc_alloc_init(MEMORY[0x1E69741E8]);
    [v6 setFunctionCount:{objc_msgSend(descriptor, "functionCount")}];
    [v6 setResourceIndex:{objc_msgSend(descriptor, "resourceIndex")}];
    [v6 setForceResourceIndex:{objc_msgSend(descriptor, "forceResourceIndex")}];
    v7 = [(IOGPUMetalDevice *)self newVisibleFunctionTableWithDescriptor:v6];

    v8 = [[IOGPUMetalIntersectionFunctionTable alloc] initWithVisibleFunctionTable:v7];
    return v8;
  }

  else
  {
    [(IOGPUMetalDevice *)self doesNotRecognizeSelector:a2];
    return 0;
  }
}

- (id)newIOCommandQueueWithDescriptor:(id)descriptor error:(id *)error
{
  if (self->_disableGPUIO)
  {
    v8.receiver = self;
    v8.super_class = IOGPUMetalDevice;
    return [(_MTLDevice *)&v8 newIOCommandQueueWithDescriptor:descriptor error:error];
  }

  else
  {
    v7 = [IOGPUMetalIOCommandQueue alloc];

    return [(IOGPUMetalIOCommandQueue *)v7 initWithDevice:self descriptor:descriptor];
  }
}

- (id)newIOHandleWithURL:(id)l compressionType:(int64_t)type error:(id *)error
{
  if (self->_disableGPUIO)
  {
    v15.receiver = self;
    v15.super_class = IOGPUMetalDevice;
    return [(_MTLDevice *)&v15 newIOFileHandleWithURL:l compressionMethod:type error:error];
  }

  if (![l isFileURL])
  {
    if (error)
    {
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"URL is not a file" forKey:*MEMORY[0x1E696A578]];
      v13 = objc_alloc(MEMORY[0x1E696ABC0]);
      v14 = [v13 initWithDomain:*MEMORY[0x1E6973F90] code:1 userInfo:v12];
      result = 0;
      *error = v14;
      return result;
    }

    return 0;
  }

  if (![l checkResourceIsReachableAndReturnError:error])
  {
    return 0;
  }

  v10 = [IOGPUMetalIOHandleCompressed alloc];
  fileSystemRepresentation = [l fileSystemRepresentation];

  return [(IOGPUMetalIOHandleCompressed *)v10 initWithDevice:self path:fileSystemRepresentation compressionType:type error:error uncached:0];
}

- (id)newIOHandleWithURL:(id)l error:(id *)error
{
  if (self->_disableGPUIO)
  {
    v13.receiver = self;
    v13.super_class = IOGPUMetalDevice;
    return [(_MTLDevice *)&v13 newIOFileHandleWithURL:l error:error];
  }

  if (![l isFileURL])
  {
    if (error)
    {
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"URL is not a file" forKey:*MEMORY[0x1E696A578]];
      v11 = objc_alloc(MEMORY[0x1E696ABC0]);
      v12 = [v11 initWithDomain:*MEMORY[0x1E6973F90] code:1 userInfo:v10];
      result = 0;
      *error = v12;
      return result;
    }

    return 0;
  }

  if (![l checkResourceIsReachableAndReturnError:error])
  {
    return 0;
  }

  v8 = [IOGPUMetalIOHandleRaw alloc];
  fileSystemRepresentation = [l fileSystemRepresentation];

  return [(IOGPUMetalIOHandleRaw *)v8 initWithDevice:self path:fileSystemRepresentation error:error uncached:0];
}

- (id)newUncachedIOHandleWithURL:(id)l compressionType:(int64_t)type error:(id *)error
{
  if (self->_disableGPUIO)
  {
    v15.receiver = self;
    v15.super_class = IOGPUMetalDevice;
    return [(_MTLDevice *)&v15 newUncachedIOFileHandleWithURL:l compressionMethod:type error:error];
  }

  if (![l isFileURL])
  {
    if (error)
    {
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"URL is not a file" forKey:*MEMORY[0x1E696A578]];
      v13 = objc_alloc(MEMORY[0x1E696ABC0]);
      v14 = [v13 initWithDomain:*MEMORY[0x1E6973F90] code:1 userInfo:v12];
      result = 0;
      *error = v14;
      return result;
    }

    return 0;
  }

  if (![l checkResourceIsReachableAndReturnError:error])
  {
    return 0;
  }

  v10 = [IOGPUMetalIOHandleCompressed alloc];
  fileSystemRepresentation = [l fileSystemRepresentation];

  return [(IOGPUMetalIOHandleCompressed *)v10 initWithDevice:self path:fileSystemRepresentation compressionType:type error:error uncached:1];
}

- (id)newUncachedIOHandleWithURL:(id)l error:(id *)error
{
  if (self->_disableGPUIO)
  {
    v13.receiver = self;
    v13.super_class = IOGPUMetalDevice;
    return [(_MTLDevice *)&v13 newUncachedIOFileHandleWithURL:l error:error];
  }

  if (![l isFileURL])
  {
    if (error)
    {
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"URL is not a file" forKey:*MEMORY[0x1E696A578]];
      v11 = objc_alloc(MEMORY[0x1E696ABC0]);
      v12 = [v11 initWithDomain:*MEMORY[0x1E6973F90] code:1 userInfo:v10];
      result = 0;
      *error = v12;
      return result;
    }

    return 0;
  }

  if (![l checkResourceIsReachableAndReturnError:error])
  {
    return 0;
  }

  v8 = [IOGPUMetalIOHandleRaw alloc];
  fileSystemRepresentation = [l fileSystemRepresentation];

  return [(IOGPUMetalIOHandleRaw *)v8 initWithDevice:self path:fileSystemRepresentation error:error uncached:1];
}

- (void)launchMappingThread
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__IOGPUMetalDevice_launchMappingThread__block_invoke;
  block[3] = &unk_1E8362AB0;
  block[4] = self;
  if (launchMappingThread_onceToken != -1)
  {
    dispatch_once(&launchMappingThread_onceToken, block);
  }
}

void __39__IOGPUMetalDevice_launchMappingThread__block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  *(*(a1 + 32) + 840) = dispatch_queue_create("com.Metal.MappingDispatch", v2);
  v3 = *(a1 + 32);
  v4 = *(v3 + 840);
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      __39__IOGPUMetalDevice_launchMappingThread__block_invoke_cold_1();
    }

    abort();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__IOGPUMetalDevice_launchMappingThread__block_invoke_1346;
  block[3] = &unk_1E8362AB0;
  block[4] = v3;
  dispatch_async(v4, block);
}

uint64_t __39__IOGPUMetalDevice_launchMappingThread__block_invoke_1346(uint64_t a1)
{
  do
  {
    result = IOGPUDevicePerformMapping(*(*(a1 + 32) + 632));
  }

  while (result != -536870165);
  return result;
}

- (id)newDevicePoolAliasedCommandAllocator
{
  v3 = [IOGPUMetal4CommandAllocator alloc];

  return [(IOGPUMetal4CommandAllocator *)v3 initWithDeviceAndAliasToDevicePools:self];
}

- (uint64_t)updateResourcePoolPurgeability
{
  if (self && *(self + 680))
  {
    v1 = 0;
    v2 = 0;
    v3 = self + 24;
    v4 = self + 32;
    do
    {
      v2 |= [*(*(v3 + 648) + 8 * v1++) updateResourcePurgeability];
    }

    while (v1 < *(v4 + 648));
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

- (void)cancelPeriodicUpdateResourcePoolPurgeability
{
  if (self)
  {
    OUTLINED_FUNCTION_1(self);
    if ((*(v1 + 821) & 1) == 0)
    {
      dispatch_suspend(*(v1 + 808));
      *(v1 + 820) = 0;
    }

    v2 = OUTLINED_FUNCTION_0();

    os_unfair_lock_unlock(v2);
  }
}

@end