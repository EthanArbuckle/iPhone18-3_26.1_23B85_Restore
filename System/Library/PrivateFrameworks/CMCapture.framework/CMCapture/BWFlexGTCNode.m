@interface BWFlexGTCNode
- (BWFlexGTCNode)initWithNodeConfiguration:(id)a3 sensorConfigurationsByPortType:(id)a4 metalCommandQueue:(id)a5;
- (uint64_t)prepareForCurrentConfigurationToBecomeLive;
- (void)_releaseResources;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWFlexGTCNode

- (BWFlexGTCNode)initWithNodeConfiguration:(id)a3 sensorConfigurationsByPortType:(id)a4 metalCommandQueue:(id)a5
{
  v24.receiver = self;
  v24.super_class = BWFlexGTCNode;
  v8 = [(BWNode *)&v24 init];
  v9 = v8;
  if (!v8)
  {
    return v9;
  }

  [(BWNode *)v8 setSupportsLiveReconfiguration:1];
  v9->_enableHighlightAdjustment = 1;
  v9->_commandQueue = a5;
  if (!a3)
  {
    [BWFlexGTCNode initWithNodeConfiguration:sensorConfigurationsByPortType:metalCommandQueue:];
LABEL_15:

    return 0;
  }

  v9->_nodeConfiguration = a3;
  if (!a4)
  {
    [BWFlexGTCNode initWithNodeConfiguration:sensorConfigurationsByPortType:metalCommandQueue:];
    goto LABEL_15;
  }

  v9->_sensorIDDictionaryByPortType = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(a4, "count")}];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [a4 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(a4);
        }

        -[NSMutableDictionary setObject:forKeyedSubscript:](v9->_sensorIDDictionaryByPortType, "setObject:forKeyedSubscript:", [objc_msgSend(a4 objectForKeyedSubscript:{*(*(&v20 + 1) + 8 * v13)), "sensorIDDictionary"}], *(*(&v20 + 1) + 8 * v13));
        ++v13;
      }

      while (v11 != v13);
      v11 = [a4 countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v9];
  v15 = objc_alloc_init(BWVideoFormatRequirements);
  v16 = [MEMORY[0x1E695DF70] arrayWithArray:&unk_1F2247F20];
  [v16 addObjectsFromArray:{FigCaptureSupportedPixelFormatsForCompressionType(4, 1, 0, 3)}];
  [(BWVideoFormatRequirements *)v15 setSupportedPixelFormats:v16];
  [(BWNodeInput *)v14 setFormatRequirements:v15];
  [(BWNodeInput *)v14 setPassthroughMode:1];
  [(BWNode *)v9 addInput:v14];
  v17 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v9];
  [(BWNodeOutput *)v17 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
  [(BWNodeOutput *)v17 setPassthroughMode:1];
  [(BWNode *)v9 addOutput:v17];
  return v9;
}

- (void)dealloc
{
  [(BWFlexGTCNode *)&self->super.super.isa _releaseResources];

  v3.receiver = self;
  v3.super_class = BWFlexGTCNode;
  [(BWNode *)&v3 dealloc];
}

- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4
{
  if (!a3)
  {
    [(BWFlexGTCNode *)&self->super.super.isa _releaseResources];
  }

  v7.receiver = self;
  v7.super_class = BWFlexGTCNode;
  [(BWNode *)&v7 didReachEndOfDataForConfigurationID:a3 input:a4];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v6.receiver = self;
  v6.super_class = BWFlexGTCNode;
  [(BWNode *)&v6 prepareForCurrentConfigurationToBecomeLive];
  if (!self->_metalContext)
  {
    v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    if (!v3)
    {
      [BWFlexGTCNode prepareForCurrentConfigurationToBecomeLive];
      return;
    }

    v4 = [objc_alloc(MEMORY[0x1E6991778]) initWithbundle:v3 andOptionalCommandQueue:self->_commandQueue];
    self->_metalContext = v4;
    if (!v4)
    {
      [BWFlexGTCNode prepareForCurrentConfigurationToBecomeLive];
      return;
    }
  }

  if (!self->_cmiFlexGTCStage)
  {
    v5 = [objc_alloc(MEMORY[0x1E69916E0]) initWithOptionalCommandQueue:{-[FigMetalContext commandQueue](self->_metalContext, "commandQueue")}];
    self->_cmiFlexGTCStage = v5;
    if (!v5)
    {
      [BWFlexGTCNode prepareForCurrentConfigurationToBecomeLive];
    }
  }
}

- (void)_releaseResources
{
  if (a1)
  {

    a1[21] = 0;
    a1[16] = 0;

    a1[17] = 0;
    a1[18] = 0;
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  if (!a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
LABEL_50:
    FigDebugAssert3();
    goto LABEL_42;
  }

  sbuf = BWSampleBufferGetAttachedMedia(a3, 0x1F217BF50);
  if (!sbuf)
  {
    goto LABEL_42;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  if (!ImageBuffer)
  {
    goto LABEL_49;
  }

  v5 = ImageBuffer;
  v6 = a3;
  v7 = CMSampleBufferGetImageBuffer(a3);
  if (!v7)
  {
    goto LABEL_49;
  }

  v8 = v7;
  v9 = *off_1E798A3C8;
  v10 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  if (!v10)
  {
    goto LABEL_49;
  }

  v11 = v10;
  v68 = 1;
  v67 = 0x424800003C03126FLL;
  if (!self->_enableHighlightAdjustment)
  {
    goto LABEL_34;
  }

  v12 = [v10 objectForKeyedSubscript:*off_1E798B2B0];
  if (!v12 || ([v12 floatValue], v14 = v13, (v15 = objc_msgSend(v11, "objectForKeyedSubscript:", *off_1E798B1C8)) == 0) || (v16 = v9, objc_msgSend(v15, "floatValue"), v18 = v17, (v19 = objc_msgSend(objc_msgSend(objc_msgSend(v11, "objectForKeyedSubscript:", *off_1E798B220), "objectForKeyedSubscript:", *off_1E798ACB8), "objectForKeyedSubscript:", *off_1E798ACE8)) == 0))
  {
LABEL_49:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    goto LABEL_50;
  }

  v20 = v19;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v21 = [v19 countByEnumeratingWithState:&v63 objects:v62 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v64;
    v24 = *off_1E798B5C0;
    v25 = 0.0;
    v59 = *(MEMORY[0x1E695F050] + 16);
    v60 = *MEMORY[0x1E695F050];
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v64 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v27 = *(*(&v63 + 1) + 8 * i);
        recta.origin = v60;
        recta.size = v59;
        if (CGRectMakeWithDictionaryRepresentation([v27 objectForKeyedSubscript:v24], &recta))
        {
          v25 = v25 + recta.size.height * recta.size.width;
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v63 objects:v62 count:16];
    }

    while (v22);
  }

  else
  {
    v25 = 0.0;
  }

  if (v14 >= 2.21)
  {
    v6 = a3;
    v9 = v16;
    if (v18 >= 2.9)
    {
      v28 = 5.0;
      if (v25 >= 0.0225)
      {
        goto LABEL_33;
      }

      if (v25 >= 0.0197)
      {
LABEL_32:
        v28 = 15.0;
        goto LABEL_33;
      }
    }
  }

  else
  {
    v6 = a3;
    v9 = v16;
    if (v14 >= 1.67)
    {
      if (v25 < 0.0195 || v18 < 0.37)
      {
        v28 = 50.0;
        if (v25 < 0.01 || v18 < 0.65)
        {
          goto LABEL_33;
        }
      }

      goto LABEL_32;
    }
  }

  v28 = 50.0;
LABEL_33:
  LODWORD(v67) = 994352038;
  *(&v67 + 1) = v28;
LABEL_34:
  v29 = CMGetAttachment(v6, @"StillSettings", 0);
  if (!v29)
  {
    goto LABEL_46;
  }

  v30 = v29;
  CVPixelBufferGetWidth(v8);
  CVPixelBufferGetHeight(v8);
  Width = CVPixelBufferGetWidth(v5);
  Height = CVPixelBufferGetHeight(v5);
  v33 = v9;
  v34 = CMGetAttachment(sbuf, v9, 0);
  if (!v34 || !self->_cmiFlexGTCStage)
  {
    goto LABEL_46;
  }

  v35 = v34;
  v36 = [v30 requestedSettings];
  if (!v36)
  {
    goto LABEL_42;
  }

  v37 = v36;
  FigCaptureMetadataUtilitiesGetFinalCropRect();
  OUTLINED_FUNCTION_2_3();
  v38 = [v37 outputWidth];
  v39 = v38 / [v37 outputHeight];
  v40 = OUTLINED_FUNCTION_3();
  FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v41, v42, v40, v43, v44, v45, v39);
  OUTLINED_FUNCTION_2_3();
  if (CGRectIsNull(v69) || (FinalCropRect = FigCaptureMetadataUtilitiesGetFinalCropRect(), FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(Width, Height, FinalCropRect, v47, v48, v49, v39), x = v70.origin.x, y = v70.origin.y, v52 = v70.size.width, v53 = v70.size.height, CGRectIsNull(v70)))
  {
LABEL_46:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    goto LABEL_50;
  }

  v71.origin.x = OUTLINED_FUNCTION_3();
  CGRectIntegral(v71);
  OUTLINED_FUNCTION_2_3();
  v72.origin.x = x;
  v72.origin.y = y;
  v72.size.width = v52;
  v72.size.height = v53;
  CGRectIntegral(v72);
  v54 = OUTLINED_FUNCTION_3();
  if (![v55 computeFlexGTCWithSDRImage:v54 gainMap:? gainMapMetadata:? config:? cropRect:? gainMapCropRect:?])
  {
    CMSetAttachment(sbuf, v33, v35, 1u);
  }

LABEL_42:
  [(BWNodeOutput *)self->super._output emitSampleBuffer:a3];
}

- (uint64_t)initWithNodeConfiguration:sensorConfigurationsByPortType:metalCommandQueue:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithNodeConfiguration:sensorConfigurationsByPortType:metalCommandQueue:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)prepareForCurrentConfigurationToBecomeLive
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end