@interface CAMMirrorOutputVideoCommand
- (CAMMirrorOutputVideoCommand)initWithOutputMirrored:(BOOL)mirrored;
- (id)_debugStringForMirroringMethod:(int64_t)method;
- (id)_debugStringForSupportedMirroringMethods:(id)methods;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setVideoMirrored:(BOOL)mirrored forOutput:(id)output requirePhysicalFlip:(BOOL)flip;
- (void)executeWithContext:(id)context;
@end

@implementation CAMMirrorOutputVideoCommand

- (CAMMirrorOutputVideoCommand)initWithOutputMirrored:(BOOL)mirrored
{
  v8.receiver = self;
  v8.super_class = CAMMirrorOutputVideoCommand;
  v4 = [(CAMCaptureCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_outputMirrored = mirrored;
    v6 = v4;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CAMMirrorOutputVideoCommand;
  v4 = [(CAMCaptureCommand *)&v6 copyWithZone:zone];
  v4[24] = [(CAMMirrorOutputVideoCommand *)self isOutputMirrored];
  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  isOutputMirrored = [(CAMMirrorOutputVideoCommand *)self isOutputMirrored];
  currentStillImageOutput = [contextCopy currentStillImageOutput];
  currentMovieFileOutput = [contextCopy currentMovieFileOutput];

  if (isOutputMirrored)
  {
    isMovieRecordingEnabled = [currentStillImageOutput isMovieRecordingEnabled];
  }

  else
  {
    isMovieRecordingEnabled = 0;
  }

  [(CAMMirrorOutputVideoCommand *)self _setVideoMirrored:isOutputMirrored forOutput:currentStillImageOutput requirePhysicalFlip:isMovieRecordingEnabled];
  [(CAMMirrorOutputVideoCommand *)self _setVideoMirrored:isOutputMirrored forOutput:currentMovieFileOutput requirePhysicalFlip:isOutputMirrored];
}

- (void)_setVideoMirrored:(BOOL)mirrored forOutput:(id)output requirePhysicalFlip:(BOOL)flip
{
  flipCopy = flip;
  mirroredCopy = mirrored;
  v25 = *MEMORY[0x1E69E9840];
  outputCopy = output;
  v9 = outputCopy;
  if (outputCopy)
  {
    v10 = [outputCopy connectionWithMediaType:*MEMORY[0x1E6987608]];
    v11 = v10;
    if (v10)
    {
      if ([v10 isVideoMirroringSupported])
      {
        if (flipCopy)
        {
          v12 = 2;
        }

        else
        {
          v12 = 1;
        }

        supportedVideoMirroringMethodsForMovieRecording = [v11 supportedVideoMirroringMethodsForMovieRecording];
        v14 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
        v15 = [supportedVideoMirroringMethodsForMovieRecording containsObject:v14];

        if (v15)
        {
          [v11 setVideoMirroringMethodForMovieRecording:v12];
        }

        else if (flipCopy)
        {
          v16 = [(CAMMirrorOutputVideoCommand *)self _debugStringForMirroringMethod:2];
          v17 = [(CAMMirrorOutputVideoCommand *)self _debugStringForSupportedMirroringMethods:supportedVideoMirroringMethodsForMovieRecording];
          v18 = os_log_create("com.apple.camera", "Camera");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = 138543874;
            v20 = v16;
            v21 = 2114;
            v22 = v17;
            v23 = 2114;
            v24 = v11;
            _os_log_error_impl(&dword_1A3640000, v18, OS_LOG_TYPE_ERROR, "Unsupported mirroring method %{public}@ (supported=%{public}@) for connection %{public}@", &v19, 0x20u);
          }
        }

        [v11 setAutomaticallyAdjustsVideoMirroring:0];
        [v11 setVideoMirrored:mirroredCopy];
      }

      else
      {
        if (!mirroredCopy)
        {
LABEL_20:

          goto LABEL_21;
        }

        supportedVideoMirroringMethodsForMovieRecording = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(supportedVideoMirroringMethodsForMovieRecording, OS_LOG_TYPE_ERROR))
        {
          [CAMMirrorOutputVideoCommand _setVideoMirrored:v9 forOutput:supportedVideoMirroringMethodsForMovieRecording requirePhysicalFlip:?];
        }
      }
    }

    else
    {
      supportedVideoMirroringMethodsForMovieRecording = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(supportedVideoMirroringMethodsForMovieRecording, OS_LOG_TYPE_ERROR))
      {
        [CAMMirrorOutputVideoCommand _setVideoMirrored:v9 forOutput:supportedVideoMirroringMethodsForMovieRecording requirePhysicalFlip:?];
      }
    }

    goto LABEL_20;
  }

LABEL_21:
}

- (id)_debugStringForMirroringMethod:(int64_t)method
{
  if (method > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_1E76FA938 + method);
  }
}

- (id)_debugStringForSupportedMirroringMethods:(id)methods
{
  v4 = MEMORY[0x1E696AD60];
  methodsCopy = methods;
  v6 = objc_alloc_init(v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__CAMMirrorOutputVideoCommand__debugStringForSupportedMirroringMethods___block_invoke;
  v10[3] = &unk_1E76FA918;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [methodsCopy enumerateObjectsUsingBlock:v10];

  v8 = v7;
  return v7;
}

void __72__CAMMirrorOutputVideoCommand__debugStringForSupportedMirroringMethods___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (a3)
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  v5 = [v8 integerValue];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) _debugStringForMirroringMethod:v5];
  [v6 appendString:v7];
}

- (void)_setVideoMirrored:(uint64_t)a1 forOutput:(NSObject *)a2 requirePhysicalFlip:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Video connection does not support mirroring for output %{public}@", &v2, 0xCu);
}

- (void)_setVideoMirrored:(uint64_t)a1 forOutput:(NSObject *)a2 requirePhysicalFlip:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Failed to find video output connection for %{public}@", &v2, 0xCu);
}

@end