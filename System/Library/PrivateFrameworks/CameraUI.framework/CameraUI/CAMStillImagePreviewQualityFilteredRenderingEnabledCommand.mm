@interface CAMStillImagePreviewQualityFilteredRenderingEnabledCommand
- (CAMStillImagePreviewQualityFilteredRenderingEnabledCommand)initWithCoder:(id)coder;
- (CAMStillImagePreviewQualityFilteredRenderingEnabledCommand)initWithPreviewQualityFilteredRenderingEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMStillImagePreviewQualityFilteredRenderingEnabledCommand

- (CAMStillImagePreviewQualityFilteredRenderingEnabledCommand)initWithPreviewQualityFilteredRenderingEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = CAMStillImagePreviewQualityFilteredRenderingEnabledCommand;
  result = [(CAMCaptureCommand *)&v5 initWithSubcommands:0];
  if (result)
  {
    result->__enabled = enabled;
  }

  return result;
}

- (CAMStillImagePreviewQualityFilteredRenderingEnabledCommand)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"CAMStillImagePreviewQualityFilteredRenderingEnabledKey"];

  return [(CAMStillImagePreviewQualityFilteredRenderingEnabledCommand *)self initWithPreviewQualityFilteredRenderingEnabled:v4];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMStillImagePreviewQualityFilteredRenderingEnabledCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMStillImagePreviewQualityFilteredRenderingEnabledCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMStillImagePreviewQualityFilteredRenderingEnabledKey"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMStillImagePreviewQualityFilteredRenderingEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMStillImagePreviewQualityFilteredRenderingEnabledCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  currentStillImageOutput = [context currentStillImageOutput];
  if ([currentStillImageOutput isPreviewQualityAdjustedPhotoFilterRenderingSupported])
  {
    [currentStillImageOutput setPreviewQualityAdjustedPhotoFilterRenderingEnabled:{-[CAMStillImagePreviewQualityFilteredRenderingEnabledCommand _isEnabled](self, "_isEnabled")}];
  }
}

@end