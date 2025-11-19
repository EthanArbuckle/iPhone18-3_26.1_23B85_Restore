@interface CAMStillImageCaptureRequest
+ (unsigned)rawPixelFormatTypeForPhotoOutput:(id)a3;
- (BOOL)hasAdjustments;
- (BOOL)isEV0LocalVideoDestinationURL:(id)a3;
- (BOOL)needsLivePhotoCaptureResumedOnPhotoOutput:(id)a3;
- (BOOL)shouldProtectPersistenceForVideo;
- (CAMStillImageCaptureRequest)init;
- (CAMStillImageCaptureRequest)initWithRequest:(id)a3 distinctPersistence:(BOOL)a4;
- (CAMStillImageCaptureRequestDelegate)delegate;
- (CGSize)desiredPreviewSize;
- (id)capturePhotoSettingsWithContext:(id)a3;
- (id)irisIdentifierForEV0:(BOOL)a3;
- (id)irisLocalVideoDestinationURLForEV0:(BOOL)a3;
- (id)irisStillImagePersistenceUUIDForEV0:(BOOL)a3;
- (id)irisVideoPersistenceUUIDForEV0:(BOOL)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)_configurePhotoSettings:(id)a3 shouldIgnoreInitiationSettingsProperties:(BOOL)a4 context:(id)a5;
- (void)_configureRawFileFormat:(id)a3 context:(id)a4 rawPixelFormatType:(unsigned int)a5;
- (void)_sanitizeCapturePhotoSettings:(id)a3 withContext:(id)a4;
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

    v7 = [MEMORY[0x1E696AFB0] UUID];
    v8 = [v7 UUIDString];
    irisIdentifier = v3->_irisIdentifier;
    v3->_irisIdentifier = v8;

    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [v10 UUIDString];
    videoPersistenceUUID = v3->_videoPersistenceUUID;
    v3->_videoPersistenceUUID = v11;

    v13 = [MEMORY[0x1E696AFB0] UUID];
    v14 = [v13 UUIDString];
    EV0IrisIdentifier = v3->_EV0IrisIdentifier;
    v3->_EV0IrisIdentifier = v14;

    v16 = [MEMORY[0x1E696AFB0] UUID];
    v17 = [v16 UUIDString];
    EV0VideoPersistenceUUID = v3->_EV0VideoPersistenceUUID;
    v3->_EV0VideoPersistenceUUID = v17;

    v19 = [MEMORY[0x1E696AFB0] UUID];
    v20 = [v19 UUIDString];
    EV0PersistenceUUID = v3->_EV0PersistenceUUID;
    v3->_EV0PersistenceUUID = v20;

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

- (CAMStillImageCaptureRequest)initWithRequest:(id)a3 distinctPersistence:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v43.receiver = self;
  v43.super_class = CAMStillImageCaptureRequest;
  v7 = [(CAMCaptureRequest *)&v43 initWithRequest:v6 distinctPersistence:v4];
  if (v7)
  {
    v7->_flashMode = [v6 flashMode];
    v7->_hdrMode = [v6 hdrMode];
    v7->_irisMode = [v6 irisMode];
    v7->_ctmCaptureType = [v6 ctmCaptureType];
    v7->_nightMode = [v6 nightMode];
    v7->_wantsDepthData = [v6 wantsDepthData];
    v8 = [v6 adjustmentFilters];
    v9 = [v8 copy];
    adjustmentFilters = v7->_adjustmentFilters;
    v7->_adjustmentFilters = v9;

    v11 = [v6 originalFilters];
    v12 = [v11 copy];
    originalFilters = v7->_originalFilters;
    v7->_originalFilters = v12;

    v7->_photoQualityPrioritization = [v6 photoQualityPrioritization];
    v7->_wantsAutoDualCameraFusion = [v6 wantsAutoDualCameraFusion];
    v7->_wantsSemanticSceneFilter = [v6 wantsSemanticSceneFilter];
    v14 = [v6 semanticStyle];
    semanticStyle = v7->_semanticStyle;
    v7->_semanticStyle = v14;

    v7->_wantsAudioForCapture = [v6 wantsAudioForCapture];
    v7->_wantsShutterSoundSuppression = [v6 wantsShutterSoundSuppression];
    v7->_wantsSquareCrop = [v6 wantsSquareCrop];
    v7->_aspectRatioCrop = [v6 aspectRatioCrop];
    v7->_wantsHighResolutionStills = [v6 wantsHighResolutionStills];
    v7->_stillDuringVideo = [v6 stillDuringVideo];
    v16 = [v6 textAnalysisIdentifier];
    v17 = [v16 copy];
    textAnalysisIdentifier = v7->_textAnalysisIdentifier;
    v7->_textAnalysisIdentifier = v17;

    v19 = [v6 textAnalysisRegion];
    textAnalysisRegion = v7->_textAnalysisRegion;
    v7->_textAnalysisRegion = v19;

    [v6 desiredPreviewSize];
    v7->_desiredPreviewSize.width = v21;
    v7->_desiredPreviewSize.height = v22;
    v23 = [v6 delegate];
    objc_storeWeak(&v7->_delegate, v23);

    v24 = [v6 burstIdentifier];
    burstIdentifier = v7->_burstIdentifier;
    v7->_burstIdentifier = v24;

    v7->_maximumBurstLength = [v6 maximumBurstLength];
    v7->_effectFilterType = [v6 effectFilterType];
    v26 = [v6 timelapseIdentifier];
    timelapseIdentifier = v7->_timelapseIdentifier;
    v7->_timelapseIdentifier = v26;

    v7->_lightingEffectType = [v6 lightingEffectType];
    v7->_wantsEV0ForHDR = [v6 wantsEV0ForHDR];
    v28 = [v6 irisIdentifier];
    irisIdentifier = v7->_irisIdentifier;
    v7->_irisIdentifier = v28;

    v30 = [v6 localVideoDestinationURL];
    localVideoDestinationURL = v7->_localVideoDestinationURL;
    v7->_localVideoDestinationURL = v30;

    v32 = [v6 localCTMVideoDestinationURL];
    localCTMVideoDestinationURL = v7->_localCTMVideoDestinationURL;
    v7->_localCTMVideoDestinationURL = v32;

    v7->_disablesCameraSwitchingDuringRecording = [v6 disablesCameraSwitchingDuringRecording];
    v7->_torchMode = [v6 torchMode];
    if (v4)
    {
      v23 = [MEMORY[0x1E696AFB0] UUID];
      [v23 UUIDString];
    }

    else
    {
      [v6 videoPersistenceUUID];
    }
    v34 = ;
    objc_storeStrong(&v7->_videoPersistenceUUID, v34);
    if (v4)
    {

      v34 = v23;
    }

    v35 = [v6 EV0IrisIdentifier];
    EV0IrisIdentifier = v7->_EV0IrisIdentifier;
    v7->_EV0IrisIdentifier = v35;

    v37 = [v6 EV0LocalVideoDestinationURL];
    EV0LocalVideoDestinationURL = v7->_EV0LocalVideoDestinationURL;
    v7->_EV0LocalVideoDestinationURL = v37;

    if (v4)
    {
      v23 = [MEMORY[0x1E696AFB0] UUID];
      [v23 UUIDString];
    }

    else
    {
      [v6 EV0VideoPersistenceUUID];
    }
    v39 = ;
    objc_storeStrong(&v7->_EV0VideoPersistenceUUID, v39);

    if (v4)
    {

      v23 = [MEMORY[0x1E696AFB0] UUID];
      [v23 UUIDString];
    }

    else
    {
      [v6 EV0PersistenceUUID];
    }
    v40 = ;
    objc_storeStrong(&v7->_EV0PersistenceUUID, v40);
    if (v4)
    {

      v40 = v23;
    }

    v7->_userInitiationTime = [v6 userInitiationTime];
    v7->_maximumPhotoResolution = [v6 maximumPhotoResolution];
    v7->_wantsWhiteBalanceLockedDuringVideoRecording = [v6 wantsWhiteBalanceLockedDuringVideoRecording];
    v7->super._rawFileFormatBehavior = [v6 rawFileFormatBehavior];
    v7->_stereoCaptureStatus = [v6 stereoCaptureStatus];
    v7->_frontRearSimultaneousCaptureEnabled = [v6 isFrontRearSimultaneousCaptureEnabled];
    v7->_frontRearSimultaneousCaptureMirrored = [v6 isFrontRearSimultaneousCaptureMirrored];
    v41 = v7;
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CAMMutableStillImageCaptureRequest alloc];

  return [(CAMStillImageCaptureRequest *)v4 initWithRequest:self distinctPersistence:0];
}

- (id)irisIdentifierForEV0:(BOOL)a3
{
  if (a3)
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

- (id)irisStillImagePersistenceUUIDForEV0:(BOOL)a3
{
  if (a3)
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

- (id)irisVideoPersistenceUUIDForEV0:(BOOL)a3
{
  if (a3)
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

- (id)irisLocalVideoDestinationURLForEV0:(BOOL)a3
{
  if (a3)
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

- (BOOL)isEV0LocalVideoDestinationURL:(id)a3
{
  v4 = a3;
  v5 = [(CAMStillImageCaptureRequest *)self irisLocalVideoDestinationURLForEV0:1];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (BOOL)shouldProtectPersistenceForVideo
{
  v3 = [(CAMCaptureRequest *)self shouldProtectPersistence];
  if (v3)
  {

    LOBYTE(v3) = [(CAMStillImageCaptureRequest *)self isCTMVideo];
  }

  return v3;
}

- (BOOL)hasAdjustments
{
  if ([(CAMStillImageCaptureRequest *)self effectFilterType]|| [(CAMStillImageCaptureRequest *)self lightingEffectType]|| [(CAMStillImageCaptureRequest *)self aspectRatioCrop])
  {
    return 1;
  }

  v5 = [(CAMStillImageCaptureRequest *)self adjustmentFilters];
  v3 = [v5 count] != 0;

  return v3;
}

- (id)capturePhotoSettingsWithContext:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CAMStillImageCaptureRequest *)self burstIdentifier];

  if (v5)
  {
    v6 = [MEMORY[0x1E6987100] burstQualityPhotoSettings];
LABEL_3:
    v7 = v6;
    goto LABEL_4;
  }

  v9 = [(CAMCaptureRequest *)self photoEncodingBehavior];
  switch(v9)
  {
    case 0:
      v6 = [MEMORY[0x1E6987100] photoSettings];
      goto LABEL_3;
    case 2:
      v12 = objc_opt_class();
      v13 = [v4 currentStillImageOutput];
      v14 = [v12 rawPixelFormatTypeForPhotoOutput:v13];

      v7 = [MEMORY[0x1E6987100] photoSettingsWithRawPixelFormatType:v14 rawFileType:*MEMORY[0x1E6987498] processedFormat:0 processedFileType:*MEMORY[0x1E6987498]];
      [(CAMStillImageCaptureRequest *)self _configureRawFileFormat:v7 context:v4 rawPixelFormatType:v14];
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
  [(CAMStillImageCaptureRequest *)self _configurePhotoSettings:v7 shouldIgnoreInitiationSettingsProperties:0 context:v4];

  return v7;
}

- (void)_configureRawFileFormat:(id)a3 context:(id)a4 rawPixelFormatType:(unsigned int)a5
{
  v5 = *&a5;
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(CAMCaptureRequest *)self rawFileFormatBehavior];
  v11 = [v9 currentStillImageOutput];

  v12 = [v11 supportedRawPhotoCodecTypesForRawPhotoPixelFormatType:v5 fileType:*MEMORY[0x1E6987498]];
  if (v10 == 1)
  {
    v13 = &unk_1F16C9DB0;
    goto LABEL_5;
  }

  if (v10 == 2)
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
  v17 = [MEMORY[0x1E695DF90] dictionary];
  v18 = v17;
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
      [v17 setObject:v14 forKey:*MEMORY[0x1E6987CB0]];
    }

    if ((v15 & 1) == 0)
    {
      [v18 setObject:v13 forKey:*MEMORY[0x1E6987DC0]];
    }
  }

  if ([v18 count])
  {
    [v8 setRawFileFormat:v18];
  }
}

- (void)_configurePhotoSettings:(id)a3 shouldIgnoreInitiationSettingsProperties:(BOOL)a4 context:(id)a5
{
  v82[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v66 = +[CAMCaptureCapabilities capabilities];
  v10 = [v9 currentStillImageOutput];
  v65 = [v9 currentVideoDeviceFormat];
  if (!a4)
  {
    [v8 setFlashMode:{+[CAMCaptureConversions captureFlashModeForFlashMode:](CAMCaptureConversions, "captureFlashModeForFlashMode:", -[CAMStillImageCaptureRequest flashMode](self, "flashMode"))}];
    [v8 setHDRMode:{+[CAMCaptureConversions captureHDRModeForHDRMode:](CAMCaptureConversions, "captureHDRModeForHDRMode:", -[CAMStillImageCaptureRequest hdrMode](self, "hdrMode"))}];
    if ([v8 flashMode] == 1 && objc_msgSend(v8, "HDRMode") == 1)
    {
      [v8 setHDRMode:0];
    }

    [v8 setPhotoQualityPrioritization:{+[CAMCaptureConversions AVCapturePhotoQualityPrioritizationForCAMPhotoQualityPrioritization:](CAMCaptureConversions, "AVCapturePhotoQualityPrioritizationForCAMPhotoQualityPrioritization:", -[CAMStillImageCaptureRequest photoQualityPrioritization](self, "photoQualityPrioritization"))}];
  }

  if ([v66 hasFilteringEntitlement])
  {
    v11 = [(CAMStillImageCaptureRequest *)self originalFilters];
    v12 = [(CAMStillImageCaptureRequest *)self adjustmentFilters];
    if ([v11 count])
    {
      [v8 setPhotoFilters:v11];
    }

    if ([v12 count])
    {
      [v8 setAdjustedPhotoFilters:v12];
    }
  }

  [v8 setDigitalFlashMode:{+[CAMCaptureConversions captureDigitalFlashModeForNightMode:](CAMCaptureConversions, "captureDigitalFlashModeForNightMode:", -[CAMStillImageCaptureRequest nightMode](self, "nightMode"))}];
  v13 = [v66 isHDREV0CaptureSupported] && -[CAMStillImageCaptureRequest wantsEV0ForHDR](self, "wantsEV0ForHDR") && objc_msgSend(v8, "HDRMode") != 0;
  [v8 setEV0PhotoDeliveryEnabled:v13];
  v14 = [(CAMStillImageCaptureRequest *)self wantsDepthData];
  [v8 setDepthDataDeliveryEnabled:v14];
  [v8 setEmbedsDepthDataInPhoto:v14];
  [v8 setPortraitEffectsMatteDeliveryEnabled:v14];
  [v8 setEmbedsPortraitEffectsMatteInPhoto:v14];
  if (v14)
  {
    v15 = [v10 availableSemanticSegmentationMatteTypes];
    [v8 setEnabledSemanticSegmentationMatteTypes:v15];
  }

  [v8 setAutoVirtualDeviceFusionEnabled:{-[CAMStillImageCaptureRequest wantsAutoDualCameraFusion](self, "wantsAutoDualCameraFusion")}];
  if ([(CAMStillImageCaptureRequest *)self wantsAudioForCapture])
  {
    v16 = 1108;
  }

  else
  {
    v16 = 0;
  }

  [v8 setShutterSound:v16];
  if (-[CAMStillImageCaptureRequest wantsShutterSoundSuppression](self, "wantsShutterSoundSuppression") && [v10 isShutterSoundSuppressionSupported])
  {
    [v8 setShutterSoundSuppressionEnabled:1];
  }

  [v8 setHighResolutionPhotoEnabled:{-[CAMStillImageCaptureRequest wantsHighResolutionStills](self, "wantsHighResolutionStills")}];
  v17 = [(CAMStillImageCaptureRequest *)self wantsSquareCrop];
  [v8 setSquareCropEnabled:v17];
  v18 = [(CAMStillImageCaptureRequest *)self burstIdentifier];

  if (!v17 && ([(CAMStillImageCaptureRequest *)self irisMode]- 1) <= 1)
  {
    v19 = [(CAMStillImageCaptureRequest *)self irisLocalVideoDestinationURLForEV0:0];
    [v8 setLivePhotoMovieFileURL:v19];
    v20 = [MEMORY[0x1E695DF00] date];
    v21 = [CAMPersistenceController clientVideoMetadataForRequest:self withCreationDate:v20 isEV0ForHDR:0 livePhotoIdentifierOverride:0 slomoPlayback:0];
    [v8 setLivePhotoMovieMetadata:v21];
    if (v13)
    {
      v22 = [(CAMStillImageCaptureRequest *)self irisLocalVideoDestinationURLForEV0:1];
      [v8 setLivePhotoMovieFileURLForOriginalPhoto:v22];
      v23 = [CAMPersistenceController clientVideoMetadataForRequest:self withCreationDate:v20 isEV0ForHDR:1 livePhotoIdentifierOverride:0 slomoPlayback:0];
      [v8 setLivePhotoMovieMetadataForOriginalPhoto:v23];
    }
  }

  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__33;
  v73 = __Block_byref_object_dispose__33;
  v74 = 0;
  v24 = [v8 availablePreviewPhotoPixelFormatTypes];
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __122__CAMStillImageCaptureRequest_CAMCaptureEngine___configurePhotoSettings_shouldIgnoreInitiationSettingsProperties_context___block_invoke;
  v68[3] = &unk_1E76FE7A0;
  v68[4] = &v69;
  [v24 enumerateObjectsUsingBlock:v68];
  v64 = v24;
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

    [v8 setPreviewPhotoFormat:v26];
    v32 = [(CAMStillImageCaptureRequest *)self textAnalysisIdentifier];
    v33 = v32 != 0;

    [v8 setPreviewPhotoFormatDimensionsLimitedToDisplayDimensions:v33];
  }

  if ([(CAMCaptureRequest *)self photoEncodingBehavior]== 2)
  {
    if ([v66 useFullResolutionThumbnailForRAWCaptures] && -[CAMStillImageCaptureRequest maximumPhotoResolution](self, "maximumPhotoResolution"))
    {
      v34 = [(CAMStillImageCaptureRequest *)self maximumPhotoResolution];
    }

    else
    {
      v34 = 1;
    }

    v38 = +[CAMCaptureCapabilities capabilities];
    v39 = [v38 isSmartFramingSupportedForMode:-[CAMCaptureRequest captureMode](self devicePosition:{"captureMode"), -[CAMCaptureRequest captureDevicePosition](self, "captureDevicePosition")}];

    v40 = [CAMCaptureConversions CMVideoDimensionsForCAMPhotoResolution:v34 wantsSquareDimensions:v39];
    v41 = [v8 availableRawEmbeddedThumbnailPhotoCodecTypes];
    v36 = [v41 firstObject];

    if (v36)
    {
      v42 = *MEMORY[0x1E6987CB0];
      v82[0] = v36;
      v43 = *MEMORY[0x1E6987E08];
      v81[0] = v42;
      v81[1] = v43;
      v44 = [MEMORY[0x1E696AD98] numberWithInt:v40];
      v82[1] = v44;
      v81[2] = *MEMORY[0x1E6987D70];
      v45 = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(*&v40)];
      v82[2] = v45;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:3];

      [v8 setRawEmbeddedThumbnailPhotoFormat:v37];
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
    v35 = [v8 availableEmbeddedThumbnailPhotoCodecTypes];
    v36 = [CAMCaptureEncodingUtilities selectPhotoCodecFromAvailableCodecs:v35 withBehavior:[(CAMCaptureRequest *)self photoEncodingBehavior]];

    if (v36)
    {
      v79 = *MEMORY[0x1E6987CB0];
      v80 = v36;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
      [v8 setEmbeddedThumbnailPhotoFormat:v37];
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

  v46 = [(CAMStillImageCaptureRequest *)self semanticStyle];
  if (v46)
  {
    if (!v18)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v47 = v46;
        v48 = [v47 avSemanticStyle];
        [v8 setSemanticStyle:v48];
      }
    }
  }

  v49 = [CAMCaptureMetadataUtilities metadataFromRequest:self];
  [v8 setMetadata:v49];
  if ([(CAMStillImageCaptureRequest *)self maximumPhotoResolution])
  {
    v50 = +[CAMCaptureCapabilities capabilities];
    v51 = [v50 isSmartFramingSupportedForMode:-[CAMCaptureRequest captureMode](self devicePosition:{"captureMode"), -[CAMCaptureRequest captureDevicePosition](self, "captureDevicePosition")}];

    v67 = [CAMCaptureConversions CMVideoDimensionsForCAMPhotoResolution:[(CAMStillImageCaptureRequest *)self maximumPhotoResolution] wantsSquareDimensions:v51];
    v52 = [v65 supportedMaxPhotoDimensionsPrivate];
    v53 = [MEMORY[0x1E696B098] valueWithBytes:&v67 objCType:"{?=ii}"];
    if ([v52 containsObject:v53])
    {
      [v8 setMaxPhotoDimensions:v67];
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

  [v8 setUserInitiatedPhotoRequestTime:{-[CAMStillImageCaptureRequest userInitiationTime](self, "userInitiationTime")}];
  v55 = +[CAMCaptureCapabilities capabilities];
  v56 = [v55 processZoomWithoutUpscaleForDevicePosition:{-[CAMCaptureRequest captureDevicePosition](self, "captureDevicePosition")}];

  if (v56 && [v10 isProcessedPhotoZoomWithoutUpscalingSupported])
  {
    [v8 setProcessedPhotoZoomWithoutUpscalingEnabled:1];
  }

  v57 = [v8 livePhotoMovieFileURL];
  if (v57)
  {
    v58 = [v10 isLivePhotoCaptureEnabled];

    if (v58)
    {
      v59 = [(CAMCaptureRequest *)self videoEncodingBehavior];
      v60 = [v10 availableLivePhotoVideoCodecTypes];
      v61 = [CAMCaptureEncodingUtilities selectVideoCodecFromAvailableCodecs:v60 withBehavior:v59];
      if (v61)
      {
        [v8 setLivePhotoVideoCodecType:v61];
      }
    }
  }

  [v8 setAutoContentAwareDistortionCorrectionEnabled:{objc_msgSend(v10, "isContentAwareDistortionCorrectionEnabled")}];
  if ([v10 isSpatialPhotoCaptureSupported] && objc_msgSend(v10, "isSpatialPhotoCaptureEnabled"))
  {
    if ([v8 photoQualityPrioritization] == 3)
    {
      [v8 setAutoSpatialPhotoCaptureEnabled:1];
    }

    else
    {
      v62 = +[CAMCaptureConversions CAMPhotoQualityPrioritizationForAVCapturePhotoQualityPrioritization:](CAMCaptureConversions, "CAMPhotoQualityPrioritizationForAVCapturePhotoQualityPrioritization:", [v8 photoQualityPrioritization]);
      v63 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        [CAMStillImageCaptureRequest(CAMCaptureEngine) _configurePhotoSettings:v62 shouldIgnoreInitiationSettingsProperties:v63 context:?];
      }
    }
  }

  [(CAMStillImageCaptureRequest *)self _sanitizeCapturePhotoSettings:v8 withContext:v9];

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

- (void)_sanitizeCapturePhotoSettings:(id)a3 withContext:(id)a4
{
  v5 = a3;
  v6 = [a4 currentStillImageOutput];
  v7 = [v6 supportedFlashModes];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "flashMode")}];
  v9 = [v7 containsObject:v8];

  if ((v9 & 1) == 0)
  {
    [v5 setFlashMode:0];
  }

  v10 = [v6 supportedHDRModes];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "HDRMode")}];
  v12 = [v10 containsObject:v11];

  if ((v12 & 1) == 0)
  {
    [v5 setHDRMode:0];
    [v5 setEV0PhotoDeliveryEnabled:0];
  }

  if (([v6 isLivePhotoCaptureEnabled] & 1) == 0)
  {
    [v5 setLivePhotoMovieFileURL:0];
    [v5 setLivePhotoMovieFileURLForOriginalPhoto:0];
    [v5 setLivePhotoMovieMetadata:0];
    [v5 setLivePhotoMovieMetadataForOriginalPhoto:0];
  }

  v13 = [v5 digitalFlashMode];
  v14 = [v6 supportedDigitalFlashModes];
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
  v16 = [v14 containsObject:v15];

  if (v16)
  {
    if (v13)
    {
      [v5 setHDRMode:0];
      [v5 setFlashMode:0];
      [v5 setLivePhotoMovieFileURL:0];
      [v5 setLivePhotoMovieFileURLForOriginalPhoto:0];
      [v5 setLivePhotoMovieMetadata:0];
      [v5 setLivePhotoMovieMetadataForOriginalPhoto:0];
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

    [v5 setDigitalFlashMode:0];
  }

  if (([v6 isDepthDataDeliverySupported] & 1) == 0 && objc_msgSend(v5, "isDepthDataDeliveryEnabled"))
  {
    v18 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_1A3640000, v18, OS_LOG_TYPE_DEFAULT, "Disabling depth delivery on photo output settings, because the output doesn't support depth delivery. This should only occur when Portrait is force enabled, as during emulation.", v24, 2u);
    }

    [v5 setDepthDataDeliveryEnabled:0];
  }

  if (([v6 isPortraitEffectsMatteDeliverySupported] & 1) == 0)
  {
    [v5 setPortraitEffectsMatteDeliveryEnabled:0];
    [v5 setEmbedsPortraitEffectsMatteInPhoto:0];
  }

  v19 = [v5 semanticStyle];

  v20 = [v6 isSemanticStyleRenderingSupported];
  v21 = [v6 isSemanticStyleRenderingEnabled];
  if (v19 && (v20 & v21 & 1) == 0)
  {
    v22 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_1A3640000, v22, OS_LOG_TYPE_DEFAULT, "Disabling Semantic Style on photo settings, because it is not supported on the device. This should only occur if the device is forced without Camera.app knowing about it or a fallback device is used.", v23, 2u);
    }

    [v5 setSemanticStyle:0];
  }
}

+ (unsigned)rawPixelFormatTypeForPhotoOutput:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = 1815491698;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [a3 availableRawPhotoPixelFormatTypes];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([MEMORY[0x1E69870F0] isAppleProRAWPixelFormat:objc_msgSend(v9, "unsignedIntValue")])
        {
          v3 = [v9 unsignedIntValue];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)needsLivePhotoCaptureResumedOnPhotoOutput:(id)a3
{
  v4 = a3;
  v5 = [(CAMStillImageCaptureRequest *)self irisMode];
  v6 = [(CAMStillImageCaptureRequest *)self irisLocalVideoDestinationURLForEV0:0];

  v7 = [v4 isLivePhotoCaptureEnabled];
  v8 = [v4 isLivePhotoCaptureSuspended];

  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  return v10 & v7 & v8;
}

@end