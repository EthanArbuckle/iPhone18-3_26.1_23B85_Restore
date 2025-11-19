@interface FlowUpscale
- (BOOL)createModules;
- (BOOL)setupMetal;
- (FlowUpscale)initWithDevice:(id)a3 commandQueue:(id)a4;
- (FlowUpscale)initWithMode;
- (id)createOutputBufferWidth:(unint64_t)a3 height:(unint64_t)a4 channels:(unint64_t)a5;
- (int64_t)allocateInternalBuffersWithLrWidth:(unint64_t)a3 lrHeight:(unint64_t)a4 hrWidth:(unint64_t)a5 hrHeight:(unint64_t)a6 interleaveFactor:(unint64_t)a7;
- (int64_t)encodeComputeRGBandFlowEdgeToCommandBuffer:(id)a3 rgb:(id)a4 flow:(id)a5 destination:(id)a6 edgeThresh:(float)a7;
- (int64_t)encodeDeblockToCommandBuffer:(id)a3 flow:(id)a4 output:(id)a5 upscaleFactor:(int)a6;
- (int64_t)encodeDilateEdgeMapToCommandBuffer:(id)a3 input:(id)a4 destination:(id)a5;
- (int64_t)encodeDownscaleImageToCommandBuffer:(id)a3 input:(id)a4 output:(id)a5;
- (int64_t)encodeHighUpscaleToCommandBuffer:(id)a3 lrFlow:(id)a4 rgbFlowEdge:(id)a5 hrImage:(id)a6 flow1:(id)a7 flow2:(id)a8 rgb1:(id)a9 rgb2:(id)a10 internalResult:(id)a11 hrFlow:(id)a12;
- (int64_t)encodeLowResClusterToCommandBuffer:(id)a3 lrFlow:(id)a4 lrImage:(id)a5 rgbFlowEdge:(id)a6 flow1:(id)a7 flow2:(id)a8 rgb1:(id)a9 rgb2:(id)a10 internalResult:(id)a11;
- (int64_t)flowUpscalingFromImage:(id)a3 inputFlow:(id)a4 outputFlow:(id)a5 interleave_factor:(unint64_t)a6;
- (int64_t)upscaleRefinedFloV2WithRGB:(id)a3 lrFlow:(id)a4 commandBuffer:(id)a5 interleaveFactor:(unint64_t)a6 output:(id)a7;
- (void)dealloc;
- (void)releaseBufferAndTexture;
@end

@implementation FlowUpscale

- (void)dealloc
{
  backwarp = self->_backwarp;
  self->_backwarp = 0;

  [(FlowUpscale *)self releaseBufferAndTexture];
  v4.receiver = self;
  v4.super_class = FlowUpscale;
  [(FlowUpscale *)&v4 dealloc];
}

- (BOOL)createModules
{
  device = self->super._device;
  result = 0;
  if (device || (v4 = MTLCreateSystemDefaultDevice(), v5 = self->super._device, self->super._device = v4, v5, (device = self->super._device) != 0))
  {
    if (self->super._commandQueue || (v6 = [(MTLDevice *)device newCommandQueue], commandQueue = self->super._commandQueue, self->super._commandQueue = v6, commandQueue, self->super._commandQueue))
    {
      v8 = [[Backwarp_Ext alloc] initWithDevice:self->super._device commmandQueue:self->super._commandQueue interleaved:0];
      backwarp = self->_backwarp;
      self->_backwarp = v8;

      if (self->_backwarp)
      {
        return 1;
      }
    }
  }

  return result;
}

- (id)createOutputBufferWidth:(unint64_t)a3 height:(unint64_t)a4 channels:(unint64_t)a5
{
  v5 = [(MTLDevice *)self->super._device newBufferWithLength:(4 * (a3 * ((a4 + 15) & 0x3FFFFFFFFFFFFFF0) + a3 * ((a4 + 15) & 0x3FFFFFFFFFFFFFF0) * a5) + 4095) & 0xFFFFFFFFFFFFF000 options:0];

  return v5;
}

- (void)releaseBufferAndTexture
{
  lrRgb = self->_lrRgb;
  if (lrRgb)
  {
    CVPixelBufferRelease(lrRgb);
    lrRgbTexture = self->_lrRgbTexture;
    self->_lrRgbTexture = 0;

    self->_lrRgb = 0;
  }

  rgb1 = self->_rgb1;
  if (rgb1)
  {
    CVPixelBufferRelease(rgb1);
    rgb1Texture = self->_rgb1Texture;
    self->_rgb1Texture = 0;

    self->_rgb1 = 0;
  }

  rgb2 = self->_rgb2;
  if (rgb2)
  {
    CVPixelBufferRelease(rgb2);
    rgb2Texture = self->_rgb2Texture;
    self->_rgb2Texture = 0;

    self->_rgb2 = 0;
  }

  flow1 = self->_flow1;
  if (flow1)
  {
    CVPixelBufferRelease(flow1);
    flow1Texture = self->_flow1Texture;
    self->_flow1Texture = 0;

    self->_flow1 = 0;
  }

  flow2 = self->_flow2;
  if (flow2)
  {
    CVPixelBufferRelease(flow2);
    flow2Texture = self->_flow2Texture;
    self->_flow2Texture = 0;

    self->_flow2 = 0;
  }

  internalResult = self->_internalResult;
  if (internalResult)
  {
    CVPixelBufferRelease(internalResult);
    internalResultTexture = self->_internalResultTexture;
    self->_internalResultTexture = 0;

    self->_internalResult = 0;
  }

  dilateEdgeMap = self->_dilateEdgeMap;
  if (dilateEdgeMap)
  {
    CVPixelBufferRelease(dilateEdgeMap);
    dilateEdgeMapTexture = self->_dilateEdgeMapTexture;
    self->_dilateEdgeMapTexture = 0;

    self->_dilateEdgeMap = 0;
  }

  combinedRGBFlowEdge = self->_combinedRGBFlowEdge;
  if (combinedRGBFlowEdge)
  {
    CVPixelBufferRelease(combinedRGBFlowEdge);
    combinedRGBFlowEdgeTexture = self->_combinedRGBFlowEdgeTexture;
    self->_combinedRGBFlowEdgeTexture = 0;

    self->_combinedRGBFlowEdge = 0;
  }

  internalHrFlow = self->_internalHrFlow;
  if (internalHrFlow)
  {
    CVPixelBufferRelease(internalHrFlow);
    internalHrFlowTexture = self->_internalHrFlowTexture;
    self->_internalHrFlowTexture = 0;

    self->_internalHrFlow = 0;
  }
}

- (int64_t)allocateInternalBuffersWithLrWidth:(unint64_t)a3 lrHeight:(unint64_t)a4 hrWidth:(unint64_t)a5 hrHeight:(unint64_t)a6 interleaveFactor:(unint64_t)a7
{
  PixelBuffer = CreatePixelBuffer(a3, a4, 1380411457);
  self->_lrRgb = PixelBuffer;
  if (PixelBuffer && (OUTLINED_FUNCTION_2_8(), createTexturesFromCVPixelBuffer(v11, v12, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_18(v15), self->_lrRgbTexture) && (v16 = OUTLINED_FUNCTION_1_13(), (self->_combinedRGBFlowEdge = v16) != 0) && (OUTLINED_FUNCTION_0_12(), createTexturesFromCVPixelBuffer(v17, v18, v19, v20), v21 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_18(v21), self->_combinedRGBFlowEdgeTexture) && (v22 = OUTLINED_FUNCTION_1_13(), (self->_dilateEdgeMap = v22) != 0) && (OUTLINED_FUNCTION_0_12(), createTexturesFromCVPixelBuffer(v23, v24, v25, v26), v27 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_18(v27), self->_dilateEdgeMapTexture) && (v28 = OUTLINED_FUNCTION_4_3(), (self->_rgb1 = v28) != 0) && (OUTLINED_FUNCTION_2_8(), createTexturesFromCVPixelBuffer(v29, v30, v31, v32), v33 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_18(v33), self->_rgb1Texture) && (v34 = OUTLINED_FUNCTION_4_3(), (self->_rgb2 = v34) != 0) && (OUTLINED_FUNCTION_2_8(), createTexturesFromCVPixelBuffer(v35, v36, v37, v38), v39 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_18(v39), self->_rgb2Texture) && (v40 = OUTLINED_FUNCTION_1_13(), (self->_flow1 = v40) != 0) && (OUTLINED_FUNCTION_0_12(), createTexturesFromCVPixelBuffer(v41, v42, v43, v44), v45 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_18(v45), self->_flow1Texture) && (v46 = OUTLINED_FUNCTION_1_13(), (self->_flow2 = v46) != 0) && (OUTLINED_FUNCTION_0_12(), createTexturesFromCVPixelBuffer(v47, v48, v49, v50), v51 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_18(v51), self->_flow2Texture) && (v52 = OUTLINED_FUNCTION_4_3(), (self->_internalResult = v52) != 0) && (OUTLINED_FUNCTION_2_8(), createTexturesFromCVPixelBuffer(v53, v54, v55, v56), v57 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_11_2(v57), self->_internalResultTexture) && (v58 = CreatePixelBuffer(a5, a6, 843264104), (self->_internalHrFlow = v58) != 0) && (OUTLINED_FUNCTION_0_12(), createTexturesFromCVPixelBuffer(v59, v60, v61, v62), v63 = objc_claimAutoreleasedReturnValue(), internalHrFlowTexture = self->_internalHrFlowTexture, self->_internalHrFlowTexture = v63, internalHrFlowTexture, self->_internalHrFlowTexture))
  {
    return 0;
  }

  else
  {
    return 9;
  }
}

- (FlowUpscale)initWithMode
{
  v6.receiver = self;
  v6.super_class = FlowUpscale;
  v2 = [(VEMetalBase *)&v6 init];
  v3 = v2;
  if (v2 && [(FlowUpscale *)v2 createModules]&& [(FlowUpscale *)v3 setupMetal])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (FlowUpscale)initWithDevice:(id)a3 commandQueue:(id)a4
{
  v8.receiver = self;
  v8.super_class = FlowUpscale;
  v4 = [(VEMetalBase *)&v8 initWithDevice:a3 commmandQueue:a4];
  v5 = v4;
  if (v4 && [(FlowUpscale *)v4 createModules]&& [(FlowUpscale *)v5 setupMetal])
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
  downscaleImageKernel = self->_downscaleImageKernel;
  self->_downscaleImageKernel = v8;

  if (self->_downscaleImageKernel && ([(VEMetalBase *)self createKernel:@"downscalePackedImage"], v10 = objc_claimAutoreleasedReturnValue(), downscalePackedImageKernel = self->_downscalePackedImageKernel, self->_downscalePackedImageKernel = v10, downscalePackedImageKernel, self->_downscalePackedImageKernel))
  {
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

    v13 = [v12 pathForResource:@"opticalFlowMetalLib.metallib" ofType:0];

    v14 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v13];
    v15 = [(MTLDevice *)self->super._device newLibraryWithURL:v14 error:0];
    v16 = self->super._mtlLibrary;
    self->super._mtlLibrary = v15;

    v17 = [(VEMetalBase *)self createKernel:@"compute_rgb_flow_edge"];
    OUTLINED_FUNCTION_11_2(v17);
    v22 = 0;
    if (self->_computeRgbFlowEdgeKernel)
    {
      v18 = [(VEMetalBase *)self createKernel:@"flowUpscaleLowresCluster"];
      OUTLINED_FUNCTION_11_2(v18);
      if (self->_flowUpscaleLowresClusterKernel)
      {
        v19 = [(VEMetalBase *)self createKernel:@"flowUpscaleHighresUpscale"];
        OUTLINED_FUNCTION_11_2(v19);
        if (self->_flowUpscaleHighresUpscaleKernel)
        {
          v20 = [(VEMetalBase *)self createKernel:@"deblock"];
          OUTLINED_FUNCTION_11_2(v20);
          if (self->_deblockKernel)
          {
            v21 = [(VEMetalBase *)self createKernel:@"dilate_edge_map"];
            OUTLINED_FUNCTION_11_2(v21);
            if (self->_dilateEdgeMapKernel)
            {
              v22 = 1;
            }
          }
        }
      }
    }

    v3 = v12;
    v4 = v13;
    v5 = v14;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (int64_t)flowUpscalingFromImage:(id)a3 inputFlow:(id)a4 outputFlow:(id)a5 interleave_factor:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  v14 = 12;
  if (v10 && v11 && v12)
  {
    v15 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
    v16 = v15;
    if (!v15)
    {
      v14 = 9;
      goto LABEL_10;
    }

    [v15 enqueue];
    if (self->_imageGuideUpscale)
    {
      v17 = [(FlowUpscale *)self upscaleRefinedFloV2WithRGB:v10 lrFlow:v11 commandBuffer:v16 interleaveFactor:a6 output:v13];
      if (v17)
      {
LABEL_7:
        v14 = v17;
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      v17 = [(Backwarp_Ext *)self->_backwarp encodeUpscaleFlowToCommandBuffer:v16 source:v11 destination:v13];
      if (v17)
      {
        goto LABEL_7;
      }
    }

    [v16 commit];
    [(VEMetalBase *)self commandBufferWait:v16 flag:[(VEMetalBase *)self EnableGpuWaitForComplete]];

    v14 = 0;
    v16 = 0;
    goto LABEL_10;
  }

LABEL_11:

  return v14;
}

- (int64_t)upscaleRefinedFloV2WithRGB:(id)a3 lrFlow:(id)a4 commandBuffer:(id)a5 interleaveFactor:(unint64_t)a6 output:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = v14;
  v16 = 12;
  if (v11 && v12 && v14)
  {
    [v11 width];
    [v11 height];
    v17 = [OUTLINED_FUNCTION_22() encodeDownscaleImageToCommandBuffer:? input:? output:?];
    if (!v17)
    {
      v17 = [OUTLINED_FUNCTION_22() encodeComputeRGBandFlowEdgeToCommandBuffer:? rgb:? flow:? destination:? edgeThresh:?];
      if (!v17)
      {
        v17 = [OUTLINED_FUNCTION_22() encodeDilateEdgeMapToCommandBuffer:? input:? destination:?];
        if (!v17)
        {
          v18 = [OUTLINED_FUNCTION_22() encodeLowResClusterToCommandBuffer:self->_rgb1Texture lrFlow:self->_rgb2Texture lrImage:self->_internalResultTexture rgbFlowEdge:? flow1:? flow2:? rgb1:? rgb2:? internalResult:?];
          if (v18)
          {
            v16 = v18;
            goto LABEL_11;
          }

          v19 = [OUTLINED_FUNCTION_22() encodeHighUpscaleToCommandBuffer:self->_rgb1Texture lrFlow:self->_rgb2Texture rgbFlowEdge:self->_internalResultTexture hrImage:self->_internalHrFlowTexture flow1:? flow2:? rgb1:? rgb2:? internalResult:? hrFlow:?];
          if (v19)
          {
            v16 = v19;
            goto LABEL_11;
          }

          [v15 width];
          [v12 width];
          v17 = [OUTLINED_FUNCTION_22() encodeDeblockToCommandBuffer:? flow:? output:? upscaleFactor:?];
        }
      }
    }

    v16 = v17;
  }

LABEL_11:

  return v16;
}

- (int64_t)encodeDownscaleImageToCommandBuffer:(id)a3 input:(id)a4 output:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  v11 = 12;
  if (v8 && v9)
  {
    v12 = [a3 computeCommandEncoder];
    if (v12)
    {
      v13 = [v8 arrayLength];
      v14 = &OBJC_IVAR___FlowUpscale__downscalePackedImageKernel;
      if (v13 > 1)
      {
        v14 = &OBJC_IVAR___FlowUpscale__downscaleImageKernel;
      }

      [v12 setComputePipelineState:*(&self->super.super.isa + *v14)];
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_5();
      [v8 width];
      v15 = OUTLINED_FUNCTION_13([v10 width]);
      v23 = v15;
      v16 = (v15 * 0.5);
      if (v16 <= 1)
      {
        LOWORD(v16) = 1;
      }

      if (v15 > 6.0)
      {
        LOWORD(v16) = 3;
      }

      v22 = v16;
      [v12 setBytes:&v23 length:4 atIndex:0];
      [v12 setBytes:&v22 length:2 atIndex:1];
      v17 = ([v10 width] + 15) >> 4;
      [v10 height];
      OUTLINED_FUNCTION_8_0();
      v21[0] = v17;
      v21[1] = v18;
      v21[2] = 1;
      v20[2] = 1;
      [v12 dispatchThreadgroups:v21 threadsPerThreadgroup:{v20, *OUTLINED_FUNCTION_0_7().i64}];
      [v12 endEncoding];
      v11 = 0;
    }

    else
    {
      v11 = 9;
    }
  }

  return v11;
}

- (int64_t)encodeComputeRGBandFlowEdgeToCommandBuffer:(id)a3 rgb:(id)a4 flow:(id)a5 destination:(id)a6 edgeThresh:(float)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  v26 = a7;
  v16 = 12;
  if (v12 && v13 && v14)
  {
    v17 = [a3 computeCommandEncoder];
    if (v17)
    {
      v18 = [(MTLDevice *)self->super._device newBufferWithLength:4 options:0];
      *[v18 contents] = a7;
      [v12 width];
      v25 = OUTLINED_FUNCTION_13([v15 width]);
      [v13 width];
      v24 = OUTLINED_FUNCTION_13([v15 width]);
      [v17 setComputePipelineState:self->_computeRgbFlowEdgeKernel];
      [v17 setTexture:v12 atIndex:0];
      [v17 setTexture:v13 atIndex:1];
      [v17 setTexture:v15 atIndex:2];
      [v17 setBytes:&v26 length:4 atIndex:0];
      [v17 setBytes:&v25 length:4 atIndex:1];
      [v17 setBytes:&v24 length:4 atIndex:2];
      v19 = ([v15 width] + 15) >> 4;
      [v15 height];
      OUTLINED_FUNCTION_8_0();
      v23[0] = v19;
      v23[1] = v20;
      v23[2] = 1;
      v22[2] = 1;
      [v17 dispatchThreadgroups:v23 threadsPerThreadgroup:{v22, *OUTLINED_FUNCTION_0_7().i64}];
      [v17 endEncoding];

      v16 = 0;
    }

    else
    {
      v16 = 9;
    }
  }

  return v16;
}

- (int64_t)encodeDilateEdgeMapToCommandBuffer:(id)a3 input:(id)a4 destination:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  v11 = 12;
  if (v8 && v9)
  {
    v12 = [a3 computeCommandEncoder];
    v13 = v12;
    if (v12)
    {
      [v12 setComputePipelineState:self->_dilateEdgeMapKernel];
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_5();
      v14 = ([v10 width] + 15) >> 4;
      [v10 height];
      OUTLINED_FUNCTION_8_0();
      v18[0] = v14;
      v18[1] = v15;
      v18[2] = 1;
      v17[2] = 1;
      [v13 dispatchThreadgroups:v18 threadsPerThreadgroup:{v17, *OUTLINED_FUNCTION_0_7().i64}];
      [v13 endEncoding];
      v11 = 0;
    }

    else
    {
      v11 = 9;
    }
  }

  return v11;
}

- (int64_t)encodeLowResClusterToCommandBuffer:(id)a3 lrFlow:(id)a4 lrImage:(id)a5 rgbFlowEdge:(id)a6 flow1:(id)a7 flow2:(id)a8 rgb1:(id)a9 rgb2:(id)a10 internalResult:(id)a11
{
  v17 = a4;
  v18 = a5;
  v31 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = v23;
  v25 = 12;
  if (v17 && v18 && v31 && v19 && v20 && v21 && v22 && v23)
  {
    v26 = [a3 computeCommandEncoder];
    v27 = v26;
    if (v26)
    {
      [v26 setComputePipelineState:self->_flowUpscaleLowresClusterKernel];
      [v27 setTexture:v17 atIndex:0];
      [v27 setTexture:v18 atIndex:1];
      [v27 setTexture:v31 atIndex:2];
      [v27 setTexture:v19 atIndex:3];
      [v27 setTexture:v20 atIndex:4];
      [v27 setTexture:v21 atIndex:5];
      [v27 setTexture:v22 atIndex:6];
      [v27 setTexture:v24 atIndex:7];
      v28 = ([v17 width] + 15) >> 4;
      [v17 height];
      OUTLINED_FUNCTION_8_0();
      v34[0] = v28;
      v34[1] = v29;
      v34[2] = 1;
      v32 = vdupq_n_s64(0x10uLL);
      v33 = 1;
      [v27 dispatchThreadgroups:v34 threadsPerThreadgroup:&v32];
      [v27 endEncoding];
      v25 = 0;
    }

    else
    {
      v25 = 9;
    }
  }

  return v25;
}

- (int64_t)encodeHighUpscaleToCommandBuffer:(id)a3 lrFlow:(id)a4 rgbFlowEdge:(id)a5 hrImage:(id)a6 flow1:(id)a7 flow2:(id)a8 rgb1:(id)a9 rgb2:(id)a10 internalResult:(id)a11 hrFlow:(id)a12
{
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v33 = a7;
  v32 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v24 = v23;
  v25 = 12;
  if (v17)
  {
    v26 = v18;
    if (v18 && v19 && v33 && v32 && v20 && v21 && v22 && v23)
    {
      v27 = [a3 computeCommandEncoder];
      if (v27)
      {
        [v19 width];
        v38 = OUTLINED_FUNCTION_13([v17 width]);
        [v17 width];
        v37 = OUTLINED_FUNCTION_13([v19 width]);
        [v27 setComputePipelineState:self->_flowUpscaleHighresUpscaleKernel];
        [v27 setTexture:v19 atIndex:0];
        [v27 setTexture:v18 atIndex:1];
        [v27 setTexture:v33 atIndex:2];
        [v27 setTexture:v32 atIndex:3];
        [v27 setTexture:v20 atIndex:4];
        [v27 setTexture:v21 atIndex:5];
        [v27 setTexture:v22 atIndex:6];
        [v27 setTexture:v17 atIndex:7];
        [v27 setTexture:v24 atIndex:8];
        [v27 setBytes:&v38 length:4 atIndex:0];
        [v27 setBytes:&v37 length:4 atIndex:1];
        v28 = ([v24 width] + 15) >> 4;
        [v24 height];
        OUTLINED_FUNCTION_8_0();
        v36[0] = v28;
        v36[1] = v29;
        v36[2] = 1;
        v34 = vdupq_n_s64(0x10uLL);
        v35 = 1;
        [v27 dispatchThreadgroups:v36 threadsPerThreadgroup:&v34];
        [v27 endEncoding];
        v25 = 0;
      }

      else
      {
        v25 = 9;
      }
    }
  }

  else
  {
    v26 = v18;
  }

  return v25;
}

- (int64_t)encodeDeblockToCommandBuffer:(id)a3 flow:(id)a4 output:(id)a5 upscaleFactor:(int)a6
{
  v10 = a4;
  v11 = a5;
  v12 = v11;
  v13 = 12;
  if (v10 && v11)
  {
    v14 = [a3 computeCommandEncoder];
    if (v14)
    {
      v15 = [(MTLDevice *)self->super._device newBufferWithLength:4 options:0];
      *[v15 contents] = a6;
      [v14 setComputePipelineState:self->_deblockKernel];
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_5();
      [v14 setBuffer:v15 offset:0 atIndex:0];
      v16 = ([v12 width] + 15) >> 4;
      [v12 height];
      OUTLINED_FUNCTION_8_0();
      v20[0] = v16;
      v20[1] = v17;
      v20[2] = 1;
      v19[2] = 1;
      [v14 dispatchThreadgroups:v20 threadsPerThreadgroup:{v19, *OUTLINED_FUNCTION_0_7().i64}];
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

@end