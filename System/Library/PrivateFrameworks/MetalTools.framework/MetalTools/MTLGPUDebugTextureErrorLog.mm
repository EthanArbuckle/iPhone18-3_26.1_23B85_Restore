@interface MTLGPUDebugTextureErrorLog
- (id)description;
@end

@implementation MTLGPUDebugTextureErrorLog

- (id)description
{
  errorReason = self->_errorReason;
  if (errorReason)
  {
    if (errorReason == 3)
    {
      v5 = MTLTextureStringFromType(self->_expectedTextureType);
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid texture type %@ bound to shader, expected %@, ", MTLTextureStringFromType(self->_actualTextureType), v5];
    }

    else if (errorReason == 2)
    {
      v4 = @"MTLResourceUsage flags mismatch or missing for texture";
    }

    else
    {
      v4 = @"<unknown>";
    }
  }

  else
  {
    v4 = @"Null texture access";
  }

  GPUDebugFunctionInfo::GPUDebugFunctionInfo(v7, [(MTLGPUDebugGPULog *)self function], [(MTLGPUDebugGPULog *)self functionType], [(MTLGPUDebugGPULog *)self functionName]);
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@ executing %@\n%@\n", v4, -[MTLGPUDebugGPULog functionDescription](self, "functionDescription"), -[MTLGPUDebugGPULog locationDescription](self, "locationDescription")];
}

@end