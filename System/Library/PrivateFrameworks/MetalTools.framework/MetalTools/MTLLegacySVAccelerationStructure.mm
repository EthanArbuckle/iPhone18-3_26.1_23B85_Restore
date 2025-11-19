@interface MTLLegacySVAccelerationStructure
- (MTLLegacySVAccelerationStructure)initWithAccelerationStructure:(id)a3 device:(id)a4;
- (MTLLegacySVAccelerationStructure)initWithAccelerationStructure:(id)a3 device:(id)a4 type:(unint64_t)a5;
- (MTLLegacySVAccelerationStructure)initWithAccelerationStructure:(id)a3 heap:(id)a4;
- (void)_setupIdentifier;
- (void)dealloc;
- (void)useWithComputeEncoder:(id)a3 usage:(unint64_t)a4;
- (void)useWithRenderEncoder:(id)a3 usage:(unint64_t)a4 stages:(optional<unsigned long>)a5;
@end

@implementation MTLLegacySVAccelerationStructure

- (MTLLegacySVAccelerationStructure)initWithAccelerationStructure:(id)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MTLLegacySVAccelerationStructure;
  v4 = [(MTLToolsAccelerationStructure *)&v6 initWithBaseObject:a3 parent:a4];
  v4->_accelerationStructureType = 0;
  [(MTLLegacySVAccelerationStructure *)v4 _setupIdentifier];
  return v4;
}

- (MTLLegacySVAccelerationStructure)initWithAccelerationStructure:(id)a3 heap:(id)a4
{
  v6.receiver = self;
  v6.super_class = MTLLegacySVAccelerationStructure;
  v4 = [(MTLToolsAccelerationStructure *)&v6 initWithBaseObject:a3 parent:a4 heap:a4];
  v4->_accelerationStructureType = 0;
  [(MTLLegacySVAccelerationStructure *)v4 _setupIdentifier];
  return v4;
}

- (MTLLegacySVAccelerationStructure)initWithAccelerationStructure:(id)a3 device:(id)a4 type:(unint64_t)a5
{
  v8.receiver = self;
  v8.super_class = MTLLegacySVAccelerationStructure;
  v6 = [(MTLToolsAccelerationStructure *)&v8 initWithBaseObject:a3 parent:a4];
  v6->_accelerationStructureType = a5;
  [(MTLLegacySVAccelerationStructure *)v6 _setupIdentifier];
  return v6;
}

- (void)_setupIdentifier
{
  self->_accelerationStructureHandle = LegacySVBufferDescriptorHeap::createHandle(&self->super.super.super._device[2].functionObjectCache, self);
  v3 = [(MTLToolsObject *)self->super.super.super._baseObject buffer];
  v4 = [(MTLToolsObject *)self->super.super.super._baseObject bufferOffset];
  p_functionObjectCache = &self->super.super.super._device[2].functionObjectCache;
  accelerationStructureHandle = self->_accelerationStructureHandle;
  std::mutex::lock(p_functionObjectCache);
  [(MTLToolsObjectCache *)p_functionObjectCache[15] setArgumentBuffer:p_functionObjectCache[16] offset:[(MTLToolsObjectCache *)p_functionObjectCache[15] encodedLength]* accelerationStructureHandle];
  v7 = p_functionObjectCache[15];
  [(MTLToolsObjectCache *)v7 setBuffer:v3 offset:v4 atIndex:0];
  *[(MTLToolsObjectCache *)v7 constantDataAtIndex:1]= -1;
  std::mutex::unlock(p_functionObjectCache);
  v8 = [(MTLToolsDevice *)self->super.super.super._device newInternalBufferWithLength:32 options:0];
  self->_debugBuf = v8;
  v9 = [(MTLBuffer *)v8 contents];
  *v9 = MTLLegacySVBufferHandleToOffset(self->_accelerationStructureHandle);
  v10 = [(MTLToolsObject *)self->super.super.super._baseObject gpuResourceID];
  accelerationStructureType = self->_accelerationStructureType;
  v9[1] = v10;
  v9[2] = accelerationStructureType;
  v9[3] = 0;
}

- (void)useWithComputeEncoder:(id)a3 usage:(unint64_t)a4
{
  [a3 useResourceInternal:self->_debugBuf usage:1];
  if ((*(&self->super.super.super._device[2].dynamicLibraryObjectCache + 4) & 0x200000001) != 0)
  {
    v6 = [a3 commandBuffer];

    [v6 markAccelerationStructure:self usage:1 stages:3];
  }
}

- (void)useWithRenderEncoder:(id)a3 usage:(unint64_t)a4 stages:(optional<unsigned long>)a5
{
  var1 = a5.var1;
  v6 = a5.var0.var1;
  [a3 useResourceInternal:self->_debugBuf usage:1 stages:?];
  if ((*(&self->super.super.super._device[2].dynamicLibraryObjectCache + 4) & 0x200000001) != 0)
  {
    v9 = [a3 commandBuffer];
    if (var1)
    {
      v10 = v6;
    }

    else
    {
      v10 = 3;
    }

    [v9 markAccelerationStructure:self usage:1 stages:v10];
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