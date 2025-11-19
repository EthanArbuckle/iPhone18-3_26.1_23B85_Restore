@interface MTLGPUDebugAccelerationStructure
- (MTLGPUDebugAccelerationStructure)initWithAccelerationStructure:(id)a3 device:(id)a4;
- (MTLGPUDebugAccelerationStructure)initWithAccelerationStructure:(id)a3 device:(id)a4 type:(unint64_t)a5;
- (MTLGPUDebugAccelerationStructure)initWithAccelerationStructure:(id)a3 heap:(id)a4;
- (void)_setupIdentifier;
- (void)dealloc;
@end

@implementation MTLGPUDebugAccelerationStructure

- (MTLGPUDebugAccelerationStructure)initWithAccelerationStructure:(id)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MTLGPUDebugAccelerationStructure;
  v4 = [(MTLToolsAccelerationStructure *)&v6 initWithBaseObject:a3 parent:a4];
  v4->_accelerationStructureType = 0;
  [(MTLGPUDebugAccelerationStructure *)v4 _setupIdentifier];
  return v4;
}

- (MTLGPUDebugAccelerationStructure)initWithAccelerationStructure:(id)a3 heap:(id)a4
{
  v6.receiver = self;
  v6.super_class = MTLGPUDebugAccelerationStructure;
  v4 = [(MTLToolsAccelerationStructure *)&v6 initWithBaseObject:a3 parent:a4 heap:a4];
  v4->_accelerationStructureType = 0;
  [(MTLGPUDebugAccelerationStructure *)v4 _setupIdentifier];
  return v4;
}

- (MTLGPUDebugAccelerationStructure)initWithAccelerationStructure:(id)a3 device:(id)a4 type:(unint64_t)a5
{
  v8.receiver = self;
  v8.super_class = MTLGPUDebugAccelerationStructure;
  v6 = [(MTLToolsAccelerationStructure *)&v8 initWithBaseObject:a3 parent:a4];
  v6->_accelerationStructureType = a5;
  [(MTLGPUDebugAccelerationStructure *)v6 _setupIdentifier];
  return v6;
}

- (void)_setupIdentifier
{
  v3 = [(MTLToolsDevice *)self->super.super.super._device newInternalBufferWithLength:32 options:0];
  self->_debugBuf = v3;
  v4 = [(MTLBuffer *)v3 contents];
  *v4 = [(MTLGPUDebugAccelerationStructure *)self gpuAddress];
  v5 = [(MTLToolsObject *)self->super.super.super._baseObject gpuResourceID];
  accelerationStructureType = self->_accelerationStructureType;
  v4[1] = v5;
  v4[2] = accelerationStructureType;
  v4[3] = 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLGPUDebugAccelerationStructure;
  [(MTLToolsAccelerationStructure *)&v3 dealloc];
}

@end