@interface CAMEnableAvailableSemanticSegmentationMatteTypesCommand
- (CAMEnableAvailableSemanticSegmentationMatteTypesCommand)initWithEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)executeWithContext:(id)context;
@end

@implementation CAMEnableAvailableSemanticSegmentationMatteTypesCommand

- (CAMEnableAvailableSemanticSegmentationMatteTypesCommand)initWithEnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = CAMEnableAvailableSemanticSegmentationMatteTypesCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = enabled;
    v6 = v4;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = CAMEnableAvailableSemanticSegmentationMatteTypesCommand;
  return [(CAMCaptureCommand *)&v4 copyWithZone:zone];
}

- (void)executeWithContext:(id)context
{
  currentStillImageOutput = [context currentStillImageOutput];
  availableSemanticSegmentationMatteTypes = [currentStillImageOutput availableSemanticSegmentationMatteTypes];
  if (![(CAMEnableAvailableSemanticSegmentationMatteTypesCommand *)self _enabled]|| (v5 = availableSemanticSegmentationMatteTypes) == 0)
  {
    if (![currentStillImageOutput isPortraitEffectsMatteDeliverySupported])
    {
      goto LABEL_6;
    }

    v5 = MEMORY[0x1E695E0F0];
  }

  [currentStillImageOutput setEnabledSemanticSegmentationMatteTypes:v5];
LABEL_6:
}

@end