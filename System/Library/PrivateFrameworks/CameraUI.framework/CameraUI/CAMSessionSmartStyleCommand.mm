@interface CAMSessionSmartStyleCommand
- (CAMSessionSmartStyleCommand)initWithCoder:(id)coder;
- (CAMSessionSmartStyleCommand)initWithSmartStyle:(id)style;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMSessionSmartStyleCommand

- (CAMSessionSmartStyleCommand)initWithSmartStyle:(id)style
{
  styleCopy = style;
  v10.receiver = self;
  v10.super_class = CAMSessionSmartStyleCommand;
  v5 = [(CAMCaptureCommand *)&v10 initWithSubcommands:0];
  if (v5)
  {
    if (styleCopy && [styleCopy presetType])
    {
      v6 = [CAMCaptureConversions AVCaptureSmartStyleForCEKSmartStyle:styleCopy];
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

- (CAMSessionSmartStyleCommand)initWithCoder:(id)coder
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CAMSessionSmartStyleCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:coder];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CAMSessionSmartStyleCommand;
  v4 = [(CAMCaptureCommand *)&v8 copyWithZone:zone];
  _smartStyle = [(CAMSessionSmartStyleCommand *)self _smartStyle];
  v6 = v4[3];
  v4[3] = _smartStyle;

  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  currentCaptureSession = [contextCopy currentCaptureSession];
  currentVideoDeviceFormat = [contextCopy currentVideoDeviceFormat];

  _smartStyle = [(CAMSessionSmartStyleCommand *)self _smartStyle];
  if ([currentVideoDeviceFormat isSmartStyleRenderingSupported])
  {
    [currentCaptureSession setSmartStyle:_smartStyle];
  }

  else if (_smartStyle)
  {
    v8 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CAMSessionSmartStyleCommand *)currentVideoDeviceFormat executeWithContext:_smartStyle, v8];
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