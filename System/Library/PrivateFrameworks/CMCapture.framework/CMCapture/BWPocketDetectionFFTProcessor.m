@interface BWPocketDetectionFFTProcessor
+ (int)prewarmShaders;
- (BWPocketDetectionFFTProcessor)initWithMetalCommandQueue:(id)a3;
- (int)_loadKernel:(id *)a3 name:(id)a4;
- (int)_processFFTOnInputPixelBuffer:(__CVBuffer *)a3 usingSourceRect:(CGRect)a4 cumulativeScoreOut:(float *)a5;
- (int)_processMetalOptimizedFFTOnInputPixelBuffer:(__CVBuffer *)a3 usingSourceRect:(CGRect)a4 cumulativeScoreOut:(float *)a5;
- (int)_setupPipelines;
- (int)allocateResources;
- (int)processFFTOnInputPixelBuffer:(__CVBuffer *)a3 usingSourceRect:(CGRect)a4 cumulativeScoreOut:(float *)a5;
- (void)cleanupResources;
- (void)dealloc;
@end

@implementation BWPocketDetectionFFTProcessor

- (BWPocketDetectionFFTProcessor)initWithMetalCommandQueue:(id)a3
{
  v8.receiver = self;
  v8.super_class = BWPocketDetectionFFTProcessor;
  v4 = [(BWPocketDetectionFFTProcessor *)&v8 init];
  v5 = v4;
  if (!a3)
  {
    [BWPocketDetectionFFTProcessor initWithMetalCommandQueue:];
    goto LABEL_8;
  }

  if (v4)
  {
    v4->_metalCommandQueue = a3;
    v6 = [objc_alloc(MEMORY[0x1E6991778]) initWithbundle:objc_msgSend(MEMORY[0x1E696AAE8] andOptionalCommandQueue:{"bundleForClass:", objc_opt_class()), v5->_metalCommandQueue}];
    v5->_metalContext = v6;
    if (v6)
    {
      v5->_useMetalForScalingAndResultAccumulation = 1;
      return v5;
    }

    [BWPocketDetectionFFTProcessor initWithMetalCommandQueue:];
LABEL_8:

    return 0;
  }

  return v5;
}

- (void)dealloc
{
  [(BWPocketDetectionFFTProcessor *)self cleanupResources];

  v3.receiver = self;
  v3.super_class = BWPocketDetectionFFTProcessor;
  [(BWPocketDetectionFFTProcessor *)&v3 dealloc];
}

- (int)allocateResources
{
  self->_resourcesCleaned = 0;
  v3 = [MEMORY[0x1E69916D8] CMIFFT2DTransform:-[FigMetalContext device](self->_metalContext figMetalContext:"device") width:0 height:1024 layout:1024 precision:{0, 0}];
  self->_fftTransform = v3;
  if (!v3)
  {
    [BWPocketDetectionFFTProcessor allocateResources];
    return -1;
  }

  v4 = v3;
  v5 = [-[FigMetalContext device](self->_metalContext "device")];
  self->_fftMetalBuffer = v5;
  if (!v5)
  {
    [BWPocketDetectionFFTProcessor allocateResources];
    return -1;
  }

  if (self->_useMetalForScalingAndResultAccumulation)
  {
    v6 = [(BWPocketDetectionFFTProcessor *)self _setupPipelines];
    if (v6)
    {
      v12 = v6;
      [BWPocketDetectionFFTProcessor allocateResources];
      return v12;
    }

    v7 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:55 width:2048 height:1024 mipmapped:0];
    [v7 setUsage:3];
    v8 = [(MTLBuffer *)self->_fftMetalBuffer newTextureWithDescriptor:v7 offset:0 bytesPerRow:0x2000];
    self->_fftMetalTexture = v8;
    if (v8)
    {
      v9 = [-[FigMetalContext device](self->_metalContext "device")];
      self->_fftResultAccumulationMetalBuffer = v9;
      if (v9)
      {
        v10 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:55 width:64 height:16 mipmapped:0];
        [v10 setUsage:3];
        v11 = [(MTLBuffer *)self->_fftResultAccumulationMetalBuffer newTextureWithDescriptor:v10 offset:0 bytesPerRow:256];
        self->_fftResultAccumulationMetalTexture = v11;
        if (v11)
        {
          return 0;
        }

        [BWPocketDetectionFFTProcessor allocateResources];
      }

      else
      {
        [BWPocketDetectionFFTProcessor allocateResources];
      }
    }

    else
    {
      [BWPocketDetectionFFTProcessor allocateResources];
    }

    return -1;
  }

  v13 = objc_alloc_init(BWVideoFormatRequirements);
  [(BWVideoFormatRequirements *)v13 setWidth:1024];
  [(BWVideoFormatRequirements *)v13 setHeight:1024];
  [(BWVideoFormatRequirements *)v13 setSupportedPixelFormats:&unk_1F2247F08];
  v17 = v13;
  v14 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1]), 1, @"BWPocketDetectionNode", +[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool"));
  self->_fftBufferPool = v14;
  if (!v14)
  {
    [BWPocketDetectionFFTProcessor allocateResources];
    return -1;
  }

  v15 = VTPixelRotationSessionCreate(*MEMORY[0x1E695E480], &self->_cropSession);
  if (v15)
  {
    v12 = v15;
    [BWPocketDetectionFFTProcessor allocateResources];
  }

  else
  {
    v12 = VTSessionSetProperty(self->_cropSession, *MEMORY[0x1E6983D68], MEMORY[0x1E695E118]);
    if (v12)
    {
      [BWPocketDetectionFFTProcessor allocateResources];
    }
  }

  return v12;
}

- (void)cleanupResources
{
  if (!self->_resourcesCleaned)
  {

    self->_fftMetalBuffer = 0;
    if (self->_useMetalForScalingAndResultAccumulation)
    {

      self->_fftMetalTexture = 0;
      self->_fftResultAccumulationMetalBuffer = 0;
      p_fftResultAccumulationMetalTexture = &self->_fftResultAccumulationMetalTexture;
    }

    else
    {

      p_fftResultAccumulationMetalTexture = &self->_cropSession;
      cropSession = self->_cropSession;
      if (!cropSession)
      {
LABEL_8:
        self->_resourcesCleaned = 1;
        return;
      }

      VTPixelRotationSessionInvalidate(cropSession);
      if (*p_fftResultAccumulationMetalTexture)
      {
        CFRelease(*p_fftResultAccumulationMetalTexture);
      }
    }

    *p_fftResultAccumulationMetalTexture = 0;
    goto LABEL_8;
  }
}

+ (int)prewarmShaders
{
  v2 = [MEMORY[0x1E6991778] metalDevice];
  if (!v2)
  {
    +[BWPocketDetectionFFTProcessor prewarmShaders];
    v3 = 0;
LABEL_8:
    v5 = 0;
LABEL_10:
    v6 = -1;
    goto LABEL_5;
  }

  v3 = [v2 newCommandQueue];
  if (!v3)
  {
    +[BWPocketDetectionFFTProcessor prewarmShaders];
    goto LABEL_8;
  }

  v4 = [[BWPocketDetectionFFTProcessor alloc] initWithMetalCommandQueue:v3];
  v5 = v4;
  if (!v4)
  {
    +[BWPocketDetectionFFTProcessor prewarmShaders];
    goto LABEL_10;
  }

  [(BWPocketDetectionFFTProcessor *)v4 allocateResources];
  [(BWPocketDetectionFFTProcessor *)v5 cleanupResources];
  v6 = 0;
LABEL_5:

  return v6;
}

- (int)processFFTOnInputPixelBuffer:(__CVBuffer *)a3 usingSourceRect:(CGRect)a4 cumulativeScoreOut:(float *)a5
{
  if (self->_useMetalForScalingAndResultAccumulation)
  {
    [(BWPocketDetectionFFTProcessor *)self _processMetalOptimizedFFTOnInputPixelBuffer:a3 usingSourceRect:a5 cumulativeScoreOut:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  }

  else
  {
    [(BWPocketDetectionFFTProcessor *)self _processFFTOnInputPixelBuffer:a3 usingSourceRect:a5 cumulativeScoreOut:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  }

  return 0;
}

- (int)_processMetalOptimizedFFTOnInputPixelBuffer:(__CVBuffer *)a3 usingSourceRect:(CGRect)a4 cumulativeScoreOut:(float *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v13 = -12780;
  v14 = 10;
  if (PixelFormatType > 796423727)
  {
    if (PixelFormatType > 2016686639)
    {
      if (PixelFormatType <= 2084075055)
      {
        if (PixelFormatType == 2016686640 || PixelFormatType == 2019963440)
        {
          v14 = 20;
          goto LABEL_36;
        }

        v15 = 2084070960;
        goto LABEL_33;
      }

      if (PixelFormatType == 2084075056)
      {
        goto LABEL_36;
      }

      if (PixelFormatType == 2088265264)
      {
        goto LABEL_30;
      }

      v16 = 2088269360;
    }

    else
    {
      if (PixelFormatType <= 1278226487)
      {
        if (PixelFormatType != 796423728)
        {
          if (PixelFormatType == 875704422)
          {
            goto LABEL_36;
          }

          v15 = 875704438;
          goto LABEL_33;
        }

LABEL_30:
        v14 = 588;
        goto LABEL_36;
      }

      if (PixelFormatType == 1278226488)
      {
        goto LABEL_36;
      }

      if (PixelFormatType == 1882468912)
      {
        goto LABEL_30;
      }

      v16 = 1885745712;
    }

LABEL_29:
    if (PixelFormatType != v16)
    {
      return v13;
    }

    goto LABEL_30;
  }

  if (PixelFormatType > 758674991)
  {
    if (PixelFormatType > 792225327)
    {
      if (PixelFormatType == 792225328 || PixelFormatType == 792229424)
      {
        goto LABEL_36;
      }

      v16 = 796419632;
    }

    else
    {
      if (PixelFormatType == 758674992)
      {
        goto LABEL_36;
      }

      if (PixelFormatType == 762865200)
      {
        goto LABEL_30;
      }

      v16 = 762869296;
    }

    goto LABEL_29;
  }

  if (PixelFormatType <= 645424687)
  {
    if (PixelFormatType == 641230384)
    {
      goto LABEL_36;
    }

    v15 = 641234480;
    goto LABEL_33;
  }

  if (PixelFormatType == 645424688 || PixelFormatType == 645428784)
  {
    goto LABEL_30;
  }

  v15 = 758670896;
LABEL_33:
  if (PixelFormatType != v15)
  {
    return v13;
  }

LABEL_36:
  v17 = [(FigMetalContext *)self->_metalContext bindPixelBufferToMTL2DTexture:a3 pixelFormat:v14 usage:17 plane:0];
  fftMetalTexture = self->_fftMetalTexture;
  v19 = [(MTLCommandQueue *)self->_metalCommandQueue commandBuffer];
  if (!v19)
  {
    [BWPocketDetectionFFTProcessor _processMetalOptimizedFFTOnInputPixelBuffer:? usingSourceRect:? cumulativeScoreOut:?];
    return v39;
  }

  v20 = v19;
  v21 = [v19 computeCommandEncoder];
  if (!v21)
  {
    [BWPocketDetectionFFTProcessor _processMetalOptimizedFFTOnInputPixelBuffer:? usingSourceRect:? cumulativeScoreOut:?];
    return v39;
  }

  v22 = v21;
  [v21 setComputePipelineState:self->_computePipelines[0]];
  [v22 setTexture:v17 atIndex:0];
  [v22 setTexture:fftMetalTexture atIndex:1];
  if (height >= width)
  {
    v23 = width;
  }

  else
  {
    v23 = height;
  }

  v24 = v23;
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  MidX = CGRectGetMidX(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  MidY = CGRectGetMidY(v44);
  v26.f64[0] = MidX;
  v26.f64[1] = MidY;
  v42 = vcvt_f32_f64(vsubq_f64(v26, vdupq_lane_s64(COERCE__INT64((v24 / 2)), 0)));
  v41 = vcvts_n_f32_s32(v24, 0xAuLL);
  [v22 setBytes:&v42 length:8 atIndex:0];
  [v22 setBytes:&v41 length:4 atIndex:1];
  v27 = [(MTLComputePipelineState *)self->_computePipelines[0] threadExecutionWidth];
  v28 = [(MTLComputePipelineState *)self->_computePipelines[0] maxTotalThreadsPerThreadgroup];
  *&v39 = (v27 + 2047) / v27;
  *(&v39 + 1) = (v28 / v27 + 1023) / (v28 / v27);
  v40 = 1;
  v37.i64[0] = v27;
  v37.i64[1] = v28 / v27;
  v38 = 1;
  [v22 dispatchThreadgroups:&v39 threadsPerThreadgroup:&v37];
  [v22 endEncoding];
  v13 = [(CMIFFTTransform *)self->_fftTransform encodeToCommandBuffer:v20 inputBuffer:[(MTLTexture *)self->_fftMetalTexture buffer] direction:1];
  if (v13)
  {
    [BWPocketDetectionFFTProcessor _processMetalOptimizedFFTOnInputPixelBuffer:usingSourceRect:cumulativeScoreOut:];
  }

  else
  {
    v29 = [v20 computeCommandEncoder];
    [v29 setComputePipelineState:self->_computePipelines[1]];
    [v29 setTexture:self->_fftMetalTexture atIndex:0];
    [v29 setTexture:self->_fftResultAccumulationMetalTexture atIndex:1];
    v36 = 1024;
    [v29 setBytes:&v36 length:4 atIndex:0];
    v39 = xmmword_1ACF06140;
    v40 = 1;
    v37 = vdupq_n_s64(0x20uLL);
    v38 = 1;
    [v29 dispatchThreadgroups:&v39 threadsPerThreadgroup:&v37];
    [v29 endEncoding];
    [v20 commit];
    [v20 waitUntilCompleted];
    v30 = [-[MTLTexture buffer](self->_fftResultAccumulationMetalTexture "buffer")];
    v31 = 0;
    v32 = 0.0;
    do
    {
      for (i = 0; i != 256; i += 16)
      {
        v32 = (((v32 + COERCE_FLOAT(*(v30 + i))) + COERCE_FLOAT(HIDWORD(*(v30 + i)))) + COERCE_FLOAT(*(v30 + i + 8))) + COERCE_FLOAT(HIDWORD(*(v30 + i)));
      }

      ++v31;
      v30 += 256;
    }

    while (v31 != 16);
    *a5 = v32;
  }

  return v13;
}

- (int)_processFFTOnInputPixelBuffer:(__CVBuffer *)a3 usingSourceRect:(CGRect)a4 cumulativeScoreOut:(float *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = [(BWPixelBufferPool *)self->_fftBufferPool newPixelBuffer];
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  CGRectGetMidX(v36);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  CGRectGetMidY(v37);
  CVPixelBufferGetWidth(v11);
  CVPixelBufferGetHeight(v11);
  v12 = VTPixelRotationSessionRotateSubImage();
  if (v12)
  {
    v24 = v12;
    [BWPocketDetectionFFTProcessor _processFFTOnInputPixelBuffer:usingSourceRect:cumulativeScoreOut:];
  }

  else
  {
    v13 = [(MTLCommandQueue *)self->_metalCommandQueue commandBuffer];
    if (v13)
    {
      v14 = v13;
      v15 = CVPixelBufferLockBaseAddress(v11, 1uLL);
      if (v15)
      {
        v24 = v15;
        [BWPocketDetectionFFTProcessor _processFFTOnInputPixelBuffer:usingSourceRect:cumulativeScoreOut:];
      }

      else
      {
        v16 = [(MTLBuffer *)self->_fftMetalBuffer contents];
        BaseAddress = CVPixelBufferGetBaseAddress(v11);
        BytesPerRow = CVPixelBufferGetBytesPerRow(v11);
        v20 = 0;
        v21 = (v16 + 4);
        do
        {
          v22 = 0;
          v23 = v21;
          do
          {
            LOBYTE(v19) = BaseAddress[v22];
            v19 = LODWORD(v19) / 255.0;
            *(v23 - 1) = v19;
            *v23 = 0.0;
            v23 += 2;
            ++v22;
          }

          while (v22 != 1024);
          ++v20;
          BaseAddress += BytesPerRow;
          v21 += 2048;
        }

        while (v20 != 1024);
        CVPixelBufferUnlockBaseAddress(v11, 1uLL);
        v24 = [(CMIFFTTransform *)self->_fftTransform encodeToCommandBuffer:v14 inputBuffer:self->_fftMetalBuffer direction:1];
        if (v24)
        {
          [BWPocketDetectionFFTProcessor _processFFTOnInputPixelBuffer:usingSourceRect:cumulativeScoreOut:];
        }

        else
        {
          [v14 commit];
          [v14 waitUntilCompleted];
          v25 = 0;
          v26 = (v16 + 8188);
          v27 = (v16 + 4);
          v28 = 0.0;
          do
          {
            v29 = 0;
            v30 = v27;
            v31 = v26;
            do
            {
              if (v25 >= v29)
              {
                v32 = v29;
              }

              else
              {
                v32 = v25;
              }

              v33 = vcvts_n_f32_u32(v32, 9uLL);
              v28 = (v28 + (((*v30 * *v30) + (*(v30 - 1) * *(v30 - 1))) * v33)) + (((*(v31 - 1) * *(v31 - 1)) + (*v31 * *v31)) * v33);
              ++v29;
              v31 -= 2;
              v30 += 2;
            }

            while (v29 != 512);
            ++v25;
            v26 += 2048;
            v27 += 2048;
          }

          while (v25 != 512);
          *a5 = v28;
        }
      }
    }

    else
    {
      [BWPocketDetectionFFTProcessor _processFFTOnInputPixelBuffer:? usingSourceRect:? cumulativeScoreOut:?];
      v24 = v35;
    }
  }

  CVPixelBufferRelease(v11);
  return v24;
}

- (int)_setupPipelines
{
  v3 = 0;
  computePipelines = self->_computePipelines;
  for (i = 1; ; i = 0)
  {
    v6 = i;
    v7 = -[BWPocketDetectionFFTProcessor _loadKernel:name:](self, "_loadKernel:name:", &computePipelines[v3], [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:kKernelNames[v3]]);
    if (v7)
    {
      break;
    }

    v3 = 1;
    if ((v6 & 1) == 0)
    {
      return v7;
    }
  }

  [BWPocketDetectionFFTProcessor _setupPipelines];
  return v7;
}

- (int)_loadKernel:(id *)a3 name:(id)a4
{
  v6 = [-[FigMetalContext library](self->_metalContext "library")];
  if (v6)
  {
    v7 = [-[FigMetalContext device](self->_metalContext "device")];
    if (v7)
    {
      v8 = v7;
      result = 0;
      *a3 = v8;
      return result;
    }

    [BWPocketDetectionFFTProcessor _loadKernel:name:];
  }

  else
  {
    [BWPocketDetectionFFTProcessor _loadKernel:name:];
  }

  return -1;
}

- (uint64_t)_processMetalOptimizedFFTOnInputPixelBuffer:(_DWORD *)a1 usingSourceRect:cumulativeScoreOut:.cold.2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_processMetalOptimizedFFTOnInputPixelBuffer:(_DWORD *)a1 usingSourceRect:cumulativeScoreOut:.cold.3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_processFFTOnInputPixelBuffer:(_DWORD *)a1 usingSourceRect:cumulativeScoreOut:.cold.4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end