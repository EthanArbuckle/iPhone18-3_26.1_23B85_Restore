@interface MTLToolsHeap
- (BOOL)detachBacking;
- (NSString)label;
- (id)_newToolsAccelerationStructure:(id)structure;
- (id)_newToolsBuffer:(id)buffer;
- (id)_newToolsTexture:(id)texture;
- (id)formattedDescription:(unint64_t)description;
- (id)newAccelerationStructureWithDescriptor:(id)descriptor;
- (id)newAccelerationStructureWithDescriptor:(id)descriptor offset:(unint64_t)offset;
- (id)newAccelerationStructureWithSize:(unint64_t)size;
- (id)newAccelerationStructureWithSize:(unint64_t)size offset:(unint64_t)offset;
- (id)newAccelerationStructureWithSize:(unint64_t)size offset:(unint64_t)offset resourceIndex:(unint64_t)index;
- (id)newAccelerationStructureWithSize:(unint64_t)size resourceIndex:(unint64_t)index;
- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options;
- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options offset:(unint64_t)offset;
- (id)newTextureWithDescriptor:(id)descriptor;
- (id)newTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset;
- (int64_t)type;
- (unint64_t)allocatedSize;
- (unint64_t)cpuCacheMode;
- (unint64_t)currentAllocatedSize;
- (unint64_t)gpuAddress;
- (unint64_t)hazardTrackingMode;
- (unint64_t)maxAvailableSizeWithAlignment:(unint64_t)alignment;
- (unint64_t)memoryPoolId;
- (unint64_t)protectionOptions;
- (unint64_t)resourceOptions;
- (unint64_t)setPurgeableState:(unint64_t)state;
- (unint64_t)size;
- (unint64_t)storageMode;
- (unint64_t)unfilteredResourceOptions;
- (unint64_t)usedSize;
- (void)setLabel:(id)label;
@end

@implementation MTLToolsHeap

- (NSString)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject label];
}

- (void)setLabel:(id)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setLabel:label];
}

- (unint64_t)cpuCacheMode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject cpuCacheMode];
}

- (unint64_t)storageMode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject storageMode];
}

- (unint64_t)hazardTrackingMode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject hazardTrackingMode];
}

- (unint64_t)resourceOptions
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject resourceOptions];
}

- (unint64_t)unfilteredResourceOptions
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject unfilteredResourceOptions];
}

- (unint64_t)size
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject size];
}

- (id)formattedDescription:(unint64_t)description
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject formattedDescription:description];
}

- (unint64_t)usedSize
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject usedSize];
}

- (unint64_t)maxAvailableSizeWithAlignment:(unint64_t)alignment
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject maxAvailableSizeWithAlignment:alignment];
}

- (unint64_t)setPurgeableState:(unint64_t)state
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject setPurgeableState:state];
}

- (unint64_t)allocatedSize
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject allocatedSize];
}

- (unint64_t)currentAllocatedSize
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject currentAllocatedSize];
}

- (unint64_t)gpuAddress
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject gpuAddress];
}

- (int64_t)type
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject type];
}

- (unint64_t)protectionOptions
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject protectionOptions];
}

- (unint64_t)memoryPoolId
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject memoryPoolId];
}

- (id)_newToolsBuffer:(id)buffer
{
  if (!buffer)
  {
    return 0;
  }

  v4 = [(MTLToolsResource *)[MTLToolsBuffer alloc] initWithBaseObject:buffer parent:self heap:self];

  return v4;
}

- (id)_newToolsTexture:(id)texture
{
  if (!texture)
  {
    return 0;
  }

  v4 = [(MTLToolsResource *)[MTLToolsTexture alloc] initWithBaseObject:texture parent:self heap:self];

  return v4;
}

- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options
{
  v5 = [(MTLToolsObject *)self->super._baseObject newBufferWithLength:length options:options];

  return [(MTLToolsHeap *)self _newToolsBuffer:v5];
}

- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options offset:(unint64_t)offset
{
  v6 = [(MTLToolsObject *)self->super._baseObject newBufferWithLength:length options:options offset:offset];

  return [(MTLToolsHeap *)self _newToolsBuffer:v6];
}

- (id)newTextureWithDescriptor:(id)descriptor
{
  v4 = [(MTLToolsObject *)self->super._baseObject newTextureWithDescriptor:descriptor];

  return [(MTLToolsHeap *)self _newToolsTexture:v4];
}

- (id)newTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset
{
  v5 = [(MTLToolsObject *)self->super._baseObject newTextureWithDescriptor:descriptor offset:offset];

  return [(MTLToolsHeap *)self _newToolsTexture:v5];
}

- (id)_newToolsAccelerationStructure:(id)structure
{
  if (!structure)
  {
    return 0;
  }

  v4 = [[MTLToolsAccelerationStructure alloc] initWithBaseObject:structure parent:self heap:self];

  return v4;
}

- (id)newAccelerationStructureWithSize:(unint64_t)size
{
  v4 = [(MTLToolsObject *)self->super._baseObject newAccelerationStructureWithSize:size];

  return [(MTLToolsHeap *)self _newToolsAccelerationStructure:v4];
}

- (id)newAccelerationStructureWithDescriptor:(id)descriptor
{
  v4 = [(MTLToolsObject *)self->super._baseObject newAccelerationStructureWithDescriptor:unwrapAccelerationStructureDescriptor(descriptor)];

  return [(MTLToolsHeap *)self _newToolsAccelerationStructure:v4];
}

- (id)newAccelerationStructureWithSize:(unint64_t)size offset:(unint64_t)offset
{
  v5 = [(MTLToolsObject *)self->super._baseObject newAccelerationStructureWithSize:size offset:offset];

  return [(MTLToolsHeap *)self _newToolsAccelerationStructure:v5];
}

- (id)newAccelerationStructureWithDescriptor:(id)descriptor offset:(unint64_t)offset
{
  v5 = [(MTLToolsObject *)self->super._baseObject newAccelerationStructureWithDescriptor:unwrapAccelerationStructureDescriptor(descriptor) offset:offset];

  return [(MTLToolsHeap *)self _newToolsAccelerationStructure:v5];
}

- (id)newAccelerationStructureWithSize:(unint64_t)size resourceIndex:(unint64_t)index
{
  v5 = [(MTLToolsObject *)self->super._baseObject newAccelerationStructureWithSize:size resourceIndex:index];

  return [(MTLToolsHeap *)self _newToolsAccelerationStructure:v5];
}

- (id)newAccelerationStructureWithSize:(unint64_t)size offset:(unint64_t)offset resourceIndex:(unint64_t)index
{
  v6 = [(MTLToolsObject *)self->super._baseObject newAccelerationStructureWithSize:size offset:offset resourceIndex:index];

  return [(MTLToolsHeap *)self _newToolsAccelerationStructure:v6];
}

- (BOOL)detachBacking
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject detachBacking];
}

@end