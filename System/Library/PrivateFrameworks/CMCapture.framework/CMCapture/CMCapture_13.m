void __captureSession_updateGraphConfiguration_block_invoke_776(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    if (dword_1ED844050)
    {
      v7 = 0;
      v6 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    captureSession_makeCommittedConfigurationLive(*(a1 + 40), [*(a1 + 32) configurationID]);
  }
}

uint64_t captureSession_getSystemStyleFromDefaults()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigCaptureSmartStyleSettingsGetSystemStyle(*(DerivedStorage + 88));
  if (!result)
  {
    v2 = [0 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
    result = 0;
    if ((v2 & 1) == 0)
    {
      v3 = FigCaptureSmartStyleSettingsSystemStyle;

      return FigCaptureSmartStyleSettingsGetSystemStyle(v3);
    }
  }

  return result;
}

uint64_t cs_stereoVideoCaptureEnabled(void *a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [a1 videoCaptureConnectionConfigurations];
  result = [v1 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v9;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 stereoVideoCaptureEnabled])
        {
          return 1;
        }

        ++v5;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v3 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t cs_initMemoryPoolSize(uint64_t a1, void *a2)
{
  v4 = FigCaptureClientApplicationIDIsCameraOrDerivative(a2);
  if ([objc_msgSend(MEMORY[0x1E696AE30] "processInfo")] >> 32)
  {
    v5 = 200;
  }

  else
  {
    v5 = 1;
  }

  v6 = +[BWMemoryPool sharedMemoryPool];

  return [(BWMemoryPool *)v6 ensureMemoryAsyncWithSize:v5 withMaximizeSystemMemory:a1 useOptimizedMemorySizeDistributionsIfAvailable:v4 forClientBundleId:a2];
}

void captureSession_startMonitoringForFigAssetWriterWritingVideoNotificationIfNecessary(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (cs_initializeVideoRecordingWhileMultitaskingStatics_onceToken != -1)
  {
    captureSession_showRecordingVideoWhileMultitaskingDialogIfNecessary_cold_1();
  }

  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_startMonitoringForFigAssetWriterWritingVideoNotificationIfNecessary_cold_2();
  }

  os_unfair_lock_lock((DerivedStorage + 384));
  if (notify_is_valid_token(*(DerivedStorage + 664)))
  {
    LODWORD(state64) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    goto LABEL_19;
  }

  v3 = (DerivedStorage + 664);
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.coremedia.figassetwriter.writing-video-%d", *(DerivedStorage + 16)];
  *(DerivedStorage + 656) = v4;
  if (dword_1ED844050)
  {
    LODWORD(state64) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v6 = *(DerivedStorage + 656);
  }

  else
  {
    v6 = v4;
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v8 = [v6 UTF8String];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __captureSession_startMonitoringForFigAssetWriterWritingVideoNotificationIfNecessary_block_invoke;
  handler[3] = &__block_descriptor_48_e8_v12__0i8l;
  handler[4] = DerivedStorage;
  handler[5] = a1;
  if (notify_register_dispatch(v8, (DerivedStorage + 664), global_queue, handler))
  {
    LODWORD(state64) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  }

  else
  {
    state64 = 0;
    if (!notify_get_state(*v3, &state64))
    {
      v9 = state64;
      if (state64 < 2)
      {
        *(DerivedStorage + 672) = state64;
        if (v9 == 1)
        {
          *(DerivedStorage + 680) = *(DerivedStorage + 401);
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __captureSession_startMonitoringForFigAssetWriterWritingVideoNotificationIfNecessary_block_invoke_1197;
          v14[3] = &__block_descriptor_40_e5_v8__0l;
          v14[4] = a1;
          captureSession_performBlockOnWorkerQueue(a1, v14);
        }

        goto LABEL_14;
      }

      *type = 0;
      v15 = OS_LOG_TYPE_DEFAULT;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
LABEL_19:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_14;
    }

    *type = 0;
    v15 = OS_LOG_TYPE_DEFAULT;
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();

  *(DerivedStorage + 656) = 0;
  if (notify_is_valid_token(*(DerivedStorage + 664)))
  {
    notify_cancel(*v3);
    *v3 = -1;
  }

  *(DerivedStorage + 672) = 0;
LABEL_14:
  os_unfair_lock_unlock((DerivedStorage + 384));
}

FigCaptureDepthDataPipelineConfiguration *captureSession_createDepthDataPipelineConfiguration(uint64_t a1, void *a2, void *a3, char a4, char a5)
{
  v25 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = [a2 depthDataConnectionConfiguration];
  v10 = [a2 metadataObjectConnectionConfiguration];
  v11 = [a2 videoDataConnectionConfiguration];
  v12 = [v9 sourceConfiguration];
  if (!v12)
  {
    v12 = [v11 sourceConfiguration];
    if (!v12)
    {
      v12 = [v10 sourceConfiguration];
    }
  }

  v13 = v12;
  v14 = FigCaptureMetadataObjectConfigurationRequiresFaceTracking(v10);
  v15 = +[BWPipelineStage pipelineStageWithName:priority:](BWPipelineStage, "pipelineStageWithName:priority:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.depthdata", [v9 sourceConfiguration]), 13);
  v16 = objc_alloc_init(FigCaptureDepthDataPipelineConfiguration);
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setPrimaryCameraConfiguration:v9];
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setPrimaryVideoConnectionConfiguration:v11];
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setVideoConnectionConfigurations:v10];
  [(FigCaptureMetadataSinkPipelineConfiguration *)v16 setMrcLowPowerModeEnabled:a5];
  [(FigCaptureDepthDataPipelineConfiguration *)v16 setVideoAndConvertedDepthDataOutputEnabled:v14];
  -[FigCaptureDepthDataPipelineConfiguration setDepthDataBaseRotationDegrees:](v16, [a3 depthDataBaseRotation]);
  [(FigCaptureMovieFileSinkPipelineConfiguration *)v16 setCameraDebugInfoMetadataConnectionConfiguration:v15];
  v17 = *(DerivedStorage + 36);
  v23 = *(DerivedStorage + 20);
  v24 = v17;
  v22[0] = v23;
  v22[1] = v17;
  v18 = [a3 cameraInfoByPortType];
  [(FigCaptureDepthDataPipelineConfiguration *)v16 setCameraInfoByPortType:v18];
  -[FigCaptureDepthDataPipelineConfiguration setRequiredFormat:](v16, [v13 requiredFormat]);
  [(FigCaptureMetadataSinkPipelineConfiguration *)v16 setUseSceneClassifierToGateMetadataDetection:a4];
  IntAttribute = FigCaptureSourceGetIntAttribute([v13 source], @"PearlModuleType", &v25);
  [(FigCaptureDepthDataPipelineConfiguration *)v16 setPearlModuleType:?];
  if (v25)
  {
    captureSession_createDepthDataPipelineConfiguration_cold_1(v25, &v25, v16, v22);
    return *&v22[0];
  }

  return v16;
}

uint64_t captureSession_createMultiCamClientCompositingCallback(uint64_t a1, uint64_t a2)
{
  v3 = [FigWeakReference weakReferenceToObject:a1];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __captureSession_createMultiCamClientCompositingCallback_block_invoke;
  v5[3] = &unk_1E7998F28;
  v5[4] = v3;
  v5[5] = a2;
  return [v5 copy];
}

uint64_t __captureSession_buildMicSourcePipeline_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 336) = 0;
  v3 = *(v2 + 280);
  if (v3)
  {
    v5 = 0;
    return [v3 setMXSessionProperty:*MEMORY[0x1E69B04D0] value:MEMORY[0x1E695E110] error:&v5];
  }

  else
  {
    result = *(v2 + 288);
    if (result)
    {

      return CMSessionSetProperty();
    }
  }

  return result;
}

void __captureSession_startObservingForAudiomxdDeath_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) referencedObject];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v3)
  {
    __captureSession_startObservingForAudiomxdDeath_block_invoke_cold_1(v3, DerivedStorage, v5, a1);
  }

  objc_autoreleasePoolPop(v2);
}

void __captureSession_startObservingForAudiomxdDeath_block_invoke_971(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) referencedObject];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v3 && !*DerivedStorage && *(DerivedStorage + 280))
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __captureSession_startObservingForAudiomxdDeath_block_invoke_2_972;
    v7[3] = &__block_descriptor_64_e5_v8__0l;
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7[4] = DerivedStorage;
    v7[5] = v5;
    v7[6] = v3;
    v7[7] = v6;
    captureSession_performBlockOnWorkerQueueSynchronously(v3, v7);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t __captureSession_configureStillImageSinkNode_block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  captureSession_handleCapturedStillImage(*(a1 + 64), *(a1 + 32), *(a1 + 40), a2, a3, a4);
  [*(a1 + 48) clientReceivedPayloadForSettings:a4 status:a3 clientIsMidStillImageGraph:0];
  v7 = *(a1 + 56);

  return [v7 clientReceivedPayloadForSettings:a4 status:a3 clientIsMidStillImageGraph:0];
}

void captureSession_handleCapturedStillImage(const void *a1, void *a2, uint64_t a3, void *a4, unsigned int a5, void *a6)
{
  v546[0] = a5;
  v544 = 0;
  v545 = 0;
  v542 = 0;
  v543 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v498 = a2;
  v508 = a3;
  v12 = [a2 stillImageSinkPipelineSessionStorageWithSinkID:a3];
  v13 = [v12 primaryStillImageSinkPipeline];
  v510 = [v12 primaryCameraSourcePipeline];
  pixelBuffer = [(FigCaptureCameraSourcePipeline *)v510 captureSourceVideoFormat];
  v514 = [a6 outputFormat];
  LODWORD(v494) = FigCapturePixelFormatIsBayerRaw([a6 rawOutputFormat]);
  v14 = v494 | FigCapturePixelFormatIsDemosaicedRaw([a6 rawOutputFormat]);
  objc_opt_class();
  HIDWORD(v493) = objc_opt_isKindOfClass();
  v505 = a1;
  v506 = v12;
  v516 = a6;
  v507 = v13;
  target = a4;
  if (a5)
  {
    v467 = v486;
    LODWORD(p_cf) = a5;
    FigDebugAssert3();
    v504 = 0;
    HIDWORD(v497) = 0;
    v232 = 0;
    goto LABEL_291;
  }

  if (!a4 || !a6)
  {
    v467 = v486;
    LODWORD(p_cf) = 0;
    FigDebugAssert3();
    v340 = FigSignalErrorAtGM();
    v504 = 0;
    HIDWORD(v497) = 0;
    v232 = 0;
    v546[0] = v340;
    goto LABEL_291;
  }

  v502 = v14;
  v504 = [CMGetAttachment(a4 @"StillImageProcessingFlags"];
  v15 = [*(DerivedStorage + 88) isEqualToString:0x1F216ED50];
  if (([v12 stillImagesAreOptimizedForOfflineVideoStabilization] & 1) != 0 || v15)
  {
    v16 = *off_1E798A318;
    v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:{CMGetAttachment(a4, *off_1E798A318, 0)}];
    if ([v12 stillImagesAreOptimizedForOfflineVideoStabilization])
    {
      ClientSpecifiedMetadataForOfflineStillImageVideoStabilization = FigCaptureMetadataUtilitiesCreateClientSpecifiedMetadataForOfflineStillImageVideoStabilization(a4);
      if (ClientSpecifiedMetadataForOfflineStillImageVideoStabilization)
      {
        [v17 addEntriesFromDictionary:ClientSpecifiedMetadataForOfflineStillImageVideoStabilization];

        LODWORD(ClientSpecifiedMetadataForOfflineStillImageVideoStabilization) = 1;
      }

      if (!v15)
      {
        goto LABEL_13;
      }
    }

    else
    {
      LODWORD(ClientSpecifiedMetadataForOfflineStillImageVideoStabilization) = 0;
      if (!v15)
      {
        goto LABEL_13;
      }
    }

    ClientSpecifiedMetadataForAggd = FigCaptureMetadataUtilitiesCreateClientSpecifiedMetadataForAggd(a4);
    if (ClientSpecifiedMetadataForAggd)
    {
      v20 = ClientSpecifiedMetadataForAggd;
      [v17 addEntriesFromDictionary:ClientSpecifiedMetadataForAggd];

LABEL_16:
      CMSetAttachment(a4, v16, v17, 1u);
LABEL_17:

      goto LABEL_18;
    }

LABEL_13:
    if (!ClientSpecifiedMetadataForOfflineStillImageVideoStabilization)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:
  v501 = [CMGetAttachment(a4 @"PhotoManifest"];
  LODWORD(v497) = FigCaptureMetadataUtilitiesShouldIncludeDiagnosticMetadata() != 0;
  IsCameraOrDerivative = captureSession_clientIsCameraOrDerivative(a1);
  v22 = [(FigCaptureCameraSourcePipeline *)v510 captureSource];
  v23 = cs_cameraSensorOrientationCompensationDegreesCW(v22, [objc_msgSend(v12 "primaryStillImageConnectionConfiguration")]);
  v503 = BWCameraSensorOrientationCompensationDegreesCWForRequestedSettings(a6, v23, IsCameraOrDerivative);
  if (v503 && dword_1ED844050)
  {
    LODWORD(v540.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v25 = v504 & 0x1000;
  HIDWORD(v494) = v25;
  if (!v514)
  {
    v45 = 0;
    v515 = 0;
    v14 = v502;
    goto LABEL_244;
  }

  v26 = [a6 outputFileType];
  v27 = [a6 outputRotationDegrees];
  v28 = [a6 outputMirroring];
  v29 = [-[FigCaptureCameraSourcePipeline captureDevice](v510) hasFlash];
  v30 = a4;
  v31 = [a6 flashMode];
  StillImageMetadataInSettingsForSampleBuffer = FigCaptureMetadataUtilitiesGetStillImageMetadataInSettingsForSampleBuffer(a6, v30);
  IrisAssetIdentifierForSettingsAndSampleBuffer = FigCaptureMetadataUtilitiesGetIrisAssetIdentifierForSettingsAndSampleBuffer(a6, v30);
  MetadataAttachments = FigCaptureMetadataUtilitiesCreateMetadataAttachments(v30, v26, v27, v28, v29, 1, v31, v497, 1, 0, 1, 1, 0, 0, 0, StillImageMetadataInSettingsForSampleBuffer, IrisAssetIdentifierForSettingsAndSampleBuffer, [a6 imageGroupIdentifier], 0, objc_msgSend(v501, "time"), v503);
  v34 = [MEMORY[0x1E695DF90] dictionary];
  [v34 setObject:v508 forKeyedSubscript:@"SectionID"];
  [v34 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", objc_msgSend(a6, "settingsID")), @"SettingsID"}];
  v35 = [a6 outputWidth];
  v36 = [a6 outputHeight];
  v499 = MetadataAttachments;
  v515 = v34;
  if ([a6 outputFormat] == 1785750887 || objc_msgSend(a6, "outputFormat") == 1752589105)
  {
    a4 = target;
    v37 = CMGetAttachment(target, @"EncodedImageSurface", 0);
    v38 = CMGetAttachment(target, @"EncodedImageSurfaceSize", 0);
    if ([a6 payloadType] == 1)
    {
      v39 = CMGetAttachment(target, @"EncodedImageCodecType", 0);
      v40 = CMGetAttachment(target, @"EncodedImageFileType", 0);
      v41 = kFigCaptureSessionNotificationPayloadKey_Surface;
      if ((v504 & 0x1000) != 0)
      {
        v41 = kFigCaptureSessionNotificationPayloadKey_DeferredPhotoProxySurface;
        v42 = kFigCaptureSessionNotificationPayloadKey_DeferredPhotoProxySurfaceSize;
      }

      else
      {
        v42 = kFigCaptureSessionNotificationPayloadKey_SurfaceSize;
      }

      if ((v504 & 0x1000) != 0)
      {
        v43 = kFigCaptureSessionNotificationPayloadKey_DeferredPhotoProxyCodec;
      }

      else
      {
        v43 = kFigCaptureSessionNotificationPayloadKey_PhotoCodec;
      }

      if ((v504 & 0x1000) != 0)
      {
        v44 = kFigCaptureSessionNotificationPayloadKey_DeferredPhotoProxyFileType;
      }

      else
      {
        v44 = kFigCaptureSessionNotificationPayloadKey_PhotoFileType;
      }

      [v515 setObject:v37 forKeyedSubscript:*v41];
      [v515 setObject:v38 forKeyedSubscript:*v42];
      [v515 setObject:v39 forKeyedSubscript:*v43];
      [v515 setObject:v40 forKeyedSubscript:*v44];
      v45 = v499;
      if (v499)
      {
        [v515 setObject:v499 forKeyedSubscript:@"Metadata"];
      }

      memset(&v540, 0, sizeof(v540));
      a4 = target;
      CMSampleBufferGetPresentationTimeStamp(&v540, target);
      v46 = *MEMORY[0x1E695E480];
      time = v540;
      v47 = CMTimeCopyAsDictionary(&time, v46);
      a6 = v516;
      v14 = v502;
      if (v47)
      {
        v48 = v47;
        [v515 setObject:v47 forKeyedSubscript:@"PresentationTimestamp"];
      }

      [v515 setObject:objc_msgSend(v516 forKeyedSubscript:{"captureRequestIdentifier"), @"CaptureRequestIdentifier"}];
      [v515 setObject:objc_msgSend(v501 forKeyedSubscript:{"photoIdentifier"), @"PhotoIdentifier"}];
      v12 = v506;
      if (![v516 depthDataDeliveryEnabled] || (objc_msgSend(v516, "embedsDepthDataInImage") & 1) != 0)
      {
        goto LABEL_52;
      }

      AttachedMedia = BWSampleBufferGetAttachedMedia(target, @"Depth");
      if (!AttachedMedia || (v50 = CMSampleBufferGetImageBuffer(AttachedMedia)) == 0)
      {
LABEL_48:
        v53 = CMGetAttachment(target, *off_1E798D2B8, 0);
        if (v53)
        {
          v54 = v53;
          if (v503)
          {
            v54 = cs_rotateDepthMetadata(v53, v503);
          }

          [v515 setObject:v54 forKeyedSubscript:@"DepthMetadata"];
        }

LABEL_52:
        if ([v516 portraitEffectsMatteDeliveryEnabled] && (objc_msgSend(v516, "embedsPortraitEffectsMatteInImage") & 1) == 0)
        {
          v55 = BWSampleBufferGetAttachedMedia(target, 0x1F21AABB0);
          v56 = v55;
          if (v55)
          {
            ImageBuffer = CMSampleBufferGetImageBuffer(v55);
            if (ImageBuffer)
            {
              v58 = ImageBuffer;
              *type = 0;
              if (v503)
              {
                v546[0] = cs_rotatePixelBuffer(ImageBuffer, v503, @"PortraitEffectsMatte", &v542, type);
                if (v546[0])
                {
                  *v538 = 0;
                  v537 = OS_LOG_TYPE_DEFAULT;
                  v430 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v431 = *v538;
                  if (os_log_type_enabled(v430, v537))
                  {
                    v432 = v431;
                  }

                  else
                  {
                    v432 = v431 & 0xFFFFFFFE;
                  }

                  if (!v432)
                  {
                    goto LABEL_644;
                  }

                  goto LABEL_642;
                }

                v58 = *type;
              }

              IOSurface = CVPixelBufferGetIOSurface(v58);
              if (IOSurface)
              {
                [v515 setObject:IOSurface forKeyedSubscript:@"PortraitEffectsMatteSurface"];
              }

              CVPixelBufferRelease(*type);
            }
          }

          v60 = CMGetAttachment(v56, *off_1E798D2D8, 0);
          if (v60)
          {
            [v515 setObject:v60 forKeyedSubscript:@"PortraitEffectsMatteMetadata"];
          }
        }

        if (![objc_msgSend(v516 "enabledSemanticSegmentationMatteURNs")] || (objc_msgSend(v516, "embedsSemanticSegmentationMattesInImage") & 1) != 0)
        {
          goto LABEL_110;
        }

        v61 = [v516 enabledSemanticSegmentationMatteURNs];
        if ([v61 containsObject:*MEMORY[0x1E69917E0]])
        {
          v62 = BWSampleBufferGetAttachedMedia(target, @"PersonSemanticsHair");
          v63 = v62;
          if (v62)
          {
            v64 = CMSampleBufferGetImageBuffer(v62);
            if (v64)
            {
              v65 = v64;
              *type = 0;
              if (v503)
              {
                v546[0] = cs_rotatePixelBuffer(v64, v503, @"HairMatte", &v542, type);
                if (v546[0])
                {
                  *v538 = 0;
                  v537 = OS_LOG_TYPE_DEFAULT;
                  v433 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v434 = *v538;
                  if (os_log_type_enabled(v433, v537))
                  {
                    v435 = v434;
                  }

                  else
                  {
                    v435 = v434 & 0xFFFFFFFE;
                  }

                  if (!v435)
                  {
                    goto LABEL_644;
                  }

                  goto LABEL_642;
                }

                v65 = *type;
              }

              v66 = CVPixelBufferGetIOSurface(v65);
              if (v66)
              {
                [v515 setObject:v66 forKeyedSubscript:@"HairSegmentationMatteSurface"];
              }

              CVPixelBufferRelease(*type);
            }
          }

          v67 = CMGetAttachment(v63, *off_1E798D2E0, 0);
          if (v67)
          {
            [v515 setObject:v67 forKeyedSubscript:@"HairSegmentationMatteMetadata"];
          }
        }

        v68 = [v516 enabledSemanticSegmentationMatteURNs];
        if ([v68 containsObject:*MEMORY[0x1E69917E8]])
        {
          v69 = BWSampleBufferGetAttachedMedia(target, @"PersonSemanticsSkin");
          v70 = v69;
          if (v69)
          {
            v71 = CMSampleBufferGetImageBuffer(v69);
            if (v71)
            {
              v72 = v71;
              *type = 0;
              if (v503)
              {
                v546[0] = cs_rotatePixelBuffer(v71, v503, @"SkinMatte", &v542, type);
                if (v546[0])
                {
                  *v538 = 0;
                  v537 = OS_LOG_TYPE_DEFAULT;
                  v436 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v437 = *v538;
                  if (os_log_type_enabled(v436, v537))
                  {
                    v438 = v437;
                  }

                  else
                  {
                    v438 = v437 & 0xFFFFFFFE;
                  }

                  if (!v438)
                  {
                    goto LABEL_644;
                  }

                  goto LABEL_642;
                }

                v72 = *type;
              }

              v73 = CVPixelBufferGetIOSurface(v72);
              if (v73)
              {
                [v515 setObject:v73 forKeyedSubscript:@"SkinSegmentationMatteSurface"];
              }

              CVPixelBufferRelease(*type);
            }
          }

          v74 = CMGetAttachment(v70, *off_1E798D2E0, 0);
          if (v74)
          {
            [v515 setObject:v74 forKeyedSubscript:@"SkinSegmentationMatteMetadata"];
          }
        }

        v75 = [v516 enabledSemanticSegmentationMatteURNs];
        if ([v75 containsObject:*MEMORY[0x1E69917F8]])
        {
          v76 = BWSampleBufferGetAttachedMedia(target, @"PersonSemanticsTeeth");
          v77 = v76;
          if (v76)
          {
            v78 = CMSampleBufferGetImageBuffer(v76);
            if (v78)
            {
              v79 = v78;
              *type = 0;
              if (v503)
              {
                v546[0] = cs_rotatePixelBuffer(v78, v503, @"TeethMatte", &v542, type);
                if (v546[0])
                {
                  *v538 = 0;
                  v537 = OS_LOG_TYPE_DEFAULT;
                  v439 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v440 = *v538;
                  if (os_log_type_enabled(v439, v537))
                  {
                    v441 = v440;
                  }

                  else
                  {
                    v441 = v440 & 0xFFFFFFFE;
                  }

                  if (!v441)
                  {
                    goto LABEL_644;
                  }

                  goto LABEL_642;
                }

                v79 = *type;
              }

              v80 = CVPixelBufferGetIOSurface(v79);
              if (v80)
              {
                [v515 setObject:v80 forKeyedSubscript:@"TeethSegmentationMatteSurface"];
              }

              CVPixelBufferRelease(*type);
            }
          }

          v81 = CMGetAttachment(v77, *off_1E798D2E0, 0);
          if (v81)
          {
            [v515 setObject:v81 forKeyedSubscript:@"TeethSegmentationMatteMetadata"];
          }
        }

        v82 = [v516 enabledSemanticSegmentationMatteURNs];
        if (![v82 containsObject:*MEMORY[0x1E69917D8]])
        {
          goto LABEL_110;
        }

        v83 = BWSampleBufferGetAttachedMedia(target, @"PersonSemanticsGlasses");
        v84 = v83;
        if (!v83)
        {
          goto LABEL_108;
        }

        v85 = CMSampleBufferGetImageBuffer(v83);
        if (!v85)
        {
          goto LABEL_108;
        }

        v86 = v85;
        *type = 0;
        if (!v503)
        {
LABEL_105:
          v87 = CVPixelBufferGetIOSurface(v86);
          if (v87)
          {
            [v515 setObject:v87 forKeyedSubscript:@"GlassesSegmentationMatteSurface"];
          }

          CVPixelBufferRelease(*type);
LABEL_108:
          v88 = CMGetAttachment(v84, *off_1E798D2E0, 0);
          if (v88)
          {
            [v515 setObject:v88 forKeyedSubscript:@"GlassesSegmentationMatteMetadata"];
          }

LABEL_110:
          if ([v516 cameraCalibrationDataDeliveryEnabled])
          {
            if (![v515 objectForKeyedSubscript:@"DepthMetadata"])
            {
              v89 = CMGetAttachment(target, @"CameraCalibrationDataMetadata", 0);
              if (v89)
              {
                v90 = v89;
                v91 = v515;
                v92 = @"DepthMetadata";
LABEL_114:
                [v91 setObject:v90 forKeyedSubscript:v92];
                goto LABEL_115;
              }
            }
          }

          goto LABEL_115;
        }

        v546[0] = cs_rotatePixelBuffer(v85, v503, @"GlassesMatte", &v542, type);
        if (!v546[0])
        {
          v86 = *type;
          goto LABEL_105;
        }

        *v538 = 0;
        v537 = OS_LOG_TYPE_DEFAULT;
        v442 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v443 = *v538;
        if (os_log_type_enabled(v442, v537))
        {
          v444 = v443;
        }

        else
        {
          v444 = v443 & 0xFFFFFFFE;
        }

        if (!v444)
        {
          goto LABEL_644;
        }

LABEL_642:
        v463 = BWStringFromPixelBuffer();
        *&v464 = COERCE_DOUBLE([v516 settingsID]);
        LODWORD(cf.value) = 136315650;
        *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
        LOWORD(cf.flags) = 2112;
        *(&cf.flags + 2) = v463;
        HIWORD(cf.epoch) = 2048;
        v524 = *&v464;
        LODWORD(v467) = 32;
        p_cf = &cf;
        goto LABEL_643;
      }

      v51 = v50;
      *type = 0;
      if (!v503)
      {
LABEL_45:
        v52 = CVPixelBufferGetIOSurface(v51);
        if (v52)
        {
          [v515 setObject:v52 forKeyedSubscript:@"DepthDataSurface"];
        }

        CVPixelBufferRelease(*type);
        goto LABEL_48;
      }

      v546[0] = cs_rotatePixelBuffer(v50, v503, @"DepthData", &v542, type);
      if (!v546[0])
      {
        v51 = *type;
        goto LABEL_45;
      }

      *v538 = 0;
      v537 = OS_LOG_TYPE_DEFAULT;
      v425 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v426 = *v538;
      if (os_log_type_enabled(v425, v537))
      {
        v427 = v426;
      }

      else
      {
        v427 = v426 & 0xFFFFFFFE;
      }

      if (!v427)
      {
        goto LABEL_644;
      }

LABEL_584:
      v428 = BWStringFromPixelBuffer();
      *&v429 = COERCE_DOUBLE([v516 settingsID]);
      LODWORD(cf.value) = 136315650;
      *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
      LOWORD(cf.flags) = 2112;
      *(&cf.flags + 2) = v428;
      HIWORD(cf.epoch) = 2048;
      v524 = *&v429;
      LODWORD(v467) = 32;
      p_cf = &cf;
LABEL_643:
      _os_log_send_and_compose_impl();
LABEL_644:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v12 = v506;
      a6 = v516;
      a4 = target;
      goto LABEL_290;
    }

    v12 = v506;
    if ([a6 payloadType])
    {
      v14 = v502;
      v45 = v499;
      goto LABEL_243;
    }

    memset(&time, 0, sizeof(time));
    CMSampleBufferGetPresentationTimeStamp(&time, target);
    v540.value = __PAIR64__(v36, v35);
    v98 = [v38 longValue];
    v99 = [a6 outputFormat];
    v100 = [v506 stillImageFormatDescriptionPtr];
    cf = time;
    v101 = BWSampleBufferCreateFromEncodedImageSurface(v37, v98, v99, v540.value, &cf, v100, &v545);
    v546[0] = v101;
    if (v101)
    {
      v467 = v486;
      LODWORD(p_cf) = v101;
      FigDebugAssert3();
LABEL_290:
      HIDWORD(v497) = HIDWORD(v494) >> 12;
      v14 = v502;
      v232 = v499;
LABEL_291:

      v233 = 0;
      v515 = 0;
      v234 = 0;
      v235 = 0;
      goto LABEL_357;
    }

    v102 = [(FigCaptureCameraSourcePipeline *)v510 captureSource];
    v45 = v499;
    captureSession_transferAndSanitizeOutputBufferAttachments(v102, target, v545, v499, a6);
    [v515 setObject:v545 forKeyedSubscript:@"SampleBuffer"];
LABEL_151:
    v14 = v502;
    goto LABEL_243;
  }

  if ([a6 bracketType])
  {
    v97 = [a6 bracketImageCount];
  }

  else
  {
    v97 = 1;
  }

  if ([objc_msgSend(a6 "bravoConstituentImageDeliveryDeviceTypes")])
  {
    v97 = v97 * [objc_msgSend(a6 "bravoConstituentImageDeliveryDeviceTypes")];
  }

  if ([a6 constantColorEnabled])
  {
    v97 = v97 + [a6 constantColorFallbackPhotoDeliveryEnabled];
  }

  v103 = cs_figCaptureColorSpaceFromSourcePipeline(v510);
  v104 = +[BWVideoFormat colorSpacePropertiesForSourceThatSupportsWideColor:sourceColorSpace:sourcePixelFormat:sourceDimensions:requestedPixelFormat:](BWVideoFormat, "colorSpacePropertiesForSourceThatSupportsWideColor:sourceColorSpace:sourcePixelFormat:sourceDimensions:requestedPixelFormat:", [-[FigCaptureCameraSourcePipeline captureDevice](v510) supportsWideColor], v103, -[__CVBuffer format](pixelBuffer, "format"), -[__CVBuffer dimensions](pixelBuffer, "dimensions"), objc_msgSend(a6, "outputFormat"));
  [a6 outputFormat];
  v12 = v506;
  v546[0] = [objc_msgSend(v506 "pixelConverter")];
  a4 = target;
  if (v546[0])
  {
    goto LABEL_290;
  }

  v105 = [v506 pixelConverter];
  v546[0] = [v105 convertSampleBuffer:target cropRect:&v545 outputSampleBuffer:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  if (v546[0])
  {
    goto LABEL_290;
  }

  value = v545;
  v45 = v499;
  if (!v545)
  {
    goto LABEL_151;
  }

  if (v503)
  {
    time.value = 0;
    cf.value = 0;
    v540.value = 0;
    v107 = CMSampleBufferGetImageBuffer(v545);
    if (v107)
    {
      v108 = cs_rotatePixelBuffer(v107, v503, @"MainImage", &v542, &time);
      if (v108)
      {
        v110 = v108;
        v467 = v486;
        LODWORD(p_cf) = v108;
      }

      else
      {
        CopyWithNewPixelBuffer = BWCMSampleBufferCreateCopyWithNewPixelBuffer(value, time.value, &v540, &cf);
        v110 = CopyWithNewPixelBuffer;
        if (!CopyWithNewPixelBuffer)
        {
LABEL_141:
          CVPixelBufferRelease(time.value);
          if (v540.value)
          {
            CFRelease(v540.value);
          }

          value = cf.value;
          if (v110)
          {
            if (cf.value)
            {
              CFRelease(cf.value);
            }

            v546[0] = v110;
            LODWORD(v540.value) = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            v111 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v112 = v540.value;
            if (os_log_type_enabled(v111, type[0]))
            {
              v113 = v112;
            }

            else
            {
              v113 = v112 & 0xFFFFFFFE;
            }

            if (v113)
            {
              CMSampleBufferGetImageBuffer(v545);
              v114 = BWStringFromPixelBuffer();
              *&v115 = COERCE_DOUBLE([a6 settingsID]);
              LODWORD(cf.value) = 136315650;
              *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
              LOWORD(cf.flags) = 2112;
              *(&cf.flags + 2) = v114;
              HIWORD(cf.epoch) = 2048;
              v524 = *&v115;
              LODWORD(v467) = 32;
              p_cf = &cf;
              _os_log_send_and_compose_impl();
            }

            a4 = target;
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            goto LABEL_290;
          }

          v546[0] = 0;
          if (v545)
          {
            CFRelease(v545);
          }

          v545 = value;
          goto LABEL_155;
        }

        v467 = v486;
        LODWORD(p_cf) = CopyWithNewPixelBuffer;
      }

      FigDebugAssert3();
      goto LABEL_141;
    }

    v467 = v486;
    LODWORD(p_cf) = 0;
    FigDebugAssert3();
    v110 = -12780;
    goto LABEL_141;
  }

LABEL_155:
  FigCaptureMetadataUtilitiesAddSampleBufferMetadataUsedByVideoEncoderToPixelBuffer(value);
  v116 = CMSampleBufferGetImageBuffer(v545);
  if (v116)
  {
    v117 = v116;
    if ([v506 colorInfo])
    {
      if (!v104)
      {
        CVBufferSetAttachments(v117, [v506 colorInfo], kCVAttachmentMode_ShouldPropagate);
      }
    }
  }

  v14 = v502;
  if ([a6 payloadType])
  {
    if ([a6 payloadType] == 1)
    {
      v118 = CMSampleBufferGetImageBuffer(v545);
      v119 = CVPixelBufferGetIOSurface(v118);
      AllocSize = IOSurfaceGetAllocSize(v119);
      memset(&v540, 0, sizeof(v540));
      CMSampleBufferGetPresentationTimeStamp(&v540, v545);
      v121 = *MEMORY[0x1E695E480];
      time = v540;
      v122 = CMTimeCopyAsDictionary(&time, v121);
      if (v119)
      {
        [v515 setObject:v119 forKeyedSubscript:@"Surface"];
      }

      if (AllocSize)
      {
        [v515 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", AllocSize), @"SurfaceSize"}];
      }

      v14 = v502;
      if (v499)
      {
        [v515 setObject:v499 forKeyedSubscript:@"Metadata"];
      }

      if (v122)
      {
        [v515 setObject:v122 forKeyedSubscript:@"PresentationTimestamp"];
      }

      if ([a6 depthDataDeliveryEnabled])
      {
        v123 = BWSampleBufferGetAttachedMedia(target, @"Depth");
        if (v123)
        {
          v124 = CMSampleBufferGetImageBuffer(v123);
          if (v124)
          {
            v125 = v124;
            *type = 0;
            if (v503)
            {
              v546[0] = cs_rotatePixelBuffer(v124, v503, @"DepthData", &v542, type);
              if (v546[0])
              {
                *v538 = 0;
                v537 = OS_LOG_TYPE_DEFAULT;
                v445 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v446 = *v538;
                if (os_log_type_enabled(v445, v537))
                {
                  v447 = v446;
                }

                else
                {
                  v447 = v446 & 0xFFFFFFFE;
                }

                if (!v447)
                {
                  goto LABEL_644;
                }

                goto LABEL_584;
              }

              v125 = *type;
            }

            v126 = CVPixelBufferGetIOSurface(v125);
            if (v126)
            {
              [v515 setObject:v126 forKeyedSubscript:@"DepthDataSurface"];
            }

            CVPixelBufferRelease(*type);
          }
        }

        v127 = CMGetAttachment(target, *off_1E798D2B8, 0);
        if (v127)
        {
          v128 = v127;
          if (v503)
          {
            v128 = cs_rotateDepthMetadata(v127, v503);
          }

          [v515 setObject:v128 forKeyedSubscript:@"DepthMetadata"];
        }
      }

      if ([a6 cameraCalibrationDataDeliveryEnabled])
      {
        if (![v515 objectForKeyedSubscript:@"DepthMetadata"])
        {
          v129 = CMGetAttachment(target, @"CameraCalibrationDataMetadata", 0);
          if (v129)
          {
            [v515 setObject:v129 forKeyedSubscript:@"DepthMetadata"];
          }
        }
      }

      if ([a6 portraitEffectsMatteDeliveryEnabled])
      {
        v130 = BWSampleBufferGetAttachedMedia(target, 0x1F21AABB0);
        v131 = v130;
        if (v130)
        {
          v132 = CMSampleBufferGetImageBuffer(v130);
          if (v132)
          {
            v133 = v132;
            *type = 0;
            if (v503)
            {
              v546[0] = cs_rotatePixelBuffer(v132, v503, @"PortraitEffectsMatte", &v542, type);
              if (v546[0])
              {
                *v538 = 0;
                v537 = OS_LOG_TYPE_DEFAULT;
                v448 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v449 = *v538;
                if (os_log_type_enabled(v448, v537))
                {
                  v450 = v449;
                }

                else
                {
                  v450 = v449 & 0xFFFFFFFE;
                }

                if (!v450)
                {
                  goto LABEL_644;
                }

                goto LABEL_642;
              }

              v133 = *type;
            }

            v134 = CVPixelBufferGetIOSurface(v133);
            if (v134)
            {
              [v515 setObject:v134 forKeyedSubscript:@"PortraitEffectsMatteSurface"];
            }

            CVPixelBufferRelease(*type);
          }
        }

        v135 = CMGetAttachment(v131, *off_1E798D2D8, 0);
        if (v135)
        {
          [v515 setObject:v135 forKeyedSubscript:@"PortraitEffectsMatteMetadata"];
        }
      }

      if (![objc_msgSend(a6 "enabledSemanticSegmentationMatteURNs")])
      {
        goto LABEL_115;
      }

      v136 = [a6 enabledSemanticSegmentationMatteURNs];
      if ([v136 containsObject:*MEMORY[0x1E69917E0]])
      {
        v137 = BWSampleBufferGetAttachedMedia(target, @"PersonSemanticsHair");
        v138 = v137;
        if (v137)
        {
          v139 = CMSampleBufferGetImageBuffer(v137);
          if (v139)
          {
            v140 = v139;
            *type = 0;
            if (v503)
            {
              v546[0] = cs_rotatePixelBuffer(v139, v503, @"HairMatte", &v542, type);
              if (v546[0])
              {
                *v538 = 0;
                v537 = OS_LOG_TYPE_DEFAULT;
                v451 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v452 = *v538;
                if (os_log_type_enabled(v451, v537))
                {
                  v453 = v452;
                }

                else
                {
                  v453 = v452 & 0xFFFFFFFE;
                }

                if (!v453)
                {
                  goto LABEL_644;
                }

                goto LABEL_642;
              }

              v140 = *type;
            }

            v141 = CVPixelBufferGetIOSurface(v140);
            if (v141)
            {
              [v515 setObject:v141 forKeyedSubscript:@"HairSegmentationMatteSurface"];
            }

            CVPixelBufferRelease(*type);
          }
        }

        v142 = CMGetAttachment(v138, *off_1E798D2E0, 0);
        if (v142)
        {
          [v515 setObject:v142 forKeyedSubscript:@"HairSegmentationMatteMetadata"];
        }
      }

      v143 = [a6 enabledSemanticSegmentationMatteURNs];
      if ([v143 containsObject:*MEMORY[0x1E69917E8]])
      {
        v144 = BWSampleBufferGetAttachedMedia(target, @"PersonSemanticsSkin");
        v145 = v144;
        if (v144)
        {
          v146 = CMSampleBufferGetImageBuffer(v144);
          if (v146)
          {
            v147 = v146;
            *type = 0;
            if (v503)
            {
              v546[0] = cs_rotatePixelBuffer(v146, v503, @"SkinMatte", &v542, type);
              if (v546[0])
              {
                *v538 = 0;
                v537 = OS_LOG_TYPE_DEFAULT;
                v454 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v455 = *v538;
                if (os_log_type_enabled(v454, v537))
                {
                  v456 = v455;
                }

                else
                {
                  v456 = v455 & 0xFFFFFFFE;
                }

                if (!v456)
                {
                  goto LABEL_644;
                }

                goto LABEL_642;
              }

              v147 = *type;
            }

            v148 = CVPixelBufferGetIOSurface(v147);
            if (v148)
            {
              [v515 setObject:v148 forKeyedSubscript:@"SkinSegmentationMatteSurface"];
            }

            CVPixelBufferRelease(*type);
          }
        }

        v149 = CMGetAttachment(v145, *off_1E798D2E0, 0);
        if (v149)
        {
          [v515 setObject:v149 forKeyedSubscript:@"SkinSegmentationMatteMetadata"];
        }
      }

      v150 = [a6 enabledSemanticSegmentationMatteURNs];
      if ([v150 containsObject:*MEMORY[0x1E69917F8]])
      {
        v151 = BWSampleBufferGetAttachedMedia(target, @"PersonSemanticsTeeth");
        v152 = v151;
        if (v151)
        {
          v153 = CMSampleBufferGetImageBuffer(v151);
          if (v153)
          {
            v154 = v153;
            *type = 0;
            if (v503)
            {
              v546[0] = cs_rotatePixelBuffer(v153, v503, @"TeethMatte", &v542, type);
              if (v546[0])
              {
                *v538 = 0;
                v537 = OS_LOG_TYPE_DEFAULT;
                v457 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v458 = *v538;
                if (os_log_type_enabled(v457, v537))
                {
                  v459 = v458;
                }

                else
                {
                  v459 = v458 & 0xFFFFFFFE;
                }

                if (!v459)
                {
                  goto LABEL_644;
                }

                goto LABEL_642;
              }

              v154 = *type;
            }

            v155 = CVPixelBufferGetIOSurface(v154);
            if (v155)
            {
              [v515 setObject:v155 forKeyedSubscript:@"TeethSegmentationMatteSurface"];
            }

            CVPixelBufferRelease(*type);
          }
        }

        v156 = CMGetAttachment(v152, *off_1E798D2E0, 0);
        if (v156)
        {
          [v515 setObject:v156 forKeyedSubscript:@"TeethSegmentationMatteMetadata"];
        }
      }

      v157 = [a6 enabledSemanticSegmentationMatteURNs];
      if (![v157 containsObject:*MEMORY[0x1E69917D8]])
      {
        goto LABEL_115;
      }

      v158 = BWSampleBufferGetAttachedMedia(target, @"PersonSemanticsGlasses");
      v159 = v158;
      if (v158)
      {
        v160 = CMSampleBufferGetImageBuffer(v158);
        if (v160)
        {
          v161 = v160;
          *type = 0;
          if (v503)
          {
            v546[0] = cs_rotatePixelBuffer(v160, v503, @"GlassesMatte", &v542, type);
            if (v546[0])
            {
              *v538 = 0;
              v537 = OS_LOG_TYPE_DEFAULT;
              v460 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v461 = *v538;
              if (os_log_type_enabled(v460, v537))
              {
                v462 = v461;
              }

              else
              {
                v462 = v461 & 0xFFFFFFFE;
              }

              if (!v462)
              {
                goto LABEL_644;
              }

              goto LABEL_642;
            }

            v161 = *type;
          }

          v162 = CVPixelBufferGetIOSurface(v161);
          if (v162)
          {
            [v515 setObject:v162 forKeyedSubscript:@"GlassesSegmentationMatteSurface"];
          }

          CVPixelBufferRelease(*type);
        }
      }

      v163 = CMGetAttachment(v159, *off_1E798D2E0, 0);
      if (v163)
      {
        v90 = v163;
        v92 = @"GlassesSegmentationMatteMetadata";
        v91 = v515;
        goto LABEL_114;
      }

LABEL_115:
      if ([a6 constantColorEnabled])
      {
        v93 = BWSampleBufferGetAttachedMedia(a4, 0x1F21AB170);
        if (v93)
        {
          v94 = CMSampleBufferGetImageBuffer(v93);
          if (v94)
          {
            v95 = CVPixelBufferGetIOSurface(v94);
            if (v95)
            {
              [v515 setObject:v95 forKeyedSubscript:@"ConstantColorConfidenceMapSurface"];
            }
          }
        }

        v96 = CMGetAttachment(a4, *off_1E798D2A0, 0);
        if (v96)
        {
          [v515 setObject:v96 forKeyedSubscript:@"ConstantColorMetadata"];
        }
      }
    }
  }

  else
  {
    v164 = [(FigCaptureCameraSourcePipeline *)v510 captureSource];
    captureSession_transferAndSanitizeOutputBufferAttachments(v164, target, v545, v499, a6);
    [v515 setObject:v545 forKeyedSubscript:@"SampleBuffer"];
  }

LABEL_243:
  v25 = v504 & 0x1000;
LABEL_244:
  HIDWORD(v497) = v25 >> 12;
  if ((v14 & 1) == 0)
  {
    pixelBuffera = 0;
    v180 = 0;
    v511 = 0;
    v181 = v515;
LABEL_331:
    if (![a6 previewEnabled])
    {
LABEL_349:
      if (([a6 thumbnailEnabled] & 1) != 0 || objc_msgSend(a6, "rawThumbnailEnabled"))
      {
        v292 = CMGetAttachment(a4, @"ThumbnailSurface", 0);
        if (v292)
        {
          [v181 setObject:v292 forKeyedSubscript:@"ThumbnailSurface"];
        }
      }

      v233 = 0;
      goto LABEL_354;
    }

    if (v181)
    {
      *type = 0;
      if ([a6 payloadType] != 1)
      {
        if ([a6 payloadType])
        {
LABEL_348:
          CVPixelBufferRelease(*type);
          goto LABEL_349;
        }

        v280 = v45;
        v281 = a1;
        v282 = v13;
        v287 = v181;
        v288 = CMGetAttachment(a4, @"PreviewPixelBuffer", 0);
        if (v288)
        {
          v289 = v288;
          if (v503)
          {
            v546[0] = cs_rotatePixelBuffer(v288, v503, @"Preview", &v542, type);
            if (v546[0])
            {
              v489 = v180;
              v500 = v280;
              LODWORD(v540.value) = 0;
              v538[0] = OS_LOG_TYPE_DEFAULT;
              v408 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v409 = v540.value;
              if (os_log_type_enabled(v408, v538[0]))
              {
                v410 = v409;
              }

              else
              {
                v410 = v409 & 0xFFFFFFFE;
              }

              if (v410)
              {
                v411 = BWStringFromPixelBuffer();
                *&v412 = COERCE_DOUBLE([v516 settingsID]);
                LODWORD(cf.value) = 136315650;
                *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
                LOWORD(cf.flags) = 2112;
                *(&cf.flags + 2) = v411;
                HIWORD(cf.epoch) = 2048;
                v524 = *&v412;
                LODWORD(v467) = 32;
                p_cf = &cf;
                _os_log_send_and_compose_impl();
              }

              goto LABEL_494;
            }

            v289 = *type;
          }

          memset(&cf, 0, sizeof(cf));
          CMSampleBufferGetPresentationTimeStamp(&cf, a4);
          v290 = [v12 previewFormatDescriptionPtr];
          time = cf;
          v291 = BWSampleBufferCreateFromPixelBuffer(v289, &time, v290, &v543);
          if (v543)
          {
            v181 = v287;
            [v287 setObject:v543 forKeyedSubscript:@"PreviewSampleBuffer"];
            goto LABEL_347;
          }

          v388 = v291;
          v489 = v180;
          v500 = v280;
          FigDebugAssert3();
          FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
          *v538 = 0;
          v537 = OS_LOG_TYPE_DEFAULT;
          v390 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v391 = *v538;
          if (os_log_type_enabled(v390, v537))
          {
            v392 = v391;
          }

          else
          {
            v392 = v391 & 0xFFFFFFFE;
          }

          if (v392)
          {
            LODWORD(v540.value) = 136315394;
            *(&v540.value + 4) = "captureSession_handleCapturedStillImage";
            LOWORD(v540.flags) = 1024;
            *(&v540.flags + 2) = v388;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          LODWORD(time.value) = 67109120;
          HIDWORD(time.value) = v388;
          v418 = _os_log_send_and_compose_impl();
          v467 = 0;
          FigCapturePleaseFileRadar(FrameworkRadarComponent, v418, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8889, @"LastShownDate:FigCaptureSession.m:8889", @"LastShownBuild:FigCaptureSession.m:8889", 0);
          v414 = v418;
        }

        else
        {
          v489 = v180;
          v500 = v280;
          FigDebugAssert3();
          v383 = FigCaptureGetFrameworkRadarComponent();
          LODWORD(v540.value) = 0;
          v538[0] = OS_LOG_TYPE_DEFAULT;
          v384 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v385 = v540.value;
          if (os_log_type_enabled(v384, v538[0]))
          {
            v386 = v385;
          }

          else
          {
            v386 = v385 & 0xFFFFFFFE;
          }

          if (v386)
          {
            LODWORD(cf.value) = 136315138;
            *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          LOWORD(time.value) = 0;
          v413 = _os_log_send_and_compose_impl();
          v467 = 0;
          FigCapturePleaseFileRadar(v383, v413, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8875, @"LastShownDate:FigCaptureSession.m:8875", @"LastShownBuild:FigCaptureSession.m:8875", 0);
          v414 = v413;
        }

        free(v414);
        goto LABEL_563;
      }

      v280 = v45;
      v281 = a1;
      v282 = v13;
      v283 = v181;
      v284 = CMGetAttachment(a4, @"PreviewSurface", 0);
      if (!v284)
      {
        v489 = v180;
        v500 = v280;
        FigDebugAssert3();
        v366 = FigCaptureGetFrameworkRadarComponent();
        LODWORD(v540.value) = 0;
        v538[0] = OS_LOG_TYPE_DEFAULT;
        v367 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v368 = v540.value;
        if (os_log_type_enabled(v367, v538[0]))
        {
          v369 = v368;
        }

        else
        {
          v369 = v368 & 0xFFFFFFFE;
        }

        if (v369)
        {
          LODWORD(cf.value) = 136315138;
          *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        LOWORD(time.value) = 0;
        v387 = _os_log_send_and_compose_impl();
        v467 = 0;
        FigCapturePleaseFileRadar(v366, v387, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8847, @"LastShownDate:FigCaptureSession.m:8847", @"LastShownBuild:FigCaptureSession.m:8847", 0);
        free(v387);
        a1 = v505;
        v12 = v506;
        a6 = v516;
        goto LABEL_564;
      }

      v285 = v284;
      if (!v503)
      {
LABEL_339:
        [v283 setObject:v285 forKeyedSubscript:@"PreviewSurface"];
        v286 = v285;
        v181 = v283;
        [v283 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", IOSurfaceGetAllocSize(v286)), @"PreviewSurfaceSize"}];
        v14 = v502;
LABEL_347:
        v13 = v282;
        a1 = v281;
        v45 = v280;
        goto LABEL_348;
      }

      v540.value = 0;
      v546[0] = CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v284, 0, &v540);
      if (v546[0])
      {
        v489 = v180;
        v500 = v280;
        *v538 = 0;
        v537 = OS_LOG_TYPE_DEFAULT;
        v374 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v375 = *v538;
        if (os_log_type_enabled(v374, v537))
        {
          v376 = v375;
        }

        else
        {
          v376 = v375 & 0xFFFFFFFE;
        }

        if (!v376)
        {
          goto LABEL_494;
        }
      }

      else
      {
        v546[0] = cs_rotatePixelBuffer(v540.value, v503, @"Preview", &v542, type);
        CVPixelBufferRelease(v540.value);
        if (!v546[0])
        {
          v285 = CVPixelBufferGetIOSurface(*type);
          goto LABEL_339;
        }

        v489 = v180;
        v500 = v280;
        *v538 = 0;
        v537 = OS_LOG_TYPE_DEFAULT;
        v377 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v378 = *v538;
        if (os_log_type_enabled(v377, v537))
        {
          v379 = v378;
        }

        else
        {
          v379 = v378 & 0xFFFFFFFE;
        }

        if (!v379)
        {
          goto LABEL_494;
        }
      }

      v380 = BWStringFromPixelBuffer();
      *&v381 = COERCE_DOUBLE([v516 settingsID]);
      LODWORD(cf.value) = 136315650;
      *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
      LOWORD(cf.flags) = 2112;
      *(&cf.flags + 2) = v380;
      HIWORD(cf.epoch) = 2048;
      v524 = *&v381;
      LODWORD(v467) = 32;
      p_cf = &cf;
      _os_log_send_and_compose_impl();
LABEL_494:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_563:
      a1 = v505;
      v12 = v506;
      a6 = v516;
LABEL_564:
      v13 = v507;
      a4 = target;
      v14 = v502;
      v180 = v489;
      v233 = 0;
      goto LABEL_565;
    }

    v488 = v180;
    v500 = v45;
    FigDebugAssert3();
    v341 = FigCaptureGetFrameworkRadarComponent();
    LODWORD(v540.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v342 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v343 = v540.value;
    if (os_log_type_enabled(v342, type[0]))
    {
      v344 = v343;
    }

    else
    {
      v344 = v343 & 0xFFFFFFFE;
    }

    if (v344)
    {
      LODWORD(cf.value) = 136315138;
      *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOWORD(time.value) = 0;
    v373 = _os_log_send_and_compose_impl();
    v467 = 0;
    FigCapturePleaseFileRadar(v341, v373, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8841, @"LastShownDate:FigCaptureSession.m:8841", @"LastShownBuild:FigCaptureSession.m:8841", 0);
    free(v373);
    v233 = 0;
    v13 = v507;
LABEL_578:
    v14 = v502;
    v45 = v500;
    v180 = v488;
    goto LABEL_354;
  }

  v165 = *off_1E798A3C8;
  v485 = CMGetAttachment(a4, *off_1E798A3C8, 0);
  v500 = v45;
  if (v494)
  {
    v166 = BWSampleBufferGetAttachedMedia(a4, 0x1F21AAB30);
    if (v166)
    {
      v167 = v166;
      v168 = CMSampleBufferGetImageBuffer(v166);
      Width = CVPixelBufferGetWidth(v168);
      Height = CVPixelBufferGetHeight(v168);
      if (Width < 1 || (v171 = Height, Height <= 0))
      {
        LODWORD(v540.value) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v354 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v355 = v540.value;
        if (os_log_type_enabled(v354, type[0]))
        {
          v356 = v355;
        }

        else
        {
          v356 = v355 & 0xFFFFFFFE;
        }

        if (v356)
        {
          LODWORD(cf.value) = 136315138;
          *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        LOWORD(time.value) = 0;
        v382 = _os_log_send_and_compose_impl();
        v467 = 0;
        FigCapturePleaseFileRadar(7, v382, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8582, @"LastShownDate:FigCaptureSession.m:8582", @"LastShownBuild:FigCaptureSession.m:8582", 0);
      }

      else
      {
        PixelFormatType = CVPixelBufferGetPixelFormatType(v168);
        if (PixelFormatType)
        {
          v173 = PixelFormatType;
          v174 = CVPixelBufferGetIOSurface(v168);
          if (v174)
          {
            v175 = v174;
            v176 = IOSurfaceGetAllocSize(v174);
            if (v176)
            {
              v474 = v176;
              v475 = v175;
              v177 = Width | (v171 << 32);
              v476 = v168;
              if (FigCaptureSushiRawDNGDictionaryCreatedInGraph())
              {
                v178 = CMGetAttachment(v167, @"RawDNGDictionary", 0);
                v179 = pixelBuffer;
                goto LABEL_264;
              }

              if ([v506 rawDNGColorCalibrations])
              {
                goto LABEL_262;
              }

              v185 = [(FigCaptureCameraSourcePipeline *)v510 captureSource];
              Attribute = FigCaptureSourceGetAttribute(v185, @"WhiteBalanceCalibrations", v546);
              if (Attribute)
              {
                [v506 setRawDNGColorCalibrations:{BWDNGColorCalibrations(Attribute, 0)}];
                if ([v506 rawDNGColorCalibrations])
                {
LABEL_262:
                  v187 = [v516 outputWidth];
                  v188 = [v516 outputHeight];
                  v179 = pixelBuffer;
                  v189 = [(__CVBuffer *)pixelBuffer rawLensShadingCorrection];
                  v190 = CMGetAttachment(v167, v165, 0);
                  if (v190)
                  {
                    v191 = v190;
                    v192 = [objc_msgSend(-[FigCaptureCameraSourcePipeline captureDevice](v510) "sensorIDDictionaryByPortType")];
                    LODWORD(v469) = 0;
                    LOBYTE(v466) = 0;
                    BWCreateSushiRawDNGDictionary(v177, v173, v187 | (v188 << 32), 0, v191, [v506 rawDNGColorCalibrations], v189, -[__CVBuffer sushiRawBlackBorderingEnabled](pixelBuffer, "sushiRawBlackBorderingEnabled"), v466, v192, 0, v469, v471, v472, v473, v474, v475, v476, v477, v478, v481, v483, v485, v486, v487, v490, v493, v494, pixelBuffer, v497, v498, v500);
                    a1 = v505;
                    if (v178)
                    {
LABEL_264:
                      v488 = v178;
                      v193 = BWRawDenormalizedActiveRectFromDNGDictionary(v178);
                      v195 = v194;
                      v197 = v196;
                      v199 = v198;
                      v200 = [(__CVBuffer *)v179 sushiRawDimensions];
                      v547.origin.x = v193;
                      v547.origin.y = v195;
                      v547.size.width = v197;
                      v547.size.height = v199;
                      IsNull = CGRectIsNull(v547);
                      v203 = v200 > 0 && SHIDWORD(v200) > 0;
                      if (IsNull && !v203)
                      {
                        pixelBuffera = 0;
                        v479 = 128;
                        a6 = v516;
LABEL_307:
                        v184 = target;
                        goto LABEL_309;
                      }

                      v204 = IsNull | v203;
                      HIDWORD(v205) = MEMORY[0x1E695F054];
                      v491 = *MEMORY[0x1E695F050];
                      v482 = *(MEMORY[0x1E695F050] + 16);
                      v484 = *(MEMORY[0x1E695F050] + 8);
                      v480 = *(MEMORY[0x1E695F050] + 24);
                      if ((v204 & 1) == 0 || v177 == v200)
                      {
                        LODWORD(v204) = llround(v197);
                        LODWORD(v205) = llround(v199);
                        v228 = FigCaptureNumberOfPixelsForDimensions(v204 | (v205 << 32));
                        v214 = v476;
                        if (v228 / FigCaptureNumberOfPixelsForDimensions(v177) >= 0.8)
                        {
                          a6 = v516;
                          pixelBuffera = 0;
                          v180 = v488;
LABEL_297:
                          if (FigCapturePlatformIdentifier() <= 11)
                          {
                            LODWORD(v246) = llround(v197);
                            LODWORD(v247) = llround(v199);
                            if ((v246 | (v247 << 32)) != [a6 outputDimensions])
                            {
                              v511 = 0;
                              v233 = 4294950881;
                              v12 = v506;
                              a4 = target;
                              v14 = v502;
                              goto LABEL_565;
                            }
                          }

                          mach_absolute_time();
                          v546[0] = VTFillPixelBufferBorderWithBlack();
                          v488 = v180;
                          if (!v546[0])
                          {
                            v476 = v214;
                            if (dword_1ED844050)
                            {
                              LODWORD(v540.value) = 0;
                              type[0] = OS_LOG_TYPE_DEFAULT;
                              v248 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                              v249 = v540.value;
                              if (os_log_type_enabled(v248, type[0]))
                              {
                                v250 = v249;
                              }

                              else
                              {
                                v250 = v249 & 0xFFFFFFFE;
                              }

                              if (v250)
                              {
                                mach_absolute_time();
                                v251 = FigHostTimeToNanoseconds();
                                LODWORD(cf.value) = 136315650;
                                *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
                                LOWORD(cf.flags) = 2114;
                                *(&cf.flags + 2) = @"Black-fill SushiRAW";
                                HIWORD(cf.epoch) = 2048;
                                v524 = (v251 / 1000) / 1000.0;
                                LODWORD(v467) = 32;
                                p_cf = &cf;
                                _os_log_send_and_compose_impl();
                              }

                              fig_log_call_emit_and_clean_up_after_send_and_compose();
                              v479 = 128;
                              v184 = target;
                              goto LABEL_309;
                            }

                            v479 = 128;
                            goto LABEL_307;
                          }

                          LODWORD(v540.value) = 0;
                          type[0] = OS_LOG_TYPE_DEFAULT;
                          v399 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                          v400 = v540.value;
                          if (os_log_type_enabled(v399, type[0]))
                          {
                            v401 = v400;
                          }

                          else
                          {
                            v401 = v400 & 0xFFFFFFFE;
                          }

                          if (v401)
                          {
                            LODWORD(cf.value) = 136315394;
                            *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
                            LOWORD(cf.flags) = 1024;
                            *(&cf.flags + 2) = v546[0];
                            _os_log_send_and_compose_impl();
                          }

                          fig_log_call_emit_and_clean_up_after_send_and_compose();
                          LODWORD(time.value) = 67109120;
                          HIDWORD(time.value) = v546[0];
                          v422 = _os_log_send_and_compose_impl();
                          v467 = 0;
                          FigCapturePleaseFileRadar(7, v422, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8704, @"LastShownDate:FigCaptureSession.m:8704", @"LastShownBuild:FigCaptureSession.m:8704", 0);
                          free(v422);
                          v511 = 0;
                          v233 = 0;
LABEL_577:
                          a1 = v505;
                          v12 = v506;
                          a6 = v516;
                          a4 = target;
                          goto LABEL_578;
                        }

                        ValidBufferRectForProcessedRaw = FigCaptureMetadataUtilitiesGetValidBufferRectForProcessedRaw();
                        v208 = v229;
                        v210 = v230;
                        v212 = v231;
                        a6 = v516;
                        if (![v516 aspectRatio])
                        {
LABEL_277:
                          LODWORD(v213) = llround(v212);
                          v219 = llround(v210) | (v213 << 32);
                          v548.origin.x = v193;
                          v548.origin.y = v195;
                          v548.size.width = v197;
                          v548.size.height = v199;
                          v549.origin.x = ValidBufferRectForProcessedRaw;
                          v549.origin.y = v208;
                          v549.size.width = v210;
                          v549.size.height = v212;
                          v220 = CGRectContainsRect(v548, v549);
                          v221 = [+[BWOnDemandPixelBufferAllocator onDemandAllocatorWithoutMemoryPoolWithDimensions:dimensionAlignment:pixelFormat:name:](BWOnDemandPixelBufferAllocator onDemandAllocatorWithoutMemoryPoolWithDimensions:v219 dimensionAlignment:2 pixelFormat:v173 name:@"On-demand SushiRaw crop output", "newPixelBuffer"];
                          if (v221)
                          {
                            v222 = v221;
                            mach_absolute_time();
                            pixelBuffera = v222;
                            v223 = v488;
                            if (BWMemcpyPixelBuffer(v214, v222, ValidBufferRectForProcessedRaw, v208, v210, v212))
                            {
                              if (dword_1ED844050)
                              {
                                LODWORD(v540.value) = 0;
                                type[0] = OS_LOG_TYPE_DEFAULT;
                                v224 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                                v225 = v540.value;
                                if (os_log_type_enabled(v224, type[0]))
                                {
                                  v226 = v225;
                                }

                                else
                                {
                                  v226 = v225 & 0xFFFFFFFE;
                                }

                                if (v226)
                                {
                                  mach_absolute_time();
                                  v227 = FigHostTimeToNanoseconds();
                                  LODWORD(cf.value) = 136315650;
                                  *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
                                  LOWORD(cf.flags) = 2114;
                                  *(&cf.flags + 2) = @"Cropping SushiRAW";
                                  HIWORD(cf.epoch) = 2048;
                                  v524 = (v227 / 1000) / 1000.0;
                                  LODWORD(v467) = 32;
                                  p_cf = &cf;
                                  _os_log_send_and_compose_impl();
                                }

                                fig_log_call_emit_and_clean_up_after_send_and_compose();
                                a1 = v505;
                                a6 = v516;
                                v223 = v488;
                              }

                              v236 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{v223, p_cf, v467}];
                              if (!v220)
                              {
                                v237 = FigCaptureTransformRectToCoordinateSpaceOfRect(v193, v195, v197, v199, ValidBufferRectForProcessedRaw, v208, v210);
                                FigCaptureDenormalizeCropRect(v237, v238, v239, v240);
                                v491 = round(v241);
                                v484 = round(v242);
                                v480 = round(v244);
                                v482 = round(v243);
                              }

                              v197 = v482;
                              v199 = v480;
                              BWSetRawDenormalizedActiveRectToDNGDictionary(v236, v491, v484, v482, v480);
                              v214 = pixelBuffera;
                              v475 = CVPixelBufferGetIOSurface(pixelBuffera);

                              v245 = [v236 copy];
                              v180 = v245;
                              if (v220)
                              {
                                v488 = v245;
                                v479 = 128;
                                v476 = pixelBuffera;
                                goto LABEL_307;
                              }

                              goto LABEL_297;
                            }

                            LODWORD(v540.value) = 0;
                            type[0] = OS_LOG_TYPE_DEFAULT;
                            v405 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                            v406 = v540.value;
                            if (os_log_type_enabled(v405, type[0]))
                            {
                              v407 = v406;
                            }

                            else
                            {
                              v407 = v406 & 0xFFFFFFFE;
                            }

                            if (v407)
                            {
                              LODWORD(cf.value) = 136315138;
                              *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
                              _os_log_send_and_compose_impl();
                            }

                            fig_log_call_emit_and_clean_up_after_send_and_compose();
                            LOWORD(time.value) = 0;
                            v424 = _os_log_send_and_compose_impl();
                            v467 = 0;
                            FigCapturePleaseFileRadar(7, v424, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8680, @"LastShownDate:FigCaptureSession.m:8680", @"LastShownBuild:FigCaptureSession.m:8680", 0);
                            free(v424);
                          }

                          else
                          {
                            LODWORD(v540.value) = 0;
                            type[0] = OS_LOG_TYPE_DEFAULT;
                            v402 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                            v403 = v540.value;
                            if (os_log_type_enabled(v402, type[0]))
                            {
                              v404 = v403;
                            }

                            else
                            {
                              v404 = v403 & 0xFFFFFFFE;
                            }

                            if (v404)
                            {
                              LODWORD(cf.value) = 136315138;
                              *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
                              _os_log_send_and_compose_impl();
                            }

                            fig_log_call_emit_and_clean_up_after_send_and_compose();
                            LOWORD(time.value) = 0;
                            v423 = _os_log_send_and_compose_impl();
                            v467 = 0;
                            FigCapturePleaseFileRadar(7, v423, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8676, @"LastShownDate:FigCaptureSession.m:8676", @"LastShownBuild:FigCaptureSession.m:8676", 0);
                            free(v423);
                            pixelBuffera = 0;
                          }

                          v511 = 0;
                          v233 = 4294950881;
                          goto LABEL_577;
                        }
                      }

                      else
                      {
                        ValidBufferRectForProcessedRaw = FigCaptureMakeCenteredRectWithDimensionsInsideDimensions(v200, v177);
                        v208 = v207;
                        v210 = v209;
                        v212 = v211;
                        a6 = v516;
                        v214 = v476;
                        if (![v516 aspectRatio])
                        {
                          goto LABEL_277;
                        }
                      }

                      v215 = BWAspectRatioValueFromAspectRatio([a6 aspectRatio]);
                      ValidBufferRectForProcessedRaw = FigCaptureMetadataUtilitiesRectByCroppingRectToAspectRatio(ValidBufferRectForProcessedRaw, v208, v210, v212, v215);
                      v208 = v216;
                      v210 = v217;
                      v212 = v218;
                      goto LABEL_277;
                    }

                    LODWORD(v540.value) = 0;
                    type[0] = OS_LOG_TYPE_DEFAULT;
                    v396 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v397 = v540.value;
                    if (os_log_type_enabled(v396, type[0]))
                    {
                      v398 = v397;
                    }

                    else
                    {
                      v398 = v397 & 0xFFFFFFFE;
                    }

                    if (v398)
                    {
                      LODWORD(cf.value) = 136315138;
                      *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
                      _os_log_send_and_compose_impl();
                    }

                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    LOWORD(time.value) = 0;
                    v382 = _os_log_send_and_compose_impl();
                    v467 = 0;
                    FigCapturePleaseFileRadar(7, v382, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8631, @"LastShownDate:FigCaptureSession.m:8631", @"LastShownBuild:FigCaptureSession.m:8631", 0);
                  }

                  else
                  {
                    LODWORD(v540.value) = 0;
                    type[0] = OS_LOG_TYPE_DEFAULT;
                    v393 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v394 = v540.value;
                    if (os_log_type_enabled(v393, type[0]))
                    {
                      v395 = v394;
                    }

                    else
                    {
                      v395 = v394 & 0xFFFFFFFE;
                    }

                    if (v395)
                    {
                      LODWORD(cf.value) = 136315138;
                      *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
                      _os_log_send_and_compose_impl();
                    }

                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    LOWORD(time.value) = 0;
                    v382 = _os_log_send_and_compose_impl();
                    v467 = 0;
                    FigCapturePleaseFileRadar(7, v382, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8613, @"LastShownDate:FigCaptureSession.m:8613", @"LastShownBuild:FigCaptureSession.m:8613", 0);
                  }

                  goto LABEL_592;
                }

                LODWORD(v540.value) = 0;
                type[0] = OS_LOG_TYPE_DEFAULT;
                v419 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v420 = v540.value;
                if (os_log_type_enabled(v419, type[0]))
                {
                  v421 = v420;
                }

                else
                {
                  v421 = v420 & 0xFFFFFFFE;
                }

                if (v421)
                {
                  LODWORD(cf.value) = 136315138;
                  *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                LOWORD(time.value) = 0;
                v382 = _os_log_send_and_compose_impl();
                v467 = 0;
                FigCapturePleaseFileRadar(7, v382, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8605, @"LastShownDate:FigCaptureSession.m:8605", @"LastShownBuild:FigCaptureSession.m:8605", 0);
              }

              else
              {
                LODWORD(v540.value) = 0;
                type[0] = OS_LOG_TYPE_DEFAULT;
                v415 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v416 = v540.value;
                if (os_log_type_enabled(v415, type[0]))
                {
                  v417 = v416;
                }

                else
                {
                  v417 = v416 & 0xFFFFFFFE;
                }

                if (v417)
                {
                  LODWORD(cf.value) = 136315138;
                  *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                LOWORD(time.value) = 0;
                v382 = _os_log_send_and_compose_impl();
                v467 = 0;
                FigCapturePleaseFileRadar(7, v382, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8602, @"LastShownDate:FigCaptureSession.m:8602", @"LastShownBuild:FigCaptureSession.m:8602", 0);
              }

LABEL_592:
              a1 = v505;
              v12 = v506;
              a6 = v516;
              goto LABEL_511;
            }

            LODWORD(v540.value) = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            v370 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v371 = v540.value;
            if (os_log_type_enabled(v370, type[0]))
            {
              v372 = v371;
            }

            else
            {
              v372 = v371 & 0xFFFFFFFE;
            }

            if (v372)
            {
              LODWORD(cf.value) = 136315138;
              *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            LOWORD(time.value) = 0;
            v382 = _os_log_send_and_compose_impl();
            v467 = 0;
            FigCapturePleaseFileRadar(7, v382, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8591, @"LastShownDate:FigCaptureSession.m:8591", @"LastShownBuild:FigCaptureSession.m:8591", 0);
          }

          else
          {
            LODWORD(v540.value) = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            v363 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v364 = v540.value;
            if (os_log_type_enabled(v363, type[0]))
            {
              v365 = v364;
            }

            else
            {
              v365 = v364 & 0xFFFFFFFE;
            }

            if (v365)
            {
              LODWORD(cf.value) = 136315138;
              *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            LOWORD(time.value) = 0;
            v382 = _os_log_send_and_compose_impl();
            v467 = 0;
            FigCapturePleaseFileRadar(7, v382, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8588, @"LastShownDate:FigCaptureSession.m:8588", @"LastShownBuild:FigCaptureSession.m:8588", 0);
          }
        }

        else
        {
          LODWORD(v540.value) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v357 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v358 = v540.value;
          if (os_log_type_enabled(v357, type[0]))
          {
            v359 = v358;
          }

          else
          {
            v359 = v358 & 0xFFFFFFFE;
          }

          if (v359)
          {
            LODWORD(cf.value) = 136315138;
            *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          LOWORD(time.value) = 0;
          v382 = _os_log_send_and_compose_impl();
          v467 = 0;
          FigCapturePleaseFileRadar(7, v382, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8585, @"LastShownDate:FigCaptureSession.m:8585", @"LastShownBuild:FigCaptureSession.m:8585", 0);
        }
      }
    }

    else
    {
      LODWORD(v540.value) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v345 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v346 = v540.value;
      if (os_log_type_enabled(v345, type[0]))
      {
        v347 = v346;
      }

      else
      {
        v347 = v346 & 0xFFFFFFFE;
      }

      if (v347)
      {
        LODWORD(cf.value) = 136315138;
        *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      LOWORD(time.value) = 0;
      v382 = _os_log_send_and_compose_impl();
      v467 = 0;
      FigCapturePleaseFileRadar(7, v382, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8576, @"LastShownDate:FigCaptureSession.m:8576", @"LastShownBuild:FigCaptureSession.m:8576", 0);
    }

LABEL_510:
    v12 = v506;
    a6 = v516;
LABEL_511:
    a4 = target;
    v45 = v500;
    goto LABEL_512;
  }

  v475 = CMGetAttachment(a4, @"RawImageSurface", 0);
  if (!v475)
  {
    LODWORD(v540.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v348 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v349 = v540.value;
    if (os_log_type_enabled(v348, type[0]))
    {
      v350 = v349;
    }

    else
    {
      v350 = v349 & 0xFFFFFFFE;
    }

    if (v350)
    {
      LODWORD(cf.value) = 136315138;
      *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOWORD(time.value) = 0;
    v382 = _os_log_send_and_compose_impl();
    v467 = 0;
    FigCapturePleaseFileRadar(7, v382, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8719, @"LastShownDate:FigCaptureSession.m:8719", @"LastShownBuild:FigCaptureSession.m:8719", 0);
    goto LABEL_498;
  }

  v182 = [objc_msgSend(CMGetAttachment(a4 @"RawImageAssetSizes"];
  if (!v182)
  {
    LODWORD(v540.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v351 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v352 = v540.value;
    if (os_log_type_enabled(v351, type[0]))
    {
      v353 = v352;
    }

    else
    {
      v353 = v352 & 0xFFFFFFFE;
    }

    if (v353)
    {
      LODWORD(cf.value) = 136315138;
      *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOWORD(time.value) = 0;
    v382 = _os_log_send_and_compose_impl();
    v467 = 0;
    FigCapturePleaseFileRadar(7, v382, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8723, @"LastShownDate:FigCaptureSession.m:8723", @"LastShownBuild:FigCaptureSession.m:8723", 0);
LABEL_498:
    v12 = v506;
    a6 = v516;
    a4 = target;
LABEL_512:
    free(v382);

    v234 = 0;
    v235 = 0;
    v233 = 4294950881;
    v14 = v502;
    goto LABEL_357;
  }

  v183 = v182;
  v488 = CMGetAttachment(a4, @"RawDNGDictionary", 0);
  if (!v488)
  {
    LODWORD(v540.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v360 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v361 = v540.value;
    if (os_log_type_enabled(v360, type[0]))
    {
      v362 = v361;
    }

    else
    {
      v362 = v361 & 0xFFFFFFFE;
    }

    if (v362)
    {
      LODWORD(cf.value) = 136315138;
      *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOWORD(time.value) = 0;
    v382 = _os_log_send_and_compose_impl();
    v467 = 0;
    FigCapturePleaseFileRadar(7, v382, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 8726, @"LastShownDate:FigCaptureSession.m:8726", @"LastShownBuild:FigCaptureSession.m:8726", 0);
    goto LABEL_510;
  }

  v474 = v183;
  [CMGetAttachment(a4 @"RawImageContainsDepthData"];
  [CMGetAttachment(a4 @"RawImageContainsSemanticSegmentationMattes"];
  v479 = 0;
  v476 = 0;
  pixelBuffera = 0;
  v184 = a4;
LABEL_309:
  v252 = [MEMORY[0x1E695DF90] dictionary];
  [v252 setObject:v508 forKeyedSubscript:@"SectionID"];
  [v252 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", objc_msgSend(a6, "settingsID")), @"SettingsID"}];
  [v252 setObject:objc_msgSend(a6 forKeyedSubscript:{"captureRequestIdentifier"), @"CaptureRequestIdentifier"}];
  v492 = v252;
  [v252 setObject:objc_msgSend(v501 forKeyedSubscript:{"photoIdentifier"), @"PhotoIdentifier"}];
  [a6 rawOutputFileCodec];
  v253 = [a6 outputFileType];
  v254 = [a6 outputRotationDegrees];
  v255 = [a6 outputMirroring];
  LODWORD(v252) = [-[FigCaptureCameraSourcePipeline captureDevice](v510) hasFlash];
  v256 = [a6 flashMode];
  v257 = FigCaptureMetadataUtilitiesGetStillImageMetadataInSettingsForSampleBuffer(a6, v184);
  v258 = FigCaptureMetadataUtilitiesGetIrisAssetIdentifierForSettingsAndSampleBuffer(a6, v184);
  v470 = [a6 imageGroupIdentifier];
  a6 = v516;
  v259 = FigCaptureMetadataUtilitiesCreateMetadataAttachments(v184, v253, v254, v255, v252, 1, v256, v497, 1, 0, 1, 1, 0, 0, 0, v257, v258, v470, 0, [v501 time], 0);
  v180 = v488;
  v260 = BWCreateRawMetadataFromMetadata(v259, v488, v479, [v485 objectForKeyedSubscript:*off_1E798B1E0]);
  if ([v516 payloadType] == 1)
  {
    a1 = v505;
    v12 = v506;
    v13 = v507;
    if (v494)
    {
      v261 = v492;
      [v492 setObject:v475 forKeyedSubscript:@"Surface"];
      v262 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v474];
      v263 = kFigCaptureSessionNotificationPayloadKey_SurfaceSize;
      a4 = target;
      v14 = v502;
    }

    else
    {
      v270 = [v516 rawOutputFormat];
      a4 = target;
      v271 = [CMGetAttachment(target @"RawImageFileType"];
      v261 = v492;
      if (HIDWORD(v494))
      {
        [v492 setObject:v475 forKeyedSubscript:@"DeferredPhotoProxySurface"];
        [v492 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", v474), @"DeferredPhotoProxySurfaceSize"}];
        [v492 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v270), @"DeferredPhotoProxyCodec"}];
        v262 = [MEMORY[0x1E696AD98] numberWithInt:v271];
        v263 = kFigCaptureSessionNotificationPayloadKey_DeferredPhotoProxyFileType;
      }

      else
      {
        [v492 setObject:v475 forKeyedSubscript:@"Surface"];
        [v492 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", v474), @"SurfaceSize"}];
        [v492 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v270), @"PhotoCodec"}];
        v262 = [MEMORY[0x1E696AD98] numberWithInt:v271];
        v263 = kFigCaptureSessionNotificationPayloadKey_PhotoFileType;
      }

      v14 = v502;
      v13 = v507;
      a1 = v505;
    }

    [v261 setObject:v262 forKeyedSubscript:*v263];
    memset(&time, 0, sizeof(time));
    CMSampleBufferGetPresentationTimeStamp(&time, a4);
    v272 = *MEMORY[0x1E695E480];
    cf = time;
    v273 = CMTimeCopyAsDictionary(&cf, v272);
    v274 = v261;
    v275 = v273;
    [v274 setObject:v273 forKeyedSubscript:@"PresentationTimestamp"];

    if ([v516 depthDataDeliveryEnabled])
    {
      v276 = BWSampleBufferGetAttachedMedia(a4, @"Depth");
      if (v276)
      {
        v277 = CMSampleBufferGetImageBuffer(v276);
        if (v277)
        {
          [v492 setObject:CVPixelBufferGetIOSurface(v277) forKeyedSubscript:@"DepthDataSurface"];
        }
      }

      v278 = CMGetAttachment(a4, *off_1E798D2B8, 0);
      if (v278)
      {
        [v492 setObject:v278 forKeyedSubscript:@"DepthMetadata"];
      }
    }

    if (![v516 cameraCalibrationDataDeliveryEnabled])
    {
      goto LABEL_330;
    }

    if ([v492 objectForKeyedSubscript:@"DepthMetadata"])
    {
      goto LABEL_330;
    }

    v279 = CMGetAttachment(a4, @"CameraCalibrationDataMetadata", 0);
    if (!v279)
    {
      goto LABEL_330;
    }

    v267 = v279;
    v269 = v492;
    v268 = @"DepthMetadata";
    goto LABEL_329;
  }

  a1 = v505;
  v12 = v506;
  v13 = v507;
  a4 = target;
  v14 = v502;
  if ([v516 payloadType])
  {
LABEL_330:
    v181 = v492;
    [v492 setObject:v260 forKeyedSubscript:@"Metadata"];
    v511 = v492;
    v45 = v500;
    goto LABEL_331;
  }

  memset(&time, 0, sizeof(time));
  CMSampleBufferGetPresentationTimeStamp(&time, target);
  v264 = [v506 rawFormatDescriptionPtr];
  cf = time;
  v265 = BWSampleBufferCreateFromPixelBuffer(v476, &cf, v264, &v544);
  if (!v265)
  {
    v266 = [(FigCaptureCameraSourcePipeline *)v510 captureSource];
    captureSession_transferAndSanitizeOutputBufferAttachments(v266, target, v544, v260, v516);
    v267 = v544;
    v268 = @"SampleBuffer";
    v269 = v492;
LABEL_329:
    [v269 setObject:v267 forKeyedSubscript:v268];
    goto LABEL_330;
  }

  v233 = v265;
  v467 = v486;
  LODWORD(p_cf) = v265;
  FigDebugAssert3();
  v511 = 0;
LABEL_565:
  v45 = v500;
LABEL_354:

  if (v180)
  {
    CFRelease(v180);
  }

  v235 = pixelBuffera;
  v234 = v511;
LABEL_357:
  if (v545)
  {
    CFRelease(v545);
  }

  if (v544)
  {
    CFRelease(v544);
  }

  if (v543)
  {
    CFRelease(v543);
  }

  if (v235)
  {
    CFRelease(v235);
  }

  if (v542)
  {
    CFRelease(v542);
  }

  v293 = v546[0];
  if (!v546[0] || v233 || ((v14 ^ 1) & 1) != 0 || v234)
  {
    if (!v233)
    {
      goto LABEL_374;
    }
  }

  else
  {
    v233 = v546[0];
  }

  v234 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(v508, [a6 settingsID], v233);
  v293 = v546[0];
LABEL_374:
  if (v293)
  {
    v294 = [a6 settingsID];
    v515 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(v508, v294, v546[0]);
    v295 = [v13 portraitHDRStagingNode];
    [v295 bufferReceivedWithFlags:0 error:v546[0]];
  }

  if (![objc_msgSend(v13 "stillImageCoordinatorNode")])
  {
    if (!(v14 & 1 | (v514 != 0)))
    {
      goto LABEL_381;
    }

    goto LABEL_380;
  }

  if ((([a6 resolutionFlavor] == 2) & (v14 | (v514 != 0))) != 0)
  {
LABEL_380:
    v296 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus([objc_msgSend(v12 primaryStillImageSinkPipeline], objc_msgSend(a6, "settingsID"), 0);
    captureSession_postNotificationWithPayload(a1, @"ReadyForResponsiveRequest", v296);
  }

LABEL_381:
  if (v14)
  {
    v297 = [v234 objectForKeyedSubscript:@"CaptureRequestIdentifier"];
    v298 = [v234 objectForKeyedSubscript:@"PhotoIdentifier"];
    v299 = kFigCaptureSessionIrisStillImageSinkNotification_RawStillImageComplete;
    if (HIDWORD(v497))
    {
      v299 = kFigCaptureSessionIrisStillImageSinkNotification_DeferredPhotoProxyImageComplete;
    }

    v300 = *v299;
    v301 = [v234 objectForKeyedSubscript:{@"Metadata", p_cf}];
    v302 = [objc_msgSend(objc_msgSend(v301 objectForKeyedSubscript:{*MEMORY[0x1E696DE30]), "objectForKeyedSubscript:", *off_1E7989D10), "unsignedIntValue"}];
    if (dword_1ED844050)
    {
      v303 = v302;
      v512 = v234;
      LODWORD(v540.value) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v304 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v305 = v540.value;
      if (os_log_type_enabled(v304, type[0]))
      {
        v306 = v305;
      }

      else
      {
        v306 = v305 & 0xFFFFFFFE;
      }

      if (v306)
      {
        v307 = *(DerivedStorage + 104);
        v308 = FigAppleMakerNoteStillImageProcessingFlagsToShortString(v303);
        v309 = [v516 settingsID];
        LODWORD(cf.value) = 136317187;
        *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
        LOWORD(cf.flags) = 2114;
        *(&cf.flags + 2) = v307;
        HIWORD(cf.epoch) = 2113;
        v524 = *&v300;
        v525 = 1024;
        v526 = v303;
        v527 = 2113;
        v528 = v308;
        v529 = 1024;
        v530 = v233;
        v531 = 2048;
        *v532 = v309;
        *&v532[8] = 2114;
        *v533 = v297;
        *&v533[8] = 2114;
        *v534 = v298;
        LODWORD(v467) = 84;
        p_cf = &cf;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      a1 = v505;
      v12 = v506;
      a6 = v516;
      v234 = v512;
    }

    captureSession_postNotificationWithPayload(a1, v300, v234);
    a4 = target;
  }

  if (v514)
  {
    v310 = [v515 objectForKeyedSubscript:@"CaptureRequestIdentifier"];
    v311 = [v515 objectForKeyedSubscript:@"PhotoIdentifier"];
    v312 = kFigCaptureSessionIrisStillImageSinkNotification_StillImageComplete;
    if (HIDWORD(v497))
    {
      v312 = kFigCaptureSessionIrisStillImageSinkNotification_DeferredPhotoProxyImageComplete;
    }

    if ((v493 & 0x100000000) == 0)
    {
      v312 = kFigCaptureSessionStillImageSinkNotification_StillImageComplete;
    }

    v313 = *v312;
    if (dword_1ED844050)
    {
      v314 = v311;
      LODWORD(v540.value) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v315 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v316 = v540.value;
      if (os_log_type_enabled(v315, type[0]))
      {
        v317 = v316;
      }

      else
      {
        v317 = v316 & 0xFFFFFFFE;
      }

      if (v317)
      {
        v318 = *(DerivedStorage + 104);
        v319 = FigAppleMakerNoteStillImageProcessingFlagsToShortString(v504);
        v320 = [v516 outputWidth];
        v321 = [v516 outputHeight];
        v322 = v546[0];
        v323 = [v516 settingsID];
        LODWORD(cf.value) = 136317699;
        *(&cf.value + 4) = "captureSession_handleCapturedStillImage";
        LOWORD(cf.flags) = 2114;
        *(&cf.flags + 2) = v318;
        HIWORD(cf.epoch) = 2113;
        v524 = *&v313;
        v525 = 1024;
        v526 = v504;
        v527 = 2113;
        v528 = v319;
        v529 = 1024;
        v530 = v320;
        v531 = 1024;
        *v532 = v321;
        a1 = v505;
        *&v532[4] = 1024;
        *&v532[6] = v322;
        *v533 = 2048;
        *&v533[2] = v323;
        *v534 = 2114;
        *&v534[2] = v310;
        v535 = 2114;
        v536 = v314;
        LODWORD(v467) = 96;
        p_cf = &cf;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v12 = v506;
      a6 = v516;
      a4 = target;
    }

    memset(&cf, 0, sizeof(cf));
    if (a4)
    {
      CMSampleBufferGetPresentationTimeStamp(&cf, a4);
    }

    else
    {
      cf = **&MEMORY[0x1E6960C70];
    }

    v324 = MEMORY[0x1E695FF58];
    v325 = *MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      [a6 settingsID];
      time = cf;
      Seconds = CMTimeGetSeconds(&time);
      if (a6)
      {
        [a6 stillImageUserInitiatedRequestPTS];
      }

      else
      {
        memset(&v540, 0, sizeof(v540));
      }

      time = v540;
      CMTimeGetSeconds(&time);
      kdebug_trace();
      v325 = *v324;
    }

    if (v325)
    {
      v327 = fig_log_handle();
      if (os_signpost_enabled(v327))
      {
        time = cf;
        v328 = CMTimeGetSeconds(&time);
        v329 = LODWORD(v328);
        if (a6)
        {
          [a6 stillImageUserInitiatedRequestPTS];
        }

        else
        {
          memset(&v540, 0, sizeof(v540));
        }

        time = v540;
        v330 = CMTimeGetSeconds(&time);
        LODWORD(time.value) = 67240448;
        HIDWORD(time.value) = v329;
        LOWORD(time.timescale) = 1026;
        *(&time.timescale + 2) = LODWORD(v330);
        _os_signpost_emit_with_name_impl(&dword_1AC90E000, v327, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "StillImageCaptureNow", " enableTelemetry=YES N1=%{public,signpost.telemetry:number1}d N2=%{public,signpost.telemetry:number2}d", &time, 0xEu);
      }
    }

    captureSession_postNotificationWithPayload(a1, v313, v515);
    [objc_msgSend(v507 "portraitHDRStagingNode")];
  }

  v521 = 0u;
  v522 = 0u;
  v519 = 0u;
  v520 = 0u;
  v331 = [v498 metadataSinkPipelines];
  v332 = [v331 countByEnumeratingWithState:&v519 objects:v518 count:16];
  if (v332)
  {
    v333 = v332;
    v334 = 0;
    v335 = *v520;
    do
    {
      for (i = 0; i != v333; ++i)
      {
        if (*v520 != v335)
        {
          objc_enumerationMutation(v331);
        }

        v334 |= [(FigCaptureMetadataSinkPipeline *)*(*(&v519 + 1) + 8 * i) mrcLowPowerModeEnabled];
      }

      v333 = [v331 countByEnumeratingWithState:&v519 objects:v518 count:16];
    }

    while (v333);
    if (([a6 burstQualityCaptureEnabled] & v334) == 1)
    {
      v337 = [a6 settingsID];
      os_unfair_lock_lock((DerivedStorage + 384));
      v338 = [v12 mostRecentBurstSettingsID];
      os_unfair_lock_unlock((DerivedStorage + 384));
      if (v338 <= v337)
      {
        v517[0] = MEMORY[0x1E69E9820];
        v517[1] = 3221225472;
        v517[2] = __captureSession_handleCapturedStillImage_block_invoke;
        v517[3] = &unk_1E7998B98;
        v517[4] = v12;
        v517[5] = v498;
        v517[6] = v337;
        v339 = CMBaseObjectGetDerivedStorage();
        captureSession_dispatchGraphCalloutWithGraphIDToWorkerQueueAfter(a1, *(v339 + 760), v517, 0.266);
      }
    }
  }

  else
  {
    [a6 burstQualityCaptureEnabled];
  }
}

uint64_t cs_rotatePixelBuffer(__CVBuffer *a1, int a2, uint64_t a3, VTPixelRotationSessionRef *a4, __CVBuffer **a5)
{
  if (a4)
  {
    v9 = *a4;
  }

  else
  {
    v9 = 0;
  }

  pixelRotationSessionOut = 0;
  if (!a1)
  {
    cs_rotatePixelBuffer_cold_6();
    goto LABEL_21;
  }

  HIDWORD(v10) = -1527099483 * a2 + 47721858;
  LODWORD(v10) = HIDWORD(v10);
  if ((v10 >> 1) > 0x2D82D82)
  {
LABEL_21:
    v16 = 0;
    v18 = 4294954516;
    goto LABEL_27;
  }

  v11 = FigCaptureNormalizeAngle(a2);
  Width = CVPixelBufferGetWidth(a1);
  v13 = Width | (CVPixelBufferGetHeight(a1) << 32);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v15 = __ROR8__(v13, 32);
  if (v11 % 180 == 90)
  {
    v13 = v15;
  }

  v16 = [+[BWOnDemandPixelBufferAllocator onDemandAllocatorWithoutMemoryPoolWithDimensions:dimensionAlignment:pixelFormat:name:](BWOnDemandPixelBufferAllocator onDemandAllocatorWithoutMemoryPoolWithDimensions:v13 dimensionAlignment:0 pixelFormat:PixelFormatType name:objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"OnDemand-CaptureSessionRotationOutput-%@", a3)), "newPixelBuffer"];
  if (v16)
  {
    if (FigCapturePixelFormatIsDepthData(PixelFormatType))
    {
      v17 = FigCaptureConvertRotationAndMirroringToExifOrientation(v11, 0);
      v18 = FigDepthRotateBuffer(a1, v16, v17);
      if (!v18)
      {
        v19 = 1;
        goto LABEL_30;
      }

      cs_rotatePixelBuffer_cold_4();
      goto LABEL_27;
    }

    if (!v9)
    {
      v20 = VTPixelRotationSessionCreate(*MEMORY[0x1E695E480], &pixelRotationSessionOut);
      if (v20)
      {
        v18 = v20;
        cs_rotatePixelBuffer_cold_1();
        goto LABEL_27;
      }

      v9 = pixelRotationSessionOut;
    }

    v21 = *MEMORY[0x1E6983D98];
    v22 = FigCaptureVTRotationFromDegrees(v11);
    v23 = VTSessionSetProperty(v9, v21, v22);
    if (v23)
    {
      v18 = v23;
      cs_rotatePixelBuffer_cold_2();
    }

    else
    {
      v18 = VTPixelRotationSessionRotateImage(v9, a1, v16);
      if (!v18)
      {
        v24 = pixelRotationSessionOut;
        v19 = 1;
        if (a4 && pixelRotationSessionOut)
        {
          v18 = 0;
          *a4 = pixelRotationSessionOut;
          goto LABEL_30;
        }

        goto LABEL_28;
      }

      cs_rotatePixelBuffer_cold_3();
    }
  }

  else
  {
    cs_rotatePixelBuffer_cold_5();
    v18 = 4294954510;
  }

LABEL_27:
  v19 = 0;
  v24 = pixelRotationSessionOut;
LABEL_28:
  if (v24)
  {
    CFRelease(v24);
  }

LABEL_30:
  if (a5 && v19)
  {
    *a5 = v16;
  }

  else
  {
    CVPixelBufferRelease(v16);
  }

  return v18;
}

void *cs_rotateDepthMetadata(uint64_t a1, int a2)
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a1];
  v4 = FigCaptureNormalizeAngle(a2);
  v5 = FigCaptureExifOrientationFromRotationDegreesAndMirroring(v4, 0);
  FigDepthRotateMetadataDictionary(v3, v5, 0);
  return v3;
}

void captureSession_transferAndSanitizeOutputBufferAttachments(uint64_t a1, const void *a2, CMAttachmentBearerRef target, void *a4, void *a5)
{
  CMRemoveAllAttachments(target);
  v10 = *MEMORY[0x1E696D8B0];
  v11 = [a4 objectForKeyedSubscript:*MEMORY[0x1E696D8B0]];
  if (v11)
  {
    [a4 setObject:v11 forKeyedSubscript:@"FaceRegions"];
    [a4 removeObjectForKey:v10];
  }

  CMSetAttachments(target, a4, 1u);
  if (a1)
  {
    v19 = 0;
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(a1, @"AttributesDictionary", *MEMORY[0x1E695E480], &v19);
      v13 = v19;
    }

    else
    {
      v13 = 0;
    }

    v14 = [objc_msgSend(v13 objectForKeyedSubscript:{@"Sphere", "BOOLValue"}];

    if (v14)
    {
      if ([a5 bracketType])
      {
        if ([a5 lensStabilizationDuringBracketEnabled])
        {
          v15 = CMGetAttachment(a2, *off_1E798A3C8, 0);
          v16 = [v15 objectForKeyedSubscript:*off_1E798B6B0];
          if (([objc_msgSend(v15 objectForKeyedSubscript:{*off_1E798B6C0), "unsignedIntValue"}] & 6) != 0)
          {
            v17 = MEMORY[0x1E69605E8];
          }

          else if ([v16 isEqualToString:*off_1E798C470] & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", *off_1E798C490))
          {
            v17 = MEMORY[0x1E69605D8];
          }

          else
          {
            v18 = [v16 isEqualToString:*off_1E798C478];
            v17 = MEMORY[0x1E69605D8];
            if ((v18 & 1) == 0 && ![v16 isEqualToString:*off_1E798C480])
            {
              v17 = MEMORY[0x1E69605F0];
            }
          }
        }

        else
        {
          v17 = MEMORY[0x1E69605E0];
        }

        if (*v17)
        {
          CMSetAttachment(target, *MEMORY[0x1E6960548], *v17, 1u);
        }
      }
    }
  }
}

uint64_t __captureSession_handleCapturedStillImage_block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;
    result = [*(result + 32) mostRecentBurstSettingsID];
    if (result <= *(v2 + 48))
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v3 = [*(v2 + 40) metadataSinkPipelines];
      result = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
      if (result)
      {
        v4 = result;
        v5 = *v10;
        do
        {
          v6 = 0;
          do
          {
            if (*v10 != v5)
            {
              objc_enumerationMutation(v3);
            }

            v7 = *(*(&v9 + 1) + 8 * v6);
            if ([(FigCaptureMetadataSinkPipeline *)v7 mrcLowPowerModeEnabled])
            {
              [(FigCaptureMetadataSinkPipeline *)v7 setMrcSuspended:?];
            }

            ++v6;
          }

          while (v4 != v6);
          result = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
          v4 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

void __captureSession_startMonitoringForFigAssetWriterWritingVideoNotificationIfNecessary_block_invoke(uint64_t a1, int token)
{
  state64[0] = 0;
  state = notify_get_state(token, state64);
  v4 = state64[0];
  if (state || state64[0] > 1)
  {
    v19 = 0;
    v18 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v5 = state64[0] == 1;
    v6 = LOBYTE(state64[0]) ^ 1;
    os_unfair_lock_lock((*(a1 + 32) + 384));
    v7 = *(a1 + 32);
    v8 = state64[0];
    if (*(v7 + 672) == state64[0])
    {
      v9 = 0;
      v8 = *(v7 + 672);
    }

    else if (state64[0])
    {
      if (state64[0] == 1)
      {
        v11 = *(a1 + 40);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __captureSession_startMonitoringForFigAssetWriterWritingVideoNotificationIfNecessary_block_invoke_2;
        v20[3] = &__block_descriptor_40_e8_v12__0B8l;
        v20[4] = v7;
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        captureSession_dispatchGraphCalloutWithGraphIDToWorkerQueueAfter(v11, *(DerivedStorage + 760), v20, 0.0);
        v9 = 0;
        v7 = *(a1 + 32);
        *(v7 + 680) = *(v7 + 401);
        v8 = state64[0];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = *(v7 + 680);
      *(v7 + 680) = 0;
    }

    *(v7 + 672) = v8;
    if (dword_1ED844050)
    {
      v19 = 0;
      v18 = 0;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v7 = *(a1 + 32);
    }

    os_unfair_lock_unlock((v7 + 384));
    v14 = *(a1 + 40);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __captureSession_startMonitoringForFigAssetWriterWritingVideoNotificationIfNecessary_block_invoke_1193;
    v15[3] = &__block_descriptor_42_e5_v8__0l;
    v16 = v5;
    v15[4] = v14;
    v17 = v6;
    captureSession_performBlockOnWorkerQueue(v14, v15);
    if (((v4 == 0) & v9) == 1)
    {
      captureSession_showRecordingVideoWhileMultitaskingDialogIfNecessary();
    }
  }
}

uint64_t __captureSession_startMonitoringForFigAssetWriterWritingVideoNotificationIfNecessary_block_invoke_2(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = -[FigCaptureCameraSourcePipeline captureDevice]([objc_msgSend(*(*(result + 32) + 784) "cameraSourcePipelines")]);
    result = [v2 captureInitiatedOnce];
    if ((result & 1) == 0)
    {

      return [v2 setCaptureInitiatedOnce:1];
    }
  }

  return result;
}

void __captureSession_startMonitoringForFigAssetWriterWritingVideoNotificationIfNecessary_block_invoke_1193(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = kFigCaptureSessionNotification_DidStartFigAssetWriterRecording;
  }

  else
  {
    if (*(a1 + 41) != 1)
    {
      return;
    }

    v1 = kFigCaptureSessionNotification_DidStopFigAssetWriterRecording;
  }

  captureSession_postNotificationWithPayload(*(a1 + 32), *v1, 0);
}

void __captureSession_startMonitoringAudioPlaybackAndRouteChangeNotifications_block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) referencedObject];
  if (v1)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __captureSession_startMonitoringAudioPlaybackAndRouteChangeNotifications_block_invoke_2;
    v2[3] = &__block_descriptor_40_e5_v8__0l;
    v2[4] = v1;
    captureSession_performBlockOnWorkerQueue(v1, v2);
  }
}

void __captureSession_startMonitoringAudioPlaybackAndRouteChangeNotifications_block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) referencedObject];
  if (v1)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __captureSession_startMonitoringAudioPlaybackAndRouteChangeNotifications_block_invoke_4;
    v2[3] = &__block_descriptor_40_e5_v8__0l;
    v2[4] = v1;
    captureSession_performBlockOnWorkerQueue(v1, v2);
  }
}

void __captureSession_ensureAVAudioSessionForIsUsingCameraIfNecessary_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!*(*(a1 + 32) + 192))
  {
    *(*(a1 + 32) + 192) = [objc_alloc(MEMORY[0x1E698D710]) initAuxiliarySession];
  }

  objc_autoreleasePoolPop(v2);
  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void cs_cancelPocketDetectionTimeoutTimer()
{
  if (qword_1EB58E938)
  {
    dispatch_source_cancel(qword_1EB58E938);

    qword_1EB58E938 = 0;
  }
}

uint64_t __captureSession_showCinematicFramingAlertIfApplicable_block_invoke(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__27;
  v2 = getBMStreamsClass_softClass;
  v19 = __Block_byref_object_dispose__27;
  v20 = getBMStreamsClass_softClass;
  if (!getBMStreamsClass_softClass)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __getBMStreamsClass_block_invoke;
    v13 = &unk_1E798FC38;
    v14 = &v15;
    __getBMStreamsClass_block_invoke(&v10);
    v2 = v16[5];
  }

  _Block_object_dispose(&v15, 8);
  v3 = [objc_msgSend(v2 "discoverabilitySignal")];
  IsCameracaptured = FigCaptureCurrentProcessIsCameracaptured();
  v5 = &FigCaptureClientApplicationIdentifierCameracaptured;
  if (!IsCameracaptured)
  {
    v5 = &FigCaptureClientApplicationIdentifierMediaserverd;
  }

  v6 = *v5;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.centerstage-discovered", *v5];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__27;
  v8 = getBMDiscoverabilitySignalEventClass_softClass;
  v19 = __Block_byref_object_dispose__27;
  v20 = getBMDiscoverabilitySignalEventClass_softClass;
  if (!getBMDiscoverabilitySignalEventClass_softClass)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __getBMDiscoverabilitySignalEventClass_block_invoke;
    v13 = &unk_1E798FC38;
    v14 = &v15;
    __getBMDiscoverabilitySignalEventClass_block_invoke(&v10);
    v8 = v16[5];
  }

  _Block_object_dispose(&v15, 8);
  return [v3 sendEvent:{objc_msgSend([v8 alloc], "initWithIdentifier:bundleID:context:", v7, v6, *(a1 + 32))}];
}

void sub_1ACB2C380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __captureSession_showCinematicFramingAlertIfApplicable_block_invoke_1254(uint64_t a1)
{
  if (dword_1ED844050)
  {
    v7 = 0;
    v6 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return [*(a1 + 32) activateWithContext:{*(a1 + 40), v4, v5}];
}

Class __getBMStreamsClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibrary();
  result = objc_getClass("BMStreams");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getBMStreamsClass_block_invoke_cold_1();
  }

  getBMStreamsClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void BiomeStreamsLibrary()
{
  v0[0] = 0;
  if (!BiomeStreamsLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __BiomeStreamsLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E7998F48;
    v2 = 0;
    BiomeStreamsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!BiomeStreamsLibraryCore_frameworkLibrary)
  {
    BiomeStreamsLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __BiomeStreamsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  BiomeStreamsLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getBMDiscoverabilitySignalEventClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibrary();
  result = objc_getClass("BMDiscoverabilitySignalEvent");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getBMDiscoverabilitySignalEventClass_block_invoke_cold_1();
  }

  getBMDiscoverabilitySignalEventClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __captureSession_prepareCellularRadioForNetworkConnection_block_invoke()
{
  result = SymptomReporterLibraryCore();
  if (result)
  {
    result = getsymptom_framework_initSymbolLoc();
    if (result)
    {
      inited = getsymptom_framework_initSymbolLoc();
      if (!inited)
      {
        __captureSession_prepareCellularRadioForNetworkConnection_block_invoke_cold_4();
      }

      v2 = inited(110, "com.apple.barcodesupport");
      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v3 = getsymptom_newSymbolLoc_ptr;
      v14 = getsymptom_newSymbolLoc_ptr;
      if (!getsymptom_newSymbolLoc_ptr)
      {
        v4 = SymptomReporterLibrary();
        v12[3] = dlsym(v4, "symptom_new");
        getsymptom_newSymbolLoc_ptr = v12[3];
        v3 = v12[3];
      }

      _Block_object_dispose(&v11, 8);
      if (!v3)
      {
        __captureSession_prepareCellularRadioForNetworkConnection_block_invoke_cold_3();
      }

      v5 = v3(v2, 450561);
      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v6 = getsymptom_set_qualifierSymbolLoc_ptr;
      v14 = getsymptom_set_qualifierSymbolLoc_ptr;
      if (!getsymptom_set_qualifierSymbolLoc_ptr)
      {
        v7 = SymptomReporterLibrary();
        v12[3] = dlsym(v7, "symptom_set_qualifier");
        getsymptom_set_qualifierSymbolLoc_ptr = v12[3];
        v6 = v12[3];
      }

      _Block_object_dispose(&v11, 8);
      if (!v6)
      {
        __captureSession_prepareCellularRadioForNetworkConnection_block_invoke_cold_2();
      }

      v6(v5, 1, 0);
      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v8 = getsymptom_sendSymbolLoc_ptr;
      v14 = getsymptom_sendSymbolLoc_ptr;
      if (!getsymptom_sendSymbolLoc_ptr)
      {
        v9 = SymptomReporterLibrary();
        v12[3] = dlsym(v9, "symptom_send");
        getsymptom_sendSymbolLoc_ptr = v12[3];
        v8 = v12[3];
      }

      _Block_object_dispose(&v11, 8);
      if (!v8)
      {
        __captureSession_prepareCellularRadioForNetworkConnection_block_invoke_cold_1();
      }

      result = v8(v5);
      if (dword_1ED844050)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        return fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  return result;
}

uint64_t SymptomReporterLibraryCore()
{
  if (!SymptomReporterLibraryCore_frameworkLibrary)
  {
    SymptomReporterLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return SymptomReporterLibraryCore_frameworkLibrary;
}

uint64_t getsymptom_framework_initSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getsymptom_framework_initSymbolLoc_ptr;
  v6 = getsymptom_framework_initSymbolLoc_ptr;
  if (!getsymptom_framework_initSymbolLoc_ptr)
  {
    v1 = SymptomReporterLibrary();
    v4[3] = dlsym(v1, "symptom_framework_init");
    getsymptom_framework_initSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACB2CB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SymptomReporterLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SymptomReporterLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getsymptom_framework_initSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomReporterLibrary();
  result = dlsym(v2, "symptom_framework_init");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getsymptom_framework_initSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SymptomReporterLibrary()
{
  v1 = 0;
  result = SymptomReporterLibraryCore();
  if (!result)
  {
    SymptomReporterLibrary_cold_1(&v1);
  }

  return result;
}

void *__getsymptom_newSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomReporterLibrary();
  result = dlsym(v2, "symptom_new");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getsymptom_newSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getsymptom_set_qualifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomReporterLibrary();
  result = dlsym(v2, "symptom_set_qualifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getsymptom_set_qualifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getsymptom_sendSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomReporterLibrary();
  result = dlsym(v2, "symptom_send");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getsymptom_sendSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void captureSession_startDeferredGraphSetupOnWorkerQueueAfter(const void *a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  if (*(DerivedStorage + 112) == 1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __captureSession_startDeferredGraphSetupOnWorkerQueueAfter_block_invoke;
    v9[3] = &__block_descriptor_40_e8_v12__0B8l;
    v9[4] = DerivedStorage;
    v6 = CMBaseObjectGetDerivedStorage();
    captureSession_dispatchGraphCalloutWithGraphIDToWorkerQueueAfter(a1, *(v6 + 760), v9, 0.0);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __captureSession_startDeferredGraphSetupOnWorkerQueueAfter_block_invoke_2;
  v8[3] = &__block_descriptor_48_e8_v12__0B8l;
  v8[4] = v5;
  v8[5] = a1;
  v7 = CMBaseObjectGetDerivedStorage();
  captureSession_dispatchGraphCalloutWithGraphIDToWorkerQueueAfter(a1, *(v7 + 760), v8, a2);
}

void __captureSession_startDeferredGraphSetupOnWorkerQueueAfter_block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 32) + 384));
    v3 = *(a1 + 32);
    if (*(v3 + 601) != 1 || (*(v3 + 400) & 1) != 0 || (*(v3 + 603) & 1) != 0 || *(v3 + 112) == 1 && *(v3 + 602) != 1)
    {

      os_unfair_lock_unlock((v3 + 384));
    }

    else
    {
      if (*(v3 + 184) == 1)
      {
        os_unfair_lock_unlock((v3 + 384));
      }

      else
      {
        v4 = *(v3 + 604);
        os_unfair_lock_unlock((v3 + 384));
        if (v4 != 1)
        {
          return;
        }
      }

      v5 = *(*(a1 + 32) + 752);

      [v5 startDeferredSourceNodesIfNeeded];
    }
  }
}

void __captureSession_startDeferredGraphSetupOnWorkerQueueAfter_block_invoke_2(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 32) + 384));
    v3 = *(a1 + 32);
    if (*(v3 + 601) != 1 || (*(v3 + 400) & 1) != 0 || (*(v3 + 603) & 1) != 0 || *(v3 + 112) == 1 && *(v3 + 602) != 1)
    {

      os_unfair_lock_unlock((v3 + 384));
    }

    else
    {
      if (*(v3 + 184) == 1)
      {
        os_unfair_lock_unlock((v3 + 384));
      }

      else
      {
        v4 = *(v3 + 604);
        os_unfair_lock_unlock((v3 + 384));
        if (v4 != 1)
        {
          return;
        }
      }

      v5 = *(a1 + 40);

      captureSession_startDeferredGraphSetup(v5);
    }
  }
}

uint64_t __initializeGlobals_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

void __captureSession_updatePreviewSinkConnectionEnabledState_block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 384));
  v3 = *(*(a1 + 32) + 512);
  os_unfair_lock_unlock((*(a1 + 32) + 384));
  if (v3)
  {
    if (*(*(a1 + 32) + 752))
    {
      v2 = [[FigCaptureSessionParsedConfiguration alloc] initWithSessionConfiguration:v3 clientSetsUserInitiatedCaptureRequestTime:captureSession_clientSetsUserInitiatedCaptureRequestTime() restrictions:*(*(a1 + 32) + 496)];
      if (v2)
      {
        captureSession_updateGraphConnectionEnabledState(*(a1 + 40), v2);
      }
    }
  }
}

uint64_t __captureSession_updateSessionStateWithApplicationAndLayoutState_block_invoke(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [*(*(a1 + 32) + 784) movieFileSinkPipelines];
  result = [v1 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        if ([v6 recording])
        {
          [v6 setRecordedWhileMultitasking:1];
        }

        ++v5;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

void __captureSession_updateSessionStateWithApplicationAndLayoutState_block_invoke_1301(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 384));
  v2 = *(a1 + 32);
  v3 = *(v2 + 337);
  os_unfair_lock_unlock((v2 + 384));
  v4 = *(a1 + 32);
  if (*(v4 + 288))
  {
    if (!v3)
    {
      return;
    }

    v5 = *(v4 + 280);
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = *(v4 + 280);
    if (!v5 || (v3 & 1) == 0)
    {
      return;
    }
  }

  v6 = *(v4 + 336);
  v10 = 0;
  [v5 setActive:0 withOptions:v6 error:&v10];
  v7 = *(a1 + 32);
  if (*(v7 + 288))
  {
LABEL_8:
    CMSessionEndInterruption();
    v7 = *(a1 + 32);
  }

  v8 = *(v7 + 328);
  if (v8)
  {
    dispatch_source_cancel(v8);

    v7 = *(a1 + 32);
    *(v7 + 328) = 0;
  }

  *(v7 + 336) = 0;
  os_unfair_lock_lock((v7 + 384));
  v9 = *(a1 + 32);
  *(v9 + 337) = 0;
  os_unfair_lock_unlock((v9 + 384));
}

uint64_t __captureSession_updateSessionStateWithApplicationAndLayoutState_block_invoke_2(uint64_t a1)
{
  v2 = +[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor];
  v3 = *(a1 + 32);

  return [v2 unregisterClient:v3];
}

void __captureSession_startObservingAVAudioSessionInterruptionNotification_block_invoke(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) referencedObject];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v5;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = [a2 name];
  if (([v8 isEqualToString:*MEMORY[0x1E698D558]] & 1) == 0)
  {
    goto LABEL_8;
  }

  if (*DerivedStorage)
  {
    goto LABEL_18;
  }

  v9 = [a2 userInfo];
  v10 = [objc_msgSend(v9 objectForKeyedSubscript:{*MEMORY[0x1E698D588]), "integerValue"}];
  v11 = [a2 userInfo];
  v12 = [objc_msgSend(v11 objectForKeyedSubscript:{*MEMORY[0x1E698D570]), "integerValue"}];
  v13 = [a2 userInfo];
  [objc_msgSend(v13 objectForKeyedSubscript:{*MEMORY[0x1E698D560]), "integerValue"}];
  if (!v10)
  {
LABEL_11:
    v15 = [a2 userInfo];
    [v15 objectForKeyedSubscript:*MEMORY[0x1E698D590]];
    v16 = [a2 userInfo];
    [v16 objectForKeyedSubscript:*MEMORY[0x1E698D598]];
    if (v10)
    {
      if (dword_1ED844050)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_16:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else if (dword_1ED844050)
    {
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      goto LABEL_16;
    }

    captureSession_updateSessionStateWithNewInputCondition(v6, DerivedStorage + 433, v10, 0, 0);
    goto LABEL_18;
  }

  if (v10 != 1)
  {
    goto LABEL_8;
  }

  if (!v12)
  {
    LODWORD(v10) = 1;
    goto LABEL_11;
  }

  if (dword_1ED844050)
  {
LABEL_8:
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_18:
  objc_autoreleasePoolPop(v4);
}

void __captureSession_startObservingCMSessionInterruptionNotification_block_invoke(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) referencedObject];
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = v5;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = [a2 name];
  if (([v8 isEqualToString:*MEMORY[0x1E69AFB80]] & 1) == 0)
  {
LABEL_11:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_13;
  }

  if (*DerivedStorage)
  {
    goto LABEL_13;
  }

  v9 = [a2 userInfo];
  v10 = [objc_msgSend(v9 objectForKeyedSubscript:{*MEMORY[0x1E69AF9E0]), "intValue"}];
  if (!v10)
  {
    v11 = 1;
    goto LABEL_8;
  }

  if (v10 != 1)
  {
    if (!dword_1ED844050)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v11 = 0;
LABEL_8:
  v12 = [a2 userInfo];
  [v12 objectForKeyedSubscript:*MEMORY[0x1E69AF9F0]];
  v13 = [a2 userInfo];
  [v13 objectForKeyedSubscript:*MEMORY[0x1E69AF9F8]];
  if (dword_1ED844050)
  {
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  captureSession_updateSessionStateWithNewInputCondition(v6, DerivedStorage + 433, v11, 0, 0);
LABEL_13:
  objc_autoreleasePoolPop(v4);
}

dispatch_group_t __cs_prewarmSystemOverride_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  cs_prewarmSystemOverride_overrideQueue = dispatch_queue_create("capture-session-prewarm-system-override", v0);
  result = dispatch_group_create();
  cs_prewarmSystemOverride_overrideGroup = result;
  return result;
}

void __captureSession_primeMemoryPoolPrewarmTimer_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  os_unfair_lock_lock(&sFigCaptureSessionPrewarming);
  captureSession_cancelMemoryPoolPrewarmingLocked(v1, 1);

  os_unfair_lock_unlock(&sFigCaptureSessionPrewarming);
}

uint64_t captureSession_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    *DerivedStorage = 1;
    [+[FigCaptureSessionObservatory sharedObservatory](FigCaptureSessionObservatory "sharedObservatory")];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __captureSession_Invalidate_block_invoke;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = v3;
    v5[5] = a1;
    captureSession_performBlockOnWorkerQueueSynchronously(a1, v5);
  }

  return 0;
}

void captureSession_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  captureSession_Invalidate(a1);
  v3 = *(DerivedStorage + 136);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 136) = 0;
  }

  v4 = *(DerivedStorage + 144);
  if (v4)
  {
    dispatch_release(v4);
    *(DerivedStorage + 144) = 0;
  }

  v5 = *(DerivedStorage + 152);
  if (v5)
  {
    dispatch_release(v5);
    *(DerivedStorage + 152) = 0;
  }

  v6 = *(DerivedStorage + 160);
  if (v6)
  {
    dispatch_release(v6);
    *(DerivedStorage + 160) = 0;
  }

  v7 = *(DerivedStorage + 256);
  if (v7)
  {
    dispatch_release(v7);
    *(DerivedStorage + 256) = 0;
  }

  v8 = *(DerivedStorage + 176);
  if (v8)
  {
    dispatch_release(v8);
    *(DerivedStorage + 176) = 0;
  }

  v9 = *(DerivedStorage + 200);
  if (v9)
  {
    dispatch_release(v9);
    *(DerivedStorage + 200) = 0;
  }

  *(DerivedStorage + 192) = 0;
  v10 = *(DerivedStorage + 88);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 88) = 0;
  }

  v11 = *(DerivedStorage + 96);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 96) = 0;
  }

  v12 = *(DerivedStorage + 104);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 104) = 0;
  }

  v13 = *(DerivedStorage + 8);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 8) = 0;
  }

  v14 = *(DerivedStorage + 720);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 720) = 0;
  }

  v15 = *(DerivedStorage + 728);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 728) = 0;
  }

  v16 = *(DerivedStorage + 736);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 736) = 0;
  }

  *(DerivedStorage + 856) = 0;
  *(DerivedStorage + 872) = 0;

  *(DerivedStorage + 952) = 0;
}

__CFString *captureSession_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = *(DerivedStorage + 104);
  v6 = CFGetRetainCount(a1);
  if (*DerivedStorage)
  {
    v7 = " (invalidated)";
  }

  else
  {
    v7 = "";
  }

  v8 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptureSession %@ retainCount: %ld%s allocator: %p>", v5, v6, v7, v8);
  return Mutable;
}

void captureSession_runDeferredStartWhenNeeded(const void *a1)
{
  v2 = (CMBaseObjectGetDerivedStorage() + 604);

  captureSession_updateDeferredGraphSetupStartCondition(a1, v2, 1);
}

uint64_t captureSession_CopySectionProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v11 = FigSignalErrorAtGM();
  }

  else if (a2 && a3)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __captureSession_CopySectionProperty_block_invoke;
    v13[3] = &unk_1E7999008;
    v13[6] = a2;
    v13[7] = a3;
    v13[8] = a5;
    v13[9] = a4;
    v13[4] = &v14;
    v13[5] = DerivedStorage;
    captureSession_performBlockOnWorkerQueueSynchronously(a1, v13);
    v11 = *(v15 + 6);
  }

  else
  {
    FigDebugAssert3();
    v11 = FigSignalErrorAtGM();
    *(v15 + 6) = v11;
  }

  _Block_object_dispose(&v14, 8);
  return v11;
}

void captureSession_StopRunning(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    captureSession_updateSessionStateWithNewInputCondition(a1, DerivedStorage + 396, 0, 0, 1);
  }
}

void captureSession_FileSinkStartRecording(const void *a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    v15 = 0;
    v14 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    if (a2)
    {
      if (a3)
      {
        if ([a3 settingsID])
        {
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __captureSession_FileSinkStartRecording_block_invoke;
          v12[3] = &unk_1E798FE50;
          v12[5] = a2;
          v12[6] = a1;
          v12[4] = a3;
          captureSession_performBlockOnWorkerQueue(a1, v12);
          v8 = objc_autoreleasePoolPush();
LABEL_8:
          objc_autoreleasePoolPop(v8);
          return;
        }

        captureSession_FileSinkStartRecording_cold_1(v13);
      }

      else
      {
        captureSession_FileSinkStartRecording_cold_2(v13);
      }

      v11 = v13[0];
      v8 = objc_autoreleasePoolPush();
      if (!v11)
      {
        goto LABEL_8;
      }

      v10 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(a2, [a3 settingsID], v11);
    }

    else
    {
      captureSession_FileSinkStartRecording_cold_3();
      v8 = v12[7];
      if (v9)
      {
        goto LABEL_8;
      }

      v10 = *v13;
    }

    captureSession_postNotificationWithPayload(a1, @"DidStopRecording", v10);
    goto LABEL_8;
  }
}

void captureSession_FileSinkStopRecording(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    v8 = 0;
    v7 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    if (a2)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __captureSession_FileSinkStopRecording_block_invoke;
      v6[3] = &unk_1E7990178;
      v6[4] = a2;
      v6[5] = a1;
      captureSession_performBlockOnWorkerQueue(a1, v6);
    }

    else
    {
      captureSession_FileSinkStopRecording_cold_1();
    }
  }
}

void captureSession_FileSinkPauseRecording(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    v8 = 0;
    v7 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    if (a2)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __captureSession_FileSinkPauseRecording_block_invoke;
      v6[3] = &unk_1E7990178;
      v6[4] = a2;
      v6[5] = a1;
      captureSession_performBlockOnWorkerQueue(a1, v6);
    }

    else
    {
      captureSession_FileSinkPauseRecording_cold_1();
    }
  }
}

void captureSession_FileSinkResumeRecording(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    v8 = 0;
    v7 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    if (a2)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __captureSession_FileSinkResumeRecording_block_invoke;
      v6[3] = &unk_1E7990178;
      v6[4] = a2;
      v6[5] = a1;
      captureSession_performBlockOnWorkerQueue(a1, v6);
    }

    else
    {
      captureSession_FileSinkResumeRecording_cold_1();
    }
  }
}

void captureSession_StillImageSinkCaptureImage(const void *a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    v18 = 0;
    v17 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    if (a2)
    {
      if (a3)
      {
        if ([a3 settingsID])
        {
          if (!*(DerivedStorage + 368))
          {
            [a3 setStillImageRequestTime:mach_absolute_time()];
            v8 = MEMORY[0x1E695FF58];
            v9 = *MEMORY[0x1E695FF58];
            if (*MEMORY[0x1E695FF58] == 1)
            {
              kdebug_trace();
              v9 = *v8;
            }

            if (v9)
            {
              v10 = fig_log_handle();
              if (os_signpost_enabled(v10))
              {
                LOWORD(buf[0]) = 0;
                _os_signpost_emit_with_name_impl(&dword_1AC90E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "StillImageCaptureNow", &unk_1AD0FC9CB, buf, 2u);
              }
            }

            v15[0] = MEMORY[0x1E69E9820];
            v15[1] = 3221225472;
            v15[2] = __captureSession_StillImageSinkCaptureImage_block_invoke;
            v15[3] = &unk_1E798FE50;
            v15[5] = a2;
            v15[6] = a1;
            v15[4] = a3;
            captureSession_performBlockOnWorkerQueue(a1, v15);
            return;
          }

          captureSession_StillImageSinkCaptureImage_cold_1(buf);
        }

        else
        {
          captureSession_StillImageSinkCaptureImage_cold_2(buf);
        }
      }

      else
      {
        captureSession_StillImageSinkCaptureImage_cold_3(buf);
      }

      v14 = buf[0];
      if (!buf[0])
      {
        return;
      }

      v12 = objc_autoreleasePoolPush();
      v13 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(a2, [a3 settingsID], v14);
    }

    else
    {
      captureSession_StillImageSinkCaptureImage_cold_4();
      if (v11)
      {
        return;
      }

      v12 = v15[7];
      v13 = *buf;
    }

    captureSession_postNotificationWithPayload(a1, @"StillImageComplete", v13);
    objc_autoreleasePoolPop(v12);
  }
}

void captureSession_StillImageSinkPrepareToCaptureBracket(const void *a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    v15 = 0;
    v14 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    if (a2)
    {
      if (a3)
      {
        if ([a3 settingsID])
        {
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __captureSession_StillImageSinkPrepareToCaptureBracket_block_invoke;
          v12[3] = &unk_1E798FE50;
          v12[5] = a3;
          v12[6] = a1;
          v12[4] = a2;
          captureSession_performBlockOnWorkerQueue(a1, v12);
          return;
        }

        captureSession_StillImageSinkPrepareToCaptureBracket_cold_1(v13);
      }

      else
      {
        captureSession_StillImageSinkPrepareToCaptureBracket_cold_2(v13);
      }

      v11 = v13[0];
      if (v13[0])
      {
        v9 = objc_autoreleasePoolPush();
        v10 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(a2, [a3 settingsID], v11);
        goto LABEL_15;
      }
    }

    else
    {
      captureSession_StillImageSinkPrepareToCaptureBracket_cold_3();
      if ((v8 & 1) == 0)
      {
        v9 = v12[7];
        v10 = *v13;
LABEL_15:
        captureSession_postNotificationWithPayload(a1, @"BracketPreparationComplete", v10);
        objc_autoreleasePoolPop(v9);
      }
    }
  }
}

void captureSession_IrisStillImageSinkCaptureImage(const void *a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    v18 = 0;
    v17 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    if (a2)
    {
      if (a3)
      {
        if ([a3 settingsID])
        {
          [a3 setStillImageRequestTime:mach_absolute_time()];
          v8 = MEMORY[0x1E695FF58];
          v9 = *MEMORY[0x1E695FF58];
          if (*MEMORY[0x1E695FF58] == 1)
          {
            kdebug_trace();
            v9 = *v8;
          }

          if (v9)
          {
            v10 = fig_log_handle();
            if (os_signpost_enabled(v10))
            {
              LOWORD(buf[0]) = 0;
              _os_signpost_emit_with_name_impl(&dword_1AC90E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "StillImageCaptureNow", &unk_1AD0FC9CB, buf, 2u);
            }
          }

          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __captureSession_IrisStillImageSinkCaptureImage_block_invoke;
          v15[3] = &unk_1E798FE50;
          v15[5] = a3;
          v15[6] = a1;
          v15[4] = a2;
          captureSession_performBlockOnWorkerQueue(a1, v15);
          return;
        }

        captureSession_IrisStillImageSinkCaptureImage_cold_1(buf);
      }

      else
      {
        captureSession_IrisStillImageSinkCaptureImage_cold_2(buf);
      }

      v14 = buf[0];
      if (!buf[0])
      {
        return;
      }

      v12 = objc_autoreleasePoolPush();
      v13 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(a2, [a3 settingsID], v14);
    }

    else
    {
      captureSession_IrisStillImageSinkCaptureImage_cold_3();
      if (v11)
      {
        return;
      }

      v12 = v15[7];
      v13 = *buf;
    }

    captureSession_postNotificationWithPayload(a1, @"IrisWillBeginCapture", v13);
    objc_autoreleasePoolPop(v12);
  }
}

void captureSession_IrisStillImageSinkPrepareToCapture(const void *a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    v15 = 0;
    v14 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    if (a2)
    {
      if (a3)
      {
        if ([a3 settingsID])
        {
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __captureSession_IrisStillImageSinkPrepareToCapture_block_invoke;
          v12[3] = &unk_1E798FE50;
          v12[5] = a3;
          v12[6] = a1;
          v12[4] = a2;
          captureSession_performBlockOnWorkerQueue(a1, v12);
          return;
        }

        captureSession_IrisStillImageSinkPrepareToCapture_cold_1(v13);
      }

      else
      {
        captureSession_IrisStillImageSinkPrepareToCapture_cold_2(v13);
      }

      v11 = v13[0];
      if (v13[0])
      {
        v9 = objc_autoreleasePoolPush();
        v10 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(a2, [a3 settingsID], v11);
        goto LABEL_15;
      }
    }

    else
    {
      captureSession_IrisStillImageSinkPrepareToCapture_cold_3();
      if ((v8 & 1) == 0)
      {
        v9 = v12[7];
        v10 = *v13;
LABEL_15:
        captureSession_postNotificationWithPayload(a1, @"IrisPreparationComplete", v10);
        objc_autoreleasePoolPop(v9);
      }
    }
  }
}

void captureSession_IrisStillImageSinkBeginMomentCapture(const void *a1, const void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    v30 = 0;
    v29 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    if (a2)
    {
      if (a3)
      {
        if ([a3 settingsID])
        {
          if (!*(DerivedStorage + 368))
          {
            *(DerivedStorage + 368) = a3;
            v9 = MEMORY[0x1E695FF58];
            if (*MEMORY[0x1E695FF58] == 1)
            {
              kdebug_trace();
            }

            v10 = mach_absolute_time();
            if (*v9)
            {
              v11 = fig_log_handle();
              if (os_signpost_enabled(v11))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_1AC90E000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "BeginMomentCapture", &unk_1AD0FC9CB, buf, 2u);
              }
            }

            captureSession_SetSectionProperty(a1, a2, @"UserInitiatedCaptureRequestTime", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a3, "userInitiatedCaptureTime", v19, v20)}]);
            v23[0] = MEMORY[0x1E69E9820];
            v23[1] = 3221225472;
            v23[2] = __captureSession_IrisStillImageSinkBeginMomentCapture_block_invoke;
            v23[3] = &unk_1E7998380;
            v23[4] = a2;
            v23[5] = a3;
            v23[6] = a1;
            v23[7] = v10;
            captureSession_performBlockOnWorkerQueue(a1, v23);
            v12 = objc_autoreleasePoolPush();
            v13 = 0;
            goto LABEL_14;
          }

          v20 = v3;
          LODWORD(v19) = 0;
          FigDebugAssert3();
          v30 = 0;
          v29 = OS_LOG_TYPE_DEFAULT;
          v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v16 = v30;
          if (os_log_type_enabled(v15, v29))
          {
            v17 = v16;
          }

          else
          {
            v17 = v16 & 0xFFFFFFFE;
          }

          if (v17)
          {
            v18 = [*(DerivedStorage + 368) settingsID];
            v24 = 136315394;
            v25 = "captureSession_IrisStillImageSinkBeginMomentCapture";
            v26 = 2050;
            v27 = v18;
            LODWORD(v20) = 22;
            v19 = &v24;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v13 = 4294950895;
          goto LABEL_28;
        }

        captureSession_IrisStillImageSinkBeginMomentCapture_cold_1(buf);
      }

      else
      {
        captureSession_IrisStillImageSinkBeginMomentCapture_cold_2(buf);
      }
    }

    else
    {
      captureSession_IrisStillImageSinkBeginMomentCapture_cold_3(buf);
    }

    v13 = *buf;
    if (!*buf)
    {
LABEL_29:
      v12 = objc_autoreleasePoolPush();
      if (!a2)
      {
        v14 = captureSession_notificationPayloadWithErrorStatus(a1, v13);
        goto LABEL_15;
      }

LABEL_14:
      v14 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(a2, [a3 settingsID], v13);
LABEL_15:
      captureSession_postNotificationWithPayload(a1, @"DidBeginMomentCapture", v14);
      objc_autoreleasePoolPop(v12);
      return;
    }

LABEL_28:
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __captureSession_IrisStillImageSinkBeginMomentCapture_block_invoke_2;
    v21[3] = &__block_descriptor_44_e5_v8__0l;
    v21[4] = a1;
    v22 = v13;
    captureSession_performBlockOnWorkerQueue(a1, v21);
    goto LABEL_29;
  }
}

void captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture(const void *a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    v41 = 0;
    v40 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    if (a2)
    {
      if (a3)
      {
        if ([a3 settingsID])
        {
          v9 = [a3 settingsID];
          if (v9 == [*(DerivedStorage + 368) settingsID])
          {
            v10 = *(DerivedStorage + 368);
            if (v10)
            {
              CFRelease(v10);
              *(DerivedStorage + 368) = 0;
            }

            [a3 setStillImageRequestTime:mach_absolute_time()];
            v11 = MEMORY[0x1E695FF58];
            v12 = *MEMORY[0x1E695FF58];
            if (*MEMORY[0x1E695FF58] == 1)
            {
              kdebug_trace();
              v12 = *v11;
            }

            if (v12)
            {
              v13 = fig_log_handle();
              if (os_signpost_enabled(v13))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_1AC90E000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "StillImageCaptureNow", &unk_1AD0FC9CB, buf, 2u);
              }
            }

            v29[0] = MEMORY[0x1E69E9820];
            v29[1] = 3221225472;
            v29[2] = __captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture_block_invoke;
            v29[3] = &unk_1E7999050;
            v29[6] = a1;
            v29[7] = DerivedStorage;
            v29[4] = a2;
            v29[5] = a3;
            v29[8] = a2;
            v30 = 0;
            captureSession_performBlockOnWorkerQueue(a1, v29);
            return;
          }

          LODWORD(v27) = 0;
          FigDebugAssert3();
          v41 = 0;
          v40 = OS_LOG_TYPE_DEFAULT;
          v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v16 = v41;
          if (os_log_type_enabled(v15, v40))
          {
            v17 = v16;
          }

          else
          {
            v17 = v16 & 0xFFFFFFFE;
          }

          if (v17)
          {
            v18 = [a3 settingsID];
            v19 = [*(DerivedStorage + 368) settingsID];
            v31 = 136315650;
            v32 = "captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture";
            v33 = 2050;
            v34 = v18;
            v35 = 2050;
            v36 = v19;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v14 = 4294950896;
          goto LABEL_28;
        }

        captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture_cold_1(buf);
      }

      else
      {
        captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture_cold_2(buf);
      }
    }

    else
    {
      captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture_cold_3(buf);
    }

    v14 = *buf;
    if (!*buf)
    {
      return;
    }

LABEL_28:
    v41 = 0;
    v40 = OS_LOG_TYPE_DEFAULT;
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v21 = v41;
    if (os_log_type_enabled(v20, v40))
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 & 0xFFFFFFFE;
    }

    if (v22)
    {
      v23 = *(DerivedStorage + 104);
      v24 = [a3 settingsID];
      v31 = 136315906;
      v32 = "captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture";
      v33 = 2114;
      v34 = v23;
      v35 = 2048;
      v36 = v24;
      v37 = 1024;
      v38 = v14;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture_block_invoke_1412;
    v28[3] = &__block_descriptor_40_e5_v8__0l;
    v28[4] = a1;
    captureSession_performBlockOnWorkerQueue(a1, v28);
    v25 = objc_autoreleasePoolPush();
    if (a2)
    {
      v26 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(a2, [a3 settingsID], v14);
    }

    else
    {
      v26 = captureSession_notificationPayloadWithErrorStatus(a1, v14);
    }

    captureSession_postNotificationWithPayload(a1, @"IrisWillBeginCapture", v26);
    objc_autoreleasePoolPop(v25);
  }
}

void captureSession_IrisStillImageSinkCommitMomentCaptureToMovieRecording(const void *a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    v32 = 0;
    v31 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    if (a2)
    {
      if (a3)
      {
        if ([a3 settingsID])
        {
          v8 = [a3 settingsID];
          if (v8 == [*(DerivedStorage + 368) settingsID])
          {
            v9 = [*(DerivedStorage + 368) userInitiatedCaptureTime];
            v10 = [*(DerivedStorage + 368) torchMode];
            v11 = *(DerivedStorage + 368);
            if (v11)
            {
              CFRelease(v11);
              *(DerivedStorage + 368) = 0;
            }

            if (*MEMORY[0x1E695FF58] == 1)
            {
              kdebug_trace();
            }

            v20[0] = MEMORY[0x1E69E9820];
            v20[1] = 3221225472;
            v20[2] = __captureSession_IrisStillImageSinkCommitMomentCaptureToMovieRecording_block_invoke;
            v20[3] = &unk_1E7999078;
            v20[4] = a2;
            v20[5] = a3;
            v20[6] = a1;
            v20[7] = v9;
            v21 = v10;
            v20[8] = DerivedStorage;
            v20[9] = a2;
            captureSession_performBlockOnWorkerQueue(a1, v20);
            return;
          }

          captureSession_IrisStillImageSinkCommitMomentCaptureToMovieRecording_cold_1(v30);
        }

        else
        {
          captureSession_IrisStillImageSinkCommitMomentCaptureToMovieRecording_cold_2(v30);
        }
      }

      else
      {
        captureSession_IrisStillImageSinkCommitMomentCaptureToMovieRecording_cold_3(v30);
      }
    }

    else
    {
      captureSession_IrisStillImageSinkCommitMomentCaptureToMovieRecording_cold_4(v30);
    }

    v12 = v30[0];
    if (v30[0])
    {
      v32 = 0;
      v31 = OS_LOG_TYPE_DEFAULT;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v14 = v32;
      if (os_log_type_enabled(v13, v31))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v16 = *(DerivedStorage + 104);
        v22 = 136315906;
        v23 = "captureSession_IrisStillImageSinkCommitMomentCaptureToMovieRecording";
        v24 = 2114;
        v25 = v16;
        v26 = 2048;
        v27 = [a3 settingsID];
        v28 = 1024;
        v29 = v12;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __captureSession_IrisStillImageSinkCommitMomentCaptureToMovieRecording_block_invoke_1416;
      v19[3] = &__block_descriptor_40_e5_v8__0l;
      v19[4] = a1;
      captureSession_performBlockOnWorkerQueue(a1, v19);
      v17 = objc_autoreleasePoolPush();
      if (a2)
      {
        v18 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(a2, [a3 settingsID], v12);
      }

      else
      {
        v18 = captureSession_notificationPayloadWithErrorStatus(a1, v12);
      }

      captureSession_postNotificationWithPayload(a1, @"DidBeginRecordingMomentCaptureMovie", v18);
      objc_autoreleasePoolPop(v17);
    }
  }
}

void captureSession_IrisStillImageSinkCancelMomentCapture(const void *a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    v28 = 0;
    v27 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    if (a2)
    {
      if ([*(DerivedStorage + 368) settingsID] == a3)
      {
        v8 = *(DerivedStorage + 368);
        if (v8)
        {
          CFRelease(v8);
          *(DerivedStorage + 368) = 0;
        }

        if (*MEMORY[0x1E695FF58] == 1)
        {
          kdebug_trace();
        }

        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __captureSession_IrisStillImageSinkCancelMomentCapture_block_invoke;
        v17[3] = &unk_1E79914E0;
        v17[4] = a2;
        v17[5] = a1;
        v17[6] = DerivedStorage;
        v17[7] = a3;
        v17[8] = a2;
        captureSession_performBlockOnWorkerQueue(a1, v17);
        return;
      }

      captureSession_IrisStillImageSinkCancelMomentCapture_cold_1(v26);
    }

    else
    {
      captureSession_IrisStillImageSinkCancelMomentCapture_cold_2(v26);
    }

    v9 = v26[0];
    if (v26[0])
    {
      v28 = 0;
      v27 = OS_LOG_TYPE_DEFAULT;
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v11 = v28;
      if (os_log_type_enabled(v10, v27))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v13 = *(DerivedStorage + 104);
        v18 = 136315906;
        v19 = "captureSession_IrisStillImageSinkCancelMomentCapture";
        v20 = 2114;
        v21 = v13;
        v22 = 2048;
        v23 = a3;
        v24 = 1024;
        v25 = v9;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __captureSession_IrisStillImageSinkCancelMomentCapture_block_invoke_1418;
      v16[3] = &__block_descriptor_40_e5_v8__0l;
      v16[4] = a1;
      captureSession_performBlockOnWorkerQueue(a1, v16);
      v14 = objc_autoreleasePoolPush();
      if (a2)
      {
        v15 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(a2, a3, v9);
      }

      else
      {
        v15 = captureSession_notificationPayloadWithErrorStatus(a1, v9);
      }

      captureSession_postNotificationWithPayload(a1, @"DidCancelMomentCapture", v15);
      objc_autoreleasePoolPop(v14);
    }
  }
}

void captureSession_IrisStillImageSinkEndMomentCapture(const void *a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    v10 = 0;
    v9 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    if (a2)
    {
      if (*MEMORY[0x1E695FF58] == 1)
      {
        kdebug_trace();
      }

      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __captureSession_IrisStillImageSinkEndMomentCapture_block_invoke;
      v8[3] = &unk_1E7990150;
      v8[4] = a2;
      v8[5] = a1;
      v8[6] = DerivedStorage;
      v8[7] = a3;
      captureSession_performBlockOnWorkerQueue(a1, v8);
    }

    else
    {
      captureSession_IrisStillImageSinkEndMomentCapture_cold_1();
    }
  }
}

void captureSession_VisionDataSinkTriggerBurst(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844050)
  {
    v8 = 0;
    v7 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    if (a2)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __captureSession_VisionDataSinkTriggerBurst_block_invoke;
      v6[3] = &unk_1E7990178;
      v6[4] = a2;
      v6[5] = a1;
      captureSession_performBlockOnWorkerQueue(a1, v6);
    }

    else
    {
      captureSession_VisionDataSinkTriggerBurst_cold_1();
    }
  }
}

uint64_t __cs_shouldCachePreviewSinkSessionPropertyWithKey_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"PreviewFilters", @"PortraitLightingEffectStrength", @"SemanticStyles", @"PrimaryCaptureRect", 0}];
  cs_shouldCachePreviewSinkSessionPropertyWithKey_cachedPreviewSinkPropertyKeys = result;
  return result;
}

void captureSession_updateInflightConfigurationWithVideoDataSinkPropertyForKey(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_updateInflightConfigurationWithVideoDataSinkPropertyForKey_cold_1();
  }

  os_unfair_lock_lock((DerivedStorage + 384));
  v6 = *(DerivedStorage + 504);
  v20 = DerivedStorage;
  os_unfair_lock_unlock((DerivedStorage + 384));
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v19 = v6;
  v7 = [v6 connectionConfigurations];
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v32 + 1) + 8 * i) videoDataSinkConfiguration];
        if ([objc_msgSend(v12 "sinkID")] && CFEqual(a3, @"CaptureSessionVideoDataSinkProperty_PreservesDynamicHDRMetadata"))
        {
          if (dword_1ED844050)
          {
            v30 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v14 = v30;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v15 = v14;
            }

            else
            {
              v15 = v14 & 0xFFFFFFFE;
            }

            if (v15)
            {
              v16 = *(v20 + 104);
              v23 = 136315650;
              v24 = "captureSession_updateInflightConfigurationWithVideoDataSinkPropertyForKey";
              v25 = 2114;
              v26 = v16;
              v27 = 2114;
              v28 = a3;
              LODWORD(v18) = 32;
              v17 = &v23;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [v12 setPreservesDynamicHDRMetadata:{objc_msgSend(a4, "BOOLValue", v17, v18)}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v32 objects:v31 count:16];
    }

    while (v9);
  }
}

os_log_t __getCameraCaptureExcessiveLog_block_invoke_0()
{
  result = os_log_create("com.apple.cameracapture", "excessive");
  getCameraCaptureExcessiveLog_cameraCaptureExcessiveLog_0 = result;
  return result;
}

uint64_t cs_updateSmartStyleSupport(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    result = [a2 constantColorEnabled];
    if (result)
    {
      return result;
    }

    result = [a2 burstQualityCaptureEnabled];
    if (result)
    {
      return result;
    }

    result = FigCapturePixelFormatIsDemosaicedRaw([a2 rawOutputFormat]);
    if (result)
    {
      return result;
    }

    result = [a2 bracketType];
    if (result)
    {
      return result;
    }
  }

  CurrentSmartStyle = cs_getCurrentSmartStyle();
  result = [objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")];
  if (!result)
  {
    return result;
  }

  v7 = CurrentSmartStyle != 0;
  v8 = CurrentSmartStyle;
  if (!CurrentSmartStyle)
  {
    result = +[FigCaptureSmartStyle identityStyle];
    v8 = result;
  }

  v9 = CurrentSmartStyle != 0;
  if (!a2)
  {
LABEL_13:
    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  [a2 setSmartStyle:v8];
  result = [a2 clientQualityPrioritization];
  if (result == 1 || (result = FigCapturePixelFormatIsDemosaicedRaw([a2 rawOutputFormat]), (result & 1) != 0))
  {
    v9 = 0;
    goto LABEL_13;
  }

  result = [a2 outputFileType];
  if (CurrentSmartStyle)
  {
    v10 = result == 1785096550;
  }

  else
  {
    v10 = 1;
  }

  v9 = !v10;
  if (a3)
  {
LABEL_14:
    result = [objc_msgSend(a3 videoSettings];
    if (result)
    {
      result = BWOSTypeForString(result);
      v7 = result == 1752589105;
    }

    else
    {
      v7 = 1;
    }
  }

LABEL_17:
  if (v9 && v7)
  {
    [a2 setSmartStyleReversibilitySupported:1];

    return [a3 setSmartStyleReversibilitySupported:1];
  }

  return result;
}

uint64_t captureSession_captureStillImageNow(const void *a1, void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = [*(DerivedStorage + 784) stillImageSinkPipelineSessionStorageWithSinkID:a2];
  v8 = [v7 primaryStillImageSinkPipeline];
  v9 = [v8 stillImageCoordinatorNode];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v65 = [a3 isBeginMomentCaptureSettings];
  v71 = v7;
  obj = [v7 primaryCameraSourcePipeline];
  if (isKindOfClass)
  {
    v11 = [*(DerivedStorage + 784) movieFileSinkPipelineWithSinkID:{objc_msgSend(v8, "sinkID")}];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(FigCaptureCameraSourcePipeline *)obj captureDevice];
  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_captureStillImageNow_cold_1();
  }

  v62 = a2;
  if (!v8)
  {
    if (captureSession_captureStillImageNow_cold_9(DerivedStorage, &v110))
    {
      return 0;
    }

    v39 = v110;
    goto LABEL_119;
  }

  if (!v9)
  {
    captureSession_captureStillImageNow_cold_8(&v110);
    goto LABEL_115;
  }

  if (([a2 isEqualToString:{objc_msgSend(v8, "sinkID")}] & 1) == 0)
  {
    captureSession_captureStillImageNow_cold_2(&v110);
    goto LABEL_115;
  }

  if (captureSession_isPrewarming())
  {
    captureSession_captureStillImageNow_cold_7(&v110);
    goto LABEL_115;
  }

  if ((*(DerivedStorage + 768) & 1) == 0)
  {
    captureSession_captureStillImageNow_cold_3(&v110);
LABEL_115:
    v39 = v110;
    if (!v110)
    {
      return 0;
    }

    goto LABEL_119;
  }

  v70 = a3;
  v63 = isKindOfClass;
  v64 = DerivedStorage;
  if ([*(DerivedStorage + 752) resumesConnectionsAsNodesArePrepared])
  {
    v13 = CMBaseObjectGetDerivedStorage();
    if (!_FigIsCurrentDispatchQueue())
    {
      captureSession_captureStillImageNow_cold_4();
    }

    if (dword_1ED844050)
    {
      v113 = 0;
      v112 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ((*(v13 + 769) & 1) == 0)
    {
      captureSession_startDeferredGraphSetupWork(a1);
      [*(v13 + 752) waitForNonDeferredSourceNodesToStart];
    }
  }

  else
  {
    captureSession_waitForGraphToStart(a1, 0);
  }

  if (captureSession_clientIsCameraOrDerivative(a1) && [-[FigCaptureCameraSourcePipeline captureDevice](obj) softISPEnabled] && (*(DerivedStorage + 771) & 1) == 0 && objc_msgSend(a3, "qualityPrioritization") == 3)
  {
    [objc_msgSend(*(DerivedStorage + 752) "memoryPool")];
  }

  if ((*(DerivedStorage + 771) & 1) == 0 && [v12 trueVideoCaptureEnabled])
  {
    os_unfair_lock_lock((DerivedStorage + 384));
    if (!*(DerivedStorage + 744))
    {
      v15 = dispatch_group_create();
      *(DerivedStorage + 744) = v15;
      dispatch_group_enter(v15);
    }

    os_unfair_lock_unlock((DerivedStorage + 384));
  }

  *(DerivedStorage + 771) = 1;
  if ((isKindOfClass & 1) != 0 && [(FigCaptureMovieFileSinkPipeline *)v11 irisStagingNode])
  {
    v16 = [*(DerivedStorage + 752) resumesConnectionsAsNodesArePrepared] ? 2.0 : 1.0;
    v17 = [(FigCaptureMovieFileSinkPipeline *)v11 irisStagingNode];
    *&v18 = v16;
    if (([v17 waitUntilReadyToReceiveRequestsWithTimeout:v18] & 1) == 0)
    {
      v113 = 0;
      v112 = OS_LOG_TYPE_DEFAULT;
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v20 = v113;
      if (os_log_type_enabled(v19, v112))
      {
        v21 = v20;
      }

      else
      {
        v21 = v20 & 0xFFFFFFFE;
      }

      if (v21)
      {
        v22 = *(v64 + 104);
        *v105 = 136315650;
        *&v105[4] = "captureSession_captureStillImageNow";
        v106 = 2114;
        v107 = v22;
        v108 = 2048;
        v109 = v16;
        LODWORD(v61) = 32;
        v60 = v105;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v23 = v71;
  if ([v71 videoStabilizationOverscanCropEnabled])
  {
    [v71 videoStabilizationOverscanCropMultiplier];
    [a3 setVideoStabilizationOverscanCropMultiplier:?];
  }

  [v12 zoomFactor];
  v104 = v24;
  v25 = stillImageSinkPipelineSessionStorage_stillImageOutputDimensionsForSettings(v71, v8, a3, &v104);
  captureSession_updateOutputDimensionsAndResolutionFlavor(v25, obj, a3);
  BWUpdateThumbnailAndPreviewDimensionsForRequestedSettings(a3, v104);
  v66 = a1;
  if ((isKindOfClass & 1) != 0 && -[FigCaptureMovieFileSinkPipeline movieFileSinkNodes](v11) && [a3 movieMode])
  {
    obja = v12;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v26 = [(FigCaptureMovieFileSinkPipeline *)v11 movieFileSinkNodes];
    v27 = [v26 countByEnumeratingWithState:&v100 objects:v99 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v101;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v101 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v100 + 1) + 8 * i);
          if ([v31 irisMovieProcessingSuspended])
          {
            [v31 setIrisMovieProcessingSuspended:0];
            v32 = [v11 sinkID];
            *v105 = @"SectionID";
            *&v110 = v32;
            captureSession_postNotificationWithPayload(a1, @"DidResumeIrisMovieProcessing", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:v105 count:1]);
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v100 objects:v99 count:16];
      }

      while (v28);
    }

    v12 = obja;
    [obja nonDestructiveCropSize];
    a3 = v70;
    [v70 setNonDestructiveCropSize:?];
    v23 = v71;
  }

  v33 = [v23 previewSinkNode];
  if (!v33)
  {
    goto LABEL_79;
  }

  v34 = v33;
  v35 = v12;
  v36 = [a3 stillImageUserInitiatedRequestTime];
  if ([v35 zeroShutterLagEnabled])
  {
    if ([v35 unifiedBracketingMode])
    {
      if (!v36)
      {
        v36 = mach_absolute_time();
      }

      [v34 previewPTSDisplayedAtHostTime:v36 allowingExtrapolation:1];
      v110 = v90;
      v111 = v91;
      [a3 setStillImageUserInitiatedRequestPTS:&v110];
      goto LABEL_70;
    }

    if ([v23 currentUserInitiatedRequestHostTime])
    {
      if (v23)
      {
        [v23 currentUserInitiatedRequestPTS];
        if ((v97 & 0x100000000) != 0)
        {
          v37 = [a3 stillImageUserInitiatedRequestTime];
          if (v37 == [v23 currentUserInitiatedRequestHostTime])
          {
            [v23 currentUserInitiatedRequestPTS];
            v110 = v94;
            v38 = v95;
LABEL_108:
            v111 = v38;
            [a3 setStillImageUserInitiatedRequestPTS:&v110];
            goto LABEL_69;
          }

          if ([a3 burstQualityCaptureEnabled])
          {
            [a3 setStillImageUserInitiatedRequestTime:{objc_msgSend(v23, "currentUserInitiatedRequestHostTime")}];
            [v23 currentUserInitiatedRequestPTS];
            v110 = v92;
            v38 = v93;
            goto LABEL_108;
          }

LABEL_69:
          [v23 setCurrentUserInitiatedRequestHostTime:0];
          v110 = *MEMORY[0x1E6960C70];
          v111 = *(MEMORY[0x1E6960C70] + 16);
          [v23 setCurrentUserInitiatedRequestPTS:&v110];
          goto LABEL_70;
        }
      }

      else
      {
        v97 = 0;
        v96 = 0;
        v98 = 0;
      }
    }

    [a3 burstQualityCaptureEnabled];
    [a3 stillImageUserInitiatedRequestTime];
    goto LABEL_69;
  }

LABEL_70:
  if ([a3 stillImageUserInitiatedRequestTime])
  {
    if (a3)
    {
      [a3 stillImageUserInitiatedRequestPTS];
      if ((v88 & 0x100000000) != 0)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v88 = 0;
      v87 = 0;
      v89 = 0;
    }

    [v34 previewPTSDisplayedAtHostTime:objc_msgSend(a3 allowingExtrapolation:{"stillImageUserInitiatedRequestTime"), 1}];
    v110 = v85;
    v111 = v86;
    [a3 setStillImageUserInitiatedRequestPTS:&v110];
  }

  if (!a3)
  {
    v82 = 0;
    v83 = 0;
    v84 = 0;
    goto LABEL_79;
  }

LABEL_77:
  [a3 stillImageUserInitiatedRequestPTS];
LABEL_79:
  if (v65)
  {
    if (cs_touchDownMomentStillCaptureEnabled_onceToken != -1)
    {
      captureSession_didCaptureIrisStill_cold_1();
    }

    v39 = [v9 beginStillImageMomentCaptureWithSettings:a3];
  }

  else
  {
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    objb = [v23 stillImageSinkPipelines];
    v40 = [objb countByEnumeratingWithState:&v78 objects:v77 count:16];
    if (!v40)
    {
      goto LABEL_95;
    }

    v41 = v40;
    v39 = 0;
    v42 = *v79;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v79 != v42)
        {
          objc_enumerationMutation(objb);
        }

        v44 = *(*(&v78 + 1) + 8 * j);
        v45 = [v44 stillImageCoordinatorNode];
        v46 = a3;
        if (v9 != v45)
        {
          v46 = [a3 copy];
          [v46 resetDimensions];
          v47 = [v71 cameraSourcePipelineForStillImageSinkPipeline:v44];
          [-[FigCaptureCameraSourcePipeline captureDevice](v47) zoomFactor];
          LODWORD(v110) = v48;
          v49 = stillImageSinkPipelineSessionStorage_stillImageOutputDimensionsForSettings(v71, v44, v46, &v110);
          v50 = v47;
          a3 = v70;
          captureSession_updateOutputDimensionsAndResolutionFlavor(v49, v50, v46);
          BWUpdateThumbnailAndPreviewDimensionsForRequestedSettings(v46, *&v110);
        }

        v51 = [objc_msgSend(v44 "stillImageCoordinatorNode")];
        if (v9 == v45)
        {
          v39 = v51;
        }
      }

      v41 = [objb countByEnumeratingWithState:&v78 objects:v77 count:16];
    }

    while (v41);
  }

  if (!v39)
  {
LABEL_95:
    if ([a3 burstQualityCaptureEnabled])
    {
      os_unfair_lock_lock((v64 + 384));
      [v71 setMostRecentBurstSettingsID:{objc_msgSend(a3, "settingsID")}];
      os_unfair_lock_unlock((v64 + 384));
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v52 = [*(v64 + 784) metadataSinkPipelines];
      v53 = [v52 countByEnumeratingWithState:&v73 objects:v72 count:16];
      if (v53)
      {
        v54 = *v74;
        do
        {
          for (k = 0; k != v53; ++k)
          {
            if (*v74 != v54)
            {
              objc_enumerationMutation(v52);
            }

            v56 = *(*(&v73 + 1) + 8 * k);
            if ([(FigCaptureMetadataSinkPipeline *)v56 mrcLowPowerModeEnabled])
            {
              [(FigCaptureMetadataSinkPipeline *)v56 setMrcSuspended:?];
            }
          }

          v53 = [v52 countByEnumeratingWithState:&v73 objects:v72 count:16];
        }

        while (v53);
      }

      return v53;
    }

    return 0;
  }

  captureSession_captureStillImageNow_cold_6();
  a1 = v66;
  isKindOfClass = v63;
LABEL_119:
  if (v39 == -12773)
  {
    v53 = 4294951755;
  }

  else
  {
    v53 = v39;
  }

  if ((v65 & 1) == 0)
  {
    v58 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(v62, [a3 settingsID], v53);
    v59 = kFigCaptureSessionIrisStillImageSinkNotification_WillBeginCapture;
    if ((isKindOfClass & 1) == 0)
    {
      v59 = kFigCaptureSessionStillImageSinkNotification_StillImageComplete;
    }

    captureSession_postNotificationWithPayload(a1, *v59, v58);
  }

  return v53;
}

uint64_t cs_IrisStillImageSinkPrepareMovieRecording(uint64_t a1, uint64_t a2, void *a3)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [a3 movieMode];
    if (result)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (!_FigIsCurrentDispatchQueue())
      {
        cs_IrisStillImageSinkPrepareMovieRecording_cold_1();
      }

      v7 = [*(DerivedStorage + 784) movieFileSinkPipelineWithSinkID:a2];
      v8 = +[BWPendingIrisRecordingRequest irisRecordingRequestWithFigCaptureMovieFileRecordingSettings:](BWPendingIrisRecordingRequest, "irisRecordingRequestWithFigCaptureMovieFileRecordingSettings:", [objc_msgSend(a3 "movieRecordingSettings")]);
      if (![v7 pendingIrisRecordings])
      {
        [v7 setPendingIrisRecordings:{objc_msgSend(MEMORY[0x1E695DF70], "array")}];
      }

      v9 = [objc_msgSend(objc_msgSend(objc_msgSend(v7 "pendingIrisRecordings")];
      if (v9 >= [(FigCaptureRecordingSettings *)[(BWPendingIrisRecordingRequest *)v8 settings] settingsID])
      {
        v24 = 0;
        v23 = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [objc_msgSend(v7 pendingIrisRecordings];
      result = [(BWPendingIrisRecordingRequest *)v8 setEnqueuedHostTime:mach_absolute_time()];
      if (dword_1ED844050)
      {
        v24 = 0;
        v23 = OS_LOG_TYPE_DEFAULT;
        v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v12 = v24;
        if (os_log_type_enabled(v11, v23))
        {
          v13 = v12;
        }

        else
        {
          v13 = v12 & 0xFFFFFFFE;
        }

        if (v13)
        {
          v14 = *(DerivedStorage + 104);
          v17 = 136315650;
          v18 = "cs_IrisStillImageSinkPrepareMovieRecording";
          v19 = 2114;
          v20 = v14;
          v21 = 2112;
          v22 = v8;
          _os_log_send_and_compose_impl();
        }

        return fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  return result;
}

BOOL OUTLINED_FUNCTION_112_4(NSObject *a1)
{
  v2 = STACK[0x80B];

  return os_log_type_enabled(a1, v2);
}

uint64_t FigImageControl_LockFocus()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 7612) != 3)
  {
    *(DerivedStorage + 7612) = 3;
    *(DerivedStorage + 7580) = 0;
  }

  return 0;
}

uint64_t FigImageControl_ContinuousAutoFocusWithSmoothFocus(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 7583) != a2)
  {
    *(DerivedStorage + 7583) = a2;
    *(DerivedStorage + 7580) = 0;
  }

  return 0;
}

uint64_t FigImageControl_SetContinuousAutoFocusAreaOfInterest(uint64_t a1, int a2, int a3, int a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[1903] != 1)
  {
    return 4294954516;
  }

  v11 = DerivedStorage;
  if (DerivedStorage[1905] == a2 && DerivedStorage[1906] == a3 && DerivedStorage[1907] == a4 && DerivedStorage[1908] == a5)
  {
    return 0;
  }

  DerivedStorage[1905] = a2;
  DerivedStorage[1906] = a3;
  DerivedStorage[1907] = a4;
  DerivedStorage[1908] = a5;
  v12 = CMBaseObjectGetDerivedStorage();
  v13 = 274877907 * v12[4536] * a4;
  LODWORD(v13) = (v13 >> 38) + (v13 >> 63);
  v14 = 274877907 * v12[4537] * a5;
  LODWORD(v14) = (v14 >> 38) + (v14 >> 63);
  v15 = __OFSUB__(v14, v13);
  v16 = v14 - v13;
  v18 = v16 < 0 != v15 || v16 < 5;
  if (v18)
  {
    v19 = 5;
  }

  else
  {
    v19 = 3;
  }

  if (v18)
  {
    v20 = 3;
  }

  else
  {
    v20 = 5;
  }

  v12[1909] = v19;
  v12[1910] = v20;
  if (*(v11 + 625) == 1)
  {
    setupFocusWindowMatrix(a1, v11[1905], v11[1906], v11[1907], v11[1908], *(v11 + 560), v11[1909], v11[1910], 1);
    return 0;
  }

  result = 0;
  *(v11 + 7581) = 1;
  return result;
}

void setupFocusWindowMatrix(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = (DerivedStorage + 7585);
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  *v69 = 0u;
  v70 = 0u;
  if (*(DerivedStorage + 9085))
  {
    return;
  }

  v16 = DerivedStorage;
  v17 = *(DerivedStorage + 9048);
  *(DerivedStorage + 468) = 0uLL;
  *(DerivedStorage + 484) = 0uLL;
  *(DerivedStorage + 436) = 0uLL;
  *(DerivedStorage + 452) = 0uLL;
  v54 = DerivedStorage + 436;
  v18 = (a8 * a7);
  if (v18 >= 17)
  {
    setupFocusWindowMatrix_cold_1();
  }

  valuePtr = 0;
  v68 = 0;
  *(DerivedStorage + 176) = v18;
  v19 = *MEMORY[0x1E695E480];
  if (v18 <= 0)
  {
    v33 = CFArrayCreate(*MEMORY[0x1E695E480], v69, v18, MEMORY[0x1E695E9C0]);
    v66 = 0;
    goto LABEL_33;
  }

  v38 = (DerivedStorage + 7585);
  v20 = 0;
  v53 = 1000 - v17;
  v52 = *off_1E798A280;
  v50 = *off_1E798A2C0;
  v51 = *off_1E798A2B0;
  v48 = *off_1E798A2B8;
  v49 = *off_1E798A288;
  v42 = *off_1E798A1D8;
  v47 = DerivedStorage + 180;
  v46 = DerivedStorage + 244;
  v41 = *off_1E798A278;
  v39 = DerivedStorage;
  v44 = DerivedStorage + 372;
  v45 = DerivedStorage + 308;
  v40 = *MEMORY[0x1E695E4D0];
  do
  {
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
    *keys = 0u;
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    *values = 0u;
    v66 = 1;
    v21 = (v20 % a7) * a4 / a7 + a2;
    v22 = ((v20 % a7) * a4 / a7 + a2);
    HIWORD(valuePtr) = (v20 % a7) * a4 / a7 + a2;
    v23 = (v20 / a7) * a5 / a8 + a3;
    LOWORD(valuePtr) = (v20 / a7) * a5 / a8 + a3;
    v24 = (a4 + v22 * a4) / a7 - v22 * a4 / a7;
    HIWORD(v68) = (a4 + v22 * a4) / a7 - v22 * a4 / a7;
    v25 = valuePtr;
    v26 = (a5 + valuePtr * a5) / a8;
    v27 = v26 - valuePtr * a5 / a8;
    LOWORD(v68) = v26 - valuePtr * a5 / a8;
    if ((v21 & 0x8000) != 0)
    {
      v22 = 0;
      LOWORD(v24) = v24 + v21;
      HIWORD(v68) = v24;
      HIWORD(valuePtr) = 0;
      if ((v23 & 0x8000) == 0)
      {
        goto LABEL_7;
      }
    }

    else if ((v23 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    v25 = 0;
    LOWORD(v27) = v27 + v23;
    LOWORD(v68) = v27;
    LOWORD(valuePtr) = 0;
LABEL_7:
    if (v22 + v24 >= 1001)
    {
      LOWORD(v24) = 1000 - v22;
      HIWORD(v68) = 1000 - v22;
    }

    if (v25 + v27 >= 1001)
    {
      LOWORD(v27) = 1000 - v25;
      LOWORD(v68) = 1000 - v25;
    }

    if (v17 > v24)
    {
      HIWORD(v68) = v17;
      if (v53 < v22)
      {
        HIWORD(valuePtr) = 1000 - v17;
      }
    }

    if (v17 > v27)
    {
      LOWORD(v68) = v17;
      if (v53 < v25)
      {
        LOWORD(valuePtr) = 1000 - v17;
      }
    }

    keys[0] = v52;
    values[0] = CFNumberCreate(v19, kCFNumberSInt16Type, &valuePtr + 2);
    keys[1] = v51;
    values[1] = CFNumberCreate(v19, kCFNumberSInt16Type, &valuePtr);
    *&v63 = v50;
    *&v59 = CFNumberCreate(v19, kCFNumberSInt16Type, &v68 + 2);
    *(&v63 + 1) = v49;
    *(&v59 + 1) = CFNumberCreate(v19, kCFNumberSInt16Type, &v68);
    *&v64 = v48;
    *&v60 = CFNumberCreate(v19, kCFNumberIntType, &v66);
    v28 = 5;
    if (!v20 && a6)
    {
      v57 = 4096;
      *(&v64 + 1) = v42;
      v29 = CFNumberCreate(v19, kCFNumberIntType, &v57);
      v65 = v41;
      *(&v60 + 1) = v29;
      v61 = v40;
      v28 = 7;
    }

    *(v47 + 4 * v20) = SHIWORD(valuePtr);
    *(v46 + 4 * v20) = valuePtr;
    *(v45 + 4 * v20) = SHIWORD(v68);
    *(v44 + 4 * v20) = v68;
    *(v54 + 4 * v20) = v66;
    v30 = CFDictionaryCreate(v19, keys, values, v28, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v31 = 0;
    v69[v20] = v30;
    v66 = 0;
    do
    {
      v32 = values[v31];
      if (v32)
      {
        CFRelease(v32);
        v31 = v66;
      }

      v66 = ++v31;
    }

    while (v31 < v28);
    ++v20;
  }

  while (v20 != v18);
  v33 = CFArrayCreate(v19, v69, (a8 * a7), MEMORY[0x1E695E9C0]);
  v34 = 0;
  v66 = 0;
  v16 = v39;
  do
  {
    v35 = v69[v34];
    if (v35)
    {
      CFRelease(v35);
      v34 = v66;
    }

    v66 = ++v34;
  }

  while (v34 < v18);
  v15 = v38;
LABEL_33:
  v36 = *(v16 + 9040);
  if (v36)
  {
    CFRelease(v36);
  }

  *(v16 + 9040) = v33;
  if (*v15 == 1)
  {
    v37 = *off_1E798BC50;
    if (a9)
    {
      captureStreamSetPropertyOnActivityScheduler(a1, v37, v33);
    }

    else
    {
      af_sbp_setPropertyOnStandaloneOrSynchronizedStreams(a1, v37, v33);
    }
  }

  else
  {
    atomic_fetch_add_explicit((v16 + 7604), 1u, memory_order_relaxed);
  }
}

uint64_t FigImageControl_FocusScan(uint64_t a1, int a2, int a3, int a4, int a5, unsigned int a6, unsigned int a7, int a8, unsigned __int8 a9, void *a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((a7 | a6) >= 0x100)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v18 = DerivedStorage;
    v19 = (DerivedStorage + 4096);
    if (a7 <= a6)
    {
      v20 = a6;
    }

    else
    {
      v20 = a7;
    }

    if (a7 >= a6)
    {
      a7 = a6;
    }

    if (*(DerivedStorage + 7612) != 2 || *(DerivedStorage + 7620) != a2 || *(DerivedStorage + 7624) != a3 || *(DerivedStorage + 7628) != a4 || *(DerivedStorage + 7632) != a5 || *(DerivedStorage + 7644) != a7 || *(DerivedStorage + 7648) != v20 || *(DerivedStorage + 7583) != a8 || *(DerivedStorage + 7584) != a9 || (v21 = v20, v22 = [*(DerivedStorage + 9064) isEqualToDictionary:a10], v20 = v21, (v22 & 1) == 0))
    {
      v23 = *(v18 + 521);
      if (v23 == 1)
      {
        v24 = *(v18 + 624);
      }

      else
      {
        v24 = 0;
      }

      v26 = *(v18 + 7596);
      if (!v26)
      {
        v23 = 0;
      }

      if (v26 == -1)
      {
        v23 = v24;
      }

      if (*(v18 + 621) == 1 && *(v18 + 656) < 120)
      {
        v27 = 0;
      }

      else
      {
        v27 = *(v18 + 622) ^ 1;
      }

      v28 = 0;
      if ((v27 & 1) == 0 && ((v23 ^ 1) & 1) == 0)
      {
        v28 = *(v18 + 623);
      }

      v29 = *(v18 + 7600);
      v30 = v29 == -1;
      v31 = (v29 == -1) & v28;
      *(v18 + 7612) = 2;
      *(v18 + 7620) = a2;
      *(v18 + 7624) = a3;
      v32 = v23 & (v29 != 0);
      *(v18 + 7628) = a4;
      if ((v27 | v30))
      {
        v33 = v31;
      }

      else
      {
        v33 = v32;
      }

      *(v18 + 7632) = a5;
      *(v18 + 7644) = a7;
      *(v18 + 7648) = v20;
      if (a7)
      {
        v34 = 0;
      }

      else
      {
        v34 = v20 == 255;
      }

      v35 = !v34;
      v19[3486] = v35;
      v19[3488] = a9;
      v19[3487] = a8;
      v19[3490] = v23 & 1;
      v19[3489] = v33;
      v19[3484] = 0;

      *(v18 + 9064) = a10;
      *(v18 + 7636) = 0x400000004;
    }

    return 0;
  }
}

uint64_t FigImageControl_ManualFocus(uint64_t a1, int a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3 || *(DerivedStorage + 7612) != 4 || *(DerivedStorage + 7652) != a2)
  {
    *(DerivedStorage + 7612) = 4;
    *(DerivedStorage + 7652) = a2;
    *(DerivedStorage + 7660) = a3;
    *(DerivedStorage + 7585) = 0;
    *(DerivedStorage + 7580) = 0;
  }

  return 0;
}

CFDictionaryRef FigImageControl_CopyPreFlashAFParameters(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 648))
  {
    return 0;
  }

  v3 = DerivedStorage;
  if (*(DerivedStorage + 7612) != 1)
  {
    return 0;
  }

  keys[3] = 0;
  v30 = 0;
  v4 = *(DerivedStorage + 6220);
  if (v4 >= 1)
  {
    v5 = *(DerivedStorage + 644);
    if (v5 < 1)
    {
      v5 = 85;
    }

    v6 = *(DerivedStorage + 652);
    if (v6)
    {
      LOBYTE(v6) = *(DerivedStorage + 7712) > *(DerivedStorage + 7840);
    }

    v7 = 0;
    v8 = DerivedStorage + 5896;
    v9 = *(DerivedStorage + 5896);
    v10 = -1;
    do
    {
      if (*(v8 + 8 * v7) < v9)
      {
        v9 = *(v8 + 8 * v7);
      }

      if (*(DerivedStorage + 6280) == *(v8 + 4 * v7 - 160))
      {
        v10 = v7;
      }

      ++v7;
    }

    while (v4 != v7);
    if ((v10 & 0x80000000) == 0 && !((100 * v9 >= *(v8 + 8 * v10) * v5) | v6 & 1))
    {
      v21 = (*(DerivedStorage + 656) * 3.0);
      os_unfair_lock_lock((DerivedStorage + 7576));
      v3[1902]._os_unfair_lock_opaque = v21;
      os_unfair_lock_unlock(v3 + 1894);
      return 0;
    }
  }

  if (*(DerivedStorage + 636) < 1)
  {
    return 0;
  }

  v25 = 0;
  v24 = 0;
  v23 = 0;
  getDefaultFocusScanRange(a1, &v25, &v24 + 1, &v24, &v23);
  v11 = computeAFSearchPositions(a1, v25, SHIDWORD(v24), v24, v23, v24 == v25);
  v12 = *MEMORY[0x1E695E480];
  v13 = MEMORY[0x1E695E9D8];
  v14 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  valuePtr = 2;
  v16 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, *off_1E798A1A8, v16);
  CFRelease(v16);
  valuePtr = 56;
  v17 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, *off_1E798A198, v17);
  CFRelease(v17);
  v18 = *MEMORY[0x1E695E4D0];
  CFDictionaryAddValue(Mutable, *off_1E798A1A0, *MEMORY[0x1E695E4D0]);
  CFDictionaryAddValue(Mutable, *off_1E798A190, v18);
  v19 = *off_1E798BC38;
  keys[0] = *off_1E798BC48;
  keys[1] = v19;
  values = v11;
  cf = Mutable;
  keys[2] = *off_1E798BC40;
  v29 = v18;
  v20 = CFDictionaryCreate(v12, keys, &values, 3, v13, v14);
  CFRelease(values);
  CFRelease(cf);
  sendFocusStartNotification(a1, 0);
  return v20;
}

uint64_t doLockFocusNow(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if ((*(result + 8297) & 1) == 0)
  {
    v3 = result;
    if (*(result + 515) == 1)
    {
      result = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BF98, 0);
    }

    *(v3 + 8297) = 1;
  }

  return result;
}

uint64_t FigImageControl_CurrentFocusRect(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *(DerivedStorage + 7612);
  if (v10 > 1)
  {
    if ((v10 - 2) < 2)
    {
      goto LABEL_3;
    }

    if (v10 != 4)
    {
      return 0;
    }

LABEL_10:
    *a3 = 0;
    *a2 = 0;
    *a5 = 0;
    *a4 = 0;
    return 0;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  if (v10 != 1)
  {
    return 0;
  }

  if (*(DerivedStorage + 7672) == 1)
  {
    *a2 = *(DerivedStorage + 7676);
    *a3 = *(DerivedStorage + 7680);
    *a4 = *(DerivedStorage + 7684);
    v11 = *(DerivedStorage + 7688);
    goto LABEL_4;
  }

LABEL_3:
  *a2 = *(DerivedStorage + 7620);
  *a3 = *(DerivedStorage + 7624);
  *a4 = *(DerivedStorage + 7628);
  v11 = *(DerivedStorage + 7632);
LABEL_4:
  *a5 = v11;
  return 0;
}

void setupFocusWindows(float a1, float a2, float a3, float a4, uint64_t a5, int a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = 0uLL;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  *v69 = 0u;
  v70 = 0u;
  v64 = 0;
  if ((*(DerivedStorage + 9085) & 1) == 0)
  {
    v13 = 0;
    v14 = *(DerivedStorage + 9048);
    *(DerivedStorage + 468) = 0uLL;
    *(DerivedStorage + 484) = 0uLL;
    *(DerivedStorage + 436) = 0uLL;
    *(DerivedStorage + 452) = 0uLL;
    v54 = DerivedStorage + 436;
    if (a6)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    *(DerivedStorage + 176) = v15;
    v16 = (v15 - 1);
    v53 = *off_1E798A280;
    v17 = *MEMORY[0x1E695E480];
    v52 = 1000 - v14;
    v51 = *off_1E798A2B0;
    v49 = *off_1E798A288;
    v50 = *off_1E798A2C0;
    v48 = *off_1E798A2B8;
    v47 = DerivedStorage + 180;
    v45 = *off_1E798A1D8;
    v46 = DerivedStorage + 244;
    v18 = DerivedStorage + 308;
    v42 = DerivedStorage;
    v19 = DerivedStorage + 372;
    v44 = *off_1E798A278;
    v43 = *MEMORY[0x1E695E4D0];
    while (1)
    {
      v63 = 0;
      v61 = v12;
      v62 = v12;
      *keys = v12;
      v59 = 0;
      v57 = v12;
      v58 = v12;
      *values = v12;
      if (v13)
      {
        v20 = v13 >= v16;
      }

      else
      {
        v20 = 0;
      }

      v21 = (5 * v13);
      if (v20)
      {
        v21 = a4 * 1400.0;
      }

      v22 = v21;
      v23 = v21;
      v24 = (v23 + (a4 * 1000.0));
      v67 = v24;
      v25 = (v23 + (a3 * 1000.0));
      v26 = (v22 >> 1);
      v27 = -(v26 - (a1 * 1000.0));
      v68 = v25;
      valuePtr = v27;
      v28 = -(v26 - (a2 * 1000.0));
      v65 = v28;
      if (v27 < 0)
      {
        LOWORD(v25) = v27 + v25;
        v68 = v25;
        valuePtr = 0;
        v27 = 0;
        if (v28 < 0)
        {
LABEL_38:
          LOWORD(v24) = v28 + v24;
          v67 = v24;
          v65 = 0;
          v28 = 0;
        }
      }

      else if (v28 < 0)
      {
        goto LABEL_38;
      }

      if (v27 + v25 >= 1001)
      {
        LOWORD(v25) = 1000 - v27;
        v68 = 1000 - v27;
      }

      if (v28 + v24 >= 1001)
      {
        LOWORD(v24) = 1000 - v28;
        v67 = 1000 - v28;
      }

      if (v14 > v25)
      {
        v68 = v14;
        v29 = (v27 - ((v14 - v25 + (((v14 - v25) & 0x8000) >> 15)) >> 1));
        v30 = v29 & ~(v29 >> 31);
        if (v52 < v30)
        {
          LOWORD(v30) = 1000 - v14;
        }

        valuePtr = v30;
      }

      if (v14 > v24)
      {
        v67 = v14;
        v31 = (v28 - ((v14 - v24 + (((v14 - v24) & 0x8000) >> 15)) >> 1));
        v32 = v31 & ~(v31 >> 31);
        if (v52 < v32)
        {
          LOWORD(v32) = 1000 - v14;
        }

        v65 = v32;
      }

      keys[0] = v53;
      values[0] = CFNumberCreate(v17, kCFNumberSInt16Type, &valuePtr);
      keys[1] = v51;
      values[1] = CFNumberCreate(v17, kCFNumberSInt16Type, &v65);
      *&v61 = v50;
      *&v57 = CFNumberCreate(v17, kCFNumberSInt16Type, &v68);
      *(&v61 + 1) = v49;
      *(&v57 + 1) = CFNumberCreate(v17, kCFNumberSInt16Type, &v67);
      v33 = ((a4 * 100000.0) / v67);
      v34 = v33 >> 2;
      if (a6)
      {
        v34 = 3;
      }

      if (v13 == v16)
      {
        v33 = v34;
      }

      v64 = v33;
      *&v62 = v48;
      *&v58 = CFNumberCreate(v17, kCFNumberIntType, &v64);
      v35 = 5;
      if (!v13 && a6)
      {
        v55 = 4096;
        *(&v62 + 1) = v45;
        v36 = CFNumberCreate(v17, kCFNumberSInt16Type, &v55);
        v63 = v44;
        *(&v58 + 1) = v36;
        v59 = v43;
        v35 = 7;
      }

      *(v47 + 4 * v13) = valuePtr;
      *(v46 + 4 * v13) = v65;
      *(v18 + 4 * v13) = v68;
      *(v19 + 4 * v13) = v67;
      *(v54 + 4 * v13) = v64;
      v37 = CFDictionaryCreate(v17, keys, values, v35, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v38 = 0;
      v69[v13] = v37;
      v64 = 0;
      do
      {
        CFRelease(values[v38]);
        v38 = v64 + 1;
        v64 = v38;
      }

      while (v38 < v35);
      ++v13;
      v12 = 0uLL;
      if (v13 == v15)
      {
        v39 = CFArrayCreate(v17, v69, v15, MEMORY[0x1E695E9C0]);
        v40 = 0;
        v64 = 0;
        do
        {
          CFRelease(v69[v40]);
          v40 = v64 + 1;
          v64 = v40;
        }

        while (v40 < v15);
        v41 = *(v42 + 9040);
        if (v41)
        {
          CFRelease(v41);
        }

        *(v42 + 9040) = v39;
        atomic_fetch_add_explicit((v42 + 7604), 1u, memory_order_relaxed);
        return;
      }
    }
  }
}

uint64_t doManualFocusNow(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  keys[0] = @"FocusMode";
  keys[1] = @"LensPosition";
  v8[0] = @"FixedFocusPoints";
  v8[1] = @"LensPositionInfinity";
  v5 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, v8, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = af_sbp_setPropertyOnStandaloneOrSynchronizedStreams(a1, *off_1E798BFF0, a2);
  *(DerivedStorage + 80) = 0;
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

float currentGain(const void *a1)
{
  v1 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  v8 = 256;
  valuePtr = 256;
  v7 = 256;
  Value = CFDictionaryGetValue(v1, *off_1E798B0B8);
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  }

  v3 = CFDictionaryGetValue(v1, *off_1E798B7D0);
  if (v3)
  {
    CFNumberGetValue(v3, kCFNumberIntType, &v8);
  }

  v4 = CFDictionaryGetValue(v1, *off_1E798B7B8);
  if (v4)
  {
    CFNumberGetValue(v4, kCFNumberIntType, &v7);
    v5 = v7;
  }

  else
  {
    v5 = 256.0;
  }

  return ((valuePtr * v8) * v5) * 0.000000059605;
}

void doPeakTrackingAutofocusNow(uint64_t a1, int a2)
{
  valuePtr = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 81) == 1)
  {
    doPeakTrackingAutofocusNow_cold_2();
    return;
  }

  v4 = DerivedStorage;
  storePreviousFocusState(DerivedStorage);
  *(v4 + 6220) = 0;
  *(v4 + 5496) = 0;
  *(v4 + 80) = 256;
  *(v4 + 8297) = 0;
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, *off_1E798BB48, v7);
  CFRelease(v7);
  sendFocusStartNotification(a1, 0);
  if (captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798C0D0, Mutable))
  {
    doPeakTrackingAutofocusNow_cold_1();
    if (!Mutable)
    {
      return;
    }
  }

  else if (!Mutable)
  {
    return;
  }

  CFRelease(Mutable);
}

uint64_t doAutofocusNow(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 81) == 1)
  {
    doAutofocusNow_cold_2();
    return 0;
  }

  else
  {
    v3 = DerivedStorage;
    storePreviousFocusState(DerivedStorage);
    *(v3 + 6220) = 0;
    *(v3 + 5496) = 0;
    *(v3 + 80) = 256;
    *(v3 + 8297) = 0;
    sendFocusStartNotification(a1, 0);
    v4 = captureStreamSetPropertyOnActivityScheduler(a1, *off_1E798BCB0, *MEMORY[0x1E695E4D0]);
    result = 0;
    if (v4)
    {
      doAutofocusNow_cold_1();
      return v4;
    }
  }

  return result;
}

uint64_t sisn_createSampleBufferProcessorFunction()
{
  v0 = FigSampleBufferProcessorCreateForCustom();
  if (v0)
  {
    sisn_createSampleBufferProcessorFunction_cold_1();
  }

  return v0;
}

uint64_t BWTrackEditListArrayForRegularTrackInIrisTrimmedMovie(void *a1)
{
  memset(&v10, 0, sizeof(v10));
  if (a1)
  {
    [a1 movieTrimStartTime];
    [a1 movieStartTime];
    CMTimeSubtract(&v4, &lhs, &rhs);
    lhs = v4;
    [a1 movieTrimEndTime];
    [a1 movieTrimStartTime];
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
    memset(&rhs, 0, sizeof(rhs));
    CMTimeSubtract(&v4, &lhs, &rhs);
    lhs = v4;
    memset(&v4, 0, sizeof(v4));
    memset(&rhs, 0, sizeof(rhs));
  }

  CMTimeSubtract(&v10, &v4, &rhs);
  v4 = lhs;
  v5 = v10;
  v6 = *MEMORY[0x1E6960C70];
  v7 = *(MEMORY[0x1E6960C70] + 16);
  v8 = v10;
  v3 = mfeu_figFormatWriterTrackEditSegmentDictionaryForTimeMapping(&v4);
  return [MEMORY[0x1E695DEC8] arrayWithObjects:&v3 count:1];
}

uint64_t mfeu_figFormatWriterTrackEditSegmentDictionaryForTimeMapping(CMTime *a1)
{
  v2 = *MEMORY[0x1E695E480];
  time = *a1;
  v3 = CMTimeCopyAsDictionary(&time, v2);
  time = a1[1];
  v4 = CMTimeCopyAsDictionary(&time, v2);
  time = a1[2];
  v5 = CMTimeCopyAsDictionary(&time, v2);
  time = a1[3];
  v6 = CMTimeCopyAsDictionary(&time, v2);
  v7 = *MEMORY[0x1E6971C80];
  v11[0] = *MEMORY[0x1E6971C98];
  v11[1] = v7;
  v12[0] = v3;
  v12[1] = v4;
  v8 = *MEMORY[0x1E6971CA8];
  v11[2] = *MEMORY[0x1E6971CB0];
  v11[3] = v8;
  v12[2] = v5;
  v12[3] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];

  return v9;
}

uint64_t BWTrackEditListArrayForStillImageDisplayTimeTrackInIrisTrimmedMovie(void *a1, int32_t a2)
{
  v17 = *MEMORY[0x1E6960C70];
  v4 = *(MEMORY[0x1E6960C70] + 16);
  *&v18[8] = v17;
  *v18 = v4;
  *&v18[24] = v4;
  CMTimeMake(&v19, 0, a2);
  if (a1)
  {
    [a1 stillImageCaptureTime];
    [a1 movieTrimStartTime];
  }

  else
  {
    lhs = 0uLL;
    *lhs_16 = 0;
    memset(&rhs, 0, sizeof(rhs));
  }

  CMTimeSubtract(&v16, &lhs, &rhs);
  CMTimeMake(&rhs, 0, a2);
  CMTimeMake(&v14, 1, a2);
  v13 = v16;
  v12 = v14;
  v10 = v19;
  *&lhs_16[16] = *&v18[16];
  lhs = v17;
  *lhs_16 = *v18;
  v11 = v16;
  v5 = mfeu_figFormatWriterTrackEditSegmentDictionaryForTimeMapping(&lhs);
  lhs = *&rhs.value;
  *lhs_16 = rhs.epoch;
  *&lhs_16[8] = v14;
  v10 = v13;
  v11 = v12;
  v7[0] = v5;
  v7[1] = mfeu_figFormatWriterTrackEditSegmentDictionaryForTimeMapping(&lhs);
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
}

uint64_t BWTrackEditListArrayForRegularTrackInIrisMovie(__int128 *a1, CMTime *a2)
{
  v4 = *a2;
  v5 = *a1;
  v6 = *(a1 + 2);
  v7 = *MEMORY[0x1E6960C70];
  v8 = *(MEMORY[0x1E6960C70] + 16);
  v10 = v6;
  v9 = v5;
  v3 = mfeu_figFormatWriterTrackEditSegmentDictionaryForTimeMapping(&v4);
  return [MEMORY[0x1E695DEC8] arrayWithObjects:&v3 count:1];
}

__CFString *FigCaptureVideoOrientationToString(unsigned int a1)
{
  if (a1 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7999188[a1];
  }
}

__CFString *FigCaptureVideoStabilizationStrengthToString(unsigned int a1)
{
  if (a1 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E79991B0[a1];
  }
}

uint64_t FigCaptureVideoStabilizationStrengthStringToEnum(void *a1)
{
  if ([a1 isEqualToString:@"None"])
  {
    return 0;
  }

  if ([a1 isEqualToString:@"Low"])
  {
    return 1;
  }

  if ([a1 isEqualToString:@"Medium"])
  {
    return 2;
  }

  if ([a1 isEqualToString:@"High"])
  {
    return 3;
  }

  if ([a1 isEqualToString:@"Ultra"])
  {
    return 4;
  }

  return 0;
}

uint64_t FigCaptureSmartFramingFieldOfViewStringFromType(int a1)
{
  if ((a1 - 1) > 3)
  {
    v1 = &FigCaptureSmartFramingFieldOfViewNone;
  }

  else
  {
    v1 = off_1E79991D8[a1 - 1];
  }

  return *v1;
}

void *FigCaptureGetCaptureDeviceCreateFunction()
{
  if (fcc_probeCameraDriverService_onceToken != -1)
  {
    FigCaptureGetCaptureDeviceCreateFunction_cold_1();
  }

  if (!fcc_probeCameraDriverService_cameraDriverInfo)
  {
    goto LABEL_7;
  }

  v0 = *(fcc_probeCameraDriverService_cameraDriverInfo + 16);
  v1 = dlopen(*(fcc_probeCameraDriverService_cameraDriverInfo + 8), 4);
  if (!v1 || (result = dlsym(v1, v0)) == 0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_7:
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }

  return result;
}

uint64_t FigCaptureGetCameraDriverService()
{
  if (fcc_probeCameraDriverService_onceToken != -1)
  {
    FigCaptureGetCaptureDeviceCreateFunction_cold_1();
  }

  if (!fcc_probeCameraDriverService_cameraDriverInfo)
  {
    return 0;
  }

  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceMatching(*fcc_probeCameraDriverService_cameraDriverInfo);

  return IOServiceGetMatchingService(v0, v1);
}

uint64_t FigCaptureReleaseCameraDriverService(uint64_t object)
{
  if (object)
  {
    return IOObjectRelease(object);
  }

  return object;
}

uint64_t FigCaptureGetCameraDriverServiceName()
{
  if (fcc_probeCameraDriverService_onceToken != -1)
  {
    FigCaptureGetCaptureDeviceCreateFunction_cold_1();
  }

  if (!fcc_probeCameraDriverService_cameraDriverInfo)
  {
    return 0;
  }

  v0 = MEMORY[0x1E696AEC0];
  v1 = *fcc_probeCameraDriverService_cameraDriverInfo;

  return [v0 stringWithUTF8String:v1];
}

uint64_t FigCaptureTCCAccessPreflight()
{
  tcc_service_singleton_for_CF_name();
  tcc_credential_singleton_for_self();
  v0 = tcc_message_options_create();
  tcc_message_options_set_reply_handler_policy();
  tcc_message_options_set_request_prompt_policy();
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  tcc_server_message_request_authorization();

  v1 = v6[3];
  if (v1 >= 4)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v2 = 1;
  }

  else
  {
    v2 = dword_1AD056050[v1];
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

void FigCaptureTCCAccessRequest()
{
  tcc_service_singleton_for_CF_name();
  tcc_credential_singleton_for_self();
  v0 = tcc_message_options_create();
  tcc_message_options_set_request_prompt_policy();
  tcc_server_message_request_authorization();
}

uint64_t __FigCaptureTCCAccessRequest_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    goto LABEL_12;
  }

  authorization_right = tcc_authorization_record_get_authorization_right();
  if (authorization_right < 2 || authorization_right == 3)
  {
    v5 = *(*(a1 + 32) + 16);
    goto LABEL_9;
  }

  if (authorization_right != 2)
  {
LABEL_12:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return (*(*(a1 + 32) + 16))(*(a1 + 32), 0, v8, v9, v10);
  }

  v5 = *(*(a1 + 32) + 16);
LABEL_9:

  return v5();
}

uint64_t FigCaptureFrontDepthDataToRGBRotationAngle()
{
  if (BWDeviceModelHasCharleston())
  {
    result = 0;
    FigCaptureFrontDepthDataToRGBRotationAngle_sFrontDepthDataToRGBRotationAngle = 1;
  }

  else if (FigCaptureFrontDepthDataToRGBRotationAngle_sFrontDepthDataToRGBRotationAngle)
  {
    return 0;
  }

  else
  {
    return 90;
  }

  return result;
}

void __fcc_probeCameraDriverService_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  refCon = dispatch_queue_create("ProbeCameraDriverService", 0);
  v16 = dispatch_semaphore_create(0);
  *v17 = 0;
  v0 = IONotificationPortCreate(*MEMORY[0x1E696CD60]);
  IONotificationPortSetDispatchQueue(v0, refCon);
  v1 = 0;
  v13[0] = 0;
  v13[1] = 0;
  v2 = &sCameraDriverInfo;
  v14 = 0;
  do
  {
    v3 = IOServiceMatching(*v2);
    if (IOServiceAddMatchingNotification(v0, "IOServiceFirstMatch", v3, fcc_cameraDriverServiceMatchingCallback, &refCon, (v13 + v1)))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    fcc_cameraDriverServiceMatchingCallback(&refCon, *(v13 + v1));
    v2 += 3;
    v1 += 4;
  }

  while (v1 != 20);
  v5 = v16;
  v6 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = 0;
  v9 = atomic_load(v17);
  v10 = &sCameraDriverInfo;
  do
  {
    v11 = *(v13 + v8);
    if (v11 == v9)
    {
      fcc_probeCameraDriverService_cameraDriverInfo = v10;
      v11 = v9;
      if (dword_1EB58DFA0)
      {
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v11 = *(v13 + v8);
      }
    }

    IOObjectRelease(v11);
    v10 += 3;
    v8 += 4;
  }

  while (v8 != 20);
  IONotificationPortDestroy(v0);
  dispatch_release(v16);
  dispatch_release(refCon);
}

uint64_t fcc_cameraDriverServiceMatchingCallback(uint64_t a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      v6 = 0;
      atomic_compare_exchange_strong((a1 + 16), &v6, iterator);
      if (v6)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      else
      {
        dispatch_semaphore_signal(*(a1 + 8));
      }

      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void ubn_mergeInferenceMetadata(const void *a1, const void *a2, const void *a3)
{
  v5 = CMGetAttachment(a1, @"Inferences", 0);
  v6 = MEMORY[0x1E695E0F8];
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  v8 = CMGetAttachment(a2, @"Inferences", 0);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  v10 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v9];
  [v10 addEntriesFromDictionary:v7];

  CMSetAttachment(a3, @"Inferences", v10, 1u);
}

uint64_t ubn_mergeInferenceAttachedMedia(uint64_t a1, void *a2, const void *a3)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [a2 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [BWInferenceEngineController inferenceMaskSbufFromSbuf:a1 attachedMediaKey:v10];
        if (v11)
        {
          BWSampleBufferSetAttachedMedia(a3, v10, v11);
        }

        ++v9;
      }

      while (v7 != v9);
      result = [a2 countByEnumeratingWithState:&v13 objects:v12 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

void sub_1ACB44F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB45234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB45F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __ubn_dispatch_sync_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __ubn_dispatch_async_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __ubn_dispatch_group_async_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

BOOL OUTLINED_FUNCTION_91_6(NSObject *a1)
{
  v3 = *(v1 - 117);

  return os_log_type_enabled(a1, v3);
}

uint64_t OUTLINED_FUNCTION_151(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return [v67 countByEnumeratingWithState:v68 - 208 objects:&a67 count:16];
}

uint64_t OUTLINED_FUNCTION_152(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{

  return [v39 countByEnumeratingWithState:v40 - 208 objects:&a39 count:16];
}

uint64_t OUTLINED_FUNCTION_154()
{
  v2 = *(v0 + 40);

  return [v2 stillImageSettings];
}

uint64_t cimn_registerLivePhotosMetadata_once()
{
  v1 = *MEMORY[0x1E6960260];
  CMMetadataDataTypeRegistryRegisterDataType(@"com.apple.quicktime.com.apple.quicktime.live-photo-info", @"Live Photos Private Metadata", [MEMORY[0x1E695DEC8] arrayWithObjects:&v1 count:1]);
  return FigLivePhotoMetadataCreateSoftwareVersionSetupDataWithAtomHeader(&sLivePhotoMetadataSoftwareVersionSetupDataWithAtomHeader);
}

id cimn_createCorrectedDetectedObjects(void *a1, _DWORD *a2, double a3, double a4, double a5, double a6)
{
  if (!a1)
  {
    v15 = 0;
    *a2 = 0;
    return v15;
  }

  v11 = *off_1E798ACE8;
  v12 = [a1 objectForKeyedSubscript:*off_1E798ACE8];
  *a2 = [v12 count];
  if (![v12 count])
  {
    return 0;
  }

  if (a5 != 1.0 || a6 != 1.0)
  {
    v14 = BWCreateCorrectedDetectedObjectsArray(v12, a3, a4, a5, a6, a3, a4, a5, a6);
    v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:a1];
    *a2 = [v14 count];
    [v15 setObject:v14 forKeyedSubscript:v11];

    return v15;
  }

  return a1;
}

void sub_1ACB4E0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB4E4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose((v49 - 256), 8);
  _Block_object_dispose((v49 - 208), 8);
  _Block_object_dispose((v49 - 176), 8);
  _Block_object_dispose((v49 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1ACB4FB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Block_object_dispose((v11 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1ACB50B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1ACB51098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB51E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB52000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB52138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB52350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB52474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB5255C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB52734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB52854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB52A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB52B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_98_6()
{

  return [v0 isEqualToString:v1];
}

uint64_t mv2ip_inputAttachedMediaKeyForMattingOutputType(int a1)
{
  result = 0;
  if (a1 > 127)
  {
    if (a1 > 2047)
    {
      switch(a1)
      {
        case 0x800:
          return 0x1F219E870;
        case 0x1000:
          return 0x1F219E890;
        case 0x2000:
          return 0x1F219E8B0;
      }
    }

    else
    {
      switch(a1)
      {
        case 128:
          return 0x1F219E750;
        case 512:
          return 0x1F219E850;
        case 1024:
          return 0x1F219E830;
      }
    }
  }

  else
  {
    if (a1 <= 15)
    {
      if (a1 != 2)
      {
        if (a1 == 4)
        {
          return 0x1F219E770;
        }

        if (a1 == 8)
        {
          return 0x1F219E7B0;
        }

        return result;
      }

      return 0x1F219E750;
    }

    switch(a1)
    {
      case 16:
        return 0x1F219E7D0;
      case 32:
        return 0x1F219E7F0;
      case 64:
        return 0x1F219E810;
    }
  }

  return result;
}

__CFString *mv2ip_outputAttachedMediaKeyForMattingOutputType(int a1)
{
  result = 0;
  if (a1 <= 63)
  {
    if (a1 > 7)
    {
      switch(a1)
      {
        case 8:
          return @"PersonSemanticsSkin";
        case 16:
          return @"PersonSemanticsTeeth";
        case 32:
          return @"PersonSemanticsGlasses";
      }
    }

    else
    {
      switch(a1)
      {
        case 1:
          return @"RefinedDepth";
        case 2:
          return @"PersonSegmentationMask";
        case 4:
          return @"PersonSemanticsHair";
      }
    }
  }

  else if (a1 <= 1023)
  {
    switch(a1)
    {
      case 64:
        return @"PersonSemanticsSky";
      case 128:
        return @"LowResPersonSegmentationMaskClone";
      case 512:
        return @"PersonSemanticsFoliage";
    }
  }

  else if (a1 > 4095)
  {
    if (a1 == 4096)
    {
      return @"PersonSemanticsCat";
    }

    else if (a1 == 0x2000)
    {
      return @"PersonSemanticsDog";
    }
  }

  else if (a1 == 1024)
  {
    return @"PersonSemanticsWater";
  }

  else if (a1 == 2048)
  {
    return @"PersonSemanticsBeard";
  }

  return result;
}

id fcdlm_createLayoutMonitorForMainDisplay(uint64_t a1)
{
  v2 = [MEMORY[0x1E699FAF8] configurationForDefaultMainDisplayMonitor];
  [v2 setNeedsUserInteractivePriority:1];
  [v2 setTransitionHandler:a1];
  v3 = [MEMORY[0x1E699FAE0] monitorWithConfiguration:v2];

  return v3;
}

id fcdlm_createLayoutMonitorForExternalDisplay(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E699FB10]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [v2 connectedIdentities];
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v21 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if ([*(*(&v20 + 1) + 8 * v7) isExternal])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v20 objects:v19 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    v8 = SBSCreateLayoutServiceEndpointForExternalDisplay();
    if (!v8)
    {
      goto LABEL_13;
    }

    v9 = v8;
    if (dword_1ED8440F0)
    {
      v18 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v13 = [MEMORY[0x1E699FAF8] configurationWithEndpoint:{v9, v15, v16}];
    [v13 setNeedsUserInteractivePriority:1];
    [v13 setTransitionHandler:a1];
    v12 = [MEMORY[0x1E699FAE0] monitorWithConfiguration:v13];
  }

  else
  {
LABEL_13:
    if (dword_1ED8440F0)
    {
      v18 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v12 = 0;
  }

  [v2 invalidate];

  return v12;
}

id fcdlm_createLayoutMonitorForContinuityDisplay(uint64_t a1)
{
  v2 = [MEMORY[0x1E699FAF8] configurationForContinuityDisplay];
  [v2 setNeedsUserInteractivePriority:1];
  [v2 setTransitionHandler:a1];
  v3 = [MEMORY[0x1E699FAE0] monitorWithConfiguration:v2];

  return v3;
}

void sub_1ACB55168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

float *ColorsWheelContext_create(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, float a9)
{
  v17 = malloc_type_malloc(0x18uLL, 0x10200405AF6BDC9uLL);
  if (a2 < 0)
  {
    ColorsWheelContext_create_cold_13();
  }

  if (a3 < 0)
  {
    ColorsWheelContext_create_cold_12();
  }

  if (a4 < 0)
  {
    ColorsWheelContext_create_cold_11();
  }

  if (a5 < 0)
  {
    ColorsWheelContext_create_cold_10();
  }

  if (a6 < 0)
  {
    ColorsWheelContext_create_cold_9();
  }

  if (a7 < 0)
  {
    ColorsWheelContext_create_cold_8();
  }

  v18 = a2 * a1;
  v19 = (a2 * a1 / 100);
  v20 = a3 * a1;
  v21 = a3 * a1 / 100;
  v110[0] = v19;
  v110[1] = v21;
  v22 = a4 * a1;
  v23 = a4 * a1 / 100;
  v24 = a5 * a1;
  v25 = a5 * a1 / 100;
  v110[2] = v23;
  v110[3] = v25;
  v26 = a6 * a1;
  v27 = a6 * a1 / 100;
  v28 = a7 * a1;
  v29 = a7 * a1 / 100;
  v110[4] = v27;
  v110[5] = v29;
  v30 = v21 + v19 + v23 + v25;
  v31 = v30 + v27 + v29;
  if (v31 <= 0)
  {
    ColorsWheelContext_create_cold_7();
  }

  v32 = v17;
  v107 = v24;
  v108 = v22;
  v105 = v28;
  v106 = v26;
  *(v17 + 2) = v31;
  v33 = v30 + v27 + v29;
  *v17 = malloc_type_malloc(3 * v33, 0x100004033FC2DF1uLL);
  *(v32 + 3) = a8;
  if (v18 < 100)
  {
    v39 = 0;
    v37 = v33;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v36 = 1;
    v37 = v33;
    do
    {
      if (v35 >= *(v32 + 2))
      {
        ColorsWheelContext_create_cold_1();
      }

      ++v35;
      v38 = (*v32 + v36);
      *(v38 - 1) = 0;
      *v38 = v34 / v19;
      v38[1] = -1;
      v36 += 3;
      v34 += 255;
    }

    while (v19 != v35);
    v39 = v18 / 100;
  }

  if (v20 >= 100)
  {
    v40 = 0;
    v41 = v39;
    v42 = v20 / 100;
    v43 = 3 * v39;
    do
    {
      if (v41 >= *(v32 + 2))
      {
        ColorsWheelContext_create_cold_1();
      }

      ++v41;
      v44 = *v32 + v43;
      *v44 = -256;
      *(v44 + 2) = ~(v40 / v21);
      v43 += 3;
      v40 += 255;
      --v42;
    }

    while (v42);
    v39 = v41;
  }

  if (v108 >= 100)
  {
    v45 = 0;
    v46 = v39;
    v47 = 3 * v39;
    v48 = v23;
    do
    {
      if (v46 >= *(v32 + 2))
      {
        ColorsWheelContext_create_cold_1();
      }

      ++v46;
      v49 = *v32 + v47;
      *v49 = v45 / v23;
      *(v49 + 1) = 255;
      v47 += 3;
      v45 += 255;
      --v48;
    }

    while (v48);
    v39 = v46;
  }

  if (v107 >= 100)
  {
    v50 = 0;
    v51 = v39;
    v52 = 3 * v39;
    v53 = v25;
    do
    {
      if (v51 >= *(v32 + 2))
      {
        ColorsWheelContext_create_cold_1();
      }

      ++v51;
      v54 = *v32 + v52;
      *v54 = -1;
      *(v54 + 1) = ~(v50 / v25);
      v52 += 3;
      v50 += 255;
      --v53;
    }

    while (v53);
    v39 = v51;
  }

  if (v106 >= 100)
  {
    v55 = 0;
    v56 = v39;
    v57 = 3 * v39;
    v58 = v27;
    do
    {
      if (v56 >= *(v32 + 2))
      {
        ColorsWheelContext_create_cold_1();
      }

      ++v56;
      v59 = *v32 + v57;
      *v59 = 255;
      *(v59 + 2) = v55 / v27;
      v57 += 3;
      v55 += 255;
      --v58;
    }

    while (v58);
    v39 = v56;
  }

  if (v105 >= 100)
  {
    v60 = 0;
    v61 = v39;
    v62 = 3 * v39;
    v63 = v29;
    do
    {
      if (v61 >= *(v32 + 2))
      {
        ColorsWheelContext_create_cold_1();
      }

      ++v61;
      v64 = *v32 + v62;
      *v64 = ~(v60 / v29);
      *(v64 + 1) = -256;
      v62 += 3;
      v60 += 255;
      --v63;
    }

    while (v63);
  }

  if (a8 < 0 && v37 != 1)
  {
    v65 = 0;
    LODWORD(v66) = v37 >> 1;
    if (v37 >> 1 <= 1)
    {
      v66 = 1;
    }

    else
    {
      v66 = v66;
    }

    v67 = v66 + 2 * v66;
    v68 = 3 * v37 - 3;
    do
    {
      v69 = (*v32 + v65);
      v70 = *v32 + v68;
      v71 = *(v69 + 2);
      v72 = *v69;
      v73 = *(v70 + 2);
      *v69 = *v70;
      *(v69 + 2) = v73;
      *v70 = v72;
      *(v70 + 2) = v71;
      v65 += 3;
      v68 -= 3;
    }

    while (v67 != v65);
  }

  if (a8 >= 0)
  {
    v74 = a8;
  }

  else
  {
    v74 = -a8;
  }

  v75 = v74 - 1;
  LODWORD(v76) = 6 - v74;
  if (a8 < 0)
  {
    v76 = v76;
  }

  else
  {
    v76 = v75;
  }

  if (v76 >= 1)
  {
    v77 = 0;
    v78 = v110;
    do
    {
      v79 = v77;
      v81 = *v78++;
      v80 = v81;
      v77 += v81;
      --v76;
    }

    while (v76);
    if (v77 > 0)
    {
      v82 = *v32;
      v83 = v37 - 1;
      if (v77 != 1)
      {
        v84 = 0;
        v85 = (v82 + 3 * (v77 - 1));
        v86 = v79 + v80 - 2;
        v87 = *v32;
        do
        {
          v88 = *(v87 + 2);
          v89 = *v87;
          v90 = *(v85 + 2);
          *v87 = *v85;
          *(v87 + 2) = v90;
          *v85 = v89;
          *(v85 + 2) = v88;
          v87 = (v87 + 3);
          v85 = (v85 - 3);
          v91 = ++v84 < v86--;
        }

        while (v91);
      }

      if (v77 < v83)
      {
        v92 = (v82 + 3 * v83);
        v93 = (v82 + 3 * v77);
        v94 = v19 + v21 + v23 + v25 + v27 + v29 - 2;
        do
        {
          v95 = *(v93 + 2);
          v96 = *v93;
          v97 = *(v92 + 2);
          *v93 = *v92;
          *(v93 + 2) = v97;
          *v92 = v96;
          *(v92 + 2) = v95;
          v93 = (v93 + 3);
          v92 = (v92 - 3);
          v91 = ++v77 < v94--;
        }

        while (v91);
      }

      if (v37 != 1)
      {
        v98 = 0;
        v99 = (v82 + 3 * (v37 - 1));
        v100 = v19 + v21 + v23 + v25 + v27 + v29 - 2;
        do
        {
          v101 = *(v82 + 2);
          v102 = *v82;
          v103 = *(v99 + 2);
          *v82 = *v99;
          *(v82 + 2) = v103;
          *v99 = v102;
          *(v99 + 2) = v101;
          v82 = (v82 + 3);
          v99 = (v99 - 3);
          v91 = ++v98 < v100--;
        }

        while (v91);
      }
    }
  }

  v32[4] = a9;
  return v32;
}

void ColorsWheelContext_destroy(void ***a1)
{
  if (a1)
  {
    free(**a1);
    free(*a1);
    *a1 = 0;
  }
}

uint64_t ColorsWheelContext_computeColorComponent(uint64_t a1, int a2, float a3, double a4, double a5, float a6)
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    ColorsWheelContext_computeColorComponent_cold_1();
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v8 != 0.0)
  {
    v9 = v8 / 6.28318531;
    a3 = v9 + a3;
    v10 = 1.0;
    if (a3 < 0.0)
    {
LABEL_9:
      a3 = a3 + v10;
      goto LABEL_10;
    }

    if (a3 > 1.0)
    {
      v10 = -1.0;
      goto LABEL_9;
    }
  }

LABEL_10:
  v11 = a3 * (v7 - 1);
  v12 = v11;
  v13 = (v11 + 1) % v7;
  *&v14 = v11;
  v15 = v11 - *&v14;
  LOBYTE(v14) = *(*a1 + 3 * v12 + a2);
  LOBYTE(a6) = *(*a1 + 3 * v13 + a2);
  return (((v15 * (LODWORD(a6) / 255.0)) + ((1.0 - v15) * (v14 / 255.0))) * 255.0);
}

uint64_t ColorsWheelContext_drawMatrix_f32(uint64_t result, int a2, int a3, float *a4, int a5, int a6, uint64_t a7, int a8, double a9, double a10, double a11, float a12, int a13)
{
  if (a3 >= 1)
  {
    v13 = a4;
    v14 = result;
    v15 = 0;
    v16 = a6;
    v17 = 1.1755e-38;
    v18 = 3.4028e38;
    v19 = a4;
    v20 = a2;
    do
    {
      v21 = a2;
      v22 = v19;
      if (a2 >= 1)
      {
        do
        {
          *&a10 = *v22;
          if (*v22 < v18)
          {
            v18 = *v22;
          }

          if (*&a10 > v17)
          {
            v17 = *v22;
          }

          v22 = (v22 + a6);
          --v21;
        }

        while (v21);
      }

      ++v15;
      v19 = (v19 + a5);
    }

    while (v15 != a3);
    v23 = 0;
    v24 = v17 - v18;
    v35 = a8;
    v25 = (a7 + 1);
    v36 = a3;
    v37 = a5;
    do
    {
      v26 = v13;
      v27 = v25;
      if (a2 >= 1)
      {
        do
        {
          v28 = fmaxf(fminf((*v26 - v18) / v24, 1.0), 0.0);
          *(v27 - 1) = ColorsWheelContext_computeColorComponent(v14, 0, v28, a10, a11, a12);
          *v27 = ColorsWheelContext_computeColorComponent(v14, 1, v28, v29, v30, v31);
          result = ColorsWheelContext_computeColorComponent(v14, 2, v28, v32, v33, v34);
          v27[1] = result;
          v27[2] = -1;
          v27 += a13;
          v26 = (v26 + v16);
          --v20;
        }

        while (v20);
      }

      ++v23;
      v20 = a2;
      v25 += v35;
      v13 = (v13 + v37);
    }

    while (v23 != v36);
  }

  return result;
}

uint64_t FigCaptureUpdateToDisplayCoordinates(void *a1)
{
  result = FigCFDictionaryGetCGRectIfPresent();
  if (result)
  {
    [a1 warpCGRect:{0.0, 0.0, 0.0, 0.0}];
    return FigCFDictionarySetCGRect();
  }

  return result;
}

double ss_conformRectForMSR420vfPixelBuffer(__CVBuffer *a1, int a2, double a3, double a4, double a5, double a6)
{
  v7 = psn_pixelBufferRect(a1);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (a2)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  v14 = v7;
  v16 = FigCaptureCeilFloatToMultipleOf(v15, v14);
  v17 = v9;
  v18 = FigCaptureCeilFloatToMultipleOf(v15, v17);
  v19 = v11;
  v20 = FigCaptureFloorFloatToMultipleOf(2, v19);
  v21 = v13;
  v22 = FigCaptureFloorFloatToMultipleOf(2, v21);
  v41.origin.x = v16;
  v36 = v18;
  v41.origin.y = v18;
  v41.size.width = v20;
  v41.size.height = v22;
  MaxX = CGRectGetMaxX(v41);
  v42.origin.x = v7;
  v42.origin.y = v9;
  v42.size.width = v11;
  v42.size.height = v13;
  if (MaxX > CGRectGetMaxX(v42))
  {
    v43.origin.x = v7;
    v43.origin.y = v9;
    v43.size.width = v11;
    v43.size.height = v13;
    v20 = CGRectGetMaxX(v43) - v16;
  }

  v44.origin.x = v16;
  v44.origin.y = v36;
  v44.size.width = v20;
  v44.size.height = v22;
  MaxY = CGRectGetMaxY(v44);
  v45.origin.x = v7;
  v45.origin.y = v9;
  v45.size.width = v11;
  v45.size.height = v13;
  if (MaxY > CGRectGetMaxY(v45))
  {
    v46.origin.x = v7;
    v46.origin.y = v9;
    v46.size.width = v11;
    v46.size.height = v13;
    v22 = CGRectGetMaxY(v46) - v36;
  }

  v25 = a5;
  v26 = FigCaptureRoundFloatToMultipleOf(2, v25);
  v27 = a6;
  FigCaptureRoundFloatToMultipleOf(2, v27);
  if (v20 >= v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = v20;
  }

  v29 = fmax(v28, 0.0);
  v30 = a3;
  v31 = FigCaptureRoundFloatToMultipleOf(v15, v30);
  v32 = a4;
  FigCaptureRoundFloatToMultipleOf(v15, v32);
  v47.origin.x = v16;
  v47.origin.y = v36;
  v47.size.width = v20;
  v47.size.height = v22;
  MinX = CGRectGetMinX(v47);
  v48.origin.x = v16;
  v48.origin.y = v36;
  v48.size.width = v20;
  v48.size.height = v22;
  v34 = CGRectGetMaxX(v48) - v29;
  if (v34 >= v31)
  {
    v34 = v31;
  }

  if (MinX < v34)
  {
    MinX = v34;
  }

  v49.origin.x = v16;
  v49.origin.y = v36;
  v49.size.width = v20;
  v49.size.height = v22;
  CGRectGetMinY(v49);
  v50.origin.x = v16;
  v50.origin.y = v36;
  v50.size.width = v20;
  v50.size.height = v22;
  CGRectGetMaxY(v50);
  return MinX;
}

uint64_t FigCaptureDeferredPhotoProcessorServerStart()
{
  v3[0] = 1;
  v3[1] = captureDeferredPhotoProcessorServer_handleReplyMessage;
  v4 = 0u;
  v5 = 0u;
  if (captureDeferredPhotoProcessorServer_initializeStatics_onceToken != -1)
  {
    FigCaptureDeferredPhotoProcessorServerStart_cold_1();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  v1 = FigCaptureXPCServerStart("com.apple.coremedia.deferredmedia.photoprocessor", v3, Mutable);
  if (v1)
  {
    FigCaptureDeferredPhotoProcessorServerStart_cold_2();
    if (!Mutable)
    {
      return v1;
    }

    goto LABEL_5;
  }

  if (Mutable)
  {
LABEL_5:
    CFRelease(Mutable);
  }

  return v1;
}

uint64_t captureDeferredPhotoProcessorServer_handleReplyMessage()
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v1 = OpCode;
    captureDeferredPhotoProcessorServer_handleReplyMessage_cold_1();
  }

  else
  {
    v1 = 4294966630;
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  return v1;
}

uint64_t captureDeferredPhotoProcessorServer_getAndRetainProcessorObjectFromMessage(int a1, xpc_object_t xdict)
{
  xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  v2 = FigXPCServerLookupAndRetainAssociatedObject();
  if (v2)
  {
    v4 = v2;
    captureDeferredPhotoProcessorServer_getAndRetainProcessorObjectFromMessage_cold_1();
  }

  else
  {
    captureDeferredPhotoProcessorServer_getAndRetainProcessorObjectFromMessage_cold_3();
    return 4294954513;
  }

  return v4;
}

void captureDeferredPhotoProcessorServer_servedObjectRefconDestructor(CFTypeRef *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v3)
      {
        v3(v2);
      }

      CFRelease(*a1);
    }

    free(a1);
  }
}

uint64_t captureDeferredPhotoProcessorServer_serializeNotification(int a1, int a2, int a3, CFDictionaryRef theDict, uint64_t a5, uint64_t a6)
{
  cf = 0;
  if (!theDict)
  {
    return 0;
  }

  if (captureDeferredPhotoProcessor_createSerializedNotification(a3, theDict, a6, &cf))
  {
    captureDeferredPhotoProcessorServer_serializeNotification_cold_1();
  }

  else
  {
    if (!FigXPCMessageSetCFDictionary())
    {
      v6 = 2;
      goto LABEL_5;
    }

    captureDeferredPhotoProcessorServer_serializeNotification_cold_2();
  }

  v6 = 1;
LABEL_5:
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t clspm_registerForNotifyName(const char *a1, dispatch_queue_t queue, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __clspm_registerForNotifyName_block_invoke;
  v8[3] = &unk_1E79997E8;
  v8[4] = a3;
  v8[5] = &v9;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __clspm_registerForNotifyName_block_invoke_2;
  handler[3] = &unk_1E7999810;
  handler[4] = v8;
  if (!notify_register_dispatch(a1, &v12, queue, handler))
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __clspm_registerForNotifyName_block_invoke_3;
    v6[3] = &unk_1E798FEA0;
    v6[4] = v8;
    dispatch_async(queue, v6);
  }

  v4 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t __clspm_registerForNotifyName_block_invoke(uint64_t a1)
{
  state64 = 0;
  notify_get_state(*(*(*(a1 + 40) + 8) + 24), &state64);
  return (*(*(a1 + 32) + 16))();
}

uint64_t FigCaptureReferenceFrameSelection(const __CFArray *a1, int *a2)
{
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  *a2 = -1;
  if (!a1)
  {
    FigCaptureReferenceFrameSelection_cold_4(&v19);
    return v19;
  }

  Count = CFArrayGetCount(a1);
  if (Count <= 0)
  {
    FigCaptureReferenceFrameSelection_cold_3(&v19);
    return v19;
  }

  if (Count > 7)
  {
    FigCaptureReferenceFrameSelection_cold_2(&v19);
    return v19;
  }

  v5 = 0;
  v6 = *off_1E798B1A0;
  v7 = Count & 7;
  v8 = v17;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v5);
    if (ValueAtIndex)
    {
      Value = CFDictionaryGetValue(ValueAtIndex, v6);
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberSInt64Type, v8);
      }
    }

    ++v5;
    v8 = (v8 + 8);
  }

  while (v7 != v5);
  v11 = 0;
  v12 = 0x8000000000000000;
  v13 = -1;
  do
  {
    v14 = *(v17 + v11);
    v15 = v12 < v14;
    if (v12 <= v14)
    {
      v12 = *(v17 + v11);
    }

    if (v15)
    {
      v13 = v11;
    }

    ++v11;
  }

  while (v7 != v11);
  *a2 = v13;
  if (v13 == -1)
  {
    FigCaptureReferenceFrameSelection_cold_1(&v19);
    return v19;
  }

  return 0;
}

uint64_t FigCaptureFrameMetadataIsUsableForPTSBasedReferenceFrameSelection(CFArrayRef theArray, int *a2)
{
  if (checkFigCaptureSampleBufferProcessorCommonTrace_checkFigCaptureSampleBufferProcessorCommonTraceOnceToken == -1)
  {
    if (!theArray)
    {
      goto LABEL_27;
    }
  }

  else
  {
    FigCaptureFrameMetadataIsUsableForPTSBasedReferenceFrameSelection_cold_1();
    if (!theArray)
    {
      goto LABEL_27;
    }
  }

  if (CFArrayGetCount(theArray) >= 1)
  {
    v12 = a2;
    key = *off_1E798B6B0;
    v14 = *off_1E798B6C0;
    v17 = *off_1E798B540;
    v16 = *off_1E798B300;
    v15 = *off_1E798B320;
    v4 = *off_1E798B4A8;
    v13 = *off_1E798B208;
    v5 = *off_1E798B2A8;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    if (CFDictionaryGetValue(ValueAtIndex, key) && (v7 = CFDictionaryGetValue(ValueAtIndex, v14)) != 0 && (LODWORD(valuePtr) = 0, CFNumberGetValue(v7, kCFNumberSInt32Type, &valuePtr), (valuePtr & 0x11) != 1))
    {
      v10 = 2;
    }

    else
    {
      if (CFDictionaryGetValue(ValueAtIndex, v17))
      {
        if (CFDictionaryGetValue(ValueAtIndex, v16))
        {
          if (CFDictionaryGetValue(ValueAtIndex, v15))
          {
            v20 = 0;
            Value = CFDictionaryGetValue(ValueAtIndex, v4);
            if (Value || (Value = CFDictionaryGetValue(ValueAtIndex, v13)) != 0)
            {
              CFNumberGetValue(Value, kCFNumberSInt32Type, &v20);
              valuePtr = 0;
              v9 = CFDictionaryGetValue(ValueAtIndex, v5);
              if (v9)
              {
                CFNumberGetValue(v9, kCFNumberDoubleType, &valuePtr);
                FigCaptureComputeImageGainFromMetadata();
              }

              FigCaptureFrameMetadataIsUsableForPTSBasedReferenceFrameSelection_cold_3();
            }

            else
            {
              FigCaptureFrameMetadataIsUsableForPTSBasedReferenceFrameSelection_cold_4();
            }
          }

          else
          {
            FigCaptureFrameMetadataIsUsableForPTSBasedReferenceFrameSelection_cold_5();
          }
        }

        else
        {
          FigCaptureFrameMetadataIsUsableForPTSBasedReferenceFrameSelection_cold_6();
        }
      }

      else
      {
        FigCaptureFrameMetadataIsUsableForPTSBasedReferenceFrameSelection_cold_7();
      }

      v10 = 1;
    }

    a2 = v12;
    if (v12)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

LABEL_27:
  FigCaptureFrameMetadataIsUsableForPTSBasedReferenceFrameSelection_cold_8();
  v10 = 0;
  if (a2)
  {
LABEL_16:
    *a2 = v10;
  }

LABEL_17:
  if (v10)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t FigCapturePTSBasedReferenceFrameSelection(int a1, const __CFArray *a2, CMTime *a3, int a4, _DWORD *a5, int *a6)
{
  if (checkFigCaptureSampleBufferProcessorCommonTrace_checkFigCaptureSampleBufferProcessorCommonTraceOnceToken != -1)
  {
    FigCaptureFrameMetadataIsUsableForPTSBasedReferenceFrameSelection_cold_1();
  }

  time = *a3;
  Seconds = CMTimeGetSeconds(&time);
  if (a2)
  {
    Count = CFArrayGetCount(a2);
    if (Count >= 5)
    {
      FigCapturePTSBasedReferenceFrameSelection_cold_2(&time);
      return LODWORD(time.value);
    }
  }

  else
  {
    Count = 0;
  }

  if (a4 <= 0)
  {
    FigCapturePTSBasedReferenceFrameSelection_cold_11(&time);
    return LODWORD(time.value);
  }

  if (Count < a4)
  {
    FigCapturePTSBasedReferenceFrameSelection_cold_10(&time);
    return LODWORD(time.value);
  }

  if (!a1)
  {
    IsUsableForPTSBasedReferenceFrameSelection = FigCaptureFrameMetadataIsUsableForPTSBasedReferenceFrameSelection(a2, 0);
    if (IsUsableForPTSBasedReferenceFrameSelection)
    {
      v42 = IsUsableForPTSBasedReferenceFrameSelection;
      FigCapturePTSBasedReferenceFrameSelection_cold_3();
      return v42;
    }
  }

  v15 = 0;
  v16 = *off_1E798A420;
  v17 = -1;
  v18 = 1.79769313e308;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v15);
    if (ValueAtIndex)
    {
      Value = CFDictionaryGetValue(ValueAtIndex, v16);
      if (!Value)
      {
        return 4294954516;
      }

      CMTimeMakeFromDictionary(&time, Value);
      v21 = vabdd_f64(CMTimeGetSeconds(&time), Seconds);
      if (v21 < v18)
      {
        v18 = v21;
        v17 = v15;
      }
    }

    ++v15;
  }

  while (Count != v15);
  if (v17 == -1)
  {
    FigCapturePTSBasedReferenceFrameSelection_cold_9(&time);
    return LODWORD(time.value);
  }

  time.value = 0;
  *&time.timescale = 0;
  if (!a2 || (v22 = CFArrayGetCount(a2), v22 <= 0))
  {
    FigCapturePTSBasedReferenceFrameSelection_cold_7(&v51);
    goto LABEL_66;
  }

  if (v22 > 0xB)
  {
    FigCapturePTSBasedReferenceFrameSelection_cold_6(&v51);
LABEL_66:
    v42 = v51;
    if (v51)
    {
      goto LABEL_67;
    }

    return v42;
  }

  v45 = a4;
  v46 = a6;
  v47 = a5;
  v23 = 0;
  key = *off_1E798B300;
  v48 = *off_1E798B310;
  v24 = *off_1E798B320;
  v44 = v22;
  v25 = v22 & 0xF;
  v26 = -1;
  v27 = 1.1755e-38;
  while (1)
  {
    v28 = CFArrayGetValueAtIndex(a2, v23);
    if (v28)
    {
      break;
    }

LABEL_44:
    if (++v23 == v25)
    {
      if (v26 == -1)
      {
        FigCapturePTSBasedReferenceFrameSelection_cold_5(&v51);
        goto LABEL_66;
      }

      LODWORD(v41) = v26;
      if (v45 == 1)
      {
        goto LABEL_57;
      }

      if (v45 == 2)
      {
        if (v26)
        {
          v41 = v26 - 1;
          if (v26 != v44 - 1)
          {
            if (*(&time.value + v41) < *(&time.value + v26 + 1))
            {
              LODWORD(v41) = v26;
            }

            if (!v46)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          }

LABEL_57:
          if (!v46)
          {
LABEL_59:
            if (v47)
            {
              *v47 = v41;
            }

            return 0;
          }

LABEL_58:
          *v46 = v26;
          goto LABEL_59;
        }
      }

      else if (v26 >= v45)
      {
        LODWORD(v41) = v26 - v45 + 1;
        if (!v46)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }

      LODWORD(v41) = 0;
      goto LABEL_57;
    }
  }

  v29 = v28;
  v51 = 0;
  v30 = CFDictionaryGetValue(v28, key);
  if (!v30)
  {
    goto LABEL_35;
  }

  v31 = v30;
  v32 = CFDictionaryGetValue(v29, v48);
  valuePtr = 0;
  if (v32)
  {
    CFNumberGetValue(v32, kCFNumberSInt32Type, &valuePtr);
  }

  if (CFArrayGetCount(v31) >= 1)
  {
    v33 = 0;
    v34 = 0;
    do
    {
      v35 = CFArrayGetValueAtIndex(v31, v33);
      CFNumberGetValue(v35, kCFNumberSInt64Type, &v51);
      v36 = valuePtr == 2 && v33 == 0;
      v37 = (v51 * 0.1);
      if (!v36)
      {
        v37 = 0;
      }

      v34 += v51 + v37;
      ++v33;
    }

    while (CFArrayGetCount(v31) > v33);
  }

  else
  {
LABEL_35:
    v34 = 0;
  }

  v38 = CFDictionaryGetValue(v29, v24);
  if (v38)
  {
    valuePtr = 0;
    CFNumberGetValue(v38, kCFNumberSInt32Type, &valuePtr);
    if (valuePtr)
    {
      v34 >>= 2;
    }
  }

  if (v34)
  {
    v39 = v23 - v17;
    if (v23 - v17 < 0)
    {
      v39 = v17 - v23;
    }

    v40 = findReferenceFrameIndex_kDistanceFromCenterWeights[v39] * v34;
    *(&time.value + v23) = v40;
    if (v40 > v27)
    {
      v27 = v40;
      v26 = v23;
    }

    goto LABEL_44;
  }

  FigCapturePTSBasedReferenceFrameSelection_cold_4(&v51, &valuePtr);
  v42 = valuePtr;
  if (!valuePtr)
  {
    return v42;
  }

LABEL_67:
  FigCapturePTSBasedReferenceFrameSelection_cold_8();
  return v42;
}

uint64_t hallPositionIndexFromPortType(const void *a1, _DWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      if (CFEqual(a1, *off_1E798A0C0))
      {
        result = 0;
        *a2 = 0;
      }

      else if (CFEqual(a1, *off_1E798A0D8))
      {
        result = 0;
        *a2 = 1;
      }

      else
      {
        fig_log_get_emitter();

        return FigSignalErrorAtGM();
      }
    }

    else
    {
      hallPositionIndexFromPortType_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    hallPositionIndexFromPortType_cold_2(&v6);
    return v6;
  }

  return result;
}

uint64_t bravoTransitionCameraIndexFromPortType(const void *a1, int *a2)
{
  if (!a1)
  {
    bravoTransitionCameraIndexFromPortType_cold_2(&v7);
    return v7;
  }

  if (!a2)
  {
    bravoTransitionCameraIndexFromPortType_cold_1(&v6);
    return v6;
  }

  if (CFEqual(a1, *off_1E798A0C0))
  {
    result = 0;
    *a2 = 0;
    return result;
  }

  if (CFEqual(a1, *off_1E798A0D8))
  {
    result = 0;
    v5 = 1;
LABEL_9:
    *a2 = v5;
    return result;
  }

  if (CFEqual(a1, *off_1E798A0D0))
  {
    result = 0;
    v5 = 2;
    goto LABEL_9;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

float FigMotionDeltaRotationFromQuaternion(double *a1)
{
  v2 = *a1;
  v3 = sqrt(1.0 - v2 * v2);
  if (v3 <= 1.0e-10)
  {
    return a1[1] + a1[1];
  }

  else
  {
    v7 = v3;
    v4 = acos(v2);
    return (v4 + v4) * a1[1] / v7;
  }
}

float FigMotionRotationRateFromDeltaQuaternion(double *a1, float32x2_t *a2, double a3)
{
  if (a3 >= 0.00000001)
  {
    v8 = a3;
    v4 = FigMotionDeltaRotationFromQuaternion(a1);
    HIDWORD(a3) = v5;
    *a2 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*&a3), vdupq_lane_s64(*&v8, 0)));
    *&a3 = v6 / v8;
    a2[1].i32[0] = LODWORD(a3);
  }

  return *&a3;
}

uint64_t FigMotionCalculateAdjustedFocusPosition(int *a1, float a2, float a3)
{
  v3 = *a1 - (a3 * a2);
  if (v3 >= 0.0)
  {
    if (v3 <= 255.0)
    {
      v4 = (v3 + 0.5);
    }

    else
    {
      v4 = 255;
    }
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return 0;
}