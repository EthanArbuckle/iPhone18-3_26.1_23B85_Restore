@interface CAMPreparePhotoSettingsCommand
- (CAMPreparePhotoSettingsCommand)initWithCoder:(id)a3;
- (CAMPreparePhotoSettingsCommand)initWithGraphConfiguration:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMPreparePhotoSettingsCommand

- (CAMPreparePhotoSettingsCommand)initWithGraphConfiguration:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CAMPreparePhotoSettingsCommand;
  v6 = [(CAMCaptureCommand *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__desiredGraphConfiguration, a3);
    v8 = v7;
  }

  return v7;
}

- (CAMPreparePhotoSettingsCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CAMPreparePhotoSettingsCommand;
  v5 = [(CAMCaptureCommand *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"CAMPreparePhotoSettingsCommandDesiredConfiguration"];
    desiredGraphConfiguration = v5->__desiredGraphConfiguration;
    v5->__desiredGraphConfiguration = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CAMPreparePhotoSettingsCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v6 encodeWithCoder:v4];
  v5 = [(CAMPreparePhotoSettingsCommand *)self _desiredGraphConfiguration:v6.receiver];
  [v4 encodeObject:v5 forKey:@"CAMPreparePhotoSettingsCommandDesiredConfiguration"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = CAMPreparePhotoSettingsCommand;
  v4 = [(CAMCaptureCommand *)&v8 copyWithZone:a3];
  v5 = [(CAMPreparePhotoSettingsCommand *)self _desiredGraphConfiguration];
  v6 = v4[3];
  v4[3] = v5;

  return v4;
}

- (void)executeWithContext:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v5 currentStillImageOutput];

  v8 = [(CAMPreparePhotoSettingsCommand *)self _desiredGraphConfiguration];
  v9 = +[CAMCaptureCapabilities capabilities];
  v10 = [v8 mode];
  v11 = [v8 device];
  v12 = [v9 isHDRSupportedForMode:v10 devicePosition:{objc_msgSend(v8, "devicePosition")}];
  v13 = [v8 photoEncodingBehavior];
  if (v10 > 5)
  {
    if (v10 == 6 || v10 == 9)
    {
      goto LABEL_8;
    }
  }

  else if (!v10 || v10 == 4)
  {
    if ([v9 isBurstSupportedForMode:v10 device:v11])
    {
      v14 = [MEMORY[0x1E6987100] burstQualityPhotoSettings];
      [v14 setHDRMode:0];
      [v14 setPhotoQualityPrioritization:1];
      [v14 setHighResolutionPhotoEnabled:1];
      [v6 addObject:v14];
    }

LABEL_8:
    if (v13)
    {
      if (v13 != 2)
      {
        if (v13 == 1)
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

      v18 = [CAMStillImageCaptureRequest rawPixelFormatTypeForPhotoOutput:v7];
      v19 = [MEMORY[0x1E6987100] photoSettingsWithRawPixelFormatType:v18 rawFileType:*MEMORY[0x1E6987498] processedFormat:0 processedFileType:*MEMORY[0x1E6987498]];
    }

    else
    {
      v19 = [MEMORY[0x1E6987100] photoSettings];
    }

    v17 = v19;
LABEL_16:
    [v17 setHDRMode:{+[CAMCaptureConversions captureHDRModeForHDRMode:](CAMCaptureConversions, "captureHDRModeForHDRMode:", v12)}];
    [v17 setHighResolutionPhotoEnabled:1];
    [v17 setPhotoQualityPrioritization:{+[CAMCaptureConversions AVCapturePhotoQualityPrioritizationForCAMPhotoQualityPrioritization:](CAMCaptureConversions, "AVCapturePhotoQualityPrioritizationForCAMPhotoQualityPrioritization:", objc_msgSend(v8, "photoQualityPrioritization"))}];
    [v6 addObject:v17];
  }

  [v7 setPreparedPhotoSettingsArray:v6 completionHandler:0];
}

@end