@interface ImageProcessUtility
- (BOOL)createModules;
- (BOOL)setupMetal;
- (ImageProcessUtility)initWithDevice:(id)a3 commmandQueue:(id)a4;
- (id)createOutputBufferWidth:(unint64_t)a3 height:(unint64_t)a4 channels:(unint64_t)a5;
- (int64_t)encodeCopyTextureToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5;
- (int64_t)encodeDownscaleDepthToCommandBuffer:(id)a3 input:(id)a4 output:(id)a5;
- (int64_t)encodeDownscaleImageToCommandBuffer:(id)a3 input:(id)a4 output:(id)a5;
- (int64_t)encodeFlowEdgeToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5 edgeThresh:(float)a6;
- (int64_t)encodeSmoothOnePlaneToCommandBuffer:(id)a3 input:(id)a4 output:(id)a5;
- (void)dealloc;
- (void)dumpDebugBuffer:(__CVBuffer *)a3 fileName:(id)a4 debugCnt:(int)a5;
- (void)encodeConvertPack2ArrayToCommandBuffer:(id)a3 input:(id)a4 output:(id)a5;
@end

@implementation ImageProcessUtility

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ImageProcessUtility;
  [(ImageProcessUtility *)&v2 dealloc];
}

- (BOOL)createModules
{
  device = self->super._device;
  result = 0;
  if (device || (v4 = MTLCreateSystemDefaultDevice(), v5 = self->super._device, self->super._device = v4, v5, (device = self->super._device) != 0))
  {
    if (self->super._commandQueue)
    {
      return 1;
    }

    v6 = [(MTLDevice *)device newCommandQueue];
    commandQueue = self->super._commandQueue;
    self->super._commandQueue = v6;

    if (self->super._commandQueue)
    {
      return 1;
    }
  }

  return result;
}

- (id)createOutputBufferWidth:(unint64_t)a3 height:(unint64_t)a4 channels:(unint64_t)a5
{
  v5 = [(MTLDevice *)self->super._device newBufferWithLength:(4 * (a3 * ((a4 + 15) & 0x3FFFFFFFFFFFFFF0) + a3 * ((a4 + 15) & 0x3FFFFFFFFFFFFFF0) * a5) + 4095) & 0xFFFFFFFFFFFFF000 options:0];

  return v5;
}

- (void)dumpDebugBuffer:(__CVBuffer *)a3 fileName:(id)a4 debugCnt:(int)a5
{
  v5 = *&a5;
  v18 = a4;
  if (CVPixelBufferGetPixelFormatType(a3) == 1278226536)
  {
    writeDebugFlo([v18 UTF8String], a3, v5);
  }

  else
  {
    v8 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
    [v8 enqueue];
    PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    if (PixelFormatType == 843264104)
    {
      v12 = 2 * Height;
    }

    else
    {
      v12 = 3 * Height;
    }

    if (PixelFormatType == 843264104)
    {
      v13 = 2;
    }

    else
    {
      v13 = 4;
    }

    if (PixelFormatType == 843264104)
    {
      v14 = 2;
    }

    else
    {
      v14 = 3;
    }

    PixelBuffer = CreatePixelBuffer(Width, v12, 1278226536);
    v16 = createTexturesFromCVPixelBuffer(a3, self->super._device, v13, 1uLL);
    v17 = createTexturesFromCVPixelBuffer(PixelBuffer, self->super._device, 1, v14);
    [(ImageProcessUtility *)self encodeConvertPack2ArrayToCommandBuffer:v8 input:v16 output:v17];
    [v8 commit];
    [(VEMetalBase *)self commandBufferWait:v8 flag:[(VEMetalBase *)self EnableGpuWaitForComplete]];
    writeDebugFlo([v18 UTF8String], PixelBuffer, v5);
    CVPixelBufferRelease(PixelBuffer);
  }
}

- (void)encodeConvertPack2ArrayToCommandBuffer:(id)a3 input:(id)a4 output:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9 && v10)
  {
    v12 = [v8 computeCommandEncoder];
    v13 = v12;
    if (v12)
    {
      [v12 setComputePipelineState:self->_convertPackToArrayKernel];
      [v13 setTexture:v9 atIndex:0];
      [v13 setTexture:v11 atIndex:1];
      v18[0] = ([v11 width] + 15) >> 4;
      v18[1] = ([v11 height] + 15) >> 4;
      v18[2] = 1;
      v16 = vdupq_n_s64(0x10uLL);
      v17 = 1;
      [v13 dispatchThreadgroups:v18 threadsPerThreadgroup:&v16];
      [v13 endEncoding];
    }

    else if ((global_logLevel & 0x10) != 0)
    {
      v15 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
      {
        [ImageProcessUtility encodeConvertPack2ArrayToCommandBuffer:v15 input:? output:?];
      }
    }
  }

  else if ((global_logLevel & 0x10) != 0)
  {
    v14 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [ImageProcessUtility encodeConvertPack2ArrayToCommandBuffer:v14 input:? output:?];
    }
  }
}

- (ImageProcessUtility)initWithDevice:(id)a3 commmandQueue:(id)a4
{
  v8.receiver = self;
  v8.super_class = ImageProcessUtility;
  v4 = [(VEMetalBase *)&v8 initWithDevice:a3 commmandQueue:a4];
  v5 = v4;
  if (v4 && [(ImageProcessUtility *)v4 setupMetal])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)setupMetal
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"VECommonMetalLib.metallib" ofType:0];
  v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v4];
  v6 = [(MTLDevice *)self->super._device newLibraryWithURL:v5 error:0];
  mtlLibrary = self->super._mtlLibrary;
  self->super._mtlLibrary = v6;

  v8 = [(VEMetalBase *)self createKernel:@"downscaleImage"];
  OUTLINED_FUNCTION_4_6(v8);
  if (self->_downscaleImageKernel)
  {
    v9 = [(VEMetalBase *)self createKernel:@"downscalePackedImage"];
    OUTLINED_FUNCTION_4_6(v9);
    if (self->_downscalePackedImageKernel)
    {
      v10 = [(VEMetalBase *)self createKernel:@"computeEdge"];
      OUTLINED_FUNCTION_4_6(v10);
      if (self->_flowEdgeKernel)
      {
        v11 = [(VEMetalBase *)self createKernel:@"computeEdgeInterleaved"];
        OUTLINED_FUNCTION_4_6(v11);
        if (self->_flowEdgeInterleavedKernel)
        {
          v12 = [(VEMetalBase *)self createKernel:@"downscaleDepth"];
          OUTLINED_FUNCTION_4_6(v12);
          if (self->_downscaleDepthKernel)
          {
            v13 = [(VEMetalBase *)self createKernel:@"smoothOnePlane"];
            OUTLINED_FUNCTION_4_6(v13);
            if (self->_smoothOnePlaneKernel)
            {
              v14 = [(VEMetalBase *)self createKernel:@"convertPackToArray"];
              OUTLINED_FUNCTION_4_6(v14);
              if (self->_convertPackToArrayKernel)
              {
                v15 = [(VEMetalBase *)self createKernel:@"copyTexture"];
                OUTLINED_FUNCTION_4_6(v15);
                if (self->_copyTextureKernel)
                {
                  v16 = [(VEMetalBase *)self createKernel:@"copyOneChannelTexture"];
                  copyOneChannelTextureKernel = self->_copyOneChannelTextureKernel;
                  self->_copyOneChannelTextureKernel = v16;
                }
              }
            }
          }
        }
      }
    }
  }

  return 1;
}

- (int64_t)encodeDownscaleImageToCommandBuffer:(id)a3 input:(id)a4 output:(id)a5
{
  OUTLINED_FUNCTION_5_4();
  v8 = v7;
  v10 = v9;
  v11 = v5;
  v12 = v11;
  v13 = 12;
  if (v10 && v11)
  {
    v14 = [v6 computeCommandEncoder];
    if (v14)
    {
      [v10 width];
      v15 = OUTLINED_FUNCTION_8_5([v12 width]);
      v17 = (v15 * v16);
      if (v17 <= 1)
      {
        LOWORD(v17) = 1;
      }

      if (v15 > 6.0)
      {
        LOWORD(v17) = 3;
      }

      HIWORD(v45) = v17;
      v18 = [v12 arrayLength];
      v19 = &OBJC_IVAR___ImageProcessUtility__downscaleImageKernel;
      if (v18 == 1)
      {
        v19 = &OBJC_IVAR___ImageProcessUtility__downscalePackedImageKernel;
      }

      [v14 setComputePipelineState:*(v8 + *v19)];
      OUTLINED_FUNCTION_3_2();
      v20 = OUTLINED_FUNCTION_1_14();
      v28 = OUTLINED_FUNCTION_10_2(v20, v21, v22, v23, v24, v25, v26, v27, v38, v39, v40, v41, v42, v43, v44, v45, v46);
      OUTLINED_FUNCTION_9_4(v28, v29, v30, v31, v32, v33, v34, v35, v38, v39, v40, v41, v42, v43, v44, v45, SBYTE2(v45));
      [v12 width];
      OUTLINED_FUNCTION_3_10();
      OUTLINED_FUNCTION_8_0();
      v42 = 12;
      v43 = v36;
      v44 = v8;
      [v14 dispatchThreadgroups:&v42 threadsPerThreadgroup:{&v38, *OUTLINED_FUNCTION_0_19().i64}];
      [v14 endEncoding];
      v13 = 0;
    }

    else
    {
      v13 = 9;
    }
  }

  return v13;
}

- (int64_t)encodeFlowEdgeToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5 edgeThresh:(float)a6
{
  OUTLINED_FUNCTION_5_4();
  v10 = v9;
  v12 = v11;
  v13 = v6;
  v14 = v13;
  v15 = 12;
  if (v12 && v13)
  {
    v16 = [v7 computeCommandEncoder];
    if (v16)
    {
      v17 = [*(v10 + 16) newBufferWithLength:4 options:0];
      *[v17 contents] = a6;
      v18 = [v12 arrayLength];
      v19 = &OBJC_IVAR___ImageProcessUtility__flowEdgeInterleavedKernel;
      if (v18 > 1)
      {
        v19 = &OBJC_IVAR___ImageProcessUtility__flowEdgeKernel;
      }

      [v16 setComputePipelineState:*(v10 + *v19)];
      OUTLINED_FUNCTION_3_2();
      [v16 setTexture:v14 atIndex:1];
      [v16 setBuffer:v17 offset:0 atIndex:0];
      v20 = ([v14 width] + 15) >> 4;
      [v14 height];
      OUTLINED_FUNCTION_8_0();
      v30 = vdupq_n_s64(0x10uLL);
      OUTLINED_FUNCTION_4_4(v21, v22, v23, v24, v25, v26, v27, v28, v30.i64[0], v30.i64[1], 1, v20);
      [v16 endEncoding];

      v15 = 0;
    }

    else
    {
      v15 = 9;
    }
  }

  return v15;
}

- (int64_t)encodeDownscaleDepthToCommandBuffer:(id)a3 input:(id)a4 output:(id)a5
{
  OUTLINED_FUNCTION_5_4();
  v8 = v7;
  v10 = v9;
  v11 = v5;
  v12 = v11;
  v13 = 12;
  if (v10 && v11)
  {
    v14 = [v6 computeCommandEncoder];
    v15 = v14;
    if (v14)
    {
      [v14 setComputePipelineState:*(v8 + 72)];
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_1_14();
      [v10 width];
      v24 = OUTLINED_FUNCTION_8_5([v12 width]);
      v26 = (v24 * v25);
      if (v26 <= 1)
      {
        LOWORD(v26) = 1;
      }

      HIWORD(v44) = v26;
      v27 = OUTLINED_FUNCTION_10_2(v16, v17, v18, v19, v20, v21, v22, v23, v37, v38, v39, v40, v41, v42, v43, v44, v45);
      OUTLINED_FUNCTION_9_4(v27, v28, v29, v30, v31, v32, v33, v34, v37, v38, v39, v40, v41, v42, v43, v44, SBYTE2(v44));
      [v12 width];
      OUTLINED_FUNCTION_3_10();
      OUTLINED_FUNCTION_8_0();
      v41 = v8;
      v42 = v35;
      v43 = 12;
      [v15 dispatchThreadgroups:&v41 threadsPerThreadgroup:{&v37, *OUTLINED_FUNCTION_0_19().i64}];
      [v15 endEncoding];
      v13 = 0;
    }

    else
    {
      v13 = 9;
    }
  }

  return v13;
}

- (int64_t)encodeSmoothOnePlaneToCommandBuffer:(id)a3 input:(id)a4 output:(id)a5
{
  OUTLINED_FUNCTION_5_4();
  v8 = v7;
  v10 = v9;
  v11 = v5;
  v12 = v11;
  v13 = 12;
  if (v10 && v11)
  {
    v14 = [v6 computeCommandEncoder];
    v15 = v14;
    if (v14)
    {
      [v14 setComputePipelineState:*(v8 + 80)];
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_1_14();
      [v12 width];
      OUTLINED_FUNCTION_3_10();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_0_19();
      OUTLINED_FUNCTION_4_4(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26, v27, v8);
      [v15 endEncoding];
      v13 = 0;
    }

    else
    {
      v13 = 9;
    }
  }

  return v13;
}

- (int64_t)encodeCopyTextureToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5
{
  OUTLINED_FUNCTION_5_4();
  v8 = v7;
  v10 = v9;
  v11 = v5;
  v12 = v11;
  v13 = 12;
  if (v10 && v11)
  {
    v14 = [v6 computeCommandEncoder];
    if (!v14)
    {
      v13 = 9;
      goto LABEL_14;
    }

    if ([v10 arrayLength] == 1)
    {
      if ([v12 pixelFormat] == 25)
      {
        v15 = 1;
      }

      else if ([v12 pixelFormat] == 65)
      {
        v15 = 2;
      }

      else
      {
        if ([v12 pixelFormat] != 115)
        {
          v13 = 12;
          goto LABEL_14;
        }

        v15 = 3;
      }

      LOWORD(v29[0]) = v15;
      [v14 setComputePipelineState:*(v8 + 104)];
      [v14 setBytes:v29 length:2 atIndex:0];
    }

    else
    {
      [v14 setComputePipelineState:*(v8 + 96)];
    }

    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_1_14();
    [v12 width];
    OUTLINED_FUNCTION_3_10();
    OUTLINED_FUNCTION_8_0();
    v29[0] = 12;
    v29[1] = v16;
    v29[2] = v8;
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_4_4(v17, v18, v19, v20, v21, v22, v23, v24, v26, v27, v28, v29[0]);
    [v14 endEncoding];
    v13 = 0;
LABEL_14:
  }

  return v13;
}

@end