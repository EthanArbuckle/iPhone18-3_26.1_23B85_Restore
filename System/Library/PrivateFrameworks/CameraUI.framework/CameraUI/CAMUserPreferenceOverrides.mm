@interface CAMUserPreferenceOverrides
- (BOOL)hasOverrides;
- (CAMUserPreferenceOverrides)initWithConfigurationURL:(id)a3;
- (CAMUserPreferenceOverrides)initWithLaunchOptions:(id)a3;
- (CAMUserPreferenceOverrides)initWithOverrides:(id)a3;
- (CAMUserPreferenceOverrides)initWithShortcutItem:(id)a3;
@end

@implementation CAMUserPreferenceOverrides

- (CAMUserPreferenceOverrides)initWithOverrides:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = CAMUserPreferenceOverrides;
  v5 = [(CAMUserPreferenceOverrides *)&v26 init];
  if (v5)
  {
    v6 = [v4 captureMode];
    captureMode = v5->_captureMode;
    v5->_captureMode = v6;

    v8 = [v4 captureDevice];
    captureDevice = v5->_captureDevice;
    v5->_captureDevice = v8;

    v10 = [v4 videoConfiguration];
    videoConfiguration = v5->_videoConfiguration;
    v5->_videoConfiguration = v10;

    v12 = [v4 slomoConfiguration];
    slomoConfiguration = v5->_slomoConfiguration;
    v5->_slomoConfiguration = v12;

    v14 = [v4 cinematicConfiguration];
    cinematicConfiguration = v5->_cinematicConfiguration;
    v5->_cinematicConfiguration = v14;

    v16 = [v4 wantsQRCodes];
    wantsQRCodes = v5->_wantsQRCodes;
    v5->_wantsQRCodes = v16;

    v18 = [v4 flashMode];
    flashMode = v5->_flashMode;
    v5->_flashMode = v18;

    v20 = [v4 torchMode];
    torchMode = v5->_torchMode;
    v5->_torchMode = v20;

    v22 = [v4 aspectRatioCrop];
    aspectRatioCrop = v5->_aspectRatioCrop;
    v5->_aspectRatioCrop = v22;

    v24 = v5;
  }

  return v5;
}

- (BOOL)hasOverrides
{
  v3 = [(CAMUserPreferenceOverrides *)self captureMode];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CAMUserPreferenceOverrides *)self captureDevice];
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      v6 = [(CAMUserPreferenceOverrides *)self videoConfiguration];
      if (v6)
      {
        v4 = 1;
      }

      else
      {
        v7 = [(CAMUserPreferenceOverrides *)self slomoConfiguration];
        if (v7)
        {
          v4 = 1;
        }

        else
        {
          v8 = [(CAMUserPreferenceOverrides *)self cinematicConfiguration];
          if (v8)
          {
            v4 = 1;
          }

          else
          {
            v9 = [(CAMUserPreferenceOverrides *)self wantsQRCodes];
            if (v9)
            {
              v4 = 1;
            }

            else
            {
              v10 = [(CAMUserPreferenceOverrides *)self aspectRatioCrop];
              if (v10)
              {
                v4 = 1;
              }

              else
              {
                v11 = [(CAMUserPreferenceOverrides *)self flashMode];
                if (v11)
                {
                  v4 = 1;
                }

                else
                {
                  v12 = [(CAMUserPreferenceOverrides *)self torchMode];
                  v4 = v12 != 0;
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

- (CAMUserPreferenceOverrides)initWithLaunchOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DDB18]];
  if (v5)
  {
    v6 = [(CAMUserPreferenceOverrides *)self initWithShortcutItem:v5];
    self = v6;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DDB28]];
  v8 = v7;
  if (!v6 && v7)
  {
    v6 = [(CAMUserPreferenceOverrides *)self initWithConfigurationURL:v7];
    self = v6;
  }

  return v6;
}

- (CAMUserPreferenceOverrides)initWithShortcutItem:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CAMUserPreferenceOverrides;
  v5 = [(CAMUserPreferenceOverrides *)&v21 init];
  if (v5)
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"CAMCaptureMode"];
    captureMode = v5->_captureMode;
    v5->_captureMode = v7;

    v9 = [v6 objectForKeyedSubscript:@"CAMCaptureDevice"];
    captureDevice = v5->_captureDevice;
    v5->_captureDevice = v9;

    v11 = [v6 objectForKeyedSubscript:@"CAMCaptureVideoConfiguration"];
    videoConfiguration = v5->_videoConfiguration;
    v5->_videoConfiguration = v11;

    v13 = [v6 objectForKeyedSubscript:@"CAMCaptureSloMoConfiguration"];
    slomoConfiguration = v5->_slomoConfiguration;
    v5->_slomoConfiguration = v13;

    v15 = [v6 objectForKeyedSubscript:@"CAMCaptureCinematicConfiguration"];
    cinematicConfiguration = v5->_cinematicConfiguration;
    v5->_cinematicConfiguration = v15;

    v17 = [v6 objectForKeyedSubscript:@"wantsQRCodes"];
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

- (CAMUserPreferenceOverrides)initWithConfigurationURL:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CAMUserPreferenceOverrides;
  v5 = [(CAMUserPreferenceOverrides *)&v16 init];
  if (v5 && [v4 isConfigurationURL] && (objc_msgSend(v4, "configurationRequest"), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
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