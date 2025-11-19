@interface CAMWhiteBalanceCommand
- (CAMWhiteBalanceCommand)initWithCoder:(id)a3;
- (CAMWhiteBalanceCommand)initWithMatchExposureMode;
- (CAMWhiteBalanceCommand)initWithWhiteBalanceMode:(int64_t)a3 configureSecondaryDevice:(BOOL)a4;
- (id)_descriptionForWhiteBalanceMode:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMWhiteBalanceCommand

- (CAMWhiteBalanceCommand)initWithMatchExposureMode
{
  v6.receiver = self;
  v6.super_class = CAMWhiteBalanceCommand;
  v2 = [(CAMCaptureCommand *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->__matchExposureMode = 1;
    v2->__configureSecondaryDevice = 0;
    v4 = v2;
  }

  return v3;
}

- (CAMWhiteBalanceCommand)initWithWhiteBalanceMode:(int64_t)a3 configureSecondaryDevice:(BOOL)a4
{
  v10.receiver = self;
  v10.super_class = CAMWhiteBalanceCommand;
  v6 = [(CAMCaptureCommand *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->__whiteBalanceMode = a3;
    v6->__configureSecondaryDevice = a4;
    v8 = v6;
  }

  return v7;
}

- (CAMWhiteBalanceCommand)initWithCoder:(id)a3
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = CAMWhiteBalanceCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:a3];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CAMWhiteBalanceCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:a3];
  v4[4] = [(CAMWhiteBalanceCommand *)self _whiteBalanceMode];
  *(v4 + 24) = [(CAMWhiteBalanceCommand *)self _matchExposureMode];
  *(v4 + 25) = [(CAMWhiteBalanceCommand *)self _configureSecondaryDevice];
  return v4;
}

- (void)executeWithContext:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 currentVideoDevice];
  if ([(CAMWhiteBalanceCommand *)self _configureSecondaryDevice])
  {
    v6 = [v4 currentSecondaryVideoDevice];

    v5 = v6;
  }

  v7 = [CAMCaptureConversions captureWhiteBalanceModeForWhiteBalanceMode:2];
  if ([(CAMWhiteBalanceCommand *)self _matchExposureMode])
  {
    v8 = [v5 exposureMode];
    if (v8 < 4)
    {
      v7 = qword_1A3A6A450[v8];
    }
  }

  else
  {
    v7 = [CAMCaptureConversions captureWhiteBalanceModeForWhiteBalanceMode:[(CAMWhiteBalanceCommand *)self _whiteBalanceMode]];
  }

  if ([v5 isWhiteBalanceModeSupported:v7])
  {
    v9 = v7;
LABEL_9:
    v10 = os_log_create("com.apple.camera", "CaptureCommand");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(CAMWhiteBalanceCommand *)self executeWithContext:v9, v10];
    }

    [v5 setWhiteBalanceMode:v9];
  }

  else
  {
    while (1)
    {
      v9 = 2 * (v7 != 1);
      v11 = os_log_create("com.apple.camera", "CaptureCommand");
      v12 = v11;
      if (v9 == v7)
      {
        break;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v13 = [(CAMWhiteBalanceCommand *)self _descriptionForWhiteBalanceMode:v9];
        v14 = [(CAMWhiteBalanceCommand *)self _descriptionForWhiteBalanceMode:v7];
        *buf = 138543874;
        v17 = v13;
        v18 = 2114;
        v19 = v14;
        v20 = 2114;
        v21 = v5;
        _os_log_debug_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEBUG, "Falling back to %{public}@ because %{public}@ isn't supported by %{public}@", buf, 0x20u);
      }

      v7 = v9;
      if ([v5 isWhiteBalanceModeSupported:v9])
      {
        goto LABEL_9;
      }
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(CAMWhiteBalanceCommand *)self _descriptionForWhiteBalanceMode:v7];
      *buf = 138543618;
      v17 = v15;
      v18 = 2114;
      v19 = v5;
      _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "Failed to set white balance mode %{public}@, as it is not supported by %{public}@", buf, 0x16u);
    }
  }
}

- (id)_descriptionForWhiteBalanceMode:(int64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E76FCA70[a3];
  }
}

- (void)executeWithContext:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [a1 _descriptionForWhiteBalanceMode:a2];
  v5 = 138543362;
  v6 = v4;
  _os_log_debug_impl(&dword_1A3640000, a3, OS_LOG_TYPE_DEBUG, "Applying white balance mode %{public}@", &v5, 0xCu);
}

@end