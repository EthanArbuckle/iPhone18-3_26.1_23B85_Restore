@interface BWMattingV2InferenceConfiguration
+ (unsigned)mattingOutputTypeForAttachedMediaKey:(id)a3;
- (void)dealloc;
@end

@implementation BWMattingV2InferenceConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWMattingV2InferenceConfiguration;
  [(BWInferenceConfiguration *)&v3 dealloc];
}

+ (unsigned)mattingOutputTypeForAttachedMediaKey:(id)a3
{
  if ([a3 isEqualToString:0x1F21AABD0])
  {
    return 1;
  }

  if ([a3 isEqualToString:0x1F21AABB0])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"PersonSemanticsHair"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"PersonSemanticsSkin"])
  {
    return 8;
  }

  if ([a3 isEqualToString:@"PersonSemanticsTeeth"])
  {
    return 16;
  }

  if ([a3 isEqualToString:@"PersonSemanticsGlasses"])
  {
    return 32;
  }

  if ([a3 isEqualToString:0x1F21AAD30])
  {
    return 64;
  }

  if ([a3 isEqualToString:0x1F21AAD70])
  {
    return 512;
  }

  if ([a3 isEqualToString:0x1F21AAD90])
  {
    return 1024;
  }

  if ([a3 isEqualToString:0x1F21AADB0])
  {
    return 4096;
  }

  if ([a3 isEqualToString:0x1F21AADD0])
  {
    return 0x2000;
  }

  if ([a3 isEqualToString:0x1F21AADF0])
  {
    return 128;
  }

  return 0;
}

@end