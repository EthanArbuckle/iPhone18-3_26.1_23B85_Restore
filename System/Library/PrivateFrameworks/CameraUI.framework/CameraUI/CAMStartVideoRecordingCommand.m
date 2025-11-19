@interface CAMStartVideoRecordingCommand
- (CAMStartVideoRecordingCommand)initWithCoder:(id)a3;
- (CAMStartVideoRecordingCommand)initWithRequest:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)_videoOrientationForCaptureOrientation:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMStartVideoRecordingCommand

- (CAMStartVideoRecordingCommand)initWithRequest:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CAMStartVideoRecordingCommand;
  v6 = [(CAMCaptureCommand *)&v10 initWithSubcommands:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__request, a3);
    v8 = v7;
  }

  return v7;
}

- (CAMStartVideoRecordingCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CAMStartVideoRecordingCommand;
  v5 = [(CAMCaptureCommand *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"CAMStartVideoRecordingCommandRequest"];
    request = v5->__request;
    v5->__request = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CAMStartVideoRecordingCommand *)self _request];
  [v4 encodeObject:v5 forKey:@"CAMStartVideoRecordingCommandRequest"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = CAMStartVideoRecordingCommand;
  v4 = [(CAMCaptureCommand *)&v9 copyWithZone:a3];
  v5 = [(CAMStartVideoRecordingCommand *)self _request];
  v6 = [v5 copy];
  v7 = v4[3];
  v4[3] = v6;

  return v4;
}

- (void)executeWithContext:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CAMStartVideoRecordingCommand *)self _request];
  v6 = [v5 localDestinationURL];
  v7 = [v6 path];

  if (!v7)
  {
    v8 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CAMStartVideoRecordingCommand *)v6 executeWithContext:v8];
    }
  }

  v9 = [v4 currentMovieFileOutput];
  v10 = [v9 connectionWithMediaType:*MEMORY[0x1E6987608]];
  v11 = [v5 captureOrientation];
  [v10 setVideoOrientation:{-[CAMStartVideoRecordingCommand _videoOrientationForCaptureOrientation:](self, "_videoOrientationForCaptureOrientation:", v11)}];
  v23 = [MEMORY[0x1E695DF00] date];
  v22 = +[CAMPersistenceController clientVideoMetadataForRequest:withCreationDate:isEV0ForHDR:livePhotoIdentifierOverride:slomoPlayback:](CAMPersistenceController, "clientVideoMetadataForRequest:withCreationDate:isEV0ForHDR:livePhotoIdentifierOverride:slomoPlayback:", v5, v23, 0, 0, [v5 captureMode] == 2);
  [v9 setMetadata:?];
  [v5 maximumRecordedDuration];
  if (v12 > 0.0)
  {
    CMTimeMake(&v26, v12, 1);
    [v9 setMaxRecordedDuration:&v26];
  }

  v13 = [v5 maximumRecordedFileSize];
  if (v13 >= 1)
  {
    [v9 setMaxRecordedFileSize:v13];
  }

  [v9 setMinFreeDiskSpaceLimit:{objc_msgSend(v5, "remainingDiskUsageThreshold")}];
  [v9 setSendsLastVideoPreviewFrame:{objc_msgSend(v5, "shouldGenerateVideoPreviewImage")}];
  v14 = [v5 videoEncodingBehavior];
  v15 = [v9 availableVideoCodecTypes];
  v16 = [CAMCaptureEncodingUtilities selectVideoCodecFromAvailableCodecs:v15 withBehavior:v14];
  v17 = v16;
  if (v16)
  {
    v24 = *MEMORY[0x1E6987CB0];
    v25 = v16;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [v9 setOutputSettings:v18 forConnection:v10];
  }

  [v4 registerVideoCaptureRequest:v5];
  [v4 updateControlEnablementForRecording:1 mode:objc_msgSend(v5 devicePosition:"captureMode") depthSuggestionEnabled:{objc_msgSend(v5, "captureDevicePosition"), 0}];
  [v4 updateLensSelectorForRecording:1 mode:objc_msgSend(v5 devicePosition:{"captureMode"), objc_msgSend(v5, "captureDevicePosition")}];
  v19 = [v4 currentRecordingDelegate];
  [v9 startRecordingToOutputFileURL:v6 recordingDelegate:v19];
  if (v11 >= 5)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected:%ld", v11];
  }

  else
  {
    v20 = off_1E76FB388[v11];
  }

  v21 = os_log_create("com.apple.camera", "Capture");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v26.value) = 138543618;
    *(&v26.value + 4) = v20;
    LOWORD(v26.flags) = 2114;
    *(&v26.flags + 2) = v6;
    _os_log_impl(&dword_1A3640000, v21, OS_LOG_TYPE_DEFAULT, "startRecordingToOutputFileURL: (%{public}@) url=%{public}@", &v26, 0x16u);
  }
}

- (int64_t)_videoOrientationForCaptureOrientation:(int64_t)a3
{
  if ((a3 - 2) >= 3)
  {
    return 1;
  }

  else
  {
    return a3;
  }
}

- (void)executeWithContext:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Missing localDestinationURL while starting video recording %{public}@", &v2, 0xCu);
}

@end