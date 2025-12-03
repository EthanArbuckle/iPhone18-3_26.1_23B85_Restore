@interface CAMExposureTargetBiasCommand
- (CAMExposureTargetBiasCommand)initWithCoder:(id)coder;
- (CAMExposureTargetBiasCommand)initWithExposureTargetBias:(float)bias configureSecondaryDevice:(BOOL)device;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMExposureTargetBiasCommand

- (CAMExposureTargetBiasCommand)initWithExposureTargetBias:(float)bias configureSecondaryDevice:(BOOL)device
{
  v10.receiver = self;
  v10.super_class = CAMExposureTargetBiasCommand;
  v6 = [(CAMCaptureCommand *)&v10 initWithSubcommands:0];
  v7 = v6;
  if (v6)
  {
    v6->__exposureTargetBias = bias;
    v6->__configureSecondaryDevice = device;
    v8 = v6;
  }

  return v7;
}

- (CAMExposureTargetBiasCommand)initWithCoder:(id)coder
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CAMExposureTargetBiasCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:coder];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CAMExposureTargetBiasCommand;
  v4 = [(CAMCaptureCommand *)&v7 copyWithZone:zone];
  [(CAMExposureTargetBiasCommand *)self _exposureTargetBias];
  v4[7] = v5;
  *(v4 + 24) = [(CAMExposureTargetBiasCommand *)self _configureSecondaryDevice];
  return v4;
}

- (void)executeWithContext:(id)context
{
  v21 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  currentVideoDevice = [contextCopy currentVideoDevice];
  if ([(CAMExposureTargetBiasCommand *)self _configureSecondaryDevice])
  {
    currentSecondaryVideoDevice = [contextCopy currentSecondaryVideoDevice];

    currentVideoDevice = currentSecondaryVideoDevice;
  }

  [(CAMExposureTargetBiasCommand *)self _exposureTargetBias];
  v8 = v7;
  [currentVideoDevice minExposureTargetBias];
  v10 = v9;
  [currentVideoDevice maxExposureTargetBias];
  v12 = v11;
  if (v8 < v10)
  {
    v13 = os_log_create("com.apple.camera", "CaptureCommand");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134218240;
      v18 = v8;
      v19 = 2048;
      v20 = v10;
      _os_log_impl(&dword_1A3640000, v13, OS_LOG_TYPE_DEFAULT, "Clamping exposure target bias of %.3f to minimum %.3f", &v17, 0x16u);
    }

    v8 = v10;
  }

  if (v8 > v12)
  {
    v14 = os_log_create("com.apple.camera", "CaptureCommand");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134218240;
      v18 = v8;
      v19 = 2048;
      v20 = v12;
      _os_log_impl(&dword_1A3640000, v14, OS_LOG_TYPE_DEFAULT, "Clamping exposure target bias of %.3f to maximum %.3f", &v17, 0x16u);
    }

    v8 = v12;
  }

  v15 = os_log_create("com.apple.camera", "CaptureCommand");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [(CAMExposureTargetBiasCommand *)v15 executeWithContext:v8];
  }

  *&v16 = v8;
  [currentVideoDevice setExposureTargetBias:0 completionHandler:v16];
}

- (void)executeWithContext:(os_log_t)log .cold.1(os_log_t log, float a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&dword_1A3640000, log, OS_LOG_TYPE_DEBUG, "Applying exposure target bias of %.3f", &v2, 0xCu);
}

@end