@interface CAMDemosaicedRAWEnabledCommand
- (CAMDemosaicedRAWEnabledCommand)initWithCoder:(id)coder;
- (CAMDemosaicedRAWEnabledCommand)initWithEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMDemosaicedRAWEnabledCommand

- (CAMDemosaicedRAWEnabledCommand)initWithEnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = CAMDemosaicedRAWEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = enabled;
    v6 = v4;
  }

  return v5;
}

- (CAMDemosaicedRAWEnabledCommand)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"CAMDemosaicedRAWEnabledKey"];

  return [(CAMDemosaicedRAWEnabledCommand *)self initWithEnabled:v4];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMDemosaicedRAWEnabledCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMDemosaicedRAWEnabledCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMDemosaicedRAWEnabledKey"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMDemosaicedRAWEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMDemosaicedRAWEnabledCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  currentStillImageOutput = [context currentStillImageOutput];
  if ([currentStillImageOutput isAppleProRAWSupported])
  {
    [currentStillImageOutput setAppleProRAWEnabled:{-[CAMDemosaicedRAWEnabledCommand _isEnabled](self, "_isEnabled")}];
  }
}

@end