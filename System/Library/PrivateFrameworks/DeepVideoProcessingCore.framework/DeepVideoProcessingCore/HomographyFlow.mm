@interface HomographyFlow
- (BOOL)createModules;
- (BOOL)setupMetal;
- (HomographyFlow)initWithDevice:(id)a3 commmandQueue:(id)a4;
- (double)convertHomographyWithFactor:(simd_float3x3)a1 input:(float32x4_t)a2;
- (float)sumUpStat:(id)a3 bufferLength:(unint64_t)a4;
- (id)createOutputBufferWidth:(unint64_t)a3 height:(unint64_t)a4 channels:(unint64_t)a5;
- (int)analyzeRegionalFlowInformation:(id)a3 depth:(id)a4 quart1_angle:(_regional_flow_directions *)a5 quart2_angle:(_regional_flow_directions *)a6 quart3_angle:(_regional_flow_directions *)a7 quart4_angle:(_regional_flow_directions *)a8 depth_angle:(_regional_flow_directions *)a9;
- (int64_t)bindInternalTextureFromFirst:(__CVBuffer *)a3 warpedFirst:(__CVBuffer *)a4;
- (int64_t)encodeAnalyzeOcclusionRegionToCommandBuffer:(id)a3 flow:(id)a4 depth:(id)a5 countBuffer:(id)a6 vxBuffer:(id)a7 vyBuffer:(id)a8 threadsPerGroup:(id *)a9 numThreadgroups:(id *)a10;
- (int64_t)encodeAnalyzeRegionalFlowInfoToCommandBuffer:(id)a3 flow:(id)a4 range:(_regional_range)a5 countBuffer:(id)a6 vxBuffer:(id)a7 vyBuffer:(id)a8 threadsPerGroup:(id *)a9 numThreadgroups:(id *)a10;
- (uint64_t)encodeBackWarpToCommandBuffer:(uint64_t)a1 reference:(uint64_t)a2 ToOutput:(uint64_t)a3 withHomography:(void *)a4;
- (uint64_t)encodeCombineFlowToCommandBuffer:(__n128)a3 input:(__n128)a4 homography:(uint64_t)a5 baseWarp:(void *)a6 destination:(void *)a7;
- (uint64_t)encodeCorrectFlowToCommandBuffer:(uint64_t)a1 input:(uint64_t)a2 refFlow:(uint64_t)a3 homography:(void *)a4;
- (uint64_t)postprocessFlowWithhomographyMatrix21:(double)a3 matrix12:(double)a4 inputForwardFlow:(double)a5 inputBackwardFlow:(double)a6 outputForwardFlow:(double)a7 outputBackwardFlow:(float)a8 downscaleFacttor:(uint64_t)a9;
- (uint64_t)proprocessFirst:(double)a3 warpedFirst:(double)a4 withHomography:(uint64_t)a5;
- (void)dealloc;
@end

@implementation HomographyFlow

- (void)dealloc
{
  warpedFirstTexture = self->_warpedFirstTexture;
  self->_warpedFirstTexture = 0;

  firstTexture = self->_firstTexture;
  self->_firstTexture = 0;

  v5.receiver = self;
  v5.super_class = HomographyFlow;
  [(HomographyFlow *)&v5 dealloc];
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

- (double)convertHomographyWithFactor:(simd_float3x3)a1 input:(float32x4_t)a2
{
  v11 = a1.columns[2];
  v9 = a1.columns[1];
  v2 = *(MEMORY[0x277D860B0] + 16);
  v2.i32[1] = a1.columns[0].i32[0];
  a1.columns[0].i32[1] = HIDWORD(*MEMORY[0x277D860B0]);
  a1.columns[0].i32[2] = *(MEMORY[0x277D860B0] + 8);
  v14 = a1.columns[0];
  a1.columns[0].i32[3] = HIDWORD(*MEMORY[0x277D860B0]);
  a1.columns[2] = *(MEMORY[0x277D860B0] + 32);
  v2.i32[2] = *(MEMORY[0x277D860B0] + 24);
  v12 = a1.columns[2];
  v13 = v2;
  a1.columns[1] = v2;
  a1.columns[1].i32[3] = HIDWORD(*(MEMORY[0x277D860B0] + 16));
  v19 = __invert_f3(a1);
  v3 = 0;
  v19.columns[0].i32[3] = 0;
  v19.columns[1].i32[3] = 0;
  v19.columns[2].i32[3] = 0;
  v15 = v19;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  do
  {
    *(&v16 + v3 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, COERCE_FLOAT(*&v15.columns[v3])), v11, *v15.columns[v3].f32, 1), a2, v15.columns[v3], 2);
    ++v3;
  }

  while (v3 != 3);
  v4 = 0;
  v5 = v16;
  v6 = v17;
  v5.i32[3] = 0;
  v6.i32[3] = 0;
  v7 = v18;
  v7.i32[3] = 0;
  v15.columns[0] = v5;
  v15.columns[1] = v6;
  v15.columns[2] = v7;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  do
  {
    *(&v16 + v4 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(*&v15.columns[v4])), v13, *v15.columns[v4].f32, 1), v12, v15.columns[v4], 2);
    ++v4;
  }

  while (v4 != 3);
  *&result = vmulq_n_f32(v16, 1.0 / v18.f32[2]).u64[0];
  return result;
}

- (id)createOutputBufferWidth:(unint64_t)a3 height:(unint64_t)a4 channels:(unint64_t)a5
{
  v5 = [(MTLDevice *)self->super._device newBufferWithLength:(4 * (a3 * ((a4 + 15) & 0x3FFFFFFFFFFFFFF0) + a3 * ((a4 + 15) & 0x3FFFFFFFFFFFFFF0) * a5) + 4095) & 0xFFFFFFFFFFFFF000 options:0];

  return v5;
}

- (float)sumUpStat:(id)a3 bufferLength:(unint64_t)a4
{
  v5 = [a3 contents];
  result = 0.0;
  if (a4)
  {
    v7 = 1;
    do
    {
      v8 = *v5++;
      result = result + v8;
      v9 = v7++;
    }

    while (v9 < a4);
  }

  return result;
}

- (int)analyzeRegionalFlowInformation:(id)a3 depth:(id)a4 quart1_angle:(_regional_flow_directions *)a5 quart2_angle:(_regional_flow_directions *)a6 quart3_angle:(_regional_flow_directions *)a7 quart4_angle:(_regional_flow_directions *)a8 depth_angle:(_regional_flow_directions *)a9
{
  v88 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = v12;
  if (!v11)
  {
    v28 = -1;
    goto LABEL_44;
  }

  v56 = v12;
  v14 = [v11 width];
  v15 = [v11 height];
  v75 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  v16 = 0;
  v87 = 0;
  memset(v86, 0, sizeof(v86));
  v85 = 0;
  memset(v84, 0, sizeof(v84));
  v83 = 0;
  memset(v82, 0, sizeof(v82));
  v70 = (v15 + 7) >> 3;
  v71 = (v14 + 7) >> 3;
  v74 = v70 * v71;
  v72 = 4 * v70 * v71;
  v64 = (v14 * 0.1);
  v61 = (v14 * 0.899999999);
  v62 = v15;
  v63 = v14;
  v60 = v61 & 0xFFFFFFFF0000FFFFLL | (v14 << 16);
  v58 = (v15 * 0.899999999) << 32;
  v59 = (v14 * 0.1) << 16;
  v57 = v58 | (v15 << 48);
  v69 = vdupq_n_s64(8uLL);
  v73 = v11;
  do
  {
    if (v16 == 2)
    {
      v76 = 0;
      v18 = 0;
      v20 = 0;
      v19 = 0;
      *&a7->range.min_x = v64 << 48;
      a7->range.horizontal = 0;
      v17 = v64;
    }

    else if (v16 == 1)
    {
      v17 = 0;
      v18 = 0;
      v19 = v61;
      *&a6->range.min_x = v60;
      a6->range.horizontal = 1;
      v76 = 1;
      v20 = v63;
    }

    else if (v16)
    {
      v76 = 0;
      v20 = 0;
      v19 = 0;
      v18 = v58;
      *&a8->range.min_x = v57;
      a8->range.horizontal = 0;
      v17 = v62;
    }

    else
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = v64;
      *&a5->range.min_x = v59;
      a5->range.horizontal = 1;
      v76 = 1;
    }

    v21 = [(MTLDevice *)self->super._device newBufferWithLength:v72 options:0];
    v22 = v86[v16];
    v86[v16] = v21;

    v23 = [(MTLDevice *)self->super._device newBufferWithLength:v72 options:0];
    v24 = *(v84 + v16);
    *(v84 + v16) = v23;

    v25 = [(MTLDevice *)self->super._device newBufferWithLength:v72 options:0];
    v26 = *(v82 + v16);
    *(v82 + v16) = v25;

    if (v16 == 4)
    {
      v13 = v56;
      if (v56)
      {
        v80 = vdupq_n_s64(8uLL);
        v81 = 1;
        v77 = v71;
        v78 = v70;
        v79 = 1;
        v11 = v73;
        if ([(HomographyFlow *)self encodeAnalyzeOcclusionRegionToCommandBuffer:v75 flow:v73 depth:v56 countBuffer:v21 vxBuffer:v23 vyBuffer:v25 threadsPerGroup:&v80 numThreadgroups:&v77])
        {
          v28 = -1;
          goto LABEL_37;
        }

        [v75 commit];
        [v75 waitUntilCompleted];
        [(HomographyFlow *)self sumUpStat:v87 bufferLength:v74];
        v30 = v29 + 0.1;
        [(HomographyFlow *)self sumUpStat:v85 bufferLength:v74];
        v32 = v31;
        [(HomographyFlow *)self sumUpStat:v83 bufferLength:v74];
        v34 = v33 / v30;
        v35 = v32 / v30;
        v36 = atan2f(v33 / v30, v32 / v30);
        v37 = (fabsf(v35) + fabsf(v34)) > 0.6;
        v28 = v30 > 100.0 && v37;
      }

      else
      {
        [v75 commit];
        [v75 waitUntilCompleted];
        v28 = 0;
        v36 = 0.0;
        v11 = v73;
      }

      v38 = 0;
      v39 = -2.0;
      while (1)
      {
        [(HomographyFlow *)self sumUpStat:v86[v38] bufferLength:v74];
        v41 = v40 + 0.1;
        [(HomographyFlow *)self sumUpStat:*(v84 + v38) bufferLength:v74];
        v43 = v42;
        [(HomographyFlow *)self sumUpStat:*(v82 + v38) bufferLength:v74];
        v45 = v44 / v41;
        v46 = v43 / v41;
        v47 = atan2f(v45, v46);
        v48 = fabsf(v46) + fabsf(v45);
        if (v38 > 1)
        {
          if (v38 != 2)
          {
            v49 = a8;
            p_variance = &a8->variance;
            if (v48 <= 0.7)
            {
              goto LABEL_31;
            }

LABEL_30:
            v49->angle = v47;
            goto LABEL_31;
          }

          v49 = a7;
          p_variance = &a7->variance;
          if (v48 > 0.7)
          {
            goto LABEL_30;
          }
        }

        else if (v38)
        {
          v49 = a6;
          p_variance = &a6->variance;
          if (v48 > 0.7)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v49 = a5;
          p_variance = &a5->variance;
          if (v48 > 0.7)
          {
            goto LABEL_30;
          }
        }

LABEL_31:
        *p_variance = v48;
        if (v28)
        {
          if (v48 > 0.7)
          {
            v51 = cosf(v47 - v36);
            if (v51 > v39)
            {
              a9->angle = v47;
              a9->variance = v48;
              v39 = v51;
            }
          }
        }

        if (++v38 == 4)
        {
          goto LABEL_36;
        }
      }
    }

    v80 = v69;
    v81 = 1;
    v77 = v71;
    v78 = v70;
    v79 = 1;
    v27 = v18 | (v17 << 48) | (v20 << 16) | v19;
    v11 = v73;
    ++v16;
  }

  while (![(HomographyFlow *)self encodeAnalyzeRegionalFlowInfoToCommandBuffer:v75 flow:v73 range:v27 countBuffer:v76 vxBuffer:v21 vyBuffer:v23 threadsPerGroup:v25 numThreadgroups:&v80, &v77]);
  v28 = -1;
LABEL_36:
  v13 = v56;
LABEL_37:
  for (i = 32; i != -8; i -= 8)
  {
  }

  for (j = 32; j != -8; j -= 8)
  {
  }

  for (k = 4; k != -1; --k)
  {
  }

LABEL_44:
  return v28;
}

- (HomographyFlow)initWithDevice:(id)a3 commmandQueue:(id)a4
{
  v13.receiver = self;
  v13.super_class = HomographyFlow;
  v4 = [(VEMetalBase *)&v13 initWithDevice:a3 commmandQueue:a4];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 pathForResource:@"opticalFlowMetalLib.metallib" ofType:0];
  v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v6];
  v8 = [(MTLDevice *)v4->super._device newLibraryWithURL:v7 error:0];
  mtlLibrary = v4->super._mtlLibrary;
  v4->super._mtlLibrary = v8;

  if (![(HomographyFlow *)v4 createModules])
  {

    goto LABEL_6;
  }

  v10 = [(HomographyFlow *)v4 setupMetal];

  if (!v10)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v11 = v4;
LABEL_7:

  return v11;
}

- (BOOL)setupMetal
{
  v3 = [(VEMetalBase *)self createKernel:@"backwarpWithHomography"];
  OUTLINED_FUNCTION_6(v3);
  result = 0;
  if (self->_backwarpWithHomographyKernel)
  {
    v4 = [(VEMetalBase *)self createKernel:@"combineWithHomography"];
    OUTLINED_FUNCTION_6(v4);
    if (self->_PWCflowWithHomographyKernel)
    {
      v5 = [(VEMetalBase *)self createKernel:@"correctFlowWithHomography"];
      OUTLINED_FUNCTION_6(v5);
      if (self->_correctFlowWithHomographyKernel)
      {
        v6 = [(VEMetalBase *)self createKernel:@"collectRegionalFlowInfo"];
        OUTLINED_FUNCTION_6(v6);
        if (self->_collectRegionalFlowInfoKernel)
        {
          v7 = [(VEMetalBase *)self createKernel:@"collectOcclusionRegionFlowInfo"];
          OUTLINED_FUNCTION_6(v7);
          if (self->_collectOcclusionRegionFlowInfoKernel)
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

- (int64_t)bindInternalTextureFromFirst:(__CVBuffer *)a3 warpedFirst:(__CVBuffer *)a4
{
  if (self->_textureBinded)
  {
    v7 = checkTextureBoundBuffer(self->_firstTexture, a3);
    self->_textureBinded = v7;
    if (v7)
    {
      return 0;
    }
  }

  else
  {
    self->_textureBinded = 0;
  }

  v9 = createRGBATextureFromCVPixelBuffer(a3, self->super._device);
  firstTexture = self->_firstTexture;
  self->_firstTexture = v9;

  if (!self->_firstTexture)
  {
    return 9;
  }

  v11 = createRGBATextureFromCVPixelBuffer(a4, self->super._device);
  warpedFirstTexture = self->_warpedFirstTexture;
  self->_warpedFirstTexture = v11;

  if (!self->_firstTexture)
  {
    return 9;
  }

  result = 0;
  self->_textureBinded = 1;
  return result;
}

- (uint64_t)postprocessFlowWithhomographyMatrix21:(double)a3 matrix12:(double)a4 inputForwardFlow:(double)a5 inputBackwardFlow:(double)a6 outputForwardFlow:(double)a7 outputBackwardFlow:(float)a8 downscaleFacttor:(uint64_t)a9
{
  v13 = 12;
  if (a10 && a11 && a12 && a13)
  {
    v16 = [a1[3] commandBuffer];
    OUTLINED_FUNCTION_7();
    v21 = createTexturesFromCVPixelBuffer(v17, v18, v19, v20);
    if (v21)
    {
      OUTLINED_FUNCTION_7();
      v26 = createTexturesFromCVPixelBuffer(v22, v23, v24, v25);
      if (v26)
      {
        OUTLINED_FUNCTION_7();
        v31 = createTexturesFromCVPixelBuffer(v27, v28, v29, v30);
        if (v31)
        {
          OUTLINED_FUNCTION_7();
          v36 = createTexturesFromCVPixelBuffer(v32, v33, v34, v35);
          if (v36)
          {
            *&v37 = a8;
            [a1 convertHomographyWithFactor:v37 input:{a2, a3, a4}];
            v50 = v39;
            v52 = v38;
            v48 = v40;
            *&v38 = a8;
            [a1 convertHomographyWithFactor:v38 input:{a5, a6, a7}];
            v41 = [OUTLINED_FUNCTION_1_6() encodeCombineFlowToCommandBuffer:v52 input:v50 homography:v48 baseWarp:? destination:?];
            if (v41 || (v42 = OUTLINED_FUNCTION_1_6(), v56 = v44, v58 = v43, v54 = v45, (v41 = [v42 encodeCombineFlowToCommandBuffer:? input:? homography:? baseWarp:? destination:?]) != 0) || (v41 = objc_msgSend(OUTLINED_FUNCTION_1_6(), "encodeCorrectFlowToCommandBuffer:input:refFlow:homography:", v52, v50, v48)) != 0)
            {
              v13 = v41;
            }

            else
            {
              v13 = [OUTLINED_FUNCTION_1_6() encodeCorrectFlowToCommandBuffer:v58 input:v56 refFlow:v54 homography:?];
              if (!v13)
              {
                [v16 commit];
                [OUTLINED_FUNCTION_1_6() commandBufferWait:? flag:?];
              }
            }
          }

          else
          {
            v13 = 9;
          }
        }

        else
        {
          v13 = 9;
        }
      }

      else
      {
        v13 = 9;
      }
    }

    else
    {
      v13 = 9;
    }
  }

  return v13;
}

- (uint64_t)proprocessFirst:(double)a3 warpedFirst:(double)a4 withHomography:(uint64_t)a5
{
  v10 = [*(a1 + 24) commandBuffer];
  v11 = [a1 bindInternalTextureFromFirst:a6 warpedFirst:a7];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = [a1 encodeBackWarpToCommandBuffer:v10 reference:*(a1 + 88) ToOutput:*(a1 + 80) withHomography:{a2, a3, a4}];
    if (!v12)
    {
      [v10 commit];
      [a1 commandBufferWait:v10 flag:{objc_msgSend(a1, "EnableGpuWaitForComplete")}];

      v10 = 0;
    }
  }

  return v12;
}

- (uint64_t)encodeBackWarpToCommandBuffer:(uint64_t)a1 reference:(uint64_t)a2 ToOutput:(uint64_t)a3 withHomography:(void *)a4
{
  v7 = OUTLINED_FUNCTION_2_2(a1, a2, a3, a4);
  v8 = v4;
  v9 = v8;
  v10 = 12;
  if (v7 && v8)
  {
    v11 = [v5 computeCommandEncoder];
    v19 = v11;
    if (v11)
    {
      [v11 setComputePipelineState:{*(v6 + 48), OUTLINED_FUNCTION_8(v11, v12, v13, v14, v15, v16, v17, v18, v32, v34, v36, v38, v40).n128_f64[0]}];
      OUTLINED_FUNCTION_3_2();
      v20 = OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_4_0(v20, v21, v47);
      [v9 width];
      v22 = [v9 height];
      OUTLINED_FUNCTION_0_5(v22, v23, v24, v25, v26, v27, v28, v29, v33, v35, v37, v39, v41, v42, v30, v43, v44, v45, v46);
      [v19 endEncoding];
      v10 = 0;
    }

    else
    {
      v10 = 9;
    }
  }

  return v10;
}

- (uint64_t)encodeCombineFlowToCommandBuffer:(__n128)a3 input:(__n128)a4 homography:(uint64_t)a5 baseWarp:(void *)a6 destination:(void *)a7
{
  v13 = a7;
  v14 = a9;
  v15 = v14;
  v16 = 12;
  if (v13 && v14)
  {
    v17 = [a6 computeCommandEncoder];
    v18 = v17;
    if (v17)
    {
      [v17 setComputePipelineState:*(a1 + 56)];
      OUTLINED_FUNCTION_3_2();
      v19 = OUTLINED_FUNCTION_5();
      v29[0] = a2;
      v29[1] = a3;
      v29[2] = a4;
      OUTLINED_FUNCTION_4_0(v19, v20, v29);
      v28 = a8;
      [v18 setBytes:&v28 length:4 atIndex:1];
      v27[0] = ([v15 width] + 15) >> 4;
      v27[1] = ([v15 height] + 15) >> 4;
      v27[2] = 1;
      v25 = vdupq_n_s64(0x10uLL);
      v26 = 1;
      [v18 dispatchThreadgroups:v27 threadsPerThreadgroup:&v25];
      [v18 endEncoding];
      v16 = 0;
    }

    else
    {
      v16 = 9;
    }
  }

  return v16;
}

- (uint64_t)encodeCorrectFlowToCommandBuffer:(uint64_t)a1 input:(uint64_t)a2 refFlow:(uint64_t)a3 homography:(void *)a4
{
  v7 = OUTLINED_FUNCTION_2_2(a1, a2, a3, a4);
  v8 = v4;
  v9 = v8;
  v10 = 12;
  if (v7 && v8)
  {
    v11 = [v5 computeCommandEncoder];
    v12 = v11;
    if (v11)
    {
      [v11 setComputePipelineState:*(v6 + 64)];
      OUTLINED_FUNCTION_3_2();
      v13 = OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_8(v13, v14, v15, v16, v17, v18, v19, v20, v33, v35, v37, v39, v41);
      OUTLINED_FUNCTION_4_0(v21, v22, v48);
      [v7 width];
      v23 = [v7 height];
      OUTLINED_FUNCTION_0_5(v23, v24, v25, v26, v27, v28, v29, v30, v34, v36, v38, v40, v42, v43, v31, v44, v45, v46, v47);
      [v12 endEncoding];
      v10 = 0;
    }

    else
    {
      v10 = 9;
    }
  }

  return v10;
}

- (int64_t)encodeAnalyzeRegionalFlowInfoToCommandBuffer:(id)a3 flow:(id)a4 range:(_regional_range)a5 countBuffer:(id)a6 vxBuffer:(id)a7 vyBuffer:(id)a8 threadsPerGroup:(id *)a9 numThreadgroups:(id *)a10
{
  v25 = a5;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = v17;
  v19 = 12;
  if (v14 && v15 && v16 && v17)
  {
    v20 = [a3 computeCommandEncoder];
    v21 = v20;
    if (v20)
    {
      [v20 setComputePipelineState:self->_collectRegionalFlowInfoKernel];
      [v21 setTexture:v14 atIndex:0];
      [v21 setBuffer:v15 offset:0 atIndex:0];
      [v21 setBuffer:v16 offset:0 atIndex:1];
      [v21 setBuffer:v18 offset:0 atIndex:2];
      [v21 setBytes:&v25 length:10 atIndex:3];
      v24 = *a10;
      v23 = *a9;
      [v21 dispatchThreadgroups:&v24 threadsPerThreadgroup:&v23];
      [v21 endEncoding];
      v19 = 0;
    }

    else
    {
      v19 = 9;
    }
  }

  return v19;
}

- (int64_t)encodeAnalyzeOcclusionRegionToCommandBuffer:(id)a3 flow:(id)a4 depth:(id)a5 countBuffer:(id)a6 vxBuffer:(id)a7 vyBuffer:(id)a8 threadsPerGroup:(id *)a9 numThreadgroups:(id *)a10
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = v20;
  v22 = 12;
  if (v16 && v17 && v18 && v19 && v20)
  {
    v23 = [a3 computeCommandEncoder];
    v24 = v23;
    if (v23)
    {
      [v23 setComputePipelineState:self->_collectOcclusionRegionFlowInfoKernel];
      v25 = [v17 width];
      v29 = v25 / [v16 width];
      [v24 setTexture:v16 atIndex:0];
      [v24 setTexture:v17 atIndex:1];
      [v24 setBuffer:v18 offset:0 atIndex:0];
      [v24 setBuffer:v19 offset:0 atIndex:1];
      [v24 setBuffer:v21 offset:0 atIndex:2];
      [v24 setBytes:&v29 length:4 atIndex:3];
      v28 = *a10;
      v27 = *a9;
      [v24 dispatchThreadgroups:&v28 threadsPerThreadgroup:&v27];
      [v24 endEncoding];
      v22 = 0;
    }

    else
    {
      v22 = 9;
    }
  }

  return v22;
}

@end