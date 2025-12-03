@interface CAMSpatialOverCaptureEnabledCommand
- (CAMSpatialOverCaptureEnabledCommand)initWithCoder:(id)coder;
- (CAMSpatialOverCaptureEnabledCommand)initWithSpatialOverCaptureEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMSpatialOverCaptureEnabledCommand

- (CAMSpatialOverCaptureEnabledCommand)initWithSpatialOverCaptureEnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = CAMSpatialOverCaptureEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = enabled;
    v6 = v4;
  }

  return v5;
}

- (CAMSpatialOverCaptureEnabledCommand)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"CAMSpatialOverCaptureEnabledKey"];

  return [(CAMSpatialOverCaptureEnabledCommand *)self initWithSpatialOverCaptureEnabled:v4];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMSpatialOverCaptureEnabledCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMSpatialOverCaptureEnabledCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMSpatialOverCaptureEnabledKey"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMSpatialOverCaptureEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMSpatialOverCaptureEnabledCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  currentVideoDevice = [contextCopy currentVideoDevice];
  currentVideoDeviceFormat = [contextCopy currentVideoDeviceFormat];
  currentStillImageOutput = [contextCopy currentStillImageOutput];

  if ([currentVideoDeviceFormat isSpatialOverCaptureSupported])
  {
    [currentVideoDevice setSpatialOverCaptureEnabled:{-[CAMSpatialOverCaptureEnabledCommand _isEnabled](self, "_isEnabled")}];
  }

  [currentStillImageOutput setSpatialOverCaptureEnabled:0];
}

@end