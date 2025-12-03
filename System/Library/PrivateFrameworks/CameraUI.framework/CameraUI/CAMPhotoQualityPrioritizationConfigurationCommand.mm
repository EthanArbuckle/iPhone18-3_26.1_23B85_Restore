@interface CAMPhotoQualityPrioritizationConfigurationCommand
- (CAMPhotoQualityPrioritizationConfigurationCommand)initWithCoder:(id)coder;
- (CAMPhotoQualityPrioritizationConfigurationCommand)initWithPhotoQualityPrioritization:(int64_t)prioritization;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMPhotoQualityPrioritizationConfigurationCommand

- (CAMPhotoQualityPrioritizationConfigurationCommand)initWithPhotoQualityPrioritization:(int64_t)prioritization
{
  v8.receiver = self;
  v8.super_class = CAMPhotoQualityPrioritizationConfigurationCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__photoQualityPrioritization = prioritization;
    v6 = v4;
  }

  return v5;
}

- (CAMPhotoQualityPrioritizationConfigurationCommand)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"CAMPhotoQualityPrioritizationConfigurationKey"];

  return [(CAMPhotoQualityPrioritizationConfigurationCommand *)self initWithPhotoQualityPrioritization:v4];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMPhotoQualityPrioritizationConfigurationCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[CAMPhotoQualityPrioritizationConfigurationCommand _photoQualityPrioritization](self forKey:{"_photoQualityPrioritization", v5.receiver, v5.super_class), @"CAMPhotoQualityPrioritizationConfigurationKey"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMPhotoQualityPrioritizationConfigurationCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[3] = [(CAMPhotoQualityPrioritizationConfigurationCommand *)self _photoQualityPrioritization];
  return v4;
}

- (void)executeWithContext:(id)context
{
  currentStillImageOutput = [context currentStillImageOutput];
  [currentStillImageOutput setMaxPhotoQualityPrioritization:{+[CAMCaptureConversions AVCapturePhotoQualityPrioritizationForCAMPhotoQualityPrioritization:](CAMCaptureConversions, "AVCapturePhotoQualityPrioritizationForCAMPhotoQualityPrioritization:", -[CAMPhotoQualityPrioritizationConfigurationCommand _photoQualityPrioritization](self, "_photoQualityPrioritization"))}];
}

@end