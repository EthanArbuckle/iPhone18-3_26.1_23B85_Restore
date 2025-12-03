@interface BWMeteorHeadroomNode
- (BWMeteorHeadroomNode)initWithNodeConfiguration:(id)configuration sensorConfigurationsByPortType:(id)type;
- (uint64_t)prepareForCurrentConfigurationToBecomeLive;
- (void)_releaseResources;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWMeteorHeadroomNode

- (BWMeteorHeadroomNode)initWithNodeConfiguration:(id)configuration sensorConfigurationsByPortType:(id)type
{
  v22.receiver = self;
  v22.super_class = BWMeteorHeadroomNode;
  v5 = [(BWNode *)&v22 init];
  if (v5)
  {
    if (type)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(type, "count")}];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v7 = [type countByEnumeratingWithState:&v18 objects:v17 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v19;
        do
        {
          v10 = 0;
          do
          {
            if (*v19 != v9)
            {
              objc_enumerationMutation(type);
            }

            -[NSDictionary setObject:forKeyedSubscript:](v6, "setObject:forKeyedSubscript:", [objc_msgSend(objc_msgSend(type objectForKeyedSubscript:{*(*(&v18 + 1) + 8 * v10)), "sensorIDDictionary"), "objectForKeyedSubscript:", @"MeteorHeadroom"}], *(*(&v18 + 1) + 8 * v10));
            ++v10;
          }

          while (v8 != v10);
          v8 = [type countByEnumeratingWithState:&v18 objects:v17 count:16];
        }

        while (v8);
      }

      v5->_meteorHeadroomParametersByPortType = v6;
    }

    v11 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v5];
    v12 = objc_alloc_init(BWVideoFormatRequirements);
    v13 = [MEMORY[0x1E695DF70] arrayWithArray:&unk_1F2248898];
    [v13 addObjectsFromArray:{FigCaptureSupportedPixelFormatsForCompressionType(4, 1, 0, 3)}];
    [(BWVideoFormatRequirements *)v12 setSupportedPixelFormats:v13];
    [(BWNodeInput *)v11 setFormatRequirements:v12];

    [(BWNodeInput *)v11 setPassthroughMode:1];
    [(BWNode *)v5 addInput:v11];
    v14 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v5];
    v15 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeOutput *)v14 setFormatRequirements:v15];

    [(BWNodeOutput *)v14 setPassthroughMode:1];
    [(BWNode *)v5 addOutput:v14];
  }

  return v5;
}

- (void)dealloc
{
  [(BWMeteorHeadroomNode *)self _releaseResources];

  v3.receiver = self;
  v3.super_class = BWMeteorHeadroomNode;
  [(BWNode *)&v3 dealloc];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v6.receiver = self;
  v6.super_class = BWMeteorHeadroomNode;
  [(BWNode *)&v6 prepareForCurrentConfigurationToBecomeLive];
  if (self->_metalContext)
  {
    goto LABEL_12;
  }

  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  if (!v3)
  {
    [BWMeteorHeadroomNode prepareForCurrentConfigurationToBecomeLive];
    return;
  }

  v4 = [objc_alloc(MEMORY[0x1E6991778]) initWithbundle:v3 andOptionalCommandQueue:0];
  self->_metalContext = v4;
  if (v4)
  {
LABEL_12:
    if (!self->_histogram)
    {
      v5 = [[FigMetalHistogram alloc] initWithMetalContext:self->_metalContext];
      self->_histogram = v5;
      if (!v5)
      {
        [BWMeteorHeadroomNode prepareForCurrentConfigurationToBecomeLive];
      }
    }
  }

  else
  {
    [BWMeteorHeadroomNode prepareForCurrentConfigurationToBecomeLive];
  }
}

- (void)_releaseResources
{
  if (self)
  {

    *(self + 160) = 0;
    *(self + 152) = 0;
  }
}

- (void)didReachEndOfDataForInput:(id)input
{
  [(BWMeteorHeadroomNode *)self _releaseResources];
  v5.receiver = self;
  v5.super_class = BWMeteorHeadroomNode;
  [(BWNode *)&v5 didReachEndOfDataForInput:input];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v6 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, 0x1F21AAE10);
  v8 = CMGetAttachment(buffer, @"StillImageSettings", 0);
  captureRequestIdentifier = [v8 captureRequestIdentifier];
  v10 = CMGetAttachment(buffer, @"BWStillImageCaptureSettings", 0);
  v11 = [CMGetAttachment(buffer @"StillImageProcessingFlags"];
  lastMeteorHeadroom = 0.0;
  if (v11)
  {
    v20 = 0x1E696A000;
    goto LABEL_42;
  }

  v14 = v11;
  if (![(NSString *)self->_lastCaptureRequestIdentifier isEqualToString:captureRequestIdentifier])
  {

    self->_lastCaptureRequestIdentifier = [captureRequestIdentifier copy];
    self->_lastMeteorHeadroom = 0.0;
  }

  captureType = [v10 captureType];
  if (([v10 captureType] == 10 || objc_msgSend(v10, "captureType") == 12 || objc_msgSend(v10, "captureType") == 13) && (objc_msgSend(v10, "captureFlags") & 0x100000) != 0)
  {
    v16 = ([v10 sceneFlags] >> 2) & 1;
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  v17 = [v10 captureFlags] & 0x800;
  v18 = self->_gainMapMainImageDownscalingFactor != 0.0 && v17 == 0;
  if (v18)
  {
    v19 = BWSampleBufferGetAttachedMedia(buffer, 0x1F217BF50);
    LOBYTE(v16) = (v19 != 0) | v16;
  }

  else
  {
    v19 = 0;
  }

  v18 = captureType == 3;
  v20 = 0x1E696A000;
  if (!v18 && (v16 & 1) == 0)
  {
    goto LABEL_42;
  }

  if ((v14 & 0x40) != 0)
  {
    lastMeteorHeadroom = self->_lastMeteorHeadroom;
    if (lastMeteorHeadroom != 0.0)
    {
      goto LABEL_42;
    }

    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    v67 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v65[0] = 0;
    v23 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v23, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWMeteorHeadroomNode.m", 339, @"LastShownDate:BWMeteorHeadroomNode.m:339", @"LastShownBuild:BWMeteorHeadroomNode.m:339", 0);
    free(v23);
    v20 = 0x1E696A000uLL;
  }

  v25 = *MEMORY[0x1E695F050];
  v24 = *(MEMORY[0x1E695F050] + 8);
  v27 = *(MEMORY[0x1E695F050] + 16);
  v26 = *(MEMORY[0x1E695F050] + 24);
  outputWidth = [v8 outputWidth];
  v29 = outputWidth / [v8 outputHeight];
  if (!v19 || (v30 = CMSampleBufferGetImageBuffer(v19)) == 0)
  {
LABEL_34:
    bzero(v65, 0x200uLL);
    ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
    if (!ImageBuffer)
    {
      goto LABEL_42;
    }

    v51 = ImageBuffer;
    [v6 objectForKeyedSubscript:*off_1E798B218];
    v70.origin.x = OUTLINED_FUNCTION_16_3();
    if (!CGRectIsNull(v70))
    {
      CVPixelBufferGetWidth(v51);
      CVPixelBufferGetHeight(v51);
      v52 = OUTLINED_FUNCTION_16_3();
      FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v53, v54, v52, v55, v56, v57, v29);
      if (CGRectIsNull(v71))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_51();
        FigDebugAssert3();
        goto LABEL_42;
      }
    }

    if (self->_headroomProcessingType)
    {
      v58 = OUTLINED_FUNCTION_16_3();
      if ([v59 singleComponentGPUHistogramInputPixelBuffer:v58 validRect:? outputHistogram:?])
      {
        goto LABEL_42;
      }
    }

    else
    {
      v60 = OUTLINED_FUNCTION_16_3();
      if ([v61 singleComponentCPUHistogramInputPixelBuffer:v60 validRect:? subSampleX:? subSampleY:? outputHistogram:?])
      {
        goto LABEL_42;
      }
    }

    FigCaptureComputeImageGainFromMetadata();
  }

  v31 = v30;
  v64 = lastMeteorHeadroom;
  v68.origin.x = OUTLINED_FUNCTION_16_3();
  v63 = v29;
  if (CGRectIsNull(v68))
  {
    x = v25;
    y = v24;
    width = v27;
    height = v26;
  }

  else
  {
    CVPixelBufferGetWidth(v31);
    CVPixelBufferGetHeight(v31);
    v36 = OUTLINED_FUNCTION_16_3();
    v69.origin.x = FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRectForAttachedMedia(v37, v38, v36, v39, v40, v41, v29, v42);
    x = v69.origin.x;
    y = v69.origin.y;
    width = v69.size.width;
    height = v69.size.height;
    if (CGRectIsNull(v69))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_51();
      FigDebugAssert3();
      goto LABEL_48;
    }
  }

  bzero(v65, 0x200uLL);
  if ([(FigMetalHistogram *)self->_histogram singleComponentGPUHistogramInputPixelBuffer:v31 validRect:v65 outputHistogram:x, y, width, height])
  {
LABEL_48:
    lastMeteorHeadroom = v64;
    goto LABEL_42;
  }

  v43 = 0;
  v12 = 0.0;
  lastMeteorHeadroom = v64;
  do
  {
    v44 = vcvtq_f32_u32(*&v65[v43]);
    *&v12 = (((*&v12 + v44.f32[0]) + v44.f32[1]) + v44.f32[2]) + v44.f32[3];
    v43 += 8;
  }

  while (v43 != 512);
  if (*&v12 != 0.0)
  {
    do
    {
      OUTLINED_FUNCTION_2_60();
    }

    while (v47 != 1024);
    v48 = v46 / *&v45;
    *&v45 = v46 / *&v45;
    CMSetAttachment(buffer, @"MeteorPlusGainMapAverage", [*(v20 + 3480) numberWithFloat:v45], 1u);
    if (AttachedMedia)
    {
      *&v49 = v48;
      CMSetAttachment(AttachedMedia, @"MeteorPlusGainMapAverage", [*(v20 + 3480) numberWithFloat:v49], 1u);
    }

    v29 = v63;
    goto LABEL_34;
  }

LABEL_42:
  *&v12 = lastMeteorHeadroom;
  CMSetAttachment(buffer, @"MeteorHeadroom", [*(v20 + 3480) numberWithFloat:v12], 1u);
  if (AttachedMedia)
  {
    *&v62 = lastMeteorHeadroom;
    CMSetAttachment(AttachedMedia, @"MeteorHeadroom", [*(v20 + 3480) numberWithFloat:v62], 1u);
  }

  [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
}

- (uint64_t)prepareForCurrentConfigurationToBecomeLive
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end