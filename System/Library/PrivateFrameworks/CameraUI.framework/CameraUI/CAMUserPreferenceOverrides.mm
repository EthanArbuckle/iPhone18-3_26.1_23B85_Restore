@interface CAMUserPreferenceOverrides
- (BOOL)hasOverrides;
- (CAMUserPreferenceOverrides)initWithConfigurationURL:(id)l;
- (CAMUserPreferenceOverrides)initWithLaunchOptions:(id)options;
- (CAMUserPreferenceOverrides)initWithOverrides:(id)overrides;
- (CAMUserPreferenceOverrides)initWithShortcutItem:(id)item;
@end

@implementation CAMUserPreferenceOverrides

- (CAMUserPreferenceOverrides)initWithOverrides:(id)overrides
{
  overridesCopy = overrides;
  v26.receiver = self;
  v26.super_class = CAMUserPreferenceOverrides;
  v5 = [(CAMUserPreferenceOverrides *)&v26 init];
  if (v5)
  {
    captureMode = [overridesCopy captureMode];
    captureMode = v5->_captureMode;
    v5->_captureMode = captureMode;

    captureDevice = [overridesCopy captureDevice];
    captureDevice = v5->_captureDevice;
    v5->_captureDevice = captureDevice;

    videoConfiguration = [overridesCopy videoConfiguration];
    videoConfiguration = v5->_videoConfiguration;
    v5->_videoConfiguration = videoConfiguration;

    slomoConfiguration = [overridesCopy slomoConfiguration];
    slomoConfiguration = v5->_slomoConfiguration;
    v5->_slomoConfiguration = slomoConfiguration;

    cinematicConfiguration = [overridesCopy cinematicConfiguration];
    cinematicConfiguration = v5->_cinematicConfiguration;
    v5->_cinematicConfiguration = cinematicConfiguration;

    wantsQRCodes = [overridesCopy wantsQRCodes];
    wantsQRCodes = v5->_wantsQRCodes;
    v5->_wantsQRCodes = wantsQRCodes;

    flashMode = [overridesCopy flashMode];
    flashMode = v5->_flashMode;
    v5->_flashMode = flashMode;

    torchMode = [overridesCopy torchMode];
    torchMode = v5->_torchMode;
    v5->_torchMode = torchMode;

    aspectRatioCrop = [overridesCopy aspectRatioCrop];
    aspectRatioCrop = v5->_aspectRatioCrop;
    v5->_aspectRatioCrop = aspectRatioCrop;

    v24 = v5;
  }

  return v5;
}

- (BOOL)hasOverrides
{
  captureMode = [(CAMUserPreferenceOverrides *)self captureMode];
  if (captureMode)
  {
    v4 = 1;
  }

  else
  {
    captureDevice = [(CAMUserPreferenceOverrides *)self captureDevice];
    if (captureDevice)
    {
      v4 = 1;
    }

    else
    {
      videoConfiguration = [(CAMUserPreferenceOverrides *)self videoConfiguration];
      if (videoConfiguration)
      {
        v4 = 1;
      }

      else
      {
        slomoConfiguration = [(CAMUserPreferenceOverrides *)self slomoConfiguration];
        if (slomoConfiguration)
        {
          v4 = 1;
        }

        else
        {
          cinematicConfiguration = [(CAMUserPreferenceOverrides *)self cinematicConfiguration];
          if (cinematicConfiguration)
          {
            v4 = 1;
          }

          else
          {
            wantsQRCodes = [(CAMUserPreferenceOverrides *)self wantsQRCodes];
            if (wantsQRCodes)
            {
              v4 = 1;
            }

            else
            {
              aspectRatioCrop = [(CAMUserPreferenceOverrides *)self aspectRatioCrop];
              if (aspectRatioCrop)
              {
                v4 = 1;
              }

              else
              {
                flashMode = [(CAMUserPreferenceOverrides *)self flashMode];
                if (flashMode)
                {
                  v4 = 1;
                }

                else
                {
                  torchMode = [(CAMUserPreferenceOverrides *)self torchMode];
                  v4 = torchMode != 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

- (CAMUserPreferenceOverrides)initWithLaunchOptions:(id)options
{
  optionsCopy = options;
  v5 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69DDB18]];
  if (v5)
  {
    v6 = [(CAMUserPreferenceOverrides *)self initWithShortcutItem:v5];
    self = v6;
  }

  else
  {
    v6 = 0;
  }

  v7 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69DDB28]];
  v8 = v7;
  if (!v6 && v7)
  {
    v6 = [(CAMUserPreferenceOverrides *)self initWithConfigurationURL:v7];
    self = v6;
  }

  return v6;
}

- (CAMUserPreferenceOverrides)initWithShortcutItem:(id)item
{
  itemCopy = item;
  v21.receiver = self;
  v21.super_class = CAMUserPreferenceOverrides;
  v5 = [(CAMUserPreferenceOverrides *)&v21 init];
  if (v5)
  {
    userInfo = [itemCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:@"CAMCaptureMode"];
    captureMode = v5->_captureMode;
    v5->_captureMode = v7;

    v9 = [userInfo objectForKeyedSubscript:@"CAMCaptureDevice"];
    captureDevice = v5->_captureDevice;
    v5->_captureDevice = v9;

    v11 = [userInfo objectForKeyedSubscript:@"CAMCaptureVideoConfiguration"];
    videoConfiguration = v5->_videoConfiguration;
    v5->_videoConfiguration = v11;

    v13 = [userInfo objectForKeyedSubscript:@"CAMCaptureSloMoConfiguration"];
    slomoConfiguration = v5->_slomoConfiguration;
    v5->_slomoConfiguration = v13;

    v15 = [userInfo objectForKeyedSubscript:@"CAMCaptureCinematicConfiguration"];
    cinematicConfiguration = v5->_cinematicConfiguration;
    v5->_cinematicConfiguration = v15;

    v17 = [userInfo objectForKeyedSubscript:@"wantsQRCodes"];
    wantsQRCodes = v5->_wantsQRCodes;
    v5->_wantsQRCodes = v17;

    if ([(CAMUserPreferenceOverrides *)v5 hasOverrides])
    {
      v19 = v5;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (CAMUserPreferenceOverrides)initWithConfigurationURL:(id)l
{
  lCopy = l;
  v16.receiver = self;
  v16.super_class = CAMUserPreferenceOverrides;
  v5 = [(CAMUserPreferenceOverrides *)&v16 init];
  if (v5 && [lCopy isConfigurationURL] && (objc_msgSend(lCopy, "configurationRequest"), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "requestedCaptureMode")}];
    captureMode = v5->_captureMode;
    v5->_captureMode = v8;

    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "requestedCaptureDevice")}];
    captureDevice = v5->_captureDevice;
    v5->_captureDevice = v10;

    v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "wantsQRCodeForSession")}];
    wantsQRCodes = v5->_wantsQRCodes;
    v5->_wantsQRCodes = v12;

    v14 = v5;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end