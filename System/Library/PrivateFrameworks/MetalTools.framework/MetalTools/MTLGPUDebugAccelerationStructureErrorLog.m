@interface MTLGPUDebugAccelerationStructureErrorLog
- (id)description;
- (void)dealloc;
@end

@implementation MTLGPUDebugAccelerationStructureErrorLog

- (id)description
{
  GPUDebugFunctionInfo::GPUDebugFunctionInfo(v5, [(MTLGPUDebugGPULog *)self function], [(MTLGPUDebugGPULog *)self functionType], [(MTLGPUDebugGPULog *)self functionName]);
  v3 = MTLAccelerationStructureStringFromType(self->_expectedAccelerationStructureType);
  return [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid Acceleration Structure type %@ bound to shader, expected %@, executing %@\n%@\n", MTLAccelerationStructureStringFromType(self->_actualAccelerationStructureType), v3, -[MTLGPUDebugGPULog functionDescription](self, "functionDescription"), -[MTLGPUDebugGPULog locationDescription](self, "locationDescription")];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLGPUDebugAccelerationStructureErrorLog;
  [(MTLGPUDebugGPULog *)&v2 dealloc];
}

@end