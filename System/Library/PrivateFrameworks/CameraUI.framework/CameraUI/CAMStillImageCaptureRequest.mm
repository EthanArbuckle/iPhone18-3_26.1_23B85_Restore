@interface CAMStillImageCaptureRequest
+ (unsigned)rawPixelFormatTypeForPhotoOutput:(id)output;
- (BOOL)hasAdjustments;
- (BOOL)isEV0LocalVideoDestinationURL:(id)l;
- (BOOL)needsLivePhotoCaptureResumedOnPhotoOutput:(id)output;
- (BOOL)shouldProtectPersistenceForVideo;
- (CAMStillImageCaptureRequest)init;
- (CAMStillImageCaptureRequest)initWithRequest:(id)request distinctPersistence:(BOOL)persistence;
- (CAMStillImageCaptureRequestDelegate)delegate;
- (CGSize)desiredPreviewSize;
- (id)capturePhotoSettingsWithContext:(id)context;
- (id)irisIdentifierForEV0:(BOOL)v0;
- (id)irisLocalVideoDestinationURLForEV0:(BOOL)v0;
- (id)irisStillImagePersistenceUUIDForEV0:(BOOL)v0;
- (id)irisVideoPersistenceUUIDForEV0:(BOOL)v0;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)_configurePhotoSettings:(id)settings shouldIgnoreInitiationSettingsProperties:(BOOL)properties context:(id)context;
- (void)_configureRawFileFormat:(id)format context:(id)context rawPixelFormatType:(unsigned int)type;
- (void)_sanitizeCapturePhotoSettings:(id)settings withContext:(id)context;
@end

@implementation CAMStillImageCaptureRequest

- (CAMStillImageCaptureRequest)init
{
  v24.receiver = self;
  v24.super_class = CAMStillImageCaptureRequest;
  v2 = [(CAMCaptureRequest *)&v24 initWithType:0];
  v3 = v2;
  if (v2)
  {
    v2->_flashMode = 2;
    v2->_torchMode = 2;
    v2->_hdrMode = 1;
    v2->_photoQualityPrioritization = 1;
    v2->_wantsAutoDualCameraFusion = 1;
    v4 = +[CAMCaptureCapabilities capabilities];
    v3->_wantsSemanticSceneFilter = [v4 semanticDevelopmentSupported];

    semanticStyle = v3->_semanticStyle;
    v3->_semanticStyle = 0;

    v3->_ctmCaptureType = 0;
    v3->_desiredPreviewSize = *MEMORY[0x1E695F060];
    burstIdentifier = v3->_burstIdentifier;
    v3->_burstIdentifier = 0;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    irisIdentifier = v3->_irisIdentifier;
    v3->_irisIdentifier = uUIDString;

    uUID2 = [MEMORY[0x1E696AFB0] UUID];
    uUIDString2 = [uUID2 UUIDString];
    videoPersistenceUUID = v3->_videoPersistenceUUID;
    v3->_videoPersistenceUUID = uUIDString2;

    uUID3 = [MEMORY[0x1E696AFB0] UUID];
    uUIDString3 = [uUID3 UUIDString];
    EV0IrisIdentifier = v3->_EV0IrisIdentifier;
    v3->_EV0IrisIdentifier = uUIDString3;

    uUID4 = [MEMORY[0x1E696AFB0] UUID];
    uUIDString4 = [uUID4 UUIDString];
    EV0VideoPersistenceUUID = v3->_EV0VideoPersistenceUUID;
    v3->_EV0VideoPersistenceUUID = uUIDString4;

    uUID5 = [MEMORY[0x1E696AFB0] UUID];
    uUIDString5 = [uUID5 UUIDString];
    EV0PersistenceUUID = v3->_EV0PersistenceUUID;
    v3->_EV0PersistenceUUID = uUIDString5;

    v3->_userInitiationTime = 0;
    v3->_maximumPhotoResolution = 0;
    v3->_wantsWhiteBalanceLockedDuringVideoRecording = 0;
    v3->_stereoCaptureStatus = 1;
    v22 = v3;
  }

  return v3;
}

- (CGSize)desiredPreviewSize
{
  width = self->_desiredPreviewSize.width;
  height = self->_desiredPreviewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CAMStillImageCaptureRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CAMStillImageCaptureRequest)initWithRequest:(id)request distinctPersistence:(BOOL)persistence
{
  persistenceCopy = persistence;
  requestCopy = request;
  v43.receiver = self;
  v43.super_class = CAMStillImageCaptureRequest;
  v7 = [(CAMCaptureRequest *)&v43 initWithRequest:requestCopy distinctPersistence:persistenceCopy];
  if (v7)
  {
    v7->_flashMode = [requestCopy flashMode];
    v7->_hdrMode = [requestCopy hdrMode];
    v7->_irisMode = [requestCopy irisMode];
    v7->_ctmCaptureType = [requestCopy ctmCaptureType];
    v7->_nightMode = [requestCopy nightMode];
    v7->_wantsDepthData = [requestCopy wantsDepthData];
    adjustmentFilters = [requestCopy adjustmentFilters];
    v9 = [adjustmentFilters copy];
    adjustmentFilters = v7->_adjustmentFilters;
    v7->_adjustmentFilters = v9;

    originalFilters = [requestCopy originalFilters];
    v12 = [originalFilters copy];
    originalFilters = v7->_originalFilters;
    v7->_originalFilters = v12;

    v7->_photoQualityPrioritization = [requestCopy photoQualityPrioritization];
    v7->_wantsAutoDualCameraFusion = [requestCopy wantsAutoDualCameraFusion];
    v7->_wantsSemanticSceneFilter = [requestCopy wantsSemanticSceneFilter];
    semanticStyle = [requestCopy semanticStyle];
    semanticStyle = v7->_semanticStyle;
    v7->_semanticStyle = semanticStyle;

    v7->_wantsAudioForCapture = [requestCopy wantsAudioForCapture];
    v7->_wantsShutterSoundSuppression = [requestCopy wantsShutterSoundSuppression];
    v7->_wantsSquareCrop = [requestCopy wantsSquareCrop];
    v7->_aspectRatioCrop = [requestCopy aspectRatioCrop];
    v7->_wantsHighResolutionStills = [requestCopy wantsHighResolutionStills];
    v7->_stillDuringVideo = [requestCopy stillDuringVideo];
    textAnalysisIdentifier = [requestCopy textAnalysisIdentifier];
    v17 = [textAnalysisIdentifier copy];
    textAnalysisIdentifier = v7->_textAnalysisIdentifier;
    v7->_textAnalysisIdentifier = v17;

    textAnalysisRegion = [requestCopy textAnalysisRegion];
    textAnalysisRegion = v7->_textAnalysisRegion;
    v7->_textAnalysisRegion = textAnalysisRegion;

    [requestCopy desiredPreviewSize];
    v7->_desiredPreviewSize.width = v21;
    v7->_desiredPreviewSize.height = v22;
    delegate = [requestCopy delegate];
    objc_storeWeak(&v7->_delegate, delegate);

    burstIdentifier = [requestCopy burstIdentifier];
    burstIdentifier = v7->_burstIdentifier;
    v7->_burstIdentifier = burstIdentifier;

    v7->_maximumBurstLength = [requestCopy maximumBurstLength];
    v7->_effectFilterType = [requestCopy effectFilterType];
    timelapseIdentifier = [requestCopy timelapseIdentifier];
    timelapseIdentifier = v7->_timelapseIdentifier;
    v7->_timelapseIdentifier = timelapseIdentifier;

    v7->_lightingEffectType = [requestCopy lightingEffectType];
    v7->_wantsEV0ForHDR = [requestCopy wantsEV0ForHDR];
    irisIdentifier = [requestCopy irisIdentifier];
    irisIdentifier = v7->_irisIdentifier;
    v7->_irisIdentifier = irisIdentifier;

    localVideoDestinationURL = [requestCopy localVideoDestinationURL];
    localVideoDestinationURL = v7->_localVideoDestinationURL;
    v7->_localVideoDestinationURL = localVideoDestinationURL;

    localCTMVideoDestinationURL = [requestCopy localCTMVideoDestinationURL];
    localCTMVideoDestinationURL = v7->_localCTMVideoDestinationURL;
    v7->_localCTMVideoDestinationURL = localCTMVideoDestinationURL;

    v7->_disablesCameraSwitchingDuringRecording = [requestCopy disablesCameraSwitchingDuringRecording];
    v7->_torchMode = [requestCopy torchMode];
    if (persistenceCopy)
    {
      delegate = [MEMORY[0x1E696AFB0] UUID];
      [delegate UUIDString];
    }

    else
    {
      [requestCopy videoPersistenceUUID];
    }
    v34 = ;
    objc_storeStrong(&v7->_videoPersistenceUUID, v34);
    if (persistenceCopy)
    {

      v34 = delegate;
    }

    eV0IrisIdentifier = [requestCopy EV0IrisIdentifier];
    EV0IrisIdentifier = v7->_EV0IrisIdentifier;
    v7->_EV0IrisIdentifier = eV0IrisIdentifier;

    eV0LocalVideoDestinationURL = [requestCopy EV0LocalVideoDestinationURL];
    EV0LocalVideoDestinationURL = v7->_EV0LocalVideoDestinationURL;
    v7->_EV0LocalVideoDestinationURL = eV0LocalVideoDestinationURL;

    if (persistenceCopy)
    {
      delegate = [MEMORY[0x1E696AFB0] UUID];
      [delegate UUIDString];
    }

    else
    {
      [requestCopy EV0VideoPersistenceUUID];
    }
    v39 = ;
    objc_storeStrong(&v7->_EV0VideoPersistenceUUID, v39);

    if (persistenceCopy)
    {

      delegate = [MEMORY[0x1E696AFB0] UUID];
      [delegate UUIDString];
    }

    else
    {
      [requestCopy EV0PersistenceUUID];
    }
    v40 = ;
    objc_storeStrong(&v7->_EV0PersistenceUUID, v40);
    if (persistenceCopy)
    {

      v40 = delegate;
    }

    v7->_userInitiationTime = [requestCopy userInitiationTime];
    v7->_maximumPhotoResolution = [requestCopy maximumPhotoResolution];
    v7->_wantsWhiteBalanceLockedDuringVideoRecording = [requestCopy wantsWhiteBalanceLockedDuringVideoRecording];
    v7->super._rawFileFormatBehavior = [requestCopy rawFileFormatBehavior];
    v7->_stereoCaptureStatus = [requestCopy stereoCaptureStatus];
    v7->_frontRearSimultaneousCaptureEnabled = [requestCopy isFrontRearSimultaneousCaptureEnabled];
    v7->_frontRearSimultaneousCaptureMirrored = [requestCopy isFrontRearSimultaneousCaptureMirrored];
    v41 = v7;
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CAMMutableStillImageCaptureRequest alloc];

  return [(CAMStillImageCaptureRequest *)v4 initWithRequest:self distinctPersistence:0];
}

- (id)irisIdentifierForEV0:(BOOL)v0
{
  if (v0)
  {
    [(CAMStillImageCaptureRequest *)self EV0IrisIdentifier];
  }

  else
  {
    [(CAMStillImageCaptureRequest *)self irisIdentifier];
  }
  v3 = ;

  return v3;
}

- (id)irisStillImagePersistenceUUIDForEV0:(BOOL)v0
{
  if (v0)
  {
    [(CAMStillImageCaptureRequest *)self EV0PersistenceUUID];
  }

  else
  {
    [(CAMCaptureRequest *)self persistenceUUID];
  }
  v3 = ;

  return v3;
}

- (id)irisVideoPersistenceUUIDForEV0:(BOOL)v0
{
  if (v0)
  {
    [(CAMStillImageCaptureRequest *)self EV0VideoPersistenceUUID];
  }

  else
  {
    [(CAMStillImageCaptureRequest *)self videoPersistenceUUID];
  }
  v3 = ;

  return v3;
}

- (id)irisLocalVideoDestinationURLForEV0:(BOOL)v0
{
  if (v0)
  {
    [(CAMStillImageCaptureRequest *)self EV0LocalVideoDestinationURL];
  }

  else
  {
    [(CAMStillImageCaptureRequest *)self localVideoDestinationURL];
  }
  v3 = ;

  return v3;
}

- (BOOL)isEV0LocalVideoDestinationURL:(id)l
{
  lCopy = l;
  v5 = [(CAMStillImageCaptureRequest *)self irisLocalVideoDestinationURLForEV0:1];
  v6 = [lCopy isEqual:v5];

  return v6;
}

- (BOOL)shouldProtectPersistenceForVideo
{
  shouldProtectPersistence = [(CAMCaptureRequest *)self shouldProtectPersistence];
  if (shouldProtectPersistence)
  {

    LOBYTE(shouldProtectPersistence) = [(CAMStillImageCaptureRequest *)self isCTMVideo];
  }

  return shouldProtectPersistence;
}

- (BOOL)hasAdjustments
{
  if ([(CAMStillImageCaptureRequest *)self effectFilterType]|| [(CAMStillImageCaptureRequest *)self lightingEffectType]|| [(CAMStillImageCaptureRequest *)self aspectRatioCrop])
  {
    return 1;
  }

  adjustmentFilters = [(CAMStillImageCaptureRequest *)self adjustmentFilters];
  v3 = [adjustmentFilters count] != 0;

  return v3;
}

- (id)capturePhotoSettingsWithContext:(id)context
{
  v16[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  burstIdentifier = [(CAMStillImageCaptureRequest *)self burstIdentifier];

  if (burstIdentifier)
  {
    burstQualityPhotoSettings = [MEMORY[0x1E6987100] burstQualityPhotoSettings];
LABEL_3:
    v7 = burstQualityPhotoSettings;
    goto LABEL_4;
  }

  photoEncodingBehavior = [(CAMCaptureRequest *)self photoEncodingBehavior];
  switch(photoEncodingBehavior)
  {
    case 0:
      burstQualityPhotoSettings = [MEMORY[0x1E6987100] photoSettings];
      goto LABEL_3;
    case 2:
      v12 = objc_opt_class();
      currentStillImageOutput = [contextCopy currentStillImageOutput];
      v14 = [v12 rawPixelFormatTypeForPhotoOutput:currentStillImageOutput];

      v7 = [MEMORY[0x1E6987100] photoSettingsWithRawPixelFormatType:v14 rawFileType:*MEMORY[0x1E6987498] processedFormat:0 processedFileType:*MEMORY[0x1E6987498]];
      [(CAMStillImageCaptureRequest *)self _configureRawFileFormat:v7 context:contextCopy rawPixelFormatType:v14];
      break;
    case 1:
      v10 = MEMORY[0x1E6987100];
      v15 = *MEMORY[0x1E6987CB0];
      v16[0] = *MEMORY[0x1E6987CF0];
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v7 = [v10 photoSettingsWithFormat:v11];

      break;
    default:
      v7 = 0;
      break;
  }

LABEL_4:
  [(CAMStillImageCaptureRequest *)self _configurePhotoSettings:v7 shouldIgnoreInitiationSettingsProperties:0 context:contextCopy];

  return v7;
}

- (void)_configureRawFileFormat:(id)format context:(id)context rawPixelFormatType:(unsigned int)type
{
  v5 = *&type;
  v25 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  contextCopy = context;
  rawFileFormatBehavior = [(CAMCaptureRequest *)self rawFileFormatBehavior];
  currentStillImageOutput = [contextCopy currentStillImageOutput];

  v12 = [currentStillImageOutput supportedRawPhotoCodecTypesForRawPhotoPixelFormatType:v5 fileType:*MEMORY[0x1E6987498]];
  if (rawFileFormatBehavior == 1)
  {
    v13 = &unk_1F16C9DB0;
    goto LABEL_5;
  }

  if (rawFileFormatBehavior == 2)
  {
    v13 = &unk_1F16C9DC0;
LABEL_5:
    v14 = CAMNUStringForTypeCode(1786276963);
    v15 = 0;
    goto LABEL_7;
  }

  v13 = 0;
  v14 = 0;
  v15 = 1;
LABEL_7:
  v16 = [v12 indexOfObject:v14];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v18 = dictionary;
  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v14)
    {
      v19 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v12 componentsJoinedByString:{@", "}];
        v21 = 138543618;
        v22 = v14;
        v23 = 2114;
        v24 = v20;
        _os_log_impl(&dword_1A3640000, v19, OS_LOG_TYPE_DEFAULT, "Raw file format: requested type %{public}@ not supported, supportedCodecTypes=(%{public}@)", &v21, 0x16u);
      }
    }
  }

  else
  {
    if (v14)
    {
      [dictionary setObject:v14 forKey:*MEMORY[0x1E6987CB0]];
    }

    if ((v15 & 1) == 0)
    {
      [v18 setObject:v13 forKey:*MEMORY[0x1E6987DC0]];
    }
  }

  if ([v18 count])
  {
    [formatCopy setRawFileFormat:v18];
  }
}

- (void)_configurePhotoSettings:(id)settings shouldIgnoreInitiationSettingsProperties:(BOOL)properties context:(id)context
{
  v82[3] = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  contextCopy = context;
  v66 = +[CAMCaptureCapabilities capabilities];
  currentStillImageOutput = [contextCopy currentStillImageOutput];
  currentVideoDeviceFormat = [contextCopy currentVideoDeviceFormat];
  if (!properties)
  {
    [settingsCopy setFlashMode:{+[CAMCaptureConversions captureFlashModeForFlashMode:](CAMCaptureConversions, "captureFlashModeForFlashMode:", -[CAMStillImageCaptureRequest flashMode](self, "flashMode"))}];
    [settingsCopy setHDRMode:{+[CAMCaptureConversions captureHDRModeForHDRMode:](CAMCaptureConversions, "captureHDRModeForHDRMode:", -[CAMStillImageCaptureRequest hdrMode](self, "hdrMode"))}];
    if ([settingsCopy flashMode] == 1 && objc_msgSend(settingsCopy, "HDRMode") == 1)
    {
      [settingsCopy setHDRMode:0];
    }

    [settingsCopy setPhotoQualityPrioritization:{+[CAMCaptureConversions AVCapturePhotoQualityPrioritizationForCAMPhotoQualityPrioritization:](CAMCaptureConversions, "AVCapturePhotoQualityPrioritizationForCAMPhotoQualityPrioritization:", -[CAMStillImageCaptureRequest photoQualityPrioritization](self, "photoQualityPrioritization"))}];
  }

  if ([v66 hasFilteringEntitlement])
  {
    originalFilters = [(CAMStillImageCaptureRequest *)self originalFilters];
    adjustmentFilters = [(CAMStillImageCaptureRequest *)self adjustmentFilters];
    if ([originalFilters count])
    {
      [settingsCopy setPhotoFilters:originalFilters];
    }

    if ([adjustmentFilters count])
    {
      [settingsCopy setAdjustedPhotoFilters:adjustmentFilters];
    }
  }

  [settingsCopy setDigitalFlashMode:{+[CAMCaptureConversions captureDigitalFlashModeForNightMode:](CAMCaptureConversions, "captureDigitalFlashModeForNightMode:", -[CAMStillImageCaptureRequest nightMode](self, "nightMode"))}];
  v13 = [v66 isHDREV0CaptureSupported] && -[CAMStillImageCaptureRequest wantsEV0ForHDR](self, "wantsEV0ForHDR") && objc_msgSend(settingsCopy, "HDRMode") != 0;
  [settingsCopy setEV0PhotoDeliveryEnabled:v13];
  wantsDepthData = [(CAMStillImageCaptureRequest *)self wantsDepthData];
  [settingsCopy setDepthDataDeliveryEnabled:wantsDepthData];
  [settingsCopy setEmbedsDepthDataInPhoto:wantsDepthData];
  [settingsCopy setPortraitEffectsMatteDeliveryEnabled:wantsDepthData];
  [settingsCopy setEmbedsPortraitEffectsMatteInPhoto:wantsDepthData];
  if (wantsDepthData)
  {
    availableSemanticSegmentationMatteTypes = [currentStillImageOutput availableSemanticSegmentationMatteTypes];
    [settingsCopy setEnabledSemanticSegmentationMatteTypes:availableSemanticSegmentationMatteTypes];
  }

  [settingsCopy setAutoVirtualDeviceFusionEnabled:{-[CAMStillImageCaptureRequest wantsAutoDualCameraFusion](self, "wantsAutoDualCameraFusion")}];
  if ([(CAMStillImageCaptureRequest *)self wantsAudioForCapture])
  {
    v16 = 1108;
  }

  else
  {
    v16 = 0;
  }

  [settingsCopy setShutterSound:v16];
  if (-[CAMStillImageCaptureRequest wantsShutterSoundSuppression](self, "wantsShutterSoundSuppression") && [currentStillImageOutput isShutterSoundSuppressionSupported])
  {
    [settingsCopy setShutterSoundSuppressionEnabled:1];
  }

  [settingsCopy setHighResolutionPhotoEnabled:{-[CAMStillImageCaptureRequest wantsHighResolutionStills](self, "wantsHighResolutionStills")}];
  wantsSquareCrop = [(CAMStillImageCaptureRequest *)self wantsSquareCrop];
  [settingsCopy setSquareCropEnabled:wantsSquareCrop];
  burstIdentifier = [(CAMStillImageCaptureRequest *)self burstIdentifier];

  if (!wantsSquareCrop && ([(CAMStillImageCaptureRequest *)self irisMode]- 1) <= 1)
  {
    v19 = [(CAMStillImageCaptureRequest *)self irisLocalVideoDestinationURLForEV0:0];
    [settingsCopy setLivePhotoMovieFileURL:v19];
    date = [MEMORY[0x1E695DF00] date];
    v21 = [CAMPersistenceController clientVideoMetadataForRequest:self withCreationDate:date isEV0ForHDR:0 livePhotoIdentifierOverride:0 slomoPlayback:0];
    [settingsCopy setLivePhotoMovieMetadata:v21];
    if (v13)
    {
      v22 = [(CAMStillImageCaptureRequest *)self irisLocalVideoDestinationURLForEV0:1];
      [settingsCopy setLivePhotoMovieFileURLForOriginalPhoto:v22];
      v23 = [CAMPersistenceController clientVideoMetadataForRequest:self withCreationDate:date isEV0ForHDR:1 livePhotoIdentifierOverride:0 slomoPlayback:0];
      [settingsCopy setLivePhotoMovieMetadataForOriginalPhoto:v23];
    }
  }

  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__33;
  v73 = __Block_byref_object_dispose__33;
  v74 = 0;
  availablePreviewPhotoPixelFormatTypes = [settingsCopy availablePreviewPhotoPixelFormatTypes];
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __122__CAMStillImageCaptureRequest_CAMCaptureEngine___configurePhotoSettings_shouldIgnoreInitiationSettingsProperties_context___block_invoke;
  v68[3] = &unk_1E76FE7A0;
  v68[4] = &v69;
  [availablePreviewPhotoPixelFormatTypes enumerateObjectsUsingBlock:v68];
  v64 = availablePreviewPhotoPixelFormatTypes;
  if (v70[5])
  {
    v25 = objc_alloc(MEMORY[0x1E695DF90]);
    v26 = [v25 initWithObjectsAndKeys:{v70[5], *MEMORY[0x1E6966130], 0}];
    [(CAMStillImageCaptureRequest *)self desiredPreviewSize];
    v28 = v27;
    if (v29 > 0.0 || v27 > 0.0)
    {
      v30 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      [v26 setObject:v30 forKey:*MEMORY[0x1E6966208]];

      v31 = [MEMORY[0x1E696AD98] numberWithDouble:v28];
      [v26 setObject:v31 forKey:*MEMORY[0x1E69660B8]];
    }

    [settingsCopy setPreviewPhotoFormat:v26];
    textAnalysisIdentifier = [(CAMStillImageCaptureRequest *)self textAnalysisIdentifier];
    v33 = textAnalysisIdentifier != 0;

    [settingsCopy setPreviewPhotoFormatDimensionsLimitedToDisplayDimensions:v33];
  }

  if ([(CAMCaptureRequest *)self photoEncodingBehavior]== 2)
  {
    if ([v66 useFullResolutionThumbnailForRAWCaptures] && -[CAMStillImageCaptureRequest maximumPhotoResolution](self, "maximumPhotoResolution"))
    {
      maximumPhotoResolution = [(CAMStillImageCaptureRequest *)self maximumPhotoResolution];
    }

    else
    {
      maximumPhotoResolution = 1;
    }

    v38 = +[CAMCaptureCapabilities capabilities];
    v39 = [v38 isSmartFramingSupportedForMode:-[CAMCaptureRequest captureMode](self devicePosition:{"captureMode"), -[CAMCaptureRequest captureDevicePosition](self, "captureDevicePosition")}];

    v40 = [CAMCaptureConversions CMVideoDimensionsForCAMPhotoResolution:maximumPhotoResolution wantsSquareDimensions:v39];
    availableRawEmbeddedThumbnailPhotoCodecTypes = [settingsCopy availableRawEmbeddedThumbnailPhotoCodecTypes];
    firstObject = [availableRawEmbeddedThumbnailPhotoCodecTypes firstObject];

    if (firstObject)
    {
      v42 = *MEMORY[0x1E6987CB0];
      v82[0] = firstObject;
      v43 = *MEMORY[0x1E6987E08];
      v81[0] = v42;
      v81[1] = v43;
      v44 = [MEMORY[0x1E696AD98] numberWithInt:v40];
      v82[1] = v44;
      v81[2] = *MEMORY[0x1E6987D70];
      v45 = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(*&v40)];
      v82[2] = v45;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:3];

      [settingsCopy setRawEmbeddedThumbnailPhotoFormat:v37];
    }

    else
    {
      v37 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [CAMStillImageCaptureRequest(CAMCaptureEngine) _configurePhotoSettings:v37 shouldIgnoreInitiationSettingsProperties:? context:?];
      }
    }
  }

  else
  {
    availableEmbeddedThumbnailPhotoCodecTypes = [settingsCopy availableEmbeddedThumbnailPhotoCodecTypes];
    firstObject = [CAMCaptureEncodingUtilities selectPhotoCodecFromAvailableCodecs:availableEmbeddedThumbnailPhotoCodecTypes withBehavior:[(CAMCaptureRequest *)self photoEncodingBehavior]];

    if (firstObject)
    {
      v79 = *MEMORY[0x1E6987CB0];
      v80 = firstObject;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
      [settingsCopy setEmbeddedThumbnailPhotoFormat:v37];
    }

    else
    {
      v37 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [CAMStillImageCaptureRequest(CAMCaptureEngine) _configurePhotoSettings:v37 shouldIgnoreInitiationSettingsProperties:? context:?];
      }
    }
  }

  semanticStyle = [(CAMStillImageCaptureRequest *)self semanticStyle];
  if (semanticStyle)
  {
    if (!burstIdentifier)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v47 = semanticStyle;
        avSemanticStyle = [v47 avSemanticStyle];
        [settingsCopy setSemanticStyle:avSemanticStyle];
      }
    }
  }

  v49 = [CAMCaptureMetadataUtilities metadataFromRequest:self];
  [settingsCopy setMetadata:v49];
  if ([(CAMStillImageCaptureRequest *)self maximumPhotoResolution])
  {
    v50 = +[CAMCaptureCapabilities capabilities];
    v51 = [v50 isSmartFramingSupportedForMode:-[CAMCaptureRequest captureMode](self devicePosition:{"captureMode"), -[CAMCaptureRequest captureDevicePosition](self, "captureDevicePosition")}];

    v67 = [CAMCaptureConversions CMVideoDimensionsForCAMPhotoResolution:[(CAMStillImageCaptureRequest *)self maximumPhotoResolution] wantsSquareDimensions:v51];
    supportedMaxPhotoDimensionsPrivate = [currentVideoDeviceFormat supportedMaxPhotoDimensionsPrivate];
    v53 = [MEMORY[0x1E696B098] valueWithBytes:&v67 objCType:"{?=ii}"];
    if ([supportedMaxPhotoDimensionsPrivate containsObject:v53])
    {
      [settingsCopy setMaxPhotoDimensions:v67];
    }

    else
    {
      v54 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        var0 = v67.var0;
        v77 = 1024;
        var1 = v67.var1;
        _os_log_impl(&dword_1A3640000, v54, OS_LOG_TYPE_DEFAULT, "supportedMaxPhotoDimensionsPrivate did not contain desired max photo dimensions (%d, %d)! Not setting AVCapturePhotoSettings maxPhotoDimensions", buf, 0xEu);
      }
    }
  }

  [settingsCopy setUserInitiatedPhotoRequestTime:{-[CAMStillImageCaptureRequest userInitiationTime](self, "userInitiationTime")}];
  v55 = +[CAMCaptureCapabilities capabilities];
  v56 = [v55 processZoomWithoutUpscaleForDevicePosition:{-[CAMCaptureRequest captureDevicePosition](self, "captureDevicePosition")}];

  if (v56 && [currentStillImageOutput isProcessedPhotoZoomWithoutUpscalingSupported])
  {
    [settingsCopy setProcessedPhotoZoomWithoutUpscalingEnabled:1];
  }

  livePhotoMovieFileURL = [settingsCopy livePhotoMovieFileURL];
  if (livePhotoMovieFileURL)
  {
    isLivePhotoCaptureEnabled = [currentStillImageOutput isLivePhotoCaptureEnabled];

    if (isLivePhotoCaptureEnabled)
    {
      videoEncodingBehavior = [(CAMCaptureRequest *)self videoEncodingBehavior];
      availableLivePhotoVideoCodecTypes = [currentStillImageOutput availableLivePhotoVideoCodecTypes];
      v61 = [CAMCaptureEncodingUtilities selectVideoCodecFromAvailableCodecs:availableLivePhotoVideoCodecTypes withBehavior:videoEncodingBehavior];
      if (v61)
      {
        [settingsCopy setLivePhotoVideoCodecType:v61];
      }
    }
  }

  [settingsCopy setAutoContentAwareDistortionCorrectionEnabled:{objc_msgSend(currentStillImageOutput, "isContentAwareDistortionCorrectionEnabled")}];
  if ([currentStillImageOutput isSpatialPhotoCaptureSupported] && objc_msgSend(currentStillImageOutput, "isSpatialPhotoCaptureEnabled"))
  {
    if ([settingsCopy photoQualityPrioritization] == 3)
    {
      [settingsCopy setAutoSpatialPhotoCaptureEnabled:1];
    }

    else
    {
      v62 = +[CAMCaptureConversions CAMPhotoQualityPrioritizationForAVCapturePhotoQualityPrioritization:](CAMCaptureConversions, "CAMPhotoQualityPrioritizationForAVCapturePhotoQualityPrioritization:", [settingsCopy photoQualityPrioritization]);
      v63 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        [CAMStillImageCaptureRequest(CAMCaptureEngine) _configurePhotoSettings:v62 shouldIgnoreInitiationSettingsProperties:v63 context:?];
      }
    }
  }

  [(CAMStillImageCaptureRequest *)self _sanitizeCapturePhotoSettings:settingsCopy withContext:contextCopy];

  _Block_object_dispose(&v69, 8);
}

void __122__CAMStillImageCaptureRequest_CAMCaptureEngine___configurePhotoSettings_shouldIgnoreInitiationSettingsProperties_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 intValue] == 875704422)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_sanitizeCapturePhotoSettings:(id)settings withContext:(id)context
{
  settingsCopy = settings;
  currentStillImageOutput = [context currentStillImageOutput];
  supportedFlashModes = [currentStillImageOutput supportedFlashModes];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(settingsCopy, "flashMode")}];
  v9 = [supportedFlashModes containsObject:v8];

  if ((v9 & 1) == 0)
  {
    [settingsCopy setFlashMode:0];
  }

  supportedHDRModes = [currentStillImageOutput supportedHDRModes];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(settingsCopy, "HDRMode")}];
  v12 = [supportedHDRModes containsObject:v11];

  if ((v12 & 1) == 0)
  {
    [settingsCopy setHDRMode:0];
    [settingsCopy setEV0PhotoDeliveryEnabled:0];
  }

  if (([currentStillImageOutput isLivePhotoCaptureEnabled] & 1) == 0)
  {
    [settingsCopy setLivePhotoMovieFileURL:0];
    [settingsCopy setLivePhotoMovieFileURLForOriginalPhoto:0];
    [settingsCopy setLivePhotoMovieMetadata:0];
    [settingsCopy setLivePhotoMovieMetadataForOriginalPhoto:0];
  }

  digitalFlashMode = [settingsCopy digitalFlashMode];
  supportedDigitalFlashModes = [currentStillImageOutput supportedDigitalFlashModes];
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:digitalFlashMode];
  v16 = [supportedDigitalFlashModes containsObject:v15];

  if (v16)
  {
    if (digitalFlashMode)
    {
      [settingsCopy setHDRMode:0];
      [settingsCopy setFlashMode:0];
      [settingsCopy setLivePhotoMovieFileURL:0];
      [settingsCopy setLivePhotoMovieFileURLForOriginalPhoto:0];
      [settingsCopy setLivePhotoMovieMetadata:0];
      [settingsCopy setLivePhotoMovieMetadataForOriginalPhoto:0];
    }
  }

  else
  {
    v17 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, v17, OS_LOG_TYPE_DEFAULT, "Disabling digital-flash capture because the output doesn't support the feature. This should only occur when the feature is force enabled via defaults.", buf, 2u);
    }

    [settingsCopy setDigitalFlashMode:0];
  }

  if (([currentStillImageOutput isDepthDataDeliverySupported] & 1) == 0 && objc_msgSend(settingsCopy, "isDepthDataDeliveryEnabled"))
  {
    v18 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_1A3640000, v18, OS_LOG_TYPE_DEFAULT, "Disabling depth delivery on photo output settings, because the output doesn't support depth delivery. This should only occur when Portrait is force enabled, as during emulation.", v24, 2u);
    }

    [settingsCopy setDepthDataDeliveryEnabled:0];
  }

  if (([currentStillImageOutput isPortraitEffectsMatteDeliverySupported] & 1) == 0)
  {
    [settingsCopy setPortraitEffectsMatteDeliveryEnabled:0];
    [settingsCopy setEmbedsPortraitEffectsMatteInPhoto:0];
  }

  semanticStyle = [settingsCopy semanticStyle];

  isSemanticStyleRenderingSupported = [currentStillImageOutput isSemanticStyleRenderingSupported];
  isSemanticStyleRenderingEnabled = [currentStillImageOutput isSemanticStyleRenderingEnabled];
  if (semanticStyle && (isSemanticStyleRenderingSupported & isSemanticStyleRenderingEnabled & 1) == 0)
  {
    v22 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_1A3640000, v22, OS_LOG_TYPE_DEFAULT, "Disabling Semantic Style on photo settings, because it is not supported on the device. This should only occur if the device is forced without Camera.app knowing about it or a fallback device is used.", v23, 2u);
    }

    [settingsCopy setSemanticStyle:0];
  }
}

+ (unsigned)rawPixelFormatTypeForPhotoOutput:(id)output
{
  v16 = *MEMORY[0x1E69E9840];
  unsignedIntValue = 1815491698;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  availableRawPhotoPixelFormatTypes = [output availableRawPhotoPixelFormatTypes];
  v5 = [availableRawPhotoPixelFormatTypes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(availableRawPhotoPixelFormatTypes);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([MEMORY[0x1E69870F0] isAppleProRAWPixelFormat:objc_msgSend(v9, "unsignedIntValue")])
        {
          unsignedIntValue = [v9 unsignedIntValue];
          goto LABEL_11;
        }
      }

      v6 = [availableRawPhotoPixelFormatTypes countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return unsignedIntValue;
}

- (BOOL)needsLivePhotoCaptureResumedOnPhotoOutput:(id)output
{
  outputCopy = output;
  irisMode = [(CAMStillImageCaptureRequest *)self irisMode];
  v6 = [(CAMStillImageCaptureRequest *)self irisLocalVideoDestinationURLForEV0:0];

  isLivePhotoCaptureEnabled = [outputCopy isLivePhotoCaptureEnabled];
  isLivePhotoCaptureSuspended = [outputCopy isLivePhotoCaptureSuspended];

  if (irisMode)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  return v10 & isLivePhotoCaptureEnabled & isLivePhotoCaptureSuspended;
}

@end