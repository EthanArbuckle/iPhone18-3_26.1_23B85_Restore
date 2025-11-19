@interface MTLLegacySVTextureErrorLog
- (id)description;
@end

@implementation MTLLegacySVTextureErrorLog

- (id)description
{
  errorReason = self->_errorReason;
  v4 = @"<unknown>";
  if (errorReason == 2)
  {
    v4 = @"Texture usage flags mismatch";
  }

  if (errorReason)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"Null texture access";
  }

  GPUDebugFunctionInfo::GPUDebugFunctionInfo(v7, [(MTLLegacySVGPULog *)self function]);
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@ executing %@\n", v5, -[MTLLegacySVGPULog locationDescription](self, "locationDescription")];
}

@end