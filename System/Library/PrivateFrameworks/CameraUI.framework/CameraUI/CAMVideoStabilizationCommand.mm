@interface CAMVideoStabilizationCommand
- (CAMVideoStabilizationCommand)initWithAutomaticVideoStabilizationEnabled:(BOOL)enabled strength:(int64_t)strength frontRearSimultaneousVideoEnabled:(BOOL)videoEnabled configureSecondaryDevice:(BOOL)device;
- (CAMVideoStabilizationCommand)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMVideoStabilizationCommand

- (CAMVideoStabilizationCommand)initWithAutomaticVideoStabilizationEnabled:(BOOL)enabled strength:(int64_t)strength frontRearSimultaneousVideoEnabled:(BOOL)videoEnabled configureSecondaryDevice:(BOOL)device
{
  v14.receiver = self;
  v14.super_class = CAMVideoStabilizationCommand;
  v10 = [(CAMCaptureCommand *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->__enabled = enabled;
    v10->__strength = strength;
    v10->__frontRearSimultaneousVideoEnabled = videoEnabled;
    v10->__configureSecondaryDevice = device;
    v12 = v10;
  }

  return v11;
}

- (CAMVideoStabilizationCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMVideoStabilizationCommand;
  v5 = [(CAMCaptureCommand *)&v8 init];
  if (v5)
  {
    v5->__enabled = [coderCopy decodeBoolForKey:@"CAMVideoStabilizationCommandEnabled"];
    v5->__strength = [coderCopy decodeIntegerForKey:@"CAMVideoStabilizationCommandStrength"];
    v5->__frontRearSimultaneousVideoEnabled = [coderCopy decodeBoolForKey:@"CAMVideoStabilizationCommandFrontRearSimultaneousVideoEnabled"];
    v5->__configureSecondaryDevice = [coderCopy decodeBoolForKey:@"CAMVideoStabilizationCommandConfigureSecondaryDevice"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMVideoStabilizationCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMVideoStabilizationCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMVideoStabilizationCommandEnabled"}];
  [coderCopy encodeInteger:-[CAMVideoStabilizationCommand _strength](self forKey:{"_strength"), @"CAMVideoStabilizationCommandStrength"}];
  [coderCopy encodeBool:-[CAMVideoStabilizationCommand _frontRearSimultaneousVideoEnabled](self forKey:{"_frontRearSimultaneousVideoEnabled"), @"CAMVideoStabilizationCommandFrontRearSimultaneousVideoEnabled"}];
  [coderCopy encodeBool:-[CAMVideoStabilizationCommand _configureSecondaryDevice](self forKey:{"_configureSecondaryDevice"), @"CAMVideoStabilizationCommandConfigureSecondaryDevice"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMVideoStabilizationCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMVideoStabilizationCommand *)self _isEnabled];
  *(v4 + 4) = [(CAMVideoStabilizationCommand *)self _strength];
  v4[25] = [(CAMVideoStabilizationCommand *)self _frontRearSimultaneousVideoEnabled];
  v4[26] = [(CAMVideoStabilizationCommand *)self _configureSecondaryDevice];
  return v4;
}

- (void)executeWithContext:(id)context
{
  v51 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  currentMovieFileOutput = [contextCopy currentMovieFileOutput];
  v6 = +[CAMCaptureCapabilities capabilities];
  selfCopy = self;
  if ([(CAMVideoStabilizationCommand *)self _configureSecondaryDevice])
  {
    currentSecondaryVideoDevice = [contextCopy currentSecondaryVideoDevice];
    currentSecondaryVideoDeviceFormat = [contextCopy currentSecondaryVideoDeviceFormat];
    [contextCopy currentSecondaryVideoDeviceInput];
  }

  else
  {
    currentSecondaryVideoDevice = [contextCopy currentVideoDevice];
    currentSecondaryVideoDeviceFormat = [contextCopy currentVideoDeviceFormat];
    [contextCopy currentVideoDeviceInput];
  }
  v9 = ;
  position = [currentSecondaryVideoDevice position];
  isFrontRearSimultaneousVideoFrontVideoStabilizationSupported = [v6 isFrontRearSimultaneousVideoFrontVideoStabilizationSupported];
  if (currentSecondaryVideoDevice && (position != 2 || isFrontRearSimultaneousVideoFrontVideoStabilizationSupported & 1 | ![(CAMVideoStabilizationCommand *)self _frontRearSimultaneousVideoEnabled]))
  {
    v32 = currentSecondaryVideoDevice;
    v33 = v6;
    v34 = currentMovieFileOutput;
    v35 = contextCopy;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = [currentMovieFileOutput connections];
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
          inputPorts = [v14 inputPorts];
          v16 = [inputPorts countByEnumeratingWithState:&v41 objects:v49 count:16];
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
                  objc_enumerationMutation(inputPorts);
                }

                v20 = *(*(&v41 + 1) + 8 * j);
                input = [v20 input];
                v22 = input;
                if (input == v9)
                {
                  mediaType = [v20 mediaType];

                  if (mediaType == v12)
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

              v17 = [inputPorts countByEnumeratingWithState:&v41 objects:v49 count:16];
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

    currentSecondaryVideoDeviceFormat = v31;
    v26 = [v31 isVideoStabilizationModeSupported:3];
    _strength = [(CAMVideoStabilizationCommand *)selfCopy _strength];
    if (_strength > 3)
    {
      v28 = 0;
      v29 = 0;
    }

    else
    {
      v28 = qword_1A3A688A0[_strength];
      v29 = qword_1A3A688C0[_strength];
    }

    currentMovieFileOutput = v34;
    contextCopy = v35;
    currentSecondaryVideoDevice = v32;
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