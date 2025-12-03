@interface CAMVideoDepthDataEnabledCommand
- (CAMVideoDepthDataEnabledCommand)initWithCoder:(id)coder;
- (CAMVideoDepthDataEnabledCommand)initWithEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMVideoDepthDataEnabledCommand

- (CAMVideoDepthDataEnabledCommand)initWithEnabled:(BOOL)enabled
{
  v8.receiver = self;
  v8.super_class = CAMVideoDepthDataEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = enabled;
    v6 = v4;
  }

  return v5;
}

- (CAMVideoDepthDataEnabledCommand)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"CAMVideoDepthDataEnabledCommandKey"];

  return [(CAMVideoDepthDataEnabledCommand *)self initWithEnabled:v4];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CAMVideoDepthDataEnabledCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[CAMVideoDepthDataEnabledCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMVideoDepthDataEnabledCommandKey"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMVideoDepthDataEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMVideoDepthDataEnabledCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)context
{
  v34 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  currentMovieFileOutput = [contextCopy currentMovieFileOutput];
  currentVideoDeviceInput = [contextCopy currentVideoDeviceInput];
  currentCaptureSession = [contextCopy currentCaptureSession];
  v8 = currentCaptureSession;
  if (currentMovieFileOutput && currentVideoDeviceInput && currentCaptureSession)
  {
    v9 = *MEMORY[0x1E69875C0];
    v10 = [currentMovieFileOutput connectionWithMediaType:*MEMORY[0x1E69875C0]];
    _isEnabled = [(CAMVideoDepthDataEnabledCommand *)self _isEnabled];
    isEnabled = [v10 isEnabled];
    if (_isEnabled || !v10)
    {
      if (!(isEnabled & 1 | !_isEnabled))
      {
        v24 = v10;
        v26 = contextCopy;
        if (objc_opt_respondsToSelector())
        {
          [currentMovieFileOutput setDepthCaptureEnabled:1];
        }

        v25 = currentVideoDeviceInput;
        ports = [currentVideoDeviceInput ports];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v14 = [ports countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v29;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v29 != v16)
              {
                objc_enumerationMutation(ports);
              }

              v18 = *(*(&v28 + 1) + 8 * i);
              mediaType = [v18 mediaType];

              if (mediaType == v9)
              {
                v20 = MEMORY[0x1E6987070];
                v32 = v18;
                v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
                v22 = [v20 connectionWithInputPorts:v21 output:currentMovieFileOutput];

                if (v22 && [v8 canAddConnection:v22])
                {
                  [v8 addConnection:v22];
                }

                else
                {
                  v23 = os_log_create("com.apple.camera", "Camera");
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1A3640000, v23, OS_LOG_TYPE_DEFAULT, "Unable to add depth connection to capture session", buf, 2u);
                  }
                }
              }
            }

            v15 = [ports countByEnumeratingWithState:&v28 objects:v33 count:16];
          }

          while (v15);
        }

        currentVideoDeviceInput = v25;
        contextCopy = v26;
        v10 = v24;
      }
    }

    else
    {
      [v8 removeConnection:v10];
      if (objc_opt_respondsToSelector())
      {
        [currentMovieFileOutput setDepthCaptureEnabled:0];
      }
    }
  }
}

@end