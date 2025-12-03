@interface CAMExposureCommand
- (CAMExposureCommand)initWithCoder:(id)coder;
- (CAMExposureCommand)initWithExposureMode:(int64_t)mode atPointOfInterest:(CGPoint)interest configureSecondaryDevice:(BOOL)device;
- (CGPoint)_exposurePointOfInterest;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMExposureCommand

- (CGPoint)_exposurePointOfInterest
{
  x = self->__exposurePointOfInterest.x;
  y = self->__exposurePointOfInterest.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CAMExposureCommand)initWithExposureMode:(int64_t)mode atPointOfInterest:(CGPoint)interest configureSecondaryDevice:(BOOL)device
{
  y = interest.y;
  x = interest.x;
  v13.receiver = self;
  v13.super_class = CAMExposureCommand;
  v9 = [(CAMCaptureCommand *)&v13 initWithSubcommands:0];
  v10 = v9;
  if (v9)
  {
    v9->__exposureMode = mode;
    v9->__exposurePointOfInterest.x = x;
    v9->__exposurePointOfInterest.y = y;
    v9->__configureSecondaryDevice = device;
    v11 = v9;
  }

  return v10;
}

- (CAMExposureCommand)initWithCoder:(id)coder
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CAMExposureCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:coder];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CAMExposureCommand;
  v4 = [(CAMCaptureCommand *)&v8 copyWithZone:zone];
  v4[4] = [(CAMExposureCommand *)self _exposureMode];
  [(CAMExposureCommand *)self _exposurePointOfInterest];
  v4[5] = v5;
  v4[6] = v6;
  *(v4 + 24) = [(CAMExposureCommand *)self _configureSecondaryDevice];
  return v4;
}

- (void)executeWithContext:(id)context
{
  v21 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  currentVideoDevice = [contextCopy currentVideoDevice];
  if ([(CAMExposureCommand *)self _configureSecondaryDevice])
  {
    currentSecondaryVideoDevice = [contextCopy currentSecondaryVideoDevice];

    currentVideoDevice = currentSecondaryVideoDevice;
  }

  v7 = [CAMCaptureConversions captureExposureModeForExposureMode:[(CAMExposureCommand *)self _exposureMode]];
  [(CAMExposureCommand *)self _exposurePointOfInterest];
  x = v22.x;
  y = v22.y;
  DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v22);
  v11 = os_log_create("com.apple.camera", "CaptureCommand");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(CAMExposureCommand *)DictionaryRepresentation executeWithContext:v7, v11];
  }

  v12 = x >= 0.0 && x <= 1.0;
  v13 = y <= 1.0;
  if (y < 0.0)
  {
    v13 = 0;
  }

  v14 = v12 && v13;
  if ([currentVideoDevice isExposurePointOfInterestSupported] && v14)
  {
    [(CAMExposureCommand *)self _exposurePointOfInterest];
    [currentVideoDevice setExposurePointOfInterest:?];
  }

  else if (v14)
  {
    v15 = os_log_create("com.apple.camera", "CaptureCommand");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543618;
      v18 = DictionaryRepresentation;
      v19 = 2114;
      v20 = currentVideoDevice;
      _os_log_impl(&dword_1A3640000, v15, OS_LOG_TYPE_DEFAULT, "Failed to set exposure point of interest (%{public}@), as it is not supported by %{public}@", &v17, 0x16u);
    }
  }

  CFRelease(DictionaryRepresentation);
  if ([currentVideoDevice isExposureModeSupported:v7])
  {
    [currentVideoDevice setExposureMode:v7];
  }

  else
  {
    v16 = os_log_create("com.apple.camera", "CaptureCommand");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134218242;
      v18 = v7;
      v19 = 2114;
      v20 = currentVideoDevice;
      _os_log_impl(&dword_1A3640000, v16, OS_LOG_TYPE_DEFAULT, "Failed to set exposure mode %ld, as it is not supported by %{public}@", &v17, 0x16u);
    }
  }
}

- (void)executeWithContext:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218242;
  v4 = a2;
  v5 = 2114;
  v6 = a1;
  _os_log_debug_impl(&dword_1A3640000, log, OS_LOG_TYPE_DEBUG, "Applying exposure mode %ld with point of interest %{public}@", &v3, 0x16u);
}

@end