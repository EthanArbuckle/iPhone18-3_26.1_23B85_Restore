@interface CAMModeAndDeviceCommand
- (BOOL)_shouldEnableLivePhotoCaptureForMode:(int64_t)a3 device:(int64_t)a4;
- (CAMModeAndDeviceCommand)initWithCoder:(id)a3;
- (CAMModeAndDeviceCommand)initWithGraphConfiguration:(id)a3 minimumExecutionTime:(double)a4 requestID:(int)a5 outputToExternalStorage:(BOOL)a6;
- (id)_desiredConnectionWithCaptureEngineSecondaryDevice:(id)a3 secondaryVideoPreviewLayer:(id)a4;
- (id)_desiredPrimaryInputsWithContext:(id)a3 captureEngineDevice:(id)a4;
- (id)_desiredSecondaryInputsWithCaptureEngineSecondaryDevice:(id)a3;
- (id)_existingInputsWithContext:(id)a3 without:(id)a4;
- (id)_existingOutputsWithContext:(id)a3 without:(id)a4;
- (id)_existingVideoPreviewLayersWithContext:(id)a3 without:(id)a4;
- (id)_primaryEngineDeviceWithContext:(id)a3 graphConfiguration:(id)a4 resolvedDevice:(int64_t *)a5;
- (id)_secondaryEngineDeviceWithContext:(id)a3 graphConfiguration:(id)a4 resolvedDevice:(int64_t *)a5;
- (id)_secondaryInputsBecomingPrimaryWithContext:(id)a3 desiredPrimaryInputs:(id)a4;
- (id)_specificEncodingBehaviorCommandForGraphConfiguration:(id)a3;
- (id)_specificFramerateCommandForGraphConfiguration:(id)a3 withContext:(id)a4 configureSecondaryDevice:(BOOL)a5;
- (id)_specificPreparePhotoSettingsCommandForGraphConfiguration:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sessionModificationLogReason;
- (id)userInfo;
- (void)_performPostConfigurationSanityCheckForGraphConfiguration:(id)a3 withContext:(id)a4;
- (void)_performPostConfigurationSetupForGraphConfiguration:(id)a3 withContext:(id)a4;
- (void)_sanitizeDeviceUsingContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMModeAndDeviceCommand

- (id)userInfo
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(CAMModeAndDeviceCommand *)self _desiredGraphConfiguration];
  [v3 setObject:v4 forKey:@"CAMModeAndDeviceCommandDesiredConfiguration"];
  v5 = [(CAMModeAndDeviceCommand *)self _requestID];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:v5];
  [v3 setObject:v6 forKeyedSubscript:@"CAMModeAndDeviceCommandRequestID"];

  v7 = [(CAMModeAndDeviceCommand *)self _configurationError];
  if (v7)
  {
    [v3 setObject:v7 forKey:@"CAMModeAndDeviceConfigurationError"];
  }

  return v3;
}

- (CAMModeAndDeviceCommand)initWithGraphConfiguration:(id)a3 minimumExecutionTime:(double)a4 requestID:(int)a5 outputToExternalStorage:(BOOL)a6
{
  v11 = a3;
  v18.receiver = self;
  v18.super_class = CAMModeAndDeviceCommand;
  v12 = [(CAMCaptureCommand *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->__desiredGraphConfiguration, a3);
    resolvedGraphConfiguration = v13->__resolvedGraphConfiguration;
    v13->__resolvedGraphConfiguration = 0;

    v13->__minimumExecutionTime = a4;
    v13->__requestID = a5;
    configurationError = v13->__configurationError;
    v13->__configurationError = 0;

    v13->__outputToExternalStorage = a6;
    v16 = v13;
  }

  return v13;
}

- (CAMModeAndDeviceCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CAMModeAndDeviceCommand;
  v5 = [(CAMCaptureCommand *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"CAMModeAndDeviceCommandDesiredConfiguration"];
    desiredGraphConfiguration = v5->__desiredGraphConfiguration;
    v5->__desiredGraphConfiguration = v6;

    v8 = [v4 decodeObjectForKey:@"CAMModeAndDeviceCommandResolvedConfiguration"];
    resolvedGraphConfiguration = v5->__resolvedGraphConfiguration;
    v5->__resolvedGraphConfiguration = v8;

    [v4 decodeDoubleForKey:@"CAMModeAndDeviceCommandMinimumExecutionTime"];
    v5->__minimumExecutionTime = v10;
    v5->__requestID = [v4 decodeInt32ForKey:@"CAMModeAndDeviceCommandRequestID"];
    v11 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CAMModeAndDeviceCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v7 encodeWithCoder:v4];
  v5 = [(CAMModeAndDeviceCommand *)self _desiredGraphConfiguration:v7.receiver];
  [v4 encodeObject:v5 forKey:@"CAMModeAndDeviceCommandDesiredConfiguration"];

  v6 = [(CAMModeAndDeviceCommand *)self _resolvedGraphConfiguration];
  [v4 encodeObject:v6 forKey:@"CAMModeAndDeviceCommandResolvedConfiguration"];

  [(CAMModeAndDeviceCommand *)self _minimumExecutionTime];
  [v4 encodeDouble:@"CAMModeAndDeviceCommandMinimumExecutionTime" forKey:?];
  [v4 encodeInt32:-[CAMModeAndDeviceCommand _requestID](self forKey:{"_requestID"), @"CAMModeAndDeviceCommandRequestID"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = CAMModeAndDeviceCommand;
  v4 = [(CAMCaptureCommand *)&v11 copyWithZone:a3];
  v5 = [(CAMModeAndDeviceCommand *)self _desiredGraphConfiguration];
  v6 = v4[4];
  v4[4] = v5;

  v7 = [(CAMModeAndDeviceCommand *)self _resolvedGraphConfiguration];
  v8 = v4[5];
  v4[5] = v7;

  [(CAMModeAndDeviceCommand *)self _minimumExecutionTime];
  v4[6] = v9;
  *(v4 + 7) = [(CAMModeAndDeviceCommand *)self _requestID];
  return v4;
}

- (id)sessionModificationLogReason
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CAMModeAndDeviceCommand *)self _desiredGraphConfiguration];
  v5 = [v4 shortDescription];
  v6 = [v3 stringWithFormat:@"%@ (requestID=%d)", v5, -[CAMModeAndDeviceCommand _requestID](self, "_requestID")];

  return v6;
}

- (void)_sanitizeDeviceUsingContext:(id)a3
{
  v4 = a3;
  v5 = +[CAMCaptureCapabilities capabilities];
  v6 = [(CAMModeAndDeviceCommand *)self _desiredGraphConfiguration];
  v7 = [v6 mode];
  v8 = [v6 device];
  v9 = [v6 videoConfiguration];
  v10 = [v5 sanitizeDesiredDevice:v8 forMode:v7];
  v11 = [v6 videoEncodingBehavior];
  v12 = +[CAMCaptureConfiguration sanitizeVideoConfigurationForDesiredConfiguration:mode:device:trueVideoEnabled:frontRearSimultaneousVideoEnabled:](CAMCaptureConfiguration, "sanitizeVideoConfigurationForDesiredConfiguration:mode:device:trueVideoEnabled:frontRearSimultaneousVideoEnabled:", v9, v7, v10, [v6 trueVideoEnabled], objc_msgSend(v6, "frontRearSimultaneousVideoEnabled"));
  v66 = v10;
  v65 = [v4 videoDeviceForMode:v7 desiredDevice:v10 videoConfiguration:v12 videoStabilizationStrength:objc_msgSend(v6 frontRearSimultaneousVideoEnabled:"videoStabilizationStrength") resolvedDevice:{objc_msgSend(v6, "frontRearSimultaneousVideoEnabled"), &v66}];

  v13 = v66;
  v15 = v7 == 2 && v12 == 0;
  if ([v5 isSpatialModeSupported])
  {
    v17 = v7 == 8 && v12 == 0;
  }

  else
  {
    v17 = 0;
  }

  if ([v6 videoDynamicAspectRatio])
  {
    v18 = v12 == 0;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  v63 = self;
  v64 = v5;
  v61 = v7;
  if (v15 || v17 || v19)
  {
    v20 = [(CAMModeAndDeviceCommand *)self _outputToExternalStorage];
    v21 = [v6 prefersHDR10BitVideo];
    LOBYTE(v30) = [v6 frontRearSimultaneousVideoEnabled];
    v62 = [v5 resolvedVideoConfigurationForMode:v7 device:v13 videoEncodingBehavior:v11 videoConfiguration:v12 outputToExternalStorage:v20 prefersHDR10BitVideo:v21 frontRearSimultaneousVideoEnabled:v30];
  }

  else
  {
    v62 = v12;
  }

  v60 = [CAMCaptureGraphConfiguration alloc];
  v59 = [v6 macroMode];
  v58 = [v6 audioConfiguration];
  v57 = [v6 mixAudioWithOthers];
  v56 = [v6 windNoiseRemovalEnabled];
  v55 = [v6 previewConfiguration];
  v54 = [v6 previewSampleBufferVideoFormat];
  v53 = [v6 previewFilters];
  v52 = [v6 videoThumbnailOutputConfiguration];
  v51 = [v6 photoEncodingBehavior];
  v50 = [v6 videoEncodingBehavior];
  v49 = [v6 enableAutoFPSVideo];
  v48 = [v6 isVideoHDRSuspended];
  v47 = [v6 aspectRatioCrop];
  v46 = [v6 photoQualityPrioritization];
  v45 = [v6 isCaptureMirrored];
  v44 = [v6 enableRAWCaptureIfSupported];
  v43 = [v6 semanticStyleSupport];
  v42 = [v6 previewSemanticStyle];
  v41 = [v6 smartStyles];
  v40 = [v6 enableContentAwareDistortionCorrection];
  v39 = [v6 enableResponsiveShutter];
  v38 = [v6 suspendLivePhotoCapture];
  v37 = [v6 videoStabilizationStrength];
  v36 = [v6 maximumPhotoResolution];
  v22 = [v6 colorSpace];
  v23 = [v6 isVideoBinned];
  v24 = [v6 enableDepthSuggestion];
  v25 = [v6 enableZoomPIP];
  v26 = [v6 customLensGroup];
  v27 = [v6 trueVideoEnabled];
  v28 = [v6 prefersHDR10BitVideo];
  BYTE2(v35) = [v6 frontRearSimultaneousVideoEnabled];
  BYTE1(v35) = v28;
  LOBYTE(v35) = v27;
  BYTE2(v34) = v25;
  BYTE1(v34) = v24;
  LOBYTE(v34) = v23;
  BYTE2(v33) = v38;
  BYTE1(v33) = v39;
  LOBYTE(v33) = v40;
  BYTE1(v32) = v44;
  LOBYTE(v32) = v45;
  BYTE1(v31) = v48;
  LOBYTE(v31) = v49;
  LOBYTE(v30) = v56;
  v29 = -[CAMCaptureGraphConfiguration initWithCaptureMode:captureDevice:macroMode:videoConfiguration:audioConfiguration:mixAudioWithOthers:windNoiseRemovalEnabled:previewConfiguration:previewSampleBufferVideoFormat:previewFilters:videoThumbnailOutputConfiguration:photoEncodingBehavior:videoEncodingBehavior:enableAutoFPSVideo:videoHDRSuspended:aspectRatioCrop:photoQualityPrioritization:captureMirrored:enableRAWCaptureIfSupported:semanticStyleSupport:previewSemanticStyle:smartStyles:enableContentAwareDistortionCorrection:enableResponsiveShutter:suspendLivePhotoCapture:videoStabilizationStrength:maximumPhotoResolution:colorSpace:videoBinned:enableDepthSuggestion:enableZoomPIP:customLensGroup:trueVideoEnabled:prefersHDR10BitVideo:frontRearSimultaneousVideoEnabled:videoDynamicAspectRatio:smartFramingFieldOfView:](v60, "initWithCaptureMode:captureDevice:macroMode:videoConfiguration:audioConfiguration:mixAudioWithOthers:windNoiseRemovalEnabled:previewConfiguration:previewSampleBufferVideoFormat:previewFilters:videoThumbnailOutputConfiguration:photoEncodingBehavior:videoEncodingBehavior:enableAutoFPSVideo:videoHDRSuspended:aspectRatioCrop:photoQualityPrioritization:captureMirrored:enableRAWCaptureIfSupported:semanticStyleSupport:previewSemanticStyle:smartStyles:enableContentAwareDistortionCorrection:enableResponsiveShutter:suspendLivePhotoCapture:videoStabilizationStrength:maximumPhotoResolution:colorSpace:videoBinned:enableDepthSuggestion:enableZoomPIP:customLensGroup:trueVideoEnabled:prefersHDR10BitVideo:frontRearSimultaneousVideoEnabled:videoDynamicAspectRatio:smartFramingFieldOfView:", v61, v13, v59, v62, v58, v57, v30, v55, v54, v53, v52, v51, v50, v31, v47, v46, v32, v43, v42, v41, v33, v37, v36, v22, v34, v26, v35, [v6 videoDynamicAspectRatio], objc_msgSend(v6, "smartFramingFieldOfView"));

  [(CAMModeAndDeviceCommand *)v63 _setResolvedGraphConfiguration:v29];
}

- (void)executeWithContext:(id)a3
{
  v88 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(CAMModeAndDeviceCommand *)self _sanitizeDeviceUsingContext:v4];
  v5 = [(CAMModeAndDeviceCommand *)self _resolvedGraphConfiguration];
  v6 = [v5 device];
  v7 = [v4 currentCaptureSession];
  v81 = v6;
  v8 = [(CAMModeAndDeviceCommand *)self _primaryEngineDeviceWithContext:v4 graphConfiguration:v5 resolvedDevice:&v81];
  if (v81 != v6)
  {
    v9 = os_log_create("com.apple.camera", "CaptureSession");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CAMModeAndDeviceCommand *)&v81 executeWithContext:v6, v9];
    }
  }

  v80 = [v8 captureDevice];
  v10 = [v8 videoDeviceFormatForGraphConfiguration:v5 captureSession:v7 deviceIsSecondary:0];
  v11 = [v8 videoDevicePresetForGraphConfiguration:v5 captureSession:v7];
  v12 = v11;
  if (v10 && v11)
  {
    v13 = os_log_create("com.apple.camera", "CaptureSession");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(CAMModeAndDeviceCommand *)v13 executeWithContext:v14, v15, v16, v17, v18, v19, v20];
    }
  }

  else
  {
    if (v10 | v11)
    {
      goto LABEL_13;
    }

    v13 = os_log_create("com.apple.camera", "CaptureSession");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(CAMModeAndDeviceCommand *)v13 executeWithContext:v21, v22, v23, v24, v25, v26, v27];
    }
  }

LABEL_13:
  v79 = v8;
  v28 = [(CAMModeAndDeviceCommand *)self _desiredPrimaryInputsWithContext:v4 captureEngineDevice:v8];
  v29 = [(CAMModeAndDeviceCommand *)self _existingInputsWithContext:v4 without:v28];
  v30 = [(CAMModeAndDeviceCommand *)self _secondaryInputsBecomingPrimaryWithContext:v4 desiredPrimaryInputs:v28];
  v31 = [MEMORY[0x1E695DF70] arrayWithArray:v29];
  v75 = v30;
  [v31 addObjectsFromArray:v30];
  if ([v31 count])
  {
    v32 = os_log_create("com.apple.camera", "CaptureSession");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      [v31 componentsJoinedByString:{@", "}];
      v69 = v31;
      v33 = v29;
      v35 = v34 = v28;
      *buf = 138543362;
      v87 = v35;
      _os_log_impl(&dword_1A3640000, v32, OS_LOG_TYPE_DEFAULT, "Removing inputs: %{public}@", buf, 0xCu);

      v28 = v34;
      v29 = v33;
      v31 = v69;
    }
  }

  [v7 cam_removeInputs:v31];
  if (v10 || !v12)
  {
    v36 = *MEMORY[0x1E6986AF0];

    v12 = v36;
  }

  if ([v80 supportsAVCaptureSessionPreset:v12] && objc_msgSend(v7, "canSetSessionPreset:", v12))
  {
    [v7 setSessionPreset:v12];
  }

  else
  {
    v37 = os_log_create("com.apple.camera", "CaptureSession");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [(CAMModeAndDeviceCommand *)v12 executeWithContext:v80, v37];
    }
  }

  v76 = v28;
  [v7 cam_ensureInputs:v28];
  if (v10)
  {
    [v80 setActiveFormat:v10];
  }

  v74 = objc_alloc_init(CAMResetVideoMinFrameDurationOverrideCommand);
  [(CAMCaptureCommand *)self addSubcommand:?];
  if (v10)
  {
    if ([v80 isAutoVideoFrameRateEnabled])
    {
      v38 = [[CAMAutoFPSVideoCommand alloc] initWithAutoFPSVideoEnabled:0];
      [(CAMCaptureCommand *)self addSubcommand:v38];
    }

    v39 = [(CAMModeAndDeviceCommand *)self _specificFramerateCommandForGraphConfiguration:v5 withContext:v4 configureSecondaryDevice:0];
    if (v39)
    {
      [(CAMCaptureCommand *)self addSubcommand:v39];
    }
  }

  v77 = v12;
  v78 = v10;
  v40 = [v4 outputsForGraphConfiguration:v5];
  v72 = [(CAMModeAndDeviceCommand *)self _existingOutputsWithContext:v4 without:v40];
  v73 = v40;
  [v7 cam_ensureOutputs:v40 whileRemoving:?];
  v41 = [v4 primaryVideoPreviewLayerForGraphConfiguration:v5];
  v85 = v41;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
  v43 = [(CAMModeAndDeviceCommand *)self _existingVideoPreviewLayersWithContext:v4 without:v42];

  v84 = v41;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
  v71 = v43;
  [v7 cam_ensureVideoPreviewLayers:v44 withConnections:1 whileRemoving:v43];

  buf[0] = 0;
  [v5 secondaryDevice:buf];
  if (buf[0] == 1)
  {
    v68 = v29;
    v45 = [(CAMModeAndDeviceCommand *)self _secondaryEngineDeviceWithContext:v4 graphConfiguration:v5 resolvedDevice:&v81];
    v67 = [(CAMModeAndDeviceCommand *)self _desiredSecondaryInputsWithCaptureEngineSecondaryDevice:v45];
    [v7 cam_ensureInputs:? exclusively:? withConnections:?];
    v46 = [v45 captureDevice];
    v47 = [v45 videoDeviceFormatForGraphConfiguration:v5 captureSession:v7 deviceIsSecondary:1];
    v66 = v46;
    if (v47)
    {
      [v46 setActiveFormat:v47];
    }

    else
    {
      v48 = v31;
      v49 = os_log_create("com.apple.camera", "CaptureSession");
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        [(CAMModeAndDeviceCommand *)v49 executeWithContext:v50, v51, v52, v53, v54, v55, v56];
      }

      v31 = v48;
    }

    v70 = v31;
    v65 = [[CAMResetVideoMinFrameDurationOverrideCommand alloc] initForSecondaryDevice];
    [(CAMCaptureCommand *)self addSubcommand:?];
    if (v47)
    {
      v57 = [[CAMAutoFPSVideoCommand alloc] initWithAutoFPSVideoEnabled:0 configureSecondaryDevice:1];
      [(CAMCaptureCommand *)self addSubcommand:v57];
      v58 = [(CAMModeAndDeviceCommand *)self _specificFramerateCommandForGraphConfiguration:v5 withContext:v4 configureSecondaryDevice:1];
      if (v58)
      {
        [(CAMCaptureCommand *)self addSubcommand:v58];
      }
    }

    v59 = [v4 secondaryVideoPreviewLayerForGraphConfiguration:v5];
    v83 = v59;
    v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
    [v7 cam_ensureVideoPreviewLayers:v60 withConnections:0 whileRemoving:MEMORY[0x1E695E0F0]];

    v61 = [(CAMModeAndDeviceCommand *)self _desiredConnectionWithCaptureEngineSecondaryDevice:v45 secondaryVideoPreviewLayer:v59];
    v82 = v61;
    v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
    [v7 cam_ensureConnections:v62];

    v29 = v68;
    v31 = v70;
  }

  v63 = [v4 controlsForGraphConfiguration:v5 recording:0];
  [v7 cam_ensureControls:v63];
  [(CAMModeAndDeviceCommand *)self _performPostConfigurationSetupForGraphConfiguration:v5 withContext:v4];
  v64 = [[CAMGraphConfigurationInspectionCommand alloc] initWithKnownGraphConfiguration:v5];
  [(CAMCaptureCommand *)self addSubcommand:v64];
  [(CAMModeAndDeviceCommand *)self _performPostConfigurationSanityCheckForGraphConfiguration:v5 withContext:v4];
}

- (id)_primaryEngineDeviceWithContext:(id)a3 graphConfiguration:(id)a4 resolvedDevice:(int64_t *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [v7 mode];
  v10 = [v7 device];
  v11 = [v7 videoConfiguration];
  v12 = [v7 videoStabilizationStrength];
  v13 = [v7 frontRearSimultaneousVideoEnabled];

  v14 = [v8 videoDeviceForMode:v9 desiredDevice:v10 videoConfiguration:v11 videoStabilizationStrength:v12 frontRearSimultaneousVideoEnabled:v13 resolvedDevice:a5];

  return v14;
}

- (id)_secondaryEngineDeviceWithContext:(id)a3 graphConfiguration:(id)a4 resolvedDevice:(int64_t *)a5
{
  v7 = a3;
  v8 = a4;
  v12 = 0;
  v9 = [v8 secondaryDevice:&v12];
  if (v12 == 1)
  {
    v10 = [v7 videoDeviceForMode:objc_msgSend(v8 desiredDevice:"mode") videoConfiguration:v9 videoStabilizationStrength:objc_msgSend(v8 frontRearSimultaneousVideoEnabled:"secondaryDeviceVideoConfiguration") resolvedDevice:{objc_msgSend(v8, "secondaryDeviceVideoStabilizationStrength"), objc_msgSend(v8, "frontRearSimultaneousVideoEnabled"), a5}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_desiredPrimaryInputsWithContext:(id)a3 captureEngineDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CAMModeAndDeviceCommand *)self _resolvedGraphConfiguration];
  v9 = [v8 audioConfiguration];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = [v7 captureDeviceInput];

  if (v11)
  {
    [v10 addObject:v11];
  }

  if (v9)
  {
    v12 = [v6 audioDeviceInput];
    if (v12)
    {
      [v10 addObject:v12];
    }
  }

  return v10;
}

- (id)_desiredSecondaryInputsWithCaptureEngineSecondaryDevice:(id)a3
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 captureDeviceInput];

  if (v6)
  {
    [v5 addObject:v6];
  }

  return v5;
}

- (id)_secondaryInputsBecomingPrimaryWithContext:(id)a3 desiredPrimaryInputs:(id)a4
{
  v5 = a4;
  v6 = [a3 currentSecondaryVideoDeviceInput];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v6 && [v5 containsObject:v6])
  {
    [v7 addObject:v6];
  }

  return v7;
}

- (id)_existingInputsWithContext:(id)a3 without:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 currentVideoDeviceInput];
  v8 = [v6 currentSecondaryVideoDeviceInput];
  v9 = [v6 currentAudioDeviceInput];

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = v10;
  if (v7)
  {
    [v10 addObject:v7];
  }

  if (v8)
  {
    [v11 addObject:v8];
  }

  if (v9)
  {
    [v11 addObject:v9];
  }

  [v11 removeObjectsInArray:v5];

  return v11;
}

- (id)_existingOutputsWithContext:(id)a3 without:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 currentStillImageOutput];
  v8 = [v6 currentMovieFileOutput];
  v9 = [v6 currentPanoramaOutput];
  v10 = [v6 currentMetadataOutput];
  v11 = [v6 currentEffectsPreviewOutput];
  v12 = [v6 currentVideoThumbnailOutput];

  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = v13;
  if (v7)
  {
    [v13 addObject:v7];
  }

  if (v8)
  {
    [v14 addObject:v8];
  }

  if (v9)
  {
    [v14 addObject:v9];
  }

  if (v10)
  {
    [v14 addObject:v10];
  }

  if (v11)
  {
    [v14 addObject:v11];
  }

  if (v12)
  {
    [v14 addObject:v12];
  }

  [v14 removeObjectsInArray:v5];

  return v14;
}

- (id)_existingVideoPreviewLayersWithContext:(id)a3 without:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 currentCaptureSession];
  v8 = [v6 currentVideoPreviewLayer];
  v9 = [v6 currentSecondaryVideoPreviewLayer];

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = [v8 session];

  if (v11 == v7)
  {
    [v10 addObject:v8];
  }

  v12 = [v9 session];

  if (v12 == v7)
  {
    [v10 addObject:v9];
  }

  [v10 removeObjectsInArray:v5];

  return v10;
}

- (id)_desiredConnectionWithCaptureEngineSecondaryDevice:(id)a3 secondaryVideoPreviewLayer:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 captureDevice];
  v8 = [v6 captureDeviceInput];

  v9 = *MEMORY[0x1E6987608];
  v10 = [v7 deviceType];
  v11 = [v8 portsWithMediaType:v9 sourceDeviceType:v10 sourceDevicePosition:{objc_msgSend(v7, "position")}];
  v12 = [v11 firstObject];

  v13 = [MEMORY[0x1E6987070] connectionWithInputPort:v12 videoPreviewLayer:v5];

  return v13;
}

- (id)_specificFramerateCommandForGraphConfiguration:(id)a3 withContext:(id)a4 configureSecondaryDevice:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = [v7 mode];
  if (v9 > 9)
  {
    v11 = 0;
  }

  else if (v9 == 3)
  {
    v13 = [CAMPanoramaConfigurationCommand alloc];
    v14 = [v8 currentPanoramaConfiguration];
    v11 = [(CAMPanoramaConfigurationCommand *)v13 initWithConfiguration:v14];
  }

  else
  {
    v10 = [v7 videoConfiguration];
    if (v5 && ([v7 secondaryDeviceUsesPrimaryVideoConfigurationForFrameRate] & 1) == 0)
    {
      v10 = [v7 secondaryDeviceVideoConfiguration];
    }

    v11 = [[CAMVideoFramerateCommand alloc] initWithVideoConfiguration:v10 configureSecondaryDevice:v5];
  }

  return v11;
}

- (id)_specificEncodingBehaviorCommandForGraphConfiguration:(id)a3
{
  v3 = a3;
  if ([v3 mode] == 3)
  {
    v4 = -[CAMPanoramaEncodingCommand initWithPhotoEncodingBehavior:]([CAMPanoramaEncodingCommand alloc], "initWithPhotoEncodingBehavior:", [v3 photoEncodingBehavior]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_specificPreparePhotoSettingsCommandForGraphConfiguration:(id)a3
{
  v3 = a3;
  v4 = [v3 mode];
  if (v4 > 9 || ((1 << v4) & 0x251) == 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [[CAMPreparePhotoSettingsCommand alloc] initWithGraphConfiguration:v3];
  }

  return v6;
}

- (void)_performPostConfigurationSetupForGraphConfiguration:(id)a3 withContext:(id)a4
{
  v5 = a3;
  v6 = [v5 mode];
  v7 = [v5 device];
  v8 = [v5 devicePosition];
  v101[0] = 0;
  [v5 secondaryDevice:v101];
  v9 = +[CAMCaptureCapabilities capabilities];
  v98 = v7;
  v95 = [[CAMIrisVideoRecordingCommand alloc] initWithVideoRecordingEnabled:[(CAMModeAndDeviceCommand *)self _shouldEnableLivePhotoCaptureForMode:v6 device:v7]];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v94 = -[CAMPausePairedVideoRecordingCommand initWithRecordingPaused:]([CAMPausePairedVideoRecordingCommand alloc], "initWithRecordingPaused:", [v5 suspendLivePhotoCapture]);
  [(CAMCaptureCommand *)self addSubcommand:?];
  v10 = -[CAMCTMVideoCaptureEnabledCommand initWithEnabled:]([CAMCTMVideoCaptureEnabledCommand alloc], "initWithEnabled:", [v9 isCTMVideoCaptureSupportedForMode:v6]);
  [(CAMCaptureCommand *)self addSubcommand:v10];
  v92 = [[CAMHighResolutionStillImageCommand alloc] initWithHighResolutionStillImageCaptureEnabled:v6 != 5];
  [(CAMCaptureCommand *)self addSubcommand:?];
  if (v6 == 5)
  {
    v11 = [[CAMTimelapseCaptureRateCommand alloc] initWithDefaultTimelapseCaptureRate];
    [(CAMCaptureCommand *)self addSubcommand:v11];
  }

  v100 = v9;
  v96 = v8;
  v91 = [[CAMImageControlModeCommand alloc] initWithCaptureMode:v6 capturing:0];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v90 = [[CAMPanoramaRetainedBufferHintCommand alloc] initWithPanoramaRetainedBufferHintEnabled:v6 == 3];
  [(CAMCaptureCommand *)self addSubcommand:?];
  if (([v5 enableAutoFPSVideo] & 1) == 0)
  {
    v12 = [[CAMAutoFPSVideoCommand alloc] initWithAutoFPSVideoEnabled:0];
    [(CAMCaptureCommand *)self addSubcommand:v12];
  }

  v89 = [[CAMLowLightTimelapseCommand alloc] initWithTimelapseLowLightCompensationEnabled:v6 == 5];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v88 = [[CAMLowLightBoostCommand alloc] initWithLowLightBoostEnabled:[(CAMModeAndDeviceCommand *)self _wantsLowLightBoostForMode:v6 device:v98]];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v54 = 0x186u >> v6;
  v55 = v6 < 9;
  v13 = -[CAMVideoStabilizationCommand initWithAutomaticVideoStabilizationEnabled:strength:frontRearSimultaneousVideoEnabled:configureSecondaryDevice:]([CAMVideoStabilizationCommand alloc], "initWithAutomaticVideoStabilizationEnabled:strength:frontRearSimultaneousVideoEnabled:configureSecondaryDevice:", v55 & (0x186u >> v6), [v5 videoStabilizationStrength], objc_msgSend(v5, "frontRearSimultaneousVideoEnabled"), 0);
  [(CAMCaptureCommand *)self addSubcommand:v13];
  v86 = [[CAMVideoHDRCommand alloc] initWithVideoHDREnabled:1];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v14 = -[CAMVideoHDRSuspensionCommand initWithVideoHDRSuspended:]([CAMVideoHDRSuspensionCommand alloc], "initWithVideoHDRSuspended:", [v5 isVideoHDRSuspended]);
  [(CAMCaptureCommand *)self addSubcommand:v14];
  v84 = [[CAMTimelapseStabilizationCommand alloc] initWithTimelapseStabilizationEnabled:v6 == 5];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v83 = [[CAMVideoRecordOrientationCommand alloc] initWithEnabled:v6 == 1];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v82 = [[CAMVideoRecordFaceMetadataCommand alloc] initWithEnabled:v6 == 1];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v81 = [[CAMVideoLivePhotoMetadataWritingEnabledCommand alloc] initWithEnabled:[(CAMModeAndDeviceCommand *)self _wantsLivePhotoMetadataInVideosForMode:v6 device:v98]];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v15 = -[CAMSampleBufferVideoFormatOutputCommand initWithSampleBufferVideoFormat:]([CAMSampleBufferVideoFormatOutputCommand alloc], "initWithSampleBufferVideoFormat:", [v5 previewSampleBufferVideoFormat]);
  [(CAMCaptureCommand *)self addSubcommand:v15];
  v16 = [v5 videoThumbnailOutputConfiguration];
  if (v16)
  {
    v17 = [[CAMVideoThumbnailOutputConfigurationCommand alloc] initWithConfiguration:v16];
    [(CAMCaptureCommand *)self addSubcommand:v17];
  }

  v78 = -[CAMPreviewConfigurationCommand initWithPreviewConfiguration:]([CAMPreviewConfigurationCommand alloc], "initWithPreviewConfiguration:", [v5 previewConfiguration]);
  [(CAMCaptureCommand *)self addSubcommand:?];
  v18 = -[CAMColorSpaceCommand initWithColorSpace:]([CAMColorSpaceCommand alloc], "initWithColorSpace:", [v5 colorSpace]);
  [(CAMCaptureCommand *)self addSubcommand:v18];
  v93 = v10;
  v87 = v13;
  v85 = v14;
  v79 = v16;
  v80 = v15;
  v77 = v18;
  if (v6 <= 5)
  {
    if (v6)
    {
      if (v6 == 4)
      {
        v26 = [v100 isLiveFilteringSupported];
        v19 = 0;
        v68 = 0;
        v21 = 0;
        v22 = v100;
        v23 = 0;
        v24 = 0;
        v25 = 0;
      }

      else
      {
        v19 = 0;
        v68 = 0;
        v21 = 0;
        v22 = v100;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
      }
    }

    else
    {
      if ([v100 isPhotoModeDepthSuggestionSupportedForDevicePosition:v96])
      {
        v19 = [v5 enableDepthSuggestion];
      }

      else
      {
        v19 = 0;
      }

      v24 = [v100 previewQualityStillImageFilteringForPhotoModeSupported] & v19;
      v68 = 0;
      v26 = [v100 isLiveFilteringSupported] | v19;
      v21 = v19;
      v22 = v100;
      v23 = v19;
      v25 = v19;
    }
  }

  else if (v6 == 6)
  {
    v24 = [v100 isDeferredPortraitRenderingSupported];
    v19 = 0;
    v68 = 0;
    v21 = 1;
    v22 = v100;
    v23 = 1;
    v25 = 1;
    v26 = 1;
  }

  else
  {
    v19 = 0;
    v20 = v6 != 9 && v6 == 7;
    v68 = v20;
    v21 = v6 == 9;
    v22 = v100;
    v23 = v6 != 9 && v6 == 7;
    v24 = 0;
    v25 = 0;
    v26 = v6 != 9 && v6 == 7;
  }

  v76 = [[CAMPreviewFilteredRenderingEnabledCommand alloc] initWithFilteredRenderingEnabled:v26 & 1];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v75 = [[CAMStillImageFilteredRenderingEnabledCommand alloc] initWithFilteredRenderingEnabled:v25];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v74 = [[CAMStillImagePreviewQualityFilteredRenderingEnabledCommand alloc] initWithPreviewQualityFilteredRenderingEnabled:v24];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v27 = [[CAMPreviewDepthDataDeliveryEnabledCommand alloc] initWithDepthDataDeliveryEnabled:v23];
  [(CAMCaptureCommand *)self addSubcommand:v27];
  v73 = [[CAMStillImageDepthDataDeliveryEnabledCommand alloc] initWithDepthDataDeliveryEnabled:v21];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v72 = [[CAMPortraitAutoSuggestEnabledCommand alloc] initWithPortraitAutoSuggestEnabled:v19];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v71 = [[CAMEnableAvailableSemanticSegmentationMatteTypesCommand alloc] initWithEnabled:v21];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v70 = [[CAMStillImagePortraitEffectsMatteDeliveryEnabledCommand alloc] initWithPortraitEffectsMatteDeliveryEnabled:v21];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v69 = [[CAMVideoDepthDataEnabledCommand alloc] initWithEnabled:v68];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v67 = [v5 previewFilters];
  v66 = [[CAMPreviewFiltersCommand alloc] initWithFilters:v67 captureMode:v6];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v28 = v22;
  if ([v22 smartStylesSupported])
  {
    v29 = [v5 previewSemanticStyle];
    v30 = [[CAMSessionSmartStyleCommand alloc] initWithSmartStyle:v29];
    [(CAMCaptureCommand *)self addSubcommand:v30];
  }

  else
  {
    v29 = -[CAMSemanticStylesEnabledCommand initWithEnabled:]([CAMSemanticStylesEnabledCommand alloc], "initWithEnabled:", [v5 semanticStyleSupport] & 1);
    [(CAMCaptureCommand *)self addSubcommand:v29];
    v31 = [v5 semanticStyleSupport];
    v32 = v31;
    v30 = [[CAMSemanticStylesPreviewEnabledCommand alloc] initWithEnabled:(v31 >> 2) & 1];
    [(CAMCaptureCommand *)self addSubcommand:v30];
    if ((v32 & 4) != 0)
    {
      v33 = [CAMSemanticStylesPreviewStyleCommand alloc];
      v34 = [v5 previewSemanticStyle];
      v35 = [(CAMSemanticStylesPreviewStyleCommand *)v33 initWithStyle:v34];

      [(CAMCaptureCommand *)self addSubcommand:v35];
    }
  }

  v65 = -[CAMPreviewLayerZoomPIPEnabledCommand initWithEnabled:]([CAMPreviewLayerZoomPIPEnabledCommand alloc], "initWithEnabled:", [v5 enableZoomPIP]);
  [(CAMCaptureCommand *)self addSubcommand:?];
  v36 = [(CAMModeAndDeviceCommand *)self _specificEncodingBehaviorCommandForGraphConfiguration:v5];
  if (v36)
  {
    [(CAMCaptureCommand *)self addSubcommand:v36];
  }

  v64 = v36;
  v37 = [(CAMModeAndDeviceCommand *)self _specificPreparePhotoSettingsCommandForGraphConfiguration:v5];
  if (v37)
  {
    [(CAMCaptureCommand *)self addSubcommand:v37];
  }

  v63 = v37;
  v62 = objc_alloc_init(CAMSystemPressureMitigationCommand);
  [(CAMCaptureCommand *)self addSubcommand:?];
  if ([v28 isAutoFPSVideoSupportedForMode:v6 videoConfiguration:objc_msgSend(v5 videoEncodingBehavior:"videoConfiguration") outputToExternalStorage:objc_msgSend(v5 prefersHDR10BitVideo:"videoEncodingBehavior") frontRearSimultaneousVideoEnabled:{-[CAMModeAndDeviceCommand _outputToExternalStorage](self, "_outputToExternalStorage"), objc_msgSend(v5, "prefersHDR10BitVideo"), objc_msgSend(v5, "frontRearSimultaneousVideoEnabled")}])
  {
    v38 = [v5 enableAutoFPSVideo];
  }

  else
  {
    v38 = 0;
  }

  v39 = v96;
  v97 = [[CAMAutoFPSVideoCommand alloc] initWithAutoFPSVideoEnabled:v38];
  [(CAMCaptureCommand *)self addSubcommand:?];
  if (v101[0] == 1)
  {
    v40 = [[CAMAutoFPSVideoCommand alloc] initWithAutoFPSVideoEnabled:v38 configureSecondaryDevice:1];
    [(CAMCaptureCommand *)self addSubcommand:v40];
  }

  v99 = -[CAMSpatialOverCaptureEnabledCommand initWithSpatialOverCaptureEnabled:]([CAMSpatialOverCaptureEnabledCommand alloc], "initWithSpatialOverCaptureEnabled:", [v28 spatialOverCaptureSupportForMode:v6 device:v98] & 1);
  [(CAMCaptureCommand *)self addSubcommand:?];
  v41 = [v28 isAspectRatioCropSupportedForMode:v6 devicePosition:v39];
  v61 = [[CAMNonDestructiveCropEnabledCommand alloc] initWithNonDestructiveCropEnabled:v41];
  [(CAMCaptureCommand *)self addSubcommand:?];
  if (v41)
  {
    v42 = -[CAMNonDestructiveCropAspectRatioCommand initWithAspectRatioCrop:]([CAMNonDestructiveCropAspectRatioCommand alloc], "initWithAspectRatioCrop:", [v5 aspectRatioCrop]);
    [(CAMCaptureCommand *)self addSubcommand:v42];
  }

  v43 = -[CAMDeferredProcessingEnabledCommand initWithDeferredProcessingEnabled:]([CAMDeferredProcessingEnabledCommand alloc], "initWithDeferredProcessingEnabled:", [v28 isDeferredProcessingSupportedForMode:v6 devicePosition:v39]);
  [(CAMCaptureCommand *)self addSubcommand:v43];
  v60 = -[CAMPhotoQualityPrioritizationConfigurationCommand initWithPhotoQualityPrioritization:]([CAMPhotoQualityPrioritizationConfigurationCommand alloc], "initWithPhotoQualityPrioritization:", [v5 photoQualityPrioritization]);
  [(CAMCaptureCommand *)self addSubcommand:?];
  v59 = -[CAMMirrorOutputVideoCommand initWithOutputMirrored:]([CAMMirrorOutputVideoCommand alloc], "initWithOutputMirrored:", [v5 isCaptureMirrored]);
  [(CAMCaptureCommand *)self addSubcommand:?];
  v58 = -[CAMContentAwareDistortionCorrectionCommand initWithContentAwareDistortionCorrectionEnabled:]([CAMContentAwareDistortionCorrectionCommand alloc], "initWithContentAwareDistortionCorrectionEnabled:", [v5 enableContentAwareDistortionCorrection]);
  [(CAMCaptureCommand *)self addSubcommand:?];
  v57 = -[CAMDemosaicedRAWEnabledCommand initWithEnabled:]([CAMDemosaicedRAWEnabledCommand alloc], "initWithEnabled:", [v5 enableRAWCaptureIfSupported]);
  [(CAMCaptureCommand *)self addSubcommand:?];
  v56 = -[CAMResponsiveShutterEnabledCommand initWithEnabled:]([CAMResponsiveShutterEnabledCommand alloc], "initWithEnabled:", [v5 enableResponsiveShutter]);
  [(CAMCaptureCommand *)self addSubcommand:?];
  v44 = -[CAMMaximumPhotoResolutionCommand initWithMaximumPhotoResolution:mode:devicePosition:]([CAMMaximumPhotoResolutionCommand alloc], "initWithMaximumPhotoResolution:mode:devicePosition:", [v5 maximumPhotoResolution], objc_msgSend(v5, "mode"), objc_msgSend(v5, "devicePosition"));
  [(CAMCaptureCommand *)self addSubcommand:v44];
  v45 = [v28 fallbackPrimaryConstituentDeviceSelectionForMode:objc_msgSend(v5 device:"mode") videoConfiguration:objc_msgSend(v5 videoStabilizationStrength:"device") frontRearSimultaneousVideoEnabled:objc_msgSend(v5 macroMode:{"videoConfiguration"), objc_msgSend(v5, "videoStabilizationStrength"), objc_msgSend(v5, "frontRearSimultaneousVideoEnabled"), objc_msgSend(v5, "macroMode")}];
  v46 = [[CAMPrimaryConstituentDeviceSwitchingBehaviorCommand alloc] initWithBehavior:0];
  [(CAMCaptureCommand *)self addSubcommand:v46];
  v47 = [[CAMFallbackPrimaryConstituentDeviceCommand alloc] initWithFallbackPrimaryConstituentDeviceSelection:v45];
  [(CAMCaptureCommand *)self addSubcommand:v47];
  v48 = [v5 frontRearSimultaneousVideoEnabled];
  v49 = [[CAMFrontRearSimultaneousVideoRecordingCommand alloc] initWithVideoRecordingEnabled:v48];
  [(CAMCaptureCommand *)self addSubcommand:v49];
  v50 = [[CAMFrontRearSimultaneousCaptureCommand alloc] initWithFrontRearSimultaneousCaptureEnabled:v48];
  [(CAMCaptureCommand *)self addSubcommand:v50];
  if (v48)
  {
    if ([v100 isSmartFramingSupported])
    {
      v51 = [[CAMDynamicAspectRatioCommand alloc] initForSecondaryDevice];
      [(CAMCaptureCommand *)self addSubcommand:v51];
    }

    v52 = -[CAMVideoStabilizationCommand initWithAutomaticVideoStabilizationEnabled:strength:frontRearSimultaneousVideoEnabled:configureSecondaryDevice:]([CAMVideoStabilizationCommand alloc], "initWithAutomaticVideoStabilizationEnabled:strength:frontRearSimultaneousVideoEnabled:configureSecondaryDevice:", v55 & v54, [v5 secondaryDeviceVideoStabilizationStrength], 1, 1);
    [(CAMCaptureCommand *)self addSubcommand:v52];
  }

  v53 = [[CAMPostConfigurationSetupCommand alloc] initWithGraphConfiguration:v5];
  [(CAMCaptureCommand *)self addSubcommand:v53];
}

- (void)_performPostConfigurationSanityCheckForGraphConfiguration:(id)a3 withContext:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v36 = [v6 mode];
  v8 = [v7 currentCaptureSession];
  v9 = [(CAMModeAndDeviceCommand *)self _primaryEngineDeviceWithContext:v7 graphConfiguration:v6 resolvedDevice:0];
  v35 = [v9 captureDevice];
  v10 = [v35 activeFormat];
  v11 = [v9 videoDeviceFormatForGraphConfiguration:v6 captureSession:v8 deviceIsSecondary:0];
  v12 = v11;
  v13 = 0;
  if (v11 && v10 != v11)
  {
    v14 = os_log_create("com.apple.camera", "CaptureSession");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v30 = [v6 device];
      if (v30 > 0xB)
      {
        v31 = 0;
      }

      else
      {
        v31 = off_1E76FA438[v30];
      }

      *buf = 138543874;
      v41 = v31;
      v42 = 2114;
      v43 = v10;
      v44 = 2114;
      v45 = v12;
      _os_log_error_impl(&dword_1A3640000, v14, OS_LOG_TYPE_ERROR, "Primary device %{public}@'s active device format %{public}@ does not match expected device format %{public}@", buf, 0x20u);
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CAMModeAndDeviceCommandCannotCaptureErrorDomain" code:-32202 userInfo:0];
  }

  v37 = v12;
  v39 = 0;
  v15 = [v6 secondaryDevice:&v39];
  v38 = v10;
  if (v39 == 1)
  {
    v16 = v15;
    v17 = [(CAMModeAndDeviceCommand *)self _secondaryEngineDeviceWithContext:v7 graphConfiguration:v6 resolvedDevice:0];
    v18 = v17;
    if (v17)
    {
      v33 = [v17 captureDevice];
      v19 = [v33 activeFormat];
      v20 = [v18 videoDeviceFormatForGraphConfiguration:v6 captureSession:v8 deviceIsSecondary:1];
      v21 = v20;
      v34 = v19;
      if (v20 && v19 != v20)
      {
        v22 = os_log_create("com.apple.camera", "CaptureSession");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v32 = CAMDebugStringForCaptureDevice_0(v16);
          *buf = 138543874;
          v41 = v32;
          v42 = 2114;
          v43 = v34;
          v44 = 2114;
          v45 = v21;
          _os_log_error_impl(&dword_1A3640000, v22, OS_LOG_TYPE_ERROR, "Secondary device %{public}@'s active device format %{public}@ does not match expected device format %{public}@", buf, 0x20u);
        }

        v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CAMModeAndDeviceCommandCannotCaptureErrorDomain" code:-32202 userInfo:0];

        v13 = v23;
      }
    }
  }

  v24 = [v8 outputs];
  v25 = [v7 primaryOutputForMode:v36 graphConfiguration:v6];
  if ([v24 containsObject:v25])
  {
    v26 = [v25 connectionWithMediaType:*MEMORY[0x1E6987608]];
    if (!v26)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"CAMModeAndDeviceCommandCannotCaptureErrorDomain" code:-32200 userInfo:0];
      v27 = v9;
      v29 = v28 = self;

      v13 = v29;
      self = v28;
      v9 = v27;
    }
  }

  else
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"CAMModeAndDeviceCommandCannotCaptureErrorDomain" code:-32201 userInfo:0];
    v13 = v26 = v13;
  }

  [(CAMModeAndDeviceCommand *)self _setConfigurationError:v13];
}

- (BOOL)_shouldEnableLivePhotoCaptureForMode:(int64_t)a3 device:(int64_t)a4
{
  v6 = +[CAMCaptureCapabilities capabilities];
  v7 = v6;
  if ((a4 - 1) > 0xA)
  {
    v8 = 0;
  }

  else
  {
    v8 = qword_1A3A686F8[a4 - 1];
  }

  v9 = [v6 isLivePhotoSupportedForDevicePosition:v8];
  if (a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  if (a3 == 4)
  {
    v10 = v9;
  }

  if (a3 == 9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

- (void)executeWithContext:(NSObject *)a3 .cold.1(void *a1, unint64_t a2, NSObject *a3)
{
  if (*a1 >= 0xCuLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E76FA438[*a1];
  }

  if (a2 >= 0xC)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E76FA438[a2];
  }

  *v5 = 138543618;
  *&v5[4] = v3;
  *&v5[12] = 2114;
  *&v5[14] = v4;
  OUTLINED_FUNCTION_4(&dword_1A3640000, a2, a3, "Resolved device %{public}@ does not match desired device %{public}@. Should have already been resolved in _sanitizeDeviceUsingContext", *v5, *&v5[8], *&v5[16], *MEMORY[0x1E69E9840]);
}

- (void)executeWithContext:(NSObject *)a3 .cold.4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_4(&dword_1A3640000, a2, a3, "Attempting to use an unsupported session preset %{public}@ on device %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

@end