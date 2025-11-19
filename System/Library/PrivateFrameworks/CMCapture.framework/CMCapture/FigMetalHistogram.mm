@interface FigMetalHistogram
- (FigMetalHistogram)initWithMetalContext:(id)a3;
- (int)singleComponentCPUAverageInputPixelBuffer:(__CVBuffer *)a3 validRect:(CGRect)a4 outputAverage:(float *)a5;
- (int)singleComponentCPUHistogramInputPixelBuffer:(__CVBuffer *)a3 validRect:(CGRect)a4 subSampleX:(unsigned int)a5 subSampleY:(unsigned int)a6 outputHistogram:(id *)a7;
- (int)singleComponentGPUAverageInputPixelBuffer:(__CVBuffer *)a3 validRect:(CGRect)a4 outputAverage:(float *)a5;
- (int)singleComponentGPUHistogramInputPixelBuffer:(__CVBuffer *)a3 validRect:(CGRect)a4 outputHistogram:(id *)a5;
- (uint64_t)_initShaders;
@end

@implementation FigMetalHistogram

- (FigMetalHistogram)initWithMetalContext:(id)a3
{
  v5 = a3;
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

  objc_storeStrong(&v6->_metalContext, a3);
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

- (int)singleComponentGPUHistogramInputPixelBuffer:(__CVBuffer *)a3 validRect:(CGRect)a4 outputHistogram:(id *)a5
{
  if (!a3)
  {
    [FigMetalHistogram singleComponentGPUHistogramInputPixelBuffer:validRect:outputHistogram:];
    return -12780;
  }

  if (!a5)
  {
    [FigMetalHistogram singleComponentGPUHistogramInputPixelBuffer:validRect:outputHistogram:];
    return -12780;
  }

  y = a4.origin.y;
  height = a4.size.height;
  width = a4.size.width;
  __dst = a4.origin.x;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
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
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a3, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, 0);
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
  v18 = [(FigMetalContext *)self->_metalContext commandBuffer];
  if (!v18)
  {
    [FigMetalHistogram singleComponentGPUHistogramInputPixelBuffer:v40 validRect:? outputHistogram:?];
    return v40[0];
  }

  v19 = v18;
  v20 = [(FigMetalContext *)self->_metalContext bindPixelBufferToMTL2DTexture:a3 pixelFormat:v10 usage:1 textureSize:0 plane:WidthOfPlane, HeightOfPlane];
  if (!v20)
  {
    [FigMetalHistogram singleComponentGPUHistogramInputPixelBuffer:v19 validRect:? outputHistogram:?];
    return -12786;
  }

  v21 = v20;
  v22 = [v19 computeCommandEncoder];
  if (!v22)
  {
    [FigMetalHistogram singleComponentGPUHistogramInputPixelBuffer:v21 validRect:v19 outputHistogram:?];
    return -12786;
  }

  v23 = v22;
  v24 = [(FigMetalContext *)self->_metalContext device];
  v25 = [v24 newBufferWithLength:1024 options:0];

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
  memcpy(a5, [v25 contents], sizeof($A1886C520643A86ACC5362F227C8A889));

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

- (int)singleComponentCPUHistogramInputPixelBuffer:(__CVBuffer *)a3 validRect:(CGRect)a4 subSampleX:(unsigned int)a5 subSampleY:(unsigned int)a6 outputHistogram:(id *)a7
{
  if (!a3)
  {
    [FigMetalHistogram singleComponentCPUHistogramInputPixelBuffer:validRect:subSampleX:subSampleY:outputHistogram:];
    return -12780;
  }

  if (!a7)
  {
    [FigMetalHistogram singleComponentCPUHistogramInputPixelBuffer:validRect:subSampleX:subSampleY:outputHistogram:];
    return -12780;
  }

  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if ((CVPixelBufferGetPixelFormatType(a3) & 0xFFFFFFEF) != 0x34323066)
  {
    [FigMetalHistogram singleComponentCPUHistogramInputPixelBuffer:validRect:subSampleX:subSampleY:outputHistogram:];
    return -12780;
  }

  bzero(a7, 0x400uLL);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v28 = BytesPerRowOfPlane;
  if (!CGRectIsNull(v29))
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a3, 0);
    if (x < 0.0 || x + width > WidthOfPlane || width <= 0.0)
    {
      [FigMetalHistogram singleComponentCPUHistogramInputPixelBuffer:validRect:subSampleX:subSampleY:outputHistogram:];
    }

    else
    {
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, 0);
      if (y >= 0.0 && y + height <= HeightOfPlane && height > 0.0)
      {
        v18 = x;
        v19 = y;
        v16 = width;
        v17 = height;
        goto LABEL_13;
      }

      [FigMetalHistogram singleComponentCPUHistogramInputPixelBuffer:validRect:subSampleX:subSampleY:outputHistogram:];
    }

    return -12780;
  }

  v16 = CVPixelBufferGetWidthOfPlane(a3, 0);
  v17 = CVPixelBufferGetHeightOfPlane(a3, 0);
  v18 = 0;
  v19 = 0;
LABEL_13:
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
  v23 = v19 + (a6 >> 1);
  if (v23 < v17 + v19)
  {
    v24 = v16 + v18;
    v25 = &BaseAddressOfPlane[v23 * v28];
    do
    {
      for (i = v18 + (a5 >> 1); i < v24; i += a5)
      {
        ++a7->var0[v25[i]];
      }

      v25 += v28 * a6;
      v23 += a6;
    }

    while (v23 < v17 + v19);
  }

  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  return 0;
}

- (int)singleComponentGPUAverageInputPixelBuffer:(__CVBuffer *)a3 validRect:(CGRect)a4 outputAverage:(float *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  bzero(v25, 0x400uLL);
  if (CVPixelBufferGetPixelFormatType(a3) != 1278226488)
  {
    [FigMetalHistogram singleComponentGPUAverageInputPixelBuffer:validRect:outputAverage:];
    return -12780;
  }

  if (!a5)
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
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a3, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, 0);
    goto LABEL_12;
  }

  v14 = CVPixelBufferGetWidthOfPlane(a3, 0);
  if (x < 0.0 || x + width > v14 || width <= 0.0)
  {
    [FigMetalHistogram singleComponentGPUAverageInputPixelBuffer:validRect:outputAverage:];
    return -12780;
  }

  v15 = CVPixelBufferGetHeightOfPlane(a3, 0);
  if (y < 0.0 || y + height > v15 || height <= 0.0)
  {
    [FigMetalHistogram singleComponentGPUAverageInputPixelBuffer:validRect:outputAverage:];
    return -12780;
  }

  WidthOfPlane = width;
  HeightOfPlane = height;
LABEL_12:
  v16 = [(FigMetalHistogram *)self singleComponentGPUHistogramInputPixelBuffer:a3 validRect:v25 outputHistogram:x, y, width, height];
  if (v16)
  {
    v23 = v16;
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
    *a5 = vaddvq_s64(vaddq_s64(v19, v21)) / ((WidthOfPlane * HeightOfPlane) * 255.0);
  }

  return v23;
}

- (int)singleComponentCPUAverageInputPixelBuffer:(__CVBuffer *)a3 validRect:(CGRect)a4 outputAverage:(float *)a5
{
  if (!a3)
  {
    [FigMetalHistogram singleComponentCPUAverageInputPixelBuffer:validRect:outputAverage:];
    return -12780;
  }

  if (!a5)
  {
    [FigMetalHistogram singleComponentCPUAverageInputPixelBuffer:validRect:outputAverage:];
    return -12780;
  }

  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (CVPixelBufferGetPixelFormatType(a3) != 1278226488)
  {
    [FigMetalHistogram singleComponentCPUAverageInputPixelBuffer:validRect:outputAverage:];
    return -12780;
  }

  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  if (!CGRectIsNull(v25))
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a3, 0);
    if (x < 0.0 || x + width > WidthOfPlane || width <= 0.0)
    {
      [FigMetalHistogram singleComponentCPUAverageInputPixelBuffer:validRect:outputAverage:];
    }

    else
    {
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, 0);
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

  v12 = CVPixelBufferGetWidthOfPlane(a3, 0);
  v13 = CVPixelBufferGetHeightOfPlane(a3, 0);
  v14 = 0;
  v15 = 0;
LABEL_13:
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
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

  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  result = 0;
  *a5 = v20 / ((v13 * v12) * 255.0);
  return result;
}

- (uint64_t)_initShaders
{
  if (!a1)
  {
    return 0;
  }

  v2 = [*(a1 + 8) computePipelineStateFor:@"histogramSingleComponent" constants:0];
  v3 = *(a1 + 16);
  *(a1 + 16) = v2;

  if (*(a1 + 16))
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