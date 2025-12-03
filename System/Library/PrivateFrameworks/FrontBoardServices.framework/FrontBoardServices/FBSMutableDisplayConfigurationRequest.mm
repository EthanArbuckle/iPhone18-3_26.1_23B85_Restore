@interface FBSMutableDisplayConfigurationRequest
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation FBSMutableDisplayConfigurationRequest

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[FBSDisplayConfigurationRequest allocWithZone:?]];
  *(result + 7) = self->super._overscanCompensation;
  *(result + 8) = self->super._nativePixelSize;
  *(result + 5) = *&self->super._pointScale;
  *(result + 6) = *&self->super._refreshRate;
  *(result + 72) = self->super._disableFrameDoubling;
  *(result + 8) = self->super._hdrMode;
  *(result + 24) = self->super._logicalScale;
  return result;
}

@end