@interface CAMVideoStabilizationCommand
- (CAMVideoStabilizationCommand)initWithAutomaticVideoStabilizationEnabled:(BOOL)a3 strength:(int64_t)a4 frontRearSimultaneousVideoEnabled:(BOOL)a5 configureSecondaryDevice:(BOOL)a6;
- (CAMVideoStabilizationCommand)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMVideoStabilizationCommand

- (CAMVideoStabilizationCommand)initWithAutomaticVideoStabilizationEnabled:(BOOL)a3 strength:(int64_t)a4 frontRearSimultaneousVideoEnabled:(BOOL)a5 configureSecondaryDevice:(BOOL)a6
{
  v14.receiver = self;
  v14.super_class = CAMVideoStabilizationCommand;
  v10 = [(CAMCaptureCommand *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->__enabled = a3;
    v10->__strength = a4;
    v10->__frontRearSimultaneousVideoEnabled = a5;
    v10->__configureSecondaryDevice = a6;
    v12 = v10;
  }

  return v11;
}

- (CAMVideoStabilizationCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CAMVideoStabilizationCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__enabled = [v4 decodeBoolForKey:@"CAMVideoStabilizationCommandEnabled"];
    v5->__strength = [v4 decodeIntegerForKey:@"CAMVideoStabilizationCommandStrength"];
    v5->__frontRearSimultaneousVideoEnabled = [v4 decodeBoolForKey:@"CAMVideoStabilizationCommandFrontRearSimultaneousVideoEnabled"];
    v5->__configureSecondaryDevice = [v4 decodeBoolForKey:@"CAMVideoStabilizationCommandConfigureSecondaryDevice"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CAMVideoStabilizationCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[CAMVideoStabilizationCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMVideoStabilizationCommandEnabled"}];
  [v4 encodeInteger:-[CAMVideoStabilizationCommand _strength](self forKey:{"_strength"), @"CAMVideoStabilizationCommandStrength"}];
  [v4 encodeBool:-[CAMVideoStabilizationCommand _frontRearSimultaneousVideoEnabled](self forKey:{"_frontRearSimultaneousVideoEnabled"), @"CAMVideoStabilizationCommandFrontRearSimultaneousVideoEnabled"}];
  [v4 encodeBool:-[CAMVideoStabilizationCommand _configureSecondaryDevice](self forKey:{"_configureSecondaryDevice"), @"CAMVideoStabilizationCommandConfigureSecondaryDevice"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMVideoStabilizationCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[24] = [(CAMVideoStabilizationCommand *)self _isEnabled];
  *(v4 + 4) = [(CAMVideoStabilizationCommand *)self _strength];
  v4[25] = [(CAMVideoStabilizationCommand *)self _frontRearSimultaneousVideoEnabled];
  v4[26] = [(CAMVideoStabilizationCommand *)self _configureSecondaryDevice];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 currentMovieFileOutput];
  v6 = +[CAMCaptureCapabilities capabilities];
  v36 = self;
  if ([(CAMVideoStabilizationCommand *)self _configureSecondaryDevice])
  {
    v7 = [v4 currentSecondaryVideoDevice];
    v8 = [v4 currentSecondaryVideoDeviceFormat];
    [v4 currentSecondaryVideoDeviceInput];
  }

  else
  {
    v7 = [v4 currentVideoDevice];
    v8 = [v4 currentVideoDeviceFormat];
    [v4 currentVideoDeviceInput];
  }
  v9 = ;
  v10 = [v7 position];
  v11 = [v6 isFrontRearSimultaneousVideoFrontVideoStabilizationSupported];
  if (v7 && (v10 != 2 || v11 & 1 | ![(CAMVideoStabilizationCommand *)self _frontRearSimultaneousVideoEnabled]))
  {
    v32 = v7;
    v33 = v6;
    v34 = v5;
    v35 = v4;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = [v5 connections];
    v39 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v39)
    {
      v40 = 0;
      v38 = *v46;
      v12 = *MEMORY[0x1E6987608];
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v46 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v45 + 1) + 8 * i);
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v15 = [v14 inputPorts];
          v16 = [v15 countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v42;
            while (2)
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v42 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v41 + 1) + 8 * j);
                v21 = [v20 input];
                v22 = v21;
                if (v21 == v9)
                {
                  v23 = [v20 mediaType];

                  if (v23 == v12)
                  {
                    v24 = v14;

                    v40 = v24;
                    goto LABEL_24;
                  }
                }

                else
                {
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v41 objects:v49 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

LABEL_24:
        }

        v39 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v39);
    }

    else
    {
      v40 = 0;
    }

    v8 = v31;
    v26 = [v31 isVideoStabilizationModeSupported:3];
    v27 = [(CAMVideoStabilizationCommand *)v36 _strength];
    if (v27 > 3)
    {
      v28 = 0;
      v29 = 0;
    }

    else
    {
      v28 = qword_1A3A688A0[v27];
      v29 = qword_1A3A688C0[v27];
    }

    v5 = v34;
    v4 = v35;
    v7 = v32;
    v6 = v33;
    if ([v40 isVideoStabilizationSupported])
    {
      if ([v31 isVideoStabilizationModeSupported:v29])
      {
        v30 = v29;
      }

      else
      {
        v30 = -1;
      }

      [v40 setPreferredVideoStabilizationMode:v30];
    }

    if ((v26 & [v31 isVideoStabilizationStrengthSupported:v28]) == 1)
    {
      [v32 setVideoStabilizationStrength:v28];
    }

    v25 = v40;
  }

  else
  {
    v25 = 0;
  }
}

@end