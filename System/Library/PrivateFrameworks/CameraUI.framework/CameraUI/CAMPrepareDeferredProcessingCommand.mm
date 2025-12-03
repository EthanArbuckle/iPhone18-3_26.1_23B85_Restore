@interface CAMPrepareDeferredProcessingCommand
- (CAMPrepareDeferredProcessingCommand)initWithRequest:(id)request coordinator:(id)coordinator;
- (id)copyWithZone:(_NSZone *)zone;
- (void)executeWithContext:(id)context;
@end

@implementation CAMPrepareDeferredProcessingCommand

- (CAMPrepareDeferredProcessingCommand)initWithRequest:(id)request coordinator:(id)coordinator
{
  requestCopy = request;
  coordinatorCopy = coordinator;
  v12.receiver = self;
  v12.super_class = CAMPrepareDeferredProcessingCommand;
  v9 = [(CAMCaptureCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->__request, request);
    objc_storeStrong(&v10->__deferredProcessingCoordinator, coordinator);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = CAMPrepareDeferredProcessingCommand;
  v4 = [(CAMCaptureCommand *)&v10 copyWithZone:zone];
  _request = [(CAMPrepareDeferredProcessingCommand *)self _request];
  v6 = v4[3];
  v4[3] = _request;

  _deferredProcessingCoordinator = [(CAMPrepareDeferredProcessingCommand *)self _deferredProcessingCoordinator];
  v8 = v4[4];
  v4[4] = _deferredProcessingCoordinator;

  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  _request = [(CAMPrepareDeferredProcessingCommand *)self _request];
  v5 = [_request capturePhotoSettingsWithContext:contextCopy];
  currentStillImageOutput = [contextCopy currentStillImageOutput];

  v7 = [currentStillImageOutput deferredSettingsForCapturingPhotoWithSettings:v5];
  _deferredProcessingCoordinator = [(CAMPrepareDeferredProcessingCommand *)self _deferredProcessingCoordinator];
  [_deferredProcessingCoordinator prewarmWithPhotoSettings:v7 completionHandler:&__block_literal_global_29];
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