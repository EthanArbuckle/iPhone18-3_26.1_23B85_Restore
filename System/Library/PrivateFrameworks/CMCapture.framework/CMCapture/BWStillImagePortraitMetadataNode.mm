@interface BWStillImagePortraitMetadataNode
- (BWStillImagePortraitMetadataNode)initWithNodeConfiguration:(id)configuration sdofRenderingVersion:(int)version sensorConfigurationsByPortType:(id)type defaultPortType:(id)portType defaultZoomFactor:(float)factor;
- (uint64_t)_attachPortraitLightingEffectMetadataToDepthMetadata:(uint64_t)result portType:(void *)type;
- (uint64_t)_loadSDOFRenderingBundle;
- (uint64_t)_loadSDOFRenderingTuningParametersForPortType:(float)type zoomFactorForPortType:;
- (uint64_t)prepareForCurrentConfigurationToBecomeLive;
- (void)dealloc;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWStillImagePortraitMetadataNode

- (BWStillImagePortraitMetadataNode)initWithNodeConfiguration:(id)configuration sdofRenderingVersion:(int)version sensorConfigurationsByPortType:(id)type defaultPortType:(id)portType defaultZoomFactor:(float)factor
{
  v20.receiver = self;
  v20.super_class = BWStillImagePortraitMetadataNode;
  v12 = [(BWNode *)&v20 init];
  v13 = v12;
  if (!v12)
  {
    return v13;
  }

  if (!version)
  {
    [BWStillImagePortraitMetadataNode initWithNodeConfiguration:sdofRenderingVersion:sensorConfigurationsByPortType:defaultPortType:defaultZoomFactor:];
LABEL_11:

    return 0;
  }

  if (!type)
  {
    [BWStillImagePortraitMetadataNode initWithNodeConfiguration:sdofRenderingVersion:sensorConfigurationsByPortType:defaultPortType:defaultZoomFactor:];
    goto LABEL_11;
  }

  [(BWNode *)v12 setSupportsLiveReconfiguration:1];
  v13->_sdofRenderingVersion = version;
  v13->_sensorConfigurationsByPortType = type;
  v13->_defaultPortType = portType;
  v13->_defaultZoomFactor = factor;
  if (FigCapturePlatformSupportsUniversalCompression())
  {
    v14 = FigCapturePixelFormatsByAddingCompressedVariants(&unk_1F22497F8, [configuration maxLossyCompressionLevel]);
  }

  else
  {
    v14 = &unk_1F22497F8;
  }

  v15 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v13];
  v16 = objc_alloc_init(BWVideoFormatRequirements);
  [(BWVideoFormatRequirements *)v16 setSupportedPixelFormats:v14];
  [(BWNodeInput *)v15 setFormatRequirements:v16];

  [(BWNodeInput *)v15 setPassthroughMode:1];
  [(BWNode *)v13 addInput:v15];

  v17 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v13];
  v18 = objc_alloc_init(BWVideoFormatRequirements);
  [(BWNodeOutput *)v17 setFormatRequirements:v18];

  [(BWNodeOutput *)v17 setPassthroughMode:1];
  [(BWNode *)v13 addOutput:v17];

  return v13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImagePortraitMetadataNode;
  [(BWNode *)&v3 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  if ([key isEqualToString:@"PrimaryFormat"])
  {
    output = self->super._output;

    [(BWNodeOutput *)output setFormat:format];
  }

  else
  {
    [key isEqualToString:@"Depth"];
    v10.receiver = self;
    v10.super_class = BWStillImagePortraitMetadataNode;
    [(BWNode *)&v10 didSelectFormat:format forInput:input forAttachedMediaKey:key];
  }
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v3.receiver = self;
  v3.super_class = BWStillImagePortraitMetadataNode;
  [(BWNode *)&v3 prepareForCurrentConfigurationToBecomeLive];
  if ([(BWStillImagePortraitMetadataNode *)self _loadSDOFRenderingBundle])
  {
    [BWStillImagePortraitMetadataNode prepareForCurrentConfigurationToBecomeLive];
  }
}

- (uint64_t)_loadSDOFRenderingBundle
{
  selfCopy = self;
  if (self)
  {
    v2 = *(self + 128);
    if (v2 >= 5)
    {
      v3 = 5;
    }

    else
    {
      v3 = v2;
    }

    v4 = BWLoadProcessorBundle(@"SDOFRendering", v3);
    if (v4)
    {
      *(selfCopy + 160) = [v4 classNamed:@"FigSDOFRenderingTuningParameters"];
      selfCopy = [(BWStillImagePortraitMetadataNode *)selfCopy _loadSDOFRenderingTuningParametersForPortType:*(selfCopy + 152) zoomFactorForPortType:?];
      if (selfCopy)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_6();
        FigDebugAssert3();
      }
    }

    else
    {
      return 4294954510;
    }
  }

  return selfCopy;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (BWSampleBufferGetAttachedMedia(buffer, @"Depth"))
  {
    v6 = *off_1E798D2B8;
    v7 = [CMGetAttachment(buffer *off_1E798D2B8];
    if (!v7)
    {
      goto LABEL_28;
    }

    v8 = CMGetAttachment(buffer, @"StillSettings", 0);
    if (!v8)
    {
      goto LABEL_28;
    }

    v9 = v8;
    v10 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
    if ([(NSDictionary *)self->_sensorConfigurationsByPortType count]< 2)
    {
      defaultPortType = self->_defaultPortType;
    }

    else
    {
      defaultPortType = [v10 objectForKeyedSubscript:*off_1E798B540];
    }

    v12 = BWPixelBufferDimensionsFromSampleBuffer(buffer);
    v26 = *MEMORY[0x1E695F050];
    v27 = *(MEMORY[0x1E695F050] + 16);
    if (!FigCFDictionaryGetCGRectIfPresent())
    {
      v26 = 0uLL;
      __asm { FMOV            V0.2D, #1.0 }

      v27 = _Q0;
    }

    FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v12, v12 >> 32, *&v26, *(&v26 + 1), *&v27, *(&v27 + 1), [objc_msgSend(v9 "requestedSettings")] / objc_msgSend(objc_msgSend(v9, "requestedSettings"), "outputHeight"));
    height = v28.size.height;
    if (CGRectIsNull(v28))
    {
      goto LABEL_28;
    }

    if ([objc_msgSend(v9 "requestedSettings")])
    {
      [objc_msgSend(objc_msgSend(v9 "captureSettings")];
      v20 = 1.0;
      if (v19 < 1.0)
      {
        v19 = 1.0;
      }
    }

    else
    {
      v21 = [objc_msgSend(v9 "requestedSettings")] / height;
      v22 = [objc_msgSend(v10 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
      if (v22)
      {
        v21 = v21 / vcvts_n_f32_s32(v22, 1uLL);
      }

      [objc_msgSend(v10 objectForKeyedSubscript:{*off_1E798B240), "floatValue"}];
      v20 = 1.0;
      if (v23 == 0.0)
      {
        v23 = 1.0;
      }

      v19 = v21 * v23;
    }

    v24 = v19 >= v20 ? v19 : v20;
    if ([(NSString *)defaultPortType isEqualToString:self->_currentPortType]&& v24 == self->_currentZoomFactorForSDOFRenderingParameters || ![(BWStillImagePortraitMetadataNode *)self _loadSDOFRenderingTuningParametersForPortType:v24 zoomFactorForPortType:?])
    {
      BWPortraitUtilitiesAttachLumaNoiseLevelToSampleBuffer(buffer, self->_sdofRenderingParameters);
      BWPortraitUtilitiesAttachSyntheticFocusRectangleToSampleBuffer(buffer);
      [v7 setObject:-[FigSDOFRenderingTuningParameters encodeParametersForSampleBuffer:captureType:](self->_sdofRenderingTuningParameters forKeyedSubscript:{"encodeParametersForSampleBuffer:captureType:", buffer, objc_msgSend(objc_msgSend(v9, "captureSettings"), "captureType") == 11), *off_1E798CEF0}];
      v25 = MEMORY[0x1E696AD98];
      [(FigSDOFRenderingTuningParameters *)self->_sdofRenderingTuningParameters simulatedAperture];
      [v7 setObject:objc_msgSend(v25 forKeyedSubscript:{"numberWithFloat:"), *off_1E798CEF8}];
      [BWStillImagePortraitMetadataNode _attachPortraitLightingEffectMetadataToDepthMetadata:v7 portType:?];
      CMSetAttachment(buffer, v6, v7, 1u);
      CMSetAttachment(buffer, *off_1E798D368, [MEMORY[0x1E696AD98] numberWithInt:self->_sdofRenderingVersion], 1u);
      [objc_msgSend(v9 "requestedSettings")];
    }

    else
    {
LABEL_28:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_101();
      FigDebugAssert3();
    }
  }

  else
  {
    v7 = 0;
  }

  [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
}

- (uint64_t)_loadSDOFRenderingTuningParametersForPortType:(float)type zoomFactorForPortType:
{
  if (result)
  {
    v5 = result;
    v6 = *(result + 168);

    *(v5 + 168) = 0;
    *(v5 + 176) = 0;

    *(v5 + 184) = 0;
    *(v5 + 192) = 0;
    v7 = [objc_msgSend(*(v5 + 136) objectForKeyedSubscript:{a2), "sensorIDDictionary"}];
    *&v8 = type;
    v9 = [FigCaptureCameraParameters sdofTuningParametersForSensorIDDictionary:v7 zoomFactor:v8];
    *(v5 + 184) = v9;
    if (v9 && (v10 = [objc_alloc(*(v5 + 160)) initWithTuningDictionary:*(v5 + 184)], (*(v5 + 192) = v10) != 0))
    {
      v11 = a2;
      result = 0;
      *(v5 + 168) = v11;
      *(v5 + 176) = type;
    }

    else
    {
      return 4294954510;
    }
  }

  return result;
}

- (uint64_t)_attachPortraitLightingEffectMetadataToDepthMetadata:(uint64_t)result portType:(void *)type
{
  if (result)
  {
    result = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(*(result + 136) "objectForKeyedSubscript:{"sensorIDDictionary"), "objectForKeyedSubscript:", @"PortraitLightingParameters", "objectForKeyedSubscript:", @"effectStrength", "doubleValue"}")];
    if (v3 != 0.0)
    {
      v4 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      v5 = *off_1E798D220;

      return [type setObject:v4 forKeyedSubscript:v5];
    }
  }

  return result;
}

- (uint64_t)initWithNodeConfiguration:sdofRenderingVersion:sensorConfigurationsByPortType:defaultPortType:defaultZoomFactor:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)initWithNodeConfiguration:sdofRenderingVersion:sensorConfigurationsByPortType:defaultPortType:defaultZoomFactor:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)prepareForCurrentConfigurationToBecomeLive
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

@end