@interface ImageProcessor
- (BOOL)shouldCropOutputFrame:(__CVBuffer *)a3;
- (BOOL)shouldScaleBuffer:(__CVBuffer *)a3;
- (ImageProcessor)initWithUsage:(int64_t)a3 normalizationMode:(int64_t)a4;
- (unsigned)rgbaPixelFormatForBuffer:(__CVBuffer *)a3 useScaler:(BOOL)a4;
- (void)allocateNormalizedBuffers;
- (void)allocteRGBABuffersForBuffer:(__CVBuffer *)a3;
- (void)dealloc;
- (void)postProcessNormalizedFrame:(__CVBuffer *)a3 output:(__CVBuffer *)a4 timeScale:(float)a5 waitForCompletion:(BOOL)a6;
- (void)preProcessFirstInput:(__CVBuffer *)a3 secondInput:(__CVBuffer *)a4 waitForCompletion:(BOOL)a5;
- (void)releaseNormalizedBuffers;
- (void)storeColorProperties:(__CVBuffer *)a3;
@end

@implementation ImageProcessor

- (ImageProcessor)initWithUsage:(int64_t)a3 normalizationMode:(int64_t)a4
{
  v13.receiver = self;
  v13.super_class = ImageProcessor;
  v6 = [(ImageProcessor *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_usage = a3;
    v6->_inputRotation = 0;
    getInputFrameSizeForUsage(a3, &v6->_width, &v6->_height);
    v8 = [[OFNormalization alloc] initWithMode:a4];
    normalization = v7->_normalization;
    v7->_normalization = v8;

    v10 = objc_alloc_init(VEScaler);
    scaler = v7->_scaler;
    v7->_scaler = v10;

    [(ImageProcessor *)v7 allocateNormalizedBuffers];
  }

  return v7;
}

- (void)dealloc
{
  [(ImageProcessor *)self releaseNormalizedBuffers];
  if (self->_rgbaBuffersAllocated)
  {
    CVPixelBufferRelease(self->_rgbaFirst);
    CVPixelBufferRelease(self->_rgbaSecond);
    self->_rgbaBuffersAllocated = 0;
  }

  denormalizedBufferPool = self->_denormalizedBufferPool;
  if (denormalizedBufferPool)
  {
    CFRelease(denormalizedBufferPool);
    self->_denormalizedBufferPool = 0;
  }

  self->_rgbaPixelFormat = 0;
  v4.receiver = self;
  v4.super_class = ImageProcessor;
  [(ImageProcessor *)&v4 dealloc];
}

- (void)allocateNormalizedBuffers
{
  v3 = 0;
  v4 = 0;
  getInputFrameSizeForUsage(self->_usage, &v4, &v3);
  if (!self->_normalizedFirst)
  {
    self->_normalizedFirst = CreatePixelBuffer(v4, 3 * v3, 1278226536);
  }

  if (!self->_normalizedSecond)
  {
    self->_normalizedSecond = CreatePixelBuffer(v4, 3 * v3, 1278226536);
  }
}

- (void)releaseNormalizedBuffers
{
  CVPixelBufferRelease(self->_normalizedFirst);
  CVPixelBufferRelease(self->_normalizedSecond);
  self->_normalizedFirst = 0;
  self->_normalizedSecond = 0;
}

- (void)allocteRGBABuffersForBuffer:(__CVBuffer *)a3
{
  self->_rgbaPixelFormat = [(ImageProcessor *)self rgbaPixelFormatForBuffer:a3 useScaler:1];
  Width = CVPixelBufferGetWidth(a3);
  v8 = Width;
  Height = CVPixelBufferGetHeight(a3);
  v7 = Height;
  if (self->_inputScaling)
  {
    Width >>= 1;
    Height >>= 1;
    v7 = Height;
    v8 = Width;
  }

  if (Width < Height)
  {
    swapWidthAndHeight(&v8, &v7);
  }

  if (!self->_rgbaFirst)
  {
    self->_rgbaFirst = CreatePixelBuffer(v8, v7, self->_rgbaPixelFormat);
  }

  if (!self->_rgbaSecond)
  {
    self->_rgbaSecond = CreatePixelBuffer(v8, v7, self->_rgbaPixelFormat);
  }

  self->_rgbaBuffersAllocated = 1;
}

- (BOOL)shouldScaleBuffer:(__CVBuffer *)a3
{
  Width = CVPixelBufferGetWidth(a3);
  v9 = Width;
  Height = CVPixelBufferGetHeight(a3);
  v8 = Height;
  if (CVPixelBufferGetPixelFormatType(a3) == 1278226536)
  {
    Height /= 3uLL;
    v8 = Height;
  }

  if (Width < Height)
  {
    swapWidthAndHeight(&v9, &v8);
    Width = v9;
  }

  return self->_width < Width || self->_height < v8;
}

- (void)preProcessFirstInput:(__CVBuffer *)a3 secondInput:(__CVBuffer *)a4 waitForCompletion:(BOOL)a5
{
  v5 = a5;
  kdebug_trace();
  if (!a3)
  {
    *&self->_normalizedFirst = vextq_s8(*&self->_normalizedFirst, *&self->_normalizedFirst, 8uLL);
  }

  [(ImageProcessor *)self storeColorProperties:a4];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a4);
  v10 = 0;
  if (PixelFormatType != 1882468912 && PixelFormatType != 1885745712)
  {
    v10 = isYUV420(a4);
  }

  self->_isYUV = isBufferYUV(a4);
  v11 = [(ImageProcessor *)self shouldScaleBuffer:a4];
  self->_inputScaling = v11;
  if (!self->_inputRotation && !v11 && (v10 || !self->_isYUV))
  {
    self->_useGPUOnlyForPreProcessing = 1;
    self->_rgbaFirst = a3;
    self->_rgbaSecond = a4;
    self->_rgbaPixelFormat = [(ImageProcessor *)self rgbaPixelFormatForBuffer:a4 useScaler:0];
    goto LABEL_16;
  }

  if (!self->_rgbaPixelFormat)
  {
    [(ImageProcessor *)self allocteRGBABuffersForBuffer:a4];
    if (a3)
    {
      goto LABEL_12;
    }

LABEL_14:
    v13 = *&self->_rgbaFirst;
    *&self->_rgbaFirst = vextq_s8(v13, v13, 8uLL);
    rgbaSecond = v13.i64[0];
    goto LABEL_15;
  }

  if (!a3)
  {
    goto LABEL_14;
  }

LABEL_12:
  [(VEScaler *)self->_scaler downScaleFrameSource:a3 destination:self->_rgbaFirst rotate:self->_inputRotation waitForCompletion:v5];
  rgbaSecond = self->_rgbaSecond;
LABEL_15:
  [(VEScaler *)self->_scaler downScaleFrameSource:a4 destination:rgbaSecond rotate:self->_inputRotation waitForCompletion:v5];
LABEL_16:
  normalization = self->_normalization;
  if (a3)
  {
    rgbaFirst = self->_rgbaFirst;
    normalizedFirst = self->_normalizedFirst;
  }

  else
  {
    rgbaFirst = 0;
    normalizedFirst = 0;
  }

  v17 = self->_rgbaSecond;
  normalizedSecond = self->_normalizedSecond;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __69__ImageProcessor_preProcessFirstInput_secondInput_waitForCompletion___block_invoke;
  v19[3] = &unk_278F537E0;
  v19[4] = self;
  [(OFNormalization *)normalization normalizeFramesFirstInput:rgbaFirst secondInput:v17 firstOutput:normalizedFirst secondOutput:normalizedSecond callback:v19];
}

uint64_t __69__ImageProcessor_preProcessFirstInput_secondInput_waitForCompletion___block_invoke(uint64_t a1, float *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *a2;
  *(v2 + 92) = *(a2 + 3);
  *(v2 + 80) = v3;
  if ((global_logLevel & 4) != 0)
  {
    v5 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
    {
      v6 = *a2;
      v7 = a2[1];
      v8 = a2[2];
      v9 = a2[3];
      v13 = 134219264;
      v10 = a2[4];
      v11 = a2[5];
      v14 = v6;
      v15 = 2048;
      v16 = 1.0 / v7;
      v17 = 2048;
      v18 = v8;
      v19 = 2048;
      v20 = v10;
      v21 = 2048;
      v22 = v9;
      v23 = 2048;
      v24 = v11;
      _os_log_impl(&dword_24874B000, v5, OS_LOG_TYPE_INFO, "Mean: %f, STD: %f, First: %f, %f, Second: %f, %f\n", &v13, 0x3Eu);
    }
  }

  return kdebug_trace();
}

- (void)storeColorProperties:(__CVBuffer *)a3
{
  v17[3] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CC4C00];
  v6 = CMGetAttachment(a3, *MEMORY[0x277CC4C00], 0);
  v7 = *MEMORY[0x277CC4CC0];
  v8 = CMGetAttachment(a3, *MEMORY[0x277CC4CC0], 0);
  v9 = *MEMORY[0x277CC4D10];
  v10 = CMGetAttachment(a3, *MEMORY[0x277CC4D10], 0);
  if (v6)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11 || v10 == 0)
  {
    colorProperties = self->_colorProperties;
    self->_colorProperties = 0;
  }

  else
  {
    v16[0] = v5;
    v16[1] = v7;
    v17[0] = v6;
    v17[1] = v8;
    v16[2] = v9;
    v17[2] = v10;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
    v15 = self->_colorProperties;
    self->_colorProperties = v14;
  }
}

- (BOOL)shouldCropOutputFrame:(__CVBuffer *)a3
{
  Width = CVPixelBufferGetWidth(a3);
  v8 = Width;
  Height = CVPixelBufferGetHeight(a3);
  if (Width < Height)
  {
    swapWidthAndHeight(&v8, &Height);
    Width = v8;
  }

  return Width < self->_width || Height < self->_height;
}

- (void)postProcessNormalizedFrame:(__CVBuffer *)a3 output:(__CVBuffer *)a4 timeScale:(float)a5 waitForCompletion:(BOOL)a6
{
  v6 = a6;
  if (self->_inputRotation)
  {
    v11 = 0;
  }

  else
  {
    v11 = !self->_inputScaling;
  }

  colorProperties = self->_colorProperties;
  if (colorProperties)
  {
    CMSetAttachments(a4, colorProperties, 1u);
  }

  Width = CVPixelBufferGetWidth(a4);
  Height = CVPixelBufferGetHeight(a4);
  v16 = ((Width | Height) & 1) == 0;
  if ((Width | Height))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [ImageProcessor postProcessNormalizedFrame:Height output:? timeScale:? waitForCompletion:?];
    }

    pixelBufferOut = 0;
    p_useGPUOnlyForPreProcessing = &self->_useGPUOnlyForPreProcessing;
  }

  else
  {
    pixelBufferOut = 0;
    p_useGPUOnlyForPreProcessing = &self->_useGPUOnlyForPreProcessing;
    if (self->_useGPUOnlyForPreProcessing)
    {
      pixelBufferOut = a4;
      goto LABEL_17;
    }
  }

  denormalizedBufferPool = self->_denormalizedBufferPool;
  if (!denormalizedBufferPool)
  {
    denormalizedBufferPool = createPixelBufferPool(self->_width, self->_height, self->_rgbaPixelFormat, 0);
    self->_denormalizedBufferPool = denormalizedBufferPool;
  }

  CVPixelBufferPoolCreatePixelBuffer(0, denormalizedBufferPool, &pixelBufferOut);
  v19 = self->_colorProperties;
  if (v19 && *p_useGPUOnlyForPreProcessing)
  {
    CMSetAttachments(pixelBufferOut, v19, 1u);
  }

LABEL_17:
  if (v11 && v6)
  {
    v20 = 0;
  }

  else
  {
    v20 = &__block_literal_global_1;
  }

  *&v15 = a5;
  [(OFNormalization *)self->_normalization denormalizeFrame:a3 destination:pixelBufferOut params:&self->_normalizationParams timeScale:v20 callback:v15];
  if (!v16 || !self->_useGPUOnlyForPreProcessing)
  {
    [(VEScaler *)self->_scaler upScaleAndCropFrameSource:pixelBufferOut destination:a4 upscale:self->_inputScaling rotate:getReverseRotation(self->_inputRotation) waitForCompletion:v6];
    CVPixelBufferRelease(pixelBufferOut);
  }
}

- (unsigned)rgbaPixelFormatForBuffer:(__CVBuffer *)a3 useScaler:(BOOL)a4
{
  v4 = a4;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v7 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x277CBECE8], PixelFormatType);
  v8 = [(__CFDictionary *)v7 objectForKeyedSubscript:*MEMORY[0x277CC4ED8]];
  v9 = [v8 intValue];

  v10 = [(__CFDictionary *)v7 objectForKeyedSubscript:*MEMORY[0x277CC4F38]];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    v12 = CVPixelBufferGetPixelFormatType(a3);
  }

  else
  {
    if (v4)
    {
      v13 = 1999843442;
    }

    else
    {
      v13 = 1815162994;
    }

    if (v9 == 10)
    {
      v14 = v13;
    }

    else
    {
      v14 = 1380411457;
    }

    if (v9 == 8)
    {
      v12 = 1111970369;
    }

    else
    {
      v12 = v14;
    }
  }

  return v12;
}

- (void)postProcessNormalizedFrame:(uint64_t)a1 output:(uint64_t)a2 timeScale:waitForCompletion:.cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 134218240;
  v3 = a1;
  v4 = 2048;
  v5 = a2;
  _os_log_debug_impl(&dword_24874B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Output Buffer not aligned %ld x %ld", &v2, 0x16u);
}

@end