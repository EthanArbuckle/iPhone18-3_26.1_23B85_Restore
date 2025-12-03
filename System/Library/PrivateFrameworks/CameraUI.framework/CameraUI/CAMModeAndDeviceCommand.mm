@interface CAMModeAndDeviceCommand
- (BOOL)_shouldEnableLivePhotoCaptureForMode:(int64_t)mode device:(int64_t)device;
- (CAMModeAndDeviceCommand)initWithCoder:(id)coder;
- (CAMModeAndDeviceCommand)initWithGraphConfiguration:(id)configuration minimumExecutionTime:(double)time requestID:(int)d outputToExternalStorage:(BOOL)storage;
- (id)_desiredConnectionWithCaptureEngineSecondaryDevice:(id)device secondaryVideoPreviewLayer:(id)layer;
- (id)_desiredPrimaryInputsWithContext:(id)context captureEngineDevice:(id)device;
- (id)_desiredSecondaryInputsWithCaptureEngineSecondaryDevice:(id)device;
- (id)_existingInputsWithContext:(id)context without:(id)without;
- (id)_existingOutputsWithContext:(id)context without:(id)without;
- (id)_existingVideoPreviewLayersWithContext:(id)context without:(id)without;
- (id)_primaryEngineDeviceWithContext:(id)context graphConfiguration:(id)configuration resolvedDevice:(int64_t *)device;
- (id)_secondaryEngineDeviceWithContext:(id)context graphConfiguration:(id)configuration resolvedDevice:(int64_t *)device;
- (id)_secondaryInputsBecomingPrimaryWithContext:(id)context desiredPrimaryInputs:(id)inputs;
- (id)_specificEncodingBehaviorCommandForGraphConfiguration:(id)configuration;
- (id)_specificFramerateCommandForGraphConfiguration:(id)configuration withContext:(id)context configureSecondaryDevice:(BOOL)device;
- (id)_specificPreparePhotoSettingsCommandForGraphConfiguration:(id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)sessionModificationLogReason;
- (id)userInfo;
- (void)_performPostConfigurationSanityCheckForGraphConfiguration:(id)configuration withContext:(id)context;
- (void)_performPostConfigurationSetupForGraphConfiguration:(id)configuration withContext:(id)context;
- (void)_sanitizeDeviceUsingContext:(id)context;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMModeAndDeviceCommand

- (id)userInfo
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  _desiredGraphConfiguration = [(CAMModeAndDeviceCommand *)self _desiredGraphConfiguration];
  [v3 setObject:_desiredGraphConfiguration forKey:@"CAMModeAndDeviceCommandDesiredConfiguration"];
  _requestID = [(CAMModeAndDeviceCommand *)self _requestID];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:_requestID];
  [v3 setObject:v6 forKeyedSubscript:@"CAMModeAndDeviceCommandRequestID"];

  _configurationError = [(CAMModeAndDeviceCommand *)self _configurationError];
  if (_configurationError)
  {
    [v3 setObject:_configurationError forKey:@"CAMModeAndDeviceConfigurationError"];
  }

  return v3;
}

- (CAMModeAndDeviceCommand)initWithGraphConfiguration:(id)configuration minimumExecutionTime:(double)time requestID:(int)d outputToExternalStorage:(BOOL)storage
{
  configurationCopy = configuration;
  v18.receiver = self;
  v18.super_class = CAMModeAndDeviceCommand;
  v12 = [(CAMCaptureCommand *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->__desiredGraphConfiguration, configuration);
    resolvedGraphConfiguration = v13->__resolvedGraphConfiguration;
    v13->__resolvedGraphConfiguration = 0;

    v13->__minimumExecutionTime = time;
    v13->__requestID = d;
    configurationError = v13->__configurationError;
    v13->__configurationError = 0;

    v13->__outputToExternalStorage = storage;
    v16 = v13;
  }

  return v13;
}

- (CAMModeAndDeviceCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CAMModeAndDeviceCommand;
  v5 = [(CAMCaptureCommand *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"CAMModeAndDeviceCommandDesiredConfiguration"];
    desiredGraphConfiguration = v5->__desiredGraphConfiguration;
    v5->__desiredGraphConfiguration = v6;

    v8 = [coderCopy decodeObjectForKey:@"CAMModeAndDeviceCommandResolvedConfiguration"];
    resolvedGraphConfiguration = v5->__resolvedGraphConfiguration;
    v5->__resolvedGraphConfiguration = v8;

    [coderCopy decodeDoubleForKey:@"CAMModeAndDeviceCommandMinimumExecutionTime"];
    v5->__minimumExecutionTime = v10;
    v5->__requestID = [coderCopy decodeInt32ForKey:@"CAMModeAndDeviceCommandRequestID"];
    v11 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CAMModeAndDeviceCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CAMModeAndDeviceCommand *)self _desiredGraphConfiguration:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"CAMModeAndDeviceCommandDesiredConfiguration"];

  _resolvedGraphConfiguration = [(CAMModeAndDeviceCommand *)self _resolvedGraphConfiguration];
  [coderCopy encodeObject:_resolvedGraphConfiguration forKey:@"CAMModeAndDeviceCommandResolvedConfiguration"];

  [(CAMModeAndDeviceCommand *)self _minimumExecutionTime];
  [coderCopy encodeDouble:@"CAMModeAndDeviceCommandMinimumExecutionTime" forKey:?];
  [coderCopy encodeInt32:-[CAMModeAndDeviceCommand _requestID](self forKey:{"_requestID"), @"CAMModeAndDeviceCommandRequestID"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = CAMModeAndDeviceCommand;
  v4 = [(CAMCaptureCommand *)&v11 copyWithZone:zone];
  _desiredGraphConfiguration = [(CAMModeAndDeviceCommand *)self _desiredGraphConfiguration];
  v6 = v4[4];
  v4[4] = _desiredGraphConfiguration;

  _resolvedGraphConfiguration = [(CAMModeAndDeviceCommand *)self _resolvedGraphConfiguration];
  v8 = v4[5];
  v4[5] = _resolvedGraphConfiguration;

  [(CAMModeAndDeviceCommand *)self _minimumExecutionTime];
  v4[6] = v9;
  *(v4 + 7) = [(CAMModeAndDeviceCommand *)self _requestID];
  return v4;
}

- (id)sessionModificationLogReason
{
  v3 = MEMORY[0x1E696AEC0];
  _desiredGraphConfiguration = [(CAMModeAndDeviceCommand *)self _desiredGraphConfiguration];
  shortDescription = [_desiredGraphConfiguration shortDescription];
  v6 = [v3 stringWithFormat:@"%@ (requestID=%d)", shortDescription, -[CAMModeAndDeviceCommand _requestID](self, "_requestID")];

  return v6;
}

- (void)_sanitizeDeviceUsingContext:(id)context
{
  contextCopy = context;
  v5 = +[CAMCaptureCapabilities capabilities];
  _desiredGraphConfiguration = [(CAMModeAndDeviceCommand *)self _desiredGraphConfiguration];
  mode = [_desiredGraphConfiguration mode];
  device = [_desiredGraphConfiguration device];
  videoConfiguration = [_desiredGraphConfiguration videoConfiguration];
  v10 = [v5 sanitizeDesiredDevice:device forMode:mode];
  videoEncodingBehavior = [_desiredGraphConfiguration videoEncodingBehavior];
  v12 = +[CAMCaptureConfiguration sanitizeVideoConfigurationForDesiredConfiguration:mode:device:trueVideoEnabled:frontRearSimultaneousVideoEnabled:](CAMCaptureConfiguration, "sanitizeVideoConfigurationForDesiredConfiguration:mode:device:trueVideoEnabled:frontRearSimultaneousVideoEnabled:", videoConfiguration, mode, v10, [_desiredGraphConfiguration trueVideoEnabled], objc_msgSend(_desiredGraphConfiguration, "frontRearSimultaneousVideoEnabled"));
  v66 = v10;
  v65 = [contextCopy videoDeviceForMode:mode desiredDevice:v10 videoConfiguration:v12 videoStabilizationStrength:objc_msgSend(_desiredGraphConfiguration frontRearSimultaneousVideoEnabled:"videoStabilizationStrength") resolvedDevice:{objc_msgSend(_desiredGraphConfiguration, "frontRearSimultaneousVideoEnabled"), &v66}];

  v13 = v66;
  v15 = mode == 2 && v12 == 0;
  if ([v5 isSpatialModeSupported])
  {
    v17 = mode == 8 && v12 == 0;
  }

  else
  {
    v17 = 0;
  }

  if ([_desiredGraphConfiguration videoDynamicAspectRatio])
  {
    v18 = v12 == 0;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  selfCopy = self;
  v64 = v5;
  v61 = mode;
  if (v15 || v17 || v19)
  {
    _outputToExternalStorage = [(CAMModeAndDeviceCommand *)self _outputToExternalStorage];
    prefersHDR10BitVideo = [_desiredGraphConfiguration prefersHDR10BitVideo];
    LOBYTE(v30) = [_desiredGraphConfiguration frontRearSimultaneousVideoEnabled];
    v62 = [v5 resolvedVideoConfigurationForMode:mode device:v13 videoEncodingBehavior:videoEncodingBehavior videoConfiguration:v12 outputToExternalStorage:_outputToExternalStorage prefersHDR10BitVideo:prefersHDR10BitVideo frontRearSimultaneousVideoEnabled:v30];
  }

  else
  {
    v62 = v12;
  }

  v60 = [CAMCaptureGraphConfiguration alloc];
  macroMode = [_desiredGraphConfiguration macroMode];
  audioConfiguration = [_desiredGraphConfiguration audioConfiguration];
  mixAudioWithOthers = [_desiredGraphConfiguration mixAudioWithOthers];
  windNoiseRemovalEnabled = [_desiredGraphConfiguration windNoiseRemovalEnabled];
  previewConfiguration = [_desiredGraphConfiguration previewConfiguration];
  previewSampleBufferVideoFormat = [_desiredGraphConfiguration previewSampleBufferVideoFormat];
  previewFilters = [_desiredGraphConfiguration previewFilters];
  videoThumbnailOutputConfiguration = [_desiredGraphConfiguration videoThumbnailOutputConfiguration];
  photoEncodingBehavior = [_desiredGraphConfiguration photoEncodingBehavior];
  videoEncodingBehavior2 = [_desiredGraphConfiguration videoEncodingBehavior];
  enableAutoFPSVideo = [_desiredGraphConfiguration enableAutoFPSVideo];
  isVideoHDRSuspended = [_desiredGraphConfiguration isVideoHDRSuspended];
  aspectRatioCrop = [_desiredGraphConfiguration aspectRatioCrop];
  photoQualityPrioritization = [_desiredGraphConfiguration photoQualityPrioritization];
  isCaptureMirrored = [_desiredGraphConfiguration isCaptureMirrored];
  enableRAWCaptureIfSupported = [_desiredGraphConfiguration enableRAWCaptureIfSupported];
  semanticStyleSupport = [_desiredGraphConfiguration semanticStyleSupport];
  previewSemanticStyle = [_desiredGraphConfiguration previewSemanticStyle];
  smartStyles = [_desiredGraphConfiguration smartStyles];
  enableContentAwareDistortionCorrection = [_desiredGraphConfiguration enableContentAwareDistortionCorrection];
  enableResponsiveShutter = [_desiredGraphConfiguration enableResponsiveShutter];
  suspendLivePhotoCapture = [_desiredGraphConfiguration suspendLivePhotoCapture];
  videoStabilizationStrength = [_desiredGraphConfiguration videoStabilizationStrength];
  maximumPhotoResolution = [_desiredGraphConfiguration maximumPhotoResolution];
  colorSpace = [_desiredGraphConfiguration colorSpace];
  isVideoBinned = [_desiredGraphConfiguration isVideoBinned];
  enableDepthSuggestion = [_desiredGraphConfiguration enableDepthSuggestion];
  enableZoomPIP = [_desiredGraphConfiguration enableZoomPIP];
  customLensGroup = [_desiredGraphConfiguration customLensGroup];
  trueVideoEnabled = [_desiredGraphConfiguration trueVideoEnabled];
  prefersHDR10BitVideo2 = [_desiredGraphConfiguration prefersHDR10BitVideo];
  BYTE2(v35) = [_desiredGraphConfiguration frontRearSimultaneousVideoEnabled];
  BYTE1(v35) = prefersHDR10BitVideo2;
  LOBYTE(v35) = trueVideoEnabled;
  BYTE2(v34) = enableZoomPIP;
  BYTE1(v34) = enableDepthSuggestion;
  LOBYTE(v34) = isVideoBinned;
  BYTE2(v33) = suspendLivePhotoCapture;
  BYTE1(v33) = enableResponsiveShutter;
  LOBYTE(v33) = enableContentAwareDistortionCorrection;
  BYTE1(v32) = enableRAWCaptureIfSupported;
  LOBYTE(v32) = isCaptureMirrored;
  BYTE1(v31) = isVideoHDRSuspended;
  LOBYTE(v31) = enableAutoFPSVideo;
  LOBYTE(v30) = windNoiseRemovalEnabled;
  v29 = -[CAMCaptureGraphConfiguration initWithCaptureMode:captureDevice:macroMode:videoConfiguration:audioConfiguration:mixAudioWithOthers:windNoiseRemovalEnabled:previewConfiguration:previewSampleBufferVideoFormat:previewFilters:videoThumbnailOutputConfiguration:photoEncodingBehavior:videoEncodingBehavior:enableAutoFPSVideo:videoHDRSuspended:aspectRatioCrop:photoQualityPrioritization:captureMirrored:enableRAWCaptureIfSupported:semanticStyleSupport:previewSemanticStyle:smartStyles:enableContentAwareDistortionCorrection:enableResponsiveShutter:suspendLivePhotoCapture:videoStabilizationStrength:maximumPhotoResolution:colorSpace:videoBinned:enableDepthSuggestion:enableZoomPIP:customLensGroup:trueVideoEnabled:prefersHDR10BitVideo:frontRearSimultaneousVideoEnabled:videoDynamicAspectRatio:smartFramingFieldOfView:](v60, "initWithCaptureMode:captureDevice:macroMode:videoConfiguration:audioConfiguration:mixAudioWithOthers:windNoiseRemovalEnabled:previewConfiguration:previewSampleBufferVideoFormat:previewFilters:videoThumbnailOutputConfiguration:photoEncodingBehavior:videoEncodingBehavior:enableAutoFPSVideo:videoHDRSuspended:aspectRatioCrop:photoQualityPrioritization:captureMirrored:enableRAWCaptureIfSupported:semanticStyleSupport:previewSemanticStyle:smartStyles:enableContentAwareDistortionCorrection:enableResponsiveShutter:suspendLivePhotoCapture:videoStabilizationStrength:maximumPhotoResolution:colorSpace:videoBinned:enableDepthSuggestion:enableZoomPIP:customLensGroup:trueVideoEnabled:prefersHDR10BitVideo:frontRearSimultaneousVideoEnabled:videoDynamicAspectRatio:smartFramingFieldOfView:", v61, v13, macroMode, v62, audioConfiguration, mixAudioWithOthers, v30, previewConfiguration, previewSampleBufferVideoFormat, previewFilters, videoThumbnailOutputConfiguration, photoEncodingBehavior, videoEncodingBehavior2, v31, aspectRatioCrop, photoQualityPrioritization, v32, semanticStyleSupport, previewSemanticStyle, smartStyles, v33, videoStabilizationStrength, maximumPhotoResolution, colorSpace, v34, customLensGroup, v35, [_desiredGraphConfiguration videoDynamicAspectRatio], objc_msgSend(_desiredGraphConfiguration, "smartFramingFieldOfView"));

  [(CAMModeAndDeviceCommand *)selfCopy _setResolvedGraphConfiguration:v29];
}

- (void)executeWithContext:(id)context
{
  v88 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  [(CAMModeAndDeviceCommand *)self _sanitizeDeviceUsingContext:contextCopy];
  _resolvedGraphConfiguration = [(CAMModeAndDeviceCommand *)self _resolvedGraphConfiguration];
  device = [_resolvedGraphConfiguration device];
  currentCaptureSession = [contextCopy currentCaptureSession];
  v81 = device;
  v8 = [(CAMModeAndDeviceCommand *)self _primaryEngineDeviceWithContext:contextCopy graphConfiguration:_resolvedGraphConfiguration resolvedDevice:&v81];
  if (v81 != device)
  {
    v9 = os_log_create("com.apple.camera", "CaptureSession");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CAMModeAndDeviceCommand *)&v81 executeWithContext:device, v9];
    }
  }

  captureDevice = [v8 captureDevice];
  v10 = [v8 videoDeviceFormatForGraphConfiguration:_resolvedGraphConfiguration captureSession:currentCaptureSession deviceIsSecondary:0];
  v11 = [v8 videoDevicePresetForGraphConfiguration:_resolvedGraphConfiguration captureSession:currentCaptureSession];
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
  v28 = [(CAMModeAndDeviceCommand *)self _desiredPrimaryInputsWithContext:contextCopy captureEngineDevice:v8];
  v29 = [(CAMModeAndDeviceCommand *)self _existingInputsWithContext:contextCopy without:v28];
  v30 = [(CAMModeAndDeviceCommand *)self _secondaryInputsBecomingPrimaryWithContext:contextCopy desiredPrimaryInputs:v28];
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

  [currentCaptureSession cam_removeInputs:v31];
  if (v10 || !v12)
  {
    v36 = *MEMORY[0x1E6986AF0];

    v12 = v36;
  }

  if ([captureDevice supportsAVCaptureSessionPreset:v12] && objc_msgSend(currentCaptureSession, "canSetSessionPreset:", v12))
  {
    [currentCaptureSession setSessionPreset:v12];
  }

  else
  {
    v37 = os_log_create("com.apple.camera", "CaptureSession");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [(CAMModeAndDeviceCommand *)v12 executeWithContext:captureDevice, v37];
    }
  }

  v76 = v28;
  [currentCaptureSession cam_ensureInputs:v28];
  if (v10)
  {
    [captureDevice setActiveFormat:v10];
  }

  v74 = objc_alloc_init(CAMResetVideoMinFrameDurationOverrideCommand);
  [(CAMCaptureCommand *)self addSubcommand:?];
  if (v10)
  {
    if ([captureDevice isAutoVideoFrameRateEnabled])
    {
      v38 = [[CAMAutoFPSVideoCommand alloc] initWithAutoFPSVideoEnabled:0];
      [(CAMCaptureCommand *)self addSubcommand:v38];
    }

    v39 = [(CAMModeAndDeviceCommand *)self _specificFramerateCommandForGraphConfiguration:_resolvedGraphConfiguration withContext:contextCopy configureSecondaryDevice:0];
    if (v39)
    {
      [(CAMCaptureCommand *)self addSubcommand:v39];
    }
  }

  v77 = v12;
  v78 = v10;
  v40 = [contextCopy outputsForGraphConfiguration:_resolvedGraphConfiguration];
  v72 = [(CAMModeAndDeviceCommand *)self _existingOutputsWithContext:contextCopy without:v40];
  v73 = v40;
  [currentCaptureSession cam_ensureOutputs:v40 whileRemoving:?];
  v41 = [contextCopy primaryVideoPreviewLayerForGraphConfiguration:_resolvedGraphConfiguration];
  v85 = v41;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
  v43 = [(CAMModeAndDeviceCommand *)self _existingVideoPreviewLayersWithContext:contextCopy without:v42];

  v84 = v41;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
  v71 = v43;
  [currentCaptureSession cam_ensureVideoPreviewLayers:v44 withConnections:1 whileRemoving:v43];

  buf[0] = 0;
  [_resolvedGraphConfiguration secondaryDevice:buf];
  if (buf[0] == 1)
  {
    v68 = v29;
    v45 = [(CAMModeAndDeviceCommand *)self _secondaryEngineDeviceWithContext:contextCopy graphConfiguration:_resolvedGraphConfiguration resolvedDevice:&v81];
    v67 = [(CAMModeAndDeviceCommand *)self _desiredSecondaryInputsWithCaptureEngineSecondaryDevice:v45];
    [currentCaptureSession cam_ensureInputs:? exclusively:? withConnections:?];
    captureDevice2 = [v45 captureDevice];
    v47 = [v45 videoDeviceFormatForGraphConfiguration:_resolvedGraphConfiguration captureSession:currentCaptureSession deviceIsSecondary:1];
    v66 = captureDevice2;
    if (v47)
    {
      [captureDevice2 setActiveFormat:v47];
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
    initForSecondaryDevice = [[CAMResetVideoMinFrameDurationOverrideCommand alloc] initForSecondaryDevice];
    [(CAMCaptureCommand *)self addSubcommand:?];
    if (v47)
    {
      v57 = [[CAMAutoFPSVideoCommand alloc] initWithAutoFPSVideoEnabled:0 configureSecondaryDevice:1];
      [(CAMCaptureCommand *)self addSubcommand:v57];
      v58 = [(CAMModeAndDeviceCommand *)self _specificFramerateCommandForGraphConfiguration:_resolvedGraphConfiguration withContext:contextCopy configureSecondaryDevice:1];
      if (v58)
      {
        [(CAMCaptureCommand *)self addSubcommand:v58];
      }
    }

    v59 = [contextCopy secondaryVideoPreviewLayerForGraphConfiguration:_resolvedGraphConfiguration];
    v83 = v59;
    v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
    [currentCaptureSession cam_ensureVideoPreviewLayers:v60 withConnections:0 whileRemoving:MEMORY[0x1E695E0F0]];

    v61 = [(CAMModeAndDeviceCommand *)self _desiredConnectionWithCaptureEngineSecondaryDevice:v45 secondaryVideoPreviewLayer:v59];
    v82 = v61;
    v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
    [currentCaptureSession cam_ensureConnections:v62];

    v29 = v68;
    v31 = v70;
  }

  v63 = [contextCopy controlsForGraphConfiguration:_resolvedGraphConfiguration recording:0];
  [currentCaptureSession cam_ensureControls:v63];
  [(CAMModeAndDeviceCommand *)self _performPostConfigurationSetupForGraphConfiguration:_resolvedGraphConfiguration withContext:contextCopy];
  v64 = [[CAMGraphConfigurationInspectionCommand alloc] initWithKnownGraphConfiguration:_resolvedGraphConfiguration];
  [(CAMCaptureCommand *)self addSubcommand:v64];
  [(CAMModeAndDeviceCommand *)self _performPostConfigurationSanityCheckForGraphConfiguration:_resolvedGraphConfiguration withContext:contextCopy];
}

- (id)_primaryEngineDeviceWithContext:(id)context graphConfiguration:(id)configuration resolvedDevice:(int64_t *)device
{
  configurationCopy = configuration;
  contextCopy = context;
  mode = [configurationCopy mode];
  device = [configurationCopy device];
  videoConfiguration = [configurationCopy videoConfiguration];
  videoStabilizationStrength = [configurationCopy videoStabilizationStrength];
  frontRearSimultaneousVideoEnabled = [configurationCopy frontRearSimultaneousVideoEnabled];

  v14 = [contextCopy videoDeviceForMode:mode desiredDevice:device videoConfiguration:videoConfiguration videoStabilizationStrength:videoStabilizationStrength frontRearSimultaneousVideoEnabled:frontRearSimultaneousVideoEnabled resolvedDevice:device];

  return v14;
}

- (id)_secondaryEngineDeviceWithContext:(id)context graphConfiguration:(id)configuration resolvedDevice:(int64_t *)device
{
  contextCopy = context;
  configurationCopy = configuration;
  v12 = 0;
  v9 = [configurationCopy secondaryDevice:&v12];
  if (v12 == 1)
  {
    v10 = [contextCopy videoDeviceForMode:objc_msgSend(configurationCopy desiredDevice:"mode") videoConfiguration:v9 videoStabilizationStrength:objc_msgSend(configurationCopy frontRearSimultaneousVideoEnabled:"secondaryDeviceVideoConfiguration") resolvedDevice:{objc_msgSend(configurationCopy, "secondaryDeviceVideoStabilizationStrength"), objc_msgSend(configurationCopy, "frontRearSimultaneousVideoEnabled"), device}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_desiredPrimaryInputsWithContext:(id)context captureEngineDevice:(id)device
{
  contextCopy = context;
  deviceCopy = device;
  _resolvedGraphConfiguration = [(CAMModeAndDeviceCommand *)self _resolvedGraphConfiguration];
  audioConfiguration = [_resolvedGraphConfiguration audioConfiguration];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  captureDeviceInput = [deviceCopy captureDeviceInput];

  if (captureDeviceInput)
  {
    [v10 addObject:captureDeviceInput];
  }

  if (audioConfiguration)
  {
    audioDeviceInput = [contextCopy audioDeviceInput];
    if (audioDeviceInput)
    {
      [v10 addObject:audioDeviceInput];
    }
  }

  return v10;
}

- (id)_desiredSecondaryInputsWithCaptureEngineSecondaryDevice:(id)device
{
  v3 = MEMORY[0x1E695DF70];
  deviceCopy = device;
  v5 = objc_alloc_init(v3);
  captureDeviceInput = [deviceCopy captureDeviceInput];

  if (captureDeviceInput)
  {
    [v5 addObject:captureDeviceInput];
  }

  return v5;
}

- (id)_secondaryInputsBecomingPrimaryWithContext:(id)context desiredPrimaryInputs:(id)inputs
{
  inputsCopy = inputs;
  currentSecondaryVideoDeviceInput = [context currentSecondaryVideoDeviceInput];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (currentSecondaryVideoDeviceInput && [inputsCopy containsObject:currentSecondaryVideoDeviceInput])
  {
    [v7 addObject:currentSecondaryVideoDeviceInput];
  }

  return v7;
}

- (id)_existingInputsWithContext:(id)context without:(id)without
{
  withoutCopy = without;
  contextCopy = context;
  currentVideoDeviceInput = [contextCopy currentVideoDeviceInput];
  currentSecondaryVideoDeviceInput = [contextCopy currentSecondaryVideoDeviceInput];
  currentAudioDeviceInput = [contextCopy currentAudioDeviceInput];

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = v10;
  if (currentVideoDeviceInput)
  {
    [v10 addObject:currentVideoDeviceInput];
  }

  if (currentSecondaryVideoDeviceInput)
  {
    [v11 addObject:currentSecondaryVideoDeviceInput];
  }

  if (currentAudioDeviceInput)
  {
    [v11 addObject:currentAudioDeviceInput];
  }

  [v11 removeObjectsInArray:withoutCopy];

  return v11;
}

- (id)_existingOutputsWithContext:(id)context without:(id)without
{
  withoutCopy = without;
  contextCopy = context;
  currentStillImageOutput = [contextCopy currentStillImageOutput];
  currentMovieFileOutput = [contextCopy currentMovieFileOutput];
  currentPanoramaOutput = [contextCopy currentPanoramaOutput];
  currentMetadataOutput = [contextCopy currentMetadataOutput];
  currentEffectsPreviewOutput = [contextCopy currentEffectsPreviewOutput];
  currentVideoThumbnailOutput = [contextCopy currentVideoThumbnailOutput];

  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = v13;
  if (currentStillImageOutput)
  {
    [v13 addObject:currentStillImageOutput];
  }

  if (currentMovieFileOutput)
  {
    [v14 addObject:currentMovieFileOutput];
  }

  if (currentPanoramaOutput)
  {
    [v14 addObject:currentPanoramaOutput];
  }

  if (currentMetadataOutput)
  {
    [v14 addObject:currentMetadataOutput];
  }

  if (currentEffectsPreviewOutput)
  {
    [v14 addObject:currentEffectsPreviewOutput];
  }

  if (currentVideoThumbnailOutput)
  {
    [v14 addObject:currentVideoThumbnailOutput];
  }

  [v14 removeObjectsInArray:withoutCopy];

  return v14;
}

- (id)_existingVideoPreviewLayersWithContext:(id)context without:(id)without
{
  withoutCopy = without;
  contextCopy = context;
  currentCaptureSession = [contextCopy currentCaptureSession];
  currentVideoPreviewLayer = [contextCopy currentVideoPreviewLayer];
  currentSecondaryVideoPreviewLayer = [contextCopy currentSecondaryVideoPreviewLayer];

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  session = [currentVideoPreviewLayer session];

  if (session == currentCaptureSession)
  {
    [v10 addObject:currentVideoPreviewLayer];
  }

  session2 = [currentSecondaryVideoPreviewLayer session];

  if (session2 == currentCaptureSession)
  {
    [v10 addObject:currentSecondaryVideoPreviewLayer];
  }

  [v10 removeObjectsInArray:withoutCopy];

  return v10;
}

- (id)_desiredConnectionWithCaptureEngineSecondaryDevice:(id)device secondaryVideoPreviewLayer:(id)layer
{
  layerCopy = layer;
  deviceCopy = device;
  captureDevice = [deviceCopy captureDevice];
  captureDeviceInput = [deviceCopy captureDeviceInput];

  v9 = *MEMORY[0x1E6987608];
  deviceType = [captureDevice deviceType];
  v11 = [captureDeviceInput portsWithMediaType:v9 sourceDeviceType:deviceType sourceDevicePosition:{objc_msgSend(captureDevice, "position")}];
  firstObject = [v11 firstObject];

  v13 = [MEMORY[0x1E6987070] connectionWithInputPort:firstObject videoPreviewLayer:layerCopy];

  return v13;
}

- (id)_specificFramerateCommandForGraphConfiguration:(id)configuration withContext:(id)context configureSecondaryDevice:(BOOL)device
{
  deviceCopy = device;
  configurationCopy = configuration;
  contextCopy = context;
  mode = [configurationCopy mode];
  if (mode > 9)
  {
    v11 = 0;
  }

  else if (mode == 3)
  {
    v13 = [CAMPanoramaConfigurationCommand alloc];
    currentPanoramaConfiguration = [contextCopy currentPanoramaConfiguration];
    v11 = [(CAMPanoramaConfigurationCommand *)v13 initWithConfiguration:currentPanoramaConfiguration];
  }

  else
  {
    videoConfiguration = [configurationCopy videoConfiguration];
    if (deviceCopy && ([configurationCopy secondaryDeviceUsesPrimaryVideoConfigurationForFrameRate] & 1) == 0)
    {
      videoConfiguration = [configurationCopy secondaryDeviceVideoConfiguration];
    }

    v11 = [[CAMVideoFramerateCommand alloc] initWithVideoConfiguration:videoConfiguration configureSecondaryDevice:deviceCopy];
  }

  return v11;
}

- (id)_specificEncodingBehaviorCommandForGraphConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ([configurationCopy mode] == 3)
  {
    v4 = -[CAMPanoramaEncodingCommand initWithPhotoEncodingBehavior:]([CAMPanoramaEncodingCommand alloc], "initWithPhotoEncodingBehavior:", [configurationCopy photoEncodingBehavior]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_specificPreparePhotoSettingsCommandForGraphConfiguration:(id)configuration
{
  configurationCopy = configuration;
  mode = [configurationCopy mode];
  if (mode > 9 || ((1 << mode) & 0x251) == 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [[CAMPreparePhotoSettingsCommand alloc] initWithGraphConfiguration:configurationCopy];
  }

  return v6;
}

- (void)_performPostConfigurationSetupForGraphConfiguration:(id)configuration withContext:(id)context
{
  configurationCopy = configuration;
  mode = [configurationCopy mode];
  device = [configurationCopy device];
  devicePosition = [configurationCopy devicePosition];
  v101[0] = 0;
  [configurationCopy secondaryDevice:v101];
  v9 = +[CAMCaptureCapabilities capabilities];
  v98 = device;
  v95 = [[CAMIrisVideoRecordingCommand alloc] initWithVideoRecordingEnabled:[(CAMModeAndDeviceCommand *)self _shouldEnableLivePhotoCaptureForMode:mode device:device]];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v94 = -[CAMPausePairedVideoRecordingCommand initWithRecordingPaused:]([CAMPausePairedVideoRecordingCommand alloc], "initWithRecordingPaused:", [configurationCopy suspendLivePhotoCapture]);
  [(CAMCaptureCommand *)self addSubcommand:?];
  v10 = -[CAMCTMVideoCaptureEnabledCommand initWithEnabled:]([CAMCTMVideoCaptureEnabledCommand alloc], "initWithEnabled:", [v9 isCTMVideoCaptureSupportedForMode:mode]);
  [(CAMCaptureCommand *)self addSubcommand:v10];
  v92 = [[CAMHighResolutionStillImageCommand alloc] initWithHighResolutionStillImageCaptureEnabled:mode != 5];
  [(CAMCaptureCommand *)self addSubcommand:?];
  if (mode == 5)
  {
    initWithDefaultTimelapseCaptureRate = [[CAMTimelapseCaptureRateCommand alloc] initWithDefaultTimelapseCaptureRate];
    [(CAMCaptureCommand *)self addSubcommand:initWithDefaultTimelapseCaptureRate];
  }

  v100 = v9;
  v96 = devicePosition;
  v91 = [[CAMImageControlModeCommand alloc] initWithCaptureMode:mode capturing:0];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v90 = [[CAMPanoramaRetainedBufferHintCommand alloc] initWithPanoramaRetainedBufferHintEnabled:mode == 3];
  [(CAMCaptureCommand *)self addSubcommand:?];
  if (([configurationCopy enableAutoFPSVideo] & 1) == 0)
  {
    v12 = [[CAMAutoFPSVideoCommand alloc] initWithAutoFPSVideoEnabled:0];
    [(CAMCaptureCommand *)self addSubcommand:v12];
  }

  v89 = [[CAMLowLightTimelapseCommand alloc] initWithTimelapseLowLightCompensationEnabled:mode == 5];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v88 = [[CAMLowLightBoostCommand alloc] initWithLowLightBoostEnabled:[(CAMModeAndDeviceCommand *)self _wantsLowLightBoostForMode:mode device:v98]];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v54 = 0x186u >> mode;
  v55 = mode < 9;
  v13 = -[CAMVideoStabilizationCommand initWithAutomaticVideoStabilizationEnabled:strength:frontRearSimultaneousVideoEnabled:configureSecondaryDevice:]([CAMVideoStabilizationCommand alloc], "initWithAutomaticVideoStabilizationEnabled:strength:frontRearSimultaneousVideoEnabled:configureSecondaryDevice:", v55 & (0x186u >> mode), [configurationCopy videoStabilizationStrength], objc_msgSend(configurationCopy, "frontRearSimultaneousVideoEnabled"), 0);
  [(CAMCaptureCommand *)self addSubcommand:v13];
  v86 = [[CAMVideoHDRCommand alloc] initWithVideoHDREnabled:1];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v14 = -[CAMVideoHDRSuspensionCommand initWithVideoHDRSuspended:]([CAMVideoHDRSuspensionCommand alloc], "initWithVideoHDRSuspended:", [configurationCopy isVideoHDRSuspended]);
  [(CAMCaptureCommand *)self addSubcommand:v14];
  v84 = [[CAMTimelapseStabilizationCommand alloc] initWithTimelapseStabilizationEnabled:mode == 5];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v83 = [[CAMVideoRecordOrientationCommand alloc] initWithEnabled:mode == 1];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v82 = [[CAMVideoRecordFaceMetadataCommand alloc] initWithEnabled:mode == 1];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v81 = [[CAMVideoLivePhotoMetadataWritingEnabledCommand alloc] initWithEnabled:[(CAMModeAndDeviceCommand *)self _wantsLivePhotoMetadataInVideosForMode:mode device:v98]];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v15 = -[CAMSampleBufferVideoFormatOutputCommand initWithSampleBufferVideoFormat:]([CAMSampleBufferVideoFormatOutputCommand alloc], "initWithSampleBufferVideoFormat:", [configurationCopy previewSampleBufferVideoFormat]);
  [(CAMCaptureCommand *)self addSubcommand:v15];
  videoThumbnailOutputConfiguration = [configurationCopy videoThumbnailOutputConfiguration];
  if (videoThumbnailOutputConfiguration)
  {
    v17 = [[CAMVideoThumbnailOutputConfigurationCommand alloc] initWithConfiguration:videoThumbnailOutputConfiguration];
    [(CAMCaptureCommand *)self addSubcommand:v17];
  }

  v78 = -[CAMPreviewConfigurationCommand initWithPreviewConfiguration:]([CAMPreviewConfigurationCommand alloc], "initWithPreviewConfiguration:", [configurationCopy previewConfiguration]);
  [(CAMCaptureCommand *)self addSubcommand:?];
  v18 = -[CAMColorSpaceCommand initWithColorSpace:]([CAMColorSpaceCommand alloc], "initWithColorSpace:", [configurationCopy colorSpace]);
  [(CAMCaptureCommand *)self addSubcommand:v18];
  v93 = v10;
  v87 = v13;
  v85 = v14;
  v79 = videoThumbnailOutputConfiguration;
  v80 = v15;
  v77 = v18;
  if (mode <= 5)
  {
    if (mode)
    {
      if (mode == 4)
      {
        isLiveFilteringSupported = [v100 isLiveFilteringSupported];
        enableDepthSuggestion = 0;
        v68 = 0;
        v21 = 0;
        v22 = v100;
        v23 = 0;
        isDeferredPortraitRenderingSupported = 0;
        v25 = 0;
      }

      else
      {
        enableDepthSuggestion = 0;
        v68 = 0;
        v21 = 0;
        v22 = v100;
        v23 = 0;
        isDeferredPortraitRenderingSupported = 0;
        v25 = 0;
        isLiveFilteringSupported = 0;
      }
    }

    else
    {
      if ([v100 isPhotoModeDepthSuggestionSupportedForDevicePosition:v96])
      {
        enableDepthSuggestion = [configurationCopy enableDepthSuggestion];
      }

      else
      {
        enableDepthSuggestion = 0;
      }

      isDeferredPortraitRenderingSupported = [v100 previewQualityStillImageFilteringForPhotoModeSupported] & enableDepthSuggestion;
      v68 = 0;
      isLiveFilteringSupported = [v100 isLiveFilteringSupported] | enableDepthSuggestion;
      v21 = enableDepthSuggestion;
      v22 = v100;
      v23 = enableDepthSuggestion;
      v25 = enableDepthSuggestion;
    }
  }

  else if (mode == 6)
  {
    isDeferredPortraitRenderingSupported = [v100 isDeferredPortraitRenderingSupported];
    enableDepthSuggestion = 0;
    v68 = 0;
    v21 = 1;
    v22 = v100;
    v23 = 1;
    v25 = 1;
    isLiveFilteringSupported = 1;
  }

  else
  {
    enableDepthSuggestion = 0;
    v20 = mode != 9 && mode == 7;
    v68 = v20;
    v21 = mode == 9;
    v22 = v100;
    v23 = mode != 9 && mode == 7;
    isDeferredPortraitRenderingSupported = 0;
    v25 = 0;
    isLiveFilteringSupported = mode != 9 && mode == 7;
  }

  v76 = [[CAMPreviewFilteredRenderingEnabledCommand alloc] initWithFilteredRenderingEnabled:isLiveFilteringSupported & 1];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v75 = [[CAMStillImageFilteredRenderingEnabledCommand alloc] initWithFilteredRenderingEnabled:v25];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v74 = [[CAMStillImagePreviewQualityFilteredRenderingEnabledCommand alloc] initWithPreviewQualityFilteredRenderingEnabled:isDeferredPortraitRenderingSupported];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v27 = [[CAMPreviewDepthDataDeliveryEnabledCommand alloc] initWithDepthDataDeliveryEnabled:v23];
  [(CAMCaptureCommand *)self addSubcommand:v27];
  v73 = [[CAMStillImageDepthDataDeliveryEnabledCommand alloc] initWithDepthDataDeliveryEnabled:v21];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v72 = [[CAMPortraitAutoSuggestEnabledCommand alloc] initWithPortraitAutoSuggestEnabled:enableDepthSuggestion];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v71 = [[CAMEnableAvailableSemanticSegmentationMatteTypesCommand alloc] initWithEnabled:v21];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v70 = [[CAMStillImagePortraitEffectsMatteDeliveryEnabledCommand alloc] initWithPortraitEffectsMatteDeliveryEnabled:v21];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v69 = [[CAMVideoDepthDataEnabledCommand alloc] initWithEnabled:v68];
  [(CAMCaptureCommand *)self addSubcommand:?];
  previewFilters = [configurationCopy previewFilters];
  v66 = [[CAMPreviewFiltersCommand alloc] initWithFilters:previewFilters captureMode:mode];
  [(CAMCaptureCommand *)self addSubcommand:?];
  v28 = v22;
  if ([v22 smartStylesSupported])
  {
    previewSemanticStyle = [configurationCopy previewSemanticStyle];
    v30 = [[CAMSessionSmartStyleCommand alloc] initWithSmartStyle:previewSemanticStyle];
    [(CAMCaptureCommand *)self addSubcommand:v30];
  }

  else
  {
    previewSemanticStyle = -[CAMSemanticStylesEnabledCommand initWithEnabled:]([CAMSemanticStylesEnabledCommand alloc], "initWithEnabled:", [configurationCopy semanticStyleSupport] & 1);
    [(CAMCaptureCommand *)self addSubcommand:previewSemanticStyle];
    semanticStyleSupport = [configurationCopy semanticStyleSupport];
    v32 = semanticStyleSupport;
    v30 = [[CAMSemanticStylesPreviewEnabledCommand alloc] initWithEnabled:(semanticStyleSupport >> 2) & 1];
    [(CAMCaptureCommand *)self addSubcommand:v30];
    if ((v32 & 4) != 0)
    {
      v33 = [CAMSemanticStylesPreviewStyleCommand alloc];
      previewSemanticStyle2 = [configurationCopy previewSemanticStyle];
      v35 = [(CAMSemanticStylesPreviewStyleCommand *)v33 initWithStyle:previewSemanticStyle2];

      [(CAMCaptureCommand *)self addSubcommand:v35];
    }
  }

  v65 = -[CAMPreviewLayerZoomPIPEnabledCommand initWithEnabled:]([CAMPreviewLayerZoomPIPEnabledCommand alloc], "initWithEnabled:", [configurationCopy enableZoomPIP]);
  [(CAMCaptureCommand *)self addSubcommand:?];
  v36 = [(CAMModeAndDeviceCommand *)self _specificEncodingBehaviorCommandForGraphConfiguration:configurationCopy];
  if (v36)
  {
    [(CAMCaptureCommand *)self addSubcommand:v36];
  }

  v64 = v36;
  v37 = [(CAMModeAndDeviceCommand *)self _specificPreparePhotoSettingsCommandForGraphConfiguration:configurationCopy];
  if (v37)
  {
    [(CAMCaptureCommand *)self addSubcommand:v37];
  }

  v63 = v37;
  v62 = objc_alloc_init(CAMSystemPressureMitigationCommand);
  [(CAMCaptureCommand *)self addSubcommand:?];
  if ([v28 isAutoFPSVideoSupportedForMode:mode videoConfiguration:objc_msgSend(configurationCopy videoEncodingBehavior:"videoConfiguration") outputToExternalStorage:objc_msgSend(configurationCopy prefersHDR10BitVideo:"videoEncodingBehavior") frontRearSimultaneousVideoEnabled:{-[CAMModeAndDeviceCommand _outputToExternalStorage](self, "_outputToExternalStorage"), objc_msgSend(configurationCopy, "prefersHDR10BitVideo"), objc_msgSend(configurationCopy, "frontRearSimultaneousVideoEnabled")}])
  {
    enableAutoFPSVideo = [configurationCopy enableAutoFPSVideo];
  }

  else
  {
    enableAutoFPSVideo = 0;
  }

  v39 = v96;
  v97 = [[CAMAutoFPSVideoCommand alloc] initWithAutoFPSVideoEnabled:enableAutoFPSVideo];
  [(CAMCaptureCommand *)self addSubcommand:?];
  if (v101[0] == 1)
  {
    v40 = [[CAMAutoFPSVideoCommand alloc] initWithAutoFPSVideoEnabled:enableAutoFPSVideo configureSecondaryDevice:1];
    [(CAMCaptureCommand *)self addSubcommand:v40];
  }

  v99 = -[CAMSpatialOverCaptureEnabledCommand initWithSpatialOverCaptureEnabled:]([CAMSpatialOverCaptureEnabledCommand alloc], "initWithSpatialOverCaptureEnabled:", [v28 spatialOverCaptureSupportForMode:mode device:v98] & 1);
  [(CAMCaptureCommand *)self addSubcommand:?];
  v41 = [v28 isAspectRatioCropSupportedForMode:mode devicePosition:v39];
  v61 = [[CAMNonDestructiveCropEnabledCommand alloc] initWithNonDestructiveCropEnabled:v41];
  [(CAMCaptureCommand *)self addSubcommand:?];
  if (v41)
  {
    v42 = -[CAMNonDestructiveCropAspectRatioCommand initWithAspectRatioCrop:]([CAMNonDestructiveCropAspectRatioCommand alloc], "initWithAspectRatioCrop:", [configurationCopy aspectRatioCrop]);
    [(CAMCaptureCommand *)self addSubcommand:v42];
  }

  v43 = -[CAMDeferredProcessingEnabledCommand initWithDeferredProcessingEnabled:]([CAMDeferredProcessingEnabledCommand alloc], "initWithDeferredProcessingEnabled:", [v28 isDeferredProcessingSupportedForMode:mode devicePosition:v39]);
  [(CAMCaptureCommand *)self addSubcommand:v43];
  v60 = -[CAMPhotoQualityPrioritizationConfigurationCommand initWithPhotoQualityPrioritization:]([CAMPhotoQualityPrioritizationConfigurationCommand alloc], "initWithPhotoQualityPrioritization:", [configurationCopy photoQualityPrioritization]);
  [(CAMCaptureCommand *)self addSubcommand:?];
  v59 = -[CAMMirrorOutputVideoCommand initWithOutputMirrored:]([CAMMirrorOutputVideoCommand alloc], "initWithOutputMirrored:", [configurationCopy isCaptureMirrored]);
  [(CAMCaptureCommand *)self addSubcommand:?];
  v58 = -[CAMContentAwareDistortionCorrectionCommand initWithContentAwareDistortionCorrectionEnabled:]([CAMContentAwareDistortionCorrectionCommand alloc], "initWithContentAwareDistortionCorrectionEnabled:", [configurationCopy enableContentAwareDistortionCorrection]);
  [(CAMCaptureCommand *)self addSubcommand:?];
  v57 = -[CAMDemosaicedRAWEnabledCommand initWithEnabled:]([CAMDemosaicedRAWEnabledCommand alloc], "initWithEnabled:", [configurationCopy enableRAWCaptureIfSupported]);
  [(CAMCaptureCommand *)self addSubcommand:?];
  v56 = -[CAMResponsiveShutterEnabledCommand initWithEnabled:]([CAMResponsiveShutterEnabledCommand alloc], "initWithEnabled:", [configurationCopy enableResponsiveShutter]);
  [(CAMCaptureCommand *)self addSubcommand:?];
  v44 = -[CAMMaximumPhotoResolutionCommand initWithMaximumPhotoResolution:mode:devicePosition:]([CAMMaximumPhotoResolutionCommand alloc], "initWithMaximumPhotoResolution:mode:devicePosition:", [configurationCopy maximumPhotoResolution], objc_msgSend(configurationCopy, "mode"), objc_msgSend(configurationCopy, "devicePosition"));
  [(CAMCaptureCommand *)self addSubcommand:v44];
  v45 = [v28 fallbackPrimaryConstituentDeviceSelectionForMode:objc_msgSend(configurationCopy device:"mode") videoConfiguration:objc_msgSend(configurationCopy videoStabilizationStrength:"device") frontRearSimultaneousVideoEnabled:objc_msgSend(configurationCopy macroMode:{"videoConfiguration"), objc_msgSend(configurationCopy, "videoStabilizationStrength"), objc_msgSend(configurationCopy, "frontRearSimultaneousVideoEnabled"), objc_msgSend(configurationCopy, "macroMode")}];
  v46 = [[CAMPrimaryConstituentDeviceSwitchingBehaviorCommand alloc] initWithBehavior:0];
  [(CAMCaptureCommand *)self addSubcommand:v46];
  v47 = [[CAMFallbackPrimaryConstituentDeviceCommand alloc] initWithFallbackPrimaryConstituentDeviceSelection:v45];
  [(CAMCaptureCommand *)self addSubcommand:v47];
  frontRearSimultaneousVideoEnabled = [configurationCopy frontRearSimultaneousVideoEnabled];
  v49 = [[CAMFrontRearSimultaneousVideoRecordingCommand alloc] initWithVideoRecordingEnabled:frontRearSimultaneousVideoEnabled];
  [(CAMCaptureCommand *)self addSubcommand:v49];
  v50 = [[CAMFrontRearSimultaneousCaptureCommand alloc] initWithFrontRearSimultaneousCaptureEnabled:frontRearSimultaneousVideoEnabled];
  [(CAMCaptureCommand *)self addSubcommand:v50];
  if (frontRearSimultaneousVideoEnabled)
  {
    if ([v100 isSmartFramingSupported])
    {
      initForSecondaryDevice = [[CAMDynamicAspectRatioCommand alloc] initForSecondaryDevice];
      [(CAMCaptureCommand *)self addSubcommand:initForSecondaryDevice];
    }

    v52 = -[CAMVideoStabilizationCommand initWithAutomaticVideoStabilizationEnabled:strength:frontRearSimultaneousVideoEnabled:configureSecondaryDevice:]([CAMVideoStabilizationCommand alloc], "initWithAutomaticVideoStabilizationEnabled:strength:frontRearSimultaneousVideoEnabled:configureSecondaryDevice:", v55 & v54, [configurationCopy secondaryDeviceVideoStabilizationStrength], 1, 1);
    [(CAMCaptureCommand *)self addSubcommand:v52];
  }

  v53 = [[CAMPostConfigurationSetupCommand alloc] initWithGraphConfiguration:configurationCopy];
  [(CAMCaptureCommand *)self addSubcommand:v53];
}

- (void)_performPostConfigurationSanityCheckForGraphConfiguration:(id)configuration withContext:(id)context
{
  v46 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  contextCopy = context;
  mode = [configurationCopy mode];
  currentCaptureSession = [contextCopy currentCaptureSession];
  v9 = [(CAMModeAndDeviceCommand *)self _primaryEngineDeviceWithContext:contextCopy graphConfiguration:configurationCopy resolvedDevice:0];
  captureDevice = [v9 captureDevice];
  activeFormat = [captureDevice activeFormat];
  v11 = [v9 videoDeviceFormatForGraphConfiguration:configurationCopy captureSession:currentCaptureSession deviceIsSecondary:0];
  v12 = v11;
  v13 = 0;
  if (v11 && activeFormat != v11)
  {
    v14 = os_log_create("com.apple.camera", "CaptureSession");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      device = [configurationCopy device];
      if (device > 0xB)
      {
        v31 = 0;
      }

      else
      {
        v31 = off_1E76FA438[device];
      }

      *buf = 138543874;
      v41 = v31;
      v42 = 2114;
      v43 = activeFormat;
      v44 = 2114;
      v45 = v12;
      _os_log_error_impl(&dword_1A3640000, v14, OS_LOG_TYPE_ERROR, "Primary device %{public}@'s active device format %{public}@ does not match expected device format %{public}@", buf, 0x20u);
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CAMModeAndDeviceCommandCannotCaptureErrorDomain" code:-32202 userInfo:0];
  }

  v37 = v12;
  v39 = 0;
  v15 = [configurationCopy secondaryDevice:&v39];
  v38 = activeFormat;
  if (v39 == 1)
  {
    v16 = v15;
    v17 = [(CAMModeAndDeviceCommand *)self _secondaryEngineDeviceWithContext:contextCopy graphConfiguration:configurationCopy resolvedDevice:0];
    v18 = v17;
    if (v17)
    {
      captureDevice2 = [v17 captureDevice];
      activeFormat2 = [captureDevice2 activeFormat];
      v20 = [v18 videoDeviceFormatForGraphConfiguration:configurationCopy captureSession:currentCaptureSession deviceIsSecondary:1];
      v21 = v20;
      v34 = activeFormat2;
      if (v20 && activeFormat2 != v20)
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

  outputs = [currentCaptureSession outputs];
  v25 = [contextCopy primaryOutputForMode:mode graphConfiguration:configurationCopy];
  if ([outputs containsObject:v25])
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

- (BOOL)_shouldEnableLivePhotoCaptureForMode:(int64_t)mode device:(int64_t)device
{
  v6 = +[CAMCaptureCapabilities capabilities];
  v7 = v6;
  if ((device - 1) > 0xA)
  {
    v8 = 0;
  }

  else
  {
    v8 = qword_1A3A686F8[device - 1];
  }

  v9 = [v6 isLivePhotoSupportedForDevicePosition:v8];
  if (mode)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  if (mode == 4)
  {
    v10 = v9;
  }

  if (mode == 9)
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