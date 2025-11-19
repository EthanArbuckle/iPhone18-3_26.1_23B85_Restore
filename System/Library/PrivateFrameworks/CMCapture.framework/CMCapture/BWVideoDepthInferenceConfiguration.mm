@interface BWVideoDepthInferenceConfiguration
+ (BWCachedADPCEDisparityColorInferenceDescriptor)pceDisparityColorInferenceDescriptorForVideoDepthLayout:(int)a3 inputSource:(unint64_t)a4;
- (BWVideoDepthInferenceConfiguration)initWithConcurrencyWidth:(unint64_t)a3 videoDepthLayout:(int)a4 captureDevice:(id)a5 overrideOutputDimensions:(id)a6 backpressureEvent:(id)a7;
- (BWVideoDepthInferenceConfiguration)initWithConcurrencyWidth:(unint64_t)a3 videoDepthLayout:(int)a4 captureDevice:(id)a5 requiresCroppingOfDepthBuffer:(BOOL)a6 requiresVerticalFlipOfDepthBuffer:(BOOL)a7 backpressureEvent:(id)a8;
- (float)getMonocularDepthScaleFactor:(opaqueCMSampleBuffer *)a3 inputImageIsRotated:(BOOL)a4 inferenceCropRect:(CGRect)a5;
- (uint64_t)_monocularNetworkSupportsResolutionWithWidth:(int)a3 height:;
- (void)dealloc;
- (void)loadMonocularVideoPipeline;
@end

@implementation BWVideoDepthInferenceConfiguration

- (BWVideoDepthInferenceConfiguration)initWithConcurrencyWidth:(unint64_t)a3 videoDepthLayout:(int)a4 captureDevice:(id)a5 requiresCroppingOfDepthBuffer:(BOOL)a6 requiresVerticalFlipOfDepthBuffer:(BOOL)a7 backpressureEvent:(id)a8
{
  v12 = *&a4;
  v60.receiver = self;
  v60.super_class = BWVideoDepthInferenceConfiguration;
  v14 = [(BWInferenceConfiguration *)&v60 initWithInferenceType:109];
  if (!v14)
  {
    return v14;
  }

  v47 = a8;
  v48 = a3;
  v49 = a6;
  v46 = a7;
  *(v14 + 10) = [a5 cameraInfoByPortType];
  *(v14 + 8) = -1;
  *(v14 + 22) = 0;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v15 = [a5 activePortTypes];
  v16 = [v15 countByEnumeratingWithState:&v56 objects:v55 count:16];
  if (!v16)
  {
    v54 = -1;
    goto LABEL_24;
  }

  v17 = v16;
  v18 = *v57;
  v19 = *off_1E798A0D8;
  v20 = *off_1E798A0D0;
  v53 = *off_1E798A0E8;
  v51 = *off_1E798A0F8;
  v52 = *off_1E798A0C0;
  v54 = -1;
  v50 = v12;
  while (2)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v57 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v22 = *(*(&v56 + 1) + 8 * i);
      if ([v22 isEqual:v19])
      {
        v24 = 0;
        v25 = 1;
        goto LABEL_22;
      }

      if (![v22 isEqual:v20])
      {
        if (([v22 isEqual:v53] & 1) == 0)
        {
          if (([v22 isEqual:v51] & 1) == 0)
          {
            continue;
          }

          v22 = v51;
LABEL_23:
          *(v14 + 22) = v22;
          v12 = v50;
          goto LABEL_24;
        }

        v24 = 2;
        v25 = 2;
LABEL_22:
        v54 = v25;
        *(v14 + 8) = v24;
        goto LABEL_23;
      }

      *(v14 + 8) = 1;
      [objc_msgSend(a5 "zoomCommandHandler")];
      if (v23 == 4.0)
      {
        *(v14 + 8) = 3;
        v54 = 3;
      }

      else
      {
        v54 = 0;
      }

      *(v14 + 22) = v52;
    }

    v17 = [v15 countByEnumeratingWithState:&v56 objects:v55 count:16];
    v12 = v50;
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_24:
  v26 = [a5 depthType];
  [a5 cinematicVideoEnabled];
  [a5 cinematicVideoEnabled];
  if (v26 == 4)
  {
    *(v14 + 8) = 4;
    v27 = [a5 activePortTypes];
    v28 = *off_1E798A0C0;
    if ([v27 containsObject:*off_1E798A0C0])
    {
      *(v14 + 22) = v28;
    }

    if (v12 <= 2 && (v41 = dword_1AD055D70[v12], v42 = qword_1AD055D80[v12], v43 = dword_1AD055D98[v12], *(v14 + 29) = 1065353216, [(BWVideoDepthInferenceConfiguration *)v14 _monocularNetworkSupportsResolutionWithWidth:v43 height:v41]))
    {
      *(v14 + 28) = 0;
      *(v14 + 30) = v43;
      *(v14 + 31) = v41;
      v44 = &bwvdic_monocularVideoPipelineForNetworkDimensions_sDescriptors[8 * v42];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __bwvdic_monocularVideoPipelineForNetworkDimensions_block_invoke;
      block[3] = &__block_descriptor_48_e5_v8__0l;
      v62 = v43;
      v63 = v41;
      block[4] = v44;
      if (*v44 != -1)
      {
        dispatch_once(&bwvdic_monocularVideoPipelineForNetworkDimensions_sDescriptors[8 * v42], block);
      }

      a8 = v47;
      v30 = v48;
      v29 = v49;
      v45 = v44[1];
      *(v14 + 164) = v45;
      *(v14 + 36) = v45;
      *(v14 + 38) = *(v44 + 6);
      *(v14 + 23) = *(v44 + 28);
      *(v14 + 39) = *(v44 + 9);
      *(v14 + 24) = v44[5];
      *(v14 + 40) = *(v44 + 12);
      *(v14 + 16) = v44[7];
LABEL_33:
      v39 = *(v14 + 22);
      *(v14 + 6) = v30;
      *(v14 + 18) = v12;
      v14[144] = 0;
      v14[145] = v29;
      v14[147] = v46;
      *(v14 + 8) = a8;
      v14[146] = 0;
      *(v14 + 17) = [objc_msgSend(a5 "captureStream")];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v29 = v49;
    v30 = v48;
    if ([a5 depthType] == 3)
    {
      v31 = [objc_alloc(getADStereoV2PipelineParametersClass()) init];
      v32 = [objc_msgSend(objc_alloc(getADStereoV2PipelineClass()) initWithParameters:{v31), "inferenceDescriptor"}];
      *(v14 + 11) = v32;
      [objc_msgSend(objc_msgSend(v32 "disparityOutput")];
      *(v14 + 41) = v33;
      *(v14 + 42) = v34;
      *(v14 + 9) = v33;
      *(v14 + 10) = v34;
      *(v14 + 38) = [objc_msgSend(objc_msgSend(*(v14 + 11) "disparityOutput")];
      v35 = [objc_msgSend(*(v14 + 11) "depthFeaturesOutput")];
      [v35 sizeForLayout:255];
      *(v14 + 46) = v36;
      *(v14 + 47) = v37;
      *(v14 + 39) = [v35 pixelFormat];
      goto LABEL_33;
    }

    v38 = [BWVideoDepthInferenceConfiguration pceDisparityColorInferenceDescriptorForVideoDepthLayout:v12 inputSource:v54];
    if (v38)
    {
      *(v14 + 164) = v38->var1;
      *(v14 + 36) = v38->var2;
      *(v14 + 23) = v38->var3;
      *(v14 + 39) = v38->var4;
      *(v14 + 14) = v38->var5;
      *(v14 + 19) = LODWORD(v38->var6);
      goto LABEL_33;
    }

    [BWVideoDepthInferenceConfiguration initWithConcurrencyWidth:videoDepthLayout:captureDevice:requiresCroppingOfDepthBuffer:requiresVerticalFlipOfDepthBuffer:backpressureEvent:];
  }

  return v14;
}

- (BWVideoDepthInferenceConfiguration)initWithConcurrencyWidth:(unint64_t)a3 videoDepthLayout:(int)a4 captureDevice:(id)a5 overrideOutputDimensions:(id)a6 backpressureEvent:(id)a7
{
  result = [(BWVideoDepthInferenceConfiguration *)self initWithConcurrencyWidth:a3 videoDepthLayout:*&a4 captureDevice:a5 backpressureEvent:a7];
  if (result)
  {
    result->_outputDimensions = a6;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWVideoDepthInferenceConfiguration;
  [(BWInferenceConfiguration *)&v3 dealloc];
}

+ (BWCachedADPCEDisparityColorInferenceDescriptor)pceDisparityColorInferenceDescriptorForVideoDepthLayout:(int)a3 inputSource:(unint64_t)a4
{
  if (a3 >= 3)
  {
    +[BWVideoDepthInferenceConfiguration pceDisparityColorInferenceDescriptorForVideoDepthLayout:inputSource:];
    return 0;
  }

  if (a4 >= 4)
  {
    +[BWVideoDepthInferenceConfiguration pceDisparityColorInferenceDescriptorForVideoDepthLayout:inputSource:];
    return 0;
  }

  v4 = &pceDisparityColorInferenceDescriptorForVideoDepthLayout_inputSource__sDescriptors[128 * a3 + 32 * a4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__BWVideoDepthInferenceConfiguration_pceDisparityColorInferenceDescriptorForVideoDepthLayout_inputSource___block_invoke;
  block[3] = &__block_descriptor_52_e5_v8__0l;
  v7 = a3;
  block[4] = a4;
  block[5] = v4;
  if (v4->var0 != -1)
  {
    dispatch_once(&pceDisparityColorInferenceDescriptorForVideoDepthLayout_inputSource__sDescriptors[128 * a3 + 32 * a4], block);
  }

  return v4;
}

uint64_t __106__BWVideoDepthInferenceConfiguration_pceDisparityColorInferenceDescriptorForVideoDepthLayout_inputSource___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = 254;
  if (!v2)
  {
    v3 = 3;
  }

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  v5 = [objc_alloc(getADPCEDisparityColorPipelineClass()) initForInputSource:*(a1 + 32) metalDevice:0];
  v6 = [v5 inferenceDescriptor];
  [objc_msgSend(objc_msgSend(v6 "disparityInput")];
  v8 = v7;
  v10 = v9;
  [objc_msgSend(objc_msgSend(v6 "disparityOutput")];
  v11 = *(a1 + 40);
  v11[2] = v8;
  v11[3] = v10;
  v11[4] = v12;
  v11[5] = v13;
  [objc_msgSend(objc_msgSend(v6 "featuresOutput")];
  v14 = *(a1 + 40);
  *(v14 + 24) = v15;
  *(v14 + 28) = v16;
  *(*(a1 + 40) + 32) = [objc_msgSend(objc_msgSend(v6 "featuresOutput")];
  *(*(a1 + 40) + 36) = [objc_msgSend(objc_msgSend(v6 "prevDisparityInput")];
  [objc_msgSend(v5 "pipelineParameters")];
  *(*(a1 + 40) + 40) = v17;
  *(*(a1 + 40) + 48) = [objc_msgSend(v6 "networkURL")];
  *(*(a1 + 40) + 56) = [objc_msgSend(v6 configurationNameForLayout:{v4), "copy"}];
  *(*(a1 + 40) + 64) = [objc_msgSend(objc_msgSend(v6 "disparityInput")];
  v18 = [objc_msgSend(objc_msgSend(v6 "disparityInput")];
  v19 = *(a1 + 40);
  v19[11] = v18;
  [objc_msgSend(objc_msgSend(v6 "disparityInput")];
  v19[9] = v20;
  v19[10] = v21;
  *(*(a1 + 40) + 96) = [objc_msgSend(objc_msgSend(v6 "prevDisparityInput")];
  v22 = [objc_msgSend(objc_msgSend(v6 "prevDisparityInput")];
  v23 = *(a1 + 40);
  v23[15] = v22;
  [objc_msgSend(objc_msgSend(v6 "prevDisparityInput")];
  v23[13] = v24;
  v23[14] = v25;
  *(*(a1 + 40) + 128) = [objc_msgSend(objc_msgSend(v6 "colorInput")];
  v26 = [objc_msgSend(objc_msgSend(v6 "colorInput")];
  v27 = *(a1 + 40);
  v27[19] = v26;
  [objc_msgSend(objc_msgSend(v6 "colorInput")];
  v27[17] = v28;
  v27[18] = v29;
  *(*(a1 + 40) + 160) = [objc_msgSend(objc_msgSend(v6 "disparityOutput")];
  v30 = [objc_msgSend(objc_msgSend(v6 "disparityOutput")];
  v31 = *(a1 + 40);
  v31[23] = v30;
  [objc_msgSend(objc_msgSend(v6 "disparityOutput")];
  v31[21] = v32;
  v31[22] = v33;
  *(*(a1 + 40) + 192) = [objc_msgSend(objc_msgSend(v6 "prevFeaturesInput")];
  v34 = [objc_msgSend(objc_msgSend(v6 "prevFeaturesInput")];
  v35 = *(a1 + 40);
  v35[27] = v34;
  [objc_msgSend(objc_msgSend(v6 "prevFeaturesInput")];
  v35[25] = v36;
  v35[26] = v37;
  *(*(a1 + 40) + 224) = [objc_msgSend(objc_msgSend(v6 "featuresOutput")];
  v38 = [objc_msgSend(objc_msgSend(v6 "featuresOutput")];
  v39 = *(a1 + 40);
  v39[31] = v38;
  result = [objc_msgSend(objc_msgSend(v6 "featuresOutput")];
  v39[29] = v41;
  v39[30] = v42;
  return result;
}

- (uint64_t)_monocularNetworkSupportsResolutionWithWidth:(int)a3 height:
{
  if (result)
  {
    v5 = [getADMonocularVideoPipelineClass() supportedDimensions];
    v6 = [getADImageDimensionsClass() imageDimensionsWithWidth:a2 height:a3];
    result = OUTLINED_FUNCTION_1_70(v6, v7, v8, v9, v10, v11, v12, v13, v25);
    if (result)
    {
      v14 = result;
      v15 = MEMORY[0];
      while (2)
      {
        v16 = 0;
        do
        {
          if (MEMORY[0] != v15)
          {
            objc_enumerationMutation(v5);
          }

          v17 = [*(8 * v16) isEqual:v6];
          if (v17)
          {
            return 1;
          }

          ++v16;
        }

        while (v14 != v16);
        result = OUTLINED_FUNCTION_1_70(v17, v18, v19, v20, v21, v22, v23, v24, v26);
        v14 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

- (void)loadMonocularVideoPipeline
{
  os_unfair_lock_lock(&self->_monocularPipelineLock);
  if (*&self->_monocularVideoInferenceDescriptor == 0)
  {
    v3 = [objc_alloc(getADMonocularVideoPipelineParametersClass()) init];
    [v3 setRequestedDimensions:{objc_msgSend(getADImageDimensionsClass(), "imageDimensionsWithWidth:height:", self->_networkWidth, self->_networkHeight)}];
    v4 = [objc_alloc(getADMonocularVideoPipelineClass()) initWithParameters:v3];
    self->_monocularVideoPipeline = v4;
    self->_monocularVideoInferenceDescriptor = [(ADMonocularVideoPipeline *)v4 inferenceDescriptor];
  }

  os_unfair_lock_unlock(&self->_monocularPipelineLock);
}

- (float)getMonocularDepthScaleFactor:(opaqueCMSampleBuffer *)a3 inputImageIsRotated:(BOOL)a4 inferenceCropRect:(CGRect)a5
{
  v5 = a4;
  rect = a5;
  AttachedMedia = BWSampleBufferGetAttachedMedia(a3, 0x1F21AAAD0);
  v9 = AttachedMedia;
  if (AttachedMedia)
  {
    v10 = AttachedMedia;
  }

  else
  {
    v10 = a3;
  }

  v11 = CMGetAttachment(v10, *MEMORY[0x1E6960470], 0);
  if (v11)
  {
    v12 = *(MEMORY[0x1E69E9B10] + 16);
    v23[0] = *MEMORY[0x1E69E9B10];
    v23[1] = v12;
    v23[2] = *(MEMORY[0x1E69E9B10] + 32);
    [v11 getBytes:v23 length:48];
    v13 = *v23;
    if (!v9)
    {
      v14 = CMGetAttachment(a3, *off_1E798A430, 0);
      if (v14)
      {
        CGRectMakeWithDictionaryRepresentation(v14, &rect);
      }
    }

    ImageBuffer = CMSampleBufferGetImageBuffer(v10);
    if (v5)
    {
      height = rect.size.height;
      Width = CVPixelBufferGetHeight(ImageBuffer);
    }

    else
    {
      height = rect.size.width;
      Width = CVPixelBufferGetWidth(ImageBuffer);
    }

    v18 = height * Width;
    v19 = v13 * (self->_outputDimensions.width / v18);
    [(BWVideoDepthInferenceConfiguration *)self loadMonocularVideoPipeline];
    *&v20 = v19;
    [(ADMonocularVideoPipeline *)self->_monocularVideoPipeline getMetricScaleFactorForEFL:v20];
    if (v21 > 0.0)
    {
      self->_monocularDepthScaleFactor = v21;
    }
  }

  return self->_monocularDepthScaleFactor;
}

- (uint64_t)initWithConcurrencyWidth:videoDepthLayout:captureDevice:requiresCroppingOfDepthBuffer:requiresVerticalFlipOfDepthBuffer:backpressureEvent:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

+ (uint64_t)pceDisparityColorInferenceDescriptorForVideoDepthLayout:inputSource:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

+ (uint64_t)pceDisparityColorInferenceDescriptorForVideoDepthLayout:inputSource:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end