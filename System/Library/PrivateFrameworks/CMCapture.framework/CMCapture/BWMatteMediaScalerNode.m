@interface BWMatteMediaScalerNode
+ (void)initialize;
- (BWMatteMediaScalerNode)initWithBasePoolCapacity:(int)a3;
- (uint64_t)_outputDimensionsForAttachedMediaKey:(unint64_t)a3 attachedMediaMainImageDownscalingFactor:(unint64_t)a4 primaryMediaWidth:(float)a5 primaryMediaHeight:requestedWidth:requestedHeight:zoomWithoutUpscalingEnabled:aspectRatio:inputDimensions:;
- (uint64_t)_zoomAttachedMedia:(CMAttachmentBearerRef)target sampleBuffer:;
- (uint64_t)mainImageDownscalingFactorForAttachedMediaKey:(void *)a3 attachedMediaMetadata:;
- (void)_purgeResourcesLeavingThemForMediaToProcess:(uint64_t)a1;
- (void)_rebuildBufferPoolForAttachedMediaKey:(float)a3 attachedMediaMainImageDownscalingFactor:(uint64_t)a4 inputDimensions:(uint64_t)a5 outputDimensions:(void *)a6 settings:;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)didSelectFormat:(id)a3 forInput:(id)a4;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
- (void)setMainImageDownscalingFactorByAttachedMediaKey:(id)a3;
- (void)setOutputSizeByAttachedMediaKey:(id)a3;
@end

@implementation BWMatteMediaScalerNode

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWMatteMediaScalerNode)initWithBasePoolCapacity:(int)a3
{
  if (a3 <= 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"baseCapacity must be >= 1" userInfo:0]);
  }

  v9.receiver = self;
  v9.super_class = BWMatteMediaScalerNode;
  v4 = [(BWNode *)&v9 init];
  v5 = v4;
  if (v4)
  {
    [(BWNode *)v4 setSupportsLiveReconfiguration:1];
    v6 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v5];
    [(BWNodeInput *)v6 setFormatRequirements:+[BWVideoFormatRequirements formatRequirements]];
    [(BWNodeInput *)v6 setPassthroughMode:1];
    [(BWNode *)v5 addInput:v6];
    v7 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v5];
    [(BWNodeOutput *)v7 setFormatRequirements:+[BWVideoFormatRequirements formatRequirements]];
    [(BWNodeOutput *)v7 setPassthroughMode:1];
    [(BWNode *)v5 addOutput:v7];
    v5->_poolBaseCapacity = a3;
  }

  return v5;
}

- (void)dealloc
{
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  attachedMediaScalingSession = self->_attachedMediaScalingSession;
  if (attachedMediaScalingSession)
  {
    CFRelease(attachedMediaScalingSession);
  }

  v5.receiver = self;
  v5.super_class = BWMatteMediaScalerNode;
  [(BWNode *)&v5 dealloc];
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4
{
  [(BWNodeOutput *)self->super._output setFormat:a3, a4];
  [(BWNodeInput *)self->super._input setPassthroughMode:1];
  [(BWNodeOutput *)self->super._output setPassthroughMode:1];
  v5 = [MEMORY[0x1E695DF70] array];
  if ([(NSDictionary *)self->_mainImageDownscalingFactorByAttachedMediaKey count])
  {
    [v5 addObjectsFromArray:{-[NSDictionary allKeys](self->_mainImageDownscalingFactorByAttachedMediaKey, "allKeys")}];
  }

  if ([(NSDictionary *)self->_outputSizeByAttachedMediaKey count])
  {
    [v5 addObjectsFromArray:{-[NSDictionary allKeys](self->_outputSizeByAttachedMediaKey, "allKeys")}];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v15 count:{16, 152}];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        [-[NSDictionary objectForKeyedSubscript:](self->_mainImageDownscalingFactorByAttachedMediaKey objectForKeyedSubscript:{v10), "floatValue"}];
        if (v11 != 0.0 || [*(&self->super.super.isa + v14) objectForKeyedSubscript:v10])
        {
          v12 = objc_alloc_init(BWNodeInputMediaConfiguration);
          [(BWNodeInputMediaConfiguration *)v12 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
          [(BWNodeInputMediaConfiguration *)v12 setPassthroughMode:0];
          [(BWNodeInput *)self->super._input setMediaConfiguration:v12 forAttachedMediaKey:v10];
          v13 = objc_alloc_init(BWNodeOutputMediaConfiguration);
          [(BWNodeOutputMediaConfiguration *)v13 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
          [(BWNodeOutputMediaConfiguration *)v13 setPassthroughMode:1];
          [(BWNodeOutput *)self->super._output setMediaConfiguration:v13 forAttachedMediaKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v7);
  }
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
  if (dword_1EB58E4E0)
  {
    v10 = 0;
    v9 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(BWMatteMediaScalerNode *)self _purgeResourcesLeavingThemForMediaToProcess:?];
  v8.receiver = self;
  v8.super_class = BWMatteMediaScalerNode;
  [(BWNode *)&v8 didReachEndOfDataForConfigurationID:a3 input:a4];
}

- (uint64_t)mainImageDownscalingFactorForAttachedMediaKey:(void *)a3 attachedMediaMetadata:
{
  if (result)
  {
    v4 = result;
    result = [objc_msgSend(a3 objectForKeyedSubscript:{*off_1E798A788), "floatValue"}];
    if (*(v4 + 177) != 1 || v5 == 0.0)
    {
      v6 = [*(v4 + 144) objectForKeyedSubscript:a2];

      return [v6 floatValue];
    }
  }

  return result;
}

- (void)_purgeResourcesLeavingThemForMediaToProcess:(uint64_t)a1
{
  if (a1 && [*(a1 + 160) count])
  {
    [a2 count];
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = *(a1 + 160);
    v13 = OUTLINED_FUNCTION_4_2(v4, v6, v7, v8, v9, v10, v11, v12, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, 0);
    if (v13)
    {
      v14 = v13;
      v15 = MEMORY[0];
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (MEMORY[0] != v15)
          {
            objc_enumerationMutation(v5);
          }

          v17 = *(8 * i);
          v18 = [a2 containsObject:v17];
          if ((v18 & 1) == 0)
          {
            v18 = [v4 addObject:v17];
          }
        }

        v14 = OUTLINED_FUNCTION_4_2(v18, v19, v20, v21, v22, v23, v24, v25, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v59);
      }

      while (v14);
    }

    [*(a1 + 160) removeObjectsForKeys:v4];
    if (![*(a1 + 160) count])
    {
      v26 = *(a1 + 168);
      if (v26)
      {
        CFRelease(v26);
        *(a1 + 168) = 0;
      }
    }
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  v6 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_5_14();
  }

  if (!a3 || (ImageBuffer = CMSampleBufferGetImageBuffer(a3)) == 0 || (v8 = ImageBuffer, Width = CVPixelBufferGetWidth(ImageBuffer), Height = CVPixelBufferGetHeight(v8), !CMGetAttachment(a3, *off_1E798A3C8, 0)) || (v11 = CMGetAttachment(a3, @"StillSettings", 0)) == 0)
  {
    if (!self)
    {
      goto LABEL_35;
    }

    v12 = 0;
    goto LABEL_32;
  }

  v12 = v11;
  v13 = Width | (Height << 32);
  if (dword_1EB58E4E0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v6 = MEMORY[0x1E695FF58];
  }

  if (v13 == 0xBD000000FC0 || v13 == 0xFC000000BD0)
  {
    v16 = 0;
  }

  else
  {
    v42 = self;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:{0x1F21AABB0, @"PersonSemanticsHair", @"PersonSemanticsSkin", @"PersonSemanticsTeeth", @"PersonSemanticsGlasses", 0}];
    v18 = [MEMORY[0x1E695DF70] arrayWithArray:v17];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v26 = OUTLINED_FUNCTION_3_9(v18, v19, v20, v21, v22, v23, v24, v25);
    if (v26)
    {
      v27 = v26;
      v28 = *v44;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v44 != v28)
          {
            objc_enumerationMutation(v17);
          }

          v30 = *(*(&v43 + 1) + 8 * i);
          AttachedMedia = [v30 isEqualToString:@"PrimaryFormat"];
          if ((AttachedMedia & 1) == 0)
          {
            AttachedMedia = BWSampleBufferGetAttachedMedia(a3, v30);
            if (!AttachedMedia)
            {
              AttachedMedia = [v18 removeObject:v30];
            }
          }
        }

        v27 = OUTLINED_FUNCTION_3_9(AttachedMedia, v32, v33, v34, v35, v36, v37, v38);
      }

      while (v27);
    }

    v16 = [v18 copy];
    v6 = MEMORY[0x1E695FF58];
    self = v42;
  }

  if (![v16 count])
  {
    [(BWNodeOutput *)self->super._output emitSampleBuffer:a3];
LABEL_32:
    if (-[BWNodeOutput memoryPool](self->super._output, "memoryPool") && ![objc_msgSend(v12 "requestedSettings")])
    {
      [(BWMatteMediaScalerNode *)self _purgeResourcesLeavingThemForMediaToProcess:?];
    }

    goto LABEL_35;
  }

  v39 = [CMGetAttachment(a3 @"StillImageBufferFrameType"];
  if (v39 == 40)
  {
    [(BWMatteMediaScalerNode *)self _purgeResourcesLeavingThemForMediaToProcess:v16];
  }

  if ([v16 count])
  {
    [(BWMatteMediaScalerNode *)self _zoomAttachedMedia:v16 sampleBuffer:a3];
  }

  [(BWNodeOutput *)self->super._output emitSampleBuffer:a3];
  if (v39 == 40)
  {
    goto LABEL_32;
  }

LABEL_35:
  if (*v6 == 1)
  {
    OUTLINED_FUNCTION_5_14();
  }
}

- (uint64_t)_zoomAttachedMedia:(CMAttachmentBearerRef)target sampleBuffer:
{
  if (!a1)
  {
    return 0;
  }

  v50 = CMGetAttachment(target, @"StillSettings", 0);
  v49 = [v50 requestedSettings];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v5 = [a2 countByEnumeratingWithState:&v71 objects:v70 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v72;
  key = *off_1E798A3C8;
  allocator = *MEMORY[0x1E695E480];
  v51 = *MEMORY[0x1E6965F30];
  v52 = *MEMORY[0x1E6965D88];
  obj = a2;
  v53 = *v72;
  do
  {
    v9 = 0;
    v54 = v6;
    do
    {
      if (*v72 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v71 + 1) + 8 * v9);
      v68 = 0;
      cf = 0;
      v11 = OUTLINED_FUNCTION_1_19();
      AttachedMedia = BWSampleBufferGetAttachedMedia(v11, v12);
      if (AttachedMedia)
      {
        v14 = AttachedMedia;
        ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
        if (!ImageBuffer)
        {
          goto LABEL_19;
        }

        v16 = ImageBuffer;
        v17 = CMGetAttachment(v14, key, 0);
        [(BWMatteMediaScalerNode *)a1 mainImageDownscalingFactorForAttachedMediaKey:v10 attachedMediaMetadata:v17];
        v19 = v18;
        if (v18 == 0.0 && ![*(a1 + 152) objectForKeyedSubscript:v10])
        {
          goto LABEL_19;
        }

        if (!*(a1 + 168) && VTPixelTransferSessionCreate(allocator, (a1 + 168)))
        {
          goto LABEL_19;
        }

        [objc_msgSend(objc_msgSend(a1 graph];
        v20 = v19 == 0.0 || v19 == 1.0;
        if (!v20 && CVPixelBufferGetPixelFormatType(v16) != 1278226488)
        {
          v7 = 4294954516;
LABEL_19:
          v21 = OUTLINED_FUNCTION_1_19();
          BWSampleBufferRemoveAttachedMedia(v21, v22);
          goto LABEL_20;
        }

        CVPixelBufferGetWidth(v16);
        CVPixelBufferGetHeight(v16);
        v23 = [v49 outputWidth];
        v24 = [v49 outputHeight];
        [v49 outputWidth];
        [v49 outputHeight];
        [v49 isZoomWithoutUpscalingEnabled];
        v8 = v53;
        [v49 aspectRatio];
        v25 = v24;
        v6 = v54;
        v26 = [BWMatteMediaScalerNode _outputDimensionsForAttachedMediaKey:a1 attachedMediaMainImageDownscalingFactor:v10 primaryMediaWidth:v23 primaryMediaHeight:v25 requestedWidth:v19 requestedHeight:? zoomWithoutUpscalingEnabled:? aspectRatio:? inputDimensions:?];
        [(BWMatteMediaScalerNode *)a1 _rebuildBufferPoolForAttachedMediaKey:v10 attachedMediaMainImageDownscalingFactor:v19 inputDimensions:v27 outputDimensions:v26 settings:v50];
        [MEMORY[0x1E696AEC0] stringWithFormat:@"NewPixelBuffer-%@", v10];
        v28 = [objc_msgSend(*(a1 + 160) objectForKeyedSubscript:{v10), "newPixelBuffer"}];
        if (!v28)
        {
          goto LABEL_19;
        }

        v29 = v28;
        v30 = CVBufferCopyAttachment(v16, v52, 0);
        if (v30)
        {
          v31 = CFAutorelease(v30);
          if (v31)
          {
            CVBufferSetAttachment(v29, v52, v31, kCVAttachmentMode_ShouldPropagate);
          }
        }

        v32 = CVBufferCopyAttachment(v16, v51, 0);
        if (v32)
        {
          v33 = CFAutorelease(v32);
          if (v33)
          {
            CVBufferSetAttachment(v29, v51, v33, kCVAttachmentMode_ShouldPropagate);
          }
        }

        if (dword_1EB58E4E0)
        {
          v67 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v35 = v67;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v36 = v35;
          }

          else
          {
            v36 = v35 & 0xFFFFFFFE;
          }

          if (v36)
          {
            v37 = BWStringFromPixelBuffer();
            v38 = BWStringFromPixelBuffer();
            v58 = 136315907;
            v59 = "[BWMatteMediaScalerNode _zoomAttachedMedia:sampleBuffer:]";
            v60 = 2113;
            v61 = v10;
            v62 = 2112;
            v63 = v37;
            v64 = 2112;
            v65 = v38;
            LODWORD(v48) = 42;
            v47 = &v58;
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v8 = v53;
          v6 = v54;
        }

        v39 = BWCMSampleBufferCreateCopyWithNewPixelBuffer(v14, v29, &v68, &cf);
        if (v39)
        {
          v7 = v39;
        }

        else
        {
          BWCMSampleBufferCopyReattachAndReturnMutableMetadata(cf);
          v7 = VTPixelTransferSessionTransferImage(*(a1 + 168), v16, v29);
          if (!v7)
          {
            v40 = OUTLINED_FUNCTION_1_19();
            BWSampleBufferSetAttachedMedia(v40, v41, v42);
LABEL_43:
            CFRelease(v29);
            goto LABEL_20;
          }
        }

        v43 = OUTLINED_FUNCTION_1_19();
        BWSampleBufferRemoveAttachedMedia(v43, v44);
        goto LABEL_43;
      }

LABEL_20:
      if (cf)
      {
        CFRelease(cf);
      }

      if (v68)
      {
        CFRelease(v68);
      }

      ++v9;
    }

    while (v6 != v9);
    v45 = [obj countByEnumeratingWithState:&v71 objects:v70 count:16];
    v6 = v45;
  }

  while (v45);
  return v7;
}

- (uint64_t)_outputDimensionsForAttachedMediaKey:(unint64_t)a3 attachedMediaMainImageDownscalingFactor:(unint64_t)a4 primaryMediaWidth:(float)a5 primaryMediaHeight:requestedWidth:requestedHeight:zoomWithoutUpscalingEnabled:aspectRatio:inputDimensions:
{
  if (!a1)
  {
    goto LABEL_11;
  }

  if (a5 == 0.0)
  {
    if ([*(a1 + 152) objectForKeyedSubscript:a2])
    {
      v11 = MEMORY[0x1E695F060];
      size = *MEMORY[0x1E695F060];
      CGSizeMakeWithDictionaryRepresentation([*(a1 + 152) objectForKeyedSubscript:a2], &size);
      if (size.width != *v11 || size.height != v11[1])
      {
        width = size.width;
        v8 = size.height << 32;
        return v8 | width;
      }

      FigDebugAssert3();
    }

LABEL_11:
    v8 = 0;
    width = 0;
    return v8 | width;
  }

  width = FigCaptureRoundFloatToMultipleOf(2, a3 / a5);
  v8 = FigCaptureRoundFloatToMultipleOf(2, a4 / a5) << 32;
  return v8 | width;
}

- (void)_rebuildBufferPoolForAttachedMediaKey:(float)a3 attachedMediaMainImageDownscalingFactor:(uint64_t)a4 inputDimensions:(uint64_t)a5 outputDimensions:(void *)a6 settings:
{
  if (a1 && (a3 != 0.0 || [*(a1 + 152) objectForKeyedSubscript:a2]))
  {
    v10 = *(a1 + 160);
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      *(a1 + 160) = v10;
    }

    v11 = [v10 objectForKeyedSubscript:a2];
    if (a5 == [v11 width] && objc_msgSend(v11, "height") == a5 >> 32)
    {
      v12 = *(a1 + 136);
      [objc_msgSend(a6 "requestedSettings")];
      if ([v11 capacity] != v12)
      {

        [v11 setCapacity:v12];
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MatteMediaScaler-%@", a2];
      v14 = *(a1 + 136);
      [objc_msgSend(a6 "requestedSettings")];
      v15 = [objc_msgSend(*(a1 + 16) mediaPropertiesForAttachedMediaKey:{a2), "resolvedVideoFormat"}];
      v16 = [v15 pixelFormat];
      if (v16)
      {
        v17 = v16;
        v18 = objc_alloc_init(BWVideoFormatRequirements);
        v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v17];
        [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
        [OUTLINED_FUNCTION_15() setSupportedPixelFormats:?];
        [(BWVideoFormatRequirements *)v18 setWidth:a5];
        [(BWVideoFormatRequirements *)v18 setHeight:a5 >> 32];
        +[BWVideoFormatRequirements cacheModesForCacheProfile:](BWVideoFormatRequirements, "cacheModesForCacheProfile:", [v15 cacheMode]);
        [OUTLINED_FUNCTION_15() setSupportedCacheModes:?];
        [(BWVideoFormatRequirements *)v18 setWidthAlignment:16];
        [(BWVideoFormatRequirements *)v18 setHeightAlignment:16];
        [v15 bytesPerRowAlignment];
        [OUTLINED_FUNCTION_15() setBytesPerRowAlignment:?];
        [v15 planeAlignment];
        [OUTLINED_FUNCTION_15() setPlaneAlignment:?];
        -[BWVideoFormatRequirements setMemoryPoolUseAllowed:](v18, "setMemoryPoolUseAllowed:", [v15 memoryPoolUseAllowed]);
        v25 = v18;
        v19 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1]);
        v20 = [BWPixelBufferPool alloc];
        v21 = [*(a1 + 16) memoryPool];
        LOBYTE(v24) = *(a1 + 176);
        v22 = [(BWPixelBufferPool *)v20 initWithVideoFormat:v19 capacity:v14 name:v13 clientProvidesPool:0 memoryPool:v21 providesBackPressure:v24 reportSlowBackPressureAllocations:?];
        if (v22)
        {
          v23 = v22;
          [*(a1 + 160) setObject:v22 forKeyedSubscript:a2];
        }
      }
    }
  }
}

@end