@interface FigMetalHistogram
- (FigMetalHistogram)initWithMetalContext:(id)context;
- (int)singleComponentCPUAverageInputPixelBuffer:(__CVBuffer *)buffer validRect:(CGRect)rect outputAverage:(float *)average;
- (int)singleComponentCPUHistogramInputPixelBuffer:(__CVBuffer *)buffer validRect:(CGRect)rect subSampleX:(unsigned int)x subSampleY:(unsigned int)y outputHistogram:(id *)histogram;
- (int)singleComponentGPUAverageInputPixelBuffer:(__CVBuffer *)buffer validRect:(CGRect)rect outputAverage:(float *)average;
- (int)singleComponentGPUHistogramInputPixelBuffer:(__CVBuffer *)buffer validRect:(CGRect)rect outputHistogram:(id *)histogram;
- (uint64_t)_initShaders;
@end

@implementation FigMetalHistogram

- (FigMetalHistogram)initWithMetalContext:(id)context
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = FigMetalHistogram;
  v6 = [(FigMetalHistogram *)&v13 init];
  v7 = v6;
  if (!v6)
  {
    [FigMetalHistogram initWithMetalContext:];
LABEL_14:
    v11 = 0;
    goto LABEL_8;
  }

  objc_storeStrong(&v6->_metalContext, context);
  if (!v7->_metalContext)
  {
    v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x1E6991778]) initWithbundle:v8 andOptionalCommandQueue:0];
      metalContext = v7->_metalContext;
      v7->_metalContext = v9;

      if (v7->_metalContext)
      {

        goto LABEL_6;
      }

      [FigMetalHistogram initWithMetalContext:];
    }

    else
    {
      [FigMetalHistogram initWithMetalContext:];
    }

    goto LABEL_14;
  }

LABEL_6:
  if ([(FigMetalHistogram *)v7 _initShaders])
  {
    [FigMetalHistogram initWithMetalContext:];
    goto LABEL_14;
  }

  v11 = v7;
LABEL_8:

  return v11;
}

- (int)singleComponentGPUHistogramInputPixelBuffer:(__CVBuffer *)buffer validRect:(CGRect)rect outputHistogram:(id *)histogram
{
  if (!buffer)
  {
    [FigMetalHistogram singleComponentGPUHistogramInputPixelBuffer:validRect:outputHistogram:];
    return -12780;
  }

  if (!histogram)
  {
    [FigMetalHistogram singleComponentGPUHistogramInputPixelBuffer:validRect:outputHistogram:];
    return -12780;
  }

  y = rect.origin.y;
  height = rect.size.height;
  width = rect.size.width;
  __dst = rect.origin.x;
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  result = -12780;
  v10 = 10;
  if (PixelFormatType > 796423727)
  {
    if (PixelFormatType > 2016686639)
    {
      if (PixelFormatType <= 2084075055)
      {
        if (PixelFormatType == 2016686640 || PixelFormatType == 2019963440)
        {
          v10 = 20;
          goto LABEL_38;
        }

        v11 = 2084070960;
        goto LABEL_35;
      }

      if (PixelFormatType == 2084075056)
      {
        goto LABEL_38;
      }

      if (PixelFormatType == 2088265264)
      {
        goto LABEL_32;
      }

      v12 = 2088269360;
    }

    else
    {
      if (PixelFormatType <= 1278226487)
      {
        if (PixelFormatType != 796423728)
        {
          if (PixelFormatType == 875704422)
          {
            goto LABEL_38;
          }

          v11 = 875704438;
          goto LABEL_35;
        }

LABEL_32:
        v10 = 588;
        goto LABEL_38;
      }

      if (PixelFormatType == 1278226488)
      {
        goto LABEL_38;
      }

      if (PixelFormatType == 1882468912)
      {
        goto LABEL_32;
      }

      v12 = 1885745712;
    }

LABEL_31:
    if (PixelFormatType != v12)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (PixelFormatType > 758674991)
  {
    if (PixelFormatType > 792225327)
    {
      if (PixelFormatType == 792225328 || PixelFormatType == 792229424)
      {
        goto LABEL_38;
      }

      v12 = 796419632;
    }

    else
    {
      if (PixelFormatType == 758674992)
      {
        goto LABEL_38;
      }

      if (PixelFormatType == 762865200)
      {
        goto LABEL_32;
      }

      v12 = 762869296;
    }

    goto LABEL_31;
  }

  if (PixelFormatType <= 645424687)
  {
    if (PixelFormatType == 641230384)
    {
      goto LABEL_38;
    }

    v11 = 641234480;
    goto LABEL_35;
  }

  if (PixelFormatType == 645424688 || PixelFormatType == 645428784)
  {
    goto LABEL_32;
  }

  v11 = 758670896;
LABEL_35:
  if (PixelFormatType != v11)
  {
    return result;
  }

LABEL_38:
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, 0);
  v42.size.width = width;
  v42.origin.x = __dst;
  v42.origin.y = y;
  v42.size.height = height;
  if (CGRectIsNull(v42))
  {
    v15.i32[0] = 0;
    v15.i16[2] = HeightOfPlane;
    v15.i16[3] = WidthOfPlane;
    goto LABEL_47;
  }

  v16.f64[0] = __dst;
  if (__dst < 0.0 || __dst + width > WidthOfPlane || width <= 0.0)
  {
    [FigMetalHistogram singleComponentGPUHistogramInputPixelBuffer:validRect:outputHistogram:];
    return -12780;
  }

  v17.f64[0] = height;
  if (y < 0.0 || y + height > HeightOfPlane || height <= 0.0)
  {
    [FigMetalHistogram singleComponentGPUHistogramInputPixelBuffer:validRect:outputHistogram:];
    return -12780;
  }

  v16.f64[1] = y;
  v17.f64[1] = width;
  v15 = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(v16), vcvtq_s64_f64(v17)));
LABEL_47:
  v41[0] = v15;
  commandBuffer = [(FigMetalContext *)self->_metalContext commandBuffer];
  if (!commandBuffer)
  {
    [FigMetalHistogram singleComponentGPUHistogramInputPixelBuffer:v40 validRect:? outputHistogram:?];
    return v40[0];
  }

  v19 = commandBuffer;
  heightOfPlane = [(FigMetalContext *)self->_metalContext bindPixelBufferToMTL2DTexture:buffer pixelFormat:v10 usage:1 textureSize:0 plane:WidthOfPlane, HeightOfPlane];
  if (!heightOfPlane)
  {
    [FigMetalHistogram singleComponentGPUHistogramInputPixelBuffer:v19 validRect:? outputHistogram:?];
    return -12786;
  }

  v21 = heightOfPlane;
  computeCommandEncoder = [v19 computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    [FigMetalHistogram singleComponentGPUHistogramInputPixelBuffer:v21 validRect:v19 outputHistogram:?];
    return -12786;
  }

  v23 = computeCommandEncoder;
  device = [(FigMetalContext *)self->_metalContext device];
  v25 = [device newBufferWithLength:1024 options:0];

  bzero([v25 contents], 0x400uLL);
  v26 = (([v21 width] >> 1) + 15) >> 4;
  v27 = (([v21 height] >> 1) + 15) >> 4;
  [v23 setComputePipelineState:self->_pipelineStates[0]];
  [v23 setTexture:v21 atIndex:0];
  [v23 setBuffer:v25 offset:0 atIndex:0];
  [v23 setBytes:v41 length:8 atIndex:1];
  v40[0] = v26;
  v40[1] = v27;
  v40[2] = 1;
  v38 = vdupq_n_s64(0x10uLL);
  v39 = 1;
  [v23 dispatchThreadgroups:v40 threadsPerThreadgroup:&v38];
  [v23 endEncoding];
  if (*MEMORY[0x1E695FF58])
  {
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __91__FigMetalHistogram_singleComponentGPUHistogramInputPixelBuffer_validRect_outputHistogram___block_invoke;
    v35[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
    v36 = WidthOfPlane;
    v37 = HeightOfPlane;
    [v19 addCompletedHandler:v35];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __91__FigMetalHistogram_singleComponentGPUHistogramInputPixelBuffer_validRect_outputHistogram___block_invoke_2;
    v32[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
    v33 = WidthOfPlane;
    v34 = HeightOfPlane;
    [v19 addCompletedHandler:v32];
  }

  [(FigMetalContext *)self->_metalContext commitAndWait];
  memcpy(histogram, [v25 contents], sizeof($A1886C520643A86ACC5362F227C8A889));

  return 0;
}

uint64_t __91__FigMetalHistogram_singleComponentGPUHistogramInputPixelBuffer_validRect_outputHistogram___block_invoke()
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void __91__FigMetalHistogram_singleComponentGPUHistogramInputPixelBuffer_validRect_outputHistogram___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 GPUEndTime];
  [v2 GPUStartTime];

  if (*MEMORY[0x1E695FF58] == 1)
  {

    kdebug_trace();
  }
}

- (int)singleComponentCPUHistogramInputPixelBuffer:(__CVBuffer *)buffer validRect:(CGRect)rect subSampleX:(unsigned int)x subSampleY:(unsigned int)y outputHistogram:(id *)histogram
{
  if (!buffer)
  {
    [FigMetalHistogram singleComponentCPUHistogramInputPixelBuffer:validRect:subSampleX:subSampleY:outputHistogram:];
    return -12780;
  }

  if (!histogram)
  {
    [FigMetalHistogram singleComponentCPUHistogramInputPixelBuffer:validRect:subSampleX:subSampleY:outputHistogram:];
    return -12780;
  }

  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ((CVPixelBufferGetPixelFormatType(buffer) & 0xFFFFFFEF) != 0x34323066)
  {
    [FigMetalHistogram singleComponentCPUHistogramInputPixelBuffer:validRect:subSampleX:subSampleY:outputHistogram:];
    return -12780;
  }

  bzero(histogram, 0x400uLL);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v28 = BytesPerRowOfPlane;
  if (!CGRectIsNull(v29))
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 0);
    if (x < 0.0 || x + width > WidthOfPlane || width <= 0.0)
    {
      [FigMetalHistogram singleComponentCPUHistogramInputPixelBuffer:validRect:subSampleX:subSampleY:outputHistogram:];
    }

    else
    {
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, 0);
      if (y >= 0.0 && y + height <= HeightOfPlane && height > 0.0)
      {
        xCopy = x;
        yCopy = y;
        v16 = width;
        v17 = height;
        goto LABEL_13;
      }

      [FigMetalHistogram singleComponentCPUHistogramInputPixelBuffer:validRect:subSampleX:subSampleY:outputHistogram:];
    }

    return -12780;
  }

  v16 = CVPixelBufferGetWidthOfPlane(buffer, 0);
  v17 = CVPixelBufferGetHeightOfPlane(buffer, 0);
  xCopy = 0;
  yCopy = 0;
LABEL_13:
  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
  v23 = yCopy + (y >> 1);
  if (v23 < v17 + yCopy)
  {
    v24 = v16 + xCopy;
    v25 = &BaseAddressOfPlane[v23 * v28];
    do
    {
      for (i = xCopy + (x >> 1); i < v24; i += x)
      {
        ++histogram->var0[v25[i]];
      }

      v25 += v28 * y;
      v23 += y;
    }

    while (v23 < v17 + yCopy);
  }

  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  return 0;
}

- (int)singleComponentGPUAverageInputPixelBuffer:(__CVBuffer *)buffer validRect:(CGRect)rect outputAverage:(float *)average
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  bzero(v25, 0x400uLL);
  if (CVPixelBufferGetPixelFormatType(buffer) != 1278226488)
  {
    [FigMetalHistogram singleComponentGPUAverageInputPixelBuffer:validRect:outputAverage:];
    return -12780;
  }

  if (!average)
  {
    [FigMetalHistogram singleComponentGPUAverageInputPixelBuffer:validRect:outputAverage:];
    return -12780;
  }

  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  if (CGRectIsNull(v26))
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, 0);
    goto LABEL_12;
  }

  v14 = CVPixelBufferGetWidthOfPlane(buffer, 0);
  if (x < 0.0 || x + width > v14 || width <= 0.0)
  {
    [FigMetalHistogram singleComponentGPUAverageInputPixelBuffer:validRect:outputAverage:];
    return -12780;
  }

  v15 = CVPixelBufferGetHeightOfPlane(buffer, 0);
  if (y < 0.0 || y + height > v15 || height <= 0.0)
  {
    [FigMetalHistogram singleComponentGPUAverageInputPixelBuffer:validRect:outputAverage:];
    return -12780;
  }

  WidthOfPlane = width;
  HeightOfPlane = height;
LABEL_12:
  height = [(FigMetalHistogram *)self singleComponentGPUHistogramInputPixelBuffer:buffer validRect:v25 outputHistogram:x, y, width, height];
  if (height)
  {
    v23 = height;
    [FigMetalHistogram singleComponentGPUAverageInputPixelBuffer:validRect:outputAverage:];
  }

  else
  {
    v17 = 0;
    v18 = xmmword_1ACF06180;
    v19 = 0uLL;
    v20.i64[0] = 0x400000004;
    v20.i64[1] = 0x400000004;
    v21 = 0uLL;
    do
    {
      v22 = vmulq_s32(*&v25[v17], v18);
      v21 = vaddw_high_u32(v21, v22);
      v19 = vaddw_u32(v19, *v22.i8);
      v18 = vaddq_s32(v18, v20);
      v17 += 16;
    }

    while (v17 != 1024);
    v23 = 0;
    *average = vaddvq_s64(vaddq_s64(v19, v21)) / ((WidthOfPlane * HeightOfPlane) * 255.0);
  }

  return v23;
}

- (int)singleComponentCPUAverageInputPixelBuffer:(__CVBuffer *)buffer validRect:(CGRect)rect outputAverage:(float *)average
{
  if (!buffer)
  {
    [FigMetalHistogram singleComponentCPUAverageInputPixelBuffer:validRect:outputAverage:];
    return -12780;
  }

  if (!average)
  {
    [FigMetalHistogram singleComponentCPUAverageInputPixelBuffer:validRect:outputAverage:];
    return -12780;
  }

  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (CVPixelBufferGetPixelFormatType(buffer) != 1278226488)
  {
    [FigMetalHistogram singleComponentCPUAverageInputPixelBuffer:validRect:outputAverage:];
    return -12780;
  }

  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  if (!CGRectIsNull(v25))
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 0);
    if (x < 0.0 || x + width > WidthOfPlane || width <= 0.0)
    {
      [FigMetalHistogram singleComponentCPUAverageInputPixelBuffer:validRect:outputAverage:];
    }

    else
    {
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, 0);
      if (y >= 0.0 && y + height <= HeightOfPlane && height > 0.0)
      {
        v14 = x;
        v15 = y;
        v12 = width;
        v13 = height;
        goto LABEL_13;
      }

      [FigMetalHistogram singleComponentCPUAverageInputPixelBuffer:validRect:outputAverage:];
    }

    return -12780;
  }

  v12 = CVPixelBufferGetWidthOfPlane(buffer, 0);
  v13 = CVPixelBufferGetHeightOfPlane(buffer, 0);
  v14 = 0;
  v15 = 0;
LABEL_13:
  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
  v19 = v13 + v15;
  v20 = 0.0;
  if (v15 < v13 + v15)
  {
    v21 = 0;
    v22 = v12 + v14;
    do
    {
      v23 = v14;
      if (v14 < v22)
      {
        do
        {
          v21 += BaseAddressOfPlane[v23++];
        }

        while (v22 != v23);
      }

      BaseAddressOfPlane += BytesPerRowOfPlane;
      ++v15;
    }

    while (v15 != v19);
    v20 = v21;
  }

  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
  result = 0;
  *average = v20 / ((v13 * v12) * 255.0);
  return result;
}

- (uint64_t)_initShaders
{
  if (!self)
  {
    return 0;
  }

  v2 = [*(self + 8) computePipelineStateFor:@"histogramSingleComponent" constants:0];
  v3 = *(self + 16);
  *(self + 16) = v2;

  if (*(self + 16))
  {
    return 0;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

- (uint64_t)initWithMetalContext:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)initWithMetalContext:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithMetalContext:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithMetalContext:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)singleComponentGPUHistogramInputPixelBuffer:validRect:outputHistogram:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)singleComponentGPUHistogramInputPixelBuffer:validRect:outputHistogram:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (void)singleComponentGPUHistogramInputPixelBuffer:(void *)a1 validRect:(void *)a2 outputHistogram:.cold.3(void *a1, void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  FigDebugAssert3();
}

- (void)singleComponentGPUHistogramInputPixelBuffer:(void *)a1 validRect:outputHistogram:.cold.4(void *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  FigDebugAssert3();
}

- (uint64_t)singleComponentGPUHistogramInputPixelBuffer:(_DWORD *)a1 validRect:outputHistogram:.cold.5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)singleComponentGPUHistogramInputPixelBuffer:validRect:outputHistogram:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)singleComponentGPUHistogramInputPixelBuffer:validRect:outputHistogram:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)singleComponentCPUHistogramInputPixelBuffer:validRect:subSampleX:subSampleY:outputHistogram:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)singleComponentCPUHistogramInputPixelBuffer:validRect:subSampleX:subSampleY:outputHistogram:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)singleComponentCPUHistogramInputPixelBuffer:validRect:subSampleX:subSampleY:outputHistogram:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)singleComponentCPUHistogramInputPixelBuffer:validRect:subSampleX:subSampleY:outputHistogram:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)singleComponentCPUHistogramInputPixelBuffer:validRect:subSampleX:subSampleY:outputHistogram:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)singleComponentGPUAverageInputPixelBuffer:validRect:outputAverage:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)singleComponentGPUAverageInputPixelBuffer:validRect:outputAverage:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)singleComponentGPUAverageInputPixelBuffer:validRect:outputAverage:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)singleComponentGPUAverageInputPixelBuffer:validRect:outputAverage:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)singleComponentGPUAverageInputPixelBuffer:validRect:outputAverage:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)singleComponentCPUAverageInputPixelBuffer:validRect:outputAverage:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)singleComponentCPUAverageInputPixelBuffer:validRect:outputAverage:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)singleComponentCPUAverageInputPixelBuffer:validRect:outputAverage:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)singleComponentCPUAverageInputPixelBuffer:validRect:outputAverage:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)singleComponentCPUAverageInputPixelBuffer:validRect:outputAverage:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end