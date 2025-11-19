@interface VCProcessor
+ (CGPoint)warpCGPoint:(CGPoint)a3 fromCamera:(id)a4 toCamera:(id)a5;
+ (CGRect)warpCGRect:(CGRect)a3 fromCamera:(id)a4 toCamera:(id)a5;
- (CGPoint)warpCGPoint:(CGPoint)result;
- (CGRect)outputROI;
- (CGRect)warpCGRect:(CGRect)result;
- (VCProcessor)init;
- (__n128)_getGravityVectorForCamera:(void *)a3 fromMetadata:(void *)a4;
- (double)getPhysicalCameraToVirtualCameraTransform;
- (float)_getBaseZoomFactor:(id)a3;
- (id)_bindCVPixleBuffer:(__CVBuffer *)a3 usage:(unint64_t)a4;
- (id)_cachedTexturesFromPixelBuffer:(__CVBuffer *)a3 usage:(unint64_t)a4;
- (int)_confineOutputCameraToInputCameraFrustum:(BOOL)a3;
- (int)_createRenderTargetForOutputLumaTex:(id)a3 outputChromaTex:(id)a4 renderTargetLumaTex:(id *)a5 renderTargetChromaTex:(id *)a6;
- (int)_encodeDownsample:(id)a3 inputLumaTex:(id)a4 inputChromaTex:(id)a5 outputLumaTex:(id)a6 outputChromaTex:(id)a7;
- (int)_encodeRender:(id)a3 inputLumaTex:(id)a4 inputChromaTex:(id)a5 outputLumaTex:(id)a6 outputChromaTex:(id)a7;
- (int)_encodeRenderTargetResolve:(id)a3 renderTargetLumaTex:(id)a4 renderTargetChromaTex:(id)a5 outputLumaTex:(id)a6 outputChromaTex:(id)a7;
- (int)_fillRenderParams:(id *)a3;
- (int)_loadTuningParameters;
- (int)_processStill;
- (int)_processVideo;
- (int)_render;
- (int)_setOutputPixelBufferAttachments;
- (int)_updateAutoFraming;
- (int)_updateCamera:(id)a3 withMetadata:(id)a4;
- (int)_updateManualFraming;
- (int)_updateManualFramingStateMetadata;
- (int)_updateOutputCameraAnimation;
- (int)_updateOutputCameraFisheyeEffect;
- (int)_updateOutputCameraForRollCorrection;
- (int)prewarm;
- (int)process;
- (int)purgeResources;
- (int)setup;
- (unint64_t)_metalTextureFormatFromPixelBufferFormat:(unsigned int)a3 forPlane:(unsigned int)a4;
- (void)_cacheManualFramingState;
- (void)_getEquivalentOutputCameraFocalLength:(VCProcessor *)self rotation:(SEL)a2 forViewport:;
- (void)_restoreManualFramingState;
- (void)_updateOutputCameraFocalLengthWithVideoZoomFactor;
- (void)_updateOutputCameraRotationWithCursor;
- (void)_updateVideoZoomFactorFromInputCamera:(id)a3 toOutputCamera:(id)a4;
- (void)adjustToFrameCurrentScene;
- (void)continueRotatingToPoint:(CGPoint)a3;
- (void)dealloc;
- (void)resetOutputCamera;
- (void)setAutoFramingEnabled:(BOOL)a3;
- (void)setManualFramingDefaultVideoZoomFactor:(float)a3;
- (void)setMetalCommandQueue:(id)a3;
- (void)setOutputCameraDefaultRotation:(VCProcessor *)self;
- (void)setOutputROI:(CGRect)a3;
- (void)setVideoZoomFactor:(float)a3;
- (void)startRotatingFromPoint:(CGPoint)a3;
@end

@implementation VCProcessor

- (VCProcessor)init
{
  v8.receiver = self;
  v8.super_class = VCProcessor;
  result = [(VCProcessor *)&v8 init];
  result->_outputROI.origin.x = 0.0;
  result->_outputROI.origin.y = 0.0;
  __asm { FMOV            V0.2D, #1.0 }

  result->_outputROI.size = _Q0;
  *&result->_orientationCorrectionEnabled = 16843009;
  __asm { FMOV            V0.2S, #1.0 }

  *&result->_videoZoomFactor = _Q0.width;
  *result->_outputCameraDefaultRotation = 0u;
  return result;
}

- (int)setup
{
  if (self->_outputDimensions.width < 1)
  {
    return 0;
  }

  v3 = objc_alloc(MEMORY[0x277CF6C78]);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v3 initWithbundle:v4 andOptionalCommandQueue:self->_metalCommandQueue];
  context = self->_context;
  self->_context = v5;

  if (!self->_context)
  {
    return 0;
  }

  v7 = objc_alloc(MEMORY[0x277CF6C68]);
  v8 = [(FigMetalContext *)self->_context device];
  v9 = [v7 initWithDevice:v8 allocatorType:2];
  [(FigMetalContext *)self->_context setAllocator:v9];

  v10 = [(FigMetalContext *)self->_context allocator];

  if (!v10)
  {
    return -1;
  }

  v11 = objc_alloc_init(MEMORY[0x277CF6C70]);
  [v11 setLabel:@"VCP_FigMetalAllocator"];
  [v11 setWireMemory:1];
  [v11 setMemSize:10485760];
  [v11 setResourceOptions:512];
  v12 = [(FigMetalContext *)self->_context allocator];
  [v12 setupWithDescriptor:v11];

  v13 = [(FigMetalContext *)self->_context commandQueue];
  metalCommandQueue = self->_metalCommandQueue;
  self->_metalCommandQueue = v13;

  result = [(VCProcessor *)self _loadTuningParameters];
  if (result)
  {
    return result;
  }

  v16 = objc_alloc_init(VCCamera);
  inputCamera = self->_inputCamera;
  self->_inputCamera = v16;

  if (!self->_inputCamera)
  {
    return -1;
  }

  v18 = objc_alloc_init(VCCamera);
  outputCamera = self->_outputCamera;
  self->_outputCamera = v18;

  v20 = self->_outputCamera;
  if (!v20)
  {
    return -1;
  }

  outputDimensions = self->_outputDimensions;
  v22.i64[0] = outputDimensions.width;
  v22.i64[1] = outputDimensions.height;
  v33 = vmulq_f64(self->_outputROI.size, vcvtq_f64_s64(v22));
  [(VCCamera *)v20 setSensorSize:COERCE_DOUBLE(vcvt_f32_f64(v33))];
  __asm { FMOV            V0.2D, #0.5 }

  [(VCCamera *)self->_outputCamera setPrincipalPoint:COERCE_DOUBLE(vcvt_f32_f64(vmulq_f64(v33, _Q0)))];
  [(VCCamera *)self->_inputCamera fov];
  [(VCCamera *)self->_outputCamera setFov:?];
  [(VCCamera *)self->_outputCamera setPortType:@"Virtual"];
  v28 = [[CinematicFramingSession alloc] initWithOutputDimensions:*&self->_outputDimensions];
  framingSession = self->_framingSession;
  self->_framingSession = v28;

  v30 = self->_framingSession;
  if (!v30)
  {
    return -1;
  }

  [(CinematicFramingSession *)v30 setOutputFramingRectOfInterest:self->_outputROI.origin.x, self->_outputROI.origin.y, self->_outputROI.size.width, self->_outputROI.size.height];
  [(CinematicFramingSession *)self->_framingSession setCameraOrientationCorrectionEnabled:self->_orientationCorrectionEnabled];
  v31 = objc_alloc_init(VCCameraAnimator);
  outputCameraAnimator = self->_outputCameraAnimator;
  self->_outputCameraAnimator = v31;

  result = 0;
  self->_autoFramingEnabled = 0;
  *&self->_outputCameraResetCompleted = 257;
  self->_videoZoomFactor = self->_manualFramingDefaultVideoZoomFactor;
  return result;
}

- (int)prewarm
{
  v3 = [[VCShaders alloc] initWithContext:self->_context];
  shaders = self->_shaders;
  self->_shaders = v3;

  if (self->_shaders)
  {
    p_cvMetalTextureCacheRef = &self->_cvMetalTextureCacheRef;
    if (!self->_cvMetalTextureCacheRef)
    {
      v9 = *MEMORY[0x277CC4D40];
      v10 = &unk_28563D560;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      v7 = [(FigMetalContext *)self->_context device];
      CVMetalTextureCacheCreate(*MEMORY[0x277CBECE8], v6, v7, 0, p_cvMetalTextureCacheRef);
    }
  }

  return 0;
}

- (int)purgeResources
{
  cvMetalTextureCacheRef = self->_cvMetalTextureCacheRef;
  if (cvMetalTextureCacheRef)
  {
    CVMetalTextureCacheFlush(cvMetalTextureCacheRef, 0);
    v4 = self->_cvMetalTextureCacheRef;
    if (v4)
    {
      CFRelease(v4);
      self->_cvMetalTextureCacheRef = 0;
    }
  }

  v5 = [(FigMetalContext *)self->_context allocator];
  [v5 reset];

  v6 = [(FigMetalContext *)self->_context allocator];
  [v6 purgeResources];

  return 0;
}

- (void)dealloc
{
  [(VCProcessor *)self purgeResources];
  v3.receiver = self;
  v3.super_class = VCProcessor;
  [(VCProcessor *)&v3 dealloc];
}

- (void)setMetalCommandQueue:(id)a3
{
  v5 = a3;
  metalCommandQueue = self->_metalCommandQueue;
  p_metalCommandQueue = &self->_metalCommandQueue;
  if (metalCommandQueue == v5)
  {
    v8 = v5;
    objc_storeStrong(p_metalCommandQueue, a3);
    v5 = v8;
  }
}

- (int)_loadTuningParameters
{
  if (self->_tuningParameters)
  {
    v3 = [[VCTuningParameters alloc] initWithDictionary:self->_tuningParameters];
  }

  else
  {
    v3 = objc_alloc_init(VCTuningParameters);
  }

  tuning = self->_tuning;
  self->_tuning = v3;

  if (self->_tuning)
  {
    return 0;
  }

  else
  {
    return -16680;
  }
}

- (void)setOutputROI:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = 1.0;
  v18.size.height = 1.0;
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v8 = CGRectContainsRect(v18, v19);
  if (height > 0.0001 && width > 0.0001 && v8)
  {
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    if (!CGRectEqualToRect(self->_outputROI, v20))
    {
      self->_outputROI.origin.x = x;
      self->_outputROI.origin.y = y;
      self->_outputROI.size.width = width;
      self->_outputROI.size.height = height;
      if (!self->_processingType)
      {
        [(VCCamera *)self->_outputCamera fov];
        v11 = v10;
        outputDimensions = self->_outputDimensions;
        v13.i64[0] = outputDimensions.width;
        v13.i64[1] = outputDimensions.height;
        [(VCCamera *)self->_outputCamera setSensorSize:COERCE_DOUBLE(vcvt_f32_f64(vmulq_f64(self->_outputROI.size, vcvtq_f64_s64(v13))))];
        [(VCCamera *)self->_outputCamera sensorSize];
        [(VCCamera *)self->_outputCamera setPrincipalPoint:COERCE_DOUBLE(vmul_f32(v14, 0x3F0000003F000000))];
        LODWORD(v15) = v11;
        [(VCCamera *)self->_outputCamera setFov:v15];
        [(CinematicFramingSession *)self->_framingSession setOutputFramingRectOfInterest:x, y, width, height];
        outputCameraAnimator = self->_outputCameraAnimator;

        [(VCCameraAnimator *)outputCameraAnimator reset];
      }
    }
  }
}

- (void)setVideoZoomFactor:(float)a3
{
  if (a3 > 0.0 && !self->_autoFramingEnabled)
  {
    *&self->_outputCameraResetCompleted = 257;
    [(VCCameraAnimator *)self->_outputCameraAnimator configureWithPreset:1];
    self->_videoZoomFactor = a3;
    if (a3 == 1.0)
    {
      v5 = *self->_outputCameraDefaultRotation;
      outputCamera = self->_outputCamera;

      [(VCCamera *)outputCamera setRotation:*&v5];
    }
  }
}

- (double)getPhysicalCameraToVirtualCameraTransform
{
  [*(a1 + 176) extrinsicMatrix];
  v10 = v2;
  v11 = v3;
  v8 = v5;
  v9 = v4;
  [*(a1 + 160) extrinsicMatrix];
  v15 = __invert_f4(v14);
  v6 = 0;
  v12 = v15;
  do
  {
    *(&v13 + v6 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*&v12.columns[v6])), v11, *v12.columns[v6].f32, 1), v9, v12.columns[v6], 2), v8, v12.columns[v6], 3);
    ++v6;
  }

  while (v6 != 4);
  return *&v13;
}

- (int)_processStill
{
  width = self->_outputDimensions.width;
  [(VCCamera *)self->_outputCamera sensorSize];
  height = self->_outputDimensions.height;
  v6 = width / v5;
  [(VCCamera *)self->_outputCamera sensorSize];
  *&v8 = height / *(&v8 + 1);
  if (v6 < (height / *(&v8 + 1)))
  {
    *&v8 = v6;
  }

  [(VCCamera *)self->_outputCamera sensorSize:v8];
  [(VCCamera *)self->_outputCamera setSensorSize:COERCE_DOUBLE(vmul_n_f32(v9, v14))];
  [(VCCamera *)self->_outputCamera focalLength];
  *&v11 = v14 * v10;
  [(VCCamera *)self->_outputCamera setFocalLength:v11];
  [(VCCamera *)self->_outputCamera principalPoint];
  [(VCCamera *)self->_outputCamera setPrincipalPoint:COERCE_DOUBLE(vmul_n_f32(v12, v14))];

  return [(VCProcessor *)self _render];
}

- (void)startRotatingFromPoint:(CGPoint)a3
{
  y = a3.y;
  v4 = vcvt_f32_f64(a3);
  *&self->_rotationCursorPrev[3] = v4;
  *&self->_rotationCursorCurr[3] = v4;
  *&self->_outputCameraResetCompleted = 257;
  [(VCCameraAnimator *)self->_outputCameraAnimator configureWithPreset:1];
}

- (void)continueRotatingToPoint:(CGPoint)a3
{
  if (!self->_confineOutputCamera || self->_videoZoomFactor != 1.0)
  {
    y = a3.y;
    *&self->_rotationCursorCurr[3] = vcvt_f32_f64(a3);
    *&self->_outputCameraResetCompleted = 257;
    [(VCCameraAnimator *)self->_outputCameraAnimator configureWithPreset:1];
  }
}

- (void)resetOutputCamera
{
  *&self->_outputCameraResetCompleted = 256;
  [(VCCameraAnimator *)self->_outputCameraAnimator configureWithPreset:2];
  outputCameraAnimator = self->_outputCameraAnimator;

  [(VCCameraAnimator *)outputCameraAnimator interrupt];
}

- (void)adjustToFrameCurrentScene
{
  *&self->_outputCameraResetCompleted = 1;
  [(VCCameraAnimator *)self->_outputCameraAnimator configureWithPreset:2];
  outputCameraAnimator = self->_outputCameraAnimator;

  [(VCCameraAnimator *)outputCameraAnimator interrupt];
}

- (void)setManualFramingDefaultVideoZoomFactor:(float)a3
{
  if (a3 > 0.0)
  {
    self->_manualFramingDefaultVideoZoomFactor = a3;
  }
}

- (void)setOutputCameraDefaultRotation:(VCProcessor *)self
{
  v3 = *&v2;
  *self->_outputCameraDefaultRotation = v2;
  v4 = [(CinematicFramingSession *)self->_framingSession options];
  [v4 setDefaultViewportRotation:v3];
}

- (int)_updateManualFraming
{
  [(VCProcessor *)self _cacheManualFramingState];
  if (!self->_oneShotFramingCompleted)
  {
    [(VCTuningParameters *)self->_tuning oneShotFramingDuration];
    v4 = v3;
    [(VCCameraAnimator *)self->_outputCameraAnimator duration];
    if (v5 > v4)
    {
      return 0;
    }

    [(CinematicFramingSession *)self->_framingSession processWithMetadata:self->_inputMetadata];
    [(CinematicFramingSession *)self->_framingSession idealViewport];
    v26 = 0;
    v25 = 0;
    v24 = 0;
    [(VCProcessor *)self _getEquivalentOutputCameraFocalLength:&v26 rotation:&v24 forViewport:?];
    HIDWORD(v6) = HIDWORD(v26);
    *&v6 = fmaxf(*&v26, *(&v26 + 1));
    [(VCCamera *)self->_outputCamera setFocalLength:v6];
    *&v7 = v24;
LABEL_7:
    [(VCCamera *)self->_outputCamera setRotation:*&v7];
    return 0;
  }

  if (!self->_outputCameraResetCompleted)
  {
    [(VCProcessor *)self _getBaseZoomFactor:self->_inputCamera];
    v9 = v8;
    [(VCCamera *)self->_inputCamera focalLength];
    v11 = v10;
    [(VCCamera *)self->_inputCamera sensorSize];
    v14 = v11 / fmaxf(v12, v13);
    [(VCCamera *)self->_outputCamera focalLength];
    v16 = v15;
    [(VCCamera *)self->_outputCamera sensorSize];
    v19 = v16 / fmaxf(v17, v18);
    v20 = (v14 / v9) * self->_manualFramingDefaultVideoZoomFactor;
    [(VCCamera *)self->_outputCamera focalLength];
    *&v22 = v21 * (v20 / v19);
    [(VCCamera *)self->_outputCamera setFocalLength:v22];
    v7 = *self->_outputCameraDefaultRotation;
    goto LABEL_7;
  }

  [(VCProcessor *)self _updateOutputCameraFocalLengthWithVideoZoomFactor];
  [(VCProcessor *)self _updateOutputCameraRotationWithCursor];
  return 0;
}

- (void)_updateOutputCameraFocalLengthWithVideoZoomFactor
{
  [(VCCamera *)self->_outputCamera focalLength];
  v4 = vdup_lane_s32(v3, 0);
  [(VCCamera *)self->_outputCamera sensorSize];
  v6 = vdiv_f32(v4, v5);
  v4.f32[0] = fminf(v6.f32[0], v6.f32[1]);
  [(VCCamera *)self->_inputCamera focalLength];
  v8 = vdup_lane_s32(v7, 0);
  [(VCCamera *)self->_inputCamera sensorSize];
  v10 = vdiv_f32(v8, v9);
  v8.f32[0] = fminf(v10.f32[0], v10.f32[1]);
  [(VCProcessor *)self _getBaseZoomFactor:self->_inputCamera];
  videoZoomFactor = self->_videoZoomFactor;
  outputCamera = self->_outputCamera;
  v4.f32[0] = (v8.f32[0] * (videoZoomFactor / v12)) / v4.f32[0];
  [(VCCamera *)outputCamera focalLength];
  *&v14 = *&v14 * v4.f32[0];

  [(VCCamera *)outputCamera setFocalLength:v14];
}

- (void)_updateOutputCameraRotationWithCursor
{
  v2 = vceq_f32(*&self->_rotationCursorCurr[3], *&self->_rotationCursorPrev[3]);
  if ((vpmin_u32(v2, v2).u32[0] & 0x80000000) == 0)
  {
    if (!self->_confineOutputCamera || ([(VCCamera *)self->_outputCamera zoomFOV], v5 = v4, [(VCCamera *)self->_inputCamera zoomFOV], (v5 / v6) < 0.98))
    {
      [(VCCamera *)self->_outputCamera focalLength];
      v8 = v7;
      [(VCCamera *)self->_outputCamera zoomFactor];
      v10 = v8 * v9;
      [(VCCamera *)self->_outputCamera sensorSize];
      v12 = (COERCE_FLOAT(*&self->_rotationCursorPrev[3]) + -0.5) * v11;
      [(VCCamera *)self->_outputCamera sensorSize];
      v14 = vmuls_lane_f32(0.5 - *&self->_rotationCursorPrev[7], v13, 1);
      v15 = atan2f(v12, v10);
      v16 = atan2f(v14, v10);
      [(VCCamera *)self->_outputCamera sensorSize];
      v18 = (COERCE_FLOAT(*&self->_rotationCursorCurr[3]) + -0.5) * v17;
      [(VCCamera *)self->_outputCamera sensorSize];
      v20 = vmuls_lane_f32(0.5 - *&self->_rotationCursorCurr[7], v19, 1);
      v21 = atan2f(v18, v10);
      *&v22 = v16 - atan2f(v20, v10);
      *(&v22 + 1) = v15 - v21;
      v25 = v22;
      outputCamera = self->_outputCamera;
      [(VCCamera *)outputCamera rotation];
      [(VCCamera *)outputCamera setRotation:*vaddq_f32(v24, v25).i64];
      *&self->_rotationCursorPrev[3] = *&self->_rotationCursorCurr[3];
    }
  }
}

- (void)_cacheManualFramingState
{
  [(VCCamera *)self->_outputCamera rotation];
  *&self->_anon_28[3] = v3;
  *&self->_anon_28[11] = self->_videoZoomFactor;
}

- (void)_restoreManualFramingState
{
  [(VCCamera *)self->_outputCamera setRotation:*&self->_anon_28[3]];
  self->_videoZoomFactor = *&self->_anon_28[11];

  [(VCProcessor *)self _updateOutputCameraFocalLengthWithVideoZoomFactor];
}

- (int)_updateManualFramingStateMetadata
{
  if (self->_oneShotFramingCompleted || [(VCCameraAnimator *)self->_outputCameraAnimator animating])
  {
    v3 = 0;
  }

  else
  {
    v3 = 1;
    self->_oneShotFramingCompleted = 1;
  }

  if (self->_outputCameraResetCompleted || [(VCCameraAnimator *)self->_outputCameraAnimator animating])
  {
    v4 = 0;
  }

  else
  {
    v4 = 1;
    self->_outputCameraResetCompleted = 1;
  }

  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = v5;
  if (v3)
  {
    [(NSDictionary *)v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CF6980]];
  }

  if (v4)
  {
    [(NSDictionary *)v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CF6990]];
  }

  if (!self->_oneShotFramingCompleted || !self->_outputCameraResetCompleted)
  {
    v7 = self->_inputCamera;
    v8 = [(VCCameraAnimator *)self->_outputCameraAnimator animatedCamera];
    outputCamera = v8;
    if (!v8)
    {
      outputCamera = self->_outputCamera;
    }

    v10 = outputCamera;

    [(VCProcessor *)self _updateVideoZoomFactorFromInputCamera:v7 toOutputCamera:v10];
  }

  v11 = MEMORY[0x277CF6988];
  v12 = MEMORY[0x277CF6978];
  if (((v3 | v4) & 1) == 0)
  {
    v13 = *&self->_anon_28[3];
    [(VCCamera *)self->_outputCamera rotation];
    v15 = vmvn_s8(vceq_f32(v13, v14));
    if ((vpmax_u32(v15, v15).u32[0] & 0x80000000) == 0)
    {
      goto LABEL_26;
    }
  }

  [(VCCamera *)self->_outputCamera rotation];
  v30 = v16;
  [(VCCamera *)self->_outputCamera rotation];
  v32.y = v17;
  v32.x = v30;
  DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v32);
  [(NSDictionary *)v6 setObject:DictionaryRepresentation forKeyedSubscript:*v11];

  *&v19 = self->_videoZoomFactor;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  [(NSDictionary *)v6 setObject:v20 forKeyedSubscript:*v12];

  if (v3)
  {
    [(NSDictionary *)v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CF6980]];
    if (!v4)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if ((v4 & 1) == 0)
  {
    if ((v3 | v4))
    {
      goto LABEL_27;
    }

LABEL_26:
    if (*&self->_anon_28[11] == self->_videoZoomFactor)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

LABEL_24:
  [(NSDictionary *)v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CF6990]];
LABEL_27:
  v21 = *&self->_anon_28[3];
  [(VCCamera *)self->_outputCamera rotation];
  v23 = vmvn_s8(vceq_f32(v21, v22));
  if ((vpmax_u32(v23, v23).u32[0] & 0x80000000) != 0)
  {
    [(VCCamera *)self->_outputCamera rotation];
    v31 = v24;
    [(VCCamera *)self->_outputCamera rotation];
    v33.y = v25;
    v33.x = v31;
    v26 = CGPointCreateDictionaryRepresentation(v33);
    [(NSDictionary *)v6 setObject:v26 forKeyedSubscript:*v11];
  }

  if (*&self->_anon_28[11] != self->_videoZoomFactor)
  {
    v27 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    [(NSDictionary *)v6 setObject:v27 forKeyedSubscript:*v12];
  }

LABEL_31:
  manualFramingStateMetadata = self->_manualFramingStateMetadata;
  self->_manualFramingStateMetadata = v6;

  return 0;
}

- (void)setAutoFramingEnabled:(BOOL)a3
{
  autoFramingEnabled = self->_autoFramingEnabled;
  if (autoFramingEnabled != a3)
  {
    self->_framingModeJustChanged = 1;
    if (self->_autoRestoreManualFramingState)
    {
      if (autoFramingEnabled)
      {
        [(VCProcessor *)self _restoreManualFramingState];
      }

      else
      {
        [(VCProcessor *)self _cacheManualFramingState];
      }
    }

    *&self->_outputCameraResetCompleted = 257;
    self->_autoFramingEnabled = a3;
  }
}

- (int)_updateOutputCameraFisheyeEffect
{
  fisheyeEffectEnabled = self->_fisheyeEffectEnabled;
  outputCamera = self->_outputCamera;
  if (fisheyeEffectEnabled)
  {
    [(VCCamera *)outputCamera zoomFOV];
    v7 = v6;
    v8 = fminf(fmaxf((v6 + -1.309) / 0.5236, 0.0), 1.0);
    *&v9 = (((v8 * v8) * ((v8 * -2.0) + 3.0)) * -0.15) + 1.0;
    [(VCCamera *)self->_outputCamera setFisheyeFactor:v9];
    *&v10 = v7;
    [(VCCamera *)self->_outputCamera setZoomFOV:v10];
  }

  else
  {
    LODWORD(v2) = 1.0;
    [(VCCamera *)outputCamera setFisheyeFactor:v2];
  }

  return 0;
}

+ (CGPoint)warpCGPoint:(CGPoint)a3 fromCamera:(id)a4 toCamera:(id)a5
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = a5;
  v10 = [v8 model];
  v11 = [v9 model];
  v12.f32[0] = x;
  v13 = y;
  v12.f32[1] = v13;
  warpPoint(v10, v11, v12);
  v17 = vcvtq_f64_f32(v14);

  v16 = v17.f64[1];
  v15 = v17.f64[0];
  result.y = v16;
  result.x = v15;
  return result;
}

+ (CGRect)warpCGRect:(CGRect)a3 fromCamera:(id)a4 toCamera:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v11 = a5;
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  MinX = CGRectGetMinX(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  MaxX = CGRectGetMaxX(v40);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  MinY = CGRectGetMinY(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  MaxY = CGRectGetMaxY(v42);
  v16 = 0;
  *&v17 = MinX;
  *&v18 = MaxX;
  *&v19 = MinY;
  *&MaxY = MaxY;
  HIDWORD(v18) = LODWORD(MaxY);
  v35 = __PAIR64__(v19, v17);
  v36 = __PAIR64__(v19, v18);
  HIDWORD(v17) = LODWORD(MaxY);
  v37 = v18;
  v38 = v17;
  do
  {
    warpPoint([v10 model], objc_msgSend(v11, "model"), *(&v35 + v16));
    *(&v35 + v16) = v20;
    v16 += 8;
  }

  while (v16 != 32);
  v21 = 0;
  v22 = -2.0;
  v23 = 2.0;
  v24 = -2.0;
  v25 = 2.0;
  do
  {
    v26 = *(&v35 + v21);
    v23 = fminf(v23, *&v26);
    v22 = fmaxf(v22, *&v26);
    v25 = fminf(v25, *(&v26 + 1));
    v24 = fmaxf(v24, *(&v26 + 1));
    v21 += 8;
  }

  while (v21 != 32);
  v27 = v23;
  v28 = v25;
  v29 = (v22 - v23);
  v30 = (v24 - v25);

  v31 = v27;
  v32 = v28;
  v33 = v29;
  v34 = v30;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (CGPoint)warpCGPoint:(CGPoint)result
{
  if (self->_centerStagePassthrough && self->_autoFramingEnabled)
  {
    [(CinematicFramingSession *)self->_framingSession warpBoundingBoxInFrameCoordinatesToDisplayCoordinates:result.x, result.y, 0.0, 0.0];
  }

  else if (self->_inputCamera)
  {
    if (self->_outputCamera)
    {
      [VCProcessor warpCGPoint:result.x fromCamera:result.y toCamera:?];
      result.x = self->_outputROI.origin.x + self->_outputROI.size.width * v4;
      result.y = self->_outputROI.origin.y + self->_outputROI.size.height * v5;
    }
  }

  return result;
}

- (CGRect)warpCGRect:(CGRect)result
{
  if (self->_centerStagePassthrough && self->_autoFramingEnabled)
  {
    [(CinematicFramingSession *)self->_framingSession warpBoundingBoxInFrameCoordinatesToDisplayCoordinates:result.origin.x, result.origin.y, result.size.width, result.size.height];
  }

  else if (self->_inputCamera)
  {
    if (self->_outputCamera)
    {
      [VCProcessor warpCGRect:result.origin.x fromCamera:result.origin.y toCamera:result.size.width, result.size.height];
      width = self->_outputROI.size.width;
      height = self->_outputROI.size.height;
      result.origin.x = self->_outputROI.origin.x + width * v6;
      result.origin.y = self->_outputROI.origin.y + height * v7;
      result.size.width = width * v8;
      result.size.height = v9 * height;
    }
  }

  return result;
}

- (float)_getBaseZoomFactor:(id)a3
{
  v4 = a3;
  v5 = [v4 portType];
  v6 = 1.0;
  if (!v5 || !self->_cameraInfoByPortType)
  {
LABEL_8:

    goto LABEL_9;
  }

  v7 = [v4 portType];
  v8 = [v7 isEqual:@"Virtual"];

  if ((v8 & 1) == 0)
  {
    cameraInfoByPortType = self->_cameraInfoByPortType;
    v10 = [v4 portType];
    v5 = [(NSDictionary *)cameraInfoByPortType objectForKeyedSubscript:v10];

    if (v5)
    {
      v11 = [v5 objectForKeyedSubscript:*MEMORY[0x277CF3C00]];
      v12 = v11;
      if (v11)
      {
        [v11 floatValue];
        v6 = v13;
      }
    }

    goto LABEL_8;
  }

LABEL_9:

  return v6;
}

- (void)_updateVideoZoomFactorFromInputCamera:(id)a3 toOutputCamera:(id)a4
{
  v19 = a3;
  v6 = a4;
  [v6 focalLength];
  v18 = v7;
  [v6 sensorSize];
  v9 = v8;
  [v19 focalLength];
  v17 = v10;
  [v19 sensorSize];
  v12 = v11;
  [(VCProcessor *)self _getBaseZoomFactor:v19];
  v13 = vdiv_f32(vdup_lane_s32(v18, 0), v9);
  v14 = vdiv_f32(vdup_lane_s32(v17, 0), v12);
  v16 = (fminf(v13.f32[0], v13.f32[1]) * v15) / fminf(v14.f32[0], v14.f32[1]);
  if (v16 < 1.0)
  {
    v16 = 1.0;
  }

  self->_videoZoomFactor = v16;
}

- (void)_getEquivalentOutputCameraFocalLength:(VCProcessor *)self rotation:(SEL)a2 forViewport:
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v12 = v3;
  v13 = v2;
  if (!self->_orientationCorrectionEnabled)
  {
    v15 = [(VCCamera *)self->_inputCamera portType];
    v16 = isCinematicFramingFrontCamera(v15);

    v17 = computeNumberOfCCWRotationsFromInputToFramingSpaceForCameraOrientation([(CinematicFramingSessionInputMetadata *)self->_inputMetadata cameraOrientation], v16, [(CinematicFramingSessionInputMetadata *)self->_inputMetadata frontCameraHas180DegreesRotation]);
    v11 = rotateRectCCW(4 - v17, v11, v10, v9, v8);
    v10 = v18;
    v9 = v19;
    v8 = v20;
  }

  v34.origin.x = v11;
  v34.origin.y = v10;
  v34.size.width = v9;
  v34.size.height = v8;
  MidY = CGRectGetMidY(v34);
  *&v33 = -MidY;
  v35.origin.x = v11;
  v35.origin.y = v10;
  v35.size.width = v9;
  v35.size.height = v8;
  MidX = CGRectGetMidX(v35);
  v32 = MidX;
  v36.origin.x = v11;
  v36.origin.y = v10;
  v36.size.width = v9;
  v36.size.height = v8;
  Width = CGRectGetWidth(v36);
  v37.origin.x = v11;
  v37.origin.y = v10;
  v37.size.width = v9;
  v37.size.height = v8;
  Height = CGRectGetHeight(v37);
  [(VCCamera *)self->_outputCamera sensorSize];
  v29 = v23;
  [(VCCamera *)self->_outputCamera sensorSize];
  v24.f64[0] = Width;
  v24.f64[1] = Height;
  v26 = vmul_f32(__PAIR64__(v25, v29), 0x3F0000003F000000);
  v27 = vmul_f32(vcvt_f32_f64(v24), 0x3F0000003F000000);
  LODWORD(Height) = v27.i32[0];
  LODWORD(Width) = tanf(v27.f32[1]);
  v28.f32[0] = tanf(*&Height);
  v28.i32[1] = LODWORD(Width);
  *v13 = vdiv_f32(v26, v28);
  *v12 = __PAIR64__(LODWORD(v32), v33);
}

- (__n128)_getGravityVectorForCamera:(void *)a3 fromMetadata:(void *)a4
{
  v5 = a3;
  v6 = a4;
  v35 = xmmword_2434F7680;
  if ([v6 hasGravity])
  {
    [v6 gravityX];
    v33 = v7;
    [v6 gravityY];
    v30 = v8;
    [v6 gravityZ];
    v9 = v33;
    v9.i32[1] = v30;
    v9.i32[2] = v10;
    v34 = v9;
    v11 = vmulq_f32(v9, v9);
    v11.f32[0] = v11.f32[2] + vaddv_f32(*v11.f32);
    v31 = v11;
    if (sqrtf(v11.f32[0]) > 0.00000011921)
    {
      if ([v6 hasDeviceToCameraSpaceTransform])
      {
        [v6 deviceToCameraSpaceTransform];
      }

      else
      {
        v15 = [v5 portType];
        v16 = isCinematicFramingFrontCamera(v15);

        if (v16)
        {
          v17 = -1;
        }

        else
        {
          v17 = 0;
        }

        v18 = vdupq_n_s32(v17);
        v12 = vbslq_s8(v18, xmmword_2434F7670, xmmword_2434F76E0);
        __asm
        {
          FMOV            V1.4S, #-1.0
          FMOV            V3.4S, #1.0
        }

        v25 = vbslq_s8(v18, _Q3, _Q1);
        v14.i64[0] = 0;
        v14.i64[1] = v25.u32[2];
        v13 = xmmword_2434F76F0;
      }

      v26 = vrsqrte_f32(v32);
      v27 = vmul_f32(v26, vrsqrts_f32(v32, vmul_f32(v26, v26)));
      v28 = vmulq_n_f32(v34, vmul_f32(v27, vrsqrts_f32(v32, vmul_f32(v27, v27))).f32[0]);
      v35 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, v28.f32[0]), v13, *v28.f32, 1), v14, v28, 2);
    }
  }

  return v35;
}

- (int)_updateCamera:(id)a3 withMetadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 portType];
  [v6 setPortType:v8];

  [v6 setSensorID:{objc_msgSend(v7, "sensorID")}];
  v9 = [v7 calibrationDataDictionary];
  if (!v9 || (v10 = [v6 updateWithCalibration:v9]) == 0)
  {
    if (self->_orientationCorrectionEnabled)
    {
      if ([v7 hasGravity])
      {
        [(VCProcessor *)self _getGravityVectorForCamera:v6 fromMetadata:v7];
        v12 = sqrtf(vaddv_f32(*&vmulq_f32(v11, v11)));
        if (v12 >= 0.00000011921)
        {
          v13 = v11;
          v13.i32[2] = 0;
          v14 = vmulq_f32(v13, v13);
          v15 = v11;
          v21 = v11;
          v13.f32[0] = v14.f32[2] + vaddv_f32(*v14.f32);
          *v11.f32 = vrsqrte_f32(v13.u32[0]);
          *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(v13.u32[0], vmul_f32(*v11.f32, *v11.f32)));
          *v11.f32 = vdup_lane_s32(vmul_f32(*v11.f32, vrsqrts_f32(v13.u32[0], vmul_f32(*v11.f32, *v11.f32))), 0);
          v16 = vmulq_f32(v15, v11).u64[0];
          atan2f(*&v16, *(&v16 + 1));
          atan2f(fabsf(v21.f32[2]), v12);
        }
      }

      else
      {
        v17 = [v6 portType];
        v18 = isCinematicFramingFrontCamera(v17);

        zRotationForOrientation([v7 cameraOrientation], v18);
      }
    }

    [(CinematicFramingSessionInputMetadata *)self->_inputMetadata additionalInputCameraRotation];
    [v6 rotation];
    [v6 setRotation:v19];
    v10 = 0;
  }

  return v10;
}

- (int)_updateOutputCameraForRollCorrection
{
  [(VCCamera *)self->_outputCamera rotation];
  v45 = v3;
  [(VCCamera *)self->_outputCamera rotation];
  v46 = COERCE_DOUBLE(__PAIR64__(v4, v45));
  [(VCCamera *)self->_outputCamera setRotation:v46];
  if ([(CinematicFramingSessionInputMetadata *)self->_inputMetadata hasGravity])
  {
    [(VCProcessor *)self _getGravityVectorForCamera:self->_inputCamera fromMetadata:self->_inputMetadata];
  }

  else
  {
    v6 = [(VCCamera *)self->_inputCamera portType];
    v7 = isCinematicFramingFrontCamera(v6);

    v8 = zRotationForOrientation([(CinematicFramingSessionInputMetadata *)self->_inputMetadata cameraOrientation], v7);
    v9 = *&v8;
    [(CinematicFramingSessionInputMetadata *)self->_inputMetadata additionalInputCameraRotation];
    v11 = v10 * 3.14159265 / 180.0 + v9;
    v12 = __sincosf_stret(v11 * -0.5);
    v13 = vmulq_n_f32(xmmword_2434F7680, v12.__sinval);
    v14 = v13;
    v14.i32[3] = LODWORD(v12.__cosval);
    v15 = vmulq_f32(v14, xmmword_2434F7700);
    v16 = vnegq_f32(v15);
    v17 = vtrn2q_s32(v15, vtrn1q_s32(v15, v16));
    v18 = vmlaq_f32(vextq_s8(v15, v16, 8uLL), 0, vextq_s8(v17, v17, 8uLL));
    v19 = vrev64q_s32(v15);
    v19.i32[0] = v16.i32[1];
    v19.i32[3] = v16.i32[2];
    v20 = vmlaq_f32(v18, 0, v19);
    v21 = vnegq_f32(v20);
    v22 = vtrn2q_s32(v20, vtrn1q_s32(v20, v21));
    v23 = vrev64q_s32(v20);
    v23.i32[0] = v21.i32[1];
    v23.i32[3] = v21.i32[2];
    v5 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v20, v14, 3), v23, v13, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v20, v21, 8uLL), *v13.f32, 1), vextq_s8(v22, v22, 8uLL), v13.f32[0]));
  }

  v44 = v5;
  [(VCCamera *)self->_outputCamera rotationMatrix];
  v41 = v25;
  v42 = v24;
  v40 = v26;
  [(VCCamera *)self->_inputCamera rotationMatrix];
  v50 = __invert_f3(v49);
  v27 = 0;
  v47 = v50;
  do
  {
    v48[v27] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v42, COERCE_FLOAT(*&v47.columns[v27])), v41, *v47.columns[v27].f32, 1), v40, v47.columns[v27], 2);
    ++v27;
  }

  while (v27 != 3);
  v28 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v48[0], v44.f32[0]), v48[1], *v44.f32, 1), v48[2], v44, 2);
  v29 = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v28, v28)));
  v30 = vrsqrte_f32(v29);
  v31 = vmul_f32(v30, vrsqrts_f32(v29.u32[0], vmul_f32(v30, v30)));
  v32 = vmul_n_f32(*v28.f32, vmul_f32(v31, vrsqrts_f32(v29.u32[0], vmul_f32(v31, v31))).f32[0]);
  if (self->_orientationCorrectionEnabled)
  {
    v33 = 0x3F80000000000000;
  }

  else
  {
    v34 = vaddv_f32(*&vmulq_f32(v44, v44));
    v35 = sqrtf(v34);
    v36 = LODWORD(v34);
    v37 = vrsqrte_f32(LODWORD(v34));
    v38 = vmul_f32(v37, vrsqrts_f32(v36, vmul_f32(v37, v37)));
    v33 = vmul_n_f32(*v44.f32, vmul_f32(v38, vrsqrts_f32(v36, vmul_f32(v38, v38))).f32[0]);
    if (v35 <= 0.00000011921)
    {
      v33 = 0x3F80000000000000;
    }
  }

  v43 = v33;
  atan2f(v32.f32[1], v32.f32[0]);
  atan2f(v43.f32[1], v43.f32[0]);
  atan2f(fabsf(v44.f32[2]), sqrtf(vaddv_f32(*&vmulq_f32(v44, v44))));
  [(CinematicFramingSessionInputMetadata *)self->_inputMetadata additionalOutputCameraRotation];
  [(VCCamera *)self->_outputCamera setRotation:v46];
  return 0;
}

- (unint64_t)_metalTextureFormatFromPixelBufferFormat:(unsigned int)a3 forPlane:(unsigned int)a4
{
  if (a3 > 875704421)
  {
    if (a3 <= 1885745711)
    {
      if (a3 <= 1278226535)
      {
        if (a3 != 875704422 && a3 != 875704438)
        {
          if (a3 == 1278226534)
          {
            return 55;
          }

          return 0;
        }

        goto LABEL_29;
      }

      if (a3 == 1278226536)
      {
        return 25;
      }

      if (a3 == 1751527984)
      {
        v7 = a4 == 0;
        v8 = 65;
        v9 = 25;
LABEL_30:
        if (v7)
        {
          return v9;
        }

        else
        {
          return v8;
        }
      }

      v5 = 1882468912;
      goto LABEL_42;
    }

    if (a3 <= 2084070959)
    {
      if (a3 != 1885745712)
      {
        if (a3 != 2016686640 && a3 != 2019963440)
        {
          return 0;
        }

        v7 = a4 == 0;
        v8 = 60;
        v9 = 20;
        goto LABEL_30;
      }
    }

    else
    {
      if (a3 <= 2088265263)
      {
        if (a3 != 2084070960)
        {
          v4 = 2084075056;
          goto LABEL_24;
        }

LABEL_29:
        v7 = a4 == 0;
        v8 = 30;
        v9 = 10;
        goto LABEL_30;
      }

      if (a3 != 2088265264)
      {
        v5 = 2088269360;
LABEL_42:
        if (a3 != v5)
        {
          return 0;
        }

        goto LABEL_43;
      }
    }

    goto LABEL_43;
  }

  if (a3 <= 762865199)
  {
    if (a3 <= 645428783)
    {
      if (a3 == 641230384 || a3 == 641234480)
      {
        goto LABEL_29;
      }

      v5 = 645424688;
      goto LABEL_42;
    }

    if (a3 == 645428784)
    {
      goto LABEL_43;
    }

    if (a3 == 758670896)
    {
      goto LABEL_29;
    }

    v4 = 758674992;
LABEL_24:
    if (a3 != v4)
    {
      return 0;
    }

    goto LABEL_29;
  }

  if (a3 <= 792229423)
  {
    if (a3 == 762865200 || a3 == 762869296)
    {
      goto LABEL_43;
    }

    v4 = 792225328;
    goto LABEL_24;
  }

  if (a3 == 792229424)
  {
    goto LABEL_29;
  }

  if (a3 != 796419632)
  {
    v5 = 796423728;
    goto LABEL_42;
  }

LABEL_43:
  if (a4)
  {
    return 589;
  }

  else
  {
    return 588;
  }
}

- (id)_cachedTexturesFromPixelBuffer:(__CVBuffer *)a3 usage:(unint64_t)a4
{
  v4 = 0;
  image = 0;
  if (a3)
  {
    v5 = self;
    v6 = 0;
    v7 = 0;
    if (self->_cvMetalTextureCacheRef)
    {
      v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
      if (v4)
      {
        PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
        v27 = v4;
        v9 = 0;
        v10 = 0;
        v23 = (PixelFormatType - 1278226534) & 0xFFFFFFFD;
        allocator = *MEMORY[0x277CBECE8];
        v25 = *MEMORY[0x277CC4D50];
        v11 = 1;
        while (1)
        {
          v12 = v5;
          v13 = v5;
          v14 = PixelFormatType;
          v15 = [(VCProcessor *)v13 _metalTextureFormatFromPixelBufferFormat:PixelFormatType forPlane:v9];
          if (v15 == MTLPixelFormatInvalid)
          {
            break;
          }

          WidthOfPlane = CVPixelBufferGetWidthOfPlane(a3, v9);
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, v9);
          v29 = v25;
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
          v30 = v18;
          v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];

          if (CVMetalTextureCacheCreateTextureFromImage(allocator, v12->_cvMetalTextureCacheRef, a3, v7, v15, WidthOfPlane, HeightOfPlane, v9, &image))
          {
            goto LABEL_16;
          }

          v19 = CVMetalTextureGetTexture(image);
          [v27 setObject:v19 atIndexedSubscript:v9];

          v20 = [v27 objectAtIndexedSubscript:v9];

          if (!v20)
          {
            goto LABEL_16;
          }

          if (image)
          {
            CFRelease(image);
          }

          v21 = (v23 != 0) & v11;
          v9 = 1;
          v10 = v7;
          v11 = 0;
          PixelFormatType = v14;
          v5 = v12;
          if ((v21 & 1) == 0)
          {
            v4 = v27;
            v6 = v4;
            goto LABEL_12;
          }
        }

        v7 = v10;
LABEL_16:
        if (image)
        {
          v6 = v27;
          CFRelease(image);
          v4 = 0;
        }

        else
        {
          v4 = 0;
          v6 = v27;
        }
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

LABEL_12:

  return v4;
}

- (id)_bindCVPixleBuffer:(__CVBuffer *)a3 usage:(unint64_t)a4
{
  v7 = [VCProcessor _cachedTexturesFromPixelBuffer:"_cachedTexturesFromPixelBuffer:usage:" usage:?];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
    PlaneCount = CVPixelBufferGetPlaneCount(a3);
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:PlaneCount];
    if (PlaneCount)
    {
      v12 = 0;
      while (1)
      {
        v13 = [(FigMetalContext *)self->_context bindPixelBufferToMTL2DTexture:a3 pixelFormat:[(VCProcessor *)self _metalTextureFormatFromPixelBufferFormat:PixelFormatType forPlane:v12] usage:a4 plane:v12];
        if (!v13)
        {
          break;
        }

        [v9 addObject:v13];

        if (PlaneCount == ++v12)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      if ([v9 count] != PlaneCount)
      {

        v9 = 0;
      }
    }
  }

  return v9;
}

- (int)_fillRenderParams:(id *)a3
{
  v5 = [(VCCamera *)self->_inputCamera model];
  v6 = *&v5->var7.var7;
  v8 = *&v5->var0;
  v7 = *&v5->var6;
  *&a3->var0.var7.var3 = *&v5->var7.var3;
  *&a3->var0.var7.var7 = v6;
  *&a3->var0.var0 = v8;
  *&a3->var0.var6 = v7;
  v9 = *&v5[1].var7.var0;
  v11 = *&v5->var8.var3;
  v10 = *&v5->var8.var7;
  *&a3->var1.var1 = *&v5[1].var1;
  *&a3->var1.var7.var0 = v9;
  *&a3->var0.var8.var3 = v11;
  *&a3->var0.var8.var7 = v10;
  v12 = *&v5[1].var9;
  v14 = *&v5[1].var7.var4;
  v13 = *&v5[1].var8.var0;
  *&a3->var1.var8.var4 = *&v5[1].var8.var4;
  *&a3->var1.var9 = v12;
  *&a3->var1.var7.var4 = v14;
  *&a3->var1.var8.var0 = v13;
  v15 = *&v5[2].var8.var1;
  v17 = *&v5[2].var2;
  v16 = *&v5[2].var7.var1;
  *&a3[1].var0.var7.var5 = *&v5[2].var7.var5;
  *&a3[1].var0.var8.var1 = v15;
  *&a3[1].var0.var2 = v17;
  *&a3[1].var0.var7.var1 = v16;
  v18 = [(VCCamera *)self->_outputCamera model];
  v19 = *&v18->var7.var7;
  v21 = *&v18->var0;
  v20 = *&v18->var6;
  *&a3[1].var1.var5 = *&v18->var7.var3;
  *&a3[1].var1.var7.var2 = v19;
  *&a3[1].var0.var8.var5 = v21;
  *&a3[1].var0.var10 = v20;
  v22 = *&v18[1].var7.var0;
  v24 = *&v18->var8.var3;
  v23 = *&v18->var8.var7;
  *&a3[1].var1.var8.var6 = *&v18[1].var1;
  *&a3[2].var0.var0 = v22;
  *&a3[1].var1.var7.var6 = v24;
  *&a3[1].var1.var8.var2 = v23;
  v25 = *&v18[1].var9;
  v27 = *&v18[1].var7.var4;
  v26 = *&v18[1].var8.var0;
  *&a3[2].var0.var7.var7 = *&v18[1].var8.var4;
  *&a3[2].var0.var8.var3 = v25;
  *&a3[2].var0.var6 = v27;
  *&a3[2].var0.var7.var3 = v26;
  v28 = *&v18[2].var8.var1;
  v30 = *&v18[2].var2;
  v29 = *&v18[2].var7.var1;
  *&a3[2].var1.var7.var0 = *&v18[2].var7.var5;
  *&a3[2].var1.var7.var4 = v28;
  *&a3[2].var0.var8.var7 = v30;
  *&a3[2].var1.var1 = v29;
  v31 = *(MEMORY[0x277CBF398] + 16);
  v53.origin = *MEMORY[0x277CBF398];
  v53.size = v31;
  v32 = CVBufferCopyAttachment(self->_inputPixelBuffer, *MEMORY[0x277CF5318], 0);
  if (v32)
  {
    v33 = v32;
    CGRectMakeWithDictionaryRepresentation(v32, &v53);
    CFRelease(v33);
  }

  *&a3[2].var1.var8.var0 = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *&a3[2].var1.var8.var2 = _D0;
  if (!CGRectIsNull(v53))
  {
    Width = CVPixelBufferGetWidth(self->_inputPixelBuffer);
    Height = CVPixelBufferGetHeight(self->_inputPixelBuffer);
    v41.i64[0] = Width;
    v41.i64[1] = Height;
    v42 = vcvtq_f64_f32(vcvt_f32_f64(vcvtq_f64_u64(v41)));
    v43 = vcvt_f32_f64(vdivq_f64(v53.origin, v42));
    *&v42.f64[0] = vcvt_f32_f64(vdivq_f64(v53.size, v42));
    *&a3[2].var1.var8.var0 = v43;
    *&a3[2].var1.var8.var2 = v42.f64[0];
  }

  outputDimensions = self->_outputDimensions;
  v45.i64[0] = outputDimensions.width;
  v45.i64[1] = outputDimensions.height;
  v46 = vcvtq_f64_s64(v45);
  v47 = vmulq_f64(self->_outputROI.origin, v46);
  __asm { FMOV            V3.2D, #10.0 }

  v49 = vaddq_f64(vaddq_f64(v47, vmulq_f64(self->_outputROI.size, v46)), _Q3);
  __asm { FMOV            V3.2D, #-10.0 }

  v51 = vmaxnmq_f64(vaddq_f64(v47, _Q3), 0);
  *&a3[2].var1.var8.var4 = vcvt_f32_f64(vdivq_f64(v51, v46));
  *&a3[2].var1.var8.var6 = vcvt_f32_f64(vdivq_f64(vsubq_f64(vbslq_s8(vcgtq_f64(v46, v49), v49, v46), v51), v46));
  return 0;
}

- (int)_encodeRender:(id)a3 inputLumaTex:(id)a4 inputChromaTex:(id)a5 outputLumaTex:(id)a6 outputChromaTex:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(VCProcessor *)self _fillRenderParams:v23];
  if (!v17)
  {
    v18 = [(VCShaders *)self->_shaders objectAtIndexedSubscript:0];
    [v12 setComputePipelineState:v18];

    [v12 setTexture:v13 atIndex:0];
    [v12 setTexture:v14 atIndex:1];
    [v12 setTexture:v15 atIndex:2];
    [v12 setTexture:v16 atIndex:3];
    [v12 setBytes:v23 length:544 atIndex:0];
    [v12 setImageblockWidth:32 height:32];
    v22[0] = [v15 width];
    v22[1] = [v15 height];
    v22[2] = 1;
    v20 = vdupq_n_s64(0x20uLL);
    v21 = 1;
    [v12 dispatchThreads:v22 threadsPerThreadgroup:&v20];
  }

  return v17;
}

- (int)_encodeDownsample:(id)a3 inputLumaTex:(id)a4 inputChromaTex:(id)a5 outputLumaTex:(id)a6 outputChromaTex:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(VCShaders *)self->_shaders objectAtIndexedSubscript:1];
  [v12 setComputePipelineState:v17];

  [v12 setTexture:v13 atIndex:0];
  [v12 setTexture:v14 atIndex:1];
  [v12 setTexture:v15 atIndex:2];
  [v12 setTexture:v16 atIndex:3];
  [v12 setImageblockWidth:32 height:32];
  v21[0] = [v15 width];
  v21[1] = [v15 height];
  v21[2] = 1;
  v19 = vdupq_n_s64(0x20uLL);
  v20 = 1;
  [v12 dispatchThreads:v21 threadsPerThreadgroup:&v19];

  return 0;
}

- (int)_createRenderTargetForOutputLumaTex:(id)a3 outputChromaTex:(id)a4 renderTargetLumaTex:(id *)a5 renderTargetChromaTex:(id *)a6
{
  v10 = a3;
  v11 = a4;
  Width = CVPixelBufferGetWidth(self->_inputPixelBuffer);
  Height = CVPixelBufferGetHeight(self->_inputPixelBuffer);
  inputPixelBuffer = self->_inputPixelBuffer;
  if (Width >= Height)
  {
    v15 = CVPixelBufferGetHeight(inputPixelBuffer);
  }

  else
  {
    v15 = CVPixelBufferGetWidth(inputPixelBuffer);
  }

  v16 = v15;
  v17 = CVPixelBufferGetWidth(self->_outputPixelBuffer);
  v18 = CVPixelBufferGetHeight(self->_outputPixelBuffer);
  outputPixelBuffer = self->_outputPixelBuffer;
  if (v17 >= v18)
  {
    v20 = CVPixelBufferGetHeight(outputPixelBuffer);
  }

  else
  {
    v20 = CVPixelBufferGetWidth(outputPixelBuffer);
  }

  v21 = llroundf(log2f(v16 / v20));
  if (v21 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  v23 = v22 - 1;
  if (v21 <= 5)
  {
    v24 = v23;
  }

  else
  {
    v24 = 4;
  }

  if (v24)
  {
    v25 = [(FigMetalContext *)self->_context allocator];
    v26 = [v25 newTextureDescriptor];

    [v26 setLabel:0];
    v27 = [v10 pixelFormat];
    v28 = [v26 desc];
    [v28 setPixelFormat:v27];

    v29 = [v10 width];
    v30 = [v26 desc];
    [v30 setWidth:v29 << v24];

    v31 = [v10 height];
    v32 = [v26 desc];
    [v32 setHeight:v31 << v24];

    v33 = [v26 desc];
    [v33 setUsage:7];

    v34 = [(FigMetalContext *)self->_context allocator];
    v35 = [v34 newTextureWithDescriptor:v26];

    [v26 setLabel:0];
    v36 = [v11 pixelFormat];
    v37 = [v26 desc];
    [v37 setPixelFormat:v36];

    v38 = [v11 width];
    v39 = [v26 desc];
    [v39 setWidth:v38 << v24];

    v40 = [v11 height];
    v41 = [v26 desc];
    [v41 setHeight:v40 << v24];

    v42 = [v26 desc];
    [v42 setUsage:7];

    v43 = [(FigMetalContext *)self->_context allocator];
    v44 = [v43 newTextureWithDescriptor:v26];

    v45 = -1;
    if (v35 && v44)
    {
      v46 = v35;
      *a5 = v35;
      v47 = v44;
      v45 = 0;
      *a6 = v44;
    }
  }

  else
  {
    FigMetalIncRef();
    FigMetalIncRef();
    v48 = v10;
    *a5 = v10;
    v49 = v11;
    v45 = 0;
    *a6 = v11;
  }

  return v45;
}

- (int)_encodeRenderTargetResolve:(id)a3 renderTargetLumaTex:(id)a4 renderTargetChromaTex:(id)a5 outputLumaTex:(id)a6 outputChromaTex:(id)a7
{
  v12 = a3;
  v13 = a4;
  v45 = a5;
  v14 = a6;
  v15 = a7;
  v46 = 0;
  location = 0;
  v44 = v13;
  if (v13 == v14)
  {
    v40 = 0;
  }

  else
  {
    FigMetalIncRef();
    FigMetalIncRef();
    objc_storeStrong(&location, a4);
    objc_storeStrong(&v46, a5);
    v16 = 0;
    v17 = 0;
    for (i = v13; ; i = location)
    {
      v19 = [i width];
      if ([v14 width] >= v19 >> 1)
      {
        v41 = v14;

        v42 = v15;
        v16 = v41;
        v17 = v42;
      }

      else
      {
        v20 = [(FigMetalContext *)self->_context allocator];
        v21 = [v20 newTextureDescriptor];

        [v21 setLabel:0];
        v22 = [location pixelFormat];
        v23 = [v21 desc];
        [v23 setPixelFormat:v22];

        v24 = [location width];
        v25 = [v21 desc];
        [v25 setWidth:v24 >> 1];

        v26 = [location height];
        v27 = [v21 desc];
        [v27 setHeight:v26 >> 1];

        v28 = [v21 desc];
        [v28 setUsage:7];

        v29 = [(FigMetalContext *)self->_context allocator];
        v30 = [v29 newTextureWithDescriptor:v21];

        [v21 setLabel:0];
        v31 = [v46 pixelFormat];
        v32 = [v21 desc];
        [v32 setPixelFormat:v31];

        v33 = [v46 width];
        v34 = [v21 desc];
        [v34 setWidth:v33 >> 1];

        v35 = [v46 height];
        v36 = [v21 desc];
        [v36 setHeight:v35 >> 1];

        v37 = [v21 desc];
        [v37 setUsage:7];

        v38 = [(FigMetalContext *)self->_context allocator];
        v39 = [v38 newTextureWithDescriptor:v21];

        v40 = -1;
        if (!v30)
        {
          goto LABEL_13;
        }

        v16 = v30;
        v17 = v39;
        if (!v39)
        {
          goto LABEL_13;
        }
      }

      v40 = [(VCProcessor *)self _encodeDownsample:v12 inputLumaTex:location inputChromaTex:v46 outputLumaTex:v16 outputChromaTex:v17];
      if (v40)
      {
        break;
      }

      FigMetalDecRef();
      FigMetalDecRef();
      if (v16 == v14)
      {
        v40 = 0;
        break;
      }

      objc_storeStrong(&location, v16);
      objc_storeStrong(&v46, v17);
    }

    v30 = v16;
    v39 = v17;
LABEL_13:
  }

  return v40;
}

- (int)_render
{
  v25 = 0;
  v26 = 0;
  if (!self->_centerStagePassthrough || !self->_autoFramingEnabled)
  {
    v8 = [(VCProcessor *)self _bindCVPixleBuffer:self->_inputPixelBuffer usage:1];
    v9 = v8;
    if (v8 && [v8 count] == 2)
    {
      v10 = [(VCProcessor *)self _bindCVPixleBuffer:self->_outputPixelBuffer usage:7];
      v11 = v10;
      if (v10 && [v10 count] == 2)
      {
        v3 = [v9 objectAtIndexedSubscript:0];
        v12 = [v9 objectAtIndexedSubscript:1];
        v5 = [v11 objectAtIndexedSubscript:0];
        v13 = [v11 objectAtIndexedSubscript:1];
        v22 = v12;

        v23 = 0;
        v24 = 0;
        v21 = v13;
        v4 = [(VCProcessor *)self _createRenderTargetForOutputLumaTex:v5 outputChromaTex:v13 renderTargetLumaTex:&v24 renderTargetChromaTex:&v23];
        v14 = v24;
        v26 = v14;
        v15 = v23;
        v25 = v15;
        if (v4)
        {
          v6 = 0;
          v7 = 0;
        }

        else
        {
          v16 = v15;
          v17 = [(FigMetalContext *)self->_context commandBuffer];
          v18 = v17;
          if (v17)
          {
            v19 = [v17 computeCommandEncoder];
            if (v19)
            {
              v4 = [(VCProcessor *)self _encodeRender:v19 inputLumaTex:v3 inputChromaTex:v22 outputLumaTex:v14 outputChromaTex:v16];
              if (!v4)
              {
                v4 = [(VCProcessor *)self _encodeRenderTargetResolve:v19 renderTargetLumaTex:v14 renderTargetChromaTex:v16 outputLumaTex:v5 outputChromaTex:v21];
                if (!v4)
                {
                  [v19 endEncoding];
                  [(FigMetalContext *)self->_context commit];
                  v4 = 0;
                }
              }

              v6 = v18;
              v7 = v19;
            }

            else
            {
              v7 = 0;
              v4 = -1;
              v6 = v18;
            }
          }

          else
          {
            fig_log_get_emitter();
            v6 = 0;
            v4 = FigSignalErrorAtGM();
            v7 = 0;
          }
        }

        goto LABEL_15;
      }
    }

    v21 = 0;
    v22 = 0;
    v5 = 0;
    v3 = 0;
    v6 = 0;
    v7 = 0;
    v4 = -1;
LABEL_15:
    FigMetalDecRef();
    FigMetalDecRef();
    goto LABEL_16;
  }

  v3 = 0;
  v4 = [(CinematicFramingSession *)self->_framingSession processPixelBuffer:self->_inputPixelBuffer outputPixelBuffer:self->_outputPixelBuffer];
  v21 = 0;
  v22 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
LABEL_16:

  return v4;
}

- (int)_setOutputPixelBufferAttachments
{
  v2 = self;
  v3 = *MEMORY[0x277CF3FC8];
  v4 = CVBufferCopyAttachment(self->_outputPixelBuffer, *MEMORY[0x277CF3FC8], 0);
  if (!v4)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    if (!v4)
    {
      goto LABEL_27;
    }
  }

  v5 = [(CinematicFramingSessionInputMetadata *)v2->_inputMetadata detectedObjectsInfo];

  if (v5)
  {
    v6 = [(CinematicFramingSessionInputMetadata *)v2->_inputMetadata detectedObjectsInfo];
    v24 = v6;
    v25 = v4;
    DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], v6, 1uLL);
    if (DeepCopy)
    {
      v23 = v3;
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __47__VCProcessor__setOutputPixelBufferAttachments__block_invoke;
      v43[3] = &unk_278DBCCB8;
      v22 = v2;
      v43[4] = v2;
      v8 = MEMORY[0x245D37F20](v43);
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      obj = DeepCopy;
      v9 = [obj countByEnumeratingWithState:&v39 objects:v38 count:16];
      if (v9)
      {
        v27 = *v40;
        v26 = *MEMORY[0x277CF4440];
        v10 = *MEMORY[0x277CF50B8];
        v11 = *MEMORY[0x277CF4408];
        v32 = *MEMORY[0x277CF4EF0];
        v31 = *MEMORY[0x277CF50C8];
        do
        {
          v12 = 0;
          v28 = v9;
          do
          {
            if (*v40 != v27)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v39 + 1) + 8 * v12);
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v14 = [obj objectForKeyedSubscript:v13];
            v15 = [v14 objectForKeyedSubscript:v26];
            v30 = v12;

            v16 = [v15 countByEnumeratingWithState:&v34 objects:v33 count:16];
            if (v16)
            {
              v17 = *v35;
              do
              {
                for (i = 0; i != v16; ++i)
                {
                  if (*v35 != v17)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v19 = *(*(&v34 + 1) + 8 * i);
                  v8[2](v8, v19, v10);
                  if ([v13 isEqual:v11])
                  {
                    v8[2](v8, v19, v32);
                    v8[2](v8, v19, v31);
                  }
                }

                v16 = [v15 countByEnumeratingWithState:&v34 objects:v33 count:16];
              }

              while (v16);
            }

            v12 = v30 + 1;
          }

          while (v30 + 1 != v28);
          v9 = [obj countByEnumeratingWithState:&v39 objects:v38 count:16];
        }

        while (v9);
      }

      [v25 setObject:obj forKeyedSubscript:*MEMORY[0x277CF4BD0]];
      v4 = v25;
      v2 = v22;
      v3 = v23;
      goto LABEL_22;
    }

LABEL_27:
    v20 = -1;
    goto LABEL_25;
  }

LABEL_22:
  if (!v2->_autoFramingEnabled)
  {
    [v4 setValuesForKeysWithDictionary:v2->_manualFramingStateMetadata];
  }

  CVBufferSetAttachment(v2->_outputPixelBuffer, v3, v4, kCVAttachmentMode_ShouldPropagate);
  v20 = 0;
LABEL_25:

  return v20;
}

void __47__VCProcessor__setOutputPixelBufferAttachments__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = CGRectMakeWithDictionaryRepresentation(v7, &v10);

  if (v8)
  {
    [*(a1 + 32) warpCGRect:{v10.origin.x, v10.origin.y, v10.size.width, v10.size.height}];
    v10 = v11;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v11);
    [v5 setObject:DictionaryRepresentation forKeyedSubscript:v6];
  }
}

- (CGRect)outputROI
{
  x = self->_outputROI.origin.x;
  y = self->_outputROI.origin.y;
  width = self->_outputROI.size.width;
  height = self->_outputROI.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (int)process
{
  if (!self->_inputPixelBuffer || !self->_inputCamera || !self->_outputPixelBuffer || !self->_outputCamera)
  {
    return -1;
  }

  processingType = self->_processingType;
  if (processingType != 1)
  {
    if (!processingType && self->_inputMetadata)
    {
      return [(VCProcessor *)self _processVideo];
    }

    return -1;
  }

  return [(VCProcessor *)self _processStill];
}

- (int)_processVideo
{
  result = [(VCProcessor *)self _updateCamera:self->_inputCamera withMetadata:self->_inputMetadata];
  if (!result)
  {
    outputCamera = self->_outputCamera;
    v5 = [(VCCameraAnimator *)self->_outputCameraAnimator animatedCamera];

    if (outputCamera == v5)
    {
      v6 = [(VCCameraAnimator *)self->_outputCameraAnimator targetCamera];
      v7 = self->_outputCamera;
      self->_outputCamera = v6;
    }

    if (self->_autoFramingEnabled)
    {
      result = [(VCProcessor *)self _updateAutoFraming];
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = [(VCProcessor *)self _updateManualFraming];
      if (result)
      {
        return result;
      }
    }

    OUTLINED_FUNCTION_1();
    if (!v8 || (result = [(VCProcessor *)self _updateOutputCameraForRollCorrection]) == 0)
    {
      OUTLINED_FUNCTION_3();
      if ((!v8 || (result = [(VCProcessor *)self _updateOutputCameraFisheyeEffect]) == 0) && (!self->_confineOutputCamera || (result = [(VCProcessor *)self _confineOutputCameraToInputCameraFrustum:1]) == 0))
      {
        result = [(VCProcessor *)self _updateOutputCameraAnimation];
        if (!result)
        {
          result = [(VCProcessor *)self _render];
          if (!result && (self->_autoFramingEnabled || (result = [(VCProcessor *)self _updateManualFramingStateMetadata]) == 0))
          {
            if (self->_attachMetadataToOutputPixelBuffer)
            {

              return [(VCProcessor *)self _setOutputPixelBufferAttachments];
            }

            else
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

- (int)_updateAutoFraming
{
  v3 = [(VCProcessor *)self _updateCamera:self->_inputCamera withMetadata:self->_inputMetadata];
  if (!v3)
  {
    v9 = 0;
    v8 = 0;
    v7 = 0.0;
    [(CinematicFramingSession *)self->_framingSession processWithMetadata:self->_inputMetadata];
    [(VCProcessor *)self _getEquivalentOutputCameraFocalLength:&v9 rotation:&v7 forViewport:?];
    HIDWORD(v4) = HIDWORD(v9);
    *&v4 = fmaxf(*&v9, *(&v9 + 1));
    [(VCCamera *)self->_outputCamera setFocalLength:v4];
    [(VCCamera *)self->_outputCamera setRotation:v7];
    [(VCProcessor *)self _getBaseZoomFactor:self->_outputCamera];
    self->_videoZoomFactor = v5;
  }

  return v3;
}

- (int)_updateOutputCameraAnimation
{
  if (self->_framingModeJustChanged)
  {
    [(VCCameraAnimator *)self->_outputCameraAnimator configureWithPreset:2];
    self->_framingModeJustChanged = 0;
  }

  v3 = [(VCCameraAnimator *)self->_outputCameraAnimator animatedCamera];

  outputCameraAnimator = self->_outputCameraAnimator;
  if (v3)
  {
    inputMetadata = self->_inputMetadata;
    if (inputMetadata)
    {
      [(CinematicFramingSessionInputMetadata *)inputMetadata timestamp];
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }

    [(VCCameraAnimator *)outputCameraAnimator updateToTime:&v12];
  }

  else
  {
    v6 = self->_inputMetadata;
    if (v6)
    {
      [(CinematicFramingSessionInputMetadata *)v6 timestamp];
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }

    [(VCCameraAnimator *)outputCameraAnimator startAtTime:&v12 withCamera:self->_outputCamera];
  }

  if (self->_autoFramingEnabled && ![(VCCameraAnimator *)self->_outputCameraAnimator animating])
  {
    [(VCCameraAnimator *)self->_outputCameraAnimator configureWithPreset:1];
  }

  v7 = [(VCCameraAnimator *)self->_outputCameraAnimator animatedCamera];

  if (v7)
  {
    v8 = [(VCCameraAnimator *)self->_outputCameraAnimator animatedCamera];
    outputCamera = self->_outputCamera;
    self->_outputCamera = v8;
  }

  OUTLINED_FUNCTION_1();
  if (!v10 || (result = [(VCProcessor *)self _updateOutputCameraForRollCorrection]) == 0)
  {
    OUTLINED_FUNCTION_3();
    if (v10)
    {
      [(VCProcessor *)self _updateOutputCameraFisheyeEffect];
    }

    if (self->_confineOutputCamera)
    {
      return [(VCProcessor *)self _confineOutputCameraToInputCameraFrustum:0];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (int)_confineOutputCameraToInputCameraFrustum:(BOOL)a3
{
  if (a3)
  {
    LODWORD(v3) = 1.0;
    [(VCCamera *)self->_outputCamera setZoomFactor:v3];
  }

  [(VCCamera *)self->_outputCamera zoomFactor];
  v6 = v5;
  [(VCCamera *)self->_outputCamera rotation];
  v36 = v7;
  if (OUTLINED_FUNCTION_2(*&v7))
  {
    return 0;
  }

  LODWORD(v8) = 10.0;
  [(VCCamera *)self->_outputCamera setZoomFactor:v8];
  [(VCCamera *)self->_inputCamera rotation];
  [(VCCamera *)self->_outputCamera setRotation:v9];
  OUTLINED_FUNCTION_1();
  if (v11)
  {
    [(VCProcessor *)self _updateOutputCameraForRollCorrection];
  }

  v12 = OUTLINED_FUNCTION_2(v10);
  LODWORD(v13) = v6;
  [(VCCamera *)self->_outputCamera setZoomFactor:v13];
  outputCamera = self->_outputCamera;
  if (v12)
  {
    if ((isViewFrustumContained(outputCamera, self->_inputCamera, v14) & 1) == 0)
    {
      [(VCCamera *)self->_outputCamera zoomFactor];
      v17 = *&v16;
      v18 = 10.0;
      if (fabsf(*&v16 + -10.0) > 0.001)
      {
        v19 = 22;
        do
        {
          if (!--v19)
          {
            break;
          }

          v20 = (v18 + v17) * 0.5;
          *&v16 = v20;
          [(VCCamera *)self->_outputCamera setZoomFactor:v16];
          OUTLINED_FUNCTION_3();
          if (v11)
          {
            [(VCProcessor *)self _updateOutputCameraFisheyeEffect];
          }

          if (OUTLINED_FUNCTION_2(v21))
          {
            v18 = (v18 + v17) * 0.5;
          }

          else
          {
            v17 = v20;
          }
        }

        while (vabds_f32(v17, v18) > 0.001);
      }

      *&v16 = v18;
      [(VCCamera *)self->_outputCamera setZoomFactor:v16];
      OUTLINED_FUNCTION_3();
      if (v11)
      {
        [(VCProcessor *)self _updateOutputCameraFisheyeEffect];
      }
    }

    [(VCCamera *)self->_outputCamera setRotation:*&v36];
    if ((OUTLINED_FUNCTION_2(v22) & 1) == 0)
    {
      [(VCCamera *)self->_outputCamera rotation];
      v38 = v23;
      [(VCCamera *)self->_inputCamera rotation];
      v25 = v24;
      v25.i32[2] = DWORD2(v36);
      if (OUTLINED_FUNCTION_0(*&v36, v26, v25, v38) > 0.001)
      {
        v29 = 22;
        do
        {
          if (!--v29)
          {
            break;
          }

          v37 = v27;
          v39 = v28;
          v30.i64[0] = 0x3F0000003F000000;
          v30.i64[1] = 0x3F0000003F000000;
          v35 = vmulq_f32(vaddq_f32(v28, v27), v30);
          [(VCCamera *)self->_outputCamera setRotation:?];
          OUTLINED_FUNCTION_1();
          if (v11)
          {
            [(VCProcessor *)self _updateOutputCameraForRollCorrection];
          }

          v32 = OUTLINED_FUNCTION_2(v31) ? -1 : 0;
          v33 = vdupq_n_s32(v32);
        }

        while (OUTLINED_FUNCTION_0(*v33.i64, *v35.i64, vbslq_s8(v33, v35, v37), vbslq_s8(v33, v39, v35)) > 0.001);
      }

      [(VCCamera *)self->_outputCamera setRotation:*v27.i64];
      OUTLINED_FUNCTION_1();
      if (v11)
      {
        [(VCProcessor *)self _updateOutputCameraForRollCorrection];
      }
    }

    return 0;
  }

  [(VCCamera *)outputCamera setRotation:*&v36];
  return -1;
}

@end