@interface MTLToolsHeap
- (BOOL)detachBacking;
- (NSString)label;
- (id)_newToolsAccelerationStructure:(id)a3;
- (id)_newToolsBuffer:(id)a3;
- (id)_newToolsTexture:(id)a3;
- (id)formattedDescription:(unint64_t)a3;
- (id)newAccelerationStructureWithDescriptor:(id)a3;
- (id)newAccelerationStructureWithDescriptor:(id)a3 offset:(unint64_t)a4;
- (id)newAccelerationStructureWithSize:(unint64_t)a3;
- (id)newAccelerationStructureWithSize:(unint64_t)a3 offset:(unint64_t)a4;
- (id)newAccelerationStructureWithSize:(unint64_t)a3 offset:(unint64_t)a4 resourceIndex:(unint64_t)a5;
- (id)newAccelerationStructureWithSize:(unint64_t)a3 resourceIndex:(unint64_t)a4;
- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4;
- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4 offset:(unint64_t)a5;
- (id)newTextureWithDescriptor:(id)a3;
- (id)newTextureWithDescriptor:(id)a3 offset:(unint64_t)a4;
- (int64_t)type;
- (unint64_t)allocatedSize;
- (unint64_t)cpuCacheMode;
- (unint64_t)currentAllocatedSize;
- (unint64_t)gpuAddress;
- (unint64_t)hazardTrackingMode;
- (unint64_t)maxAvailableSizeWithAlignment:(unint64_t)a3;
- (unint64_t)memoryPoolId;
- (unint64_t)protectionOptions;
- (unint64_t)resourceOptions;
- (unint64_t)setPurgeableState:(unint64_t)a3;
- (unint64_t)size;
- (unint64_t)storageMode;
- (unint64_t)unfilteredResourceOptions;
- (unint64_t)usedSize;
- (void)setLabel:(id)a3;
@end

@implementation MTLToolsHeap

- (NSString)label
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 label];
}

- (void)setLabel:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setLabel:a3];
}

- (unint64_t)cpuCacheMode
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 cpuCacheMode];
}

- (unint64_t)storageMode
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 storageMode];
}

- (unint64_t)hazardTrackingMode
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 hazardTrackingMode];
}

- (unint64_t)resourceOptions
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 resourceOptions];
}

- (unint64_t)unfilteredResourceOptions
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 unfilteredResourceOptions];
}

- (unint64_t)size
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 size];
}

- (id)formattedDescription:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 formattedDescription:a3];
}

- (unint64_t)usedSize
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 usedSize];
}

- (unint64_t)maxAvailableSizeWithAlignment:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 maxAvailableSizeWithAlignment:a3];
}

- (unint64_t)setPurgeableState:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 setPurgeableState:a3];
}

- (unint64_t)allocatedSize
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 allocatedSize];
}

- (unint64_t)currentAllocatedSize
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 currentAllocatedSize];
}

- (unint64_t)gpuAddress
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 gpuAddress];
}

- (int64_t)type
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 type];
}

- (unint64_t)protectionOptions
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 protectionOptions];
}

- (unint64_t)memoryPoolId
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 memoryPoolId];
}

- (id)_newToolsBuffer:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [(MTLToolsResource *)[MTLToolsBuffer alloc] initWithBaseObject:a3 parent:self heap:self];

  return v4;
}

- (id)_newToolsTexture:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [(MTLToolsResource *)[MTLToolsTexture alloc] initWithBaseObject:a3 parent:self heap:self];

  return v4;
}

- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4
{
  v5 = [(MTLToolsObject *)self->super._baseObject newBufferWithLength:a3 options:a4];

  return [(MTLToolsHeap *)self _newToolsBuffer:v5];
}

- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4 offset:(unint64_t)a5
{
  v6 = [(MTLToolsObject *)self->super._baseObject newBufferWithLength:a3 options:a4 offset:a5];

  return [(MTLToolsHeap *)self _newToolsBuffer:v6];
}

- (id)newTextureWithDescriptor:(id)a3
{
  v4 = [(MTLToolsObject *)self->super._baseObject newTextureWithDescriptor:a3];

  return [(MTLToolsHeap *)self _newToolsTexture:v4];
}

- (id)newTextureWithDescriptor:(id)a3 offset:(unint64_t)a4
{
  v5 = [(MTLToolsObject *)self->super._baseObject newTextureWithDescriptor:a3 offset:a4];

  return [(MTLToolsHeap *)self _newToolsTexture:v5];
}

- (id)_newToolsAccelerationStructure:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [[MTLToolsAccelerationStructure alloc] initWithBaseObject:a3 parent:self heap:self];

  return v4;
}

- (id)newAccelerationStructureWithSize:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self->super._baseObject newAccelerationStructureWithSize:a3];

  return [(MTLToolsHeap *)self _newToolsAccelerationStructure:v4];
}

- (id)newAccelerationStructureWithDescriptor:(id)a3
{
  v4 = [(MTLToolsObject *)self->super._baseObject newAccelerationStructureWithDescriptor:unwrapAccelerationStructureDescriptor(a3)];

  return [(MTLToolsHeap *)self _newToolsAccelerationStructure:v4];
}

- (id)newAccelerationStructureWithSize:(unint64_t)a3 offset:(unint64_t)a4
{
  v5 = [(MTLToolsObject *)self->super._baseObject newAccelerationStructureWithSize:a3 offset:a4];

  return [(MTLToolsHeap *)self _newToolsAccelerationStructure:v5];
}

- (id)newAccelerationStructureWithDescriptor:(id)a3 offset:(unint64_t)a4
{
  v5 = [(MTLToolsObject *)self->super._baseObject newAccelerationStructureWithDescriptor:unwrapAccelerationStructureDescriptor(a3) offset:a4];

  return [(MTLToolsHeap *)self _newToolsAccelerationStructure:v5];
}

- (id)newAccelerationStructureWithSize:(unint64_t)a3 resourceIndex:(unint64_t)a4
{
  v5 = [(MTLToolsObject *)self->super._baseObject newAccelerationStructureWithSize:a3 resourceIndex:a4];

  return [(MTLToolsHeap *)self _newToolsAccelerationStructure:v5];
}

- (id)newAccelerationStructureWithSize:(unint64_t)a3 offset:(unint64_t)a4 resourceIndex:(unint64_t)a5
{
  v6 = [(MTLToolsObject *)self->super._baseObject newAccelerationStructureWithSize:a3 offset:a4 resourceIndex:a5];

  return [(MTLToolsHeap *)self _newToolsAccelerationStructure:v6];
}

- (BOOL)detachBacking
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 detachBacking];
}

@end