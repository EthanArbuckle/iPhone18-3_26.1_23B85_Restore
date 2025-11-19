@interface CAMEnableAvailableSemanticSegmentationMatteTypesCommand
- (CAMEnableAvailableSemanticSegmentationMatteTypesCommand)initWithEnabled:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMEnableAvailableSemanticSegmentationMatteTypesCommand

- (CAMEnableAvailableSemanticSegmentationMatteTypesCommand)initWithEnabled:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CAMEnableAvailableSemanticSegmentationMatteTypesCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = a3;
    v6 = v4;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = CAMEnableAvailableSemanticSegmentationMatteTypesCommand;
  return [(CAMCaptureCommand *)&v4 copyWithZone:a3];
}

- (void)executeWithContext:(id)a3
{
  v6 = [a3 currentStillImageOutput];
  v4 = [v6 availableSemanticSegmentationMatteTypes];
  if (![(CAMEnableAvailableSemanticSegmentationMatteTypesCommand *)self _enabled]|| (v5 = v4) == 0)
  {
    if (![v6 isPortraitEffectsMatteDeliverySupported])
    {
      goto LABEL_6;
    }

    v5 = MEMORY[0x1E695E0F0];
  }

  [v6 setEnabledSemanticSegmentationMatteTypes:v5];
LABEL_6:
}

@end