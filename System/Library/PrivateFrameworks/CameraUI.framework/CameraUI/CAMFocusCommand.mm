@interface CAMFocusCommand
- (CAMFocusCommand)initWithCoder:(id)a3;
- (CAMFocusCommand)initWithFocusMode:(int64_t)a3 atPointOfInterest:(CGPoint)a4 rectSize:(int64_t)a5 smooth:(BOOL)a6 configureSecondaryDevice:(BOOL)a7;
- (CGPoint)_focusPointOfInterest;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMFocusCommand

- (CGPoint)_focusPointOfInterest
{
  x = self->__focusPointOfInterest.x;
  y = self->__focusPointOfInterest.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CAMFocusCommand)initWithFocusMode:(int64_t)a3 atPointOfInterest:(CGPoint)a4 rectSize:(int64_t)a5 smooth:(BOOL)a6 configureSecondaryDevice:(BOOL)a7
{
  y = a4.y;
  x = a4.x;
  v17.receiver = self;
  v17.super_class = CAMFocusCommand;
  v13 = [(CAMCaptureCommand *)&v17 initWithSubcommands:0];
  v14 = v13;
  if (v13)
  {
    v13->__focusMode = a3;
    v13->__rectSize = a5;
    v13->__focusPointOfInterest.x = x;
    v13->__focusPointOfInterest.y = y;
    v13->__shouldUseSmoothFocus = a6;
    v13->__configureSecondaryDevice = a7;
    v15 = v13;
  }

  return v14;
}

- (CAMFocusCommand)initWithCoder:(id)a3
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = CAMFocusCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:a3];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = CAMFocusCommand;
  v4 = [(CAMCaptureCommand *)&v8 copyWithZone:a3];
  v4[4] = [(CAMFocusCommand *)self _focusMode];
  v4[5] = [(CAMFocusCommand *)self _rectSize];
  [(CAMFocusCommand *)self _focusPointOfInterest];
  v4[6] = v5;
  v4[7] = v6;
  *(v4 + 24) = [(CAMFocusCommand *)self _shouldUseSmoothFocus];
  *(v4 + 25) = [(CAMFocusCommand *)self _configureSecondaryDevice];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 currentVideoDevice];
  if ([(CAMFocusCommand *)self _configureSecondaryDevice])
  {
    v6 = [v4 currentSecondaryVideoDevice];

    v5 = v6;
  }

  v7 = +[CAMCaptureConversions captureFocusModeForFocusMode:isPerformingContrastBasedFocus:](CAMCaptureConversions, "captureFocusModeForFocusMode:isPerformingContrastBasedFocus:", -[CAMFocusCommand _focusMode](self, "_focusMode"), [v5 isAdjustingFocus]);
  [(CAMFocusCommand *)self _focusPointOfInterest];
  v9 = v8;
  v11 = v10;
  v12 = [(CAMFocusCommand *)self _shouldUseSmoothFocus];
  v13 = os_log_create("com.apple.camera", "CaptureCommand");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v33.x = v9;
    v33.y = v11;
    v26 = NSStringFromCGPoint(v33);
    v27 = 134218242;
    v28 = v7;
    v29 = 2114;
    v30 = v26;
    _os_log_debug_impl(&dword_1A3640000, v13, OS_LOG_TYPE_DEBUG, "Applying focus mode %ld with point of interest %{public}@", &v27, 0x16u);
  }

  if (v9 <= 1.0 && v9 >= 0.0 && v11 <= 1.0 && v11 >= 0.0)
  {
    v14 = [(CAMFocusCommand *)self _rectSize];
    if (v14 == 1)
    {
      if ([v5 isFocusRectOfInterestSupported])
      {
        [v5 defaultRectForFocusPointOfInterest:{v9, v11}];
        v16 = v15;
        v18 = v17;
        [v5 minFocusRectOfInterestSize];
        [v5 setFocusRectOfInterest:{v9 - fmax(v16 * 0.4, v19) * 0.5, v11 - fmax(v18 * 0.4, v20) * 0.5}];
        goto LABEL_20;
      }

      v21 = os_log_create("com.apple.camera", "CaptureCommand");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [(CAMFocusCommand *)v5 executeWithContext:v21];
      }

      goto LABEL_19;
    }

    if (!v14)
    {
      if ([v5 isFocusPointOfInterestSupported])
      {
        [v5 setFocusPointOfInterest:{v9, v11}];
        goto LABEL_20;
      }

      v21 = os_log_create("com.apple.camera", "CaptureCommand");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v32.x = v9;
        v32.y = v11;
        v22 = NSStringFromCGPoint(v32);
        v27 = 138543618;
        v28 = v22;
        v29 = 2114;
        v30 = v5;
        _os_log_debug_impl(&dword_1A3640000, v21, OS_LOG_TYPE_DEBUG, "Failed to set focus point of interest (%{public}@), as it is not supported by %{public}@", &v27, 0x16u);
      }

LABEL_19:
    }
  }

LABEL_20:
  v23 = [v4 currentMovieFileOutput];

  if (v23 && [v5 isSmoothAutoFocusSupported])
  {
    v24 = os_log_create("com.apple.camera", "CaptureCommand");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [(CAMFocusCommand *)v5 executeWithContext:v12, v24];
    }

    [v5 setSmoothAutoFocusEnabled:v12];
  }

  if ([v5 isFocusModeSupported:v7])
  {
    [v5 setFocusMode:v7];
  }

  else
  {
    v25 = os_log_create("com.apple.camera", "CaptureCommand");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [(CAMFocusCommand *)v5 executeWithContext:v7, v25];
    }
  }
}

- (void)executeWithContext:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_1A3640000, a2, OS_LOG_TYPE_DEBUG, "Failed to set focus rect of interest as it is not supported by %{public}@", &v2, 0xCu);
}

- (void)executeWithContext:(os_log_t)log .cold.2(uint64_t a1, char a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 1024;
  v6 = a2 & 1;
  _os_log_debug_impl(&dword_1A3640000, log, OS_LOG_TYPE_DEBUG, "%{public}@ supports smooth focus, setting smooth focus to %d", &v3, 0x12u);
}

- (void)executeWithContext:(os_log_t)log .cold.3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218242;
  v4 = a2;
  v5 = 2114;
  v6 = a1;
  _os_log_debug_impl(&dword_1A3640000, log, OS_LOG_TYPE_DEBUG, "Failed to set focus mode %ld, as it is not supported by %{public}@", &v3, 0x16u);
}

@end