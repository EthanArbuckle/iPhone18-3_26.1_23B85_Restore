@interface MTLLegacySVAccelerationStructure
- (MTLLegacySVAccelerationStructure)initWithAccelerationStructure:(id)structure device:(id)device;
- (MTLLegacySVAccelerationStructure)initWithAccelerationStructure:(id)structure device:(id)device type:(unint64_t)type;
- (MTLLegacySVAccelerationStructure)initWithAccelerationStructure:(id)structure heap:(id)heap;
- (void)_setupIdentifier;
- (void)dealloc;
- (void)useWithComputeEncoder:(id)encoder usage:(unint64_t)usage;
- (void)useWithRenderEncoder:(id)encoder usage:(unint64_t)usage stages:(optional<unsigned long>)stages;
@end

@implementation MTLLegacySVAccelerationStructure

- (MTLLegacySVAccelerationStructure)initWithAccelerationStructure:(id)structure device:(id)device
{
  v6.receiver = self;
  v6.super_class = MTLLegacySVAccelerationStructure;
  v4 = [(MTLToolsAccelerationStructure *)&v6 initWithBaseObject:structure parent:device];
  v4->_accelerationStructureType = 0;
  [(MTLLegacySVAccelerationStructure *)v4 _setupIdentifier];
  return v4;
}

- (MTLLegacySVAccelerationStructure)initWithAccelerationStructure:(id)structure heap:(id)heap
{
  v6.receiver = self;
  v6.super_class = MTLLegacySVAccelerationStructure;
  v4 = [(MTLToolsAccelerationStructure *)&v6 initWithBaseObject:structure parent:heap heap:heap];
  v4->_accelerationStructureType = 0;
  [(MTLLegacySVAccelerationStructure *)v4 _setupIdentifier];
  return v4;
}

- (MTLLegacySVAccelerationStructure)initWithAccelerationStructure:(id)structure device:(id)device type:(unint64_t)type
{
  v8.receiver = self;
  v8.super_class = MTLLegacySVAccelerationStructure;
  v6 = [(MTLToolsAccelerationStructure *)&v8 initWithBaseObject:structure parent:device];
  v6->_accelerationStructureType = type;
  [(MTLLegacySVAccelerationStructure *)v6 _setupIdentifier];
  return v6;
}

- (void)_setupIdentifier
{
  self->_accelerationStructureHandle = LegacySVBufferDescriptorHeap::createHandle(&self->super.super.super._device[2].functionObjectCache, self);
  buffer = [(MTLToolsObject *)self->super.super.super._baseObject buffer];
  bufferOffset = [(MTLToolsObject *)self->super.super.super._baseObject bufferOffset];
  p_functionObjectCache = &self->super.super.super._device[2].functionObjectCache;
  accelerationStructureHandle = self->_accelerationStructureHandle;
  std::mutex::lock(p_functionObjectCache);
  [(MTLToolsObjectCache *)p_functionObjectCache[15] setArgumentBuffer:p_functionObjectCache[16] offset:[(MTLToolsObjectCache *)p_functionObjectCache[15] encodedLength]* accelerationStructureHandle];
  v7 = p_functionObjectCache[15];
  [(MTLToolsObjectCache *)v7 setBuffer:buffer offset:bufferOffset atIndex:0];
  *[(MTLToolsObjectCache *)v7 constantDataAtIndex:1]= -1;
  std::mutex::unlock(p_functionObjectCache);
  v8 = [(MTLToolsDevice *)self->super.super.super._device newInternalBufferWithLength:32 options:0];
  self->_debugBuf = v8;
  contents = [(MTLBuffer *)v8 contents];
  *contents = MTLLegacySVBufferHandleToOffset(self->_accelerationStructureHandle);
  gpuResourceID = [(MTLToolsObject *)self->super.super.super._baseObject gpuResourceID];
  accelerationStructureType = self->_accelerationStructureType;
  contents[1] = gpuResourceID;
  contents[2] = accelerationStructureType;
  contents[3] = 0;
}

- (void)useWithComputeEncoder:(id)encoder usage:(unint64_t)usage
{
  [encoder useResourceInternal:self->_debugBuf usage:1];
  if ((*(&self->super.super.super._device[2].dynamicLibraryObjectCache + 4) & 0x200000001) != 0)
  {
    commandBuffer = [encoder commandBuffer];

    [commandBuffer markAccelerationStructure:self usage:1 stages:3];
  }
}

- (void)useWithRenderEncoder:(id)encoder usage:(unint64_t)usage stages:(optional<unsigned long>)stages
{
  var1 = stages.var1;
  v6 = stages.var0.var1;
  [encoder useResourceInternal:self->_debugBuf usage:1 stages:?];
  if ((*(&self->super.super.super._device[2].dynamicLibraryObjectCache + 4) & 0x200000001) != 0)
  {
    commandBuffer = [encoder commandBuffer];
    if (var1)
    {
      v10 = v6;
    }

    else
    {
      v10 = 3;
    }

    [commandBuffer markAccelerationStructure:self usage:1 stages:v10];
  }
}

- (void)dealloc
{
  LegacySVBufferDescriptorHeap::freeBufferHandle(&self->super.super.super._device[2].functionObjectCache, self->_accelerationStructureHandle);

  v3.receiver = self;
  v3.super_class = MTLLegacySVAccelerationStructure;
  [(MTLToolsAccelerationStructure *)&v3 dealloc];
}

@end