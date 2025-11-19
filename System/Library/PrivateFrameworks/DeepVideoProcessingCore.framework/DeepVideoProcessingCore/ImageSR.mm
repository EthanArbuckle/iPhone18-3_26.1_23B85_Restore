@interface ImageSR
+ (void)downloadMobileAssetWithCompletionHandler:(id)a3;
- (BOOL)upscaleFrame:(__CVBuffer *)a3 destinationHiResFrame:(__CVBuffer *)a4;
- (ImageSR)initWithUsage:(int64_t)a3 inputWidth:(unint64_t)a4 inputHeight:(unint64_t)a5 scaleFactor:(unint64_t)a6 useMPS:(BOOL)a7 outputSize:(CGSize)a8;
- (int64_t)allocateTemporalBuffers;
- (void)VSRGetInputFrameSizeForUsage:(int64_t)a3 width:(unint64_t *)a4 height:(unint64_t *)a5;
- (void)convertToRGB:(__CVBuffer *)a3 to:(__CVBuffer *)a4 withRGBFormat:(unsigned int)a5 rotate:(BOOL)a6;
- (void)dealloc;
- (void)releaseTemporalBuffers;
@end

@implementation ImageSR

- (void)releaseTemporalBuffers
{
  CVPixelBufferRelease(self->_normalizedRGB);
  CVPixelBufferRelease(self->_currentLRRGB);
  CVPixelBufferRelease(self->_srNetHROutput);
  CVPixelBufferRelease(self->_outputSR);
  highResolutionRGBABufferPool = self->_highResolutionRGBABufferPool;
  if (highResolutionRGBABufferPool)
  {

    CFRelease(highResolutionRGBABufferPool);
  }
}

- (void)dealloc
{
  [(ImageSR *)self releaseTemporalBuffers];
  srnet = self->_srnet;
  self->_srnet = 0;

  vtTransferSession = self->_vtTransferSession;
  if (vtTransferSession)
  {
    VTPixelTransferSessionInvalidate(vtTransferSession);
    CFRelease(self->_vtTransferSession);
  }

  self->_vtTransferSession = 0;
  [VEMobileAsset endAllLocksWithAssetType:@"com.apple.MobileAsset.VideoEffect" assetSpecifier:@"com.apple.videoeffect.ISR" forClientName:@"ImageSR"];
  v5.receiver = self;
  v5.super_class = ImageSR;
  [(ImageSR *)&v5 dealloc];
}

+ (void)downloadMobileAssetWithCompletionHandler:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__ImageSR_downloadMobileAssetWithCompletionHandler___block_invoke;
  v5[3] = &unk_278F53658;
  v6 = v3;
  v4 = v3;
  [VEMobileAsset downloadMobileAssetType:@"com.apple.MobileAsset.VideoEffect" assetSpecifier:@"com.apple.videoeffect.ISR" forClientName:@"ImageSR" completionHandler:v5];
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

    [(VEScaler *)scaler downScaleFrameSource:a3 destination:a4 rotate:v12 waitForCompletion:1];
  }
}

- (void)VSRGetInputFrameSizeForUsage:(int64_t)a3 width:(unint64_t *)a4 height:(unint64_t *)a5
{
  getInputFrameSizeForUsage(a3, a4, a5);
  *a4 = (*a4 + 15) & 0xFFFFFFFFFFFFFFF0;
  *a5 = (*a5 + 15) & 0xFFFFFFFFFFFFFFF0;
}

- (ImageSR)initWithUsage:(int64_t)a3 inputWidth:(unint64_t)a4 inputHeight:(unint64_t)a5 scaleFactor:(unint64_t)a6 useMPS:(BOOL)a7 outputSize:(CGSize)a8
{
  v8 = a7;
  height = a8.height;
  width = a8.width;
  v14 = a3;
  v55 = *MEMORY[0x277D85DE8];
  v50.receiver = self;
  v50.super_class = ImageSR;
  v15 = [(ImageSR *)&v50 init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_23;
  }

  v15->_inputIsPortrait = (v14 & 0x1000) != 0;
  v15->_usage = v14 & 0xFFF;
  v15->_inputWidth = a4;
  v15->_inputHeight = a5;
  v15->_scaleFactor = a6;
  [ImageSR VSRGetInputFrameSizeForUsage:v15 width:"VSRGetInputFrameSizeForUsage:width:height:" height:?];
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
  v21 = [ImageSR getMobileAssetStatusWithPercentCompleted:0];
  if (v21 == 1)
  {
    v22 = [VEMobileAsset getLocalMobileAssetURLWithAssetType:@"com.apple.MobileAsset.VideoEffect" assetSpecifier:@"com.apple.videoeffect.ISR" forClientName:@"ImageSR"];
    if (!v22)
    {
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [v22 absoluteString];
    v25 = [v24 stringByAppendingPathComponent:@"isrnet_4x.mlmodelc/model.mil"];
    modelPath = v16->_modelPath;
    v16->_modelPath = v25;

    v27 = [MEMORY[0x277CCAA00] defaultManager];
    v28 = [v27 fileExistsAtPath:v16->_modelPath];

    if ((v28 & 1) == 0)
    {
      goto LABEL_23;
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
        v52 = v29;
        _os_log_impl(&dword_24874B000, v30, OS_LOG_TYPE_INFO, "MobileAssetStatus is not ready! ISRSuperResolutionConfigurationMobileAssetStatus: %ld", buf, 0xCu);
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
      goto LABEL_23;
    }

    v33 = v32;
    v34 = [v32 pathForResource:@"isrnet_4x.mlmodelc/model.mil" ofType:0 inDirectory:@"NetworksOrig"];
    v35 = v16->_modelPath;
    v16->_modelPath = v34;

    v36 = [MEMORY[0x277CCAA00] defaultManager];
    v37 = [v36 fileExistsAtPath:v16->_modelPath];

    if (!v37)
    {
      goto LABEL_23;
    }
  }

  v38 = [[ISRNet alloc] initWithModelPath:v16->_modelPath inputWidth:v16->_lowResPaddedWidth inputHeight:v16->_lowResPaddedHeight];
  srnet = v16->_srnet;
  v16->_srnet = v38;

  if (!v16->_srnet || (OUTLINED_FUNCTION_0_0(), v40 = objc_alloc_init(OFNormalization), normalization = v16->_normalization, v16->_normalization = v40, normalization, !v16->_normalization) || (v42 = objc_alloc_init(Upsampler), upsampler = v16->_upsampler, v16->_upsampler = v42, upsampler, !v16->_upsampler) || (v44 = objc_alloc_init(VEScaler), scaler = v16->_scaler, v16->_scaler = v44, scaler, !v16->_scaler) || [(ImageSR *)v16 allocateTemporalBuffers])
  {
LABEL_23:
    v48 = 0;
    goto LABEL_24;
  }

  VTPixelTransferSessionCreate(0, &v16->_vtTransferSession);
  if ((global_logLevel & 4) != 0)
  {
    v46 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
    {
      usage = v16->_usage;
      *buf = 134218240;
      v52 = usage;
      v53 = 1024;
      v54 = v8;
      _os_log_impl(&dword_24874B000, v46, OS_LOG_TYPE_INFO, "[ImageSR] usage: %ld, useMPS: %d", buf, 0x12u);
    }
  }

  v48 = v16;
LABEL_24:

  return v48;
}

- (int64_t)allocateTemporalBuffers
{
  OUTLINED_FUNCTION_1_23();
  PixelBufferPool = createPixelBufferPool(v3, v4, v5, v6);
  self->_highResolutionRGBABufferPool = PixelBufferPool;
  CVPixelBufferPoolCreatePixelBuffer(0, PixelBufferPool, &self->_outputSR);
  if (!self->_outputSR)
  {
    return 9;
  }

  OUTLINED_FUNCTION_1_23();
  PixelBuffer = createPixelBuffer(v8, v9, v10, v11);
  self->_currentLRRGB = PixelBuffer;
  if (!PixelBuffer)
  {
    return 9;
  }

  OUTLINED_FUNCTION_1_23();
  v17 = createPixelBuffer(v13, v14, v15, v16);
  self->_normalizedRGB = v17;
  if (!v17)
  {
    return 9;
  }

  OUTLINED_FUNCTION_1_23();
  v22 = createPixelBuffer(v18, v19, v20, v21);
  self->_srNetHROutput = v22;
  if (v22)
  {
    return 0;
  }

  else
  {
    return 9;
  }
}

- (BOOL)upscaleFrame:(__CVBuffer *)a3 destinationHiResFrame:(__CVBuffer *)a4
{
  OUTLINED_FUNCTION_0_0();
  self->_attachmentDictOfInput = CMCopyDictionaryOfAttachments(0, a3, 1u);
  self->_inputPixelFormat = CVPixelBufferGetPixelFormatType(a3);
  self->_outputPixelFormat = CVPixelBufferGetPixelFormatType(a3);
  [(ImageSR *)self convertToRGB:a3 to:self->_currentLRRGB withRGBFormat:self->_rgbaPixelFormat rotate:self->_inputIsPortrait];
  if (![(OFNormalization *)self->_normalization padRGB:self->_currentLRRGB to:self->_normalizedRGB])
  {
    return 0;
  }

  CMSetAttachments(self->_outputSR, self->_attachmentDictOfInput, 1u);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_0();
  if (![(ISRNet *)self->_srnet processSuperResolutionInputBuffer:self->_normalizedRGB outputBuffer:self->_srNetHROutput])
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_0();
  v7 = 1;
  [(VEScaler *)self->_scaler upScaleAndCropFrameSource:self->_srNetHROutput destination:a4 upscale:0 rotate:self->_inputIsPortrait waitForCompletion:1];
  OUTLINED_FUNCTION_0_0();
  CFRelease(self->_attachmentDictOfInput);
  return v7;
}

@end