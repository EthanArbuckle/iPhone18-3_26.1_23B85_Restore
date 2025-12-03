@interface CAMStartVideoRecordingCommand
- (CAMStartVideoRecordingCommand)initWithCoder:(id)coder;
- (CAMStartVideoRecordingCommand)initWithRequest:(id)request;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)_videoOrientationForCaptureOrientation:(int64_t)orientation;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMStartVideoRecordingCommand

- (CAMStartVideoRecordingCommand)initWithRequest:(id)request
{
  requestCopy = request;
  v10.receiver = self;
  v10.super_class = CAMStartVideoRecordingCommand;
  v6 = [(CAMCaptureCommand *)&v10 initWithSubcommands:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__request, request);
    v8 = v7;
  }

  return v7;
}

- (CAMStartVideoRecordingCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CAMStartVideoRecordingCommand;
  v5 = [(CAMCaptureCommand *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"CAMStartVideoRecordingCommandRequest"];
    request = v5->__request;
    v5->__request = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  _request = [(CAMStartVideoRecordingCommand *)self _request];
  [coderCopy encodeObject:_request forKey:@"CAMStartVideoRecordingCommandRequest"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = CAMStartVideoRecordingCommand;
  v4 = [(CAMCaptureCommand *)&v9 copyWithZone:zone];
  _request = [(CAMStartVideoRecordingCommand *)self _request];
  v6 = [_request copy];
  v7 = v4[3];
  v4[3] = v6;

  return v4;
}

- (void)executeWithContext:(id)context
{
  v27 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  _request = [(CAMStartVideoRecordingCommand *)self _request];
  localDestinationURL = [_request localDestinationURL];
  path = [localDestinationURL path];

  if (!path)
  {
    v8 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CAMStartVideoRecordingCommand *)localDestinationURL executeWithContext:v8];
    }
  }

  currentMovieFileOutput = [contextCopy currentMovieFileOutput];
  v10 = [currentMovieFileOutput connectionWithMediaType:*MEMORY[0x1E6987608]];
  captureOrientation = [_request captureOrientation];
  [v10 setVideoOrientation:{-[CAMStartVideoRecordingCommand _videoOrientationForCaptureOrientation:](self, "_videoOrientationForCaptureOrientation:", captureOrientation)}];
  date = [MEMORY[0x1E695DF00] date];
  v22 = +[CAMPersistenceController clientVideoMetadataForRequest:withCreationDate:isEV0ForHDR:livePhotoIdentifierOverride:slomoPlayback:](CAMPersistenceController, "clientVideoMetadataForRequest:withCreationDate:isEV0ForHDR:livePhotoIdentifierOverride:slomoPlayback:", _request, date, 0, 0, [_request captureMode] == 2);
  [currentMovieFileOutput setMetadata:?];
  [_request maximumRecordedDuration];
  if (v12 > 0.0)
  {
    CMTimeMake(&v26, v12, 1);
    [currentMovieFileOutput setMaxRecordedDuration:&v26];
  }

  maximumRecordedFileSize = [_request maximumRecordedFileSize];
  if (maximumRecordedFileSize >= 1)
  {
    [currentMovieFileOutput setMaxRecordedFileSize:maximumRecordedFileSize];
  }

  [currentMovieFileOutput setMinFreeDiskSpaceLimit:{objc_msgSend(_request, "remainingDiskUsageThreshold")}];
  [currentMovieFileOutput setSendsLastVideoPreviewFrame:{objc_msgSend(_request, "shouldGenerateVideoPreviewImage")}];
  videoEncodingBehavior = [_request videoEncodingBehavior];
  availableVideoCodecTypes = [currentMovieFileOutput availableVideoCodecTypes];
  v16 = [CAMCaptureEncodingUtilities selectVideoCodecFromAvailableCodecs:availableVideoCodecTypes withBehavior:videoEncodingBehavior];
  v17 = v16;
  if (v16)
  {
    v24 = *MEMORY[0x1E6987CB0];
    v25 = v16;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [currentMovieFileOutput setOutputSettings:v18 forConnection:v10];
  }

  [contextCopy registerVideoCaptureRequest:_request];
  [contextCopy updateControlEnablementForRecording:1 mode:objc_msgSend(_request devicePosition:"captureMode") depthSuggestionEnabled:{objc_msgSend(_request, "captureDevicePosition"), 0}];
  [contextCopy updateLensSelectorForRecording:1 mode:objc_msgSend(_request devicePosition:{"captureMode"), objc_msgSend(_request, "captureDevicePosition")}];
  currentRecordingDelegate = [contextCopy currentRecordingDelegate];
  [currentMovieFileOutput startRecordingToOutputFileURL:localDestinationURL recordingDelegate:currentRecordingDelegate];
  if (captureOrientation >= 5)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected:%ld", captureOrientation];
  }

  else
  {
    v20 = off_1E76FB388[captureOrientation];
  }

  v21 = os_log_create("com.apple.camera", "Capture");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v26.value) = 138543618;
    *(&v26.value + 4) = v20;
    LOWORD(v26.flags) = 2114;
    *(&v26.flags + 2) = localDestinationURL;
    _os_log_impl(&dword_1A3640000, v21, OS_LOG_TYPE_DEFAULT, "startRecordingToOutputFileURL: (%{public}@) url=%{public}@", &v26, 0x16u);
  }
}

- (int64_t)_videoOrientationForCaptureOrientation:(int64_t)orientation
{
  if ((orientation - 2) >= 3)
  {
    return 1;
  }

  else
  {
    return orientation;
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