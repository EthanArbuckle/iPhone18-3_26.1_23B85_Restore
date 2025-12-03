@interface HazeEstimation
- (HazeEstimation)initWithMetalContext:(id)context;
- (SourceROI)hazeROI;
- (__n128)calculateHazeValues:(uint64_t)values pixels:(int)pixels thresh:(float32x4_t *)thresh properties:(void *)properties;
- (int)allocInternalData;
- (int)configure;
- (int)createShaders;
- (int)estimateHaze:(HazeEstimation *)self;
- (int)prepareThumbnail;
- (int)run;
- (uint64_t)allocInternalData;
- (uint64_t)createShaders;
- (void)prepareThumbnail;
@end

@implementation HazeEstimation

- (int)createShaders
{
  v3 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"Haze::hazeThumbnailGeneration" constants:0];
  computePipelineHazeThumbnailGeneration = self->_computePipelineHazeThumbnailGeneration;
  self->_computePipelineHazeThumbnailGeneration = v3;

  if (self->_computePipelineHazeThumbnailGeneration)
  {
    return 0;
  }

  [(HazeEstimation *)&v6 createShaders];
  return v6;
}

- (int)configure
{
  *self->_anon_28 = 0xC000000120;
  self->_hazeConfigured = 1;
  return 0;
}

- (int)allocInternalData
{
  allocator = [(FigMetalContext *)self->_metalContext allocator];
  newTextureDescriptor = [allocator newTextureDescriptor];

  if (!newTextureDescriptor)
  {
    [(HazeEstimation *)&v20 allocInternalData];
LABEL_11:
    v18 = v20;
    goto LABEL_6;
  }

  FigMetalDecRef();
  FigMetalDecRef();
  if (!self->_hazeConfigured)
  {
    [(HazeEstimation *)&v20 allocInternalData];
    goto LABEL_11;
  }

  desc = [newTextureDescriptor desc];
  [desc setTextureType:2];

  v6 = *self->_anon_28;
  desc2 = [newTextureDescriptor desc];
  [desc2 setWidth:v6];

  v8 = *&self->_anon_28[4];
  desc3 = [newTextureDescriptor desc];
  [desc3 setHeight:v8];

  desc4 = [newTextureDescriptor desc];
  [desc4 setDepth:1];

  desc5 = [newTextureDescriptor desc];
  [desc5 setUsage:7];

  desc6 = [newTextureDescriptor desc];
  [desc6 setPixelFormat:115];

  [newTextureDescriptor setLabel:@"haze_estimation_thumbnail_tex"];
  allocator2 = [(FigMetalContext *)self->_metalContext allocator];
  v14 = [allocator2 newTextureWithDescriptor:newTextureDescriptor];
  thumbnailTexture = self->_thumbnailTexture;
  self->_thumbnailTexture = v14;

  if (!self->_thumbnailTexture)
  {
    [(HazeEstimation *)&v20 allocInternalData];
    goto LABEL_11;
  }

  v16 = [(MTLDevice *)self->_device newBufferWithLength:884784 options:0];
  hazeInternalBuffer = self->_hazeInternalBuffer;
  self->_hazeInternalBuffer = v16;

  if (!self->_hazeInternalBuffer)
  {
    [(HazeEstimation *)&v20 allocInternalData];
    goto LABEL_11;
  }

  v18 = 0;
LABEL_6:

  return v18;
}

- (HazeEstimation)initWithMetalContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    FigDebugAssert3();
    v20 = 0;
    v19 = 0;
    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

LABEL_13:
    v9 = 0;
    goto LABEL_7;
  }

  objc_storeStrong(&self->_metalContext, context);
  device = [contextCopy device];
  device = self->_device;
  self->_device = device;

  v18.receiver = self;
  v18.super_class = HazeEstimation;
  v8 = [(HazeEstimation *)&v18 init];
  v9 = v8;
  if (!v8)
  {
    [HazeEstimation initWithMetalContext:];
    goto LABEL_7;
  }

  createShaders = [(HazeEstimation *)v8 createShaders];
  if (createShaders)
  {
    [(HazeEstimation *)createShaders initWithMetalContext:v9];
    goto LABEL_13;
  }

  v11 = objc_opt_new();
  hazeProperties = v9->_hazeProperties;
  v9->_hazeProperties = v11;

  if (!v9->_hazeProperties)
  {
    [HazeEstimation initWithMetalContext:v9];
    goto LABEL_13;
  }

  v9->_hazeConfigured = 0;
  configure = [(HazeEstimation *)v9 configure];
  if (configure)
  {
    [(HazeEstimation *)configure initWithMetalContext:v9];
    goto LABEL_13;
  }

  commandQueue = [(FigMetalContext *)v9->_metalContext commandQueue];
  commandQueue = v9->_commandQueue;
  v9->_commandQueue = commandQueue;

LABEL_7:
  return v9;
}

- (int)run
{
  allocInternalData = [(HazeEstimation *)self allocInternalData];
  if (allocInternalData)
  {
    v5 = allocInternalData;
    [HazeEstimation run];
  }

  else
  {
    prepareThumbnail = [(HazeEstimation *)self prepareThumbnail];
    if (prepareThumbnail)
    {
      v5 = prepareThumbnail;
      [HazeEstimation run];
    }

    else
    {
      v5 = [(HazeEstimation *)self estimateHaze:[(MTLBuffer *)self->_hazeInternalBuffer contents]+ 48];
      if (v5)
      {
        [HazeEstimation run];
      }
    }
  }

  FigMetalDecRef();
  FigMetalDecRef();
  return v5;
}

- (int)prepareThumbnail
{
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v4 = commandBuffer;
  if (!commandBuffer)
  {
    [HazeEstimation prepareThumbnail];
LABEL_7:
    v9 = -1;
    goto LABEL_4;
  }

  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    [HazeEstimation prepareThumbnail];
    goto LABEL_7;
  }

  v6 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:self->_computePipelineHazeThumbnailGeneration];
  [v6 setTexture:self->_inputRGBTexture atIndex:0];
  [v6 setTexture:self->_thumbnailTexture atIndex:1];
  [v6 setBuffer:self->_hazeInternalBuffer offset:48 atIndex:0];
  [v6 setBytes:&self->_hazeROI length:16 atIndex:1];
  v7 = *self->_anon_28;
  *&v8 = v7;
  *(&v8 + 1) = HIDWORD(v7);
  v13 = v8;
  v14 = 1;
  v11 = vdupq_n_s64(0x20uLL);
  v12 = 1;
  [v6 dispatchThreads:&v13 threadsPerThreadgroup:&v11];
  [v6 endEncoding];

  v9 = 0;
LABEL_4:
  [v4 commit];
  [v4 waitUntilCompleted];

  return v9;
}

- (int)estimateHaze:(HazeEstimation *)self
{
  v3 = v2;
  [(HazeProperties *)self->_hazeProperties maxHazePercentile];
  v6 = ((v5 * 55296.0) * 0.25);
  v7 = malloc_type_malloc(16 * v6, 0x1000040451B5BE8uLL);
  v8 = v7;
  if (v7)
  {
    memcpy(v7, v3, 16 * v6);
    qsort(v8, v6, 0x10uLL, compareFloat4Luma);
    v9 = 0uLL;
    if (v6 < 1)
    {
      goto LABEL_6;
    }

    v10 = v6;
    v11 = v3;
    do
    {
      v12 = *v11++;
      v9 = vaddq_f32(v9, v12);
      --v10;
    }

    while (v10);
    if (v6 <= 55295)
    {
LABEL_6:
      v13 = v6;
      do
      {
        v14 = v3[v13];
        if (v14.f32[3] <= *(v8 + 4 * v6 - 1) && v6 >= 1)
        {
          v16 = v6;
          v17 = v8;
          v18 = v6 - 1;
          while (v14.f32[3] >= v17[3])
          {
            --v18;
            v17 += 4;
            if (!--v16)
            {
              goto LABEL_16;
            }
          }

          v25 = v3[v13];
          v26 = v9;
          memmove(v17 + 4, v17, 16 * v18);
          v14 = v25;
          v9 = v26;
          *v17 = v3[v13];
        }

LABEL_16:
        v9 = vaddq_f32(v9, v14);
        ++v13;
      }

      while (v13 != 55296);
    }

    v19 = vminvq_f32(vdivq_f32(v9, vdupq_n_s32(0x47580000u)));
    [(HazeProperties *)self->_hazeProperties haze_threshold_divider:*&v25];
    *&v21 = v19 / v20;
    [(HazeEstimation *)self calculateHazeValues:v6 pixels:v8 thresh:self->_hazeProperties properties:v21];
    v22 = 0;
    *self->_hazeValue = v23;
  }

  else
  {
    [HazeEstimation estimateHaze:];
    v22 = -1;
  }

  free(v8);
  return v22;
}

- (__n128)calculateHazeValues:(uint64_t)values pixels:(int)pixels thresh:(float32x4_t *)thresh properties:(void *)properties
{
  propertiesCopy = properties;
  pixelsCopy = pixels;
  v12 = 0uLL;
  if (pixels >= 1)
  {
    pixelsCopy2 = pixels;
    threshCopy = thresh;
    do
    {
      v15 = *threshCopy++;
      v63 = v12;
      [propertiesCopy sr_pow];
      v10 = _simd_pow_f4(v15, vdupq_lane_s32(v16, 0));
      v12 = vaddq_f32(v63, v10);
      --pixelsCopy2;
    }

    while (pixelsCopy2);
  }

  v10.f32[0] = pixels;
  v64 = vdupq_lane_s32(*v10.f32, 0);
  xa = vdivq_f32(v12, v64);
  [propertiesCopy sr_pow];
  *v18.i32 = 1.0 / v17;
  v19 = _simd_pow_f4(xa, vdupq_lane_s32(v18, 0));
  v20 = 0uLL;
  if (pixels >= 1)
  {
    do
    {
      v21 = *thresh++;
      v22 = vsubq_f32(v21, v19);
      v20 = vmlaq_f32(v20, v22, v22);
      --pixelsCopy;
    }

    while (pixelsCopy);
  }

  xb = vsqrtq_f32(vdivq_f32(v20, v64));
  v65 = v19;
  [propertiesCopy sr_var];
  v66 = vmlsq_lane_f32(v65, xb, v23, 0);
  [propertiesCopy min_display_black];
  v25 = v24;
  [propertiesCopy evmExpRatio];
  *v27.i32 = v25 * v26;
  v28 = vsubq_f32(v66, vdupq_lane_s32(v27, 0));
  v67 = vdupq_n_s32(0x358637BDu);
  x = vmaxnmq_f32(v28, v67);
  [propertiesCopy evtBkt];
  v30 = v29 * vmuls_lane_f32(256.0, x, 3);
  [propertiesCopy reluC1];
  v32 = v31;
  [propertiesCopy reluC2];
  v34 = v33;
  [propertiesCopy reluC3];
  v36 = (v35 * self) * 1024.0;
  [propertiesCopy reluC4];
  *&v38 = *&v38 * 1024.0;
  if (v30 < v36)
  {
    v39 = (v32 * self) * 1024.0;
    if (v30 <= v39)
    {
      *&v38 = v34 * 1024.0;
    }

    else
    {
      *&v38 = (v34 * 1024.0) + (((*&v38 - (v34 * 1024.0)) / (v36 - v39)) * (v30 - v39));
    }
  }

  *&v38 = *&v38 * 0.00097656;
  [propertiesCopy reluC1];
  v41 = v40 * self;
  [propertiesCopy reluC5];
  v43 = v41 * v42;
  [propertiesCopy reluC2];
  *v45.i32 = v43 * (v44 - v56);
  v57 = vmlaq_n_f32(vdupq_lane_s32(v45, 0), x, v56);
  v46 = fminf(fminf(v57.f32[0], v57.f32[2]), v57.f32[1]);
  [propertiesCopy sr_sat];
  *&v48 = fmax(((fmaxf(fmaxf(v57.f32[0], v57.f32[2]), v57.f32[1]) / v46) - v47), 1.0);
  *v48.i32 = *v48.i32;
  xc = v48;
  [propertiesCopy sr_min];
  *v50.i32 = v49 * v46;
  v58 = vsubq_f32(v57, vdupq_lane_s32(v50, 0));
  [propertiesCopy min_display_black];
  v52 = v51;
  [propertiesCopy evmExpRatio];
  *v54.i32 = v52 * v53;
  v68 = vdivq_f32(vmaxnmq_f32(vsubq_f32(v58, vdupq_lane_s32(v54, 0)), v67), vdupq_lane_s32(xc, 0));

  return v68;
}

- (SourceROI)hazeROI
{
  v2 = *&self->_hazeROI.EndX;
  v3 = *&self->_hazeROI.StartX;
  result.EndX = v2;
  result.EndY = HIDWORD(v2);
  result.StartX = v3;
  result.StartY = HIDWORD(v3);
  return result;
}

- (uint64_t)createShaders
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM();
  *self = result;
  return result;
}

- (uint64_t)allocInternalData
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM();
  *self = result;
  return result;
}

- (void)initWithMetalContext:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_3_0();
  FigDebugAssert3();
}

- (void)initWithMetalContext:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_3_0();
  FigDebugAssert3();
}

- (void)initWithMetalContext:(void *)a1 .cold.3(void *a1)
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_8();
  FigSignalErrorAtGM();
}

- (void)prepareThumbnail
{
  OUTLINED_FUNCTION_1();
  LODWORD(v10) = 0;
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[HazeEstimation prepareThumbnail]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)estimateHaze:.cold.1()
{
  OUTLINED_FUNCTION_1();
  LODWORD(v10) = 0;
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[HazeEstimation estimateHaze:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

@end