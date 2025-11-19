@interface BWDeferredProcessorController
- (BWDeferredProcessorController)initWithConfiguration:(id)a3;
- (id)_getOriginalCameraIntrinsicsForPortType:(id)result;
- (id)requestForInput:(id)a3 delegate:(id)a4 errOut:(int *)a5;
- (int)process;
- (uint64_t)_sensorRawSampleBufferWithBuffer:(void *)a3 metadata:(const void *)a4 rawThumbnailsBuffer:(const void *)a5 mainRawThumbnailBuffer:(const void *)a6 sifrRawThumbnailBuffer:(const void *)a7 dngDictionary:(uint64_t)a8 captureFrameFlags:(void *)a9 stillImageSettings:(CMSampleBufferRef *)a10 sampleBufferOut:;
- (void)_handleDidDetermineReferenceFrameWithSortedIntermediates:(void *)result;
- (void)_sortedIntermediates;
- (void)dealloc;
@end

@implementation BWDeferredProcessorController

- (BWDeferredProcessorController)initWithConfiguration:(id)a3
{
  v4.receiver = self;
  v4.super_class = BWDeferredProcessorController;
  return [(BWStillImageProcessorController *)&v4 initWithName:@"DeferredProcessor" type:5 configuration:a3];
}

- (void)dealloc
{
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  v4.receiver = self;
  v4.super_class = BWDeferredProcessorController;
  [(BWStillImageProcessorController *)&v4 dealloc];
}

- (id)requestForInput:(id)a3 delegate:(id)a4 errOut:(int *)a5
{
  v6 = [(BWStillImageProcessorControllerRequest *)[BWDeferredProcessorControllerRequest alloc] initWithInput:a3 delegate:a4];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -12786;
  }

  if (a5)
  {
    *a5 = v7;
  }

  return v6;
}

- (int)process
{
  v125[0] = 0;
  v3 = [(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] input];
  v4 = [(BWStillImageProcessorControllerInput *)v3 container];
  v91 = self;
  v89 = [(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] delegate];
  if ([objc_msgSend(v4 "captureSettings")] != 12 && objc_msgSend(objc_msgSend(v4, "captureSettings"), "captureType") != 13 && (objc_msgSend(objc_msgSend(v4, "captureSettings"), "captureFlags") & 0x80) == 0)
  {
    v125[0] = -12780;
    goto LABEL_109;
  }

  context = objc_autoreleasePoolPush();
  v5 = [(BWDeferredProcessorController *)self _sortedIntermediates];
  v90 = v3;
  v88 = [MEMORY[0x1E696AEC0] stringWithFormat:@"InferenceAttachedMediaMeta-%@", -[BWStillImageProcessorControllerInput portType](v3, "portType")];
  [(BWDeferredProcessorController *)self _handleDidDetermineReferenceFrameWithSortedIntermediates:v5];
  v6 = [MEMORY[0x1E695DFA8] set];
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  obj = v5;
  v7 = [v5 countByEnumeratingWithState:&v121 objects:v120 count:16];
  if (!v7)
  {
    goto LABEL_108;
  }

  v8 = v7;
  p_inst_meths = &OBJC_PROTOCOL___FigCaptureDeferredProcessingJobDelegate.inst_meths;
  v10 = *v122;
  v87 = *off_1E798A788;
  v94 = *off_1E798A458;
  v93 = *off_1E798A3C0;
  v92 = *off_1E798A470;
  key = *off_1E798D2E8;
  v80 = *off_1E798B540;
  v81 = *off_1E798A4F8;
  v97 = *v122;
  v95 = v4;
  do
  {
    v11 = 0;
    v96 = v8;
    do
    {
      if (*v122 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v121 + 1) + 8 * v11);
      v13 = objc_autoreleasePoolPush();
      v119 = 0;
      v14 = [v12 tag];
      v15 = [v14 hasPrefix:p_inst_meths[22]];
      v16 = v14;
      if (v15)
      {
        goto LABEL_24;
      }

      v17 = [v14 hasPrefix:BWDeferredIntermediateTagSourceNodePixelBufferAttributes];
      v16 = v14;
      if (v17)
      {
        goto LABEL_24;
      }

      v18 = [v14 hasPrefix:BWDeferredIntermediateTagReferenceFrameMetadataByPortTypePrefix];
      v16 = v14;
      if (v18)
      {
        goto LABEL_24;
      }

      v19 = [v14 hasPrefix:BWDeferredIntermediateTagSyntheticReferenceFrameMetadataByPortTypePrefix];
      v16 = v14;
      if (v19)
      {
        goto LABEL_24;
      }

      v20 = [v14 hasPrefix:BWDeferredIntermediateTagWhiteBalanceMetadataByPortTypePrefix];
      v16 = v14;
      if (v20)
      {
        goto LABEL_24;
      }

      v21 = [v14 hasPrefix:BWDeferredIntermediateTagDNGDictionaryPrefix];
      v16 = v14;
      if (v21)
      {
        goto LABEL_24;
      }

      v22 = [v14 hasPrefix:BWDeferredIntermediateTagSampleBufferOriginalCameraIntrinsicsPrefix];
      v16 = v14;
      if (v22)
      {
        goto LABEL_24;
      }

      v23 = [v14 hasPrefix:BWDeferredIntermediateTagDepthMetadata];
      v16 = v14;
      if (v23)
      {
        goto LABEL_24;
      }

      v24 = [v14 hasPrefix:BWDeferredIntermediateTagStereoPhotoDepthMetadata];
      v16 = v14;
      if (v24)
      {
        goto LABEL_24;
      }

      v25 = [v14 hasPrefix:BWDeferredIntermediateTagDepthData];
      v16 = v14;
      if (v25)
      {
        goto LABEL_24;
      }

      if ([v12 isMemberOfClass:objc_opt_class()] && (objc_msgSend(v12, "bufferType") == 2001 || objc_msgSend(v12, "bufferType") == 19 || objc_msgSend(v12, "bufferType") == 37 || objc_msgSend(v12, "bufferType") == 8 && -[BWStillImageCaptureSettings captureType](-[BWStillImageProcessorControllerInput captureSettings](v90, "captureSettings"), "captureType") == 13))
      {
        [v6 addObject:v14];
        v16 = [v12 metadataTag];
LABEL_24:
        [v6 addObject:v16];
      }

      if ([v6 containsObject:v14])
      {
        goto LABEL_53;
      }

      if ([v12 isMemberOfClass:objc_opt_class()])
      {
        v118 = 0;
        v117 = 0;
        v26 = [v12 bufferType];
        v27 = [v12 captureFrameFlags];
        texture = [v4 copyBufferForTag:v14 err:&v118];
        if ([v12 metadataTag])
        {
          v28 = [v4 copyMetadataForTag:objc_msgSend(v12 err:{"metadataTag"), &v117}];
          v99 = [v28 mutableCopy];

          [v6 addObject:{objc_msgSend(v12, "metadataTag")}];
        }

        else
        {
          v99 = 0;
        }

        v112[0] = MEMORY[0x1E69E9820];
        v112[1] = 3221225472;
        v113 = __40__BWDeferredProcessorController_process__block_invoke;
        v114 = &unk_1E799C9B8;
        v115 = v4;
        v116 = v6;
        v37 = [v12 rawThumbnailsBufferTag];
        v38 = [v12 rawThumbnailsMetadataTag];
        v39 = (v113)(v112, v37, v38, v94);
        v40 = [v12 mainRawThumbnailBufferTag];
        v41 = [v12 mainRawThumbnailMetadataTag];
        v42 = (v113)(v112, v40, v41, v93);
        v43 = [v12 sifrRawThumbnailBufferTag];
        v44 = [v12 sifrRawThumbnailMetadataTag];
        v45 = (v113)(v112, v43, v44, v92);
        v46 = v118;
        if (v118 || (v46 = v117) != 0)
        {
          v125[0] = v46;
LABEL_43:
          CVPixelBufferRelease(texture);
          [v12 releaseBuffer];

          CVPixelBufferRelease(v39);
          CVPixelBufferRelease(v42);
          CVPixelBufferRelease(v45);
          if (v125[0])
          {
            objc_autoreleasePoolPop(v13);
            v4 = v95;
            goto LABEL_108;
          }

          [v6 addObject:{objc_msgSend(v12, "tag")}];
          v4 = v95;
          v8 = v96;
          p_inst_meths = (&OBJC_PROTOCOL___FigCaptureDeferredProcessingJobDelegate + 24);
          v10 = v97;
          goto LABEL_53;
        }

        if (v125[0])
        {
          goto LABEL_43;
        }

        if (([objc_msgSend(v95 "captureSettings")] & 4) == 0)
        {
          LODWORD(v77) = v125[0];
          [(BWStillImageProcessorControllerDelegate *)v89 processorController:v91 didFinishProcessingBuffer:texture metadata:v99 type:v26 captureFrameFlags:v27 processorInput:v90 err:v77];
          goto LABEL_43;
        }

        v84 = [objc_msgSend(objc_msgSend(v95 "captureSettings")];
        v86 = 0;
        if (v84 && (v27 & 0x10) != 0)
        {
          v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", BWDeferredIntermediateTagDNGDictionaryPrefix, -[BWStillImageProcessorControllerInput portType](v90, "portType")];
          v86 = [v95 hasTag:?] ? objc_msgSend(v95, "copyDictionaryForTag:err:", v54, v125) : 0;
          v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", BWDeferredIntermediateTagSyntheticReferenceFrameMetadataByPortTypePrefix, -[BWStillImageProcessorControllerInput portType](v90, "portType")];
          if ([v95 hasTag:v55])
          {
            v56 = [v95 copyDictionaryForTag:v55 err:v125];
            [v99 setObject:v56 forKeyedSubscript:@"SyntheticReference"];
          }
        }

        if (v26 != 1)
        {
          LODWORD(v77) = v125[0];
          [(BWStillImageProcessorControllerDelegate *)v89 processorController:v91 didFinishProcessingBuffer:texture metadata:v99 type:v26 captureFrameFlags:v27 processorInput:v90 err:v77];
LABEL_71:

          goto LABEL_43;
        }

        v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", BWDeferredIntermediateTagWhiteBalanceMetadataByPortTypePrefix, objc_msgSend(v12, "portType")];
        if ([v95 hasTag:v57])
        {
          v58 = [v95 copyDictionaryForTag:v57 err:v125];
          [v99 addEntriesFromDictionary:v58];
        }

        target = 0;
        v125[0] = [(BWDeferredProcessorController *)v91 _sensorRawSampleBufferWithBuffer:v99 metadata:v39 rawThumbnailsBuffer:v42 mainRawThumbnailBuffer:v45 sifrRawThumbnailBuffer:v86 dngDictionary:v27 captureFrameFlags:[(BWStillImageProcessorControllerInput *)v90 stillImageSettings] stillImageSettings:&target sampleBufferOut:?];
        if (target)
        {
          v59 = v84;
        }

        else
        {
          v59 = 1;
        }

        if ((v59 & 1) == 0)
        {
          v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", BWDeferredIntermediateTagStereoPhotoDepthMetadata, -[BWStillImageProcessorControllerInput portType](v90, "portType")];
          if ([v95 hasTag:v60])
          {
            v61 = [v95 copyDictionaryForTag:v60 err:v125];
            v62 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v61];
            CMSetAttachment(target, key, v62, 1u);
          }
        }

        if (-[BWStillImageCaptureSettings captureType](-[BWStillImageProcessorControllerInput captureSettings](v90, "captureSettings"), "captureType") == 13 && [v95 hasBufferForType:8 portType:{-[BWStillImageProcessorControllerInput portType](v90, "portType")}] && (v27 & 0x10) != 0)
        {
          v110 = 0;
          v109 = 0;
          v63 = [v95 copyBufferForType:8 portType:-[BWStillImageProcessorControllerInput portType](v90 metadata:"portType") err:{&v109, &v110}];
          v64 = v63;
          if (v110)
          {
            v85 = v63;
            v108 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v66 = v108;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v67 = v66;
            }

            else
            {
              v67 = v66 & 0xFFFFFFFE;
            }

            if (v67)
            {
              v101 = 136315394;
              v102 = "[BWDeferredProcessorController process]";
              v103 = 1024;
              LODWORD(v104) = v110;
              LODWORD(v79) = 18;
              v78 = &v101;
              _os_log_send_and_compose_impl();
            }

            goto LABEL_97;
          }

          CMSetAttachment(target, v81, v63, 1u);
          if (dword_1EB58E320)
          {
            v85 = v64;
            v108 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v68 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v69 = v108;
            v70 = os_log_type_enabled(v68, type);
            v71 = v69 & 0xFFFFFFFE;
            if (v70)
            {
              v71 = v69;
            }

            if (v71)
            {
              v72 = BWStringFromPixelBuffer();
              v73 = [objc_msgSend(v95 "captureSettings")];
              v101 = 136315651;
              v102 = "[BWDeferredProcessorController process]";
              v103 = 2113;
              v104 = v72;
              v105 = 2050;
              v106 = v73;
              LODWORD(v79) = 32;
              v78 = &v101;
              _os_log_send_and_compose_impl();
            }

LABEL_97:
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v64 = v85;
          }

          if (v64)
          {
            CFRelease(v64);
          }
        }

        if ([objc_msgSend(v95 captureSettings])
        {
          if ((v27 & 0x10) != 0)
          {
            v74 = -[BWDeferredProcessorController _getOriginalCameraIntrinsicsForPortType:](v91, [v99 objectForKeyedSubscript:v80]);
            if ([(__CFDictionary *)v74 count])
            {
              CMSetAttachments(target, v74, 1u);
            }
          }
        }

        [(BWStillImageProcessorControllerDelegate *)v89 processorController:v91 didFinishProcessingSampleBuffer:target type:1 processorInput:v90 err:v125[0]];
        if (target)
        {
          CFRelease(target);
        }

        goto LABEL_71;
      }

      if ([v12 isMemberOfClass:objc_opt_class()])
      {
        v29 = [v12 inferenceAttachedMediaKey];
        v30 = [v12 fetchAndRetain:&v119];
        if ([v12 metadataTag])
        {
          v31 = [v4 copyMetadataForTag:objc_msgSend(v12 err:{"metadataTag"), &v119}];
          v32 = [v31 mutableCopy];

          v10 = v97;
          [v6 addObject:{objc_msgSend(v12, "metadataTag")}];
        }

        else
        {
          v32 = 0;
        }

        if ([objc_msgSend(v4 "settings")] && objc_msgSend(objc_msgSend(v4, "settings"), "deferredPhotoProxyHeight"))
        {
          v48 = [objc_msgSend(v4 "settings")];
          v49 = v48 / [objc_msgSend(v4 "settings")];
          v50 = MEMORY[0x1E696AD98];
          [(BWStillImageProcessorControllerConfiguration *)[(BWStillImageProcessorController *)v91 configuration] inferenceMainImageDownscalingFactor];
          *&v52 = v49 * v51;
          v53 = v50;
          v10 = v97;
          [v32 setObject:objc_msgSend(v53 forKeyedSubscript:{"numberWithFloat:", v52), v87}];
        }

        [(BWStillImageProcessorControllerDelegate *)v89 processorController:v91 didFinishProcessingInferenceBuffer:v30 metadata:v32 inferenceAttachedMediaKey:v29 processorInput:v90 err:v119];
        CVPixelBufferRelease(v30);

        [v12 releaseBuffer];
        [v6 addObject:{objc_msgSend(v12, "tag")}];
        p_inst_meths = (&OBJC_PROTOCOL___FigCaptureDeferredProcessingJobDelegate + 24);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
        {
          v33 = [v12 performSelector:sel_inferenceAttachmentKey];
          if (([v33 isEqual:0x1F219E9B0] & 1) != 0 || objc_msgSend(v33, "isEqual:", 0x1F219E990))
          {
            v34 = MEMORY[0x1E695DFD8];
            goto LABEL_37;
          }

          if (([v33 isEqual:0x1F219E6F0] & 1) != 0 || objc_msgSend(v33, "isEqual:", 0x1F219E5F0))
          {
            v34 = MEMORY[0x1E695DFD8];
            getVNFaceObservationClass();
LABEL_37:
            v35 = [v34 setWithObject:objc_opt_class()];
          }

          else
          {
            v35 = 0;
          }

          v36 = [v12 fetchWithCustomClassesAndRetain:v35 err:&v119];
          [(BWStillImageProcessorControllerDelegate *)v89 processorController:v91 didFinishProcessingInference:v36 inferenceAttachmentKey:v33 processorInput:v90 err:v119];

          [v6 addObject:{objc_msgSend(v12, "tag")}];
          goto LABEL_53;
        }

        if ([v12 isMemberOfClass:objc_opt_class()] && objc_msgSend(objc_msgSend(v12, "tag"), "isEqualToString:", v88))
        {
          v47 = [v4 copyDictionaryForTag:v88 err:v125];
          [(BWStillImageProcessorControllerDelegate *)v89 processorController:v91 didFinishProcessingInferenceAttachedMediaMetadata:v47 processorInput:v90];
        }
      }

LABEL_53:
      objc_autoreleasePoolPop(v13);
      ++v11;
    }

    while (v8 != v11);
    v75 = [obj countByEnumeratingWithState:&v121 objects:v120 count:16];
    v8 = v75;
  }

  while (v75);
LABEL_108:
  objc_autoreleasePoolPop(context);
  v3 = v90;
LABEL_109:
  [v4 releaseIntermediates];
  [(BWStillImageProcessorControllerInput *)v3 setProcessorController:0];
  return v125[0];
}

__CVBuffer *__40__BWDeferredProcessorController_process__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  if (!a2)
  {
    return 0;
  }

  v6 = [*(a1 + 32) copyBufferForTag:a2 err:&v12];
  [*(a1 + 40) addObject:a2];
  if (v12)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a3 && v6)
  {
    v8 = [*(a1 + 32) copyMetadataForTag:a3 err:&v12];
    v9 = [v8 mutableCopy];
    [*(a1 + 40) addObject:a3];
    if (v9)
    {
      CVBufferSetAttachment(v6, *off_1E798A3C8, v9, kCVAttachmentMode_ShouldPropagate);
    }

    else
    {
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return v6;
}

uint64_t __53__BWDeferredProcessorController__sortedIntermediates__block_invoke(uint64_t a1, void *a2, void *a3)
{
  if ([a2 isMemberOfClass:objc_opt_class()])
  {
    return FigCapturePixelFormatIsVersatileRaw([a2 pixelFormat]);
  }

  if ([a3 isMemberOfClass:objc_opt_class()])
  {
    return FigCapturePixelFormatIsVersatileRaw([a3 pixelFormat]) << 63 >> 63;
  }

  return 0;
}

uint64_t __53__BWDeferredProcessorController__sortedIntermediates__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  if (![a2 isMemberOfClass:objc_opt_class()] || !objc_msgSend(a3, "isMemberOfClass:", objc_opt_class()))
  {
    if (([a2 isMemberOfClass:objc_opt_class()] & 1) == 0)
    {
      return ([a3 isMemberOfClass:objc_opt_class()] & 1) != 0;
    }

    return -1;
  }

  IsVersatileRaw = FigCapturePixelFormatIsVersatileRaw([a2 pixelFormat]);
  v7 = FigCapturePixelFormatIsVersatileRaw([a3 pixelFormat]);
  v8 = [a2 captureFrameFlags];
  v9 = [a3 captureFrameFlags];
  v10 = [a2 bufferType];
  v11 = [a3 bufferType];
  if (!IsVersatileRaw || !v7)
  {
    if (IsVersatileRaw)
    {
      v18 = -1;
    }

    else
    {
      v18 = 1;
    }

    if (((IsVersatileRaw | v7) & 1) == 0)
    {
      return 0;
    }

    return v18;
  }

  v12 = v11;
  if (v10 != v11)
  {
    if (v10 == 1)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  if (([objc_msgSend(objc_msgSend(*(a1 + 32) "container")] & 0x200000000) == 0)
  {
    v13 = [objc_msgSend(objc_msgSend(*(a1 + 32) "container")];
    v42 = 0u;
    v43 = 0u;
    if (v13 == 13)
    {
      v14 = &unk_1F2249C30;
    }

    else
    {
      v14 = &unk_1F2249C48;
    }

    v44 = 0uLL;
    v45 = 0uLL;
    v15 = [v14 countByEnumeratingWithState:&v42 objects:v41 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v43;
      v18 = 1;
      v39 = v12;
LABEL_12:
      v19 = 0;
      while (1)
      {
        if (*v43 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = [*(*(&v42 + 1) + 8 * v19) unsignedLongValue];
        if ((v20 & v8) != 0)
        {
          return -1;
        }

        if ((v20 & v9) != 0)
        {
          return v18;
        }

        if (v16 == ++v19)
        {
          v16 = [v14 countByEnumeratingWithState:&v42 objects:v41 count:16];
          v12 = v39;
          if (v16)
          {
            goto LABEL_12;
          }

          break;
        }
      }
    }

    if (v10 == 37)
    {
      v18 = -1;
    }

    else
    {
      v18 = 1;
    }

    if (v10 != 37 && v12 != 37)
    {
      FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
      v57 = 0;
      v56 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v23 = v57;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v56))
      {
        v24 = v23;
      }

      else
      {
        v24 = v23 & 0xFFFFFFFE;
      }

      if (v24)
      {
        v46 = 136315650;
        v47 = "[BWDeferredProcessorController _sortedIntermediates]_block_invoke";
        v48 = 2112;
        v49 = a2;
        v50 = 2112;
        v51 = a3;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v52 = 138412546;
      v53 = a2;
      v54 = 2112;
      v55 = a3;
      v38 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(FrameworkRadarComponent, v38, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWDeferredProcessorController.m", 930, @"LastShownDate:BWDeferredProcessorController.m:930", @"LastShownBuild:BWDeferredProcessorController.m:930", 0);
      goto LABEL_65;
    }

    return v18;
  }

  v26 = [a2 attributes];
  v27 = *MEMORY[0x1E6966208];
  v40 = [objc_msgSend(v26 objectForKeyedSubscript:{*MEMORY[0x1E6966208]), "intValue"}];
  v28 = [a2 attributes];
  v29 = *MEMORY[0x1E69660B8];
  v30 = [objc_msgSend(v28 objectForKeyedSubscript:{*MEMORY[0x1E69660B8]), "intValue"}];
  v31 = [objc_msgSend(objc_msgSend(a3 "attributes")];
  v32 = [objc_msgSend(objc_msgSend(a3 "attributes")];
  v33 = v40 | (v30 << 32);
  v34 = *(a1 + 40);
  if (v33 == v34)
  {
    v18 = -1;
  }

  else
  {
    v18 = 1;
  }

  if (v33 == v34 || (v31 | (v32 << 32)) == v34)
  {
    return v18;
  }

  if ((v8 & 4) != 0)
  {
    return -1;
  }

  if ((v9 & 4) != 0)
  {
    return 1;
  }

  if ((v8 & 8) != 0)
  {
    return -1;
  }

  if ((v9 & 8) != 0)
  {
    return 1;
  }

  if ((v8 & 0x10) != 0)
  {
    return -1;
  }

  if ((v9 & 0x10) != 0)
  {
    return 1;
  }

  v18 = -1;
  if ((v8 & 2) == 0)
  {
    v35 = v10 == 37 ? -1 : 1;
    v18 = (v9 & 2) != 0 ? 1 : v35;
    if ((v9 & 2) == 0 && v10 != 37 && v12 != 37)
    {
      v36 = FigCaptureGetFrameworkRadarComponent();
      v57 = 0;
      v56 = OS_LOG_TYPE_DEFAULT;
      v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v52 = 138412546;
      v53 = a2;
      v54 = 2112;
      v55 = a3;
      v38 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(v36, v38, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWDeferredProcessorController.m", 886, @"LastShownDate:BWDeferredProcessorController.m:886", @"LastShownBuild:BWDeferredProcessorController.m:886", 0);
LABEL_65:
      free(v38);
      return 0;
    }
  }

  return v18;
}

- (void)_sortedIntermediates
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = [objc_msgSend(result "currentRequest")];
  if (([objc_msgSend(objc_msgSend(v2 "container")] & 4) == 0)
  {
    goto LABEL_3;
  }

  v4 = [objc_msgSend(objc_msgSend(v2 "container")];
  v5 = [v2 container];
  if ((v4 & 0x80) == 0)
  {
    if ([objc_msgSend(v5 "captureSettings")] == 12 || objc_msgSend(objc_msgSend(objc_msgSend(v2, "container"), "captureSettings"), "captureType") == 13)
    {
      v6 = [objc_msgSend(v1 "configuration")];
      return [objc_msgSend(objc_msgSend(v2 container];
    }

LABEL_3:
    v3 = [v2 container];

    return [v3 intermediates];
  }

  v7 = [v5 intermediates];

  return [v7 sortedArrayUsingComparator:&__block_literal_global_121];
}

- (void)_handleDidDetermineReferenceFrameWithSortedIntermediates:(void *)result
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  v77[0] = 0;
  v76 = 0;
  v4 = [objc_msgSend(result "currentRequest")];
  v5 = [v4 container];
  v6 = 0x1E696A000uLL;
  if (([objc_msgSend(v4 "captureStreamSettings")] & 4) == 0)
  {
    v59 = v3;
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", BWDeferredIntermediateTagReferenceFrameMetadataByPortTypePrefix, objc_msgSend(v4, "portType")];
    v7 = [OUTLINED_FUNCTION_5_85() copyDictionaryForTag:? err:?];
    v8 = 0;
    if (v7)
    {
LABEL_4:
      v58 = v7;
      v9 = [v7 mutableCopy];
      v10 = [*(v6 + 3776) stringWithFormat:@"%@-%@", BWDeferredIntermediateTagWhiteBalanceMetadataByPortTypePrefix, objc_msgSend(objc_msgSend(v4, "captureSettings"), "masterPortType")];
      if ([v5 hasTag:v10])
      {
        v11 = [OUTLINED_FUNCTION_5_85() copyDictionaryForTag:v10 err:?];
        [v9 addEntriesFromDictionary:v11];
      }

      v12 = objc_alloc(MEMORY[0x1E695DF90]);
      v13 = *off_1E798A3C8;
      v70 = *off_1E798A3C8;
      v71[0] = v9;
      v14 = [v12 initWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v71, &v70, 1)}];
      [v14 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v4 forKeyedSubscript:{"stillImageSettings"), "processingSettings"), "photoManifest"), @"PhotoManifest"}];
      [v14 setObject:objc_msgSend(v5 forKeyedSubscript:{"captureSettings"), @"BWStillImageCaptureSettings"}];
      [v14 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(objc_msgSend(v5, "captureSettings"), "captureType")), @"StillImageCaptureType"}];
      [v14 setObject:objc_msgSend(v5 forKeyedSubscript:{"settings"), @"StillImageSettings"}];
      [v14 setObject:objc_msgSend(v4 forKeyedSubscript:{"stillImageSettings"), @"StillSettings"}];
      [v14 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", v8), @"StillImageCaptureFrameFlags"}];
      [v14 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v5 forKeyedSubscript:{"captureSettings"), "metadata"), "slaveLensFNumbers"), 0x1F21AA430}];
      [v14 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v5 forKeyedSubscript:{"captureSettings"), "metadata"), "slaveFocalLengths"), 0x1F21AA410}];
      v15 = MEMORY[0x1E696AD98];
      [objc_msgSend(objc_msgSend(v5 "captureSettings")];
      [v14 setObject:objc_msgSend(v15 forKeyedSubscript:{"numberWithFloat:"), 0x1F216AB90}];
      v16 = MEMORY[0x1E696AD98];
      [objc_msgSend(objc_msgSend(v5 "captureSettings")];
      [v14 setObject:objc_msgSend(v16 forKeyedSubscript:{"numberWithFloat:"), 0x1F21AA2B0}];
      [v14 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(objc_msgSend(objc_msgSend(v5, "captureSettings"), "metadata"), "deviceType")), 0x1F21A9ED0}];
      v17 = [objc_msgSend(objc_msgSend(objc_msgSend(v5 "photoManifest")];
      [v14 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v17 & 0xFD5FFFFF), @"StillImageProcessingFlags"}];
      v18 = [*(v6 + 3776) stringWithFormat:@"%@-%@", BWDeferredIntermediateTagDNGDictionaryPrefix, objc_msgSend(v4, "portType")];
      if ([v5 hasTag:v18])
      {
        v19 = [OUTLINED_FUNCTION_5_85() copyDictionaryForTag:v18 err:?];
        [v14 setObject:v19 forKeyedSubscript:0x1F21AA750];
      }

      v20 = -[BWDeferredProcessorController _getOriginalCameraIntrinsicsForPortType:](v59, [v4 portType]);
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v21 = [v20 countByEnumeratingWithState:&v66 objects:v65 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v67;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v67 != v23)
            {
              objc_enumerationMutation(v20);
            }

            [v14 setObject:objc_msgSend(v20 forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v66 + 1) + 8 * i)), *(*(&v66 + 1) + 8 * i)}];
          }

          v22 = [v20 countByEnumeratingWithState:&v66 objects:v65 count:16];
        }

        while (v22);
      }

      memset(&v64, 0, sizeof(v64));
      CMTimeMakeFromDictionary(&v64, [objc_msgSend(v14 objectForKeyedSubscript:{v13), "objectForKeyedSubscript:", *off_1E798A420}]);
      memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
      __dst.presentationTimeStamp = v64;
      v77[0] = OUTLINED_FUNCTION_7_17(*MEMORY[0x1E695E480], v25, v26, v27, v28, v29, v30, v31, &__dst, 0, 0, &v76);
      CMSetAttachments(v76, v14, 1u);
      v32 = &dword_1EB58E000;
      v33 = 0x1E696A000uLL;
      if (![v5 hasBufferForType:19 portType:{objc_msgSend(v4, "portType")}])
      {
LABEL_38:
        v40 = v59;
        if (![v5 hasBufferForType:2001 portType:{objc_msgSend(v4, "portType")}])
        {
LABEL_64:
          v55 = [objc_msgSend(v40 "currentRequest")];
          v56 = v76;
          v57 = [objc_msgSend(v40 "currentRequest")];
          [v55 processorController:v40 didDetermineReferenceFrame:v56 processorInput:v57 err:v77[0]];
          v7 = v58;
          goto LABEL_65;
        }

        v61 = 0;
        v41 = [v5 copyBufferForType:2001 portType:objc_msgSend(v4 metadata:"portType") err:{&v61, v77}];
        if (v77[0])
        {
          LODWORD(cf) = 0;
          v62[0] = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v43 = cf;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v62[0]))
          {
            v44 = v43;
          }

          else
          {
            v44 = v43 & 0xFFFFFFFE;
          }

          if (v44)
          {
            OUTLINED_FUNCTION_77_0();
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }
        }

        else
        {
          cf = 0;
          BWSampleBufferSetAttachedMediaFromPixelBuffer(v76, @"Depth", v41, &cf, v61, 0, 0);
          AttachedMedia = BWSampleBufferGetAttachedMedia(v76, @"Depth");
          v46 = [*(v33 + 3776) stringWithFormat:@"%@-%@", BWDeferredIntermediateTagDepthMetadata, objc_msgSend(v4, "portType")];
          if ([v5 hasTag:v46])
          {
            v47 = [OUTLINED_FUNCTION_5_85() copyDictionaryForTag:v46 err:?];
            v48 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v47];
            CMSetAttachment(v76, *off_1E798D2B8, v48, 1u);
          }

          v49 = [*(v33 + 3776) stringWithFormat:@"%@-%@", BWDeferredIntermediateTagDepthData, objc_msgSend(v4, "portType")];
          if ([v5 hasTag:v49])
          {
            v50 = [OUTLINED_FUNCTION_5_85() copyDictionaryForTag:v49 err:?];
            v51 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v50];
            CMSetAttachment(AttachedMedia, @"DepthPixelBufferType", [v51 objectForKeyedSubscript:@"DepthPixelBufferType"], 1u);
            [v51 setObject:0 forKeyedSubscript:@"DepthPixelBufferType"];
            CMSetAttachment(AttachedMedia, *off_1E798A328, v51, 1u);
          }

          v40 = v59;
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (!v32[200])
          {
            goto LABEL_61;
          }

          *v62 = 0;
          v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v53 = *v62;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            v54 = v53;
          }

          else
          {
            v54 = v53 & 0xFFFFFFFE;
          }

          if (v54)
          {
            BWStringFromPixelBuffer();
            [objc_msgSend(v5 "captureSettings")];
            OUTLINED_FUNCTION_77_0();
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }
        }

        OUTLINED_FUNCTION_2_116();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_61:
        if (v41)
        {
          CFRelease(v41);
        }

        goto LABEL_64;
      }

      *v62 = 0;
      v61 = 0;
      v34 = [v5 copyBufferForType:19 portType:objc_msgSend(v4 metadata:"portType") err:{&v61, v62}];
      if (*v62)
      {
        LODWORD(cf) = 0;
        v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_2_116();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v32 = &dword_1EB58E000;
      }

      else
      {
        cf = 0;
        BWSampleBufferSetAttachedMediaFromPixelBuffer(v76, 0x1F217BF50, v34, &cf, v61, 0, 0);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (dword_1EB58E320)
        {
          v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_2_116();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v33 = 0x1E696A000;
          v32 = &dword_1EB58E000;
          if (!v34)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }
      }

      if (!v34)
      {
LABEL_37:

        goto LABEL_38;
      }

LABEL_36:
      CFRelease(v34);
      goto LABEL_37;
    }

    goto LABEL_30;
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v14 = OUTLINED_FUNCTION_7_74();
  if (v14)
  {
    v36 = *v73;
LABEL_20:
    v37 = 0;
    while (1)
    {
      if (*v73 != v36)
      {
        objc_enumerationMutation(a2);
      }

      v38 = *(*(&v72 + 1) + 8 * v37);
      if ([v38 isMemberOfClass:objc_opt_class()])
      {
        if (([v38 captureFrameFlags] & 0x10) != 0 && objc_msgSend(objc_msgSend(v38, "portType"), "isEqualToString:", objc_msgSend(objc_msgSend(v4, "captureSettings"), "masterPortType")))
        {
          break;
        }
      }

      if (v14 == ++v37)
      {
        v14 = OUTLINED_FUNCTION_7_74();
        if (v14)
        {
          goto LABEL_20;
        }

        goto LABEL_28;
      }
    }

    v59 = v3;
    [v38 metadataTag];
    v7 = [OUTLINED_FUNCTION_5_85() copyDictionaryForTag:? err:?];
    v8 = [v38 captureFrameFlags];
    v6 = 0x1E696A000;
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_30:
    v14 = 0;
    goto LABEL_65;
  }

LABEL_28:
  v7 = 0;
LABEL_65:
  if (v76)
  {
    CFRelease(v76);
  }

  return v77[0];
}

- (uint64_t)_sensorRawSampleBufferWithBuffer:(void *)a3 metadata:(const void *)a4 rawThumbnailsBuffer:(const void *)a5 mainRawThumbnailBuffer:(const void *)a6 sifrRawThumbnailBuffer:(const void *)a7 dngDictionary:(uint64_t)a8 captureFrameFlags:(void *)a9 stillImageSettings:(CMSampleBufferRef *)a10 sampleBufferOut:
{
  if (!a1)
  {
    return 0;
  }

  v34[0] = 0;
  v11 = 4294954516;
  if (a2 && a3 && a9 && a10)
  {
    memset(&v33, 0, sizeof(v33));
    CMTimeMakeFromDictionary(&v33, [a3 objectForKeyedSubscript:*off_1E798A420]);
    if ((a8 & 0x4000000000000000) != 0)
    {
      v32.duration = v33;
      v11 = BWSampleBufferCreateFromPixelBuffer(a2, &v32, (a1 + 64), v34);
    }

    else
    {
      *&v32.duration.value = *MEMORY[0x1E6960C70];
      v32.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
      v32.presentationTimeStamp = v33;
      v32.decodeTimeStamp = v32.duration;
      v11 = OUTLINED_FUNCTION_7_17(*MEMORY[0x1E695E480], v18, v19, v20, v21, v22, v23, v24, &v32, 0, 0, v34);
      v25 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{a2, *off_1E798A2D0, 0}];
      v26 = [objc_msgSend(a3 objectForKeyedSubscript:{*off_1E798B5E8), "BOOLValue"}];
      v27 = off_1E798A468;
      if (!v26)
      {
        v27 = off_1E798A448;
      }

      CMSetAttachment(v34[0], *v27, v25, 1u);
    }

    if (!v11)
    {
      CMSetAttachment(v34[0], *off_1E798A3C8, a3, 1u);
      CMSetAttachment(v34[0], @"StillSettings", a9, 1u);
      OUTLINED_FUNCTION_59([a9 requestedSettings]);
      OUTLINED_FUNCTION_59([a9 captureSettings]);
      OUTLINED_FUNCTION_59([MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(a9, "captureSettings"), "captureType")}]);
      OUTLINED_FUNCTION_59([objc_msgSend(a9 "processingSettings")]);
      OUTLINED_FUNCTION_59([MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a8]);
      OUTLINED_FUNCTION_0_114([objc_msgSend(objc_msgSend(a9 "captureSettings")]);
      OUTLINED_FUNCTION_0_114([objc_msgSend(objc_msgSend(a9 "captureSettings")]);
      v28 = MEMORY[0x1E696AD98];
      [objc_msgSend(objc_msgSend(a9 "captureSettings")];
      OUTLINED_FUNCTION_0_114([v28 numberWithFloat:?]);
      v29 = MEMORY[0x1E696AD98];
      [objc_msgSend(objc_msgSend(a9 "captureSettings")];
      OUTLINED_FUNCTION_0_114([v29 numberWithFloat:?]);
      OUTLINED_FUNCTION_0_114([MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(objc_msgSend(a9, "captureSettings"), "metadata"), "deviceType")}]);
      if (a4)
      {
        CMSetAttachment(v34[0], *off_1E798A458, a4, 1u);
      }

      if (a5)
      {
        CMSetAttachment(v34[0], *off_1E798A3C0, a5, 1u);
      }

      if (a6)
      {
        CMSetAttachment(v34[0], *off_1E798A470, a6, 1u);
      }

      if (a7)
      {
        CMSetAttachment(v34[0], @"RawDNGDictionary", a7, 1u);
      }

      v11 = 0;
      *a10 = v34[0];
    }
  }

  return v11;
}

- (id)_getOriginalCameraIntrinsicsForPortType:(id)result
{
  if (result)
  {
    if (a2)
    {
      v2 = result;
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", BWDeferredIntermediateTagSampleBufferOriginalCameraIntrinsicsPrefix, a2];
      v4 = [objc_msgSend(objc_msgSend(v2 "currentRequest")];
      if ([v4 hasTag:v3])
      {
        v6 = 0;
        v5 = [v4 copyDictionaryForTag:v3 err:&v6];
        return v5;
      }
    }

    else
    {
      FigDebugAssert3();
    }

    v5 = 0;
    return v5;
  }

  return result;
}

@end