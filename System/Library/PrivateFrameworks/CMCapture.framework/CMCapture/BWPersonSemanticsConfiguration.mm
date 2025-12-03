@interface BWPersonSemanticsConfiguration
+ (unsigned)personSemanticForAttachedMediaKey:(id)key;
- (id)description;
@end

@implementation BWPersonSemanticsConfiguration

- (id)description
{
  v3.receiver = self;
  v3.super_class = BWPersonSemanticsConfiguration;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@ %p> enabledSemantics:%u appliesFinalCropRect:%d portraitOrientationSupportEnabled:%d", -[BWInferenceConfiguration description](&v3, sel_description), self, self->_enabledSemantics, self->_appliesFinalCropRect, self->_portraitOrientationSupportEnabled];
}

+ (unsigned)personSemanticForAttachedMediaKey:(id)key
{
  if ([key isEqualToString:0x1F219E750])
  {
    return 1;
  }

  if ([key isEqualToString:0x1F219E770])
  {
    return 2;
  }

  if ([key isEqualToString:0x1F219E7B0])
  {
    return 8;
  }

  if ([key isEqualToString:0x1F219E7D0])
  {
    return 16;
  }

  if ([key isEqualToString:0x1F219E7F0])
  {
    return 32;
  }

  if ([key isEqualToString:0x1F219E810])
  {
    return 64;
  }

  if ([key isEqualToString:0x1F219E870])
  {
    return 1024;
  }

  if ([key isEqualToString:0x1F219E850])
  {
    return 256;
  }

  if ([key isEqualToString:0x1F219E830])
  {
    return 512;
  }

  if ([key isEqualToString:0x1F219E890])
  {
    return 2048;
  }

  if ([key isEqualToString:0x1F219E8B0])
  {
    return 4096;
  }

  if ([key hasPrefix:0x1F219E970])
  {
    return 128;
  }

  return 0;
}

@end