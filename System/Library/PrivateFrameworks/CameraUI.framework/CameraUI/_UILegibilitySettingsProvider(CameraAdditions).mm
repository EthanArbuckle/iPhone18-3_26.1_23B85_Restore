@interface _UILegibilitySettingsProvider(CameraAdditions)
- (void)cam_primeForUseWithCameraOverlays;
@end

@implementation _UILegibilitySettingsProvider(CameraAdditions)

- (void)cam_primeForUseWithCameraOverlays
{
  v2 = [MEMORY[0x1E69DC888] colorWithWhite:0.7 alpha:1.0];
  [self clearContentColorAccumulator];
  [self accumulateChangesToContentColor:v2];
}

@end