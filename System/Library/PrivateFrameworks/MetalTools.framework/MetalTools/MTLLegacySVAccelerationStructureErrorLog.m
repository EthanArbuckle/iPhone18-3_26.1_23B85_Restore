@interface MTLLegacySVAccelerationStructureErrorLog
- (id)description;
- (void)dealloc;
@end

@implementation MTLLegacySVAccelerationStructureErrorLog

- (id)description
{
  GPUDebugFunctionInfo::GPUDebugFunctionInfo(v5, [(MTLLegacySVGPULog *)self function]);
  v3 = MTLLegacySVAccelerationStructureStringFromType(self->_expectedAccelerationStructureType);
  return [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid Acceleration Structure type %@ bound to shader, expected %@, executing %@\n", MTLLegacySVAccelerationStructureStringFromType(self->_actualAccelerationStructureType), v3, -[MTLLegacySVGPULog locationDescription](self, "locationDescription")];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLLegacySVAccelerationStructureErrorLog;
  [(MTLLegacySVGPULog *)&v3 dealloc];
}

@end