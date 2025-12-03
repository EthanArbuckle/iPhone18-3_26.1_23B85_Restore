@interface BWLearnedNRInferenceProvider
+ (int32x2_t)numTilesForFullImageSize:(unsigned int)size tileSize:(unsigned int)tileSize tileOverlap:;
- (BOOL)_verifyOutputFormatForRequirement:(_BOOL8)result;
- (BWLearnedNRInferenceProvider)initWithConfiguration:(id)configuration resourceProvider:(id)provider;
- (__CFString)_networkName;
- (id)outputRequirementsToProduceForInputSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (int)createInputTiles:(id)tiles withInputs:(id)inputs atPosition:(id *)position cmdBuffer:;
- (int)preProcessOutputBuffer:(__CVBuffer *)buffer forMediaKey:(id)key;
- (int)prepareForSubmissionWithWorkQueue:(id)queue;
- (int)propagateInferenceResultForOutputRequirement:(id)requirement storage:(id)storage propagationSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler;
- (int)writeOutputFor:(id)for to:(__CVBuffer *)to fromNetworkOutputTiles:(id)tiles withAdditionalPixelBuffers:(id)buffers withInputTilePixelBuffers:(id)pixelBuffers withInputFullPixelBuffers:(id)fullPixelBuffers atPosition:(id *)position cmdBuffer:;
- (int64x2_t)computeTileParametersForPosition:(double)position;
- (uint64_t)_maxTileOverlap;
- (uint64_t)_tileOverlapForGain:(float)gain value:;
- (uint64_t)_tileOverlapForMetadata:(uint64_t)result;
- (uint64_t)_tuningParametersForPortType:(uint64_t)result;
- (uint64_t)_verifyInputFormat;
- (void)dealloc;
@end

@implementation BWLearnedNRInferenceProvider

- (BWLearnedNRInferenceProvider)initWithConfiguration:(id)configuration resourceProvider:(id)provider
{
  selfCopy = self;
  if (!configuration)
  {
    goto LABEL_14;
  }

  self->_configuration = configuration;
  v7 = [[BWInferenceLazyVideoRequirement alloc] initWithAttachedMediaKey:@"PrimaryFormat" preparedByAttachedMediaKey:@"PrimaryFormat" videoFormatProvider:&__block_literal_global_38];
  if (!v7)
  {
    [BWLearnedNRInferenceProvider initWithConfiguration:resourceProvider:];
LABEL_14:

    return 0;
  }

  v8 = v7;
  v23 = v7;
  v22.receiver = selfCopy;
  v22.super_class = BWLearnedNRInferenceProvider;
  v9 = -[BWTiledEspressoInferenceProvider initWithConfiguration:inputVideoRequirements:outputVideoRequirements:resourceProvider:](&v22, sel_initWithConfiguration_inputVideoRequirements_outputVideoRequirements_resourceProvider_, configuration, [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1], objc_msgSend(configuration, "outputVideoRequirements"), provider);
  if (!v9)
  {
    [BWLearnedNRInferenceProvider initWithConfiguration:resourceProvider:];
    selfCopy = 0;
    goto LABEL_14;
  }

  v10 = v9;
  v9->_inputVideoRequirement = &v8->super;
  v9->_outputVideoRequirements = [configuration outputVideoRequirements];
  v10->_outputFormatDescriptionByAttachedMediaKey = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  outputVideoRequirements = [configuration outputVideoRequirements];
  v12 = [outputVideoRequirements countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(outputVideoRequirements);
        }

        -[NSMutableDictionary setObject:forKeyedSubscript:](v10->_outputFormatDescriptionByAttachedMediaKey, "setObject:forKeyedSubscript:", [objc_msgSend(objc_msgSend(*(*(&v18 + 1) + 8 * i) "videoFormat")], objc_msgSend(*(*(&v18 + 1) + 8 * i), "attachedMediaKey"));
      }

      v13 = [outputVideoRequirements countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v13);
  }

  return v10;
}

id __71__BWLearnedNRInferenceProvider_initWithConfiguration_resourceProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 pixelFormat];
  LOWORD(v5) = [a2 width];
  HIWORD(v5) = [a2 height];

  return [BWTiledEspressoInferenceProvider videoFormatWithPixelFormat:v3 size:v5];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWLearnedNRInferenceProvider;
  [(BWTiledEspressoInferenceProvider *)&v3 dealloc];
}

- (id)outputRequirementsToProduceForInputSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  array = [MEMORY[0x1E695DF70] array];
  v6 = [(BWLearnedNRInferenceConfiguration *)self->_configuration outputAttachedMediaKeyForInputDimensions:BWPixelBufferDimensionsFromSampleBuffer(buffer)];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  outputVideoRequirements = self->_outputVideoRequirements;
  v8 = [(NSArray *)outputVideoRequirements countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(outputVideoRequirements);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([objc_msgSend(v12 "attachedMediaKey")])
        {
          [array addObject:v12];
        }
      }

      v9 = [(NSArray *)outputVideoRequirements countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v9);
  }

  return array;
}

- (int)preProcessOutputBuffer:(__CVBuffer *)buffer forMediaKey:(id)key
{
  p_renderROI = &self->_renderROI;
  width = self->_renderROI.size.width;
  if (width >= CVPixelBufferGetWidth(buffer))
  {
    height = p_renderROI->size.height;
    if (height >= CVPixelBufferGetHeight(buffer))
    {
      return 0;
    }
  }

  metalStage = self->_metalStage;

  return [(LearnedNRMetalStage *)metalStage clearBuffer:buffer];
}

- (int)createInputTiles:(id)tiles withInputs:(id)inputs atPosition:(id *)position cmdBuffer:
{
  v6 = v5;
  positionCopy = position;
  if ([tiles count] != 1)
  {
    [BWLearnedNRInferenceProvider createInputTiles:withInputs:atPosition:cmdBuffer:];
    return 0;
  }

  v19 = [(BWLearnedNRInferenceProvider *)self computeTileParametersForPosition:positionCopy, v11, v12, v13, v14, v15, v16, v17, v18];
  if (!self || ((v20 = v19, [(BWInferenceConfiguration *)self->_configuration inferenceType]!= 171) ? (v21 = 1) : (v21 = 3), (v21 & (v20 | (v20 >> 16))) != 0))
  {
    [BWLearnedNRInferenceProvider createInputTiles:? withInputs:? atPosition:? cmdBuffer:?];
    return v28;
  }

  v22 = [inputs objectForKeyedSubscript:@"PrimaryFormat"];
  v23 = [tiles objectForKeyedSubscript:@"input"];
  if (!v23)
  {
    [BWLearnedNRInferenceProvider createInputTiles:withInputs:atPosition:cmdBuffer:];
    return 0;
  }

  v24 = v23;
  metalStage = self->_metalStage;
  if (self->_isInputFormatRaw)
  {
    result = [(LearnedNRMetalStage *)metalStage createRawTile:v24 fromInputRaw:v22 tileStart:v20 cmdBuffer:v6];
  }

  else
  {
    result = [(LearnedNRMetalStage *)metalStage createRawTile:v24 fromInputYuv:v22 tileStart:v20 cmdBuffer:v6];
  }

  if (result)
  {
    [BWLearnedNRInferenceProvider createInputTiles:? withInputs:? atPosition:? cmdBuffer:?];
    return v27;
  }

  return result;
}

+ (int32x2_t)numTilesForFullImageSize:(unsigned int)size tileSize:(unsigned int)tileSize tileOverlap:
{
  objc_opt_self();
  v7.i32[0] = a2;
  v7.i32[1] = HIWORD(a2);
  v8 = vdup_n_s32(tileSize);
  v9.i32[0] = size;
  v9.i32[1] = HIWORD(size);
  return vcvt_s32_f32(vrndp_f32(vdiv_f32(vcvt_f32_u32(vadd_s32(vsub_s32(v7, v8), 0x800000008)), vcvt_f32_u32(vsub_s32(v9, v8)))));
}

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler
{
  v13 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if ([(LearnedNRMetalStage *)self->_metalStage updateParametersFromMetadata:v13 lscSampleBuffer:BWSampleBufferGetAttachedMedia(buffer, 0x1F21AAE70)])
  {
    [BWLearnedNRInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:?];
LABEL_18:
    v28 = v32;
    goto LABEL_19;
  }

  v14 = CMGetAttachment(buffer, @"LearnedNRRegionOfInterest", 0);
  if (!v14)
  {
    [BWLearnedNRInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:?];
    goto LABEL_18;
  }

  v15 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v15;
  if (!CGRectMakeWithDictionaryRepresentation(v14, &rect))
  {
    [BWLearnedNRInferenceProvider submitForSampleBuffer:? usingStorage:? withSubmissionTime:? workQueue:? completionHandler:?];
    goto LABEL_18;
  }

  inferenceType = [(BWInferenceConfiguration *)self->_configuration inferenceType];
  if (inferenceType == 171)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  *v17.i32 = v18;
  if (inferenceType == 171)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  self->_renderROI.origin.z = 0;
  v20 = vdup_lane_s32(v17, 0);
  v21 = vdup_n_s32(v19);
  v22 = vshl_u32(vcvt_u32_f32(vrndm_f32(vdiv_f32(vcvt_f32_f64(rect.origin), v20))), v21);
  *&v23 = v22.u32[0];
  *(&v23 + 1) = v22.u32[1];
  v24 = vsubl_u32(vshl_u32(vcvt_u32_f32(vrndp_f32(vdiv_f32(vcvt_f32_f64(vaddq_f64(rect.origin, rect.size)), v20))), v21), v22);
  *&self->_renderROI.origin.x = v23;
  *&self->_renderROI.size.width = v24;
  self->_renderROI.size.depth = 0;
  if (v24.i64[0] <= self->_preparedOutputDimensions.width && v24.i64[1] <= self->_preparedOutputDimensions.height)
  {
    v25 = [BWLearnedNRInferenceProvider _tileOverlapForMetadata:?];
    self->_tileOverlap = v25;
    v26 = vmovn_s64(*&self->_renderROI.size.width);
    HIWORD(v31) = v26.i16[2];
    LOWORD(v31) = v26.i16[0];
    v27 = [BWLearnedNRInferenceProvider numTilesForFullImageSize:v31 tileSize:*self->_tileSize tileOverlap:v25];
    HIWORD(v30) = v27.i16[2];
    LOWORD(v30) = v27.i16[0];
    *&self->_numTiles[2] = v27.i16[2];
    *self->_numTiles = v27.i16[0];
    v34.receiver = self;
    v34.super_class = BWLearnedNRInferenceProvider;
    v32 = *&time->var0;
    var3 = time->var3;
    return [(BWTiledEspressoInferenceProvider *)&v34 submitForSampleBuffer:buffer usingStorage:storage withSubmissionTime:&v32 workQueue:queue completionHandler:handler currentTileCount:v30];
  }

  v28 = -31710;
LABEL_19:
  if (handler)
  {
    (*(handler + 2))(handler, 4294935586, self);
  }

  return v28;
}

- (uint64_t)_tuningParametersForPortType:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if ([*(result + 144) inferenceType] == 171)
    {
      v4 = @"QuadraLearnedNRParameters";
    }

    else
    {
      v4 = @"LearnedNRParameters";
    }

    v5 = [objc_msgSend(objc_msgSend(objc_msgSend(*(v3 + 144) "sensorConfigurationsByPortType")];

    return [v5 objectForKeyedSubscript:v4];
  }

  return result;
}

- (uint64_t)_tileOverlapForGain:(float)gain value:
{
  if (result)
  {
    objc_opt_class();
    OUTLINED_FUNCTION_3_30();
    if (objc_opt_isKindOfClass())
    {
      v6 = [a2 count];
      v7 = v6;
      if (v6 < 1 || (v6 & 1) != 0)
      {
        fig_log_get_emitter();
        v17 = v3;
        LODWORD(v16) = 0;
        FigDebugAssert3();
      }

      [objc_msgSend(a2 objectAtIndexedSubscript:{0, v16, v17), "floatValue"}];
      if (v8 >= gain)
      {
        v11 = 1;
      }

      else
      {
        v9 = ((v7 << 32) - 0x200000000) >> 32;
        [objc_msgSend(a2 objectAtIndexedSubscript:{v9), "floatValue"}];
        if (v10 > gain)
        {
          v11 = -1;
          while (v11 + 1 < v9)
          {
            [objc_msgSend(a2 "objectAtIndexedSubscript:"floatValue"")];
            v13 = v12;
            [objc_msgSend(a2 objectAtIndexedSubscript:{v11 + 3), "floatValue"}];
            v11 += 2;
            if (v13 <= gain && v14 > gain)
            {
              goto LABEL_19;
            }
          }

          return 64;
        }

        v11 = ((v7 << 32) - 0x100000000) >> 32;
      }

LABEL_19:
      a2 = [a2 objectAtIndexedSubscript:v11];
    }

    else
    {
      objc_opt_class();
      OUTLINED_FUNCTION_3_30();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return 64;
      }
    }

    return [a2 unsignedIntValue];
  }

  return result;
}

- (uint64_t)_tileOverlapForMetadata:(uint64_t)result
{
  if (result)
  {
    FigCaptureComputeImageGainFromMetadata();
  }

  return result;
}

- (uint64_t)_maxTileOverlap
{
  if (!self)
  {
    return 0;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  sensorConfigurationsByPortType = [*(self + 144) sensorConfigurationsByPortType];
  v3 = [sensorConfigurationsByPortType countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (!v3)
  {
    return 64;
  }

  v4 = v3;
  v5 = *v14;
  LODWORD(v6) = 64;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v14 != v5)
      {
        objc_enumerationMutation(sensorConfigurationsByPortType);
      }

      [-[BWLearnedNRInferenceProvider _tuningParametersForPortType:](self *(*(&v13 + 1) + 8 * i))];
      v8 = OUTLINED_FUNCTION_3_30();
      v10 = [(BWLearnedNRInferenceProvider *)v8 _tileOverlapForGain:v9 value:3.4028e38];
      if (v6 <= v10)
      {
        v6 = v10;
      }

      else
      {
        v6 = v6;
      }
    }

    v4 = [sensorConfigurationsByPortType countByEnumeratingWithState:&v13 objects:v12 count:16];
  }

  while (v4);
  return v6;
}

- (int64x2_t)computeTileParametersForPosition:(double)position
{
  if (result)
  {
    v10 = result[10].u32[2];
    v11 = vdup_n_s32(v10 >> 1);
    if (result[10].u16[1] - 1 == HIWORD(a2))
    {
      v12 = result[13].u16[0] - result[10].u16[3] + 4;
      v13.i32[1] = 4;
    }

    else
    {
      v12 = (result[10].u16[3] - v10) * HIWORD(a2) - 4;
      v13.i32[1] = v11.i32[1];
    }

    a7.i32[0] = 0;
    v14.i32[1] = v12;
    a9.i32[0] = a2;
    a10.i32[0] = 0x10000;
    v15 = vbsl_s8(*&vmovl_s16(vcgt_u32(a10, a9)), (v11.u32[0] | 0x400000000), v11);
    v16 = result[10].u16[2];
    v17.i32[1] = v12;
    v17.i32[0] = (v16 - v10) * a2 - 4;
    if (a2 == result[10].u16[0] - 1)
    {
      v14.i32[0] = result[12].u16[4] - v16 + 4;
      v17 = v14;
    }

    v13.i32[0] = a2;
    v18 = vceq_s32(v13, a7);
    v19.i32[1] = v15.i32[1];
    v19.i32[0] = 4;
    v20 = vbsl_s8(*&vmovl_s16(v18), v19, v15);
    HIWORD(v23) = v20.i16[2];
    LOWORD(v23) = v20.i16[0];
    v21 = vadd_s32(v17, vmovn_s64(result[11]));
    HIWORD(v22) = v21.i16[2];
    LOWORD(v22) = v21.i16[0];
    return (v22 | (v23 << 32));
  }

  return result;
}

- (int)writeOutputFor:(id)for to:(__CVBuffer *)to fromNetworkOutputTiles:(id)tiles withAdditionalPixelBuffers:(id)buffers withInputTilePixelBuffers:(id)pixelBuffers withInputFullPixelBuffers:(id)fullPixelBuffers atPosition:(id *)position cmdBuffer:
{
  v20 = [(BWLearnedNRInferenceProvider *)self computeTileParametersForPosition:position, v9, v10, v11, v12, v13, v14, v15, v16];
  if (!self || ((v21 = v20, -[BWInferenceConfiguration inferenceType](self->_configuration, "inferenceType") != 171) ? (v22 = 1) : (v22 = 3), (v22 & (v21 | HIWORD(v21))) != 0 || ![tiles objectForKeyedSubscript:@"output"] || !objc_msgSend(fullPixelBuffers, "objectForKeyedSubscript:", @"PrimaryFormat") || (objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"intermediateLumaTile_%i", -[BWInferenceConfiguration inferenceType](self->_configuration, "inferenceType")), !objc_msgSend(OUTLINED_FUNCTION_36(), "objectForKeyedSubscript:")) || (objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"intermediateDeltaTile_%i", -[BWInferenceConfiguration inferenceType](self->_configuration, "inferenceType")), !objc_msgSend(OUTLINED_FUNCTION_36(), "objectForKeyedSubscript:")) || (!self->_isInputFormatRaw ? (OUTLINED_FUNCTION_2_39(), result = objc_msgSend(v25, "writeRgbTile:toYuvBuffer:intermediateLumaBuffer:intermediateDeltaBuffer:origYuvInputBuffer:srcStart:dstStart:size:cmdBuffer:")) : (OUTLINED_FUNCTION_2_39(), result = objc_msgSend(v23, "writeRgbTile:toYuvBuffer:intermediateLumaBuffer:intermediateDeltaBuffer:origRawInputBuffer:srcStart:dstStart:size:cmdBuffer:")), result)))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

- (int)propagateInferenceResultForOutputRequirement:(id)requirement storage:(id)storage propagationSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v22 = 0;
  cf = 0;
  attachedMediaKey = [requirement attachedMediaKey];
  v10 = [storage pixelBufferForRequirement:requirement];
  if (v10)
  {
    v11 = v10;
    v12 = [(NSMutableDictionary *)self->_outputFormatDescriptionByAttachedMediaKey objectForKeyedSubscript:attachedMediaKey];
    if (v12)
    {
      v12 = CFRetain(v12);
    }

    v22 = v12;
    v13 = BWCMSampleBufferCreateDeepCopyWithNewPixelBuffer(buffer, v11, 0, &v22, &cf);
    if (v13)
    {
      fig_log_get_emitter();
      FigDebugAssert3();
    }

    else
    {
      [(NSMutableDictionary *)self->_outputFormatDescriptionByAttachedMediaKey setObject:v22 forKeyedSubscript:attachedMediaKey];
      BWCMSampleBufferCopyReattachAndReturnMutableMetadata(cf);
      BWSampleBufferSetAttachedMedia(buffer, attachedMediaKey, cf);
      v14 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
      x = self->_renderROI.origin.x;
      y = self->_renderROI.origin.y;
      width = self->_renderROI.size.width;
      height = self->_renderROI.size.height;
      v19 = CVPixelBufferGetWidth(v11);
      v20 = CVPixelBufferGetHeight(v11);
      FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v14, v19 | (v20 << 32), v19 | (v20 << 32), x, y, width, height, x, y, width, height);
    }
  }

  else
  {
    v13 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v13;
}

- (uint64_t)_verifyInputFormat
{
  if (result)
  {
    v1 = result;
    v2 = [objc_msgSend(*(result + 112) "videoFormat")];
    if (v2 == 641230384 || v2 == 641234480 || v2 == 645424688 || v2 == 758670896 || v2 == 758674992 || v2 == 762865200 || v2 == 792225328 || v2 == 792229424 || v2 == 796419632 || v2 == 875704438 || v2 == 2088265264 || v2 == 2019963440 || v2 == 2084070960 || v2 == 2084075056)
    {
      *(v1 + 224) = 0;
      return [*(v1 + 144) inferenceType] != 171;
    }

    else if (v2 == 1651926376)
    {
      result = 1;
      *(v1 + 224) = 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)_verifyOutputFormatForRequirement:(_BOOL8)result
{
  if (result)
  {
    v2 = result;
    v3 = [objc_msgSend(a2 "videoFormat")];
    if (*(v2 + 224) == 1)
    {
      return v3 == 644376112 || v3 == 761816624 || v3 == 795371056 || v3 == 1751527984 || v3 == 2087216688;
    }

    else
    {
      return v3 == [objc_msgSend(*(v2 + 112) "videoFormat")];
    }
  }

  return result;
}

- (__CFString)_networkName
{
  if (result)
  {
    if ([result[4].data inferenceType] == 171)
    {
      return @"learnednoisereduction-quadra-v1";
    }

    else
    {
      v1 = [BWEspressoInferenceAdapter espressoNetworkURLForPlatformedResourceBaseName:@"learnednoisereduction-v3" embedPlatformOrDeviceID:1];
      if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
      {
        return @"learnednoisereduction-v3";
      }

      else
      {
        return @"learnednoisereduction-v2";
      }
    }
  }

  return result;
}

- (int)prepareForSubmissionWithWorkQueue:(id)queue
{
  if (!-[FigCaptureCameraParameters commonNRFParameters](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters, "sharedInstance"), "commonNRFParameters") || (v6 = -[FigCaptureCameraParameters nrfVersion](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters, "sharedInstance"), "nrfVersion"), !v6) || (v7 = BWLoadProcessorBundle(@"NRF", v6)) == 0 || (v8 = [v7 classNamed:@"LearnedNRMetalStage"]) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    goto LABEL_43;
  }

  v87 = v8;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  sensorConfigurationsByPortType = [(BWLearnedNRInferenceConfiguration *)self->_configuration sensorConfigurationsByPortType];
  v12 = [(NSDictionary *)sensorConfigurationsByPortType countByEnumeratingWithState:&v118 objects:v117 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v119;
LABEL_7:
    v15 = 0;
    while (1)
    {
      if (*v119 != v14)
      {
        objc_enumerationMutation(sensorConfigurationsByPortType);
      }

      v16 = *(*(&v118 + 1) + 8 * v15);
      v17 = [(NSDictionary *)[(BWLearnedNRInferenceConfiguration *)self->_configuration sensorConfigurationsByPortType] objectForKeyedSubscript:v16];
      if (![v17 cameraInfo])
      {
        goto LABEL_42;
      }

      [dictionary setObject:objc_msgSend(v17 forKeyedSubscript:{"cameraInfo"), v16}];
      [dictionary2 setObject:-[BWLearnedNRInferenceProvider _tuningParametersForPortType:](self forKeyedSubscript:{v16), v16}];
      if (v13 == ++v15)
      {
        v13 = [(NSDictionary *)sensorConfigurationsByPortType countByEnumeratingWithState:&v118 objects:v117 count:16];
        if (v13)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  v18 = [[v87 alloc] initWithCommandQueue:-[BWTiledEspressoInferenceConfiguration metalCommandQueue](self->_configuration cameraInfo:"metalCommandQueue") tuningParameters:dictionary isQuadra:{dictionary2, -[BWInferenceConfiguration inferenceType](self->_configuration, "inferenceType") == 171}];
  self->_metalStage = v18;
  if (!v18)
  {
    goto LABEL_42;
  }

  -[LearnedNRMetalStage setDeviceGeneration:](self->_metalStage, "setDeviceGeneration:", [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters deviceGeneration]);
  _verifyInputFormat = [(BWLearnedNRInferenceProvider *)self _verifyInputFormat];
  if (!_verifyInputFormat)
  {
    return -31711;
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  outputVideoRequirements = self->_outputVideoRequirements;
  v28 = OUTLINED_FUNCTION_6_25(_verifyInputFormat, v20, v21, v22, v23, v24, v25, v26, v70, v72, v74, v76, v79, v82, v3, queue, v87, 144, v90, v92, v95.receiver, v95.super_class, v96.receiver, v96.super_class, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, 0);
  if (v28)
  {
    v29 = v28;
    v30 = *v114;
LABEL_17:
    v31 = 0;
    while (1)
    {
      if (*v114 != v30)
      {
        objc_enumerationMutation(outputVideoRequirements);
      }

      v32 = [(BWLearnedNRInferenceProvider *)self _verifyOutputFormatForRequirement:?];
      if (!v32)
      {
        return -31711;
      }

      if (v29 == ++v31)
      {
        v29 = OUTLINED_FUNCTION_6_25(v32, v33, v34, v35, v36, v37, v38, v39, v71, v73, v75, v77, v80, v83, v85, v86, v88, v89, v91, v93, v95.receiver, v95.super_class, v96.receiver, v96.super_class, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
        if (v29)
        {
          goto LABEL_17;
        }

        break;
      }
    }
  }

  v40 = [BWEspressoInferenceAdapter espressoNetworkURLForPlatformedResourceBaseName:[(BWLearnedNRInferenceProvider *)self _networkName] embedPlatformOrDeviceID:1];
  if (!v40 || (v41 = v40, ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) == 0))
  {
LABEL_42:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_41();
LABEL_43:
    FigSignalErrorAtGM();
    return 0;
  }

  v42 = self->_outputVideoRequirements;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v43 = OUTLINED_FUNCTION_5_32();
  if (v43)
  {
    v46 = v43;
    v47 = 0;
    v48 = 0;
    v49 = *v123;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v123 != v49)
        {
          objc_enumerationMutation(v42);
        }

        v51 = *(*(&v122 + 1) + 8 * i);
        if ([objc_msgSend(v51 "videoFormat")] > v48)
        {
          v48 = [objc_msgSend(v51 "videoFormat")];
        }

        if ([objc_msgSend(v51 "videoFormat")] > v47)
        {
          v47 = [objc_msgSend(v51 "videoFormat")];
        }
      }

      v46 = OUTLINED_FUNCTION_5_32();
    }

    while (v46);
    v44 = v48 | (v47 << 32);
  }

  else
  {
    v44 = 0;
  }

  self->_renderROI.origin.x = 0;
  self->_renderROI.origin.y = 0;
  v78 = v44;
  self->_renderROI.origin.z = 0;
  self->_renderROI.size.width = v44;
  self->_renderROI.size.height = v44 >> 32;
  self->_renderROI.size.depth = 0;
  *self->_tileSize = 48235296;
  _maxTileOverlap = [(BWLearnedNRInferenceProvider *)self _maxTileOverlap];
  self->_tileOverlap = _maxTileOverlap;
  v53 = vmovn_s64(*&self->_renderROI.size.width);
  HIWORD(v94) = v53.i16[2];
  LOWORD(v94) = v53.i16[0];
  v54 = [BWLearnedNRInferenceProvider numTilesForFullImageSize:v94 tileSize:*self->_tileSize tileOverlap:_maxTileOverlap];
  *self->_numTiles = v54.i16[0];
  *&self->_numTiles[2] = v54.i16[2];
  v84 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{OUTLINED_FUNCTION_7_23(BWTiledEspressoInferenceProvider, v55), @"input", 0}];
  v81 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{OUTLINED_FUNCTION_7_23(BWTiledEspressoInferenceProvider, v56), @"output", 0}];
  array = [MEMORY[0x1E695DF70] array];
  v59 = OUTLINED_FUNCTION_7_23(BWTiledEspressoInferenceProvider, v58);
  v60 = [BWInferenceVideoRequirement alloc];
  v61 = -[BWInferenceVideoRequirement initWithAttachedMediaKey:videoFormat:](v60, "initWithAttachedMediaKey:videoFormat:", [MEMORY[0x1E696AEC0] stringWithFormat:@"intermediateLumaTile_%i", objc_msgSend(*(&self->super.super.isa + v89), "inferenceType")], v59);
  [OUTLINED_FUNCTION_36() addObject:?];
  v63 = OUTLINED_FUNCTION_7_23(BWTiledEspressoInferenceProvider, v62);
  v64 = [BWInferenceVideoRequirement alloc];
  v65 = -[BWInferenceVideoRequirement initWithAttachedMediaKey:videoFormat:](v64, "initWithAttachedMediaKey:videoFormat:", [MEMORY[0x1E696AEC0] stringWithFormat:@"intermediateDeltaTile_%i", objc_msgSend(*(&self->super.super.isa + v89), "inferenceType")], v63);
  [OUTLINED_FUNCTION_36() addObject:?];
  type = [(BWLearnedNRInferenceProvider *)self type];
  v67 = *self->_numTiles;
  v96.receiver = self;
  v96.super_class = BWLearnedNRInferenceProvider;
  v68 = [(BWTiledEspressoInferenceProvider *)&v96 loadNetworkWithURL:v41 configName:0 inferenceType:type maxTileCount:v67 inputFormatsByBindingName:v84 outputFormatsByBindingName:v81 additionalVideoRequirements:array];
  if (v68)
  {
    return v68;
  }

  v95.receiver = self;
  v95.super_class = BWLearnedNRInferenceProvider;
  v45 = [(BWTiledEspressoInferenceProvider *)&v95 prepareForSubmissionWithWorkQueue:v86];
  if (v45)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
  }

  else
  {
    self->_preparedOutputDimensions = v78;
  }

  return v45;
}

- (uint64_t)initWithConfiguration:resourceProvider:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

- (uint64_t)initWithConfiguration:resourceProvider:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

- (uint64_t)createInputTiles:withInputs:atPosition:cmdBuffer:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

- (uint64_t)createInputTiles:(_DWORD *)a1 withInputs:atPosition:cmdBuffer:.cold.2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)createInputTiles:withInputs:atPosition:cmdBuffer:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

- (uint64_t)createInputTiles:(_DWORD *)a1 withInputs:atPosition:cmdBuffer:.cold.4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)submitForSampleBuffer:(_DWORD *)a1 usingStorage:withSubmissionTime:workQueue:completionHandler:.cold.3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end