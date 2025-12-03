@interface BMDeviceMetadata_v0
- (int)platform;
@end

@implementation BMDeviceMetadata_v0

- (int)platform
{
  v4.receiver = self;
  v4.super_class = BMDeviceMetadata_v0;
  platform = [(BMDeviceMetadata *)&v4 platform];
  if (platform > 8)
  {
    return 0;
  }

  else
  {
    return dword_185545F14[platform];
  }
}

@end