@interface CAMQueryTimelapseDimensionsCommand
- (CAMQueryTimelapseDimensionsCommand)initWithCoder:(id)coder;
- (CAMQueryTimelapseDimensionsCommand)initWithCompletionBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMQueryTimelapseDimensionsCommand

- (CAMQueryTimelapseDimensionsCommand)initWithCompletionBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = CAMQueryTimelapseDimensionsCommand;
  v5 = [(CAMCaptureCommand *)&v9 initWithSubcommands:0];
  v6 = v5;
  if (v5)
  {
    [(CAMQueryTimelapseDimensionsCommand *)v5 _setCompletionBlock:blockCopy];
    v7 = v6;
  }

  return v6;
}

- (CAMQueryTimelapseDimensionsCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CAMQueryTimelapseDimensionsCommand;
  v5 = [(CAMCaptureCommand *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    if ([coderCopy decodeBoolForKey:@"CAMQueryTimelapseDimensionsCommandUnserializedCompletionBlock"])
    {
      [(CAMQueryTimelapseDimensionsCommand *)v5 _setCompletionBlock:&__block_literal_global_48];
    }

    v6 = v5;
  }

  return v5;
}

void __52__CAMQueryTimelapseDimensionsCommand_initWithCoder___block_invoke()
{
  v0 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1A3640000, v0, OS_LOG_TYPE_DEFAULT, "Original completion block for CAMQueryTimelapseDimensionsCommand could not be serialized so some behaviour may be different.", v1, 2u);
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = CAMQueryTimelapseDimensionsCommand;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:coderCopy];
  if (self->__completionBlock)
  {
    [coderCopy encodeBool:1 forKey:@"CAMQueryTimelapseDimensionsCommandUnserializedCompletionBlock"];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CAMQueryTimelapseDimensionsCommand;
  v4 = [(CAMCaptureCommand *)&v7 copyWithZone:zone];
  _completionBlock = [(CAMQueryTimelapseDimensionsCommand *)self _completionBlock];
  [v4 _setCompletionBlock:_completionBlock];

  return v4;
}

- (void)executeWithContext:(id)context
{
  v27 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  currentVideoDevice = [contextCopy currentVideoDevice];
  activeFormat = [currentVideoDevice activeFormat];
  currentStillImageOutput = [contextCopy currentStillImageOutput];

  formatDescription = [activeFormat formatDescription];
  if (formatDescription)
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions(formatDescription);
    v10 = Dimensions;
    v11 = Dimensions >> 32;
    if ([currentStillImageOutput isImageOptimizationForOfflineVideoStabilizationSupported])
    {
      optimizedImageDimensionsForOfflineStabilization = [currentStillImageOutput optimizedImageDimensionsForOfflineStabilization];
      v13 = optimizedImageDimensionsForOfflineStabilization;
      v14 = optimizedImageDimensionsForOfflineStabilization >> 32;
      v15 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v19 = 134218752;
        v20 = v10;
        v21 = 2048;
        v22 = v11;
        v23 = 2048;
        v24 = v13;
        v25 = 2048;
        v26 = v14;
        _os_log_debug_impl(&dword_1A3640000, v15, OS_LOG_TYPE_DEBUG, "Queried video dimensions of %ld, %ld; overscan %ld, %ld", &v19, 0x2Au);
      }

      if (v13 * v11 == v14 * v10)
      {
        v16 = 1;
        goto LABEL_17;
      }

      v17 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_1A3640000, v17, OS_LOG_TYPE_DEFAULT, "Aspect ratio mismatch between original and overscan output dimensions", &v19, 2u);
      }

      v16 = 1;
    }

    else
    {
      v17 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [(CAMQueryTimelapseDimensionsCommand *)v10 executeWithContext:v11, v17];
      }

      v16 = 0;
      v14 = v11;
      v13 = v10;
    }
  }

  else
  {
    v17 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1A3640000, v17, OS_LOG_TYPE_DEFAULT, "Failed to get video dimensions", &v19, 2u);
    }

    v16 = 0;
    v14 = 0;
    v13 = 0;
    v11 = 0;
    v10 = 0;
  }

LABEL_17:
  completionBlock = self->__completionBlock;
  if (completionBlock)
  {
    completionBlock[2](completionBlock, v10, v11, v13, v14, v16);
  }
}

- (void)executeWithContext:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_debug_impl(&dword_1A3640000, log, OS_LOG_TYPE_DEBUG, "Queried video dimensions of %ld, %ld; no overscan", &v3, 0x16u);
}

@end