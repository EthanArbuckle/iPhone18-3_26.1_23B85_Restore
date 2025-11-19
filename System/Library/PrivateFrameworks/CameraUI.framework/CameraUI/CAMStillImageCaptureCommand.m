@interface CAMStillImageCaptureCommand
- (CAMStillImageCaptureCommand)initWithCoder:(id)a3;
- (CAMStillImageCaptureCommand)initWithRequest:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)_videoOrientationForCaptureOrientation:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMStillImageCaptureCommand

- (CAMStillImageCaptureCommand)initWithRequest:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CAMStillImageCaptureCommand;
  v6 = [(CAMCaptureCommand *)&v10 initWithSubcommands:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__request, a3);
    v8 = v7;
  }

  return v7;
}

- (CAMStillImageCaptureCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CAMStillImageCaptureCommand;
  v5 = [(CAMCaptureCommand *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"CAMStillImageCaptureCommandRequest"];
    request = v5->__request;
    v5->__request = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CAMStillImageCaptureCommand *)self _request];
  [v4 encodeObject:v5 forKey:@"CAMStillImageCaptureCommandRequest"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = CAMStillImageCaptureCommand;
  v4 = [(CAMCaptureCommand *)&v8 copyWithZone:a3];
  v5 = [(CAMStillImageCaptureCommand *)self _request];
  v6 = v4[3];
  v4[3] = v5;

  return v4;
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

- (void)executeWithContext:(id)a3
{
  v74[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  v6 = [(CAMStillImageCaptureCommand *)self _request];
  v7 = [v4 currentStillImageOutput];
  v8 = [v7 connectionWithMediaType:*MEMORY[0x1E6987608]];
  if ([v8 isVideoOrientationSupported])
  {
    v9 = -[CAMStillImageCaptureCommand _videoOrientationForCaptureOrientation:](self, "_videoOrientationForCaptureOrientation:", [v6 captureOrientation]);
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

  v13 = [v6 ctmCaptureType];
  if (v13 == 2)
  {
    v14 = 0;
    goto LABEL_10;
  }

  if (v13 == 1)
  {
    v14 = 1;
LABEL_10:
    v15 = 1;
    goto LABEL_12;
  }

  v14 = 0;
  v15 = 0;
LABEL_12:
  v16 = [v6 persistenceUUID];
  v17 = [v4 cachedMomentCaptureSettingsForIdentifier:v16];
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
      v22 = [v17 uniqueID];
      v23 = os_log_create("com.apple.camera", "Capture");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [(CAMStillImageCaptureCommand *)v16 executeWithContext:v22, v23];
      }

      [v7 cancelMomentCaptureWithUniqueID:v22];
      v8 = v21;
    }

    else
    {
      if (!v15)
      {
LABEL_28:
        [v6 capturePhotoSettingsWithContext:v4];
        v20 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v18 = 0;
        goto LABEL_29;
      }

      v18 = os_log_create("com.apple.camera", "Capture");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(CAMStillImageCaptureCommand *)v16 executeWithContext:v18];
      }

      v15 = 0;
    }

    goto LABEL_28;
  }

  if (v14)
  {
    [v4 clearCachedMomentCaptureSettingsForIdentifier:v16];
  }

  [v18 photoSettings];
  v20 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  v15 = 1;
LABEL_29:
  if ([v6 needsLivePhotoCaptureResumedOnPhotoOutput:v7])
  {
    [v7 setLivePhotoCaptureSuspended:0];
  }

  if (([v6 isCTMVideo] & 1) == 0)
  {
    if ([v7 isUltraHighResolutionZeroShutterLagEnabled])
    {
      if ([*&v20 photoQualityPrioritization] != 1)
      {
        v24 = [*&v20 maxPhotoDimensions];
        if (v24 != [v7 maxPhotoDimensions])
        {
          v25 = os_log_create("com.apple.camera", "Capture");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            [CAMStillImageCaptureCommand executeWithContext:v25];
          }

          [v7 setUltraHighResolutionZeroShutterLagEnabled:0];
        }
      }
    }
  }

  [v4 registerStillImageCaptureRequest:v6 withSettings:*&v20];
  v26 = [v6 captureOrientation];
  if (v26 >= 5)
  {
    v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected:%ld", v26];
  }

  else
  {
    v61 = off_1E76F82C8[v26];
  }

  v60 = v16;
  if ([*&v20 digitalFlashMode])
  {
    v27 = MEMORY[0x1E696AEC0];
    v28 = [v6 nightMode];
    if (v28 > 2)
    {
      v29 = 0;
    }

    else
    {
      v29 = off_1E76F82F0[v28];
    }

    v30 = [v27 stringWithFormat:@" NightMode%@", v29];
  }

  else
  {
    v30 = &stru_1F1660A30;
  }

  v31 = [v4 currentStillImageDelegate];
  v59 = v31;
  if ((v19 & v15) != 1)
  {
    v43 = v31;
    v44 = CFAbsoluteTimeGetCurrent();
    [v7 capturePhotoWithSettings:*&v20 delegate:v43];
    v45 = CFAbsoluteTimeGetCurrent();
    v46 = CFAbsoluteTimeGetCurrent();
    v32 = os_log_create("com.apple.camera", "Capture");
    v42 = v61;
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_57;
    }

    v47 = [*&v20 uniqueID];
    *buf = 134219266;
    v63 = *&v47;
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
    _os_log_impl(&dword_1A3640000, v32, OS_LOG_TYPE_DEFAULT, v48, buf, 0x3Eu);
    goto LABEL_57;
  }

  if (![v6 isCTMVideo])
  {
    v49 = CFAbsoluteTimeGetCurrent();
    [v7 commitMomentCaptureToPhotoWithUniqueID:{-[NSObject uniqueID](v18, "uniqueID")}];
    v50 = CFAbsoluteTimeGetCurrent();
    v51 = CFAbsoluteTimeGetCurrent();
    v32 = os_log_create("com.apple.camera", "Capture");
    v42 = v61;
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_57;
    }

    v52 = [*&v20 uniqueID];
    *buf = 134219266;
    v63 = *&v52;
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
  v32 = [v4 currentMomentCaptureMovieRecordingDelegate];
  v33 = [MEMORY[0x1E69871F0] movieRecordingSettingsFromMomentCaptureSettings:v18];
  v57 = [v6 localCTMVideoDestinationURL];
  [(__CFString *)v33 setMovieFileURL:?];
  [v6 videoEncodingBehavior];
  v34 = *MEMORY[0x1E6987CF0];
  v74[0] = *MEMORY[0x1E6987CE8];
  v74[1] = v34;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:2];
  v55 = [CAMCaptureEncodingUtilities selectVideoCodecFromAvailableCodecs:"selectVideoCodecFromAvailableCodecs:withBehavior:" withBehavior:?];
  [(__CFString *)v33 setVideoCodecType:?];
  v35 = [MEMORY[0x1E695DF00] date];
  v53 = [v6 location];
  v54 = v35;
  v36 = [CAMPersistenceController clientVideoMetadataForLocation:"clientVideoMetadataForLocation:withCreationDate:" withCreationDate:?];
  [(__CFString *)v33 setMovieMetadata:v36];
  v37 = CFAbsoluteTimeGetCurrent();
  [v7 commitMomentCaptureWithUniqueID:-[NSObject uniqueID](v18 toMovieRecordingWithSettings:"uniqueID") delegate:{v33, v32}];
  v38 = CFAbsoluteTimeGetCurrent();
  v39 = CFAbsoluteTimeGetCurrent();
  v40 = os_log_create("com.apple.camera", "Capture");
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = [(__CFString *)v33 uniqueID];
    *buf = 134219010;
    v63 = *&v41;
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