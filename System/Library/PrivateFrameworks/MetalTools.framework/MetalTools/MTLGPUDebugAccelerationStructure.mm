@interface MTLGPUDebugAccelerationStructure
- (MTLGPUDebugAccelerationStructure)initWithAccelerationStructure:(id)structure device:(id)device;
- (MTLGPUDebugAccelerationStructure)initWithAccelerationStructure:(id)structure device:(id)device type:(unint64_t)type;
- (MTLGPUDebugAccelerationStructure)initWithAccelerationStructure:(id)structure heap:(id)heap;
- (void)_setupIdentifier;
- (void)dealloc;
@end

@implementation MTLGPUDebugAccelerationStructure

- (MTLGPUDebugAccelerationStructure)initWithAccelerationStructure:(id)structure device:(id)device
{
  v6.receiver = self;
  v6.super_class = MTLGPUDebugAccelerationStructure;
  v4 = [(MTLToolsAccelerationStructure *)&v6 initWithBaseObject:structure parent:device];
  v4->_accelerationStructureType = 0;
  [(MTLGPUDebugAccelerationStructure *)v4 _setupIdentifier];
  return v4;
}

- (MTLGPUDebugAccelerationStructure)initWithAccelerationStructure:(id)structure heap:(id)heap
{
  v6.receiver = self;
  v6.super_class = MTLGPUDebugAccelerationStructure;
  v4 = [(MTLToolsAccelerationStructure *)&v6 initWithBaseObject:structure parent:heap heap:heap];
  v4->_accelerationStructureType = 0;
  [(MTLGPUDebugAccelerationStructure *)v4 _setupIdentifier];
  return v4;
}

- (MTLGPUDebugAccelerationStructure)initWithAccelerationStructure:(id)structure device:(id)device type:(unint64_t)type
{
  v8.receiver = self;
  v8.super_class = MTLGPUDebugAccelerationStructure;
  v6 = [(MTLToolsAccelerationStructure *)&v8 initWithBaseObject:structure parent:device];
  v6->_accelerationStructureType = type;
  [(MTLGPUDebugAccelerationStructure *)v6 _setupIdentifier];
  return v6;
}

- (void)_setupIdentifier
{
  v3 = [(MTLToolsDevice *)self->super.super.super._device newInternalBufferWithLength:32 options:0];
  self->_debugBuf = v3;
  contents = [(MTLBuffer *)v3 contents];
  *contents = [(MTLGPUDebugAccelerationStructure *)self gpuAddress];
  gpuResourceID = [(MTLToolsObject *)self->super.super.super._baseObject gpuResourceID];
  accelerationStructureType = self->_accelerationStructureType;
  contents[1] = gpuResourceID;
  contents[2] = accelerationStructureType;
  contents[3] = 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLGPUDebugAccelerationStructure;
  [(MTLToolsAccelerationStructure *)&v3 dealloc];
}

@end