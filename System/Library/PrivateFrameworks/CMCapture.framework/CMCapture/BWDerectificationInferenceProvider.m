@interface BWDerectificationInferenceProvider
- (BWDerectificationInferenceProvider)initWithInputRequirement:(id)a3 opticalFlowInputRequirement:(id)a4 outputRequirement:(id)a5 resourceProvider:(id)a6 configuration:(id)a7;
- (id)newStorage;
- (int)prepareForSubmissionWithWorkQueue:(id)a3;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withSubmissionTime:(id *)a5 workQueue:(id)a6 completionHandler:(id)a7;
- (void)dealloc;
- (void)propagateInferenceResultsToInferenceDictionary:(id)a3 usingStorage:(id)a4 inputSampleBuffer:(opaqueCMSampleBuffer *)a5 propagationSampleBuffer:(opaqueCMSampleBuffer *)a6;
- (void)setCustomInferenceIdentifier:(id)a3;
@end

@implementation BWDerectificationInferenceProvider

- (BWDerectificationInferenceProvider)initWithInputRequirement:(id)a3 opticalFlowInputRequirement:(id)a4 outputRequirement:(id)a5 resourceProvider:(id)a6 configuration:(id)a7
{
  v14.receiver = self;
  v14.super_class = BWDerectificationInferenceProvider;
  v12 = [(BWDerectificationInferenceProvider *)&v14 init];
  if (v12)
  {
    v12->_metalInferenceContext = [a6 defaultDeviceMetalContext];
    v12->_outputRequirement = a5;
    v12->_inputRequirement = a3;
    v12->_opticalFlowInputRequirement = a4;
    v12->_portType = [a7 portType];
    v12->_lastIsQsubFrame = 0;
    v12->_applyRollingShutterCorrection = 1;
    v12->_canonicalDisparityScaleFactorOverride = 0.0;
  }

  return v12;
}

- (void)dealloc
{
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  v4.receiver = self;
  v4.super_class = BWDerectificationInferenceProvider;
  [(BWDerectificationInferenceProvider *)&v4 dealloc];
}

- (int)prepareForSubmissionWithWorkQueue:(id)a3
{
  v4 = [(BWInferenceVideoRequirement *)self->_inputRequirement videoFormat];
  self->_inputDescriptor = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:25 width:-[BWInferenceVideoFormat width](v4 height:"width") mipmapped:-[BWInferenceVideoFormat height](v4, "height"), 0];
  self->_outputDescriptor = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:25 width:-[BWInferenceVideoFormat width](v4 height:"width") mipmapped:-[BWInferenceVideoFormat height](v4, "height"), 0];
  [(MTLTextureDescriptor *)self->_inputDescriptor setUsage:1];
  [(MTLTextureDescriptor *)self->_outputDescriptor setUsage:2];
  v5 = [objc_alloc(MEMORY[0x1E6991790]) initWithOptionalCommandQueue:{-[BWMetalInferenceContext commandQueue](self->_metalInferenceContext, "commandQueue")}];
  self->_gdcTransform = v5;
  if (!v5)
  {
    [BWDerectificationInferenceProvider prepareForSubmissionWithWorkQueue:];
LABEL_14:
    LODWORD(opticalFlowInputRequirement) = -31702;
    return opticalFlowInputRequirement;
  }

  v27 = 0;
  v6 = -[MTLDevice newDefaultLibraryWithBundle:error:](-[BWMetalInferenceContext device](self->_metalInferenceContext, "device"), "newDefaultLibraryWithBundle:error:", [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()], &v27);
  if (v6)
  {
    v7 = -[MTLDevice newComputePipelineStateWithFunction:error:](-[BWMetalInferenceContext device](self->_metalInferenceContext, "device"), "newComputePipelineStateWithFunction:error:", [v6 newFunctionWithName:@"depthPadding"], &v27);
    self->_depthPaddingPipelineState = v7;
    if (v7)
    {
      opticalFlowInputRequirement = self->_opticalFlowInputRequirement;
      if (!opticalFlowInputRequirement)
      {
        return opticalFlowInputRequirement;
      }

      v9 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:65 width:-[BWInferenceVideoFormat width](-[BWInferenceVideoRequirement videoFormat](opticalFlowInputRequirement height:"videoFormat") mipmapped:"width"), -[BWInferenceVideoFormat height](-[BWInferenceVideoRequirement videoFormat](self->_opticalFlowInputRequirement, "videoFormat"), "height"), 0];
      self->_opticalFlowInputDescriptor = v9;
      [(MTLTextureDescriptor *)v9 setUsage:1];
      disparityPostProcessor = self->_disparityPostProcessor;
      if (disparityPostProcessor)
      {
      }

      v11 = [(MTLTextureDescriptor *)self->_inputDescriptor width];
      v12 = [(MTLTextureDescriptor *)self->_inputDescriptor height];
      v13 = [(MTLTextureDescriptor *)self->_opticalFlowInputDescriptor width];
      v14 = [(MTLTextureDescriptor *)self->_opticalFlowInputDescriptor height];
      v15 = [(MTLTextureDescriptor *)self->_inputDescriptor width];
      v16 = [(MTLTextureDescriptor *)self->_inputDescriptor height];
      v17 = objc_alloc(getPTDisparityPostProcessingClass());
      v18 = [(BWMetalInferenceContext *)self->_metalInferenceContext commandQueue];
      portType = self->_portType;
      v26[0] = v11;
      v26[1] = v12;
      v26[2] = 1;
      v25[0] = v15;
      v25[1] = v16;
      v25[2] = 1;
      v24[0] = v13;
      v24[1] = v14;
      v24[2] = 1;
      v20 = [v17 initWithCommandQueue:v18 disparitySize:v26 filteredDisparitySize:v25 disparityPixelFormat:25 colorSize:v24 colorPixelFormat:71 sensorPort:portType];
      self->_disparityPostProcessor = v20;
      if (v20)
      {
        v21 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:25 width:v15 height:v16 mipmapped:0];
        [v21 setUsage:3];
        [v21 setResourceOptions:32];
        v22 = [(MTLDevice *)[(BWMetalInferenceContext *)self->_metalInferenceContext device] newTextureWithDescriptor:v21];
        LODWORD(opticalFlowInputRequirement) = 0;
        self->_disparityIntermediate = v22;
        return opticalFlowInputRequirement;
      }

      [BWDerectificationInferenceProvider prepareForSubmissionWithWorkQueue:];
    }

    else
    {
      [BWDerectificationInferenceProvider prepareForSubmissionWithWorkQueue:];
    }

    goto LABEL_14;
  }

  [BWDerectificationInferenceProvider prepareForSubmissionWithWorkQueue:];
  LODWORD(opticalFlowInputRequirement) = 0;
  return opticalFlowInputRequirement;
}

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withSubmissionTime:(id *)a5 workQueue:(id)a6 completionHandler:(id)a7
{
  opticalFlowInputRequirement = self->_opticalFlowInputRequirement;
  AttachedMedia = BWSampleBufferGetAttachedMedia(a3, @"SynchronizedSlaveFrame");
  v13 = *off_1E798A3C8;
  if (!CMGetAttachment(AttachedMedia, *off_1E798A3C8, 0))
  {
    [BWDerectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    goto LABEL_45;
  }

  v14 = CMGetAttachment(a3, v13, 0);
  if (!v14)
  {
    [BWDerectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
LABEL_45:
    v56 = 0;
    v22 = 0;
    v64 = 0;
    v55 = 0;
    v42 = 4294935582;
    if (!a7)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v15 = v14;
  v16 = [a4 pixelBufferForRequirement:self->_inputRequirement];
  if (!v16)
  {
    [BWDerectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    v56 = 0;
    v22 = 0;
    v64 = 0;
    v55 = 0;
    v42 = 4294935584;
    if (!a7)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v17 = v16;
  v18 = [a4 pixelBufferPoolForRequirement:self->_outputRequirement];
  v19 = [v18 newPixelBuffer];
  if (!v19)
  {
    [BWDerectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    v56 = 0;
    v22 = 0;
    v64 = 0;
    v55 = 0;
    v42 = 4294935578;
    if (!a7)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v20 = v19;
  v63 = a4;
  v21 = [(BWMetalInferenceContext *)self->_metalInferenceContext commandQueue];
  v64 = [-[MTLCommandQueue device](v21 "device")];
  v22 = [-[MTLCommandQueue device](v21 "device")];
  v61 = v20;
  v62 = a7;
  if (opticalFlowInputRequirement)
  {
    v23 = [v63 pixelBufferForRequirement:self->_opticalFlowInputRequirement];
    if (!v23)
    {
      [BWDerectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
      v56 = 0;
      v42 = 4294935584;
      goto LABEL_65;
    }

    v60 = [-[MTLCommandQueue device](v21 "device")];
  }

  else
  {
    v60 = 0;
  }

  v80 = 0;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v75 = 0u;
  memset(v74, 0, sizeof(v74));
  memset(v73, 0, 184);
  v72 = 0;
  v24 = CMGetAttachment(a3, @"unrectifyData", 0);
  v25 = [objc_msgSend(v24 objectForKeyedSubscript:{@"refRollingShutterRowCount", "intValue"}];
  [objc_msgSend(v24 objectForKeyedSubscript:{@"refRollingShutterHomographyStep", "floatValue"}];
  v27 = v26;
  [objc_msgSend(v24 objectForKeyedSubscript:{@"gdcParametersReference", "getValue:", v74}];
  [objc_msgSend(v24 objectForKeyedSubscript:{@"calModel", "getValue:", v73}];
  v28 = [v24 objectForKeyedSubscript:@"orientationVector"];
  if ([v28 length] != 8)
  {
    [BWDerectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
LABEL_55:
    v42 = 4294935595;
    goto LABEL_58;
  }

  [v28 getBytes:&v72 length:8];
  HIDWORD(v29) = v72.i32[1];
  if (v72.f32[0] < 0.0)
  {
    [BWDerectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
LABEL_57:
    v42 = 4294935556;
    goto LABEL_58;
  }

  LODWORD(v29) = v72.i32[1];
  if (v72.f32[1] < 0.0)
  {
    [BWDerectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    goto LABEL_57;
  }

  v30 = [v24 objectForKeyedSubscript:{@"refRollingShutterCorrectionHomographiesInv", v29}];
  if ([v30 length] != 48 * v25)
  {
    [BWDerectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    goto LABEL_55;
  }

  v31 = [v30 bytes];
  v32 = [v22 width];
  v33 = [v22 height];
  *(&v75 + 1) = v32;
  *&v76 = v33;
  BYTE8(v76) = 1;
  HIDWORD(v76) = 1;
  if (self->_applyRollingShutterCorrection)
  {
    *&v77 = v31;
    *(&v77 + 1) = __PAIR64__(v27, v25);
    LOBYTE(v78) = 1;
  }

  v34 = [v64 width];
  v35 = v73[19];
  *&v59 = v34 / v35;
  v36 = [v64 height];
  v37 = v73[20];
  v38 = vmul_f32(v72, __PAIR64__(v36 / v37, v59));
  v39 = v73[18] / sqrtf(vaddv_f32(vmul_f32(v38, v38)));
  if (self->_canonicalDisparityScaleFactorOverride == 0.0)
  {
    canonicalDisparityScaleFactorOverride = v39;
  }

  else
  {
    canonicalDisparityScaleFactorOverride = self->_canonicalDisparityScaleFactorOverride;
  }

  v41 = [objc_msgSend(v15 objectForKeyedSubscript:{*off_1E798B588), "intValue"}] == 1;
  if (self->_lastIsQsubFrame == v41 || !opticalFlowInputRequirement)
  {
    self->_lastIsQsubFrame = v41;
    v42 = [(MTLCommandQueue *)v21 commandBuffer];
    gdcTransform = self->_gdcTransform;
    if (opticalFlowInputRequirement)
    {
      disparityIntermediate = self->_disparityIntermediate;
      v44 = 1;
      goto LABEL_25;
    }

    v44 = 0;
  }

  else
  {
    [(PTDisparityPostProcessing *)self->_disparityPostProcessor reset];
    self->_lastIsQsubFrame = v41;
    v42 = [(MTLCommandQueue *)v21 commandBuffer];
    v44 = 0;
    gdcTransform = self->_gdcTransform;
  }

  disparityIntermediate = v22;
LABEL_25:
  *&v43 = canonicalDisparityScaleFactorOverride;
  if ([(GDCTransform *)gdcTransform transformFrom:v64 to:disparityIntermediate withParameters:v74 withScale:2 withMode:v42 andCommandBuffer:v43])
  {
    [BWDerectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    goto LABEL_57;
  }

  v71 = 0u;
  v70 = 0u;
  if (FigCFDictionaryGetCGRectIfPresent())
  {
    v47 = [v18 newPixelBuffer];
    if (v47)
    {
      v48 = v47;
      v49 = [-[MTLCommandQueue device](v21 "device")];
      v50 = [v42 computeCommandEncoder];
      v51 = v50;
      v52 = v22;
      if (v44)
      {
        v52 = self->_disparityIntermediate;
      }

      [v50 setTexture:v52 atIndex:0];
      [v51 setTexture:v49 atIndex:1];
      v69 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v70, *&v73[19])), vdivq_f64(v71, *&v73[19]));
      [v51 setBytes:&v69 length:16 atIndex:0];
      [v51 setComputePipelineState:self->_depthPaddingPipelineState];
      v53 = [(MTLComputePipelineState *)self->_depthPaddingPipelineState threadExecutionWidth];
      v54 = [(MTLComputePipelineState *)self->_depthPaddingPipelineState maxTotalThreadsPerThreadgroup]/ v53;
      v68[0] = [v22 width];
      v68[1] = [v22 height];
      v68[2] = 1;
      v67[0] = v53;
      v67[1] = v54;
      v67[2] = 1;
      [v51 dispatchThreads:v68 threadsPerThreadgroup:v67];
      [v51 endEncoding];
      v55 = v48;
      v20 = v61;
      a7 = v62;
      goto LABEL_35;
    }

    [BWDerectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    v42 = 4294935578;
LABEL_58:
    v55 = v20;
    a7 = v62;
    v56 = v60;
    if (!v62)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (v44)
  {
    v56 = v60;
    a7 = v62;
    if (![(PTDisparityPostProcessing *)self->_disparityPostProcessor temporalDisparityFilter:v42 inDisparity:self->_disparityIntermediate inDisplacement:v60 inDisparityFilteredPrev:self->_disparityIntermediate outDisparityFiltered:v22 disparityBias:0.0])
    {
      v55 = 0;
      v49 = 0;
      v48 = v20;
      goto LABEL_36;
    }

    [BWDerectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    v42 = 4294935578;
LABEL_65:
    v55 = v20;
    if (!a7)
    {
LABEL_60:
      v49 = 0;
      if (!v55)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

LABEL_59:
    (*(a7 + 2))(a7, v42, self);
    goto LABEL_60;
  }

  v55 = 0;
  v49 = 0;
  a7 = v62;
  v48 = v20;
LABEL_35:
  v56 = v60;
LABEL_36:
  [v63 setPixelBuffer:v48 forRequirement:self->_outputRequirement];
  if (*MEMORY[0x1E695FF58])
  {
    v57 = [objc_msgSend(v42 "commandQueue")];
    [v57 setLabel:@"KTRACE_MTLCMDBUF"];
    [v57 addCompletedHandler:&__block_literal_global_26];
    [v57 commit];
    [v42 addCompletedHandler:&__block_literal_global_70];
  }

  if (a7)
  {
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __120__BWDerectificationInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke_3;
    v65[3] = &unk_1E798FB70;
    v66 = 0;
    v65[4] = self;
    v65[5] = a7;
    [v42 addScheduledHandler:v65];
  }

  [v42 commit];
  CFRelease(v20);
  LODWORD(v42) = 0;
  if (v55)
  {
LABEL_41:
    CFRelease(v55);
  }

LABEL_42:

  return v42;
}

uint64_t __120__BWDerectificationInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke()
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

uint64_t __120__BWDerectificationInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 status] == 4)
  {
    [a2 GPUEndTime];
    result = [a2 GPUStartTime];
  }

  else
  {
    result = [a2 status];
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {

    return kdebug_trace();
  }

  return result;
}

- (void)setCustomInferenceIdentifier:(id)a3
{
  customInferenceIdentifier = self->_customInferenceIdentifier;
  if (customInferenceIdentifier != a3)
  {

    self->_customInferenceIdentifier = a3;
  }
}

- (id)newStorage
{
  v3 = [BWInferenceProviderStorage alloc];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:{self->_inputRequirement, self->_opticalFlowInputRequirement, 0}];
  outputRequirement = self->_outputRequirement;
  return -[BWInferenceProviderStorage initWithRequirementsNeedingPixelBuffers:requirementsNeedingPixelBufferPools:](v3, "initWithRequirementsNeedingPixelBuffers:requirementsNeedingPixelBufferPools:", v4, [MEMORY[0x1E695DEC8] arrayWithObjects:&outputRequirement count:1]);
}

- (void)propagateInferenceResultsToInferenceDictionary:(id)a3 usingStorage:(id)a4 inputSampleBuffer:(opaqueCMSampleBuffer *)a5 propagationSampleBuffer:(opaqueCMSampleBuffer *)a6
{
  cf = 0;
  v8 = [a4 pixelBufferForRequirement:self->_outputRequirement];
  if (v8)
  {
    v10 = *MEMORY[0x1E6960C70];
    v11 = *(MEMORY[0x1E6960C70] + 16);
    if (BWSampleBufferCreateFromPixelBuffer(v8, &v10, &self->_outputFormatDescription, &cf))
    {
      [BWDerectificationInferenceProvider propagateInferenceResultsToInferenceDictionary:usingStorage:inputSampleBuffer:propagationSampleBuffer:];
    }

    else
    {
      v9 = [(BWInferenceMediaRequirement *)self->_outputRequirement attachedMediaKey];
      BWSampleBufferSetAttachedMedia(a6, v9, cf);
    }
  }

  else
  {
    [BWDerectificationInferenceProvider propagateInferenceResultsToInferenceDictionary:usingStorage:inputSampleBuffer:propagationSampleBuffer:];
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

- (uint64_t)prepareForSubmissionWithWorkQueue:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)prepareForSubmissionWithWorkQueue:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)prepareForSubmissionWithWorkQueue:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)prepareForSubmissionWithWorkQueue:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.12()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)propagateInferenceResultsToInferenceDictionary:usingStorage:inputSampleBuffer:propagationSampleBuffer:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)propagateInferenceResultsToInferenceDictionary:usingStorage:inputSampleBuffer:propagationSampleBuffer:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end