@interface IOGPUMetalHeap
- (id)newAccelerationStructureWithDescriptor:(id)a3;
- (id)newAccelerationStructureWithDescriptor:(id)a3 offset:(unint64_t)a4;
- (id)newAccelerationStructureWithSize:(unint64_t)a3;
- (id)newAccelerationStructureWithSize:(unint64_t)a3 offset:(unint64_t)a4;
- (id)newAccelerationStructureWithSize:(unint64_t)a3 offset:(unint64_t)a4 resourceIndex:(unint64_t)a5;
- (id)newAccelerationStructureWithSize:(unint64_t)a3 resourceIndex:(unint64_t)a4;
- (id)newSubResourceAtOffset:(unint64_t)a3 withLength:(unint64_t)a4 alignment:(unint64_t)a5 options:(unint64_t)a6;
- (id)newSubResourceWithLength:(unint64_t)a3 alignment:(unint64_t)a4 options:(unint64_t)a5 offset:(unint64_t *)a6;
- (unint64_t)maxAvailableSizeWithAlignment:(unint64_t)a3;
- (unint64_t)setPurgeableState:(unint64_t)a3;
- (unint64_t)usedSize;
- (void)dealloc;
- (void)deallocHeapSubResource;
- (void)setLabel:(id)a3;
- (void)unpinMemoryAtOffset:(unint64_t)a3 withLength:(unint64_t)a4;
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

- (unint64_t)maxAvailableSizeWithAlignment:(unint64_t)a3
{
  if ((a3 & (a3 - 1)) != 0)
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

- (void)setLabel:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  -[IOGPUMetalResource setLabel:](self->_resource, "setLabel:", [@"IOGPUMetalHeap" stringByAppendingFormat:@", %@", a3]);
  objc_autoreleasePoolPop(v5);
  v6.receiver = self;
  v6.super_class = IOGPUMetalHeap;
  [(_MTLObjectWithLabel *)&v6 setLabel:a3];
}

- (id)newSubResourceWithLength:(unint64_t)a3 alignment:(unint64_t)a4 options:(unint64_t)a5 offset:(unint64_t *)a6
{
  v6 = a5;
  if ([(_MTLHeap *)self type])
  {
    [IOGPUMetalHeap newSubResourceWithLength:alignment:options:offset:];
  }

  if (self->_size < a3)
  {
    return 0;
  }

  v10 = *&self->_resource->_anon_50[88];
  if ((v6 & 0xF) != (v10 & 0xF))
  {
    MTLCPUCacheModeString();
    MTLCPUCacheModeString();
    MTLReportFailure();
    v10 = *&self->_resource->_anon_50[88];
  }

  v11 = v6 >> 4;
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

- (void)unpinMemoryAtOffset:(unint64_t)a3 withLength:(unint64_t)a4
{
  if ([(_MTLHeap *)self type])
  {
    [IOGPUMetalHeap unpinMemoryAtOffset:withLength:];
  }

  pthread_mutex_lock(&self->_mutex);
  MTLRangeAllocatorDeallocate();

  pthread_mutex_unlock(&self->_mutex);
}

- (unint64_t)setPurgeableState:(unint64_t)a3
{
  pthread_mutex_lock(&self->_mutex);
  v5 = [(IOGPUMetalResource *)self->_resource setPurgeableState:a3];
  pthread_mutex_unlock(&self->_mutex);
  return v5;
}

- (id)newSubResourceAtOffset:(unint64_t)a3 withLength:(unint64_t)a4 alignment:(unint64_t)a5 options:(unint64_t)a6
{
  v6 = a6;
  if ([(_MTLHeap *)self type]!= 1)
  {
    [IOGPUMetalHeap newSubResourceAtOffset:withLength:alignment:options:];
  }

  v11 = *&self->_resource->_anon_50[88];
  if ((v6 & 0xF) != (v11 & 0xF))
  {
    MTLCPUCacheModeString();
    MTLCPUCacheModeString();
    MTLReportFailure();
    v11 = *&self->_resource->_anon_50[88];
  }

  if (v6 >> 4 != (v11 >> 4))
  {
    [IOGPUMetalHeap newSubResourceAtOffset:withLength:alignment:options:];
  }

  if (__CFADD__(a3, a4) || a3 + a4 > self->_size || ((a5 | a3) & (a5 - 1)) != 0)
  {
    return 0;
  }

  resource = self->_resource;

  return resource;
}

- (id)newAccelerationStructureWithSize:(unint64_t)a3
{
  if (([(MTLDevice *)self->_device requiresRaytracingEmulation]& 1) != 0)
  {
    if ([(_MTLHeap *)self storageMode]!= 2)
    {
      [IOGPUMetalHeap newAccelerationStructureWithSize:];
    }

    v6 = [(IOGPUMetalHeap *)self newBufferWithLength:a3 options:[(_MTLHeap *)self resourceOptions]];
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

- (id)newAccelerationStructureWithDescriptor:(id)a3
{
  if (([(MTLDevice *)self->_device requiresRaytracingEmulation]& 1) != 0)
  {
    if ([(_MTLHeap *)self storageMode]!= 2)
    {
      [IOGPUMetalHeap newAccelerationStructureWithDescriptor:];
    }

    v6 = [(MTLDevice *)self->_device heapAccelerationStructureSizeAndAlignWithDescriptor:a3];

    return [(IOGPUMetalHeap *)self newAccelerationStructureWithSize:v6];
  }

  else
  {
    [(IOGPUMetalHeap *)self doesNotRecognizeSelector:a2];
    return 0;
  }
}

- (id)newAccelerationStructureWithSize:(unint64_t)a3 offset:(unint64_t)a4
{
  if (([(MTLDevice *)self->_device requiresRaytracingEmulation]& 1) != 0)
  {
    if ([(_MTLHeap *)self storageMode]!= 2)
    {
      [IOGPUMetalHeap newAccelerationStructureWithSize:offset:];
    }

    v8 = [(_MTLHeap *)self newBufferWithLength:a3 options:[(_MTLHeap *)self resourceOptions] offset:a4];
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

- (id)newAccelerationStructureWithDescriptor:(id)a3 offset:(unint64_t)a4
{
  if (([(MTLDevice *)self->_device requiresRaytracingEmulation]& 1) != 0)
  {
    if ([(_MTLHeap *)self storageMode]!= 2)
    {
      [IOGPUMetalHeap newAccelerationStructureWithDescriptor:offset:];
    }

    v8 = [(MTLDevice *)self->_device heapAccelerationStructureSizeAndAlignWithDescriptor:a3];

    return [(IOGPUMetalHeap *)self newAccelerationStructureWithSize:v8 offset:a4];
  }

  else
  {
    [(IOGPUMetalHeap *)self doesNotRecognizeSelector:a2];
    return 0;
  }
}

- (id)newAccelerationStructureWithSize:(unint64_t)a3 resourceIndex:(unint64_t)a4
{
  if (([(MTLDevice *)self->_device requiresRaytracingEmulation]& 1) != 0)
  {
    if ([(_MTLHeap *)self storageMode]!= 2)
    {
      [IOGPUMetalHeap newAccelerationStructureWithSize:resourceIndex:];
    }

    v8 = [(IOGPUMetalHeap *)self newBufferWithLength:a3 options:[(_MTLHeap *)self resourceOptions]];
    if (v8)
    {
      v9 = v8;
      v10 = [(MTLDevice *)self->_device newAccelerationStructureWithBuffer:v8 offset:0 resourceIndex:a4];

      return v10;
    }
  }

  else
  {
    [(IOGPUMetalHeap *)self doesNotRecognizeSelector:a2];
  }

  return 0;
}

- (id)newAccelerationStructureWithSize:(unint64_t)a3 offset:(unint64_t)a4 resourceIndex:(unint64_t)a5
{
  if (([(MTLDevice *)self->_device requiresRaytracingEmulation]& 1) != 0)
  {
    if ([(_MTLHeap *)self storageMode]!= 2)
    {
      [IOGPUMetalHeap newAccelerationStructureWithSize:offset:resourceIndex:];
    }

    v10 = [(_MTLHeap *)self newBufferWithLength:a3 options:[(_MTLHeap *)self resourceOptions] offset:a4];
    if (v10)
    {
      v11 = v10;
      v12 = [(MTLDevice *)self->_device newAccelerationStructureWithBuffer:v10 offset:0 resourceIndex:a5];

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