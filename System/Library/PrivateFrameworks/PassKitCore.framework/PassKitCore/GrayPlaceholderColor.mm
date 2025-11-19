@interface GrayPlaceholderColor
@end

@implementation GrayPlaceholderColor

void ___GrayPlaceholderColor_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v1 = xmmword_1ADB9AF40;
  qword_1ED6D2060 = CGColorCreate(DeviceGray, &v1);
  CGColorSpaceRelease(DeviceGray);
}

@end