@interface CAMStillImageCaptureCommand
- (CAMStillImageCaptureCommand)initWithCoder:(id)coder;
- (CAMStillImageCaptureCommand)initWithRequest:(id)request;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)_videoOrientationForCaptureOrientation:(int64_t)orientation;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMStillImageCaptureCommand

- (CAMStillImageCaptureCommand)initWithRequest:(id)request
{
  requestCopy = request;
  v10.receiver = self;
  v10.super_class = CAMStillImageCaptureCommand;
  v6 = [(CAMCaptureCommand *)&v10 initWithSubcommands:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__request, request);
    v8 = v7;
  }

  return v7;
}

- (CAMStillImageCaptureCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CAMStillImageCaptureCommand;
  v5 = [(CAMCaptureCommand *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"CAMStillImageCaptureCommandRequest"];
    request = v5->__request;
    v5->__request = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  _request = [(CAMStillImageCaptureCommand *)self _request];
  [coderCopy encodeObject:_request forKey:@"CAMStillImageCaptureCommandRequest"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CAMStillImageCaptureCommand;
  v4 = [(CAMCaptureCommand *)&v8 copyWithZone:zone];
  _request = [(CAMStillImageCaptureCommand *)self _request];
  v6 = v4[3];
  v4[3] = _request;

  return v4;
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

- (void)executeWithContext:(id)context
{
  v74[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  Current = CFAbsoluteTimeGetCurrent();
  _request = [(CAMStillImageCaptureCommand *)self _request];
  currentStillImageOutput = [contextCopy currentStillImageOutput];
  v8 = [currentStillImageOutput connectionWithMediaType:*MEMORY[0x1E6987608]];
  if ([v8 isVideoOrientationSupported])
  {
    v9 = -[CAMStillImageCaptureCommand _videoOrientationForCaptureOrientation:](self, "_videoOrientationForCaptureOrientation:", [_request captureOrientation]);
    v10 = CFAbsoluteTimeGetCurrent();
    [v8 setVideoOrientation:v9];
    v11 = CFAbsoluteTimeGetCurrent() - v10;
    if (v11 > 0.2)
    {
      v12 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v63 = v11;
        _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "Call to [AVCaptureConnection setVideoOrientation:] took %.3fs", buf, 0xCu);
      }
    }
  }

  ctmCaptureType = [_request ctmCaptureType];
  if (ctmCaptureType == 2)
  {
    v14 = 0;
    goto LABEL_10;
  }

  if (ctmCaptureType == 1)
  {
    v14 = 1;
LABEL_10:
    v15 = 1;
    goto LABEL_12;
  }

  v14 = 0;
  v15 = 0;
LABEL_12:
  persistenceUUID = [_request persistenceUUID];
  v17 = [contextCopy cachedMomentCaptureSettingsForIdentifier:persistenceUUID];
  v18 = v17;
  if (v17)
  {
    v19 = v15;
  }

  else
  {
    v19 = 0;
  }

  if (v19 != 1)
  {
    if (v17)
    {
      v21 = v8;
      uniqueID = [v17 uniqueID];
      v23 = os_log_create("com.apple.camera", "Capture");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [(CAMStillImageCaptureCommand *)persistenceUUID executeWithContext:uniqueID, v23];
      }

      [currentStillImageOutput cancelMomentCaptureWithUniqueID:uniqueID];
      v8 = v21;
    }

    else
    {
      if (!v15)
      {
LABEL_28:
        [_request capturePhotoSettingsWithContext:contextCopy];
        v20 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v18 = 0;
        goto LABEL_29;
      }

      v18 = os_log_create("com.apple.camera", "Capture");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(CAMStillImageCaptureCommand *)persistenceUUID executeWithContext:v18];
      }

      v15 = 0;
    }

    goto LABEL_28;
  }

  if (v14)
  {
    [contextCopy clearCachedMomentCaptureSettingsForIdentifier:persistenceUUID];
  }

  [v18 photoSettings];
  v20 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  v15 = 1;
LABEL_29:
  if ([_request needsLivePhotoCaptureResumedOnPhotoOutput:currentStillImageOutput])
  {
    [currentStillImageOutput setLivePhotoCaptureSuspended:0];
  }

  if (([_request isCTMVideo] & 1) == 0)
  {
    if ([currentStillImageOutput isUltraHighResolutionZeroShutterLagEnabled])
    {
      if ([*&v20 photoQualityPrioritization] != 1)
      {
        maxPhotoDimensions = [*&v20 maxPhotoDimensions];
        if (maxPhotoDimensions != [currentStillImageOutput maxPhotoDimensions])
        {
          v25 = os_log_create("com.apple.camera", "Capture");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            [CAMStillImageCaptureCommand executeWithContext:v25];
          }

          [currentStillImageOutput setUltraHighResolutionZeroShutterLagEnabled:0];
        }
      }
    }
  }

  [contextCopy registerStillImageCaptureRequest:_request withSettings:*&v20];
  captureOrientation = [_request captureOrientation];
  if (captureOrientation >= 5)
  {
    v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected:%ld", captureOrientation];
  }

  else
  {
    v61 = off_1E76F82C8[captureOrientation];
  }

  v60 = persistenceUUID;
  if ([*&v20 digitalFlashMode])
  {
    v27 = MEMORY[0x1E696AEC0];
    nightMode = [_request nightMode];
    if (nightMode > 2)
    {
      v29 = 0;
    }

    else
    {
      v29 = off_1E76F82F0[nightMode];
    }

    v30 = [v27 stringWithFormat:@" NightMode%@", v29];
  }

  else
  {
    v30 = &stru_1F1660A30;
  }

  currentStillImageDelegate = [contextCopy currentStillImageDelegate];
  v59 = currentStillImageDelegate;
  if ((v19 & v15) != 1)
  {
    v43 = currentStillImageDelegate;
    v44 = CFAbsoluteTimeGetCurrent();
    [currentStillImageOutput capturePhotoWithSettings:*&v20 delegate:v43];
    v45 = CFAbsoluteTimeGetCurrent();
    v46 = CFAbsoluteTimeGetCurrent();
    currentMomentCaptureMovieRecordingDelegate = os_log_create("com.apple.camera", "Capture");
    v42 = v61;
    if (!os_log_type_enabled(currentMomentCaptureMovieRecordingDelegate, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_57;
    }

    uniqueID2 = [*&v20 uniqueID];
    *buf = 134219266;
    v63 = *&uniqueID2;
    v64 = 2114;
    v65 = v30;
    v66 = 2114;
    v67 = v61;
    v68 = 2114;
    v69 = v20;
    v70 = 2048;
    v71 = v46 - v44;
    v72 = 2048;
    v73 = v45 - Current;
    v48 = "captureID:%lld Called capturePhotoWithSettings:%{public}@ (%{public}@) %{public}@. Took %.3fs of %.3fs command time";
LABEL_56:
    _os_log_impl(&dword_1A3640000, currentMomentCaptureMovieRecordingDelegate, OS_LOG_TYPE_DEFAULT, v48, buf, 0x3Eu);
    goto LABEL_57;
  }

  if (![_request isCTMVideo])
  {
    v49 = CFAbsoluteTimeGetCurrent();
    [currentStillImageOutput commitMomentCaptureToPhotoWithUniqueID:{-[NSObject uniqueID](v18, "uniqueID")}];
    v50 = CFAbsoluteTimeGetCurrent();
    v51 = CFAbsoluteTimeGetCurrent();
    currentMomentCaptureMovieRecordingDelegate = os_log_create("com.apple.camera", "Capture");
    v42 = v61;
    if (!os_log_type_enabled(currentMomentCaptureMovieRecordingDelegate, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_57;
    }

    uniqueID3 = [*&v20 uniqueID];
    *buf = 134219266;
    v63 = *&uniqueID3;
    v64 = 2114;
    v65 = v30;
    v66 = 2114;
    v67 = v61;
    v68 = 2114;
    v69 = v20;
    v70 = 2048;
    v71 = v51 - v49;
    v72 = 2048;
    v73 = v50 - Current;
    v48 = "captureID:%lld Called commitMomentCapture as Photo:%{public}@ (%{public}@) %{public}@. Took %.3fs of %.3fs command time";
    goto LABEL_56;
  }

  v58 = v8;
  currentMomentCaptureMovieRecordingDelegate = [contextCopy currentMomentCaptureMovieRecordingDelegate];
  v33 = [MEMORY[0x1E69871F0] movieRecordingSettingsFromMomentCaptureSettings:v18];
  localCTMVideoDestinationURL = [_request localCTMVideoDestinationURL];
  [(__CFString *)v33 setMovieFileURL:?];
  [_request videoEncodingBehavior];
  v34 = *MEMORY[0x1E6987CF0];
  v74[0] = *MEMORY[0x1E6987CE8];
  v74[1] = v34;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:2];
  v55 = [CAMCaptureEncodingUtilities selectVideoCodecFromAvailableCodecs:"selectVideoCodecFromAvailableCodecs:withBehavior:" withBehavior:?];
  [(__CFString *)v33 setVideoCodecType:?];
  date = [MEMORY[0x1E695DF00] date];
  location = [_request location];
  v54 = date;
  v36 = [CAMPersistenceController clientVideoMetadataForLocation:"clientVideoMetadataForLocation:withCreationDate:" withCreationDate:?];
  [(__CFString *)v33 setMovieMetadata:v36];
  v37 = CFAbsoluteTimeGetCurrent();
  [currentStillImageOutput commitMomentCaptureWithUniqueID:-[NSObject uniqueID](v18 toMovieRecordingWithSettings:"uniqueID") delegate:{v33, currentMomentCaptureMovieRecordingDelegate}];
  v38 = CFAbsoluteTimeGetCurrent();
  v39 = CFAbsoluteTimeGetCurrent();
  v40 = os_log_create("com.apple.camera", "Capture");
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID4 = [(__CFString *)v33 uniqueID];
    *buf = 134219010;
    v63 = *&uniqueID4;
    v64 = 2114;
    v65 = v61;
    v66 = 2114;
    v67 = v33;
    v68 = 2048;
    v69 = v39 - v37;
    v70 = 2048;
    v71 = v38 - Current;
    _os_log_impl(&dword_1A3640000, v40, OS_LOG_TYPE_DEFAULT, "captureID:%lld Called commitMomentCapture as Video: (%{public}@) %{public}@. Took %.3fs of %.3fs command time", buf, 0x34u);
  }

  v8 = v58;
  v42 = v61;
LABEL_57:
}

- (void)executeWithContext:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Failed to find moment settings for identifier %{public}@", &v2, 0xCu);
}

- (void)executeWithContext:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134349314;
  v4 = a2;
  v5 = 2114;
  v6 = a1;
  _os_log_error_impl(&dword_1A3640000, log, OS_LOG_TYPE_ERROR, "Non-moment capture requested, canceling moment capture %{public}lld for identifier %{public}@", &v3, 0x16u);
}

@end