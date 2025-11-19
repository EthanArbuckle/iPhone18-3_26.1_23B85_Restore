@interface BWStillImageScalerNode
+ (void)initialize;
- (BWStillImageScalerNode)initWithBasePoolCapacity:(int)a3 nodeConfiguration:(id)a4;
- (uint64_t)_buildPrimaryFormatScalingSession;
- (uint64_t)_outputDimensionsForAttachedMediaKey:(unint64_t)a3 attachedMediaMainImageDownscalingFactor:(unint64_t)a4 primaryMediaWidth:(unint64_t)a5 primaryMediaHeight:(unint64_t)a6 requestedWidth:(int)a7 requestedHeight:(int)a8 zoomWithoutUpscalingEnabled:(float)a9 aspectRatio:(double)a10 inputDimensions:(double)a11 normalizedZoomRect:(double)a12 optimizedEnhancedResolutionDepthCapture:(double)a13;
- (uint64_t)_removeUnmodifiedAttachedMedias:(uint64_t)a1;
- (uint64_t)_resolveScalerModeWithSettings:(uint64_t)a3 inputDimensions:(int)a4 inputPixelFormat:(unint64_t)a5 outputDimensions:(void *)a6 normalizedInputCropRect:(int *)a7 attachedMediaThatRequiresDifferentScalingThanPrimaryMedia:(CGFloat *)a8 stillImageScalerModeOut:(double)a9 scaledDenormalizedInputCropRectOut:(double)a10 mediaToProcessOut:(double)a11;
- (uint64_t)_resolvedPoolCapacityForSettings:(uint64_t)a3 inputDimensions:(uint64_t)a4 outputDimensions:;
- (uint64_t)_shouldPurgeAllResourcesAfterProcessingSettings:(uint64_t)result;
- (uint64_t)mainImageDownscalingFactorForAttachedMediaKey:(void *)a3 attachedMediaMetadata:;
- (unint64_t)_resolveOutputDimensionsForSampleBuffer:(void *)a3 settings:(uint64_t)a4 inputDimensions:;
- (void)_attachedMediaKeysThatRequireDifferentScalingThanPrimaryMediaSampleBuffer:primaryMediaNormalizedInputCropRect:primaryMediaRequestedOutputWidth:primaryMediaRequestedOutputHeight:;
- (void)_blackenBorderForAttachedMedia:sampleBuffer:normalizedInputCropRect:requestedSettings:;
- (void)_purgeResourcesLeavingThemForMediaToProcess:(uint64_t)a1;
- (void)_rebuildBufferPoolForAttachedMediaKey:(uint64_t)a3 attachedMediaMainImageDownscalingFactor:(uint64_t)a4 inputDimensions:(void *)a5 outputDimensions:(float)a6 settings:;
- (void)_rebuildPrimaryFormatBufferPoolForInputDimensions:(uint64_t)a3 inputPixelFormat:(uint64_t)a4 outputDimensions:(void *)a5 settings:;
- (void)_zoomAttachedMedia:sampleBuffer:;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)didSelectFormat:(id)a3 forInput:(id)a4;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
- (void)setBlackFillingRequired:(BOOL)a3;
- (void)setMainImageDownscalingFactorByAttachedMediaKey:(id)a3;
- (void)setOutputSizeByAttachedMediaKey:(id)a3;
@end

@implementation BWStillImageScalerNode

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWStillImageScalerNode)initWithBasePoolCapacity:(int)a3 nodeConfiguration:(id)a4
{
  if (a3 <= 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"baseCapacity must be >= 1" userInfo:0]);
  }

  v11.receiver = self;
  v11.super_class = BWStillImageScalerNode;
  v6 = [(BWNode *)&v11 init];
  v7 = v6;
  if (v6)
  {
    [(BWNode *)v6 setSupportsLiveReconfiguration:1];
    v7->_nodeConfiguration = a4;
    v8 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v7];
    [(BWNodeInput *)v8 setFormatRequirements:+[BWVideoFormatRequirements formatRequirements]];
    [(BWNodeInput *)v8 setPassthroughMode:2];
    [(BWNode *)v7 addInput:v8];
    v9 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v7];
    [(BWNodeOutput *)v9 setFormatRequirements:+[BWVideoFormatRequirements formatRequirements]];
    [(BWNodeOutput *)v9 setPassthroughMode:2];
    [(BWNodeOutput *)v9 setProvidesPixelBufferPool:0];
    [(BWNode *)v7 addOutput:v9];
    v7->_poolBaseCapacity = a3;
  }

  return v7;
}

- (void)dealloc
{
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  scalingSession = self->_scalingSession;
  if (scalingSession)
  {
    CFRelease(scalingSession);
  }

  attachedMediaScalingSession = self->_attachedMediaScalingSession;
  if (attachedMediaScalingSession)
  {
    CFRelease(attachedMediaScalingSession);
  }

  v6.receiver = self;
  v6.super_class = BWStillImageScalerNode;
  [(BWNode *)&v6 dealloc];
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4
{
  v6 = objc_alloc_init(BWVideoFormatRequirements);
  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "pixelFormat")}];
  -[BWVideoFormatRequirements setSupportedPixelFormats:](v6, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1]);
  resizedOutputDimensions = self->_resizedOutputDimensions;
  if (resizedOutputDimensions.width < 1 || resizedOutputDimensions.height < 1)
  {
    -[BWVideoFormatRequirements setWidth:](v6, "setWidth:", [a3 width]);
    height = [a3 height];
  }

  else
  {
    [(BWVideoFormatRequirements *)v6 setWidth:*&self->_resizedOutputDimensions & 0x7FFFFFFFLL];
    height = self->_resizedOutputDimensions.height;
  }

  [(BWVideoFormatRequirements *)v6 setHeight:height];
  [(BWVideoFormatRequirements *)v6 setSupportedCacheModes:+[BWVideoFormatRequirements cacheModesForOptimizedHWAccess]];
  if ([a3 colorSpaceProperties])
  {
    v29 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a3, "colorSpaceProperties")}];
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  }

  else
  {
    v10 = 0;
  }

  [(BWVideoFormatRequirements *)v6 setSupportedColorSpaceProperties:v10];
  [(BWNodeOutput *)self->super._output setFormatRequirements:v6];
  [(BWNodeInput *)self->super._input setPassthroughMode:0];
  [(BWNodeOutput *)self->super._output setPassthroughMode:0];
  v11 = [MEMORY[0x1E695DF70] array];
  if ([(NSDictionary *)self->_mainImageDownscalingFactorByAttachedMediaKey count])
  {
    [v11 addObjectsFromArray:{-[NSDictionary allKeys](self->_mainImageDownscalingFactorByAttachedMediaKey, "allKeys")}];
  }

  if ([(NSDictionary *)self->_outputSizeByAttachedMediaKey count])
  {
    [v11 addObjectsFromArray:{-[NSDictionary allKeys](self->_outputSizeByAttachedMediaKey, "allKeys")}];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    obj = v11;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v25 + 1) + 8 * v15);
        [-[NSDictionary objectForKeyedSubscript:](self->_mainImageDownscalingFactorByAttachedMediaKey objectForKeyedSubscript:{v16), "floatValue"}];
        if (v17 == 0.0 && ![(NSDictionary *)self->_outputSizeByAttachedMediaKey objectForKeyedSubscript:v16])
        {
          [(BWNodeInput *)self->super._input setMediaConfiguration:0 forAttachedMediaKey:v16];
          v19 = 0;
        }

        else
        {
          v18 = objc_alloc_init(BWNodeInputMediaConfiguration);
          [(BWNodeInputMediaConfiguration *)v18 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
          [(BWNodeInputMediaConfiguration *)v18 setPassthroughMode:0];
          [(BWNodeInput *)self->super._input setMediaConfiguration:v18 forAttachedMediaKey:v16];
          v19 = objc_alloc_init(BWNodeOutputMediaConfiguration);
          v20 = [v16 isEqualToString:0x1F21AAF90];
          v21 = v6;
          if ((v20 & 1) == 0)
          {
            v21 = objc_alloc_init(BWVideoFormatRequirements);
          }

          [(BWNodeOutputMediaConfiguration *)v19 setFormatRequirements:v21];
          [(BWNodeOutputMediaConfiguration *)v19 setPassthroughMode:1];
        }

        [(BWNodeOutput *)self->super._output setMediaConfiguration:v19 forAttachedMediaKey:v16];
        ++v15;
      }

      while (v13 != v15);
      v22 = [obj countByEnumeratingWithState:&v25 objects:v24 count:16];
      v13 = v22;
    }

    while (v22);
  }
}

- (void)setBlackFillingRequired:(BOOL)a3
{
  v3 = a3;
  if (FigCapturePlatformSupportsUniversalCompression())
  {
    v5 = [(BWNodeInput *)self->super._input formatRequirements];
    if (v3)
    {
      v6 = &unk_1F2248388;
    }

    else
    {
      v6 = 0;
    }

    [(BWFormatRequirements *)v5 setSupportedPixelFormats:v6];
  }

  self->_blackFillingRequired = v3;
}

- (void)setMainImageDownscalingFactorByAttachedMediaKey:(id)a3
{
  mainImageDownscalingFactorByAttachedMediaKey = self->_mainImageDownscalingFactorByAttachedMediaKey;
  if (mainImageDownscalingFactorByAttachedMediaKey != a3)
  {

    self->_mainImageDownscalingFactorByAttachedMediaKey = [a3 copy];
  }
}

- (void)setOutputSizeByAttachedMediaKey:(id)a3
{
  outputSizeByAttachedMediaKey = self->_outputSizeByAttachedMediaKey;
  if (outputSizeByAttachedMediaKey != a3)
  {

    self->_outputSizeByAttachedMediaKey = [a3 copy];
  }
}

- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4
{
  if (dword_1ED8444F0)
  {
    v10 = 0;
    v9 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(BWStillImageScalerNode *)self _purgeResourcesLeavingThemForMediaToProcess:?];
  v8.receiver = self;
  v8.super_class = BWStillImageScalerNode;
  [(BWNode *)&v8 didReachEndOfDataForConfigurationID:a3 input:a4];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  target = 0;
  v96 = self;
  if (!a3 || (ImageBuffer = CMSampleBufferGetImageBuffer(a3)) == 0 || (v7 = ImageBuffer, Width = CVPixelBufferGetWidth(ImageBuffer), Height = CVPixelBufferGetHeight(v7), PixelFormatType = CVPixelBufferGetPixelFormatType(v7), (v11 = CMGetAttachment(a3, *off_1E798A3C8, 0)) == 0))
  {
    v44 = 0;
    v93 = 0;
LABEL_78:
    v42 = 0;
    LOBYTE(v40) = 1;
    goto LABEL_41;
  }

  v12 = v11;
  v13 = CMGetAttachment(a3, @"StillSettings", 0);
  v93 = v12;
  if (!v13)
  {
    v44 = 0;
    goto LABEL_78;
  }

  sourceBuffer = v7;
  v14 = Width | (Height << 32);
  v95 = v13;
  v15 = [v13 requestedSettings];
  v16 = [(BWStillImageScalerNode *)self _resolveOutputDimensionsForSampleBuffer:a3 settings:v15 inputDimensions:v14];
  FinalCropRect = FigCaptureMetadataUtilitiesGetFinalCropRect();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v91 = PixelFormatType;
  if (dword_1ED8444F0)
  {
    v101 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v86 = v16 >> 32;
  v87 = v16;
  [BWStillImageScalerNode _attachedMediaKeysThatRequireDifferentScalingThanPrimaryMediaSampleBuffer:primaryMediaNormalizedInputCropRect:primaryMediaRequestedOutputWidth:primaryMediaRequestedOutputHeight:];
  v26 = v25;
  v99 = 0;
  v98.origin.x = FigCaptureRectFromDimensions();
  v98.origin.y = v27;
  v98.size.width = v28;
  v98.size.height = v29;
  v97 = 0;
  v30 = [(BWStillImageScalerNode *)self _resolveScalerModeWithSettings:v15 inputDimensions:v14 inputPixelFormat:PixelFormatType outputDimensions:v16 normalizedInputCropRect:v26 attachedMediaThatRequiresDifferentScalingThanPrimaryMedia:&v99 stillImageScalerModeOut:&v98.origin.x scaledDenormalizedInputCropRectOut:FinalCropRect mediaToProcessOut:v19, v21, v23, &v97];
  if (v30)
  {
    v43 = v30;
    v42 = 0;
    LOBYTE(v40) = 1;
    goto LABEL_82;
  }

  v31 = v97;
  v32 = [MEMORY[0x1E695DF70] arrayWithArray:v97];
  memset(v107, 0, sizeof(v107));
  v108 = 0u;
  v109 = 0u;
  v33 = [v31 countByEnumeratingWithState:v107 objects:&v103 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v107[2];
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v107[2] != v35)
        {
          objc_enumerationMutation(v31);
        }

        v37 = *(v107[1] + 8 * i);
        if (([v37 isEqualToString:@"PrimaryFormat"] & 1) == 0 && !BWSampleBufferGetAttachedMedia(a3, v37))
        {
          [v32 removeObject:v37];
        }
      }

      v34 = [v31 countByEnumeratingWithState:v107 objects:&v103 count:16];
    }

    while (v34);
  }

  v90 = v16;
  v97 = [v32 copy];
  v38 = [CMGetAttachment(a3 @"NonProcessedReferenceFrame"];
  if (v38)
  {
    v39 = [MEMORY[0x1E695DF70] arrayWithArray:v97];
    [v39 removeObject:@"PrimaryFormat"];
    v97 = v39;
  }

  if ([CMGetAttachment(a3 @"StillImageBufferFrameType"] == 40)
  {
    v40 = 1;
  }

  else
  {
    v40 = v38 ^ 1;
  }

  v41 = v96;
  if (v40 == 1)
  {
    [(BWStillImageScalerNode *)v96 _purgeResourcesLeavingThemForMediaToProcess:v97];
  }

  v42 = 0;
  v43 = 0;
  if (v99 > 2)
  {
    if ((v99 - 3) < 2)
    {
      if (CMSampleBufferGetImageBuffer(a3))
      {
        if (dword_1ED8444F0)
        {
          v101 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v47 = v101;
          if (os_log_type_enabled(v46, type))
          {
            v48 = v47;
          }

          else
          {
            v48 = v47 & 0xFFFFFFFE;
          }

          if (v48)
          {
            v49 = BWStringFromCGRect(v98.origin.x, v98.origin.y, v98.size.width, v98.size.height);
            v50 = BWStringFromPixelBuffer();
            LODWORD(v107[0]) = 136315650;
            *(v107 + 4) = "[BWStillImageScalerNode renderSampleBuffer:forInput:]";
            WORD2(v107[1]) = 2112;
            *(&v107[1] + 6) = v49;
            HIWORD(v107[2]) = 2112;
            v107[3] = v50;
            LODWORD(v85) = 32;
            v84 = v107;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v51 = VTFillPixelBufferBorderWithBlack();
        if (!v51)
        {
          CMSetAttachment(a3, *off_1E798A5E0, MEMORY[0x1E695E118], 1u);
          [objc_msgSend(MEMORY[0x1E695DF70] arrayWithArray:{v97), "removeObject:", @"PrimaryFormat"}];
          [BWStillImageScalerNode _blackenBorderForAttachedMedia:sampleBuffer:normalizedInputCropRect:requestedSettings:];
          if (v99 != 4)
          {
            v42 = 0;
            v44 = v95;
LABEL_50:
            [(BWNodeOutput *)v96->super._output emitSampleBuffer:a3, v84, v85];
            v59 = MEMORY[0x1E695FF58];
            if (!v40)
            {
              goto LABEL_89;
            }

            goto LABEL_96;
          }

          v45 = v40;
          v98.origin.x = FigCaptureRectFromDimensions();
          v98.origin.y = v52;
          v98.size.width = v53;
          v98.size.height = v54;
          goto LABEL_46;
        }

        v43 = v51;
        v42 = 0;
      }

      else
      {
        v42 = 0;
        v43 = 4294954516;
      }
    }

LABEL_82:
    v44 = v95;
    goto LABEL_83;
  }

  v44 = v95;
  if (!v99)
  {
    v42 = 0;
LABEL_41:
    v43 = 4294954516;
    goto LABEL_83;
  }

  if (v99 != 1)
  {
    if (v99 != 2)
    {
      goto LABEL_83;
    }

    v45 = v40;
LABEL_46:
    v55 = [MEMORY[0x1E695DF70] arrayWithArray:{v97, v84, v85}];
    [v55 removeObject:@"PrimaryFormat"];
    v56 = [v97 containsObject:@"PrimaryFormat"];
    v57 = [v55 count];
    v58 = v57;
    if (!v56)
    {
      v42 = 0;
      if (!v57)
      {
LABEL_48:
        v44 = v95;
        v40 = v45;
        goto LABEL_49;
      }

LABEL_73:
      [BWStillImageScalerNode _zoomAttachedMedia:sampleBuffer:];
      goto LABEL_48;
    }

    if (v87 == [(BWPixelBufferPool *)v96->_pool width]&& v86 == [(BWPixelBufferPool *)v96->_pool height])
    {
      v60 = [(BWStillImageScalerNode *)v96 _resolvedPoolCapacityForSettings:v95 inputDimensions:v14 outputDimensions:v90];
      if ([(BWPixelBufferPool *)v96->_pool capacity]!= v60)
      {
        [(BWPixelBufferPool *)v96->_pool setCapacity:v60];
      }
    }

    else
    {
      [(BWStillImageScalerNode *)v96 _rebuildPrimaryFormatBufferPoolForInputDimensions:v14 inputPixelFormat:v91 outputDimensions:v90 settings:v95];
      if (v61)
      {
        goto LABEL_76;
      }
    }

    if (v96->_scalingSession || (v61 = [(BWStillImageScalerNode *)v96 _buildPrimaryFormatScalingSession], !v61))
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"NewPixelBuffer-%@", @"PrimaryFormat"];
      v42 = [(BWPixelBufferPool *)v96->_pool newPixelBuffer];
      if (v42)
      {
        CopyWithNewPixelBuffer = BWCMSampleBufferCreateCopyWithNewPixelBuffer(a3, v42, &v96->_outputFormatDescription, &target);
        if (!CopyWithNewPixelBuffer)
        {
          v63 = BWCMSampleBufferCopyReattachAndReturnMutableMetadata(target);
          v64 = CGRectCreateDictionaryRepresentation(v98);
          if (!v64)
          {
            v43 = 4294954516;
            goto LABEL_101;
          }

          CopyWithNewPixelBuffer = VTSessionSetProperty(v96->_scalingSession, *MEMORY[0x1E6983E40], v64);
          if (!CopyWithNewPixelBuffer)
          {
            if (dword_1ED8444F0)
            {
              v92 = v63;
              v94 = v58;
              v101 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v65 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v66 = v101;
              if (os_log_type_enabled(v65, type))
              {
                v67 = v66;
              }

              else
              {
                v67 = v66 & 0xFFFFFFFE;
              }

              if (v67)
              {
                v88 = BWStringFromPixelBuffer();
                v68 = BWStringFromCGRect(v98.origin.x, v98.origin.y, v98.size.width, v98.size.height);
                v69 = BWStringFromPixelBuffer();
                LODWORD(v107[0]) = 136315906;
                *(v107 + 4) = "[BWStillImageScalerNode renderSampleBuffer:forInput:]";
                WORD2(v107[1]) = 2112;
                *(&v107[1] + 6) = v88;
                HIWORD(v107[2]) = 2112;
                v107[3] = v68;
                LOWORD(v108) = 2112;
                *(&v108 + 2) = v69;
                LODWORD(v85) = 42;
                v84 = v107;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v58 = v94;
              v63 = v92;
            }

            CopyWithNewPixelBuffer = VTPixelTransferSessionTransferImage(v96->_scalingSession, sourceBuffer, v42);
            if (!CopyWithNewPixelBuffer)
            {
              CVBufferRemoveAttachment(v42, *MEMORY[0x1E6965D70]);
              FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v63, v14, v90, v98.origin.x, v98.origin.y, v98.size.width, v98.size.height, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
              FigCaptureMetadataUtilitiesUpdateMetadataForNewFinalDimensions(v63, v14, v90);
              BWUpdateLandmarksForStillImageCrop();
              FigCaptureMetadataUtilitiesPreventFurtherCropping(v63, v70);
              [(BWMemoryAnalyticsPayload *)[(BWGraph *)[(BWNode *)v96 graph] memoryAnalyticsPayload] setScaledStillCaptureTaken:1];
              v110.width = v90;
              v110.height = SHIDWORD(v90);
              DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v110);
              CMSetAttachment(target, @"OriginalCameraIntrinsicMatrixReferenceDimensions", DictionaryRepresentation, 1u);

              v72 = FigCaptureRectFromDimensions();
              BWUpdateCameraIntrinsicsMatrixOnSampleBuffer(target, @"OriginalCameraIntrinsicMatrix", 0, 0, v98.origin.x, v98.origin.y, v98.size.width, v98.size.height, v72, v73, v74, v75);
              a3 = target;
              if (!v58)
              {
                goto LABEL_48;
              }

              goto LABEL_73;
            }
          }
        }

        v43 = CopyWithNewPixelBuffer;
      }

      else
      {
        [BWStillImageScalerNode renderSampleBuffer:forInput:];
        v43 = 4294954510;
      }

LABEL_101:
      v44 = v95;
      LOBYTE(v40) = v45;
      goto LABEL_83;
    }

LABEL_76:
    v43 = v61;
    v42 = 0;
    goto LABEL_101;
  }

LABEL_49:
  if (a3)
  {
    goto LABEL_50;
  }

  v43 = 0;
LABEL_83:
  FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
  v101 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  v77 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v78 = v101;
  if (os_log_type_enabled(v77, type))
  {
    v79 = v78;
  }

  else
  {
    v79 = v78 & 0xFFFFFFFE;
  }

  if (v79)
  {
    v80 = [objc_msgSend(v44 "requestedSettings")];
    LODWORD(v107[0]) = 136315650;
    *(v107 + 4) = "[BWStillImageScalerNode renderSampleBuffer:forInput:]";
    WORD2(v107[1]) = 2048;
    *(&v107[1] + 6) = v80;
    HIWORD(v107[2]) = 1024;
    LODWORD(v107[3]) = v43;
    _os_log_send_and_compose_impl();
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v81 = [objc_msgSend(v44 "requestedSettings")];
  v103 = 134218240;
  v104 = v81;
  v105 = 1024;
  v106 = v43;
  v82 = _os_log_send_and_compose_impl();
  FigCapturePleaseFileRadar(FrameworkRadarComponent, v82, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageScalerNode.m", 589, @"LastShownDate:BWStillImageScalerNode.m:589", @"LastShownBuild:BWStillImageScalerNode.m:589", 0);
  free(v82);
  v41 = v96;
  v83 = [BWNodeError newError:v43 sourceNode:v96 stillImageSettings:v44 metadata:v93];
  [(BWNodeOutput *)v96->super._output emitNodeError:v83];

  v59 = MEMORY[0x1E695FF58];
  if (v40)
  {
LABEL_96:
    if ([(BWStillImageScalerNode *)v41 _shouldPurgeAllResourcesAfterProcessingSettings:v44])
    {
      [(BWStillImageScalerNode *)v41 _purgeResourcesLeavingThemForMediaToProcess:?];
    }
  }

LABEL_89:
  if (v42)
  {
    CFRelease(v42);
  }

  if (target)
  {
    CFRelease(target);
  }

  if (*v59 == 1)
  {
    kdebug_trace();
  }
}

- (uint64_t)mainImageDownscalingFactorForAttachedMediaKey:(void *)a3 attachedMediaMetadata:
{
  if (result)
  {
    v4 = result;
    result = [objc_msgSend(a3 objectForKeyedSubscript:{*off_1E798A788), "floatValue"}];
    if (*(v4 + 220) != 1 || v5 == 0.0)
    {
      v6 = [*(v4 + 176) objectForKeyedSubscript:a2];

      return [v6 floatValue];
    }
  }

  return result;
}

- (void)_purgeResourcesLeavingThemForMediaToProcess:(uint64_t)a1
{
  if (a1 && (*(a1 + 152) || [*(a1 + 192) count]))
  {
    [a2 count];
    if (([a2 containsObject:@"PrimaryFormat"] & 1) == 0)
    {
      v4 = *(a1 + 152);
      if (v4)
      {

        *(a1 + 152) = 0;
        v5 = *(a1 + 160);
        if (v5)
        {
          CFRelease(v5);
          *(a1 + 160) = 0;
        }
      }
    }

    v6 = [MEMORY[0x1E695DF70] array];
    v7 = *(a1 + 192);
    v15 = OUTLINED_FUNCTION_4_2(v6, v8, v9, v10, v11, v12, v13, v14, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, 0);
    if (v15)
    {
      v16 = v15;
      v17 = MEMORY[0];
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (MEMORY[0] != v17)
          {
            objc_enumerationMutation(v7);
          }

          v19 = *(8 * i);
          v20 = [a2 containsObject:v19];
          if ((v20 & 1) == 0)
          {
            v20 = [v6 addObject:v19];
          }
        }

        v16 = OUTLINED_FUNCTION_4_2(v20, v21, v22, v23, v24, v25, v26, v27, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v61);
      }

      while (v16);
    }

    [*(a1 + 192) removeObjectsForKeys:v6];
    if (![*(a1 + 192) count])
    {
      v28 = *(a1 + 200);
      if (v28)
      {
        CFRelease(v28);
        *(a1 + 200) = 0;
      }
    }
  }
}

- (unint64_t)_resolveOutputDimensionsForSampleBuffer:(void *)a3 settings:(uint64_t)a4 inputDimensions:
{
  if (!a1)
  {
    return 0;
  }

  v8 = CMGetAttachment(target, *off_1E798A3C8, 0);
  v9 = [CMGetAttachment(target @"StillImageBufferFrameType"];
  v10 = [v8 objectForKeyedSubscript:*off_1E798A780];
  v11 = BWStillImageProcessingFlagsForSampleBuffer(target);
  v12 = [a3 outputDimensions];
  if ([*(a1 + 128) optimizedEnhancedResolutionDepthPipelineEnabled])
  {
    v13 = v9 == 13;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v28 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(a4, [a3 outputWidth] / objc_msgSend(a3, "outputHeight"));
  }

  else
  {
    v14 = [*(a1 + 128) stereoPhotoOutputDimensions];
    if (v14 < 1 || SHIDWORD(v14) < 1 || (v11 & 0x100000) == 0)
    {
      v17 = *(a1 + 212);
      v18 = HIDWORD(v17);
      if (v17 < 1 || SHIDWORD(v17) <= 0)
      {
        v18 = HIDWORD(v12);
        if (v10)
        {
          [v10 floatValue];
          v21 = FigCaptureScaledDimensions(v12, v20);
          v22 = v21;
          v23 = HIDWORD(v21);
          if (v12 < SHIDWORD(v12))
          {
            LODWORD(v12) = v21;
          }

          else
          {
            v18 = HIDWORD(v21);
          }

          v24 = FigCaptureAspectRatioForDimensions([a3 outputDimensions]);
          v25 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(v12 | (v18 << 32), v24);
          if (v22 != 2016 && a4 == 0x5E8000007E0 && v23 == 1512)
          {
            v12 = 0x5E8000007E0;
          }

          else
          {
            v12 = v25;
          }

          v18 = HIDWORD(v12);
        }
      }

      else
      {
        v12 = *(a1 + 212);
      }

      return v12 | (v18 << 32);
    }

    v28 = [*(a1 + 128) stereoPhotoOutputDimensions];
  }

  LODWORD(v12) = v28;
  v18 = HIDWORD(v28);
  return v12 | (v18 << 32);
}

- (void)_attachedMediaKeysThatRequireDifferentScalingThanPrimaryMediaSampleBuffer:primaryMediaNormalizedInputCropRect:primaryMediaRequestedOutputWidth:primaryMediaRequestedOutputHeight:
{
  OUTLINED_FUNCTION_6_4();
  v68 = v4;
  v69 = v5;
  v66 = v6;
  v67 = v7;
  if (v0)
  {
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    v60 = [MEMORY[0x1E695DF70] array];
    v61 = CMGetAttachment(v10, @"StillSettings", 0);
    v12 = [v61 requestedSettings];
    BWSampleBufferCopyDictionaryOfAttachedMedia(v10);
    v13 = OUTLINED_FUNCTION_14_9();
    obj = v14;
    v15 = [v14 countByEnumeratingWithState:v13 objects:? count:?];
    if (!v15)
    {
      goto LABEL_39;
    }

    v16 = v15;
    OUTLINED_FUNCTION_13_13();
    v64 = v17;
    key = *off_1E798A3C8;
    v65 = v10;
    while (1)
    {
      v18 = 0;
      do
      {
        OUTLINED_FUNCTION_13_13();
        if (v19 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(v71[1] + 8 * v18);
        AttachedMedia = BWSampleBufferGetAttachedMedia(v10, v20);
        v22 = CMGetAttachment(AttachedMedia, key, 0);
        [(BWStillImageScalerNode *)v11 mainImageDownscalingFactorForAttachedMediaKey:v20 attachedMediaMetadata:v22];
        v24 = v23;
        if ([*(v11 + 128) optimizedEnhancedResolutionDepthPipelineEnabled])
        {
          v25 = ([objc_msgSend(v61 "captureSettings")] >> 11) & 1;
        }

        else
        {
          LOBYTE(v25) = 0;
        }

        FinalCropRect = FigCaptureMetadataUtilitiesGetFinalCropRect();
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v33 = BWPixelBufferDimensionsFromSampleBuffer(AttachedMedia);
        v34 = -[BWStillImageScalerNode _outputDimensionsForAttachedMediaKey:attachedMediaMainImageDownscalingFactor:primaryMediaWidth:primaryMediaHeight:requestedWidth:requestedHeight:zoomWithoutUpscalingEnabled:aspectRatio:inputDimensions:normalizedZoomRect:optimizedEnhancedResolutionDepthCapture:](v11, v20, v68, v69, [v12 outputWidth], objc_msgSend(v12, "outputHeight"), objc_msgSend(v12, "isZoomWithoutUpscalingEnabled"), objc_msgSend(v12, "aspectRatio"), v24, FinalCropRect, v28, v30, v32, v33, v25);
        if (([v20 isEqualToString:0x1F21AAF70] & 1) == 0 && (objc_msgSend(v20, "isEqualToString:", 0x1F21AAFF0) & 1) == 0 && (objc_msgSend(v20, "isEqualToString:", 0x1F21AAFB0) & 1) == 0 && (objc_msgSend(v20, "isEqualToString:", 0x1F21AB010) & 1) == 0 && (objc_msgSend(v20, "isEqualToString:", 0x1F21AB030) & 1) == 0)
        {
          v74.origin.x = OUTLINED_FUNCTION_1_10();
          v77.origin.x = v9;
          v77.origin.y = v8;
          v77.size.width = v66;
          v77.size.height = v67;
          if (!CGRectEqualToRect(v74, v77) || v33 != v34)
          {
            v37 = FigCaptureAspectRatioForDimensions(v34);
            goto LABEL_24;
          }

          v36 = 1;
          goto LABEL_21;
        }

        v72.origin.x = OUTLINED_FUNCTION_1_10();
        v75.origin.x = v9;
        v75.origin.y = v8;
        v75.size.width = v66;
        v75.size.height = v67;
        if (CGRectEqualToRect(v72, v75) && v33 == v34)
        {
          v36 = 0;
LABEL_21:
          FigCaptureUnityRect();
          v73.origin.x = OUTLINED_FUNCTION_1_10();
          if (CGRectEqualToRect(v73, v76) || (v36 & 1) != 0)
          {
            goto LABEL_32;
          }
        }

        v37 = v30 / v32;
LABEL_24:
        if (v24 == 0.0)
        {
          if (![*(v11 + 184) objectForKeyedSubscript:v20])
          {
            goto LABEL_32;
          }

          v49 = OUTLINED_FUNCTION_1_10();
          FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v50, v51, v49, v52, v53, v54, v37);
        }

        else
        {
          v38 = OUTLINED_FUNCTION_1_10();
          v45 = FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRectForAttachedMedia(v39, v40, v38, v41, v42, v43, v37, v44);
        }

        v55 = v45;
        v56 = v46;
        v57 = v47;
        v58 = v48;
        if (CGRectIsNull(*&v45))
        {
          OUTLINED_FUNCTION_0();
          FigDebugAssert3();
        }

        if (!sis_encoderCanCropDenormalizedZoomRect(v34, v55, v56, v57, v58))
        {
          [v60 addObject:v20];
        }

LABEL_32:
        ++v18;
        v10 = v65;
      }

      while (v16 != v18);
      v59 = [obj countByEnumeratingWithState:v71 objects:v70 count:16];
      v16 = v59;
      if (!v59)
      {
LABEL_39:

        [v60 count];
        break;
      }
    }
  }

  OUTLINED_FUNCTION_5_5();
}

- (uint64_t)_resolveScalerModeWithSettings:(uint64_t)a3 inputDimensions:(int)a4 inputPixelFormat:(unint64_t)a5 outputDimensions:(void *)a6 normalizedInputCropRect:(int *)a7 attachedMediaThatRequiresDifferentScalingThanPrimaryMedia:(CGFloat *)a8 stillImageScalerModeOut:(double)a9 scaledDenormalizedInputCropRectOut:(double)a10 mediaToProcessOut:(double)a11
{
  if (result)
  {
    v13 = result;
    result = 0;
    if (a7)
    {
      if (a8 && a13)
      {
        v23 = [objc_msgSend(a2 "bravoConstituentImageDeliveryDeviceTypes")];
        OUTLINED_FUNCTION_12_13();
        if (v26 >= 0x10)
        {
          v27 = v24;
        }

        else
        {
          v27 = v25;
        }

        v28 = FigCapturePixelFormatGetCompressionType(a4) != 0;
        v29 = [a2 outputFormat] == 1785750887 || objc_msgSend(a2, "outputFormat") == 1752589105;
        v30 = FigCapturePixelFormatIsDemosaicedRaw([a2 rawOutputFormat]) && objc_msgSend(a2, "outputFormat") == 0;
        if (*(v13 + 169) == 1)
        {
          v31 = BWCIFilterArrayContainsPortraitFilters([a2 processedImageFilters]) ^ 1;
        }

        else
        {
          LOBYTE(v31) = 1;
        }

        v32 = FigCaptureAspectRatioForDimensions(a5);
        FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(a3, a3 >> 32, a9, a10, a11, a12, v32);
        x = v54.origin.x;
        y = v54.origin.y;
        width = v54.size.width;
        height = v54.size.height;
        if (CGRectIsNull(v54))
        {
          OUTLINED_FUNCTION_0();
          FigDebugAssert3();
          return 4294954516;
        }

        else
        {
          v37 = v28 & v27;
          FigCaptureRectFromDimensions();
          v55.origin.x = OUTLINED_FUNCTION_3();
          v38 = CGRectContainsRect(v55, v56);
          if (v29 || v30)
          {
            v39 = OUTLINED_FUNCTION_3();
            v43 = !sis_encoderCanCropDenormalizedZoomRect(a5, v39, v40, v41, v42);
            if (a3 == a5)
            {
              LOBYTE(v43) = 1;
            }

            if (v23)
            {
              LOBYTE(v43) = 1;
            }

            v44 = ((v43 | v37) ^ 1) & v31;
          }

          else
          {
            v44 = 0;
          }

          v45 = a3 == a5 && v38;
          if (v45 & (v37 ^ 1) & 1) != 0 || (v44)
          {
            v50 = [a6 count];
            if (v50)
            {
              v49 = a6;
            }

            else
            {
              v49 = 0;
            }

            if (v50)
            {
              v47 = 2;
            }

            else
            {
              v47 = 1;
            }

            v46 = a7;
          }

          else
          {
            v46 = a7;
            if (v23)
            {
              if (a3 == a5)
              {
                v47 = 3;
              }

              else
              {
                v47 = 4;
              }

              [*(v13 + 176) allKeys];
              v48 = [OUTLINED_FUNCTION_7() setWithArray:?];
              [*(v13 + 184) allKeys];
              [OUTLINED_FUNCTION_7() addObjectsFromArray:?];
              [v48 addObject:@"PrimaryFormat"];
              v49 = [v48 allObjects];
            }

            else
            {
              [*(v13 + 176) allKeys];
              v51 = [OUTLINED_FUNCTION_7() setWithArray:?];
              [*(v13 + 184) allKeys];
              [OUTLINED_FUNCTION_7() addObjectsFromArray:?];
              [v51 addObject:@"PrimaryFormat"];
              v49 = [v51 allObjects];
              v47 = 2;
            }
          }

          result = 0;
          *v46 = v47;
          *a8 = x;
          a8[1] = y;
          a8[2] = width;
          a8[3] = height;
          *a13 = v49;
        }
      }
    }
  }

  return result;
}

- (void)_blackenBorderForAttachedMedia:sampleBuffer:normalizedInputCropRect:requestedSettings:
{
  OUTLINED_FUNCTION_6_4();
  v49 = v7;
  if (v0)
  {
    v8 = v3;
    v9 = v6;
    v10 = v5;
    v11 = v4;
    v12 = v2;
    v13 = v1;
    v14 = v0;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v53 = [v1 countByEnumeratingWithState:&v67 objects:v66 count:16];
    if (!v53)
    {
      goto LABEL_36;
    }

    key = *off_1E798A3C8;
    v52 = *v68;
    v50 = *off_1E798A5E0;
    v47 = v13;
    v48 = v8;
    while (1)
    {
      v15 = 0;
      do
      {
        OUTLINED_FUNCTION_13_13();
        if (v16 != v52)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v67 + 1) + 8 * v15);
        AttachedMedia = BWSampleBufferGetAttachedMedia(v12, v17);
        if (AttachedMedia)
        {
          v19 = AttachedMedia;
          ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
          if (!ImageBuffer || (v21 = ImageBuffer, v22 = CMGetAttachment(v19, key, 0), -[BWStillImageScalerNode mainImageDownscalingFactorForAttachedMediaKey:attachedMediaMetadata:](v14, v17, v22), v24 = v23, v23 == 0.0) && ![*(v14 + 184) objectForKeyedSubscript:v17])
          {
LABEL_33:
            BWSampleBufferRemoveAttachedMedia(v12, v17);
            goto LABEL_31;
          }

          v25 = [v8 outputWidth];
          v26 = v25 / [v8 outputHeight];
          if (v24 == 0.0)
          {
            v30 = *(MEMORY[0x1E695F050] + 16);
            v62 = *MEMORY[0x1E695F050];
            v63 = v30;
            if (FigCFDictionaryGetCGRectIfPresent())
            {
              Width = CVPixelBufferGetWidth(v21);
              Height = CVPixelBufferGetHeight(v21);
              FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(Width, Height, *&v62, *(&v62 + 1), *&v63, *(&v63 + 1), v26);
              if (OUTLINED_FUNCTION_19_9(v72))
              {
                goto LABEL_34;
              }
            }
          }

          else
          {
            if (v24 != 1.0 && v24 != 2.0)
            {
              goto LABEL_33;
            }

            v28 = CVPixelBufferGetWidth(v21);
            v29 = CVPixelBufferGetHeight(v21);
            v71.origin.x = FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRectForAttachedMedia(v28, v29, v11, v10, v9, v49, v26, v24);
            if (OUTLINED_FUNCTION_19_9(v71))
            {
LABEL_34:
              OUTLINED_FUNCTION_0();
              FigDebugAssert3();
            }
          }

          v73.origin.x = OUTLINED_FUNCTION_3_0();
          if (CGRectIsNull(v73))
          {
            goto LABEL_30;
          }

          if (dword_1ED8444F0)
          {
            v33 = v14;
            v34 = v12;
            v65 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v36 = v65;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v37 = v36;
            }

            else
            {
              v37 = v36 & 0xFFFFFFFE;
            }

            if (v37)
            {
              v38 = BWStringFromPixelBuffer();
              v39 = OUTLINED_FUNCTION_3_0();
              v43 = BWStringFromCGRect(v39, v40, v41, v42);
              v54 = 136315907;
              v55 = "[BWStillImageScalerNode _blackenBorderForAttachedMedia:sampleBuffer:normalizedInputCropRect:requestedSettings:]";
              v56 = 2113;
              v57 = v17;
              v58 = 2112;
              v59 = v38;
              v60 = 2112;
              v61 = v43;
              LODWORD(v46) = 42;
              v45 = &v54;
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_2_4();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v12 = v34;
            v14 = v33;
            v13 = v47;
            v8 = v48;
          }

          OUTLINED_FUNCTION_3_0();
          if (!VTFillPixelBufferBorderWithBlack())
          {
LABEL_30:
            CMSetAttachment(v19, v50, MEMORY[0x1E695E118], 1u);
            goto LABEL_31;
          }

          goto LABEL_33;
        }

LABEL_31:
        ++v15;
      }

      while (v53 != v15);
      v44 = [v13 countByEnumeratingWithState:&v67 objects:v66 count:16];
      v53 = v44;
      if (!v44)
      {
LABEL_36:
        [(BWStillImageScalerNode *)v14 _removeUnmodifiedAttachedMedias:v12];
        break;
      }
    }
  }

  OUTLINED_FUNCTION_5_5();
}

- (void)_rebuildPrimaryFormatBufferPoolForInputDimensions:(uint64_t)a3 inputPixelFormat:(uint64_t)a4 outputDimensions:(void *)a5 settings:
{
  if (a1)
  {
    v10 = objc_alloc_init(BWVideoFormatRequirements);
    v11 = [a1 name];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = @"StillImageScaler";
    }

    v13 = *(a1 + 144);
    [objc_msgSend(a5 "requestedSettings")];
    v14 = [objc_msgSend(objc_msgSend(a5 "requestedSettings")];
    if (a2 != a4 && v14 >= 2)
    {
      v16 = v14;
    }

    else
    {
      v16 = 1;
    }

    OUTLINED_FUNCTION_12_13();
    if (v19 >= 0x10)
    {
      v20 = v17;
    }

    else
    {
      v20 = v18;
    }

    if (FigCapturePixelFormatGetCompressionType(a3) && v20)
    {
      a3 = FigCaptureUncompressedPixelFormatForPixelFormat(a3);
    }

    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3];
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    [OUTLINED_FUNCTION_8() setSupportedPixelFormats:?];
    [(BWVideoFormatRequirements *)v10 setWidth:a4];
    [(BWVideoFormatRequirements *)v10 setHeight:a4 >> 32];
    [(BWVideoFormatRequirements *)v10 setBytesPerRowAlignment:64];
    [(BWVideoFormatRequirements *)v10 setPlaneAlignment:64];
    [BWVideoFormatRequirements cacheModesForCacheProfile:2];
    [OUTLINED_FUNCTION_8() setSupportedCacheModes:?];
    v26 = v10;
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v21 = [OUTLINED_FUNCTION_7() formatByResolvingRequirements:?];
    if (v21)
    {
      v22 = v21;

      v23 = [BWPixelBufferPool alloc];
      v24 = [*(a1 + 16) memoryPool];
      LOBYTE(v25) = *(a1 + 208);
      *(a1 + 152) = [(BWPixelBufferPool *)v23 initWithVideoFormat:v22 capacity:v16 * v13 name:v12 clientProvidesPool:0 memoryPool:v24 providesBackPressure:v25 reportSlowBackPressureAllocations:?];
    }

    OUTLINED_FUNCTION_18_9();
  }
}

- (uint64_t)_resolvedPoolCapacityForSettings:(uint64_t)a3 inputDimensions:(uint64_t)a4 outputDimensions:
{
  if (result)
  {
    v7 = *(result + 144);
    [objc_msgSend(a2 "requestedSettings")];
    v8 = [objc_msgSend(objc_msgSend(a2 "requestedSettings")];
    if (a3 != a4 && v8 >= 2)
    {
      v10 = v8;
    }

    else
    {
      v10 = 1;
    }

    return v10 * v7;
  }

  return result;
}

- (uint64_t)_buildPrimaryFormatScalingSession
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 160);
    if (v2)
    {
      CFRelease(v2);
      *(v1 + 160) = 0;
    }

    return VTPixelTransferSessionCreate(0, (v1 + 160));
  }

  return result;
}

- (void)_zoomAttachedMedia:sampleBuffer:
{
  OUTLINED_FUNCTION_6_4();
  v126 = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v1;
    v112 = CMGetAttachment(v2, @"StillSettings", 0);
    v113 = [v112 requestedSettings];
    v6 = [v5 countByEnumeratingWithState:OUTLINED_FUNCTION_14_9() objects:? count:?];
    if (!v6)
    {
      goto LABEL_86;
    }

    v7 = v6;
    v8 = *v143[2];
    v9 = 0x1F21AB010;
    key = *off_1E798A3C8;
    allocator = *MEMORY[0x1E695E480];
    v111 = *MEMORY[0x1E6965D88];
    v110 = *MEMORY[0x1E6965F30];
    v106 = *(MEMORY[0x1E695F050] + 8);
    v107 = *MEMORY[0x1E695F050];
    v104 = *(MEMORY[0x1E695F050] + 24);
    v105 = *(MEMORY[0x1E695F050] + 16);
    propertyKey = *MEMORY[0x1E6983E40];
    v109 = *off_1E798D2B8;
    target = v4;
    while (1)
    {
      v10 = 0;
      do
      {
        OUTLINED_FUNCTION_13_13();
        if (v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(v143[1] + 8 * v10);
        v140 = 0;
        cf = 0;
        if (([v12 isEqualToString:{0x1F21AAFF0, v101}] & 1) == 0 && (objc_msgSend(v12, "isEqualToString:", 0x1F21AAFB0) & 1) == 0 && (objc_msgSend(v12, "isEqualToString:", v9) & 1) == 0 && (objc_msgSend(v12, "isEqualToString:", 0x1F21AB030) & 1) == 0)
        {
          v13 = OUTLINED_FUNCTION_7_19();
          AttachedMedia = BWSampleBufferGetAttachedMedia(v13, v14);
          if (AttachedMedia)
          {
            v16 = AttachedMedia;
            pixelBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
            if (!pixelBuffer)
            {
              goto LABEL_24;
            }

            v17 = v9;
            v124 = v16;
            v18 = CMGetAttachment(v16, key, 0);
            v19 = v126;
            [(BWStillImageScalerNode *)v126 mainImageDownscalingFactorForAttachedMediaKey:v12 attachedMediaMetadata:v18];
            v21 = v20;
            if (v20 == 0.0 && ![*(v126 + 184) objectForKeyedSubscript:v12] || !*(v126 + 200) && (v19 = v126, VTPixelTransferSessionCreate(allocator, (v126 + 200))) || ((objc_msgSend(objc_msgSend(objc_msgSend(v19, "graph"), "memoryAnalyticsPayload"), "setScaledStillCaptureTaken:", 1), v21 != 0.0) ? (v22 = v21 == 1.0) : (v22 = 1), !v22 && CVPixelBufferGetPixelFormatType(pixelBuffer) != 1278226488))
            {
              v9 = v17;
              goto LABEL_24;
            }

            if ([*(v126 + 128) optimizedEnhancedResolutionDepthPipelineEnabled])
            {
              v115 = ([objc_msgSend(v112 "captureSettings")] >> 11) & 1;
            }

            else
            {
              LOBYTE(v115) = 0;
            }

            FinalCropRect = FigCaptureMetadataUtilitiesGetFinalCropRect();
            v28 = v27;
            v30 = v29;
            v32 = v31;
            Width = CVPixelBufferGetWidth(pixelBuffer);
            Height = CVPixelBufferGetHeight(pixelBuffer);
            destinationBuffer = Width;
            v102 = v115;
            v116 = Width | (Height << 32);
            v34 = -[BWStillImageScalerNode _outputDimensionsForAttachedMediaKey:attachedMediaMainImageDownscalingFactor:primaryMediaWidth:primaryMediaHeight:requestedWidth:requestedHeight:zoomWithoutUpscalingEnabled:aspectRatio:inputDimensions:normalizedZoomRect:optimizedEnhancedResolutionDepthCapture:](v126, v12, [v113 outputWidth], objc_msgSend(v113, "outputHeight"), objc_msgSend(v113, "outputWidth"), objc_msgSend(v113, "outputHeight"), objc_msgSend(v113, "isZoomWithoutUpscalingEnabled"), objc_msgSend(v113, "aspectRatio"), v21, FinalCropRect, v28, v30, v32, v116, v102);
            if (([v12 isEqualToString:@"Depth"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", 0x1F21AAF70))
            {
              v35 = OUTLINED_FUNCTION_4_27();
              FigCaptureMetadataUtilitiesDenormalizeCropRect(v35, v36, v37, v38);
              FigCaptureMetadataUtilitiesRoundRectToEvenCoordinates();
              OUTLINED_FUNCTION_11_17();
              v9 = v17;
            }

            else
            {
              v9 = v17;
              v41 = OUTLINED_FUNCTION_4_27();
              if (v21 == 0.0)
              {
                FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v39, v40, v41, v42, v43, v44, v45);
              }

              else
              {
                FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRectForAttachedMedia(v39, v40, v41, v42, v43, v44, v45, v46);
              }

              OUTLINED_FUNCTION_11_17();
            }

            v144.origin.x = OUTLINED_FUNCTION_0_32();
            if (CGRectIsNull(v144))
            {
              OUTLINED_FUNCTION_0();
              FigDebugAssert3();
            }

            else
            {
              if (*(v126 + 169) == 1)
              {
                v47 = BWCIFilterArrayContainsPortraitFilters([v113 processedImageFilters]) ^ 1;
              }

              else
              {
                v47 = 1;
              }

              v48 = (v0 | (v32 << 32)) != v34 || v47 == 0;
              if (!v48 && (CVPixelBufferGetPlaneCount(pixelBuffer) == 1 || (v69 = OUTLINED_FUNCTION_0_32(), sis_encoderCanCropDenormalizedZoomRect(v34, v69, v70, v71, v72))) || [v12 isEqualToString:@"Depth"] && (v145.origin.x = OUTLINED_FUNCTION_0_32(), v147.size.width = destinationBuffer, v147.size.height = Height, CGRectEqualToRect(v145, v147)))
              {
                v4 = target;
                goto LABEL_32;
              }

              v49 = OUTLINED_FUNCTION_7_19();
              v118 = v50;
              [(BWStillImageScalerNode *)v49 _rebuildBufferPoolForAttachedMediaKey:v51 attachedMediaMainImageDownscalingFactor:v116 inputDimensions:v50 outputDimensions:v112 settings:v21];
              [MEMORY[0x1E696AEC0] stringWithFormat:@"NewPixelBuffer-%@", v12];
              v52 = [objc_msgSend(*(v126 + 192) objectForKeyedSubscript:{v12), "newPixelBuffer"}];
              if (v52)
              {
                v53 = v52;
                v54 = CVBufferCopyAttachment(pixelBuffer, v111, 0);
                if (v54)
                {
                  v55 = CFAutorelease(v54);
                  if (v55)
                  {
                    CVBufferSetAttachment(v53, v111, v55, kCVAttachmentMode_ShouldPropagate);
                  }
                }

                v56 = CVBufferCopyAttachment(pixelBuffer, v110, 0);
                v57 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
                if (v56)
                {
                  v58 = CFAutorelease(v56);
                  if (v58)
                  {
                    CVBufferSetAttachment(v53, v110, v58, kCVAttachmentMode_ShouldPropagate);
                  }
                }

                if (dword_1ED8444F0)
                {
                  v139 = 0;
                  type = OS_LOG_TYPE_DEFAULT;
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v60 = v139;
                  v61 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
                  v62 = v60 & 0xFFFFFFFE;
                  if (v61)
                  {
                    v62 = v60;
                  }

                  if (v62)
                  {
                    v114 = BWStringFromPixelBuffer();
                    v63 = OUTLINED_FUNCTION_0_32();
                    v67 = BWStringFromCGRect(v63, v64, v65, v66);
                    v68 = BWStringFromPixelBuffer();
                    v128 = 136316163;
                    v129 = "[BWStillImageScalerNode _zoomAttachedMedia:sampleBuffer:]";
                    v130 = 2113;
                    v131 = v12;
                    v132 = 2112;
                    v133 = v114;
                    v134 = 2112;
                    v135 = v67;
                    v136 = 2112;
                    v137 = v68;
                    LODWORD(v103) = 52;
                    v101 = &v128;
                    _os_log_send_and_compose_impl();
                  }

                  OUTLINED_FUNCTION_2_4();
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v57 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
                }

                destinationBuffera = v53;
                if (BWCMSampleBufferCreateCopyWithNewPixelBuffer(v124, v53, &v140, &cf))
                {
                  goto LABEL_83;
                }

                v125 = BWCMSampleBufferCopyReattachAndReturnMutableMetadata(cf);
                if ([v12 isEqualToString:@"Depth"])
                {
                  v73 = OUTLINED_FUNCTION_0_32();
                  if (!FigDepthScaleBufferWithCrop(v74, v53, v73, v75, v76, v77))
                  {
                    v4 = target;
                    v78 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{CMGetAttachment(target, v109, 0)}];
                    v79 = OUTLINED_FUNCTION_0_32();
                    FigCaptureMetadataUtilitiesNormalizeCropRect(v79, v80, v81, v82);
                    FigCaptureMetadataUtilitiesUpdateDepthDataMetadataForStillImageCropAndScale(v78, v83, v84, v85, v86, 1.0 / v86);
                    CMSetAttachment(target, v109, v78, 1u);
                    DictionaryRepresentation = 0;
                    goto LABEL_78;
                  }

LABEL_83:
                  DictionaryRepresentation = 0;
LABEL_84:
                  v4 = target;
                  v98 = OUTLINED_FUNCTION_7_19();
                  BWSampleBufferRemoveAttachedMedia(v98, v99);
                }

                else
                {
                  v146.origin.x = OUTLINED_FUNCTION_0_32();
                  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v146);
                  if (VTSessionSetProperty(*(v126 + v57[750]), propertyKey, DictionaryRepresentation) || VTPixelTransferSessionTransferImage(*(v126 + 200), pixelBuffer, destinationBuffera))
                  {
                    goto LABEL_84;
                  }

                  v4 = target;
LABEL_78:
                  if ([v12 isEqualToString:{0x1F21AAE10, v101, v103}])
                  {
                    v87 = OUTLINED_FUNCTION_0_32();
                    FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v88, v89, v90, v87, v91, v92, v93, v107, v106, v105, v104);
                    FigCaptureMetadataUtilitiesUpdateMetadataForNewFinalDimensions(v125, v116, v118);
                  }

                  v94 = OUTLINED_FUNCTION_7_19();
                  BWSampleBufferSetAttachedMedia(v94, v95, v96);
                  FigCaptureMetadataUtilitiesPreventFurtherCropping(v125, v97);
                }

                CFRelease(destinationBuffera);
LABEL_26:
                if (cf)
                {
                  CFRelease(cf);
                }

                if (DictionaryRepresentation)
                {
                  CFRelease(DictionaryRepresentation);
                }

                if (v140)
                {
                  CFRelease(v140);
                }

                goto LABEL_32;
              }
            }

LABEL_24:
            v4 = target;
            v23 = OUTLINED_FUNCTION_7_19();
            BWSampleBufferRemoveAttachedMedia(v23, v24);
          }

          DictionaryRepresentation = 0;
          goto LABEL_26;
        }

LABEL_32:
        ++v10;
      }

      while (v7 != v10);
      v100 = [v5 countByEnumeratingWithState:v143 objects:v142 count:16];
      v7 = v100;
      if (!v100)
      {
LABEL_86:
        [(BWStillImageScalerNode *)v126 _removeUnmodifiedAttachedMedias:v4];
        break;
      }
    }
  }

  OUTLINED_FUNCTION_5_5();
}

- (uint64_t)_shouldPurgeAllResourcesAfterProcessingSettings:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    result = [*(result + 16) memoryPool];
    if (result)
    {
      return (*(v3 + 212) < 1 || *(v3 + 216) <= 0) && [objc_msgSend(a2 "requestedSettings")] == 0;
    }
  }

  return result;
}

- (uint64_t)_outputDimensionsForAttachedMediaKey:(unint64_t)a3 attachedMediaMainImageDownscalingFactor:(unint64_t)a4 primaryMediaWidth:(unint64_t)a5 primaryMediaHeight:(unint64_t)a6 requestedWidth:(int)a7 requestedHeight:(int)a8 zoomWithoutUpscalingEnabled:(float)a9 aspectRatio:(double)a10 inputDimensions:(double)a11 normalizedZoomRect:(double)a12 optimizedEnhancedResolutionDepthCapture:(double)a13
{
  if (!a1)
  {
    goto LABEL_24;
  }

  if (a15 && [a2 isEqual:0x1F217BF50])
  {
    a4 = a6;
    a3 = a5;
  }

  if (a9 != 0.0)
  {
    v24 = OUTLINED_FUNCTION_21_7(a3);
    v25 = OUTLINED_FUNCTION_21_7(a4) << 32;
    return v25 | v24;
  }

  if (!OUTLINED_FUNCTION_10_14())
  {
LABEL_24:
    v25 = 0;
    v24 = 0;
    return v25 | v24;
  }

  v26 = MEMORY[0x1E695F060];
  size = *MEMORY[0x1E695F060];
  if ([objc_msgSend(OUTLINED_FUNCTION_10_14() objectForKeyedSubscript:{@"KeepInputSize", "BOOLValue"}])
  {
    width = a14;
    height = SHIDWORD(a14);
    size.width = a14;
    size.height = SHIDWORD(a14);
  }

  else
  {
    v29 = OUTLINED_FUNCTION_10_14();
    CGSizeMakeWithDictionaryRepresentation(v29, &size);
    width = size.width;
    height = size.height;
  }

  if (width == *v26 && height == v26[1])
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    goto LABEL_24;
  }

  if (a7)
  {
    if (a8)
    {
      v31 = FigCaptureAspectRatioForDimensions(a14);
      width = size.width;
      v32 = size.width / size.height;
      if (vabdd_f64(v31, size.width / size.height) > 0.01)
      {
        v33 = v31 <= v32;
        v34 = v31 / v32;
        if (v33)
        {
          a13 = a13 * v34;
        }

        else
        {
          a12 = a12 * v34;
        }
      }
    }

    v35 = a12 * width;
    width = FigCaptureRoundFloatToMultipleOf(2, v35);
    v36 = a13 * size.height;
    height = FigCaptureRoundFloatToMultipleOf(2, v36);
  }

  v24 = width;
  v25 = height << 32;
  return v25 | v24;
}

- (void)_rebuildBufferPoolForAttachedMediaKey:(uint64_t)a3 attachedMediaMainImageDownscalingFactor:(uint64_t)a4 inputDimensions:(void *)a5 outputDimensions:(float)a6 settings:
{
  if (!a1 || a6 == 0.0 && ![*(a1 + 184) objectForKeyedSubscript:a2])
  {
    goto LABEL_29;
  }

  v11 = *(a1 + 192);
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(a1 + 192) = v11;
  }

  v12 = [v11 objectForKeyedSubscript:a2];
  if (a4 != [v12 width] || objc_msgSend(v12, "height") != a4 >> 32)
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = [a1 name];
    v21 = @"StillImageScaler";
    if (v20)
    {
      v21 = v20;
    }

    v22 = [v19 stringWithFormat:@"%@-%@", v21, a2];
    v23 = *(a1 + 144);
    [objc_msgSend(a5 "requestedSettings")];
    v24 = [objc_msgSend(objc_msgSend(a5 "requestedSettings")];
    v25 = [objc_msgSend(*(a1 + 16) mediaPropertiesForAttachedMediaKey:{a2), "resolvedVideoFormat"}];
    v26 = [v25 pixelFormat];
    if (v26)
    {
      v27 = v26;
      v28 = a3 != a4 && v24 >= 2;
      v29 = v28 ? v24 : 1;
      v30 = v29 * v23;
      v31 = objc_alloc_init(BWVideoFormatRequirements);
      v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v27];
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
      [OUTLINED_FUNCTION_15() setSupportedPixelFormats:?];
      [(BWVideoFormatRequirements *)v31 setWidth:a4];
      [(BWVideoFormatRequirements *)v31 setHeight:a4 >> 32];
      +[BWVideoFormatRequirements cacheModesForCacheProfile:](BWVideoFormatRequirements, "cacheModesForCacheProfile:", [v25 cacheMode]);
      [OUTLINED_FUNCTION_15() setSupportedCacheModes:?];
      [(BWVideoFormatRequirements *)v31 setWidthAlignment:16];
      [(BWVideoFormatRequirements *)v31 setHeightAlignment:16];
      [v25 bytesPerRowAlignment];
      [OUTLINED_FUNCTION_15() setBytesPerRowAlignment:?];
      [v25 planeAlignment];
      [OUTLINED_FUNCTION_15() setPlaneAlignment:?];
      -[BWVideoFormatRequirements setMemoryPoolUseAllowed:](v31, "setMemoryPoolUseAllowed:", [v25 memoryPoolUseAllowed]);
      v38 = v31;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
      v32 = [OUTLINED_FUNCTION_8() formatByResolvingRequirements:?];
      v33 = [BWPixelBufferPool alloc];
      v34 = [*(a1 + 16) memoryPool];
      LOBYTE(v37) = *(a1 + 208);
      v35 = [(BWPixelBufferPool *)v33 initWithVideoFormat:v32 capacity:v30 name:v22 clientProvidesPool:0 memoryPool:v34 providesBackPressure:v37 reportSlowBackPressureAllocations:?];
      if (v35)
      {
        v36 = v35;
        [*(a1 + 192) setObject:v35 forKeyedSubscript:a2];
      }
    }

    goto LABEL_29;
  }

  v13 = *(a1 + 144);
  [objc_msgSend(a5 "requestedSettings")];
  v14 = [objc_msgSend(objc_msgSend(a5 "requestedSettings")];
  v15 = a3 != a4 && v14 >= 2;
  v16 = v15 ? v14 : 1;
  if ([v12 capacity] == v16 * v13)
  {
LABEL_29:
    OUTLINED_FUNCTION_18_9();
    return;
  }

  OUTLINED_FUNCTION_18_9();

  [v17 setCapacity:?];
}

- (uint64_t)_removeUnmodifiedAttachedMedias:(uint64_t)a1
{
  if (a1)
  {
    v3 = BWSampleBufferCopyDictionaryOfAttachedMedia(a2);
    v4 = v3 ? v3 : MEMORY[0x1E695E0F8];
    [*(a1 + 176) allKeys];
    v5 = [OUTLINED_FUNCTION_8() setWithArray:?];
    [*(a1 + 184) allKeys];
    [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
    v6 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(v4, "allKeys")}];
    v7 = [v6 minusSet:v5];
    v15 = OUTLINED_FUNCTION_22_5(v7, v8, v9, v10, v11, v12, v13, v14, v33, v35, v37, v39, v40, v42, v43, v45, v47, a2, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102);
    if (v15)
    {
      v17 = v15;
      v18 = MEMORY[0];
      v19 = 0x1F21AB070;
      v20 = 0x1F21AAFB0;
      v56 = 0x1F21AB030;
      v58 = 0x1F21AB010;
      *&v16 = 138412290;
      v41 = v16;
      *&v16 = 136315394;
      v38 = v16;
      v46 = 0x1F21AAFB0;
      v48 = 0x1F21AB070;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (MEMORY[0] != v18)
          {
            objc_enumerationMutation(v6);
          }

          v22 = *(8 * i);
          v23 = [v22 isEqualToString:@"Depth"];
          if ((v23 & 1) == 0)
          {
            v23 = [v22 isEqualToString:0x1F21AAB30];
            if ((v23 & 1) == 0)
            {
              v23 = [v22 isEqualToString:0x1F21AAFD0];
              if ((v23 & 1) == 0)
              {
                v23 = [v22 isEqualToString:v19];
                if ((v23 & 1) == 0)
                {
                  v23 = [v22 isEqualToString:v20];
                  if ((v23 & 1) == 0)
                  {
                    v23 = [v22 isEqualToString:v58];
                    if ((v23 & 1) == 0)
                    {
                      v23 = [v22 isEqualToString:v56];
                      if ((v23 & 1) == 0)
                      {
                        FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
                        HIDWORD(v101) = 0;
                        BYTE3(v101) = 0;
                        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                        fig_log_call_emit_and_clean_up_after_send_and_compose();
                        LODWORD(v68) = v41;
                        *(&v68 + 4) = v22;
                        v31 = _os_log_send_and_compose_impl();
                        v36 = 0;
                        FigCapturePleaseFileRadar(FrameworkRadarComponent, v31, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageScalerNode.m", 1094, @"LastShownDate:BWStillImageScalerNode.m:1094", @"LastShownBuild:BWStillImageScalerNode.m:1094", 0);
                        free(v31);
                        BWSampleBufferRemoveAttachedMedia(v50, v22);
                        v20 = v46;
                        v19 = v48;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v17 = OUTLINED_FUNCTION_22_5(v23, v24, v25, v26, v27, v28, v29, v30, v34, v36, v38, *(&v38 + 1), v41, *(&v41 + 1), v44, v46, v48, v50, os_log_and_send_and_compose_flags_and_os_log_type, FrameworkRadarComponent, v56, v58, v60, v62, v64, v66, v68, *(&v68 + 1), v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103);
      }

      while (v17);
    }
  }

  return 0;
}

@end