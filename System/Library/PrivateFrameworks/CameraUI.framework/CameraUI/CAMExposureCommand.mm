@interface CAMExposureCommand
- (CAMExposureCommand)initWithCoder:(id)a3;
- (CAMExposureCommand)initWithExposureMode:(int64_t)a3 atPointOfInterest:(CGPoint)a4 configureSecondaryDevice:(BOOL)a5;
- (CGPoint)_exposurePointOfInterest;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
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

- (CAMExposureCommand)initWithExposureMode:(int64_t)a3 atPointOfInterest:(CGPoint)a4 configureSecondaryDevice:(BOOL)a5
{
  y = a4.y;
  x = a4.x;
  v13.receiver = self;
  v13.super_class = CAMExposureCommand;
  v9 = [(CAMCaptureCommand *)&v13 initWithSubcommands:0];
  v10 = v9;
  if (v9)
  {
    v9->__exposureMode = a3;
    v9->__exposurePointOfInterest.x = x;
    v9->__exposurePointOfInterest.y = y;
    v9->__configureSecondaryDevice = a5;
    v11 = v9;
  }

  return v10;
}

- (CAMExposureCommand)initWithCoder:(id)a3
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = CAMExposureCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:a3];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = CAMExposureCommand;
  v4 = [(CAMCaptureCommand *)&v8 copyWithZone:a3];
  v4[4] = [(CAMExposureCommand *)self _exposureMode];
  [(CAMExposureCommand *)self _exposurePointOfInterest];
  v4[5] = v5;
  v4[6] = v6;
  *(v4 + 24) = [(CAMExposureCommand *)self _configureSecondaryDevice];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 currentVideoDevice];
  if ([(CAMExposureCommand *)self _configureSecondaryDevice])
  {
    v6 = [v4 currentSecondaryVideoDevice];

    v5 = v6;
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
  if ([v5 isExposurePointOfInterestSupported] && v14)
  {
    [(CAMExposureCommand *)self _exposurePointOfInterest];
    [v5 setExposurePointOfInterest:?];
  }

  else if (v14)
  {
    v15 = os_log_create("com.apple.camera", "CaptureCommand");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543618;
      v18 = DictionaryRepresentation;
      v19 = 2114;
      v20 = v5;
      _os_log_impl(&dword_1A3640000, v15, OS_LOG_TYPE_DEFAULT, "Failed to set exposure point of interest (%{public}@), as it is not supported by %{public}@", &v17, 0x16u);
    }
  }

  CFRelease(DictionaryRepresentation);
  if ([v5 isExposureModeSupported:v7])
  {
    [v5 setExposureMode:v7];
  }

  else
  {
    v16 = os_log_create("com.apple.camera", "CaptureCommand");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134218242;
      v18 = v7;
      v19 = 2114;
      v20 = v5;
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