@interface IOGPUMetalHeap
- (id)newAccelerationStructureWithDescriptor:(id)descriptor;
- (id)newAccelerationStructureWithDescriptor:(id)descriptor offset:(unint64_t)offset;
- (id)newAccelerationStructureWithSize:(unint64_t)size;
- (id)newAccelerationStructureWithSize:(unint64_t)size offset:(unint64_t)offset;
- (id)newAccelerationStructureWithSize:(unint64_t)size offset:(unint64_t)offset resourceIndex:(unint64_t)index;
- (id)newAccelerationStructureWithSize:(unint64_t)size resourceIndex:(unint64_t)index;
- (id)newSubResourceAtOffset:(unint64_t)offset withLength:(unint64_t)length alignment:(unint64_t)alignment options:(unint64_t)options;
- (id)newSubResourceWithLength:(unint64_t)length alignment:(unint64_t)alignment options:(unint64_t)options offset:(unint64_t *)offset;
- (unint64_t)maxAvailableSizeWithAlignment:(unint64_t)alignment;
- (unint64_t)setPurgeableState:(unint64_t)state;
- (unint64_t)usedSize;
- (void)dealloc;
- (void)deallocHeapSubResource;
- (void)setLabel:(id)label;
- (void)unpinMemoryAtOffset:(unint64_t)offset withLength:(unint64_t)length;
@end

@implementation IOGPUMetalHeap

- (void)deallocHeapSubResource
{
  pthread_mutex_lock(&self->_mutex);

  pthread_mutex_unlock(&self->_mutex);
}

- (void)dealloc
{
  if (![(_MTLHeap *)self type])
  {
    MTLRangeAllocatorDestroy();
  }

  self->_device = 0;
  v3.receiver = self;
  v3.super_class = IOGPUMetalHeap;
  [(_MTLObjectWithLabel *)&v3 dealloc];
}

- (unint64_t)usedSize
{
  if ([(_MTLHeap *)self type])
  {
    return 0;
  }

  pthread_mutex_lock(&self->_mutex);
  size = self->_size;
  v3 = size - MTLRangeAllocatorGetFreeSize();
  pthread_mutex_unlock(&self->_mutex);
  return v3;
}

- (unint64_t)maxAvailableSizeWithAlignment:(unint64_t)alignment
{
  if ((alignment & (alignment - 1)) != 0)
  {
    [IOGPUMetalHeap maxAvailableSizeWithAlignment:];
  }

  if ([(_MTLHeap *)self type])
  {
    return 0;
  }

  pthread_mutex_lock(&self->_mutex);
  MaxFreeSize = MTLRangeAllocatorGetMaxFreeSize();
  pthread_mutex_unlock(&self->_mutex);
  return MaxFreeSize;
}

- (void)setLabel:(id)label
{
  v5 = objc_autoreleasePoolPush();
  -[IOGPUMetalResource setLabel:](self->_resource, "setLabel:", [@"IOGPUMetalHeap" stringByAppendingFormat:@", %@", label]);
  objc_autoreleasePoolPop(v5);
  v6.receiver = self;
  v6.super_class = IOGPUMetalHeap;
  [(_MTLObjectWithLabel *)&v6 setLabel:label];
}

- (id)newSubResourceWithLength:(unint64_t)length alignment:(unint64_t)alignment options:(unint64_t)options offset:(unint64_t *)offset
{
  optionsCopy = options;
  if ([(_MTLHeap *)self type])
  {
    [IOGPUMetalHeap newSubResourceWithLength:alignment:options:offset:];
  }

  if (self->_size < length)
  {
    return 0;
  }

  v10 = *&self->_resource->_anon_50[88];
  if ((optionsCopy & 0xF) != (v10 & 0xF))
  {
    MTLCPUCacheModeString();
    MTLCPUCacheModeString();
    MTLReportFailure();
    v10 = *&self->_resource->_anon_50[88];
  }

  v11 = optionsCopy >> 4;
  if (v11 != 3 && v11 != v10 >> 4)
  {
    [IOGPUMetalHeap newSubResourceWithLength:alignment:options:offset:];
  }

  pthread_mutex_lock(&self->_mutex);
  if (MTLRangeAllocatorAllocate())
  {
    v9 = self->_resource;
  }

  else
  {
    v9 = 0;
  }

  pthread_mutex_unlock(&self->_mutex);
  return v9;
}

- (void)unpinMemoryAtOffset:(unint64_t)offset withLength:(unint64_t)length
{
  if ([(_MTLHeap *)self type])
  {
    [IOGPUMetalHeap unpinMemoryAtOffset:withLength:];
  }

  pthread_mutex_lock(&self->_mutex);
  MTLRangeAllocatorDeallocate();

  pthread_mutex_unlock(&self->_mutex);
}

- (unint64_t)setPurgeableState:(unint64_t)state
{
  pthread_mutex_lock(&self->_mutex);
  v5 = [(IOGPUMetalResource *)self->_resource setPurgeableState:state];
  pthread_mutex_unlock(&self->_mutex);
  return v5;
}

- (id)newSubResourceAtOffset:(unint64_t)offset withLength:(unint64_t)length alignment:(unint64_t)alignment options:(unint64_t)options
{
  optionsCopy = options;
  if ([(_MTLHeap *)self type]!= 1)
  {
    [IOGPUMetalHeap newSubResourceAtOffset:withLength:alignment:options:];
  }

  v11 = *&self->_resource->_anon_50[88];
  if ((optionsCopy & 0xF) != (v11 & 0xF))
  {
    MTLCPUCacheModeString();
    MTLCPUCacheModeString();
    MTLReportFailure();
    v11 = *&self->_resource->_anon_50[88];
  }

  if (optionsCopy >> 4 != (v11 >> 4))
  {
    [IOGPUMetalHeap newSubResourceAtOffset:withLength:alignment:options:];
  }

  if (__CFADD__(offset, length) || offset + length > self->_size || ((alignment | offset) & (alignment - 1)) != 0)
  {
    return 0;
  }

  resource = self->_resource;

  return resource;
}

- (id)newAccelerationStructureWithSize:(unint64_t)size
{
  if (([(MTLDevice *)self->_device requiresRaytracingEmulation]& 1) != 0)
  {
    if ([(_MTLHeap *)self storageMode]!= 2)
    {
      [IOGPUMetalHeap newAccelerationStructureWithSize:];
    }

    v6 = [(IOGPUMetalHeap *)self newBufferWithLength:size options:[(_MTLHeap *)self resourceOptions]];
    if (v6)
    {
      v7 = v6;
      v8 = [(MTLDevice *)self->_device newAccelerationStructureWithBuffer:v6 offset:0];

      return v8;
    }
  }

  else
  {
    [(IOGPUMetalHeap *)self doesNotRecognizeSelector:a2];
  }

  return 0;
}

- (id)newAccelerationStructureWithDescriptor:(id)descriptor
{
  if (([(MTLDevice *)self->_device requiresRaytracingEmulation]& 1) != 0)
  {
    if ([(_MTLHeap *)self storageMode]!= 2)
    {
      [IOGPUMetalHeap newAccelerationStructureWithDescriptor:];
    }

    v6 = [(MTLDevice *)self->_device heapAccelerationStructureSizeAndAlignWithDescriptor:descriptor];

    return [(IOGPUMetalHeap *)self newAccelerationStructureWithSize:v6];
  }

  else
  {
    [(IOGPUMetalHeap *)self doesNotRecognizeSelector:a2];
    return 0;
  }
}

- (id)newAccelerationStructureWithSize:(unint64_t)size offset:(unint64_t)offset
{
  if (([(MTLDevice *)self->_device requiresRaytracingEmulation]& 1) != 0)
  {
    if ([(_MTLHeap *)self storageMode]!= 2)
    {
      [IOGPUMetalHeap newAccelerationStructureWithSize:offset:];
    }

    v8 = [(_MTLHeap *)self newBufferWithLength:size options:[(_MTLHeap *)self resourceOptions] offset:offset];
    if (v8)
    {
      v9 = v8;
      v10 = [(MTLDevice *)self->_device newAccelerationStructureWithBuffer:v8 offset:0];

      return v10;
    }
  }

  else
  {
    [(IOGPUMetalHeap *)self doesNotRecognizeSelector:a2];
  }

  return 0;
}

- (id)newAccelerationStructureWithDescriptor:(id)descriptor offset:(unint64_t)offset
{
  if (([(MTLDevice *)self->_device requiresRaytracingEmulation]& 1) != 0)
  {
    if ([(_MTLHeap *)self storageMode]!= 2)
    {
      [IOGPUMetalHeap newAccelerationStructureWithDescriptor:offset:];
    }

    v8 = [(MTLDevice *)self->_device heapAccelerationStructureSizeAndAlignWithDescriptor:descriptor];

    return [(IOGPUMetalHeap *)self newAccelerationStructureWithSize:v8 offset:offset];
  }

  else
  {
    [(IOGPUMetalHeap *)self doesNotRecognizeSelector:a2];
    return 0;
  }
}

- (id)newAccelerationStructureWithSize:(unint64_t)size resourceIndex:(unint64_t)index
{
  if (([(MTLDevice *)self->_device requiresRaytracingEmulation]& 1) != 0)
  {
    if ([(_MTLHeap *)self storageMode]!= 2)
    {
      [IOGPUMetalHeap newAccelerationStructureWithSize:resourceIndex:];
    }

    v8 = [(IOGPUMetalHeap *)self newBufferWithLength:size options:[(_MTLHeap *)self resourceOptions]];
    if (v8)
    {
      v9 = v8;
      v10 = [(MTLDevice *)self->_device newAccelerationStructureWithBuffer:v8 offset:0 resourceIndex:index];

      return v10;
    }
  }

  else
  {
    [(IOGPUMetalHeap *)self doesNotRecognizeSelector:a2];
  }

  return 0;
}

- (id)newAccelerationStructureWithSize:(unint64_t)size offset:(unint64_t)offset resourceIndex:(unint64_t)index
{
  if (([(MTLDevice *)self->_device requiresRaytracingEmulation]& 1) != 0)
  {
    if ([(_MTLHeap *)self storageMode]!= 2)
    {
      [IOGPUMetalHeap newAccelerationStructureWithSize:offset:resourceIndex:];
    }

    v10 = [(_MTLHeap *)self newBufferWithLength:size options:[(_MTLHeap *)self resourceOptions] offset:offset];
    if (v10)
    {
      v11 = v10;
      v12 = [(MTLDevice *)self->_device newAccelerationStructureWithBuffer:v10 offset:0 resourceIndex:index];

      return v12;
    }
  }

  else
  {
    [(IOGPUMetalHeap *)self doesNotRecognizeSelector:a2];
  }

  return 0;
}

- (uint64_t)newSubResourceWithLength:alignment:options:offset:.cold.2()
{
  MTLStorageModeString();
  MTLStorageModeString();
  return MTLReportFailure();
}

- (uint64_t)newSubResourceAtOffset:withLength:alignment:options:.cold.2()
{
  MTLStorageModeString();
  MTLStorageModeString();
  return MTLReportFailure();
}

@end