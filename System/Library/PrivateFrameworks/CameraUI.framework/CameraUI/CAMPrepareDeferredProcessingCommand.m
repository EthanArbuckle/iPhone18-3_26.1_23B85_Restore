@interface CAMPrepareDeferredProcessingCommand
- (CAMPrepareDeferredProcessingCommand)initWithRequest:(id)a3 coordinator:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMPrepareDeferredProcessingCommand

- (CAMPrepareDeferredProcessingCommand)initWithRequest:(id)a3 coordinator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CAMPrepareDeferredProcessingCommand;
  v9 = [(CAMCaptureCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->__request, a3);
    objc_storeStrong(&v10->__deferredProcessingCoordinator, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = CAMPrepareDeferredProcessingCommand;
  v4 = [(CAMCaptureCommand *)&v10 copyWithZone:a3];
  v5 = [(CAMPrepareDeferredProcessingCommand *)self _request];
  v6 = v4[3];
  v4[3] = v5;

  v7 = [(CAMPrepareDeferredProcessingCommand *)self _deferredProcessingCoordinator];
  v8 = v4[4];
  v4[4] = v7;

  return v4;
}

- (void)executeWithContext:(id)a3
{
  v4 = a3;
  v9 = [(CAMPrepareDeferredProcessingCommand *)self _request];
  v5 = [v9 capturePhotoSettingsWithContext:v4];
  v6 = [v4 currentStillImageOutput];

  v7 = [v6 deferredSettingsForCapturingPhotoWithSettings:v5];
  v8 = [(CAMPrepareDeferredProcessingCommand *)self _deferredProcessingCoordinator];
  [v8 prewarmWithPhotoSettings:v7 completionHandler:&__block_literal_global_29];
}

void __58__CAMPrepareDeferredProcessingCommand_executeWithContext___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __58__CAMPrepareDeferredProcessingCommand_executeWithContext___block_invoke_cold_1(v4, v5);
    }
  }
}

void __58__CAMPrepareDeferredProcessingCommand_executeWithContext___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Failed to pre-warm deferred processing: %{public}@", &v2, 0xCu);
}

@end