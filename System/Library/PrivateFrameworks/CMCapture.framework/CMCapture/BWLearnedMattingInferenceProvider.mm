@interface BWLearnedMattingInferenceProvider
- (BWLearnedMattingInferenceProvider)initWithConfiguration:(id)configuration resourceProvider:(id)provider;
- (int)createInputTiles:(id)tiles withInputs:(id)inputs atPosition:(id *)position cmdBuffer:;
- (int)preProcessOutputBuffer:(__CVBuffer *)buffer forMediaKey:(id)key;
- (int)prepareForSubmissionWithWorkQueue:(id)queue;
- (int)propagateInferenceResultForOutputRequirement:(id)requirement storage:(id)storage propagationSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (int)reconcileWithPlaceholderProvider:(id)provider;
- (int)writeOutputFor:(id)for to:(__CVBuffer *)to fromNetworkOutputTiles:(id)tiles withAdditionalPixelBuffers:(id)buffers withInputTilePixelBuffers:(id)pixelBuffers withInputFullPixelBuffers:(id)fullPixelBuffers atPosition:(id *)position cmdBuffer:;
- (unint64_t)_updateTileCount;
- (void)dealloc;
- (void)migrateVideoRequirementsToTiledHarness;
- (void)setOutputFormatDescription:(opaqueCMFormatDescription *)description;
- (void)setOutputLowResSegmentationCloneFormatDescription:(opaqueCMFormatDescription *)description;
@end

@implementation BWLearnedMattingInferenceProvider

- (void)migrateVideoRequirementsToTiledHarness
{
  inputAlphaVideoRequirement = self->_inputAlphaVideoRequirement;
  v12[0] = self->_inputImageVideoRequirement;
  v12[1] = inputAlphaVideoRequirement;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  outputLowResSegmentationCloneVideoRequirement = self->_outputLowResSegmentationCloneVideoRequirement;
  if (outputLowResSegmentationCloneVideoRequirement)
  {
    v11[0] = self->_outputAlphaVideoRequirement;
    v11[1] = outputLowResSegmentationCloneVideoRequirement;
    v6 = MEMORY[0x1E695DEC8];
    p_outputAlphaVideoRequirement = v11;
    v8 = 2;
  }

  else
  {
    outputAlphaVideoRequirement = self->_outputAlphaVideoRequirement;
    v6 = MEMORY[0x1E695DEC8];
    p_outputAlphaVideoRequirement = &outputAlphaVideoRequirement;
    v8 = 1;
  }

  v9.receiver = self;
  v9.super_class = BWLearnedMattingInferenceProvider;
  -[BWTiledEspressoInferenceProvider migrateInputVideoRequirements:outputVideoRequirements:](&v9, sel_migrateInputVideoRequirements_outputVideoRequirements_, v4, [v6 arrayWithObjects:p_outputAlphaVideoRequirement count:v8]);
}

- (BWLearnedMattingInferenceProvider)initWithConfiguration:(id)configuration resourceProvider:(id)provider
{
  if (configuration)
  {
    [configuration mainImageDownscalingFactor];
    if (v7 > 0.0)
    {
      self->_configuration = configuration;
      v9.receiver = self;
      v9.super_class = BWLearnedMattingInferenceProvider;
      result = [(BWTiledEspressoInferenceProvider *)&v9 initWithConfiguration:configuration inputVideoRequirements:0 outputVideoRequirements:0 resourceProvider:provider];
      if (result)
      {
        return result;
      }

      [BWLearnedMattingInferenceProvider initWithConfiguration:resourceProvider:];
      self = 0;
    }
  }

  return 0;
}

- (void)dealloc
{
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  outputLowResSegmentationCloneFormatDescription = self->_outputLowResSegmentationCloneFormatDescription;
  if (outputLowResSegmentationCloneFormatDescription)
  {
    CFRelease(outputLowResSegmentationCloneFormatDescription);
  }

  v5.receiver = self;
  v5.super_class = BWLearnedMattingInferenceProvider;
  [(BWTiledEspressoInferenceProvider *)&v5 dealloc];
}

- (int)preProcessOutputBuffer:(__CVBuffer *)buffer forMediaKey:(id)key
{
  v7 = [key isEqualToString:0x1F21AABB0];
  if ((v7 | [key isEqualToString:0x1F21AADF0]))
  {
    result = 0;
  }

  else
  {
    result = -31710;
  }

  if (v7)
  {
    metalProcessor = self->_metalProcessor;

    return [(FigLearnedMattingMetalStage *)metalProcessor clearBuffer:buffer];
  }

  return result;
}

- (int)createInputTiles:(id)tiles withInputs:(id)inputs atPosition:(id *)position cmdBuffer:
{
  v6 = v5;
  positionCopy = position;
  if ([tiles count] != 2)
  {
    v20 = 155;
LABEL_14:
    [BWLearnedMattingInferenceProvider createInputTiles:v20 withInputs:&v22 atPosition:? cmdBuffer:?];
    return v22;
  }

  v11 = [tiles objectForKeyedSubscript:@"alpha"];
  if (!v11)
  {
    v20 = 159;
    goto LABEL_14;
  }

  v12.f32[0] = *self->_inputTileSize;
  v12.f32[1] = HIWORD(*self->_inputTileSize);
  v13.f32[0] = positionCopy;
  v13.f32[1] = HIWORD(positionCopy);
  if (-[FigLearnedMattingMetalStage createTileFrom:to:withStart:withScale:outCommandBuffer:](self->_metalProcessor, "createTileFrom:to:withStart:withScale:outCommandBuffer:", [inputs objectForKeyedSubscript:0x1F219E750], v11, v6, COERCE_DOUBLE(vmul_f32(v13, vmul_f32(*self->_inputAlphaScale, vsub_f32(v12, *&self->_inputTileOverlap[4])))), *self->_inputAlphaScale))
  {
    v20 = 165;
    goto LABEL_14;
  }

  if (!v6)
  {
    v20 = 166;
    goto LABEL_14;
  }

  v14 = [tiles objectForKeyedSubscript:@"image"];
  if (!v14)
  {
    v20 = 171;
    goto LABEL_14;
  }

  v15.i32[0] = positionCopy;
  v16.i16[0] = *self->_outputTileSize;
  v16.i16[2] = *&self->_outputTileSize[2];
  v17.i16[0] = *self->_outputTileOverlap;
  v17.i16[2] = *&self->_outputTileOverlap[2];
  v18 = vmul_s32(vsub_s32(v16, v17), *&vmovl_u16(v15));
  HIWORD(v21) = v18.i16[2];
  LOWORD(v21) = v18.i16[0];
  result = -[FigLearnedMattingMetalStage createTileFrom:to:withStart:commandBuffer:](self->_metalProcessor, "createTileFrom:to:withStart:commandBuffer:", [inputs objectForKeyedSubscript:@"PrimaryFormat"], v14, v21, *v6);
  if (result)
  {
    v20 = 177;
    goto LABEL_14;
  }

  return result;
}

- (int)writeOutputFor:(id)for to:(__CVBuffer *)to fromNetworkOutputTiles:(id)tiles withAdditionalPixelBuffers:(id)buffers withInputTilePixelBuffers:(id)pixelBuffers withInputFullPixelBuffers:(id)fullPixelBuffers atPosition:(id *)position cmdBuffer:
{
  v13 = [for isEqualToString:{0x1F21AABB0, to, tiles, buffers, pixelBuffers, fullPixelBuffers}];
  if ((v13 | [for isEqualToString:0x1F21AADF0]))
  {
    result = 0;
  }

  else
  {
    result = -31710;
  }

  if (v13)
  {
    v15.i32[0] = position;
    v24 = vmovl_u16(v15);
    v14.i64[0] = 0xFFFF0000FFFFLL;
    v19 = vand_s8(*v24.i8, 0xFFFF0000FFFFLL);
    v17.i16[0] = *self->_outputTileSize;
    v17.i16[2] = *&self->_outputTileSize[2];
    v16.i16[0] = *self->_outputTileOverlap;
    v16.i16[2] = *&self->_outputTileOverlap[2];
    v20 = vsub_s32(v17, v16);
    v21 = vmul_s32(v20, *v24.i8);
    HIWORD(v35) = v21.i16[2];
    v22 = vadd_s32(v21, v17);
    LOWORD(v35) = v21.i16[0];
    v23 = vmla_s32(v17, v20, *&vaddw_u16(v14, v15));
    *v24.i8 = vtst_s32(*v24.i8, 0xFFFF0000FFFFLL);
    HIWORD(v38) = v24.i16[2];
    LOWORD(v38) = v24.i16[0];
    v25 = v23.i16[0];
    if (!v24.i16[0])
    {
      v25 = 0;
    }

    if (v38 >= 0x10000)
    {
      v26 = v23.i16[2];
    }

    else
    {
      v26 = 0;
    }

    HIWORD(v34) = v26;
    LOWORD(v34) = v25;
    v24.i64[0] = 0x100000001;
    v27 = vmul_s32(v20, *&vaddw_u16(v24, v15));
    HIWORD(v33) = v27.i16[2];
    v28 = v27.i16[0];
    WORD2(v33) = v27.i16[0];
    v29 = HIDWORD(v33);
    HIWORD(v36) = v22.i16[2];
    LOWORD(v36) = v22.i16[0];
    v27.i16[0] = *&self->_didConfigureAndLoadEspressoNetwork;
    v27.i16[2] = *(&self->_didConfigureAndLoadEspressoNetwork + 1);
    v30 = vceq_s32(vand_s8(vadd_s32(v27, -1), 0xFFFF0000FFFFLL), v19);
    HIWORD(v37) = v30.i16[2];
    LOWORD(v37) = v30.i16[0];
    if (v37 >= 0x10000)
    {
      v29 = v36;
    }

    v31 = HIWORD(v29);
    if (v30.i16[0])
    {
      v28 = v22.i16[0];
    }

    LOWORD(v33) = v28;
    WORD1(v33) = v31;
    v32 = -[FigLearnedMattingMetalStage pasteTileFrom:to:withStart:withNoOverlapStart:withNoOverlapEnd:outCommandBuffer:](self->_metalProcessor, "pasteTileFrom:to:withStart:withNoOverlapStart:withNoOverlapEnd:outCommandBuffer:", [tiles objectForKeyedSubscript:{@"alpha_refined", v33}], to, v35, v34, v33, v40);
    result = 0;
    if (v32)
    {
      [BWLearnedMattingInferenceProvider writeOutputFor:? to:? fromNetworkOutputTiles:? withAdditionalPixelBuffers:? withInputTilePixelBuffers:? withInputFullPixelBuffers:? atPosition:? cmdBuffer:?];
      return v39;
    }
  }

  return result;
}

- (void)setOutputFormatDescription:(opaqueCMFormatDescription *)description
{
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription != description)
  {
    self->_outputFormatDescription = description;
    if (description)
    {
      CFRetain(description);
    }

    if (outputFormatDescription)
    {

      CFRelease(outputFormatDescription);
    }
  }
}

- (void)setOutputLowResSegmentationCloneFormatDescription:(opaqueCMFormatDescription *)description
{
  outputLowResSegmentationCloneFormatDescription = self->_outputLowResSegmentationCloneFormatDescription;
  if (outputLowResSegmentationCloneFormatDescription != description)
  {
    self->_outputLowResSegmentationCloneFormatDescription = description;
    if (description)
    {
      CFRetain(description);
    }

    if (outputLowResSegmentationCloneFormatDescription)
    {

      CFRelease(outputLowResSegmentationCloneFormatDescription);
    }
  }
}

- (int)propagateInferenceResultForOutputRequirement:(id)requirement storage:(id)storage propagationSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  target = 0;
  v8 = [storage pixelBufferForRequirement:?];
  if (!v8)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_33();
    return FigSignalErrorAtGM();
  }

  v9 = v8;
  v10 = [objc_msgSend(requirement "attachedMediaKey")];
  v11 = [objc_msgSend(requirement "attachedMediaKey")];
  if ((v10 & 1) == 0 && !v11)
  {
    return -31710;
  }

  if (v10)
  {
    CVBufferSetAttachment(v9, *MEMORY[0x1E6965F30], *MEMORY[0x1E6965F60], kCVAttachmentMode_ShouldPropagate);
    OUTLINED_FUNCTION_2_69(144, v17, v18, v19, v20, v21, v22, v23);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_33();
    return FigSignalErrorAtGM();
  }

  if (v11)
  {
    v12 = [storage pixelBufferForRequirement:self->_inputAlphaVideoRequirement];
    if (v12)
    {
      v13 = v12;
      lowResSegmentationCloneCopySession = self->_lowResSegmentationCloneCopySession;
      if (lowResSegmentationCloneCopySession)
      {
        if (!VTPixelTransferSessionTransferImage(lowResSegmentationCloneCopySession, v13, v9))
        {
          OUTLINED_FUNCTION_2_69(152, v17, v18, v19, v20, v21, v22, v23);
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_33();
          return FigSignalErrorAtGM();
        }

        return -31710;
      }
    }
  }

  return 0;
}

- (int)reconcileWithPlaceholderProvider:(id)provider
{
  type = [(BWLearnedMattingInferenceProvider *)self type];
  if (type != [provider type] || !-[NSString isEqualToString:](-[BWTiledEspressoInferenceProvider customInferenceIdentifier](self, "customInferenceIdentifier"), "isEqualToString:", objc_msgSend(provider, "customInferenceIdentifier")))
  {
    return -31783;
  }

  self->_inputImageVideoRequirement = [provider inputImageVideoRequirement];
  self->_inputAlphaVideoRequirement = [provider inputAlphaVideoRequirement];

  self->_outputAlphaVideoRequirement = [provider outputAlphaVideoRequirement];
  self->_outputLowResSegmentationCloneVideoRequirement = [provider outputLowResSegmentationCloneVideoRequirement];
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  outputFormatDescription = [provider outputFormatDescription];
  if (outputFormatDescription)
  {
    outputFormatDescription = CFRetain(outputFormatDescription);
  }

  self->_outputFormatDescription = outputFormatDescription;
  outputLowResSegmentationCloneFormatDescription = self->_outputLowResSegmentationCloneFormatDescription;
  if (outputLowResSegmentationCloneFormatDescription)
  {
    CFRelease(outputLowResSegmentationCloneFormatDescription);
  }

  outputLowResSegmentationCloneFormatDescription = [provider outputLowResSegmentationCloneFormatDescription];
  if (outputLowResSegmentationCloneFormatDescription)
  {
    outputLowResSegmentationCloneFormatDescription = CFRetain(outputLowResSegmentationCloneFormatDescription);
  }

  self->_outputLowResSegmentationCloneFormatDescription = outputLowResSegmentationCloneFormatDescription;
  v14.receiver = self;
  v14.super_class = BWLearnedMattingInferenceProvider;
  v10 = [(BWTiledEspressoInferenceProvider *)&v14 reconcileWithPlaceholderProvider:provider];
  [(BWLearnedMattingInferenceProvider *)self _updateTileCount];
  v11 = *&self->_didConfigureAndLoadEspressoNetwork;
  v13.receiver = self;
  v13.super_class = BWLearnedMattingInferenceProvider;
  [(BWTiledEspressoInferenceProvider *)&v13 updateMaxTileCount:v11];
  return v10;
}

- (unint64_t)_updateTileCount
{
  if (result)
  {
    v1 = result;
    v2 = [objc_msgSend(*(result + 128) "videoFormat")];
    v3 = [objc_msgSend(*&v1[16] "videoFormat")];
    v4.f32[0] = v2;
    v4.f32[1] = v3;
    __asm { FMOV            V1.2S, #0.25 }

    v21 = vmul_f32(v4, _D1);
    v20 = [objc_msgSend(*&v1[15] "videoFormat")];
    result = [objc_msgSend(*&v1[15] "videoFormat")];
    v10.f32[0] = v20;
    v10.f32[1] = result;
    v1[24] = vdiv_f32(v10, v21);
    v1[23].i32[0] = 54526720;
    v11.i32[0] = v1[23].u16[0];
    v11.i32[1] = v1[23].u16[1];
    v12 = vshr_n_u32(v11, 2uLL);
    v1[23].i16[3] = v12.i16[2];
    v1[23].i16[2] = v12.i16[0];
    v13 = vand_s8(__PAIR64__(v3, v2), 0xFFFF0000FFFFLL);
    v14.i32[0] = v1[23].u16[0];
    v14.i32[1] = v1[23].u16[1];
    v15 = vcvt_s32_f32(vrndp_f32(vdiv_f32(vcvt_f32_s32(vadd_s32(v13, 0xF0000000FLL)), vcvt_f32_s32(vadd_s32(v14, 0xF0000000FLL)))));
    v1[27].i16[0] = v15.i16[0];
    v1[27].i16[1] = v15.i16[2];
    v16 = v1[27].u16[0];
    v17 = v16 - 1;
    if (v16 == 1)
    {
      v1[26].i32[0] = 0;
    }

    else
    {
      v1[26].f32[0] = ((v1[23].u16[2] * v16) - v21.f32[0]) / v17;
      v17 = (v1[23].u16[0] * v1[27].u16[0] - v13.i32[0]) / (v1[27].u16[0] - 1);
    }

    v1[25].i16[0] = v17;
    v18 = v1[27].u16[1];
    if (v18 == 1)
    {
      LOWORD(v19) = 0;
      v1[26].i32[1] = 0;
    }

    else
    {
      v1[26].f32[1] = ((v1[23].u16[3] * v18) - v21.f32[1]) / (v18 - 1);
      v19 = (v1[23].u16[1] * v1[27].u16[1] - v13.i32[1]) / (v1[27].u16[1] - 1);
    }

    v1[25].i16[1] = v19;
  }

  return result;
}

- (int)prepareForSubmissionWithWorkQueue:(id)queue
{
  if ([(BWLearnedMattingInferenceConfiguration *)self->_configuration produceLowResPersonMaskClone]&& !self->_lowResSegmentationCloneCopySession && VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &self->_lowResSegmentationCloneCopySession))
  {
    goto LABEL_7;
  }

  if (!self->_metalProcessor)
  {
    if ([(BWTiledEspressoInferenceConfiguration *)self->_configuration metalCommandQueue])
    {
      v5 = objc_alloc(MEMORY[0x1E6991778]);
      v6 = [v5 initWithbundle:objc_msgSend(MEMORY[0x1E696AAE8] andOptionalCommandQueue:{"bundleForClass:", objc_opt_class()), -[BWTiledEspressoInferenceConfiguration metalCommandQueue](self->_configuration, "metalCommandQueue")}];
    }

    else
    {
      v6 = 0;
    }

    v8 = [[FigLearnedMattingMetalStage alloc] initWithMetalContext:v6];
    self->_metalProcessor = v8;
    if (!v8)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM();
      goto LABEL_7;
    }
  }

  if (*(&self->_didConfigureAndLoadEspressoNetwork + 4))
  {
LABEL_7:
    LODWORD(v7) = 0;
    return v7;
  }

  [(BWLearnedMattingInferenceProvider *)self _updateTileCount];
  learnedMattingVersion = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters learnedMattingVersion];
  v7 = +[BWEspressoInferenceAdapter espressoNetworkURLForPlatformedResourceBaseName:embedPlatformOrDeviceID:](BWEspressoInferenceAdapter, "espressoNetworkURLForPlatformedResourceBaseName:embedPlatformOrDeviceID:", [MEMORY[0x1E696AEC0] stringWithFormat:@"learnedmatting-f16-v%d", learnedMattingVersion], 1);
  if (v7)
  {
    v10 = v7;
    v11 = [BWTiledEspressoInferenceProvider videoFormatWithPixelFormat:1111970369 size:*self->_outputTileSize];
    v12 = [BWTiledEspressoInferenceProvider videoFormatWithPixelFormat:1278226536 size:*self->_inputTileSize];
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v11, @"image", v12, @"alpha", 0}];
    v14 = [BWTiledEspressoInferenceProvider videoFormatWithPixelFormat:1278226536 size:*self->_outputTileSize];
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v14, @"alpha_refined", 0}];
    type = [(BWLearnedMattingInferenceProvider *)self type];
    v17 = *&self->_didConfigureAndLoadEspressoNetwork;
    v20.receiver = self;
    v20.super_class = BWLearnedMattingInferenceProvider;
    if ([(BWTiledEspressoInferenceProvider *)&v20 loadNetworkWithURL:v10 configName:@"832x768" inferenceType:type maxTileCount:v17 inputFormatsByBindingName:v13 outputFormatsByBindingName:v15 additionalVideoRequirements:0])
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      LODWORD(v7) = FigSignalErrorAtGM();
    }

    else
    {
      v19.receiver = self;
      v19.super_class = BWLearnedMattingInferenceProvider;
      LODWORD(v7) = [(BWTiledEspressoInferenceProvider *)&v19 prepareForSubmissionWithWorkQueue:queue];
      *(&self->_didConfigureAndLoadEspressoNetwork + 4) = 1;
    }
  }

  return v7;
}

- (uint64_t)initWithConfiguration:resourceProvider:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

- (uint64_t)createInputTiles:(uint64_t)a1 withInputs:(_DWORD *)a2 atPosition:cmdBuffer:.cold.1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

- (uint64_t)writeOutputFor:(_DWORD *)a1 to:fromNetworkOutputTiles:withAdditionalPixelBuffers:withInputTilePixelBuffers:withInputFullPixelBuffers:atPosition:cmdBuffer:.cold.1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end