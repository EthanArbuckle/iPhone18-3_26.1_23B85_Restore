@interface CAMPreparePhotoSettingsCommand
- (CAMPreparePhotoSettingsCommand)initWithCoder:(id)coder;
- (CAMPreparePhotoSettingsCommand)initWithGraphConfiguration:(id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMPreparePhotoSettingsCommand

- (CAMPreparePhotoSettingsCommand)initWithGraphConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = CAMPreparePhotoSettingsCommand;
  v6 = [(CAMCaptureCommand *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__desiredGraphConfiguration, configuration);
    v8 = v7;
  }

  return v7;
}

- (CAMPreparePhotoSettingsCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CAMPreparePhotoSettingsCommand;
  v5 = [(CAMCaptureCommand *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"CAMPreparePhotoSettingsCommandDesiredConfiguration"];
    desiredGraphConfiguration = v5->__desiredGraphConfiguration;
    v5->__desiredGraphConfiguration = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CAMPreparePhotoSettingsCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CAMPreparePhotoSettingsCommand *)self _desiredGraphConfiguration:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"CAMPreparePhotoSettingsCommandDesiredConfiguration"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CAMPreparePhotoSettingsCommand;
  v4 = [(CAMCaptureCommand *)&v8 copyWithZone:zone];
  _desiredGraphConfiguration = [(CAMPreparePhotoSettingsCommand *)self _desiredGraphConfiguration];
  v6 = v4[3];
  v4[3] = _desiredGraphConfiguration;

  return v4;
}

- (void)executeWithContext:(id)context
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF70];
  contextCopy = context;
  v6 = objc_alloc_init(v4);
  currentStillImageOutput = [contextCopy currentStillImageOutput];

  _desiredGraphConfiguration = [(CAMPreparePhotoSettingsCommand *)self _desiredGraphConfiguration];
  v9 = +[CAMCaptureCapabilities capabilities];
  mode = [_desiredGraphConfiguration mode];
  device = [_desiredGraphConfiguration device];
  v12 = [v9 isHDRSupportedForMode:mode devicePosition:{objc_msgSend(_desiredGraphConfiguration, "devicePosition")}];
  photoEncodingBehavior = [_desiredGraphConfiguration photoEncodingBehavior];
  if (mode > 5)
  {
    if (mode == 6 || mode == 9)
    {
      goto LABEL_8;
    }
  }

  else if (!mode || mode == 4)
  {
    if ([v9 isBurstSupportedForMode:mode device:device])
    {
      burstQualityPhotoSettings = [MEMORY[0x1E6987100] burstQualityPhotoSettings];
      [burstQualityPhotoSettings setHDRMode:0];
      [burstQualityPhotoSettings setPhotoQualityPrioritization:1];
      [burstQualityPhotoSettings setHighResolutionPhotoEnabled:1];
      [v6 addObject:burstQualityPhotoSettings];
    }

LABEL_8:
    if (photoEncodingBehavior)
    {
      if (photoEncodingBehavior != 2)
      {
        if (photoEncodingBehavior == 1)
        {
          v15 = MEMORY[0x1E6987100];
          v20 = *MEMORY[0x1E6987CB0];
          v21[0] = *MEMORY[0x1E6987CF0];
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
          v17 = [v15 photoSettingsWithFormat:v16];
        }

        else
        {
          v17 = 0;
        }

        goto LABEL_16;
      }

      v18 = [CAMStillImageCaptureRequest rawPixelFormatTypeForPhotoOutput:currentStillImageOutput];
      photoSettings = [MEMORY[0x1E6987100] photoSettingsWithRawPixelFormatType:v18 rawFileType:*MEMORY[0x1E6987498] processedFormat:0 processedFileType:*MEMORY[0x1E6987498]];
    }

    else
    {
      photoSettings = [MEMORY[0x1E6987100] photoSettings];
    }

    v17 = photoSettings;
LABEL_16:
    [v17 setHDRMode:{+[CAMCaptureConversions captureHDRModeForHDRMode:](CAMCaptureConversions, "captureHDRModeForHDRMode:", v12)}];
    [v17 setHighResolutionPhotoEnabled:1];
    [v17 setPhotoQualityPrioritization:{+[CAMCaptureConversions AVCapturePhotoQualityPrioritizationForCAMPhotoQualityPrioritization:](CAMCaptureConversions, "AVCapturePhotoQualityPrioritizationForCAMPhotoQualityPrioritization:", objc_msgSend(_desiredGraphConfiguration, "photoQualityPrioritization"))}];
    [v6 addObject:v17];
  }

  [currentStillImageOutput setPreparedPhotoSettingsArray:v6 completionHandler:0];
}

@end