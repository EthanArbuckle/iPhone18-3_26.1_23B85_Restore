@interface FRCImageProcessor
- (BOOL)shouldCropOutputFrame:(__CVBuffer *)a3;
- (BOOL)shouldScaleBuffer:(__CVBuffer *)a3;
- (FRCImageProcessor)initWithUsage:(int64_t)a3 normalizationMode:(int64_t)a4;
- (unsigned)rgbaPixelFormatForBuffer:(__CVBuffer *)a3 useScaler:(BOOL)a4;
- (void)allocateNormalizedBuffers;
- (void)allocteRGBABuffersForBuffer:(__CVBuffer *)a3;
- (void)dealloc;
- (void)releaseNormalizedBuffers;
- (void)storeColorProperties:(__CVBuffer *)a3;
@end

@implementation FRCImageProcessor

- (FRCImageProcessor)initWithUsage:(int64_t)a3 normalizationMode:(int64_t)a4
{
  v15.receiver = self;
  v15.super_class = FRCImageProcessor;
  v6 = [(FRCImageProcessor *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v6->_usage = a3;
    v6->_inputRotation = 0;
    FRCGetInputFrameSizeForUsage(a3, &v6->_width, &v6->_height);
    v8 = [[Normalization alloc] initWithMode:a4];
    normalization = v7->_normalization;
    v7->_normalization = v8;

    v10 = objc_alloc_init(FRCScaler);
    scaler = v7->_scaler;
    v7->_scaler = v10;

    [(FRCImageProcessor *)v7 allocateNormalizedBuffers];
    v12 = dispatch_semaphore_create(0);
    completionSemaphore = v7->_completionSemaphore;
    v7->_completionSemaphore = v12;
  }

  return v7;
}

- (void)dealloc
{
  [(FRCImageProcessor *)self releaseNormalizedBuffers];
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
  v4.super_class = FRCImageProcessor;
  [(FRCImageProcessor *)&v4 dealloc];
}

- (void)allocateNormalizedBuffers
{
  v3 = 0;
  v4 = 0;
  FRCGetInputFrameSizeForUsage(self->_usage, &v4, &v3);
  if (!self->_normalizedFirst)
  {
    self->_normalizedFirst = createPixelBuffer(v4, 3 * v3, 0x4C303068u, 0);
  }

  if (!self->_normalizedSecond)
  {
    self->_normalizedSecond = createPixelBuffer(v4, 3 * v3, 0x4C303068u, 0);
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
  self->_rgbaPixelFormat = [(FRCImageProcessor *)self rgbaPixelFormatForBuffer:a3 useScaler:1];
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
    self->_rgbaFirst = createPixelBuffer(v8, v7, self->_rgbaPixelFormat, 0);
  }

  if (!self->_rgbaSecond)
  {
    self->_rgbaSecond = createPixelBuffer(v8, v7, self->_rgbaPixelFormat, 0);
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

uint64_t __72__FRCImageProcessor_preProcessFirstInput_secondInput_waitForCompletion___block_invoke(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 32);
  v3 = *a2;
  *(v2 + 92) = *(a2 + 12);
  *(v2 + 80) = v3;
  NSLog(&cfstr_MeanFStdFFirst.isa, *a2, 1.0 / *(a2 + 1), *(a2 + 2), *(a2 + 4), *(a2 + 3), *(a2 + 5));

  return kdebug_trace();
}

- (void)storeColorProperties:(__CVBuffer *)a3
{
  v19[3] = *MEMORY[0x277D85DE8];
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
    v14 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v18[0] = v5;
    v18[1] = v7;
    v19[0] = v6;
    v19[1] = v8;
    v18[2] = v9;
    v19[2] = v10;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
    v16 = self->_colorProperties;
    self->_colorProperties = v15;

    v17 = *MEMORY[0x277D85DE8];
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

intptr_t __83__FRCImageProcessor_postProcessNormalizedFrame_output_timeScale_waitForCompletion___block_invoke(intptr_t result)
{
  if ((*(result + 40) & 1) == 0 && *(result + 41) == 1)
  {
    return dispatch_semaphore_signal(*(*(result + 32) + 112));
  }

  return result;
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
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_debug_impl(&dword_24A8C8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Output Buffer not aligned %ld x %ld", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end