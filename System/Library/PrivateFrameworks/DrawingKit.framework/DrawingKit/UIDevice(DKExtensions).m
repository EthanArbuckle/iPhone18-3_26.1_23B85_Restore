@interface UIDevice(DKExtensions)
- (uint64_t)dk_deviceSupportsGL;
@end

@implementation UIDevice(DKExtensions)

- (uint64_t)dk_deviceSupportsGL
{
  if (dk_deviceSupportsGL_onceToken != -1)
  {
    [UIDevice(DKExtensions) dk_deviceSupportsGL];
  }

  return dk_deviceSupportsGL_useGL;
}

@end