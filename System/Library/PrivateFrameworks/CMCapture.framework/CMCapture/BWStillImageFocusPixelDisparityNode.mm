@interface BWStillImageFocusPixelDisparityNode
- (BWStillImageFocusPixelDisparityNode)initWithNodeConfiguration:(id)configuration sensorConfiguration:(id)sensorConfiguration disparityMapWidth:(unint64_t)width disparityMapHeight:(unint64_t)height depthIsAlwaysHighQuality:(BOOL)quality defaultZoomFactor:(float)factor;
- (uint64_t)_loadAndConfigureDisparityGeneratorForZoomFactor:(uint64_t)factor;
- (void)_attachDepthMetadataToSampleBuffer:(uint64_t)buffer;
- (void)_processDisparityForSampleBuffer:(uint64_t)buffer;
- (void)_removeConsumedAttachedMediaFromSampleBuffer:(uint64_t)buffer;
- (void)dealloc;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)processorOptionsForProcessorVersion:(float)version zoomFactor:;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWStillImageFocusPixelDisparityNode

- (BWStillImageFocusPixelDisparityNode)initWithNodeConfiguration:(id)configuration sensorConfiguration:(id)sensorConfiguration disparityMapWidth:(unint64_t)width disparityMapHeight:(unint64_t)height depthIsAlwaysHighQuality:(BOOL)quality defaultZoomFactor:(float)factor
{
  v42.receiver = self;
  v42.super_class = BWStillImageFocusPixelDisparityNode;
  v14 = [(BWNode *)&v42 init];
  if (v14)
  {
    if (configuration)
    {
      v14->_nodeConfiguration = configuration;
      if (sensorConfiguration)
      {
        sensorConfigurationCopy = sensorConfiguration;
        v14->_sensorConfiguration = sensorConfigurationCopy;
        if ([(BWSensorConfiguration *)sensorConfigurationCopy cameraInfo])
        {
          v16 = [(NSDictionary *)[(BWSensorConfiguration *)v14->_sensorConfiguration cameraInfo] objectForKeyedSubscript:*off_1E7989F18];
          if (v16)
          {
            [v16 doubleValue];
            *&v17 = v17 * 0.001;
            v14->_pixelSizeInMm = *&v17;
            v14->_depthIsAlwaysHighQuality = quality;
            v14->_defaultZoomFactor = factor;
            v18 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v14];
            v19 = objc_alloc_init(BWVideoFormatRequirements);
            [(BWVideoFormatRequirements *)v19 setSupportedPixelFormats:&unk_1F22480D0];
            [(BWNodeInput *)v18 setFormatRequirements:v19];

            [(BWNodeInput *)v18 setPassthroughMode:1];
            [(BWNode *)v14 addInput:v18];

            depthDataType = [(BWStillImageNodeConfiguration *)v14->_nodeConfiguration depthDataType];
            switch(depthDataType)
            {
              case 9:
                v28 = objc_alloc_init(BWNodeInputMediaConfiguration);
                v29 = +[BWVideoFormatRequirements formatRequirements];
                [v29 setSupportedPixelFormats:&unk_1F2248130];
                [(BWNodeInputMediaConfiguration *)v28 setFormatRequirements:v29];
                [(BWNodeInputMediaConfiguration *)v28 setPassthroughMode:0];
                [(BWNodeInput *)v14->super._input setMediaConfiguration:v28 forAttachedMediaKey:0x1F21AAB10];
                v30 = objc_alloc_init(BWNodeInputMediaConfiguration);
                v31 = +[BWVideoFormatRequirements formatRequirements];
                [v31 setSupportedPixelFormats:&unk_1F2248148];
                [(BWNodeInputMediaConfiguration *)v30 setFormatRequirements:v31];
                [(BWNodeInputMediaConfiguration *)v30 setPassthroughMode:0];
                [(BWNodeInput *)v14->super._input setMediaConfiguration:v30 forAttachedMediaKey:0x1F21AAB70];
                v32 = objc_alloc_init(BWNodeInputMediaConfiguration);
                v33 = +[BWVideoFormatRequirements formatRequirements];
                [v33 setSupportedPixelFormats:&unk_1F2248160];
                [(BWNodeInputMediaConfiguration *)v32 setFormatRequirements:v33];
                [(BWNodeInputMediaConfiguration *)v32 setPassthroughMode:0];
                [(BWNodeInput *)v14->super._input setMediaConfiguration:v32 forAttachedMediaKey:0x1F21AAB90];
                goto LABEL_13;
              case 5:
                v23 = objc_alloc_init(BWNodeInputMediaConfiguration);
                v27 = objc_alloc_init(BWVideoFormatRequirements);
                [(BWVideoFormatRequirements *)v27 setSupportedPixelFormats:&unk_1F2248118];
                [(BWNodeInputMediaConfiguration *)v23 setFormatRequirements:v27];

                [(BWNodeInputMediaConfiguration *)v23 setPassthroughMode:0];
                input = v14->super._input;
                v26 = 0x1F21AAAF0;
                break;
              case 4:
                v21 = objc_alloc_init(BWNodeInputMediaConfiguration);
                v22 = objc_alloc_init(BWVideoFormatRequirements);
                [(BWVideoFormatRequirements *)v22 setSupportedPixelFormats:&unk_1F22480E8];
                [(BWNodeInputMediaConfiguration *)v21 setFormatRequirements:v22];

                [(BWNodeInputMediaConfiguration *)v21 setPassthroughMode:0];
                [(BWNodeInput *)v14->super._input setMediaConfiguration:v21 forAttachedMediaKey:0x1F21AAB10];

                v23 = objc_alloc_init(BWNodeInputMediaConfiguration);
                v24 = objc_alloc_init(BWVideoFormatRequirements);
                [(BWVideoFormatRequirements *)v24 setSupportedPixelFormats:&unk_1F2248100];
                [(BWNodeInputMediaConfiguration *)v23 setFormatRequirements:v24];

                [(BWNodeInputMediaConfiguration *)v23 setPassthroughMode:0];
                input = v14->super._input;
                v26 = 0x1F21AAB50;
                break;
              default:
LABEL_13:
                v34 = objc_alloc_init(BWNodeInputMediaConfiguration);
                v35 = objc_alloc_init(BWVideoFormatRequirements);
                [(BWVideoFormatRequirements *)v35 setSupportedPixelFormats:&unk_1F2248178];
                [(BWNodeInputMediaConfiguration *)v34 setFormatRequirements:v35];
                [(BWNodeInputMediaConfiguration *)v34 setPassthroughMode:0];
                [(BWNodeInput *)v14->super._input setMediaConfiguration:v34 forAttachedMediaKey:0x1F21AAC70];
                v36 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v14];
                primaryMediaConfiguration = [(BWNodeOutput *)v36 primaryMediaConfiguration];
                v38 = objc_alloc_init(BWVideoFormatRequirements);
                [(BWVideoFormatRequirements *)v38 setSupportedPixelFormats:&unk_1F2248190];
                [(BWNodeOutputMediaConfiguration *)primaryMediaConfiguration setFormatRequirements:v38];

                [(BWNodeOutputMediaConfiguration *)primaryMediaConfiguration setProvidesPixelBufferPool:0];
                [(BWNodeOutputMediaConfiguration *)primaryMediaConfiguration setPassthroughMode:1];
                v39 = objc_alloc_init(BWNodeOutputMediaConfiguration);
                v40 = objc_alloc_init(BWVideoFormatRequirements);
                [(BWVideoFormatRequirements *)v40 setSupportedPixelFormats:&unk_1F22481A8];
                [(BWVideoFormatRequirements *)v40 setWidth:width];
                [(BWVideoFormatRequirements *)v40 setHeight:height];
                [(BWNodeOutputMediaConfiguration *)v39 setFormatRequirements:v40];

                [(BWNodeOutputMediaConfiguration *)v39 setPassthroughMode:0];
                [(BWNodeOutputMediaConfiguration *)v39 setProvidesPixelBufferPool:1];
                [(BWNodeOutput *)v36 setMediaConfiguration:v39 forAttachedMediaKey:@"Depth"];

                [(BWNode *)v14 addOutput:v36];
                *v14->_anon_b0 = 1065353216;
                *&v14->_anon_b0[20] = 1065353216;
                *&v14->_anon_b0[40] = 1065353216;
                return v14;
            }

            [(BWNodeInput *)input setMediaConfiguration:v23 forAttachedMediaKey:v26];

            goto LABEL_13;
          }

          [BWStillImageFocusPixelDisparityNode initWithNodeConfiguration:sensorConfiguration:disparityMapWidth:disparityMapHeight:depthIsAlwaysHighQuality:defaultZoomFactor:];
        }

        else
        {
          [BWStillImageFocusPixelDisparityNode initWithNodeConfiguration:sensorConfiguration:disparityMapWidth:disparityMapHeight:depthIsAlwaysHighQuality:defaultZoomFactor:];
        }
      }

      else
      {
        [BWStillImageFocusPixelDisparityNode initWithNodeConfiguration:sensorConfiguration:disparityMapWidth:disparityMapHeight:depthIsAlwaysHighQuality:defaultZoomFactor:];
      }
    }

    else
    {
      [BWStillImageFocusPixelDisparityNode initWithNodeConfiguration:sensorConfiguration:disparityMapWidth:disparityMapHeight:depthIsAlwaysHighQuality:defaultZoomFactor:];
    }

    return 0;
  }

  return v14;
}

- (void)dealloc
{
  [(FigFocusPixelDisparityGenerator *)self->_focusPixelDisparityGenerator finishProcessing];

  disparityFormatDescription = self->_disparityFormatDescription;
  if (disparityFormatDescription)
  {
    CFRelease(disparityFormatDescription);
  }

  v4.receiver = self;
  v4.super_class = BWStillImageFocusPixelDisparityNode;
  [(BWNode *)&v4 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  if ([key isEqualToString:@"PrimaryFormat"])
  {
    output = self->super._output;

    [(BWNodeOutput *)output setFormat:format];
  }

  else if (([key isEqualToString:0x1F21AAB50] & 1) == 0 && (objc_msgSend(key, "isEqualToString:", 0x1F21AAB10) & 1) == 0 && (objc_msgSend(key, "isEqualToString:", 0x1F21AAAF0) & 1) == 0 && (objc_msgSend(key, "isEqualToString:", 0x1F21AAC70) & 1) == 0 && (objc_msgSend(key, "isEqualToString:", 0x1F21AAC90) & 1) == 0)
  {
    v10.receiver = self;
    v10.super_class = BWStillImageFocusPixelDisparityNode;
    [(BWNode *)&v10 didSelectFormat:format forInput:input forAttachedMediaKey:key];
  }
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v3.receiver = self;
  v3.super_class = BWStillImageFocusPixelDisparityNode;
  [(BWNode *)&v3 prepareForCurrentConfigurationToBecomeLive];
  if ([(BWStillImageFocusPixelDisparityNode *)self _loadAndConfigureDisparityGeneratorForZoomFactor:?])
  {
    [BWStillImageFocusPixelDisparityNode prepareForCurrentConfigurationToBecomeLive];
  }
}

- (uint64_t)_loadAndConfigureDisparityGeneratorForZoomFactor:(uint64_t)factor
{
  if (!factor)
  {
    return 0;
  }

  *(factor + 152) = 0;
  v4 = -[FigCaptureCameraParameters focusPixelDisparityVersionForPortType:sensorIDString:](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters, "sharedInstance"), "focusPixelDisparityVersionForPortType:sensorIDString:", [*(factor + 144) portType], objc_msgSend(*(factor + 144), "sensorIDString"));
  depthDataType = [*(factor + 136) depthDataType];
  if (depthDataType == 9)
  {
    if (v4 >= 3)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (depthDataType == 5)
  {
    if (v4 >= 2)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (depthDataType == 4 && v4 != 1)
  {
    return 0;
  }

LABEL_9:
  v7 = [(BWStillImageFocusPixelDisparityNode *)factor processorOptionsForProcessorVersion:v4 zoomFactor:a2];
  if (!v7 || (v8 = v7, (v9 = BWLoadProcessorBundle(@"FPDisparity", v4)) == 0) || (v10 = [objc_alloc(objc_msgSend(v9 "principalClass"))], (*(factor + 152) = v10) == 0))
  {
    OUTLINED_FUNCTION_2_7();
    fig_log_get_emitter();
    OUTLINED_FUNCTION_8_2();
    FigDebugAssert3();
    OUTLINED_FUNCTION_2_7();
    fig_log_get_emitter();
    v11 = FigSignalErrorAtGM();
    if (!v11)
    {
      return v11;
    }

    goto LABEL_22;
  }

  [v10 setOptions:v8];
  [*(factor + 152) setFocusPixelMetadata:0];
  [*(factor + 152) setQualityEstimationEnabled:(*(factor + 244) & 1) == 0];
  if ([*(factor + 152) prepareToProcess:0])
  {
    v11 = 4294954516;
LABEL_22:

    *(factor + 152) = 0;
    return v11;
  }

  v11 = 0;
  *(factor + 252) = a2;
  return v11;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (!buffer)
  {
    FigCaptureGetFrameworkRadarComponent();
    v25 = OUTLINED_FUNCTION_11_5();
    if (OUTLINED_FUNCTION_15_1(v25))
    {
      v26 = v4;
    }

    else
    {
      v26 = v4 & 0xFFFFFFFE;
    }

    if (v26)
    {
      OUTLINED_FUNCTION_5_13();
      OUTLINED_FUNCTION_13_6();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    OUTLINED_FUNCTION_12_4();
    v30 = OUTLINED_FUNCTION_6_0();
    v38 = 0;
    v31 = OUTLINED_FUNCTION_2_7();
    v36 = 311;
    goto LABEL_37;
  }

  v8 = OUTLINED_FUNCTION_16_7(self, @"BWStillImageCaptureSettings");
  if (!v8)
  {
    FigCaptureGetFrameworkRadarComponent();
    v27 = OUTLINED_FUNCTION_11_5();
    if (OUTLINED_FUNCTION_15_1(v27))
    {
      v28 = v4;
    }

    else
    {
      v28 = v4 & 0xFFFFFFFE;
    }

    if (v28)
    {
      OUTLINED_FUNCTION_5_13();
      OUTLINED_FUNCTION_13_6();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    OUTLINED_FUNCTION_12_4();
    v30 = OUTLINED_FUNCTION_6_0();
    v38 = 0;
    v31 = OUTLINED_FUNCTION_2_7();
    v36 = 314;
LABEL_37:
    FigCapturePleaseFileRadar(v31, v32, 0, 0, v33, v36, v34, v35, 0);
    free(v30);
    goto LABEL_17;
  }

  captureFlags = [v8 captureFlags];
  if ((captureFlags & 0x800) != 0)
  {
    v10 = OUTLINED_FUNCTION_16_7(captureFlags, @"StillSettings");
    if (!v10)
    {
      goto LABEL_31;
    }

    v11 = v10;
    v12 = OUTLINED_FUNCTION_16_7(v10, *off_1E798A3C8);
    v13 = BWPixelBufferDimensionsFromSampleBuffer(buffer);
    v39 = *MEMORY[0x1E695F050];
    v40 = *(MEMORY[0x1E695F050] + 16);
    if (!FigCFDictionaryGetCGRectIfPresent())
    {
      v39 = 0uLL;
      __asm { FMOV            V0.2D, #1.0 }

      v40 = _Q0;
    }

    FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v13, v13 >> 32, *&v39, *(&v39 + 1), *&v40, *(&v40 + 1), [objc_msgSend(v11 "requestedSettings")] / objc_msgSend(objc_msgSend(v11, "requestedSettings"), "outputHeight"));
    height = v41.size.height;
    if (CGRectIsNull(v41))
    {
LABEL_31:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
    }

    else
    {
      v20 = [objc_msgSend(v11 "requestedSettings")] / height;
      v21 = [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
      if (v21)
      {
        v20 = v20 / vcvts_n_f32_s32(v21, 1uLL);
      }

      [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798B240), "floatValue"}];
      if (v22 == 0.0)
      {
        v22 = 1.0;
      }

      v23 = v20 * v22;
      if (v23 < 1.0)
      {
        v23 = 1.0;
      }

      if (v23 == self->_currentZoomFactorForFocusPixelDisparityGenerator || (v24 = [(BWStillImageFocusPixelDisparityNode *)self _loadAndConfigureDisparityGeneratorForZoomFactor:v23]) == 0)
      {
        [(BWStillImageFocusPixelDisparityNode *)self _processDisparityForSampleBuffer:buffer];
        goto LABEL_17;
      }

      v29 = v24;
      fig_log_get_emitter();
      v38 = v5;
      LODWORD(v37) = v29;
    }

    FigDebugAssert3();
  }

LABEL_17:
  if ([(BWStillImageNodeConfiguration *)self->_nodeConfiguration depthDataType:v37]== 5 || [(BWStillImageNodeConfiguration *)self->_nodeConfiguration depthDataType]== 9)
  {
    [(BWStillImageFocusPixelDisparityNode *)self _removeConsumedAttachedMediaFromSampleBuffer:buffer];
  }

  [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
}

- (void)_processDisparityForSampleBuffer:(uint64_t)buffer
{
  if (!buffer)
  {
    return;
  }

  v2 = a2;
  v4 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v4;
  if (!*(buffer + 152))
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    OUTLINED_FUNCTION_12_4();
    v9 = OUTLINED_FUNCTION_6_0();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v9, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageFocusPixelDisparityNode.m", 495, @"LastShownDate:BWStillImageFocusPixelDisparityNode.m:495", @"LastShownBuild:BWStillImageFocusPixelDisparityNode.m:495", 0);
    free(v9);
    LOBYTE(v9) = 0;
    ImageBuffer = 0;
    v2 = a2;
    goto LABEL_46;
  }

  depthDataType = [*(buffer + 136) depthDataType];
  v45 = v2;
  switch(depthDataType)
  {
    case 9:
      v17 = +[FigCaptureCameraParameters sharedInstance];
      portType = [OUTLINED_FUNCTION_14_1() portType];
      -[FigCaptureCameraParameters focusPixelDisparityVersionForPortType:sensorIDString:](v17, "focusPixelDisparityVersionForPortType:sensorIDString:", portType, [OUTLINED_FUNCTION_14_1() sensorIDString]);
      portType2 = [OUTLINED_FUNCTION_14_1() portType];
      sensorIDString = [OUTLINED_FUNCTION_14_1() sensorIDString];
      LODWORD(v21) = *(buffer + 252);
      v22 = [(FigCaptureCameraParameters *)v17 focusPixelDisparityTuningParametersForPortType:portType2 sensorIDString:sensorIDString zoomFactor:v21];
      if (!v22)
      {
        goto LABEL_53;
      }

      v23 = [v22 objectForKeyedSubscript:@"sizes"];
      v2 = v45;
      if (!v23)
      {
        goto LABEL_77;
      }

      v24 = v23;
      v25 = BWPixelBufferDimensionsFromSampleBuffer(v45);
      if (__PAIR64__([objc_msgSend(objc_msgSend(v24 objectForKeyedSubscript:{@"color_size", "objectForKeyedSubscript:", @"height", "intValue"}], objc_msgSend(objc_msgSend(objc_msgSend(v24, "objectForKeyedSubscript:", @"color_size"), "objectForKeyedSubscript:", @"width"), "intValue")) != v25)
      {
        goto LABEL_79;
      }

      AttachedMedia = BWSampleBufferGetAttachedMedia(v45, 0x1F21AAB10);
      v9 = AttachedMedia;
      if (!AttachedMedia)
      {
        goto LABEL_74;
      }

      ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
      if (!ImageBuffer)
      {
LABEL_76:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_15();
        FigDebugAssert3();
        LOBYTE(v9) = 0;
        goto LABEL_46;
      }

      v27 = BWPixelBufferDimensionsFromSampleBuffer(v9);
      if ([objc_msgSend(objc_msgSend(v24 objectForKeyedSubscript:{@"green_size", "objectForKeyedSubscript:", @"width", "intValue"}] != v27)
      {
LABEL_79:
        LOBYTE(v9) = 0;
        goto LABEL_80;
      }

      if (__PAIR64__([objc_msgSend(objc_msgSend(v24 objectForKeyedSubscript:{@"green_size", "objectForKeyedSubscript:", @"height", "intValue"}], objc_msgSend(objc_msgSend(objc_msgSend(v24, "objectForKeyedSubscript:", @"raw_size"), "objectForKeyedSubscript:", @"width"), "intValue")) != v27 || objc_msgSend(objc_msgSend(objc_msgSend(v24, "objectForKeyedSubscript:", @"raw_size"), "objectForKeyedSubscript:", @"height"), "intValue") != HIDWORD(v27))
      {
LABEL_53:
        LOBYTE(v9) = 0;
        ImageBuffer = 0;
LABEL_61:
        v2 = v45;
        goto LABEL_46;
      }

      v2 = v45;
      v28 = BWSampleBufferGetAttachedMedia(v45, 0x1F21AAB70);
      if (!v28)
      {
        goto LABEL_77;
      }

      v29 = CMSampleBufferGetImageBuffer(v28);
      if (!v29)
      {
        goto LABEL_77;
      }

      v16 = v29;
      v30 = BWSampleBufferGetAttachedMedia(v45, 0x1F21AAB90);
      if (!v30)
      {
        goto LABEL_77;
      }

      v31 = CMSampleBufferGetImageBuffer(v30);
      if (!v31)
      {
        goto LABEL_77;
      }

      v15 = v31;
      v13 = 0;
      v11 = 0;
      break;
    case 5:
      v14 = BWSampleBufferGetAttachedMedia(v2, 0x1F21AAAF0);
      if (v14)
      {
        ImageBuffer = CMSampleBufferGetImageBuffer(v14);
        if (ImageBuffer)
        {
          v13 = 0;
          v11 = 0;
          goto LABEL_15;
        }

        goto LABEL_76;
      }

      goto LABEL_77;
    case 4:
      v6 = BWSampleBufferGetAttachedMedia(v2, 0x1F21AAB10);
      if (v6)
      {
        ImageBuffer = CMSampleBufferGetImageBuffer(v6);
        if (ImageBuffer)
        {
          v8 = BWSampleBufferGetAttachedMedia(v2, 0x1F21AAB50);
          LOBYTE(v9) = v8;
          if (v8)
          {
            v10 = CMSampleBufferGetImageBuffer(v8);
            if (v10)
            {
              v11 = v10;
              v12 = OUTLINED_FUNCTION_16_7(v10, *off_1E798A388);
              if (v12)
              {
                v13 = v12;
LABEL_15:
                v15 = 0;
                v16 = 0;
                break;
              }
            }

            fig_log_get_emitter();
            OUTLINED_FUNCTION_1_16();
            goto LABEL_78;
          }

LABEL_74:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_15();
          FigDebugAssert3();
LABEL_80:
          ImageBuffer = 0;
          goto LABEL_46;
        }

        goto LABEL_76;
      }

LABEL_77:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_15();
LABEL_78:
      FigDebugAssert3();
      goto LABEL_79;
    default:
      v13 = 0;
      v11 = 0;
      v15 = 0;
      v16 = 0;
      ImageBuffer = 0;
      break;
  }

  v9 = CMGetAttachment(v2, *off_1E798A3C8, 0);
  if (!v9)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_16();
    FigDebugAssert3();
LABEL_66:
    ImageBuffer = 0;
    goto LABEL_46;
  }

  if ([*(buffer + 136) depthDataType] != 9)
  {
    v32 = [v9 objectForKeyedSubscript:*off_1E798B798];
    if (!v32)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_16();
LABEL_65:
      FigDebugAssert3();
      LOBYTE(v9) = 0;
      goto LABEL_66;
    }

    if (!CGRectMakeWithDictionaryRepresentation(v32, &rect))
    {
      goto LABEL_64;
    }
  }

  v33 = BWSampleBufferGetAttachedMedia(v2, 0x1F21AAC70);
  if (!v33)
  {
LABEL_64:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_16();
    goto LABEL_65;
  }

  v34 = ImageBuffer;
  v35 = CMSampleBufferGetImageBuffer(v33);
  if (!v35)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_16();
    FigDebugAssert3();
    LOBYTE(v9) = 0;
    goto LABEL_56;
  }

  v36 = v35;
  v37 = BWSampleBufferGetAttachedMedia(v45, 0x1F21AAC90);
  if (v37)
  {
    v9 = CMSampleBufferGetImageBuffer(v37);
    if (!v9)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_16();
      FigDebugAssert3();
LABEL_56:
      ImageBuffer = 0;
LABEL_58:
      v2 = v45;
      goto LABEL_46;
    }
  }

  else
  {
    v9 = 0;
  }

  ImageBuffer = [objc_msgSend(objc_msgSend(*(buffer + 16) mediaPropertiesForAttachedMediaKey:{@"Depth", "livePixelBufferPool"), "newPixelBuffer"}];
  if (!ImageBuffer)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_16();
    FigDebugAssert3();
    LOBYTE(v9) = 0;
    goto LABEL_58;
  }

  [OUTLINED_FUNCTION_4_17() setImageSampleBuffer:v45];
  [OUTLINED_FUNCTION_4_17() setRawImagePixelBufferBuffer:v34];
  [OUTLINED_FUNCTION_4_17() setFocusPixelBuffer:v11];
  [OUTLINED_FUNCTION_4_17() setFocusPixelMetadata:v13];
  [OUTLINED_FUNCTION_4_17() setFocusPixelValidArea:?];
  [OUTLINED_FUNCTION_4_17() setPersonSegmentationPixelBuffer:v36];
  [OUTLINED_FUNCTION_4_17() setPersonSegmentationConfidencePixelBuffer:v9];
  [OUTLINED_FUNCTION_4_17() setOutDisparity:ImageBuffer];
  [OUTLINED_FUNCTION_4_17() setH0:v16];
  [OUTLINED_FUNCTION_4_17() setH1:v15];
  if ([OUTLINED_FUNCTION_4_17() process])
  {
    LOBYTE(v9) = 0;
    v2 = v45;
    goto LABEL_46;
  }

  if ([OUTLINED_FUNCTION_4_17() finishProcessing])
  {
    LOBYTE(v9) = 0;
    goto LABEL_61;
  }

  v2 = v45;
  [(BWStillImageFocusPixelDisparityNode *)buffer _removeConsumedAttachedMediaFromSampleBuffer:v45];
  v38 = OUTLINED_FUNCTION_2_7();
  if (BWCMSampleBufferCreateCopyWithNewPixelBuffer(v38, v39, v40, v41))
  {
    fig_log_get_emitter();
    FigDebugAssert3();
  }

  else
  {
    [(BWStillImageFocusPixelDisparityNode *)buffer _attachDepthMetadataToSampleBuffer:v45];
    BWSampleBufferSetAttachedMedia(v45, @"Depth", 0);
  }

  LOBYTE(v9) = 1;
LABEL_46:
  [OUTLINED_FUNCTION_3_8() setImageSampleBuffer:?];
  [OUTLINED_FUNCTION_3_8() setRawImagePixelBufferBuffer:?];
  [OUTLINED_FUNCTION_3_8() setFocusPixelBuffer:?];
  [OUTLINED_FUNCTION_3_8() setFocusPixelMetadata:?];
  [OUTLINED_FUNCTION_4_17() setFocusPixelValidArea:?];
  [OUTLINED_FUNCTION_3_8() setPersonSegmentationPixelBuffer:?];
  [OUTLINED_FUNCTION_3_8() setPersonSegmentationConfidencePixelBuffer:?];
  [OUTLINED_FUNCTION_3_8() setOutDisparity:?];
  [OUTLINED_FUNCTION_3_8() setH0:?];
  [OUTLINED_FUNCTION_3_8() setH1:?];
  if (ImageBuffer)
  {
    CFRelease(ImageBuffer);
  }

  if ((v9 & 1) == 0)
  {
    [(BWStillImageFocusPixelDisparityNode *)buffer _removeConsumedAttachedMediaFromSampleBuffer:v2];
  }
}

- (void)_removeConsumedAttachedMediaFromSampleBuffer:(uint64_t)buffer
{
  if (buffer)
  {
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AAB10);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AAAF0);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AAB50);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AAC70);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AAC90);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AAB70);

    BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AAB90);
  }
}

- (void)processorOptionsForProcessorVersion:(float)version zoomFactor:
{
  if (!self)
  {
    return 0;
  }

  v6 = +[FigCaptureCameraParameters sharedInstance];
  portType = [OUTLINED_FUNCTION_10_5() portType];
  sensorIDString = [OUTLINED_FUNCTION_10_5() sensorIDString];
  *&v9 = version;
  v10 = [(FigCaptureCameraParameters *)v6 focusPixelDisparityTuningParametersForPortType:portType sensorIDString:sensorIDString zoomFactor:v9];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  if (a2 < 3)
  {
    v17 = 0;
  }

  else
  {
    v12 = [v10 objectForKeyedSubscript:@"sizes"];
    if (!v12)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      goto LABEL_15;
    }

    v13 = v12;
    v14 = [objc_msgSend(objc_msgSend(v12 objectForKeyedSubscript:{@"disparity_size", "objectForKeyedSubscript:", @"width", "intValue"}];
    if (v14 != [*(self + 136) depthDataOutputDimensions])
    {
      return 0;
    }

    v15 = [objc_msgSend(objc_msgSend(v13 objectForKeyedSubscript:{@"disparity_size", "objectForKeyedSubscript:", @"height", "intValue"}];
    if (v15 != [*(self + 136) depthDataOutputDimensions] >> 32)
    {
      return 0;
    }

    portType2 = [OUTLINED_FUNCTION_10_5() portType];
    v17 = -[FigCaptureCameraParameters focusPixelsPatternsForPortType:sensorIDString:](v6, "focusPixelsPatternsForPortType:sensorIDString:", portType2, [OUTLINED_FUNCTION_10_5() sensorIDString]);
    if (!v17)
    {
      return 0;
    }
  }

  portType3 = [OUTLINED_FUNCTION_10_5() portType];
  cameraInfo = [OUTLINED_FUNCTION_10_5() cameraInfo];
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&cameraInfo forKeys:&portType3 count:1];
  if (!v18)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
LABEL_15:
    FigDebugAssert3();
    return 0;
  }

  v19 = *off_1E798A970;
  v22[0] = *off_1E798A9D0;
  v22[1] = v19;
  v23[0] = v11;
  v23[1] = v18;
  v20 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v23, v22, 2)}];
  [v20 setObject:v17 forKeyedSubscript:@"Patterns"];
  return v20;
}

- (void)_attachDepthMetadataToSampleBuffer:(uint64_t)buffer
{
  if (buffer)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (v4 && ((v5 = -[FigCaptureCameraParameters focusPixelDisparityVersionForPortType:sensorIDString:](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters, "sharedInstance"), "focusPixelDisparityVersionForPortType:sensorIDString:", [*(buffer + 144) portType], objc_msgSend(*(buffer + 144), "sensorIDString")), !-[FigCaptureCameraParameters portraitTapToRefocusPrevented](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters, "sharedInstance"), "portraitTapToRefocusPrevented")) ? (v6 = -15536) : (v6 = -14536), v5 <= 1 ? (v7 = 30000) : (v7 = v6), (CurrentMajorVersion = FigDepthDataGetCurrentMajorVersion(), (*(buffer + 244) & 1) == 0) ? (v9 = objc_msgSend(*(buffer + 152), "disparityQuality")) : (v9 = 1), CMGetAttachment(a2, *off_1E798A3C8, 0) && (size = *MEMORY[0x1E695F060], (v10 = CMGetAttachment(a2, @"OriginalCameraIntrinsicMatrixReferenceDimensions", 0)) != 0)))
    {
      v11 = v10;
      if (CGSizeMakeWithDictionaryRepresentation(v10, &size))
      {
        v12 = CMGetAttachment(a2, @"OriginalCameraIntrinsicMatrix", 0);
        if (v12)
        {
          v13 = v12;
          [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", (v7 + v5) | (CurrentMajorVersion << 16)), *off_1E798D010}];
          [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v9), *off_1E798D008}];
          [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798CFD0];
          [v4 setObject:&unk_1F22426B8 forKeyedSubscript:*off_1E798CFC0];
          LODWORD(v14) = *(buffer + 240);
          [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v14), *off_1E798D000}];
          [v4 setObject:v13 forKeyedSubscript:*off_1E798CFD8];
          [v4 setObject:v11 forKeyedSubscript:*off_1E798CFE0];
          [v4 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", buffer + 176, 64), *off_1E798CFC8}];
          CMSetAttachment(a2, *off_1E798D2B8, v4, 1u);
LABEL_17:

          return;
        }
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
    }

    FigDebugAssert3();
    goto LABEL_17;
  }
}

- (uint64_t)initWithNodeConfiguration:sensorConfiguration:disparityMapWidth:disparityMapHeight:depthIsAlwaysHighQuality:defaultZoomFactor:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)initWithNodeConfiguration:sensorConfiguration:disparityMapWidth:disparityMapHeight:depthIsAlwaysHighQuality:defaultZoomFactor:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)initWithNodeConfiguration:sensorConfiguration:disparityMapWidth:disparityMapHeight:depthIsAlwaysHighQuality:defaultZoomFactor:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)initWithNodeConfiguration:sensorConfiguration:disparityMapWidth:disparityMapHeight:depthIsAlwaysHighQuality:defaultZoomFactor:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

@end