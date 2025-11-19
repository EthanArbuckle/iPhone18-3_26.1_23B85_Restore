@interface CAMVideoDepthDataEnabledCommand
- (CAMVideoDepthDataEnabledCommand)initWithCoder:(id)a3;
- (CAMVideoDepthDataEnabledCommand)initWithEnabled:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMVideoDepthDataEnabledCommand

- (CAMVideoDepthDataEnabledCommand)initWithEnabled:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CAMVideoDepthDataEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v8 initWithSubcommands:0];
  v5 = v4;
  if (v4)
  {
    v4->__enabled = a3;
    v6 = v4;
  }

  return v5;
}

- (CAMVideoDepthDataEnabledCommand)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"CAMVideoDepthDataEnabledCommandKey"];

  return [(CAMVideoDepthDataEnabledCommand *)self initWithEnabled:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CAMVideoDepthDataEnabledCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[CAMVideoDepthDataEnabledCommand _isEnabled](self forKey:{"_isEnabled", v5.receiver, v5.super_class), @"CAMVideoDepthDataEnabledCommandKey"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMVideoDepthDataEnabledCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[24] = [(CAMVideoDepthDataEnabledCommand *)self _isEnabled];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 currentMovieFileOutput];
  v6 = [v4 currentVideoDeviceInput];
  v7 = [v4 currentCaptureSession];
  v8 = v7;
  if (v5 && v6 && v7)
  {
    v9 = *MEMORY[0x1E69875C0];
    v10 = [v5 connectionWithMediaType:*MEMORY[0x1E69875C0]];
    v11 = [(CAMVideoDepthDataEnabledCommand *)self _isEnabled];
    v12 = [v10 isEnabled];
    if (v11 || !v10)
    {
      if (!(v12 & 1 | !v11))
      {
        v24 = v10;
        v26 = v4;
        if (objc_opt_respondsToSelector())
        {
          [v5 setDepthCaptureEnabled:1];
        }

        v25 = v6;
        v13 = [v6 ports];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v14 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v28 + 1) + 8 * i);
              v19 = [v18 mediaType];

              if (v19 == v9)
              {
                v20 = MEMORY[0x1E6987070];
                v32 = v18;
                v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
                v22 = [v20 connectionWithInputPorts:v21 output:v5];

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

            v15 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
          }

          while (v15);
        }

        v6 = v25;
        v4 = v26;
        v10 = v24;
      }
    }

    else
    {
      [v8 removeConnection:v10];
      if (objc_opt_respondsToSelector())
      {
        [v5 setDepthCaptureEnabled:0];
      }
    }
  }
}

@end