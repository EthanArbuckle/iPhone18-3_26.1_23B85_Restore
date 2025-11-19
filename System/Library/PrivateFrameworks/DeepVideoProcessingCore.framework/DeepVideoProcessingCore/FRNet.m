@interface FRNet
+ (void)downloadMobileAssetWithCompletionHandler:(id)a3;
- (BOOL)getColorConsistentOutputRGBVia:(__CVBuffer *)a3 bicubicRGB:(__CVBuffer *)a4 laplacianMask:(__CVBuffer *)a5 attachment:(__CFDictionary *)a6 destinationFrame:(__CVBuffer *)a7;
- (BOOL)upscaleFrame:(__CVBuffer *)a3 previousLowResFrame:(__CVBuffer *)a4 previousHiResFrame:(__CVBuffer *)a5 opticalFlow:(__CVBuffer *)a6 destinationHiResFrame:(__CVBuffer *)a7;
- (FRNet)initWithUsage:(int64_t)a3 inputWidth:(unint64_t)a4 inputHeight:(unint64_t)a5 scaleFactor:(unint64_t)a6 useMPS:(BOOL)a7 outputSize:(CGSize)a8;
- (__CVBuffer)convertToYUV:(__CVBuffer *)a3 attachment:(__CFDictionary *)a4;
- (int64_t)allocateTemporalBuffers;
- (void)VSRGetInputFrameSizeForUsage:(int64_t)a3 width:(unint64_t *)a4 height:(unint64_t *)a5;
- (void)convertToRGB:(__CVBuffer *)a3 to:(__CVBuffer *)a4 withRGBFormat:(unsigned int)a5 rotate:(BOOL)a6;
- (void)dealloc;
- (void)getPixelBufferAttributes:(unsigned int)a3 bitDepth:(int64_t *)a4 isYUV:(BOOL *)a5 isFullRange:(BOOL *)a6 isYUV422:(BOOL *)a7;
- (void)releaseTemporalBuffers;
@end

@implementation FRNet

- (void)releaseTemporalBuffers
{
  CVPixelBufferRelease(self->_normalizedRGB);
  CVPixelBufferRelease(self->_previousLR);
  CVPixelBufferRelease(self->_previousHighResolutionOutput);
  CVPixelBufferRelease(self->_opticalFlow);
  CVPixelBufferRelease(self->_errorMask);
  CVPixelBufferRelease(self->_laplacianMask);
  CVPixelBufferRelease(self->_currentLRRGB);
  CVPixelBufferRelease(self->_normalizedCurrentLowResLuma);
  CVPixelBufferRelease(self->_normalizedPreviousLowResLuma);
  CVPixelBufferRelease(self->_previousHRRGB);
  CVPixelBufferRelease(self->_bicubicRGB);
  CVPixelBufferRelease(self->_warpedHR);
  CVPixelBufferRelease(self->_srNetHROutput);
  highResolutionNormalizedBufferPool = self->_highResolutionNormalizedBufferPool;
  if (highResolutionNormalizedBufferPool)
  {
    CFRelease(highResolutionNormalizedBufferPool);
  }

  lowResolutionNormalizedBufferPool = self->_lowResolutionNormalizedBufferPool;
  if (lowResolutionNormalizedBufferPool)
  {
    CFRelease(lowResolutionNormalizedBufferPool);
  }

  opticalFlowBufferPool = self->_opticalFlowBufferPool;
  if (opticalFlowBufferPool)
  {

    CFRelease(opticalFlowBufferPool);
  }
}

- (void)dealloc
{
  [(FRNet *)self releaseTemporalBuffers];
  srnet = self->_srnet;
  self->_srnet = 0;

  vtTransferSession = self->_vtTransferSession;
  if (vtTransferSession)
  {
    VTPixelTransferSessionInvalidate(vtTransferSession);
    CFRelease(self->_vtTransferSession);
  }

  self->_vtTransferSession = 0;
  [VEMobileAsset endAllLocksWithAssetType:@"com.apple.MobileAsset.VideoEffect" assetSpecifier:@"com.apple.videoeffect.VSR" forClientName:@"FRNet"];
  v5.receiver = self;
  v5.super_class = FRNet;
  [(FRNet *)&v5 dealloc];
}

+ (void)downloadMobileAssetWithCompletionHandler:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__FRNet_downloadMobileAssetWithCompletionHandler___block_invoke;
  v5[3] = &unk_278F53658;
  v6 = v3;
  v4 = v3;
  [VEMobileAsset downloadMobileAssetType:@"com.apple.MobileAsset.VideoEffect" assetSpecifier:@"com.apple.videoeffect.VSR" forClientName:@"FRNet" completionHandler:v5];
}

- (void)convertToRGB:(__CVBuffer *)a3 to:(__CVBuffer *)a4 withRGBFormat:(unsigned int)a5 rotate:(BOOL)a6
{
  if (a5 == 846624121)
  {
    if (VTPixelTransferSessionTransferImage(self->_vtTransferSession, a3, a4) && (global_logLevel & 0x10) != 0)
    {
      v9 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
      {
        [FRNet convertToRGB:v9 to:? withRGBFormat:? rotate:?];
      }
    }
  }

  else
  {
    v10 = a6;
    v11 = CMCopyDictionaryOfAttachments(0, a3, 1u);
    CMSetAttachments(a4, v11, 1u);
    CFRelease(v11);
    if (v10)
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    scaler = self->_scaler;

    [(VEScaler *)scaler downScaleFrameSource:a3 destination:a4 rotate:v12 waitForCompletion:0];
  }
}

- (__CVBuffer)convertToYUV:(__CVBuffer *)a3 attachment:(__CFDictionary *)a4
{
  bitDepth = self->_bitDepth;
  if (bitDepth == 10)
  {
    if (self->_fullRange)
    {
      v9 = 2019963440;
    }

    else
    {
      v9 = 2016686640;
    }

    v10 = 2016686642;
    if (self->_fullRange)
    {
      v10 = 2019963442;
    }

    if (self->_isYUV422)
    {
      v8 = v10;
    }

    else
    {
      v8 = v9;
    }
  }

  else if (bitDepth == 8)
  {
    if (self->_fullRange)
    {
      v8 = 875704422;
    }

    else
    {
      v8 = 875704438;
    }
  }

  else
  {
    v8 = 2016686640;
    if ((global_logLevel & 4) != 0)
    {
      v11 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
      {
        *v22 = 0;
        _os_log_impl(&dword_24874B000, v11, OS_LOG_TYPE_INFO, "Bit depth is not 8 nor 10. Using kCVPixelFormatType_420YpCbCr10BiPlanarVideoRange as default.", v22, 2u);
      }
    }
  }

  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  PixelBuffer = createPixelBuffer(Width, Height, v8, 0);
  removeCMAttachment = self->_removeCMAttachment;
  v16 = [(__CFDictionary *)a4 valueForKey:*MEMORY[0x277CC4C00]];
  v17 = v16;
  if (!v16)
  {
    if (removeCMAttachment)
    {
      v19 = 0;
      goto LABEL_24;
    }

LABEL_23:
    v19 = 1;
    CMSetAttachments(PixelBuffer, a4, 1u);
    goto LABEL_24;
  }

  v18 = [v16 compare:*MEMORY[0x277CC4C38]];
  v19 = 0;
  if (!removeCMAttachment && v18)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (VTPixelTransferSessionTransferImage(self->_vtTransferSession, a3, PixelBuffer))
  {
    if ((global_logLevel & 0x10) != 0)
    {
      v20 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
      {
        [FRNet convertToRGB:v20 to:? withRGBFormat:? rotate:?];
        if (v19)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }
    }
  }

  if ((v19 & 1) == 0)
  {
LABEL_28:
    CMSetAttachments(PixelBuffer, a4, 1u);
  }

LABEL_29:

  return PixelBuffer;
}

- (BOOL)getColorConsistentOutputRGBVia:(__CVBuffer *)a3 bicubicRGB:(__CVBuffer *)a4 laplacianMask:(__CVBuffer *)a5 attachment:(__CFDictionary *)a6 destinationFrame:(__CVBuffer *)a7
{
  v12 = [(FRNet *)self convertToYUV:a3 attachment:a6];
  v13 = [(FRNet *)self convertToYUV:a4 attachment:a6];
  PixelFormatType = CVPixelBufferGetPixelFormatType(v12);
  Width = CVPixelBufferGetWidth(v12);
  Height = CVPixelBufferGetHeight(v12);
  PixelBuffer = createPixelBuffer(Width, Height, PixelFormatType, 0);
  CMSetAttachments(PixelBuffer, a6, 1u);
  v18 = [(OFNormalization *)self->_normalization postprocessSRFrame:v12 bicubicYUV:v13 laplacianMask:a5 outputYUV:PixelBuffer];
  v19 = createPixelBuffer(Width, Height, self->_rgbaPixelFormat, 0);
  [(FRNet *)self convertToRGB:PixelBuffer to:v19 withRGBFormat:self->_rgbaPixelFormat rotate:0];
  removeCMAttachment = self->_removeCMAttachment;
  v21 = [(__CFDictionary *)self->_attachmentDictOfInput valueForKey:*MEMORY[0x277CC4C00]];
  v22 = v21;
  if (v21)
  {
    v23 = [v21 compare:*MEMORY[0x277CC4C38]];
    if (!removeCMAttachment && v23)
    {
      goto LABEL_4;
    }

LABEL_6:
    [(VEScaler *)self->_scaler upScaleAndCropFrameSource:v19 destination:a7 upscale:0 rotate:self->_inputIsPortrait waitForCompletion:1];
    CMSetAttachments(a7, self->_attachmentDictOfInput, 1u);
    goto LABEL_7;
  }

  if (removeCMAttachment)
  {
    goto LABEL_6;
  }

LABEL_4:
  CMSetAttachments(a7, self->_attachmentDictOfInput, 1u);
  [(VEScaler *)self->_scaler upScaleAndCropFrameSource:v19 destination:a7 upscale:0 rotate:self->_inputIsPortrait waitForCompletion:1];
LABEL_7:
  CVPixelBufferRelease(v12);
  CVPixelBufferRelease(v13);
  CVPixelBufferRelease(PixelBuffer);
  CVPixelBufferRelease(v19);

  return v18;
}

- (void)VSRGetInputFrameSizeForUsage:(int64_t)a3 width:(unint64_t *)a4 height:(unint64_t *)a5
{
  getInputFrameSizeForUsage(a3, a4, a5);
  *a4 = (*a4 + 15) & 0xFFFFFFFFFFFFFFF0;
  *a5 = (*a5 + 15) & 0xFFFFFFFFFFFFFFF0;
}

- (void)getPixelBufferAttributes:(unsigned int)a3 bitDepth:(int64_t *)a4 isYUV:(BOOL *)a5 isFullRange:(BOOL *)a6 isYUV422:(BOOL *)a7
{
  v24 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x277CBECE8], a3);
  v11 = [(__CFDictionary *)v24 objectForKeyedSubscript:*MEMORY[0x277CC4F48]];
  *a5 = [v11 BOOLValue];

  v12 = [(__CFDictionary *)v24 objectForKeyedSubscript:*MEMORY[0x277CC4F70]];
  v13 = [v12 count];

  if (v13 == 2)
  {
    v14 = [(__CFDictionary *)v24 objectForKeyedSubscript:@"Planes"];
    v15 = [v14 objectAtIndexedSubscript:1];
    v16 = [v15 objectForKeyedSubscript:@"HorizontalSubsampling"];
    v17 = [v16 intValue];

    v18 = [v15 objectForKeyedSubscript:@"VerticalSubsampling"];
    v19 = [v18 intValue];

    v20 = v19 < 2;
  }

  else
  {
    v21 = [(__CFDictionary *)v24 objectForKeyedSubscript:@"HorizontalSubsampling"];
    v17 = [v21 intValue];

    v20 = 1;
  }

  *a7 = v17 == 2 && v20;
  v22 = [(__CFDictionary *)v24 objectForKeyedSubscript:*MEMORY[0x277CC4ED8]];
  *a4 = [v22 intValue];

  v23 = [(__CFDictionary *)v24 objectForKeyedSubscript:*MEMORY[0x277CC4EF8]];
  *a6 = [v23 isEqualToString:*MEMORY[0x277CC4F00]];
}

- (FRNet)initWithUsage:(int64_t)a3 inputWidth:(unint64_t)a4 inputHeight:(unint64_t)a5 scaleFactor:(unint64_t)a6 useMPS:(BOOL)a7 outputSize:(CGSize)a8
{
  v8 = a7;
  height = a8.height;
  width = a8.width;
  v14 = a3;
  v59 = *MEMORY[0x277D85DE8];
  v54.receiver = self;
  v54.super_class = FRNet;
  v15 = [(FRNet *)&v54 init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_25;
  }

  v15->_usage = v14 & 0xFFF;
  v15->_inputWidth = a4;
  v15->_inputHeight = a5;
  v15->_inputIsPortrait = a5 > a4;
  v15->_scaleFactor = a6;
  v15->_errorMaskThreshold = 0.05;
  v15->_useLaplacianMask = 0;
  [FRNet VSRGetInputFrameSizeForUsage:v15 width:"VSRGetInputFrameSizeForUsage:width:height:" height:?];
  scaleFactor = v16->_scaleFactor;
  lowResPaddedHeight = v16->_lowResPaddedHeight;
  v16->_highResPaddedWidth = scaleFactor * v16->_lowResPaddedWidth;
  v16->_highResPaddedHeight = lowResPaddedHeight * scaleFactor;
  v16->_outputWidth = width;
  v16->_outputHeight = height;
  v16->_rgbaPixelFormat = 1111970369;
  v19 = MTLCreateSystemDefaultDevice();
  device = v16->_device;
  v16->_device = v19;

  OUTLINED_FUNCTION_0_0();
  v21 = [FRNet getMobileAssetStatusWithPercentCompleted:0];
  if (v21 == 1)
  {
    v22 = [VEMobileAsset getLocalMobileAssetURLWithAssetType:@"com.apple.MobileAsset.VideoEffect" assetSpecifier:@"com.apple.videoeffect.VSR" forClientName:@"FRNet"];
    if (!v22)
    {
      goto LABEL_25;
    }

    v23 = v22;
    v24 = [v22 absoluteString];
    v25 = [v24 stringByAppendingPathComponent:@"vsrnet_4x.mlmodelc/model.mil"];
    modelPath = v16->_modelPath;
    v16->_modelPath = v25;

    v27 = [MEMORY[0x277CCAA00] defaultManager];
    v28 = [v27 fileExistsAtPath:v16->_modelPath];

    if ((v28 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if ((global_logLevel & 4) != 0)
    {
      v29 = v21;
      v30 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v56 = v29;
        _os_log_impl(&dword_24874B000, v30, OS_LOG_TYPE_INFO, "MobileAssetStatus is not ready! VSRSuperResolutionConfigurationMobileAssetStatus: %ld", buf, 0xCu);
      }

      if ((global_logLevel & 4) != 0)
      {
        v31 = global_logger;
        if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_24874B000, v31, OS_LOG_TYPE_INFO, "Using local model instead", buf, 2u);
        }
      }
    }

    v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (!v32)
    {
      goto LABEL_25;
    }

    v33 = v32;
    v34 = [v32 pathForResource:@"vsrnet_4x.mlmodelc/model.mil" ofType:0 inDirectory:@"NetworksOrig"];
    v35 = v16->_modelPath;
    v16->_modelPath = v34;

    v36 = [MEMORY[0x277CCAA00] defaultManager];
    v37 = [v36 fileExistsAtPath:v16->_modelPath];

    if (!v37)
    {
      goto LABEL_25;
    }
  }

  v38 = [[VSRNet alloc] initWithModelPath:v16->_modelPath inputWidth:v16->_lowResPaddedWidth inputHeight:v16->_lowResPaddedHeight];
  srnet = v16->_srnet;
  v16->_srnet = v38;

  if (!v16->_srnet || (OUTLINED_FUNCTION_0_0(), v40 = objc_alloc_init(OFNormalization), normalization = v16->_normalization, v16->_normalization = v40, normalization, !v16->_normalization) || (v42 = objc_alloc_init(Warper), warper = v16->_warper, v16->_warper = v42, warper, !v16->_warper) || (v44 = objc_alloc_init(Upsampler), upsampler = v16->_upsampler, v16->_upsampler = v44, upsampler, !v16->_upsampler) || (v46 = objc_alloc_init(VEScaler), scaler = v16->_scaler, v16->_scaler = v46, scaler, !v16->_scaler) || (v48 = objc_alloc_init(LoGFilter), logFilter = v16->_logFilter, v16->_logFilter = v48, logFilter, !v16->_logFilter) || [(FRNet *)v16 allocateTemporalBuffers])
  {
LABEL_25:
    v52 = 0;
    goto LABEL_26;
  }

  VTPixelTransferSessionCreate(0, &v16->_vtTransferSession);
  if ((global_logLevel & 4) != 0)
  {
    v50 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
    {
      usage = v16->_usage;
      *buf = 134218240;
      v56 = usage;
      v57 = 1024;
      v58 = v8;
      _os_log_impl(&dword_24874B000, v50, OS_LOG_TYPE_INFO, "[FRNet] usage: %ld, useMPS: %d", buf, 0x12u);
    }
  }

  v52 = v16;
LABEL_26:

  return v52;
}

- (int64_t)allocateTemporalBuffers
{
  self->_highResolutionNormalizedBufferPool = createPixelBufferPool(self->_highResPaddedWidth, self->_highResPaddedHeight, 1278226536, 0);
  self->_lowResolutionNormalizedBufferPool = createPixelBufferPool(self->_lowResPaddedWidth, self->_lowResPaddedHeight, 1278226536, 0);
  self->_opticalFlowBufferPool = createPixelBufferPool(self->_lowResPaddedWidth, self->_lowResPaddedHeight, 843264104, 0);
  CVPixelBufferPoolCreatePixelBuffer(0, self->_lowResolutionNormalizedBufferPool, &self->_normalizedCurrentLowResLuma);
  if (!self->_normalizedCurrentLowResLuma)
  {
    return 9;
  }

  OUTLINED_FUNCTION_1_22();
  v7 = createTexturesFromCVPixelBuffer(v3, v4, v5, v6);
  normalizedCurrentLowResLumaTexture = self->_normalizedCurrentLowResLumaTexture;
  self->_normalizedCurrentLowResLumaTexture = v7;

  if (!self->_normalizedCurrentLowResLumaTexture)
  {
    return 9;
  }

  CVPixelBufferPoolCreatePixelBuffer(0, self->_lowResolutionNormalizedBufferPool, &self->_normalizedPreviousLowResLuma);
  if (!self->_normalizedPreviousLowResLuma)
  {
    return 9;
  }

  OUTLINED_FUNCTION_1_22();
  v13 = createTexturesFromCVPixelBuffer(v9, v10, v11, v12);
  normalizedPreviousLowResLumaTexture = self->_normalizedPreviousLowResLumaTexture;
  self->_normalizedPreviousLowResLumaTexture = v13;

  if (!self->_normalizedPreviousLowResLumaTexture)
  {
    return 9;
  }

  CVPixelBufferPoolCreatePixelBuffer(0, self->_opticalFlowBufferPool, &self->_opticalFlow);
  opticalFlow = self->_opticalFlow;
  if (!opticalFlow)
  {
    return 9;
  }

  v16 = createTexturesFromCVPixelBuffer(opticalFlow, self->_device, 2, 1uLL);
  opticalFlowTexture = self->_opticalFlowTexture;
  self->_opticalFlowTexture = v16;

  if (!self->_opticalFlowTexture)
  {
    return 9;
  }

  CVPixelBufferPoolCreatePixelBuffer(0, self->_highResolutionNormalizedBufferPool, &self->_errorMask);
  if (!self->_errorMask)
  {
    return 9;
  }

  OUTLINED_FUNCTION_1_22();
  v22 = createTexturesFromCVPixelBuffer(v18, v19, v20, v21);
  errorMaskTexture = self->_errorMaskTexture;
  self->_errorMaskTexture = v22;

  if (!self->_errorMaskTexture)
  {
    return 9;
  }

  CVPixelBufferPoolCreatePixelBuffer(0, self->_highResolutionNormalizedBufferPool, &self->_laplacianMask);
  if (!self->_laplacianMask)
  {
    return 9;
  }

  v24 = 88;
  v25 = self->_inputIsPortrait ? 96 : 88;
  if (!self->_inputIsPortrait)
  {
    v24 = 96;
  }

  PixelBuffer = createPixelBuffer(*(&self->super.isa + v25), *(&self->super.isa + v24), self->_rgbaPixelFormat, 0);
  self->_currentLRRGB = PixelBuffer;
  if (PixelBuffer && (v27 = createPixelBuffer(self->_lowResPaddedWidth, self->_lowResPaddedHeight, self->_rgbaPixelFormat, 0), (self->_normalizedRGB = v27) != 0) && (v28 = OUTLINED_FUNCTION_3_12(), (self->_bicubicRGB = v28) != 0) && (createRGBATextureFromCVPixelBuffer(v28, self->_device), v29 = objc_claimAutoreleasedReturnValue(), bicubicRGBTexture = self->_bicubicRGBTexture, self->_bicubicRGBTexture = v29, bicubicRGBTexture, self->_bicubicRGBTexture) && (v31 = OUTLINED_FUNCTION_3_12(), (self->_warpedHR = v31) != 0) && (createRGBATextureFromCVPixelBuffer(v31, self->_device), v32 = objc_claimAutoreleasedReturnValue(), warpedHRTexture = self->_warpedHRTexture, self->_warpedHRTexture = v32, warpedHRTexture, self->_warpedHRTexture) && (v34 = OUTLINED_FUNCTION_3_12(), (self->_srNetHROutput = v34) != 0))
  {
    return 0;
  }

  else
  {
    return 9;
  }
}

- (BOOL)upscaleFrame:(__CVBuffer *)a3 previousLowResFrame:(__CVBuffer *)a4 previousHiResFrame:(__CVBuffer *)a5 opticalFlow:(__CVBuffer *)a6 destinationHiResFrame:(__CVBuffer *)a7
{
  OUTLINED_FUNCTION_0_0();
  self->_attachmentDictOfInput = CMCopyDictionaryOfAttachments(0, a3, 1u);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  self->_inputPixelFormat = PixelFormatType;
  [(FRNet *)self getPixelBufferAttributes:PixelFormatType bitDepth:&self->_bitDepth isYUV:&self->_isYUV isFullRange:&self->_fullRange isYUV422:&self->_isYUV422];
  self->_outputPixelFormat = CVPixelBufferGetPixelFormatType(a3);
  [OUTLINED_FUNCTION_2_12() convertToRGB:a3 to:? withRGBFormat:? rotate:?];
  self->_attachmentRGBDict = CMCopyDictionaryOfAttachments(0, self->_currentLRRGB, 1u);
  if (a4)
  {
    if (self->_inputIsPortrait)
    {
      Height = CVPixelBufferGetHeight(a4);
    }

    else
    {
      Height = CVPixelBufferGetWidth(a4);
    }

    v16 = Height;
    if (self->_inputIsPortrait)
    {
      Width = CVPixelBufferGetWidth(a4);
    }

    else
    {
      Width = CVPixelBufferGetHeight(a4);
    }

    PixelBuffer = createPixelBuffer(v16, Width, self->_rgbaPixelFormat, 0);
    [OUTLINED_FUNCTION_2_12() convertToRGB:a4 to:PixelBuffer withRGBFormat:? rotate:?];
    if (!a5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    PixelBuffer = 0;
    if (!a5)
    {
      goto LABEL_20;
    }
  }

  if (!self->_previousHRRGB)
  {
    if (self->_inputIsPortrait)
    {
      v18 = CVPixelBufferGetHeight(a5);
    }

    else
    {
      v18 = CVPixelBufferGetWidth(a5);
    }

    v19 = v18;
    if (self->_inputIsPortrait)
    {
      v20 = CVPixelBufferGetWidth(a5);
    }

    else
    {
      v20 = CVPixelBufferGetHeight(a5);
    }

    v21 = createPixelBuffer(v19, v20, self->_rgbaPixelFormat, 0);
    self->_previousHRRGB = v21;
    v22 = createRGBATextureFromCVPixelBuffer(v21, self->_device);
    previousHRRGBTexture = self->_previousHRRGBTexture;
    self->_previousHRRGBTexture = v22;
  }

  [OUTLINED_FUNCTION_2_12() convertToRGB:a5 to:? withRGBFormat:? rotate:?];
LABEL_20:
  self->_currentLRYUV = [(FRNet *)self convertToYUV:self->_currentLRRGB attachment:self->_attachmentDictOfInput];
  if (a4)
  {
    self->_previousLRYUV = [(FRNet *)self convertToYUV:PixelBuffer attachment:self->_attachmentDictOfInput];
  }

  CVPixelBufferRelease(PixelBuffer);
  v24 = [(OFNormalization *)self->_normalization normalizeLumaFromFrame:self->_currentLRYUV toTexture:self->_normalizedCurrentLowResLumaTexture];
  if (v24)
  {
    v25 = 248;
    if (!a4)
    {
      v25 = 184;
    }

    [(OFNormalization *)self->_normalization normalizeLumaFromFrame:*(&self->super.isa + v25) toTexture:self->_normalizedPreviousLowResLumaTexture];
    v24 = [(OFNormalization *)self->_normalization padRGB:self->_currentLRRGB to:self->_normalizedRGB];
    if (v24)
    {
      CMSetAttachments(self->_bicubicRGB, self->_attachmentRGBDict, 1u);
      CFRelease(self->_attachmentRGBDict);
      CMSetAttachments(self->_srNetHROutput, self->_attachmentDictOfInput, 1u);
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_0_0();
      v32 = 0;
      v33 = 0;
      getInputFrameSizeForUsage(self->_usage, &v33, &v32);
      *&v26 = getFlowDownscaleRatio(v33, v32, 1);
      v24 = [(Upsampler *)self->_upsampler upscaleFlow:a6 upscaleRatio:self->_opticalFlow destination:v26];
      if (v24)
      {
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_0_0();
        *&v28 = self->_errorMaskThreshold;
        if (*&v28 == 0.0)
        {
          v24 = [(Upsampler *)self->_upsampler fillImage:self->_errorMask withValue:0.0];
          if (!v24)
          {
            return v24;
          }
        }

        else
        {
          *&v27 = self->_scaleFactor;
          if (![(Warper *)self->_warper computeErrorMask:self->_normalizedPreviousLowResLuma reference:self->_normalizedCurrentLowResLuma flow:self->_opticalFlow output:self->_errorMask threshold:v28 scaleFactor:v27])
          {
            goto LABEL_33;
          }
        }

        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_0_0();
        if (self->_useLaplacianMask)
        {
          if (![(LoGFilter *)self->_logFilter createMaskFrom:self->_normalizedCurrentLowResLuma to:self->_laplacianMask])
          {
LABEL_33:
            LOBYTE(v24) = 0;
            return v24;
          }
        }

        else
        {
          v24 = [(Upsampler *)self->_upsampler fillImage:self->_laplacianMask withValue:0.0];
          if (!v24)
          {
            return v24;
          }
        }

        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_0_0();
        *&v29 = self->_scaleFactor;
        v24 = [(Upsampler *)self->_upsampler upsampleRBGPackedBuffer:self->_currentLRRGB to:self->_bicubicRGB scaleFactor:v29];
        if (v24)
        {
          OUTLINED_FUNCTION_0_0();
          OUTLINED_FUNCTION_0_0();
          v30 = 272;
          if (!a5)
          {
            v30 = 328;
          }

          v24 = [(Warper *)self->_warper warpBlendBufferRGBTexture:*(&self->super.isa + v30) scaleFactor:self->_scaleFactor withLowResFlowTexture:self->_opticalFlowTexture withBicubicUpscaledTexture:self->_bicubicRGBTexture withErrorMaskTexture:self->_errorMaskTexture toHighResBufferTexture:self->_warpedHRTexture];
          if (v24)
          {
            OUTLINED_FUNCTION_0_0();
            OUTLINED_FUNCTION_0_0();
            v24 = [(VSRNet *)self->_srnet processSuperResolutionInputBuffer:self->_normalizedRGB withPrevHighResolutionFrame:self->_warpedHR outputBuffer:self->_srNetHROutput];
            if (v24)
            {
              OUTLINED_FUNCTION_0_0();
              OUTLINED_FUNCTION_0_0();
              v24 = [(FRNet *)self getColorConsistentOutputRGBVia:self->_srNetHROutput bicubicRGB:self->_bicubicRGB laplacianMask:self->_laplacianMask attachment:self->_attachmentDictOfInput destinationFrame:a7];
              if (v24)
              {
                CVPixelBufferRelease(self->_currentLRYUV);
                CVPixelBufferRelease(self->_previousLRYUV);
                self->_currentLRYUV = 0;
                self->_previousLRYUV = 0;
                CFRelease(self->_attachmentDictOfInput);
                OUTLINED_FUNCTION_0_0();
                LOBYTE(v24) = 1;
              }
            }
          }
        }
      }
    }
  }

  return v24;
}

@end