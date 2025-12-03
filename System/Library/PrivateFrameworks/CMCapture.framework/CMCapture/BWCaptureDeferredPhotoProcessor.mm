@interface BWCaptureDeferredPhotoProcessor
- (BWCaptureDeferredPhotoProcessor)initWithFigCaptureDeferredPhotoProcessor:(OpaqueFigCaptureDeferredPhotoProcessor *)processor;
- (uint64_t)_runImageCorruptionDetectionForJob:(__IOSurface *)job onEncodedSurface:(uint64_t)surface surfaceSize:;
- (void)_prepareToTerminateImmediatelyDueToError:(int)error;
- (void)dealloc;
- (void)job:(id)job completedWithSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)job:(id)job failedWithError:(int)error;
- (void)request:(id)request failedWithError:(int)error;
@end

@implementation BWCaptureDeferredPhotoProcessor

- (BWCaptureDeferredPhotoProcessor)initWithFigCaptureDeferredPhotoProcessor:(OpaqueFigCaptureDeferredPhotoProcessor *)processor
{
  v6.receiver = self;
  v6.super_class = BWCaptureDeferredPhotoProcessor;
  v4 = [(BWCaptureDeferredPhotoProcessor *)&v6 init];
  if (v4)
  {
    v4->_weakDeferredPhotoProcessorReference = [FigWeakReference weakReferenceToObject:processor];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWCaptureDeferredPhotoProcessor;
  [(BWCaptureDeferredPhotoProcessor *)&v3 dealloc];
}

void __59__BWCaptureDeferredPhotoProcessor_request_failedWithError___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) == *(*(a1 + 40) + 48))
  {
    captureDeferredPhotoProcessor_cleanupForCurrentProcessingRequest(*(a1 + 48));
  }
}

- (void)job:(id)job failedWithError:(int)error
{
  v4 = *&error;
  processorRequest = [job processorRequest];

  [(BWCaptureDeferredPhotoProcessor *)self request:processorRequest failedWithError:v4];
}

- (void)request:(id)request failedWithError:(int)error
{
  v4 = *&error;
  referencedObject = [(FigWeakReference *)self->_weakDeferredPhotoProcessorReference referencedObject];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v8 = DerivedStorage;
    if (*DerivedStorage)
    {
      if (dword_1ED843F90)
      {
        v19 = 0;
        v18 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_2_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [objc_msgSend(request container];
      v10 = MEMORY[0x1E695FF58];
      if (*MEMORY[0x1E695FF58] == 1)
      {
        OUTLINED_FUNCTION_10();
        kdebug_trace();
      }

      v11 = objc_autoreleasePoolPush();
      if (![request parent])
      {
        v16[0] = @"CaptureRequestIdentifier";
        v17[0] = [request captureRequestIdentifier];
        v16[1] = @"PhotoIdentifiers";
        photoIdentifier = [request photoIdentifier];
        v17[1] = [MEMORY[0x1E695DEC8] arrayWithObjects:&photoIdentifier count:1];
        v16[2] = @"ErrorStatus";
        v17[2] = [MEMORY[0x1E696AD98] numberWithInt:v4];
        captureDeferredPhotoProcessor_sendXPCNotificationWithPayload(referencedObject, @"DidFinishProcessingPhotoProxy", [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3]);
      }

      if ((v8[57] & 1) == 0)
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __59__BWCaptureDeferredPhotoProcessor_request_failedWithError___block_invoke;
        v14[3] = &unk_1E7991EF8;
        v14[4] = request;
        v14[5] = v8;
        v14[6] = referencedObject;
        captureDeferredPhotoProcessor_performBlockOnWorkerQueueAsync(referencedObject, v14);
      }

      objc_autoreleasePoolPop(v11);
      if (*v10 == 1)
      {
        kdebug_trace();
      }
    }
  }
}

- (void)job:(id)job completedWithSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  if (dword_1ED843F90)
  {
    v121 = 0;
    v120 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    outputMirroring = 0;
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = [(FigWeakReference *)self->_weakDeferredPhotoProcessorReference referencedObject:*v104];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && *DerivedStorage)
  {
    v10 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      OUTLINED_FUNCTION_10();
      kdebug_trace();
    }

    v11 = objc_autoreleasePoolPush();
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([objc_msgSend(job "processorRequest")])
    {

      goto LABEL_48;
    }

    memset(&v117, 0, sizeof(v117));
    CMSampleBufferGetPresentationTimeStamp(&v117, buffer);
    v13 = *MEMORY[0x1E695E480];
    v119[0] = v117;
    v14 = CMTimeCopyAsDictionary(v119, v13);
    if (v14)
    {
      v108 = v8;
      selfCopy = self;
      v113 = v11;
      v112 = v14;
      v107 = OUTLINED_FUNCTION_19_32(v14, @"PhotoManifest");
      v15 = [v107 descriptorForSampleBuffer:buffer];
      ShouldIncludeDiagnosticMetadata = FigCaptureMetadataUtilitiesShouldIncludeDiagnosticMetadata();
      v110 = ShouldIncludeDiagnosticMetadata != 0;
      self = OUTLINED_FUNCTION_19_32(ShouldIncludeDiagnosticMetadata, @"StillImageSettings");
      outputFileType = [(BWCaptureDeferredPhotoProcessor *)self outputFileType];
      outputRotationDegrees = [(BWCaptureDeferredPhotoProcessor *)self outputRotationDegrees];
      outputMirroring = [(BWCaptureDeferredPhotoProcessor *)self outputMirroring];
      v114 = v12;
      flashMode = [(BWCaptureDeferredPhotoProcessor *)self flashMode];
      StillImageMetadataInSettingsForSampleBuffer = FigCaptureMetadataUtilitiesGetStillImageMetadataInSettingsForSampleBuffer(self, buffer);
      IrisAssetIdentifierForSettingsAndSampleBuffer = FigCaptureMetadataUtilitiesGetIrisAssetIdentifierForSettingsAndSampleBuffer(self, buffer);
      imageGroupIdentifier = [(BWCaptureDeferredPhotoProcessor *)self imageGroupIdentifier];
      time = [v15 time];
      v24 = flashMode;
      v12 = v114;
      v25 = FigCaptureMetadataUtilitiesCreateMetadataAttachments(buffer, outputFileType, outputRotationDegrees, outputMirroring, 1, 1, v24, v110, 1, 0, 1, 0, 0, 0, 0, StillImageMetadataInSettingsForSampleBuffer, IrisAssetIdentifierForSettingsAndSampleBuffer, imageGroupIdentifier, 0, time, 0);
      [v114 setObject:v112 forKeyedSubscript:@"PresentationTimestamp"];
      [v114 setObject:objc_msgSend(objc_msgSend(job forKeyedSubscript:{"processorRequest"), "captureRequestIdentifier"), @"CaptureRequestIdentifier"}];
      [v114 setObject:objc_msgSend(v15 forKeyedSubscript:{"photoIdentifier"), @"PhotoIdentifier"}];
      processingFlags = [v15 processingFlags];
      if ((processingFlags & 0x10000) == 0)
      {
        outputMirroring = OUTLINED_FUNCTION_19_32(processingFlags, @"EncodedImageSurface");
        v11 = [OUTLINED_FUNCTION_19_32(outputMirroring @"EncodedImageSurfaceSize")];
        rawOutputFormat = [OUTLINED_FUNCTION_19_32(v11 @"EncodedImageCodecType")];
        v28 = [OUTLINED_FUNCTION_19_32(rawOutputFormat @"EncodedImageFileType")];
LABEL_13:
        if (outputMirroring)
        {
          if (v11)
          {
            if (rawOutputFormat)
            {
              if (v28)
              {
                if (v25)
                {
                  [v12 setObject:outputMirroring forKeyedSubscript:@"Surface"];
                  [v12 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", v11), @"SurfaceSize"}];
                  [v12 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", rawOutputFormat), @"PhotoCodec"}];
                  [v12 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v28), @"PhotoFileType"}];
                  [v12 setObject:v25 forKeyedSubscript:@"Metadata"];
                  if ([(BWCaptureDeferredPhotoProcessor *)self depthDataDeliveryEnabled]&& ([(BWCaptureDeferredPhotoProcessor *)self embedsDepthDataInImage]& 1) == 0)
                  {
                    fcdpp_copyAttachedMediaSurfaceDataFromSampleBufferIntoNotificationPayload(buffer, @"Depth", *off_1E798D2B8, 0, v12, @"DepthDataSurface", @"DepthMetadata");
                  }

                  if ([(BWCaptureDeferredPhotoProcessor *)self portraitEffectsMatteDeliveryEnabled])
                  {
                    embedsPortraitEffectsMatteInImage = [(BWCaptureDeferredPhotoProcessor *)self embedsPortraitEffectsMatteInImage];
                    if ((embedsPortraitEffectsMatteInImage & 1) == 0)
                    {
                      OUTLINED_FUNCTION_18_31(embedsPortraitEffectsMatteInImage, 0x1F21AABB0, *off_1E798D2D8, v38, v39, @"PortraitEffectsMatteSurface", @"PortraitEffectsMatteMetadata");
                    }
                  }

                  if (([(BWCaptureDeferredPhotoProcessor *)self embedsSemanticSegmentationMattesInImage]& 1) == 0)
                  {
                    enabledSemanticSegmentationMatteURNs = [(BWCaptureDeferredPhotoProcessor *)self enabledSemanticSegmentationMatteURNs];
                    v41 = [enabledSemanticSegmentationMatteURNs containsObject:*MEMORY[0x1E69917E0]];
                    if (v41)
                    {
                      OUTLINED_FUNCTION_18_31(v41, @"PersonSemanticsHair", *off_1E798D2E0, v42, v43, @"HairSegmentationMatteSurface", @"HairSegmentationMatteMetadata");
                    }

                    enabledSemanticSegmentationMatteURNs2 = [(BWCaptureDeferredPhotoProcessor *)self enabledSemanticSegmentationMatteURNs];
                    v45 = [enabledSemanticSegmentationMatteURNs2 containsObject:*MEMORY[0x1E69917E8]];
                    if (v45)
                    {
                      OUTLINED_FUNCTION_18_31(v45, @"PersonSemanticsSkin", *off_1E798D2E0, v46, v47, @"SkinSegmentationMatteSurface", @"SkinSegmentationMatteMetadata");
                    }

                    enabledSemanticSegmentationMatteURNs3 = [(BWCaptureDeferredPhotoProcessor *)self enabledSemanticSegmentationMatteURNs];
                    v49 = [enabledSemanticSegmentationMatteURNs3 containsObject:*MEMORY[0x1E69917F8]];
                    if (v49)
                    {
                      OUTLINED_FUNCTION_18_31(v49, @"PersonSemanticsTeeth", *off_1E798D2E0, v50, v51, @"TeethSegmentationMatteSurface", @"TeethSegmentationMatteMetadata");
                    }

                    enabledSemanticSegmentationMatteURNs4 = [(BWCaptureDeferredPhotoProcessor *)self enabledSemanticSegmentationMatteURNs];
                    v53 = [enabledSemanticSegmentationMatteURNs4 containsObject:*MEMORY[0x1E69917D8]];
                    if (v53)
                    {
                      OUTLINED_FUNCTION_18_31(v53, @"PersonSemanticsGlasses", *off_1E798D2E0, v54, v55, @"GlassesSegmentationMatteSurface", @"GlassesSegmentationMatteMetadata");
                    }
                  }

                  previewEnabled = [(BWCaptureDeferredPhotoProcessor *)self previewEnabled];
                  if (previewEnabled)
                  {
                    v57 = OUTLINED_FUNCTION_19_32(previewEnabled, @"PreviewSurface");
                    if (!v57)
                    {
                      OUTLINED_FUNCTION_0();
                      FigDebugAssert3();
                      FigCaptureGetFrameworkRadarComponent();
                      OUTLINED_FUNCTION_9_57();
                      v76 = OUTLINED_FUNCTION_103();
                      v77 = OUTLINED_FUNCTION_133_0(v76);
                      if (OUTLINED_FUNCTION_5_24(v77))
                      {
                        v118 = 136315138;
                        OUTLINED_FUNCTION_0_107();
                        OUTLINED_FUNCTION_5_77();
                        OUTLINED_FUNCTION_17_32();
                      }

                      v10 = MEMORY[0x1E695FF58];
                      v11 = v113;
                      OUTLINED_FUNCTION_1_117();
                      OUTLINED_FUNCTION_2_107();
                      OUTLINED_FUNCTION_6_0();
                      OUTLINED_FUNCTION_13_18();
                      v97 = OUTLINED_FUNCTION_6_1();
                      FigCapturePleaseFileRadar(v97, v98, v99, v100, v101, 1510, v102, v103, v105);
                      free(&kFigCaptureFlatDictionaryAppleMakerNote_ModuleAndCalibrationValidationStatuses_opaque);
                      v61 = v107;
                      goto LABEL_45;
                    }

                    v58 = v57;
                    [v12 setObject:v57 forKeyedSubscript:@"PreviewSurface"];
                    [v12 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", IOSurfaceGetAllocSize(v58)), @"PreviewSurfaceSize"}];
                  }

                  if ([(BWCaptureDeferredPhotoProcessor *)self cameraCalibrationDataDeliveryEnabled])
                  {
                    if (![v12 objectForKeyedSubscript:@"DepthMetadata"])
                    {
                      v59 = OUTLINED_FUNCTION_19_32(0, @"CameraCalibrationDataMetadata");
                      if (v59)
                      {
                        [v12 setObject:v59 forKeyedSubscript:@"DepthMetadata"];
                      }
                    }
                  }

                  [v12 setObject:OUTLINED_FUNCTION_19_32(objc_msgSend(v12 forKeyedSubscript:{"setObject:forKeyedSubscript:", 0, @"ThumbnailSurface", @"PhotoLibraryThumbnails", @"PhotoLibraryThumbnails"}];
                  v60 = [(BWCaptureDeferredPhotoProcessor *)selfCopy _runImageCorruptionDetectionForJob:job onEncodedSurface:outputMirroring surfaceSize:v11];
                  v10 = MEMORY[0x1E695FF58];
                  v11 = v113;
                  if (v60)
                  {
                    [v12 setObject:&unk_1F22464F8 forKeyedSubscript:@"ErrorStatus"];
                  }

                  v61 = v107;
                  if (qword_1ED8451A0 != -1)
                  {
                    dispatch_once(&qword_1ED8451A0, &__block_literal_global_74);
                  }

                  v62 = [v12 copy];
                  captureDeferredPhotoProcessor_sendXPCNotificationWithPayload(v108, @"DidFinishProcessingPhotoProxy", v62);

LABEL_45:
                  if (v61)
                  {
                    numberOfPhotosDelivered = [job numberOfPhotosDelivered];
                    if ([objc_msgSend(v61 "photoDescriptors")] == numberOfPhotosDelivered)
                    {
                      v116[0] = MEMORY[0x1E69E9820];
                      v116[1] = 3221225472;
                      v116[2] = __65__BWCaptureDeferredPhotoProcessor_job_completedWithSampleBuffer___block_invoke_2;
                      v116[3] = &__block_descriptor_40_e5_v8__0l;
                      v116[4] = v108;
                      captureDeferredPhotoProcessor_performBlockOnWorkerQueueAsync(v108, v116);
                    }
                  }

                  goto LABEL_48;
                }

                FigCaptureGetFrameworkRadarComponent();
                OUTLINED_FUNCTION_9_57();
                v74 = OUTLINED_FUNCTION_103();
                v75 = OUTLINED_FUNCTION_133_0(v74);
                if (OUTLINED_FUNCTION_5_24(v75))
                {
                  v118 = 136315138;
                  OUTLINED_FUNCTION_0_107();
                  OUTLINED_FUNCTION_5_77();
                  OUTLINED_FUNCTION_17_32();
                }

                v10 = MEMORY[0x1E695FF58];
                OUTLINED_FUNCTION_20_26();
                OUTLINED_FUNCTION_1_117();
                OUTLINED_FUNCTION_2_107();
                OUTLINED_FUNCTION_6_0();
                OUTLINED_FUNCTION_13_18();
                v88 = OUTLINED_FUNCTION_6_1();
                v95 = 1442;
              }

              else
              {
                FigCaptureGetFrameworkRadarComponent();
                OUTLINED_FUNCTION_9_57();
                v72 = OUTLINED_FUNCTION_103();
                v73 = OUTLINED_FUNCTION_133_0(v72);
                if (OUTLINED_FUNCTION_5_24(v73))
                {
                  v118 = 136315138;
                  OUTLINED_FUNCTION_0_107();
                  OUTLINED_FUNCTION_5_77();
                  OUTLINED_FUNCTION_17_32();
                }

                v10 = MEMORY[0x1E695FF58];
                OUTLINED_FUNCTION_20_26();
                OUTLINED_FUNCTION_1_117();
                OUTLINED_FUNCTION_2_107();
                OUTLINED_FUNCTION_6_0();
                OUTLINED_FUNCTION_13_18();
                v88 = OUTLINED_FUNCTION_6_1();
                v95 = 1441;
              }
            }

            else
            {
              FigCaptureGetFrameworkRadarComponent();
              OUTLINED_FUNCTION_9_57();
              v70 = OUTLINED_FUNCTION_103();
              v71 = OUTLINED_FUNCTION_133_0(v70);
              if (OUTLINED_FUNCTION_5_24(v71))
              {
                v118 = 136315138;
                OUTLINED_FUNCTION_0_107();
                OUTLINED_FUNCTION_5_77();
                OUTLINED_FUNCTION_17_32();
              }

              v10 = MEMORY[0x1E695FF58];
              OUTLINED_FUNCTION_20_26();
              OUTLINED_FUNCTION_1_117();
              OUTLINED_FUNCTION_2_107();
              OUTLINED_FUNCTION_6_0();
              OUTLINED_FUNCTION_13_18();
              v88 = OUTLINED_FUNCTION_6_1();
              v95 = 1440;
            }
          }

          else
          {
            FigCaptureGetFrameworkRadarComponent();
            OUTLINED_FUNCTION_9_57();
            v68 = OUTLINED_FUNCTION_103();
            v69 = OUTLINED_FUNCTION_133_0(v68);
            if (OUTLINED_FUNCTION_5_24(v69))
            {
              v118 = 136315138;
              OUTLINED_FUNCTION_0_107();
              OUTLINED_FUNCTION_5_77();
              OUTLINED_FUNCTION_17_32();
            }

            v10 = MEMORY[0x1E695FF58];
            OUTLINED_FUNCTION_20_26();
            OUTLINED_FUNCTION_1_117();
            OUTLINED_FUNCTION_2_107();
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_13_18();
            v88 = OUTLINED_FUNCTION_6_1();
            v95 = 1439;
          }
        }

        else
        {
          FigCaptureGetFrameworkRadarComponent();
          OUTLINED_FUNCTION_9_57();
          v66 = OUTLINED_FUNCTION_103();
          v67 = OUTLINED_FUNCTION_133_0(v66);
          if (OUTLINED_FUNCTION_5_24(v67))
          {
            v118 = 136315138;
            OUTLINED_FUNCTION_0_107();
            OUTLINED_FUNCTION_5_77();
            OUTLINED_FUNCTION_17_32();
          }

          v10 = MEMORY[0x1E695FF58];
          OUTLINED_FUNCTION_20_26();
          OUTLINED_FUNCTION_1_117();
          OUTLINED_FUNCTION_2_107();
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_13_18();
          v88 = OUTLINED_FUNCTION_6_1();
          v95 = 1438;
        }

        FigCapturePleaseFileRadar(v88, v89, v90, v91, v92, v95, v93, v94, v105);
        v96 = 4294950471;
        goto LABEL_78;
      }

      v29 = OUTLINED_FUNCTION_19_32(processingFlags, @"RawImageSurface");
      v11 = [objc_msgSend(OUTLINED_FUNCTION_19_32(v29 @"RawImageAssetSizes")];
      rawOutputFormat = [(BWCaptureDeferredPhotoProcessor *)self rawOutputFormat];
      v30 = [OUTLINED_FUNCTION_19_32(rawOutputFormat @"RawImageFileType")];
      v31 = v30;
      v32 = OUTLINED_FUNCTION_19_32(v30, @"RawDNGDictionary");
      if (v32)
      {
        v33 = v32;
        v111 = OUTLINED_FUNCTION_19_32(v32, *off_1E798A3C8);
        v34 = [OUTLINED_FUNCTION_19_32(v111 @"RawImageContainsDepthData")];
        [OUTLINED_FUNCTION_19_32(v34 @"RawImageContainsSemanticSegmentationMattes")];
        [(BWCaptureDeferredPhotoProcessor *)self rawOutputFileCodec];
        v35 = [v111 objectForKeyedSubscript:*off_1E798B1E0];
        v36 = v33;
        outputMirroring = v29;
        v28 = v31;
        v12 = v114;
        v25 = BWCreateRawMetadataFromMetadata(v25, v36, 0x10000u, v35);
        goto LABEL_13;
      }

      FigCaptureGetFrameworkRadarComponent();
      OUTLINED_FUNCTION_9_57();
      v78 = OUTLINED_FUNCTION_103();
      v79 = OUTLINED_FUNCTION_133_0(v78);
      if (OUTLINED_FUNCTION_5_24(v79))
      {
        v118 = 136315138;
        OUTLINED_FUNCTION_0_107();
        OUTLINED_FUNCTION_5_77();
        OUTLINED_FUNCTION_17_32();
      }

      v10 = MEMORY[0x1E695FF58];
      OUTLINED_FUNCTION_20_26();
      OUTLINED_FUNCTION_1_117();
      OUTLINED_FUNCTION_2_107();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_13_18();
      v80 = OUTLINED_FUNCTION_6_1();
      v87 = 1419;
    }

    else
    {
      FigCaptureGetFrameworkRadarComponent();
      OUTLINED_FUNCTION_9_57();
      v64 = OUTLINED_FUNCTION_103();
      v65 = OUTLINED_FUNCTION_133_0(v64);
      if (OUTLINED_FUNCTION_5_24(v65))
      {
        v118 = 136315138;
        OUTLINED_FUNCTION_0_107();
        OUTLINED_FUNCTION_5_77();
        OUTLINED_FUNCTION_17_32();
      }

      OUTLINED_FUNCTION_1_117();
      OUTLINED_FUNCTION_2_107();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_13_18();
      v80 = OUTLINED_FUNCTION_6_1();
      v87 = 1362;
    }

    FigCapturePleaseFileRadar(v80, v81, v82, v83, v84, v87, v85, v86, v105);
    v96 = 4294954516;
LABEL_78:
    free(outputMirroring);

    [(BWCaptureDeferredPhotoProcessor *)self job:job failedWithError:v96];
LABEL_48:
    objc_autoreleasePoolPop(v11);
    if (*v10 == 1)
    {
      OUTLINED_FUNCTION_10();
      kdebug_trace();
    }
  }
}

- (uint64_t)_runImageCorruptionDetectionForJob:(__IOSurface *)job onEncodedSurface:(uint64_t)surface surfaceSize:
{
  if (result)
  {
    [*(result + 8) referencedObject];
    result = CMBaseObjectGetDerivedStorage();
    if (result)
    {
      v7 = result;
      result = 0;
      if (job)
      {
        if (*v7)
        {
          v8 = FigCaptureIsCarryDevice() && [objc_msgSend(a2 "processorRequest")] > 0x18;
          has_internal_diagnostics = os_variant_has_internal_diagnostics();
          v10 = FigCaptureClientApplicationIDIsXCTest(*(v7 + 24));
          result = 0;
          if (has_internal_diagnostics)
          {
            if ((v10 & 1) == 0 && !v8)
            {
              mach_absolute_time();
              IOSurfaceLock(job, 1u, 0);
              [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:IOSurfaceGetBaseAddress(job) length:surface freeWhenDone:0];
              IOSurfaceUnlock(job, 1u, 0);
              CMPhotoDetectCorruptionForSource();
              if (dword_1ED843F90)
              {
                OUTLINED_FUNCTION_22_25();
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v13))
                {
                  v12 = v14;
                }

                else
                {
                  v12 = v14 & 0xFFFFFFFE;
                }

                if (v12)
                {
                  mach_absolute_time();
                  FigHostTimeToNanoseconds();
                  OUTLINED_FUNCTION_5();
                  OUTLINED_FUNCTION_13();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_2_4();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

- (void)_prepareToTerminateImmediatelyDueToError:(int)error
{
  v3 = *&error;
  [(FigWeakReference *)self->_weakDeferredPhotoProcessorReference referencedObject];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v6 = DerivedStorage;
    if (*DerivedStorage)
    {
      IsCurrentDispatchQueue = _FigIsCurrentDispatchQueue();
      if (!IsCurrentDispatchQueue)
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_5();
        IsCurrentDispatchQueue = FigDebugAssert3();
      }

      v9 = *(v6 + 6);
      if (v9)
      {
        IsCurrentDispatchQueue = [(BWCaptureDeferredPhotoProcessor *)self request:v9 failedWithError:v3];
        *(v6 + 6) = 0;
      }

      v10 = *(v6 + 5);
      v11 = OUTLINED_FUNCTION_23_24(IsCurrentDispatchQueue, v8);
      if (v11)
      {
        v12 = v11;
        v13 = MEMORY[0];
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (MEMORY[0] != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [(BWCaptureDeferredPhotoProcessor *)self request:*(8 * i) failedWithError:v3];
          }

          v12 = OUTLINED_FUNCTION_23_24(v15, v16);
        }

        while (v12);
      }

      [*(v6 + 5) removeAllObjects];
    }
  }
}

@end