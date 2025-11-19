@interface BWStillImagePortraitMetadataNode
- (BWStillImagePortraitMetadataNode)initWithNodeConfiguration:(id)a3 sdofRenderingVersion:(int)a4 sensorConfigurationsByPortType:(id)a5 defaultPortType:(id)a6 defaultZoomFactor:(float)a7;
- (uint64_t)_attachPortraitLightingEffectMetadataToDepthMetadata:(uint64_t)result portType:(void *)a2;
- (uint64_t)_loadSDOFRenderingBundle;
- (uint64_t)_loadSDOFRenderingTuningParametersForPortType:(float)a3 zoomFactorForPortType:;
- (uint64_t)prepareForCurrentConfigurationToBecomeLive;
- (void)dealloc;
- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWStillImagePortraitMetadataNode

- (BWStillImagePortraitMetadataNode)initWithNodeConfiguration:(id)a3 sdofRenderingVersion:(int)a4 sensorConfigurationsByPortType:(id)a5 defaultPortType:(id)a6 defaultZoomFactor:(float)a7
{
  v20.receiver = self;
  v20.super_class = BWStillImagePortraitMetadataNode;
  v12 = [(BWNode *)&v20 init];
  v13 = v12;
  if (!v12)
  {
    return v13;
  }

  if (!a4)
  {
    [BWStillImagePortraitMetadataNode initWithNodeConfiguration:sdofRenderingVersion:sensorConfigurationsByPortType:defaultPortType:defaultZoomFactor:];
LABEL_11:

    return 0;
  }

  if (!a5)
  {
    [BWStillImagePortraitMetadataNode initWithNodeConfiguration:sdofRenderingVersion:sensorConfigurationsByPortType:defaultPortType:defaultZoomFactor:];
    goto LABEL_11;
  }

  [(BWNode *)v12 setSupportsLiveReconfiguration:1];
  v13->_sdofRenderingVersion = a4;
  v13->_sensorConfigurationsByPortType = a5;
  v13->_defaultPortType = a6;
  v13->_defaultZoomFactor = a7;
  if (FigCapturePlatformSupportsUniversalCompression())
  {
    v14 = FigCapturePixelFormatsByAddingCompressedVariants(&unk_1F22497F8, [a3 maxLossyCompressionLevel]);
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

- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5
{
  if ([a5 isEqualToString:@"PrimaryFormat"])
  {
    output = self->super._output;

    [(BWNodeOutput *)output setFormat:a3];
  }

  else
  {
    [a5 isEqualToString:@"Depth"];
    v10.receiver = self;
    v10.super_class = BWStillImagePortraitMetadataNode;
    [(BWNode *)&v10 didSelectFormat:a3 forInput:a4 forAttachedMediaKey:a5];
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
  v1 = a1;
  if (a1)
  {
    v2 = *(a1 + 128);
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
      *(v1 + 160) = [v4 classNamed:@"FigSDOFRenderingTuningParameters"];
      v1 = [(BWStillImagePortraitMetadataNode *)v1 _loadSDOFRenderingTuningParametersForPortType:*(v1 + 152) zoomFactorForPortType:?];
      if (v1)
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

  return v1;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  if (BWSampleBufferGetAttachedMedia(a3, @"Depth"))
  {
    v6 = *off_1E798D2B8;
    v7 = [CMGetAttachment(a3 *off_1E798D2B8];
    if (!v7)
    {
      goto LABEL_28;
    }

    v8 = CMGetAttachment(a3, @"StillSettings", 0);
    if (!v8)
    {
      goto LABEL_28;
    }

    v9 = v8;
    v10 = CMGetAttachment(a3, *off_1E798A3C8, 0);
    if ([(NSDictionary *)self->_sensorConfigurationsByPortType count]< 2)
    {
      defaultPortType = self->_defaultPortType;
    }

    else
    {
      defaultPortType = [v10 objectForKeyedSubscript:*off_1E798B540];
    }

    v12 = BWPixelBufferDimensionsFromSampleBuffer(a3);
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
      BWPortraitUtilitiesAttachLumaNoiseLevelToSampleBuffer(a3, self->_sdofRenderingParameters);
      BWPortraitUtilitiesAttachSyntheticFocusRectangleToSampleBuffer(a3);
      [v7 setObject:-[FigSDOFRenderingTuningParameters encodeParametersForSampleBuffer:captureType:](self->_sdofRenderingTuningParameters forKeyedSubscript:{"encodeParametersForSampleBuffer:captureType:", a3, objc_msgSend(objc_msgSend(v9, "captureSettings"), "captureType") == 11), *off_1E798CEF0}];
      v25 = MEMORY[0x1E696AD98];
      [(FigSDOFRenderingTuningParameters *)self->_sdofRenderingTuningParameters simulatedAperture];
      [v7 setObject:objc_msgSend(v25 forKeyedSubscript:{"numberWithFloat:"), *off_1E798CEF8}];
      [BWStillImagePortraitMetadataNode _attachPortraitLightingEffectMetadataToDepthMetadata:v7 portType:?];
      CMSetAttachment(a3, v6, v7, 1u);
      CMSetAttachment(a3, *off_1E798D368, [MEMORY[0x1E696AD98] numberWithInt:self->_sdofRenderingVersion], 1u);
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

  [(BWNodeOutput *)self->super._output emitSampleBuffer:a3];
}

- (uint64_t)_loadSDOFRenderingTuningParametersForPortType:(float)a3 zoomFactorForPortType:
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
    *&v8 = a3;
    v9 = [FigCaptureCameraParameters sdofTuningParametersForSensorIDDictionary:v7 zoomFactor:v8];
    *(v5 + 184) = v9;
    if (v9 && (v10 = [objc_alloc(*(v5 + 160)) initWithTuningDictionary:*(v5 + 184)], (*(v5 + 192) = v10) != 0))
    {
      v11 = a2;
      result = 0;
      *(v5 + 168) = v11;
      *(v5 + 176) = a3;
    }

    else
    {
      return 4294954510;
    }
  }

  return result;
}

- (uint64_t)_attachPortraitLightingEffectMetadataToDepthMetadata:(uint64_t)result portType:(void *)a2
{
  if (result)
  {
    result = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(*(result + 136) "objectForKeyedSubscript:{"sensorIDDictionary"), "objectForKeyedSubscript:", @"PortraitLightingParameters", "objectForKeyedSubscript:", @"effectStrength", "doubleValue"}")];
    if (v3 != 0.0)
    {
      v4 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      v5 = *off_1E798D220;

      return [a2 setObject:v4 forKeyedSubscript:v5];
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