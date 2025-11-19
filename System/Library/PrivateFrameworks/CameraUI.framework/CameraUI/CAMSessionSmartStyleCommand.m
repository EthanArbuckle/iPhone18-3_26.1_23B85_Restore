@interface CAMSessionSmartStyleCommand
- (CAMSessionSmartStyleCommand)initWithCoder:(id)a3;
- (CAMSessionSmartStyleCommand)initWithSmartStyle:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMSessionSmartStyleCommand

- (CAMSessionSmartStyleCommand)initWithSmartStyle:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CAMSessionSmartStyleCommand;
  v5 = [(CAMCaptureCommand *)&v10 initWithSubcommands:0];
  if (v5)
  {
    if (v4 && [v4 presetType])
    {
      v6 = [CAMCaptureConversions AVCaptureSmartStyleForCEKSmartStyle:v4];
      v7 = 0;
    }

    else
    {
      v6 = 0;
      v7 = 1;
    }

    objc_storeStrong(&v5->__smartStyle, v6);
    if ((v7 & 1) == 0)
    {
    }

    v8 = v5;
  }

  return v5;
}

- (CAMSessionSmartStyleCommand)initWithCoder:(id)a3
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = CAMSessionSmartStyleCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:a3];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = CAMSessionSmartStyleCommand;
  v4 = [(CAMCaptureCommand *)&v8 copyWithZone:a3];
  v5 = [(CAMSessionSmartStyleCommand *)self _smartStyle];
  v6 = v4[3];
  v4[3] = v5;

  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 currentCaptureSession];
  v6 = [v4 currentVideoDeviceFormat];

  v7 = [(CAMSessionSmartStyleCommand *)self _smartStyle];
  if ([v6 isSmartStyleRenderingSupported])
  {
    [v5 setSmartStyle:v7];
  }

  else if (v7)
  {
    v8 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CAMSessionSmartStyleCommand *)v6 executeWithContext:v7, v8];
    }
  }
}

- (void)executeWithContext:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1A3640000, log, OS_LOG_TYPE_ERROR, "Trying to set a smart style on a format that does not support it: %{public}@: %{public}@", &v3, 0x16u);
}

@end