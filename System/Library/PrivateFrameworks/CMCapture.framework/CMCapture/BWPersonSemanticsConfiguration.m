@interface BWPersonSemanticsConfiguration
+ (unsigned)personSemanticForAttachedMediaKey:(id)a3;
- (id)description;
@end

@implementation BWPersonSemanticsConfiguration

- (id)description
{
  v3.receiver = self;
  v3.super_class = BWPersonSemanticsConfiguration;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@ %p> enabledSemantics:%u appliesFinalCropRect:%d portraitOrientationSupportEnabled:%d", -[BWInferenceConfiguration description](&v3, sel_description), self, self->_enabledSemantics, self->_appliesFinalCropRect, self->_portraitOrientationSupportEnabled];
}

+ (unsigned)personSemanticForAttachedMediaKey:(id)a3
{
  if ([a3 isEqualToString:0x1F219E750])
  {
    return 1;
  }

  if ([a3 isEqualToString:0x1F219E770])
  {
    return 2;
  }

  if ([a3 isEqualToString:0x1F219E7B0])
  {
    return 8;
  }

  if ([a3 isEqualToString:0x1F219E7D0])
  {
    return 16;
  }

  if ([a3 isEqualToString:0x1F219E7F0])
  {
    return 32;
  }

  if ([a3 isEqualToString:0x1F219E810])
  {
    return 64;
  }

  if ([a3 isEqualToString:0x1F219E870])
  {
    return 1024;
  }

  if ([a3 isEqualToString:0x1F219E850])
  {
    return 256;
  }

  if ([a3 isEqualToString:0x1F219E830])
  {
    return 512;
  }

  if ([a3 isEqualToString:0x1F219E890])
  {
    return 2048;
  }

  if ([a3 isEqualToString:0x1F219E8B0])
  {
    return 4096;
  }

  if ([a3 hasPrefix:0x1F219E970])
  {
    return 128;
  }

  return 0;
}

@end