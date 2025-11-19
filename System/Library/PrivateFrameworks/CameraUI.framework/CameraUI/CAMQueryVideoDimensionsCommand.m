@interface CAMQueryVideoDimensionsCommand
- (CAMQueryVideoDimensionsCommand)initWithCoder:(id)a3;
- (CAMQueryVideoDimensionsCommand)initWithCompletionBlock:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMQueryVideoDimensionsCommand

- (CAMQueryVideoDimensionsCommand)initWithCompletionBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CAMQueryVideoDimensionsCommand;
  v5 = [(CAMCaptureCommand *)&v9 initWithSubcommands:0];
  v6 = v5;
  if (v5)
  {
    [(CAMQueryVideoDimensionsCommand *)v5 _setCompletionBlock:v4];
    v7 = v6;
  }

  return v6;
}

- (CAMQueryVideoDimensionsCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CAMQueryVideoDimensionsCommand;
  v5 = [(CAMCaptureCommand *)&v8 initWithCoder:v4];
  if (v5)
  {
    if ([v4 decodeBoolForKey:@"CAMQueryVideoDimensionsCommandUnserializedCompletionBlock"])
    {
      [(CAMQueryVideoDimensionsCommand *)v5 _setCompletionBlock:&__block_literal_global_1];
    }

    v6 = v5;
  }

  return v5;
}

void __48__CAMQueryVideoDimensionsCommand_initWithCoder___block_invoke()
{
  v0 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1A3640000, v0, OS_LOG_TYPE_DEFAULT, "Original completion block for CAMQueryVideoDimensionsCommandLensPosition could not be serialized so some behavior may be different.", v1, 2u);
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = CAMQueryVideoDimensionsCommand;
  [(CAMCaptureCommand *)&v5 encodeWithCoder:v4];
  if (self->__completionBlock)
  {
    [v4 encodeBool:1 forKey:@"CAMQueryVideoDimensionsCommandUnserializedCompletionBlock"];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = CAMQueryVideoDimensionsCommand;
  v4 = [(CAMCaptureCommand *)&v7 copyWithZone:a3];
  v5 = [(CAMQueryVideoDimensionsCommand *)self _completionBlock];
  [v4 _setCompletionBlock:v5];

  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = [a3 currentVideoDevice];
  v5 = [v4 activeFormat];
  v6 = [v5 formatDescription];
  if (v6)
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions(v6);
    v8 = Dimensions;
    v9 = Dimensions >> 32;
    v10 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(CAMQueryVideoDimensionsCommand *)v8 executeWithContext:v9, v10];
    }
  }

  else
  {
    v10 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "Failed to get video dimensions", v12, 2u);
    }

    v9 = 0;
    v8 = 0;
  }

  completionBlock = self->__completionBlock;
  if (completionBlock)
  {
    completionBlock[2](completionBlock, v8, v9);
  }
}

- (void)executeWithContext:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_debug_impl(&dword_1A3640000, log, OS_LOG_TYPE_DEBUG, "Queried video dimensions of %ld, %ld", &v3, 0x16u);
}

@end