@interface DeskCamRenderingSession
- ($7350132BDA356DD21C3911335718E94B)_deskEdgeDetectorResult;
- ($FF63358D52D30A0EA7A28A9F851E591F)_undistortControls;
- (CGRect)_defaultFramingSpaceViewport:(float)viewport;
- (CGRect)_defaultZoomedRectangleValue;
- (CGRect)_estimateSubjectRectangleInFramingSpaceFromSubjectRectangleInSensorSpace:(CGRect)space;
- (CGRect)_framingSpaceRectangleLandscapeLeft;
- (CGRect)_scaleViewportToFitInFramingSpace:(CGRect)space;
- (CGRect)_shiftFramingSpaceRectangleToExploitSensorSpace:(CGRect)space;
- (CGRect)rectangleForZoomFactorValue:(float)value;
- (DeskCamRenderingSession)initWithOutputDimensions:(id)dimensions portType:(id)type deviceType:(int)deviceType isFrontFacingCamera:(BOOL)camera;
- (double)_pitchMatrix;
- (double)_rollMatrix;
- (double)_transformMatrixWithOutputCropRectangle:(double)rectangle;
- (double)_translationVector;
- (float)_filterAutoZoomScalingFactor:(float)factor;
- (float)_viewportScaleMultiplier;
- (float)autoZoomValue;
- (float32x2_t)_mapNormalizedPointInFramingSpaceToOutputCropRect:(simd_float3)rect withTransformMatrix:(simd_float3)matrix;
- (float32x2_t)_mapPointFromNormalizedSensorSpaceToNormalizedFramingSpace:(uint64_t)space;
- (float32x2_t)_projectPoint:(int8x16_t)point intrinsicMatrix:(double)matrix rotationMatrix:(float32x4_t)rotationMatrix;
- (float32x2_t)focusPoint;
- (float32x2_t)trapezoidForZoomFactorValue:(float32x2_t *)value;
- (id)_compileComputeShader:(id)shader;
- (id)_newBufferWithLength:(unint64_t)length options:(unint64_t)options label:(id)label;
- (int)_allocateTextures;
- (int)_compileShaders;
- (int)processBuffer:(__CVBuffer *)buffer outputPixelBuffer:(__CVBuffer *)pixelBuffer;
- (uint64_t)_allocateTextures;
- (uint64_t)_compileShaders;
- (uint64_t)_initializeMetal;
- (uint64_t)_updateDeskEdgeDetectionDataInOutputSpace;
- (unsigned)exifOrientation;
- (void)_filterDeskEdgeDetectorEndPoints:(DeskCamRenderingSession *)self :(SEL)a2;
- (void)_initializeControls;
- (void)_initializeMetal;
- (void)_setRollNominalValue;
- (void)_updateDeskEdgeDetectionDataInOutputSpace;
- (void)_updatePitch;
- (void)_updatePitchAndRoll;
- (void)_updateRoll;
- (void)_updateSubjectRectangleInSensorSpace:(CGRect *)space withDetections:(id)detections;
- (void)dealloc;
- (void)registerBodyDetections:(id)detections;
- (void)registerCameraCalibrationDictionary:(id)dictionary;
- (void)registerCameraOrientation:(int)orientation;
- (void)registerGravity:(DeskCamRenderingSession *)self;
- (void)setOptions:(id)options;
@end

@implementation DeskCamRenderingSession

- (DeskCamRenderingSession)initWithOutputDimensions:(id)dimensions portType:(id)type deviceType:(int)deviceType isFrontFacingCamera:(BOOL)camera
{
  cameraCopy = camera;
  typeCopy = type;
  v24.receiver = self;
  v24.super_class = DeskCamRenderingSession;
  v12 = [(DeskCamRenderingSession *)&v24 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_8;
  }

  v12->_outputDimensions = dimensions;
  objc_storeStrong(&v12->_portType, type);
  v13->_deviceType = deviceType;
  v13->_isFrontFacingCamera = cameraCopy;
  if (cameraCopy)
  {
    v14 = 4;
  }

  else
  {
    v14 = 3;
  }

  v13->_cameraOrientation = v14;
  v15.i64[0] = 0x3F0000003FLL;
  v15.i64[1] = 0x3F0000003FLL;
  *v13->_gravity = vnegq_f32(v15);
  v13->_gravityVectorUpdated = 0;
  *&v13->_pitch = vneg_f32(0x3F0000003FLL);
  v16 = *MEMORY[0x277D860B0];
  v17 = *(MEMORY[0x277D860B0] + 16);
  v18 = *(MEMORY[0x277D860B0] + 32);
  *&v13->_anon_1d0[19] = v17;
  *&v13->_anon_1d0[35] = v18;
  *&v13->_anon_1a0[3] = v16;
  *&v13->_anon_1a0[19] = v17;
  *&v13->_anon_1a0[35] = v18;
  *&v13->_anon_1d0[3] = v16;
  v13->_undistortControlsAvailable = 0;
  v20 = *MEMORY[0x277CBF398];
  v19 = *(MEMORY[0x277CBF398] + 16);
  v13->_subjectRectangleInSensorSpace.origin = *MEMORY[0x277CBF398];
  v13->_subjectRectangleInSensorSpace.size = v19;
  v13->_subjectRectangleInFramingSpace.origin = v20;
  v13->_subjectRectangleInFramingSpace.size = v19;
  v13->_autoZoomSupported = (deviceType - 3) < 2;
  LODWORD(v13->_autoZoomScalingFactor) = dword_2434F78A8[(deviceType - 3) < 2];
  *&v13->_anon_ad0[8] = 0x1E3F666666;
  *v13->_anon_ad0 = vneg_f32(0x80000000800000);
  v13->_anon_ad0[48] = 1;
  *&v13->_anon_ad0[52] = 1157234688;
  *&v13->_anon_ad0[56] = 0;
  *&v13->_autoZoomFilteringController.temporalAlpha = 0x3CA3D70A3F600000;
  v13->_autoZoomFilteringController.largeChangeThresh = 0.15;
  *&v13->_autoZoomFilteringController.errorMarginToCatch = 0x38D1B7173CF5C28FLL;
  v13->_autoZoomFilteringController.runningBuffer.size = 30;
  v13->_autoZoomFilteringController.autoZoomState = 0;
  *&v13->_autoZoomFilteringController.smallChangeObservationDurationMaxValue = xmmword_2434F7920;
  *&v13->_autoZoomFilteringController.largeChangeObservationDuration = 0x1E00000006;
  [(DeskCamRenderingSession *)v13 _initializeMetal];
  v13->_autoZoomFilteringController.runningBuffer.count = 0;
  v13->_autoZoomFilteringController.runningBuffer.currIdx = 0;
  v21 = malloc_type_calloc(v13->_autoZoomFilteringController.runningBuffer.size, 4uLL, 0x100004052888210uLL);
  v13->_autoZoomFilteringController.runningBuffer.data = v21;
  if (!v21)
  {
    [DeskCamRenderingSession initWithOutputDimensions:portType:deviceType:isFrontFacingCamera:];
LABEL_8:
    v22 = 0;
    goto LABEL_9;
  }

  v22 = v13;
LABEL_9:

  return v22;
}

- (void)dealloc
{
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  metalTextureCacheRef = self->_metalTextureCacheRef;
  if (metalTextureCacheRef)
  {
    CVMetalTextureCacheFlush(metalTextureCacheRef, 0);
    v5 = self->_metalTextureCacheRef;
    if (v5)
    {
      CFRelease(v5);
    }
  }

  free(*&self->_anon_ad0[24]);
  free(*&self->_anon_ad0[32]);
  free(*&self->_anon_ad0[40]);
  free(self->_autoZoomFilteringController.runningBuffer.data);

  v6.receiver = self;
  v6.super_class = DeskCamRenderingSession;
  [(DeskCamRenderingSession *)&v6 dealloc];
}

- (void)setOptions:(id)options
{
  objc_storeStrong(&self->_options, options);

  [(DeskCamRenderingSession *)self _initializeControls];
}

- (void)_initializeControls
{
  [(DeskCamSessionOptions *)self->_options imageBlendingPercentage];
  self->_imageBlendingControls.blendingPercentage = v3;
  [(DeskCamSessionOptions *)self->_options imageBlendingRadiusUpscaler];
  self->_imageBlendingControls.radiusUpscaler = v4;
  self->_imageBlurringControls.enabled = [(DeskCamSessionOptions *)self->_options imageBlurringEnabled];
  self->_imageBlurringControls.size = [(DeskCamSessionOptions *)self->_options imageBlurringKernelSize];
  [(DeskCamSessionOptions *)self->_options imageBlurringSigma];
  self->_imageBlurringControls.sigma = v5;
  _estimateGaussianWeights(self->_imageBlurringControls.size, self->_imageBlurringControls.weights, v5);
  self->_imageSharpeningControls.enabled = [(DeskCamSessionOptions *)self->_options imageSharpeningEnabled];
  self->_imageSharpeningControls.size = [(DeskCamSessionOptions *)self->_options imageSharpeningKernelSize];
  [(DeskCamSessionOptions *)self->_options imageSharpeningSigma];
  self->_imageSharpeningControls.sigma = v6;
  [(DeskCamSessionOptions *)self->_options imageSharpeningAmount];
  self->_imageSharpeningControls.amount = v7;
  _estimateGaussianWeights(self->_imageSharpeningControls.size, self->_imageSharpeningControls.weights, self->_imageSharpeningControls.sigma);
  self->_imageToneMappingControls.enabled = [(DeskCamSessionOptions *)self->_options imageToneMappingEnabled];
  [(DeskCamSessionOptions *)self->_options imageToneMappingExponent];
  self->_imageToneMappingControls.exponent = v8;
  [(DeskCamSessionOptions *)self->_options imageToneMappingScaler];
  self->_imageToneMappingControls.scaler = v9;
  self->_anon_ad0[64] = 1;
  *&self->_anon_ad0[68] = 0x3FC0000000000003;
  _estimateGaussianWeights(3, &self->_anon_ad0[76], 1.5);
  [(DeskCamRenderingSession *)self _setRollNominalValue];

  [(DeskCamRenderingSession *)self _setPitchNominalValue];
}

- (void)registerCameraCalibrationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"IntrinsicMatrixReferenceDimensions"];
  v6 = [v5 objectForKeyedSubscript:@"Width"];
  [v6 floatValue];
  *&self->_anon_d0[3] = v7;

  v8 = [dictionaryCopy objectForKeyedSubscript:@"IntrinsicMatrixReferenceDimensions"];
  v9 = [v8 objectForKeyedSubscript:@"Height"];
  [v9 floatValue];
  *&self->_anon_d0[7] = v10;

  v11 = [dictionaryCopy objectForKeyedSubscript:@"LensDistortionCenter"];
  v12 = [v11 objectForKeyedSubscript:@"X"];
  [v12 floatValue];
  *&self->_anon_d0[123] = v13;

  v14 = [dictionaryCopy objectForKeyedSubscript:@"LensDistortionCenter"];
  v15 = [v14 objectForKeyedSubscript:@"Y"];
  [v15 floatValue];
  *&self->_anon_d0[127] = v16;

  v17 = [dictionaryCopy objectForKeyedSubscript:@"PixelSize"];
  [v17 floatValue];
  v19 = v18;

  *&self->_anon_d0[131] = v19 * v19;
  v34 = [dictionaryCopy objectForKeyedSubscript:@"LensDistortionCoefficients"];
  v20 = v34;
  bytes = [v34 bytes];
  v22 = bytes[1];
  *&self->_anon_d0[171] = *bytes;
  *&self->_anon_d0[187] = v22;
  v23 = [dictionaryCopy objectForKeyedSubscript:@"InverseLensDistortionCoefficients"];
  bytes2 = [v23 bytes];
  v25 = bytes2[1];
  *&self->_anon_d0[139] = *bytes2;
  *&self->_anon_d0[155] = v25;
  v26 = [dictionaryCopy objectForKeyedSubscript:@"IntrinsicMatrix"];
  bytes3 = [v26 bytes];
  v29 = bytes3[1];
  v28 = bytes3[2];
  *&self->_anon_d0[67] = *bytes3;
  *&self->_anon_d0[83] = v29;
  *&self->_anon_d0[99] = v28;
  v30 = *&self->_anon_d0[67];
  v31 = *&self->_anon_d0[83];
  v32 = *&self->_anon_d0[99];
  *&self->_anon_d0[75] = v32;
  *&self->_anon_d0[91] = DWORD1(v32);
  *&self->_anon_d0[67] = vzip1q_s32(v30, v31).u64[0];
  *&self->_anon_d0[83] = vtrn2q_s32(v30, v31).u64[0];
  *&self->_anon_d0[107] = DWORD2(v32);
  *&self->_anon_d0[99] = vzip1q_s32(vdupq_laneq_s32(v30, 2), vdupq_laneq_s32(v31, 2)).u64[0];
  v33 = [dictionaryCopy objectForKeyedSubscript:@"DistortionCalibrationValidMaxRadiusInPixels"];

  *&self->_anon_d0[135] = [v33 intValue];
}

- (void)registerGravity:(DeskCamRenderingSession *)self
{
  v3 = v2;
  v5 = vmvnq_s8(vorrq_s8(vcltzq_f32(v2), vcgezq_f32(v2)));
  v5.i32[3] = v5.i32[2];
  if ((vmaxvq_u32(v5) & 0x80000000) != 0)
  {
    goto LABEL_4;
  }

  v6 = vmvnq_s8(vorrq_s8(vcltzq_f32(*self->_gravity), vcgezq_f32(*self->_gravity)));
  v6.i32[3] = v6.i32[2];
  if ((vmaxvq_u32(v6) & 0x80000000) != 0)
  {
    v16 = vmulq_f32(v3, v3);
    *&v17 = v16.f32[2] + vaddv_f32(*v16.f32);
    *v16.f32 = vrsqrte_f32(v17);
    *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32)));
    *self->_gravity = vmulq_n_f32(v3, vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32))).f32[0]);
  }

  else
  {
    v21 = v3;
    v20 = *self->_gravity;
    [(DeskCamSessionOptions *)self->_options gravityVectorSmoothingAlpha];
    v19 = v7;
    v8 = vmulq_f32(v21, v21);
    *&v9 = v8.f32[2] + vaddv_f32(*v8.f32);
    *v8.f32 = vrsqrte_f32(v9);
    *v8.f32 = vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32)));
    v18 = vmulq_n_f32(v21, vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32))).f32[0]);
    [(DeskCamSessionOptions *)self->_options gravityVectorSmoothingAlpha];
    v11 = vmlaq_n_f32(vmulq_n_f32(v18, 1.0 - v10), v20, v19);
    *self->_gravity = v11;
    v12 = vdupq_n_s32(0x42C80000u);
    v13 = vmulq_f32(v21, v12);
    v13.i32[3] = 0;
    v14 = vmulq_f32(v11, v12);
    v14.i32[3] = 0;
    v15 = vmvnq_s8(vceqq_f32(vdivq_f32(vrndpq_f32(v13), v12), vdivq_f32(vrndpq_f32(v14), v12)));
    v15.i32[3] = v15.i32[2];
    if ((vmaxvq_u32(v15) & 0x80000000) == 0)
    {
LABEL_4:
      self->_gravityVectorUpdated = 0;
      return;
    }
  }

  self->_gravityVectorUpdated = 1;
}

- (void)registerCameraOrientation:(int)orientation
{
  if ((orientation + 1) <= 1)
  {
    if (self->_isFrontFacingCamera)
    {
      orientation = 4;
    }

    else
    {
      orientation = 3;
    }
  }

  self->_cameraOrientation = orientation;
}

- (void)_updateSubjectRectangleInSensorSpace:(CGRect *)space withDetections:(id)detections
{
  detectionsCopy = detections;
  v6 = MEMORY[0x277CBF398];
  v29 = *MEMORY[0x277CBF398];
  v30 = *(MEMORY[0x277CBF398] + 16);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = [detectionsCopy countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    v10 = 3.4028e38;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(detectionsCopy);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        [v12 bounds];
        v14 = v13;
        [v12 bounds];
        v31 = v14 + v15 * 0.5;
        [v12 bounds];
        v17 = v16;
        [v12 bounds];
        v18.f64[0] = v31;
        v18.f64[1] = v17 + v19;
        v20 = vcvt_f32_f64(v18);
        if (v20.f32[0] >= 0.2 && v20.f32[0] <= 0.8)
        {
          v21 = vadd_f32(v20, 0xBF800000BF000000);
          v22 = sqrtf(vaddv_f32(vmul_f32(v21, v21)));
          if (v22 < v10)
          {
            [v12 bounds];
            v24.f64[1] = v23;
            v26.f64[1] = v25;
            v29 = v26;
            v30 = v24;
            v10 = v22;
          }
        }
      }

      v8 = [detectionsCopy countByEnumeratingWithState:&v33 objects:v32 count:16];
    }

    while (v8);
  }

  v37.origin.x = v29.f64[0];
  v37.size.width = v30.f64[0];
  v37.origin.y = v29.f64[1];
  v37.size.height = v30.f64[1];
  if (CGRectIsNull(v37))
  {
    v27 = *v6;
    v28 = *(v6 + 16);
LABEL_17:
    space->origin = v27;
    space->size = v28;
    goto LABEL_18;
  }

  if (!CGRectIsNull(*space))
  {
    v28 = vmlaq_f64(vmulq_f64(v30, vdupq_n_s64(0x3FB47AE100000000uLL)), vdupq_n_s64(0x3FED70A3E0000000uLL), space->size);
    v27 = vmlaq_f64(vmulq_f64(v29, vdupq_n_s64(0x3FB70A3D00000000uLL)), vdupq_n_s64(0x3FED1EB860000000uLL), space->origin);
    goto LABEL_17;
  }

  space->origin = v29;
  space->size = v30;
LABEL_18:
}

- (void)registerBodyDetections:(id)detections
{
  if (self->_autoZoomSupported)
  {
    [(DeskCamRenderingSession *)self _updateSubjectRectangleInSensorSpace:&self->_subjectRectangleInSensorSpace withDetections:detections];
    [(DeskCamRenderingSession *)self _estimateSubjectRectangleInFramingSpaceFromSubjectRectangleInSensorSpace:self->_subjectRectangleInSensorSpace.origin.x, self->_subjectRectangleInSensorSpace.origin.y, self->_subjectRectangleInSensorSpace.size.width, self->_subjectRectangleInSensorSpace.size.height];
    self->_subjectRectangleInFramingSpace.origin.x = v4;
    self->_subjectRectangleInFramingSpace.origin.y = v5;
    self->_subjectRectangleInFramingSpace.size.width = v6;
    self->_subjectRectangleInFramingSpace.size.height = v7;
  }
}

- (CGRect)_shiftFramingSpaceRectangleToExploitSensorSpace:(CGRect)space
{
  if (self->_isFrontFacingCamera)
  {
    width = space.size.width;
    x = space.origin.x;
    v6 = *&self->_anon_d0[135];
    v7 = *&self->_anon_d0[123];
    v8.i32[0] = v7.i32[0];
    v8.f32[1] = v7.f32[1] + v6;
    v9 = vsub_f32(v8, v7);
    v10 = *&self->_anon_d0[131] * vaddv_f32(vmul_f32(v9, v9));
    v36 = self->_framingSpaceRectangle.origin.x;
    height = self->_framingSpaceRectangle.size.height;
    v38 = self->_framingSpaceRectangle.size.width;
    v12 = COERCE_FLOAT(vmla_n_f32(v7, v9, 1.0 / (((self[344] + ((self[348] + ((self[352] + ((self[356] + ((self[360] + ((self[364] + ((self[368] + (self[372] * v10)) * v10)) * v10)) * v10)) * v10)) * v10)) * v10)) * 0.01) + 1.0)).i32[1]) - height;
    [(DeskCamSessionOptions *)self->_options framingSpaceExtendPercentage];
    v13 = x + width * 0.5;
    v15 = width * v14;
    v16 = v13 - v15 * 0.5;
    v17 = v16;
    *&v15 = v15 + v16;
    v40 = LODWORD(v15);
    v41 = v17;
    v37 = height;
    v39 = v12;
    v18 = height + v12;
    v19 = 0.0;
    v20 = 30;
    v21 = -1000.0;
    while (vabds_f32(v19, v21) > 0.005)
    {
      v22 = (v21 + v19) * 0.5;
      *&v23 = v18 + v22;
      v42 = v23;
      v24 = distortPoint(&self->_anon_d0[3], __PAIR64__(v23, LODWORD(v41)));
      v25 = distortPoint(&self->_anon_d0[3], __PAIR64__(v42, v40));
      v26 = *&self->_anon_d0[123];
      v27 = vsub_f32(v24, v26);
      v28 = vsub_f32(v25, v26);
      v29 = sqrtf(vaddv_f32(vmul_f32(v28, v28)));
      if (sqrtf(vaddv_f32(vmul_f32(v27, v27))) < v6 && v29 < v6)
      {
        v21 = (v21 + v19) * 0.5;
        v22 = v19;
      }

      else
      {
        v19 = (v21 + v19) * 0.5;
      }

      if (!--v20)
      {
        goto LABEL_14;
      }
    }

    v22 = v19;
LABEL_14:
    v32 = v39 + v22;
    y = self->_framingSpaceRectangle.origin.y;
    if (v32 > y)
    {
      self->_framingSpaceRectangle.origin.x = v36;
      self->_framingSpaceRectangle.origin.y = v32;
      y = v39 + v22;
      self->_framingSpaceRectangle.size.width = v38;
      self->_framingSpaceRectangle.size.height = v37;
    }
  }

  else
  {
    y = self->_framingSpaceRectangle.origin.y;
  }

  v33 = self->_framingSpaceRectangle.origin.x;
  v34 = self->_framingSpaceRectangle.size.width;
  v35 = self->_framingSpaceRectangle.size.height;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = y;
  result.origin.x = v33;
  return result;
}

- (CGRect)_defaultFramingSpaceViewport:(float)viewport
{
  [(DeskCamRenderingSession *)self _framingSpaceRectangleLandscapeLeft];
  self->_framingSpaceRectangle = v31;
  Width = CGRectGetWidth(v31);
  v6 = self->_outputDimensions.width;
  height = self->_outputDimensions.height;
  MidX = CGRectGetMidX(self->_framingSpaceRectangle);
  MidY = CGRectGetMidY(self->_framingSpaceRectangle);
  if (self->_isFrontFacingCamera && (self->_deviceType - 2) <= 2)
  {
    [(DeskCamSessionOptions *)self->_options framingSpaceScalingFactor];
    size = self->_framingSpaceRectangle.size;
    __asm { FMOV            V3.2D, #0.5 }

    v17 = vmulq_n_f64(size, v10);
    self->_framingSpaceRectangle.origin = vmlsq_f64(vcvtq_f64_f32(vcvt_f32_f64(vmlaq_f64(self->_framingSpaceRectangle.origin, _Q3, size))), _Q3, v17);
    self->_framingSpaceRectangle.size = v17;
  }

  v18 = Width * viewport;
  v19 = v18;
  v20 = MidX - v18 * 0.5;
  v21 = (v18 / (v6 / height));
  v22 = MidY - v21 * 0.5;
  [(DeskCamRenderingSession *)self _shiftFramingSpaceRectangleToExploitSensorSpace:v20, v22, v18, v21];
  self->_framingSpaceRectangle.origin.x = v23;
  self->_framingSpaceRectangle.origin.y = v24;
  self->_framingSpaceRectangle.size.width = v25;
  self->_framingSpaceRectangle.size.height = v26;
  v27 = v20;
  v28 = v22;
  v29 = v19;
  v30 = v21;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (CGRect)_framingSpaceRectangleLandscapeLeft
{
  v3 = *&self->_anon_d0[3];
  width = v3.f32[0];
  height = v3.f32[1];
  y = 0.0;
  if (self->_isFrontFacingCamera || self->_deviceType != 1)
  {
    x = 0.0;
  }

  else
  {
    v7 = *&self->_anon_d0[135];
    v8 = *&self->_anon_d0[123];
    v9 = *&self->_anon_d0[131];
    v10 = *&self->_anon_d0[139];
    v11 = *&self->_anon_d0[143];
    v12 = *&self->_anon_d0[147];
    v13 = *&self->_anon_d0[151];
    v14 = *&self->_anon_d0[155];
    v15 = *&self->_anon_d0[159];
    v16 = *&self->_anon_d0[163];
    v17 = *&self->_anon_d0[167];
    v18.i32[1] = v8.i32[1];
    v18.f32[0] = v8.f32[0] + v7;
    v19 = vminnm_f32(vmaxnm_f32(v18, 0), v3);
    v20 = vsub_f32(v19, v8);
    v19.i32[0] = fminf(fmaxf(v8.f32[0] - v7, 0.0), v3.f32[0]);
    v21 = vsub_f32(v19, v8);
    v22 = v9 * vaddv_f32(vmul_f32(v21, v21));
    LODWORD(v23) = vmla_n_f32(v8, v21, 1.0 / (((v10 + ((v11 + ((v12 + ((v13 + ((v14 + ((v15 + ((v16 + (v17 * v22)) * v22)) * v22)) * v22)) * v22)) * v22)) * v22)) * 0.01) + 1.0)).u32[0];
    v21.f32[0] = v9 * vaddv_f32(vmul_f32(v20, v20));
    LODWORD(v24) = vmla_n_f32(v8, v20, 1.0 / (((v10 + ((v11 + ((v12 + ((v13 + ((v14 + ((v15 + ((v16 + (v17 * v21.f32[0])) * v21.f32[0])) * v21.f32[0])) * v21.f32[0])) * v21.f32[0])) * v21.f32[0])) * v21.f32[0])) * 0.01) + 1.0)).u32[0];
    v20.f32[0] = fminf(fmaxf(v23, 0.0), v3.f32[0]);
    v21.f32[0] = fminf(fmaxf(v24, 0.0), v3.f32[0]);
    v25.f32[0] = fminf(fmaxf(v8.f32[0], 0.0), v3.f32[0]);
    v26 = vsub_f32(__PAIR64__(COERCE_UNSIGNED_INT(fminf(fmaxf(v8.f32[1] - v7, 0.0), v3.f32[1])), v25.u32[0]), v8);
    v27 = v9 * vaddv_f32(vmul_f32(v26, v26));
    v25.i32[1] = fminf(fmaxf(v8.f32[1] + v7, 0.0), v3.f32[1]);
    v28 = vsub_f32(v25, v8);
    v29 = v9 * vaddv_f32(vmul_f32(v28, v28));
    v30 = vminnm_f32(vmaxnm_f32(vzip2_s32(vmla_n_f32(v8, v28, 1.0 / (((v10 + ((v11 + ((v12 + ((v13 + ((v14 + ((v15 + ((v16 + (v17 * v29)) * v29)) * v29)) * v29)) * v29)) * v29)) * v29)) * 0.01) + 1.0)), vmla_n_f32(v8, v26, 1.0 / (((v10 + ((v11 + ((v12 + ((v13 + ((v14 + ((v15 + ((v16 + (v17 * v27)) * v27)) * v27)) * v27)) * v27)) * v27)) * v27)) * 0.01) + 1.0))), 0), vdup_lane_s32(v3, 1));
    v50.origin.x = v20.f32[0];
    v50.origin.y = v30.f32[1];
    v50.size.width = (v21.f32[0] - v20.f32[0]);
    v50.size.height = (v30.f32[0] - v30.f32[1]);
    v42.origin.x = 0.0;
    v42.origin.y = 0.0;
    v42.size.width = width;
    v42.size.height = height;
    v43 = CGRectIntersection(v42, v50);
    x = v43.origin.x;
    y = v43.origin.y;
    width = v43.size.width;
    height = v43.size.height;
  }

  v32 = self->_outputDimensions.width / self->_outputDimensions.height;
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  v33 = CGRectGetWidth(v44);
  v34 = (v33 / v32);
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  if (CGRectGetHeight(v45) < v34)
  {
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    v35 = CGRectGetHeight(v46);
    v33 = v32 * v35;
    v34 = v35;
  }

  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  v36 = v33;
  v37 = CGRectGetMidX(v47) - v33 * 0.5;
  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  v38 = CGRectGetMidY(v48) - v34 * 0.5;
  v39 = v37;
  v40 = v36;
  v41 = v34;
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v38;
  result.origin.x = v39;
  return result;
}

- (int)processBuffer:(__CVBuffer *)buffer outputPixelBuffer:(__CVBuffer *)pixelBuffer
{
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  v101 = 0;
  v102 = 0;
  v98 = 0;
  v99 = 0;
  v9 = cachedTexturesFromPixelBuffer(buffer, v100, self->_metalTextureCacheRef);
  if (v9)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
LABEL_35:
    v16 = 0;
    goto LABEL_32;
  }

  v9 = cachedTexturesFromPixelBuffer(pixelBuffer, v97, self->_metalTextureCacheRef);
  if (v9)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    goto LABEL_35;
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0;
  v74 = 0u;
  v71 = 0;
  v72 = 0u;
  size = 0;
  v70 = 0u;
  origin = 0;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  [(DeskCamRenderingSession *)self _undistortControls];
  deviceType = self->_deviceType;
  if ((deviceType - 2) >= 3)
  {
    if (deviceType == 1)
    {
      v16 = qword_27ED77988;
      [computeCommandEncoder setComputePipelineState:v16];
      [computeCommandEncoder setTexture:v101 atIndex:0];
      [computeCommandEncoder setTexture:v102 atIndex:1];
      [computeCommandEncoder setTexture:v98 atIndex:2];
      [computeCommandEncoder setTexture:v99 atIndex:3];
      [computeCommandEncoder setBytes:&v65 length:512 atIndex:0];
      [computeCommandEncoder setImageblockWidth:32 height:32];
      width = [v98 width];
      height = [v98 height];
      v63 = 1;
      *v64 = vdupq_n_s64(0x20uLL);
      *&v64[16] = 1;
      [computeCommandEncoder dispatchThreads:&width threadsPerThreadgroup:v64];
      goto LABEL_31;
    }

LABEL_8:
    v19 = qword_27ED77998;
    [computeCommandEncoder setComputePipelineState:v19];
    [computeCommandEncoder setTexture:v101 atIndex:0];
    [computeCommandEncoder setTexture:v102 atIndex:1];
    [computeCommandEncoder setTexture:self->_warpedRGBLowResTexture atIndex:2];
    [computeCommandEncoder setBytes:&v65 length:512 atIndex:0];
    threadExecutionWidth = [v19 threadExecutionWidth];
    v56 = commandBuffer;
    maxTotalThreadsPerThreadgroup = [v19 maxTotalThreadsPerThreadgroup];
    width2 = [(MTLTexture *)self->_warpedRGBLowResTexture width];
    height2 = [(MTLTexture *)self->_warpedRGBLowResTexture height];
    width = width2;
    height = height2;
    v63 = 1;
    *v64 = threadExecutionWidth;
    *&v64[8] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
    *&v64[16] = 1;
    [computeCommandEncoder dispatchThreads:&width threadsPerThreadgroup:v64];
    v24 = 0;
    p_blurredRGBLowResTexture = &self->_blurredRGBLowResTexture;
    do
    {
      v26 = v19;
      v19 = qword_27ED779A8;

      [computeCommandEncoder setComputePipelineState:v19];
      if (v24)
      {
        p_warpedRGBLowResTexture = &self->_blurredRGBLowResTexture;
      }

      else
      {
        p_warpedRGBLowResTexture = &self->_warpedRGBLowResTexture;
      }

      [computeCommandEncoder setTexture:*p_warpedRGBLowResTexture atIndex:0];
      if (v24)
      {
        v28 = &self->_warpedRGBLowResTexture;
      }

      else
      {
        v28 = &self->_blurredRGBLowResTexture;
      }

      [computeCommandEncoder setTexture:*v28 atIndex:1];
      [computeCommandEncoder setBytes:&self->_imageBlurringControls length:1036 atIndex:0];
      threadExecutionWidth2 = [v19 threadExecutionWidth];
      maxTotalThreadsPerThreadgroup2 = [v19 maxTotalThreadsPerThreadgroup];
      width3 = [(MTLTexture *)*p_blurredRGBLowResTexture width];
      height3 = [(MTLTexture *)*p_blurredRGBLowResTexture height];
      width = width3;
      height = height3;
      v63 = 1;
      *v64 = threadExecutionWidth2;
      *&v64[8] = maxTotalThreadsPerThreadgroup2 / threadExecutionWidth2;
      *&v64[16] = 1;
      [computeCommandEncoder dispatchThreads:&width threadsPerThreadgroup:v64];
      ++v24;
    }

    while (v24 != 5);
    v16 = qword_27ED779B8;

    [computeCommandEncoder setComputePipelineState:v16];
    commandBuffer = v56;
    [computeCommandEncoder setTexture:v101 atIndex:0];
    [computeCommandEncoder setTexture:v102 atIndex:1];
    [computeCommandEncoder setTexture:*p_blurredRGBLowResTexture atIndex:2];
    [computeCommandEncoder setTexture:v98 atIndex:3];
    [computeCommandEncoder setTexture:v99 atIndex:4];
    [computeCommandEncoder setBytes:&v65 length:512 atIndex:0];
    [computeCommandEncoder setBytes:&self->_imageBlendingControls length:8 atIndex:1];
    [computeCommandEncoder setImageblockWidth:32 height:32];
    width4 = [v98 width];
    height4 = [v98 height];
    width = width4;
    height = height4;
    v63 = 1;
    *v64 = vdupq_n_s64(0x20uLL);
    *&v64[16] = 1;
    [computeCommandEncoder dispatchThreads:&width threadsPerThreadgroup:v64];
    if (self->_autoZoomSupported)
    {
      outputCropRectangle = self->_outputCropRectangle;
      v104 = CGRectInset(outputCropRectangle, outputCropRectangle.size.width * -0.899999976, 0.0);
      y = v104.origin.y;
      height = v104.size.height;
      *&v65 = vcvt_f32_f64(v104.origin);
      *(&v65 + 1) = vcvt_f32_f64(v104.size);
      v104.origin = *&self->_plane2CameraShift[3];
      v66 = *&self->_camera2PlaneShift[3];
      origin = v104.origin;
      v104.size = *&self->_outputPlaneShift[3];
      v68 = *&self->_inputPlaneShift[3];
      size = v104.size;
      v104.origin = *&self->_anon_1a0[3];
      *&v104.size.height = *&self->_anon_1a0[35];
      v37 = *&self->_anon_1d0[3];
      v74 = *&self->_anon_1a0[19];
      v75 = *&v104.size.height;
      v104.size = *&self->_anon_1d0[19];
      *&v104.origin.y = *&self->_translationVector[3];
      v72 = *&self->_anon_1d0[35];
      v73 = v104.origin;
      v70 = v37;
      v71 = v104.size;
      v76 = *&v104.origin.y;
      if (self->_isFrontFacingCamera)
      {
        v38 = 0;
      }

      else
      {
        v38 = 2;
      }

      LODWORD(v77) = v38;
      v39 = qword_27ED779E8;

      v59 = 1065353216;
      v60 = 1;
      [computeCommandEncoder setComputePipelineState:v39];
      [computeCommandEncoder setTexture:v101 atIndex:0];
      [computeCommandEncoder setTexture:v102 atIndex:1];
      [computeCommandEncoder setTexture:self->_lineDetectionController.inputTexture atIndex:2];
      [computeCommandEncoder setBytes:&v65 length:512 atIndex:0];
      [computeCommandEncoder setBytes:&v60 length:4 atIndex:1];
      [computeCommandEncoder setBytes:&v59 length:4 atIndex:2];
      threadExecutionWidth3 = [v39 threadExecutionWidth];
      maxTotalThreadsPerThreadgroup3 = [v39 maxTotalThreadsPerThreadgroup];
      p_lineDetectionController = &self->_lineDetectionController;
      width5 = [(MTLTexture *)self->_lineDetectionController.inputTexture width];
      height5 = [(MTLTexture *)self->_lineDetectionController.inputTexture height];
      *v64 = width5;
      *&v64[8] = height5;
      *&v64[16] = 1;
      *&v57 = threadExecutionWidth3;
      *(&v57 + 1) = maxTotalThreadsPerThreadgroup3 / threadExecutionWidth3;
      v58 = 1;
      [computeCommandEncoder dispatchThreads:v64 threadsPerThreadgroup:&v57];
      v16 = qword_27ED779A8;

      v45 = 1;
      do
      {
        v46 = v45;
        [computeCommandEncoder setComputePipelineState:v16];
        if (v46)
        {
          p_auxiliaryTexture = &self->_lineDetectionController;
        }

        else
        {
          p_auxiliaryTexture = &self->_lineDetectionController.auxiliaryTexture;
        }

        [computeCommandEncoder setTexture:p_auxiliaryTexture->inputTexture atIndex:0];
        if (v46)
        {
          v48 = &self->_lineDetectionController.auxiliaryTexture;
        }

        else
        {
          v48 = &self->_lineDetectionController;
        }

        [computeCommandEncoder setTexture:v48->inputTexture atIndex:1];
        [computeCommandEncoder setBytes:&self->_anon_ad0[64] length:1036 atIndex:0];
        threadExecutionWidth4 = [v16 threadExecutionWidth];
        maxTotalThreadsPerThreadgroup4 = [v16 maxTotalThreadsPerThreadgroup];
        width6 = [(MTLTexture *)p_lineDetectionController->inputTexture width];
        height6 = [(MTLTexture *)p_lineDetectionController->inputTexture height];
        *v64 = width6;
        *&v64[8] = height6;
        *&v64[16] = 1;
        *&v57 = threadExecutionWidth4;
        *(&v57 + 1) = maxTotalThreadsPerThreadgroup4 / threadExecutionWidth4;
        v58 = 1;
        [computeCommandEncoder dispatchThreads:v64 threadsPerThreadgroup:&v57];
        v45 = 0;
      }

      while ((v46 & 1) != 0);
      for (i = 0; i != 31; ++i)
      {
        v54 = __sincosf_stret(DeskCamEdgeDetectorAngles[i]);
        *(&width + i) = __PAIR64__(LODWORD(v54.__sinval), LODWORD(v54.__cosval));
      }

      [computeCommandEncoder setComputePipelineState:qword_27ED779F8];
      [computeCommandEncoder setTexture:p_lineDetectionController->inputTexture atIndex:0];
      [computeCommandEncoder setBytes:&width length:248 atIndex:0];
      [computeCommandEncoder setTexture:*&self->_anon_ad0[16] atIndex:1];
      *v64 = [*&self->_anon_ad0[16] width];
      *&v64[8] = xmmword_2434F7930;
      v57 = xmmword_2434F7940;
      v58 = 1;
      [computeCommandEncoder dispatchThreads:v64 threadsPerThreadgroup:&v57];
      commandBuffer = v56;
    }

    goto LABEL_31;
  }

  if (self->_outputType != 2)
  {
    goto LABEL_8;
  }

  v11 = qword_27ED779C8;
  [computeCommandEncoder setComputePipelineState:v11];
  [computeCommandEncoder setTexture:v101 atIndex:0];
  [computeCommandEncoder setTexture:v102 atIndex:1];
  [computeCommandEncoder setTexture:self->_warpedRGBHiResTexture atIndex:2];
  [computeCommandEncoder setBytes:&v65 length:512 atIndex:0];
  [computeCommandEncoder setBytes:&self->_imageToneMappingControls length:12 atIndex:1];
  threadExecutionWidth5 = [v11 threadExecutionWidth];
  maxTotalThreadsPerThreadgroup5 = [v11 maxTotalThreadsPerThreadgroup];
  width7 = [(MTLTexture *)self->_warpedRGBHiResTexture width];
  height7 = [(MTLTexture *)self->_warpedRGBHiResTexture height];
  width = width7;
  height = height7;
  v63 = 1;
  *v64 = threadExecutionWidth5;
  *&v64[8] = maxTotalThreadsPerThreadgroup5 / threadExecutionWidth5;
  *&v64[16] = 1;
  [computeCommandEncoder dispatchThreads:&width threadsPerThreadgroup:v64];
  v16 = qword_27ED779D8;

  [computeCommandEncoder setComputePipelineState:v16];
  [computeCommandEncoder setTexture:self->_warpedRGBHiResTexture atIndex:0];
  [computeCommandEncoder setTexture:v98 atIndex:1];
  [computeCommandEncoder setTexture:v99 atIndex:2];
  [computeCommandEncoder setBytes:&self->_imageSharpeningControls length:1040 atIndex:0];
  [computeCommandEncoder setImageblockWidth:32 height:32];
  width8 = [v98 width];
  height8 = [v98 height];
  width = width8;
  height = height8;
  v63 = 1;
  *v64 = vdupq_n_s64(0x20uLL);
  *&v64[16] = 1;
  [computeCommandEncoder dispatchThreads:&width threadsPerThreadgroup:v64];
LABEL_31:
  [computeCommandEncoder endEncoding];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  v9 = 0;
LABEL_32:

  return v9;
}

- (float)autoZoomValue
{
  if (!self->_autoZoomSupported)
  {
    return -1.0;
  }

  if (CGRectIsNull(self->_subjectRectangleInFramingSpace))
  {
    v3 = 3.4028e38;
  }

  else
  {
    [(DeskCamRenderingSession *)self transformMatrix];
    v5 = 0;
    v3 = 3.4028e38;
    HIDWORD(v6) = 0;
    HIDWORD(v7) = 0;
    v20 = v7;
    v21 = v6;
    HIDWORD(v8) = 0;
    v19 = v8;
    v9 = self->_subjectRectangleInFramingSpace.size.width / 20.0;
    do
    {
      v10.f64[0] = (v9 * v5);
      v10.f64[1] = self->_subjectRectangleInFramingSpace.size.height;
      [(DeskCamRenderingSession *)self _mapNormalizedPointInFramingSpaceToOutputCropRect:COERCE_DOUBLE(vcvt_f32_f64(vaddq_f64(self->_subjectRectangleInFramingSpace.origin withTransformMatrix:v10))), *&v21, *&v20, *&v19, v19, v20, v21];
      v13 = v11 < 0.0 || v11 > 1.0;
      v14 = fminf(fmaxf(v12, 0.0), 1.0);
      if (!v13 && v14 < v3)
      {
        v3 = v14;
      }

      ++v5;
    }

    while (v5 != 20);
  }

  [(DeskCamRenderingSession *)self _updateDeskEdgeDetectionDataInOutputSpace];
  v16 = *self->_anon_ad0;
  v17 = *&v16 == 3.4028e38 || *(&v16 + 1) == 3.4028e38;
  if (!v17 && v3 >= *(&v16 + 1))
  {
    LODWORD(v3) = HIDWORD(*self->_anon_ad0);
  }

  if (v3 == 3.4028e38)
  {
    autoZoomScalingFactor = self->_autoZoomScalingFactor;
  }

  else
  {
    *&v16 = v3;
    [(DeskCamRenderingSession *)self _filterAutoZoomScalingFactor:v16];
    self->_autoZoomScalingFactor = autoZoomScalingFactor;
  }

  return fminf(fmaxf(1.0 / autoZoomScalingFactor, 1.0), 2.0);
}

- (CGRect)_estimateSubjectRectangleInFramingSpaceFromSubjectRectangleInSensorSpace:(CGRect)space
{
  height = space.size.height;
  width = space.size.width;
  x = space.origin.x;
  y = space.origin.y;
  if (CGRectIsNull(space))
  {
    v7 = *MEMORY[0x277CBF398];
    v8 = *(MEMORY[0x277CBF398] + 8);
    v9 = *(MEMORY[0x277CBF398] + 16);
    v10 = *(MEMORY[0x277CBF398] + 24);
  }

  else
  {
    v11 = 0;
    v13 = y + height;
    v27 = v13;
    do
    {
      v12 = width / 20.0;
      *&v14 = x + (v12 * v11);
      *(&v14 + 1) = v27;
      [(DeskCamRenderingSession *)self _mapPointFromNormalizedSensorSpaceToNormalizedFramingSpace:v14];
      v29[v11++] = v15;
    }

    while (v11 != 20);
    v16 = x;
    v17 = x + width;
    v24 = v17;
    v18.f64[0] = x + width * 0.5;
    v18.f64[1] = y;
    *&v18.f64[0] = vcvt_f32_f64(v18);
    v28 = v18.f64[0];
    *v18.f64 = v16;
    [(DeskCamRenderingSession *)self _mapPointFromNormalizedSensorSpaceToNormalizedFramingSpace:v18.f64[0]];
    v26 = v19;
    [(DeskCamRenderingSession *)self _mapPointFromNormalizedSensorSpaceToNormalizedFramingSpace:COERCE_DOUBLE(__PAIR64__(HIDWORD(v28), LODWORD(v24)))];
    v21 = v20;
    [(DeskCamRenderingSession *)self _mapPointFromNormalizedSensorSpaceToNormalizedFramingSpace:v28];
    v23 = v30 - v22;
    v7 = v26.f32[0];
    v8 = v26.f32[1];
    v9 = vsub_f32(v21, v26).f32[0];
    v10 = v23;
  }

  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (float32x2_t)_mapPointFromNormalizedSensorSpaceToNormalizedFramingSpace:(uint64_t)space
{
  v2 = *(space + 208);
  v3 = *(space + 328);
  v4 = vsub_f32(vmul_f32(v2, a2), v3);
  v5 = *(space + 336) * vaddv_f32(vmul_f32(v4, v4));
  v6 = vmla_n_f32(v3, v4, 1.0 / (((*(space + 344) + ((*(space + 348) + ((*(space + 352) + ((*(space + 356) + ((*(space + 360) + ((*(space + 364) + ((*(space + 368) + (*(space + 372) * v5)) * v5)) * v5)) * v5)) * v5)) * v5)) * v5)) * 0.01) + 1.0));
  v7 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(v2), *(space + 96)));
  return vdiv_f32(vmla_f32(vcvt_f32_f64(vmlsq_f64(0, vcvtq_f64_f32(v7), *(space + 80))), v7, v6), v2);
}

- (float32x2_t)_mapNormalizedPointInFramingSpaceToOutputCropRect:(simd_float3)rect withTransformMatrix:(simd_float3)matrix
{
  v6.columns[0] = a2;
  v6.columns[1] = rect;
  v6.columns[2] = matrix;
  v7 = __invert_f3(v6);
  v7.columns[0] = vaddq_f32(v7.columns[2], vmlaq_lane_f32(vmulq_n_f32(v7.columns[0], *&self), v7.columns[1], *&self, 1));
  return vdiv_f32(*v7.columns[0].f32, vdup_laneq_s32(v7.columns[0], 2));
}

- (void)_updateDeskEdgeDetectionDataInOutputSpace
{
  [(DeskCamRenderingSession *)self _deskEdgeDetectorResult];
  v3 = vneg_f32(0x80000000800000);
  if (v39.i32[0] < 0)
  {
    v6 = *&v3;
    goto LABEL_25;
  }

  *v4.f32 = vzip2_s32(v41, v40);
  v4.i64[1] = v4.i64[0];
  v5.i32[0] = vmovn_s32(vcgeq_f32(xmmword_2434F7950, v4)).u32[0];
  v5.i32[1] = vmovn_s32(vcgeq_f32(v4, xmmword_2434F7950)).i32[1];
  v6 = *&v3;
  if ((~vaddvq_s32(vandq_s8(vmovl_s16(v5), xmmword_2434F7960)) & 0xF) != 0)
  {
LABEL_25:
    [(DeskCamRenderingSession *)self _filterDeskEdgeDetectorEndPoints:v6];
    return;
  }

  v35 = xmmword_2434F7950;
  v34 = xmmword_2434F7960;
  outputCropRectangle = self->_outputCropRectangle;
  v45 = CGRectInset(outputCropRectangle, outputCropRectangle.size.width * -0.899999976, 0.0);
  [(DeskCamRenderingSession *)self _transformMatrixWithOutputCropRectangle:v45.origin.x, v45.origin.y, v45.size.width, v45.size.height];
  v10 = vaddq_f32(v9, vmlaq_lane_f32(vmulq_n_f32(v7, *v41.i32), v8, v41, 1));
  if (*&v10.i32[2] == 0.0)
  {
    [DeskCamRenderingSession _updateDeskEdgeDetectionDataInOutputSpace];
  }

  else
  {
    v11 = vaddq_f32(v9, vmlaq_lane_f32(vmulq_n_f32(v7, *v40.i32), v8, v40, 1));
    if (v11.f32[2] == 0.0)
    {
      [DeskCamRenderingSession _updateDeskEdgeDetectionDataInOutputSpace];
    }

    else
    {
      v36 = v11;
      v37 = vdiv_f32(*v10.i8, vdup_laneq_s32(v10, 2));
      [(DeskCamRenderingSession *)self transformMatrix];
      v43 = __invert_f3(v42);
      v12 = vaddq_f32(v43.columns[2], vmlaq_lane_f32(vmulq_n_f32(v43.columns[0], v37.f32[0]), v43.columns[1], v37, 1));
      if (*&v12.i32[2] == 0.0)
      {
        [DeskCamRenderingSession _updateDeskEdgeDetectionDataInOutputSpace];
      }

      else
      {
        v13 = vdiv_f32(*v36.i8, vdup_laneq_s32(v36, 2));
        v14 = vaddq_f32(v43.columns[2], vmlaq_lane_f32(vmulq_n_f32(v43.columns[0], v13.f32[0]), v43.columns[1], v13, 1));
        if (*&v14.i32[2] != 0.0)
        {
          v3 = vdiv_f32(*v14.i8, vdup_laneq_s32(v14, 2));
          v38 = vdiv_f32(*v12.i8, vdup_laneq_s32(v12, 2));
          _getLineToRectIntersectionPoints(&v39, v38, v3, 0.0, 0.0, 1.0, 1.0);
          v15 = 0;
          v16 = vneg_f32(0x80000000800000);
          while (1)
          {
            v17 = vmvn_s8(vceq_f32(*(&v39 + v15), v16));
            if ((vpmin_u32(v17, v17).u32[0] & 0x80000000) != 0)
            {
              break;
            }

            if (++v15 == 4)
            {
              v18 = 4;
              goto LABEL_12;
            }
          }

          v18 = v15;
          v16 = *(&v39 + v15);
LABEL_12:
          if (v18 <= 3)
          {
            v19 = 3;
          }

          else
          {
            v19 = v18;
          }

          v20 = v19 - v18;
          v21 = 8 * v18 + 8;
          v22 = vneg_f32(0x80000000800000);
          v6 = *&v38;
          while (v20)
          {
            v23 = *(&v39 + v21);
            v24 = vmvn_s8(vceq_f32(v23, v22));
            --v20;
            v21 += 8;
            if ((vpmin_u32(v24, v24).u32[0] & 0x80000000) != 0)
            {
              goto LABEL_20;
            }
          }

          v23 = v22;
LABEL_20:
          v25 = vneg_f32(0x80000000800000);
          v26 = vmvn_s8(vceq_f32(v16, v25));
          if ((vpmin_u32(v26, v26).u32[0] & 0x80000000) != 0)
          {
            v27 = vmvn_s8(vceq_f32(v23, v25));
            if ((vpmin_u32(v27, v27).u32[0] & 0x80000000) != 0)
            {
              v3 = v23;
              v6 = *&v16;
            }

            else
            {
              *v28.f32 = v38;
              *&v28.u32[2] = v38;
              v29 = xmmword_2434F7950;
              v30.i32[0] = vmovn_s32(vcgeq_f32(xmmword_2434F7950, v28)).u32[0];
              v30.i32[1] = vmovn_s32(vcgeq_f32(v28, xmmword_2434F7950)).i32[1];
              v31 = vandq_s8(vmovl_s16(v30), xmmword_2434F7960);
              v31.i32[0] = vaddvq_s32(v31);
              v32.i64[0] = 0xF0F0F0F0F0F0F0FLL;
              v32.i64[1] = 0xF0F0F0F0F0F0F0FLL;
              v29.i32[0] = 15;
              v32.i64[0] = vceqq_s8(vandq_s8(v31, v32), vandq_s8(v29, v32)).u64[0];
              v33 = vdupq_lane_s8(*v32.i8, 0);
              v33.i64[0] = v32.i8[0] & 0xF | (16 * (v33.i8[1] & 0xF)) | ((v33.i8[2] & 0xF) << 8) & 0xFFF | ((v33.i8[3] & 0xFu) << 12) | ((v33.i8[4] & 0xF) << 16) & 0xFFFFFFFFFF0FFFFFLL | ((v33.i8[5] & 0xF) << 20) | ((v33.i8[6] & 0xF) << 24) | ((v33.i8[7] & 0xF) << 28) | ((v33.i8[8] & 0xF) << 32) | ((v33.i8[9] & 0xF) << 36) | ((v33.i8[10] & 0xF) << 40) | ((v33.i8[11] & 0xF) << 44) | ((v33.i8[12] & 0xF) << 48) | ((v33.i8[13] & 0xF) << 52) | ((v33.i8[14] & 0xF) << 56) | (v33.u8[15] << 60);
              v3 = vbsl_s8(*v33.i8, v16, v3);
              v6 = COERCE_DOUBLE(vbsl_s8(*v33.i8, v38, v16));
            }
          }

          goto LABEL_25;
        }

        [DeskCamRenderingSession _updateDeskEdgeDetectionDataInOutputSpace];
      }
    }
  }
}

- (void)_filterDeskEdgeDetectorEndPoints:(DeskCamRenderingSession *)self :(SEL)a2
{
  v4 = vbsl_s8(vdup_lane_s32(vcgt_f32(v2, v3), 1), v2, v3);
  if (v4.f32[0] == 3.4028e38 || v4.f32[1] == 3.4028e38)
  {
    v6 = *&self->_anon_ad0[12];
    if (v6 <= 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6 - 1;
    }

    *&self->_anon_ad0[12] = v7;
    if (!v7)
    {
      *self->_anon_ad0 = vneg_f32(0x80000000800000);
    }
  }

  else
  {
    v8 = *self->_anon_ad0;
    if (v8.f32[0] != 3.4028e38 && COERCE_FLOAT(HIDWORD(*self->_anon_ad0)) != 3.4028e38)
    {
      v4 = vmla_n_f32(vmul_n_f32(v4, 1.0 - *&self->_anon_ad0[8]), v8, *&self->_anon_ad0[8]);
    }

    *self->_anon_ad0 = v4;
    *&self->_anon_ad0[12] = 30;
  }
}

- (float)_filterAutoZoomScalingFactor:(float)factor
{
  temporalAlpha = self->_autoZoomFilteringController.temporalAlpha;
  errorMarginToCatch = self->_autoZoomFilteringController.errorMarginToCatch;
  errorVarThresh = self->_autoZoomFilteringController.errorVarThresh;
  autoZoomScalingFactor = self->_autoZoomScalingFactor;
  currIdx = self->_autoZoomFilteringController.runningBuffer.currIdx;
  data = self->_autoZoomFilteringController.runningBuffer.data;
  data[currIdx] = factor - autoZoomScalingFactor;
  size = self->_autoZoomFilteringController.runningBuffer.size;
  self->_autoZoomFilteringController.runningBuffer.currIdx = (currIdx + 1) % size;
  count = self->_autoZoomFilteringController.runningBuffer.count;
  if (count < size)
  {
    self->_autoZoomFilteringController.runningBuffer.count = ++count;
  }

  v11 = 0.0;
  v12 = 0.0;
  if (count >= 1)
  {
    v13 = count;
    do
    {
      v14 = *data++;
      v12 = v12 + v14;
      v11 = v11 + (v14 * v14);
      --v13;
    }

    while (v13);
  }

  v15 = fabsf(factor - autoZoomScalingFactor);
  if (v15 <= self->_autoZoomFilteringController.largeChangeThresh)
  {
    if (v15 < self->_autoZoomFilteringController.smallChangeThresh)
    {
      self->_autoZoomFilteringController.smallSteadyErrorObservationDuration = self->_autoZoomFilteringController.smallSteadyErrorObservationDurationMaxValue;
      smallChangeObservationDuration = self->_autoZoomFilteringController.smallChangeObservationDuration;
      v18 = __OFSUB__(smallChangeObservationDuration, 1);
      v19 = smallChangeObservationDuration - 1;
      if (v19 < 0 == v18)
      {
        result = ((1.0 - temporalAlpha) * factor) + (self->_autoZoomScalingFactor * temporalAlpha);
        self->_autoZoomFilteringController.smallChangeObservationDuration = v19;
        return result;
      }

      self->_autoZoomFilteringController.largeChangeObservationDuration = self->_autoZoomFilteringController.largeChangeObservationDurationMaxValue;
      self->_autoZoomFilteringController.autoZoomState = 0;
      return autoZoomScalingFactor;
    }

    if (self->_autoZoomFilteringController.autoZoomState)
    {
      return ((1.0 - temporalAlpha) * factor) + (self->_autoZoomScalingFactor * temporalAlpha);
    }

    v21 = v12 / count;
    v22 = fmaxf((v11 / count) - (v21 * v21), 0.0);
    self->_autoZoomFilteringController.largeChangeObservationDuration = self->_autoZoomFilteringController.largeChangeObservationDurationMaxValue;
    if (fabsf(v21) > errorMarginToCatch && v22 < errorVarThresh)
    {
      smallSteadyErrorObservationDuration = self->_autoZoomFilteringController.smallSteadyErrorObservationDuration;
      if (!smallSteadyErrorObservationDuration)
      {
        result = ((1.0 - temporalAlpha) * factor) + (self->_autoZoomScalingFactor * temporalAlpha);
        self->_autoZoomFilteringController.smallChangeObservationDuration = self->_autoZoomFilteringController.smallChangeObservationDurationMaxValue;
        self->_autoZoomFilteringController.smallSteadyErrorObservationDuration = self->_autoZoomFilteringController.smallSteadyErrorObservationDurationMaxValue;
        goto LABEL_15;
      }

      smallSteadyErrorObservationDurationMaxValue = smallSteadyErrorObservationDuration - 1;
    }

    else
    {
      smallSteadyErrorObservationDurationMaxValue = self->_autoZoomFilteringController.smallSteadyErrorObservationDurationMaxValue;
    }

    self->_autoZoomFilteringController.smallSteadyErrorObservationDuration = smallSteadyErrorObservationDurationMaxValue;
    return autoZoomScalingFactor;
  }

  self->_autoZoomFilteringController.smallSteadyErrorObservationDuration = self->_autoZoomFilteringController.smallSteadyErrorObservationDurationMaxValue;
  largeChangeObservationDuration = self->_autoZoomFilteringController.largeChangeObservationDuration;
  if (!largeChangeObservationDuration)
  {
    result = ((1.0 - temporalAlpha) * factor) + (self->_autoZoomScalingFactor * temporalAlpha);
    self->_autoZoomFilteringController.smallChangeObservationDuration = self->_autoZoomFilteringController.smallChangeObservationDurationMaxValue;
LABEL_15:
    self->_autoZoomFilteringController.autoZoomState = 1;
    return result;
  }

  self->_autoZoomFilteringController.largeChangeObservationDuration = largeChangeObservationDuration - 1;
  return autoZoomScalingFactor;
}

- ($FF63358D52D30A0EA7A28A9F851E591F)_undistortControls
{
  *&retstr[5].var2.var5.var6 = 0u;
  *&retstr[5].var2.var6.var2 = 0u;
  *&retstr[5].var2.var3 = 0u;
  *&retstr[5].var2.var5.var2 = 0u;
  *&retstr[4].var2.var6.var4 = 0u;
  *&retstr[4].var3 = 0u;
  *&retstr[4].var2.var5.var4 = 0u;
  *&retstr[4].var2.var6.var0 = 0u;
  *&retstr[4].var0.var2 = 0u;
  *&retstr[4].var2.var5.var0 = 0u;
  *&retstr[3].var2.var6.var2 = 0u;
  *&retstr[3].var2.var6.var6 = 0u;
  *&retstr[3].var2.var5.var2 = 0u;
  *&retstr[3].var2.var5.var6 = 0u;
  *&retstr[2].var3 = 0u;
  *&retstr[3].var2.var3 = 0u;
  *&retstr[2].var2.var6.var0 = 0u;
  *&retstr[2].var2.var6.var4 = 0u;
  *&retstr[2].var2.var5.var0 = 0u;
  *&retstr[2].var2.var5.var4 = 0u;
  *&retstr[1].var2.var6.var6 = 0u;
  *&retstr[2].var0.var2 = 0u;
  *&retstr[1].var2.var5.var6 = 0u;
  *&retstr[1].var2.var6.var2 = 0u;
  *&retstr[1].var2.var3 = 0u;
  *&retstr[1].var2.var5.var2 = 0u;
  *&retstr->var2.var6.var4 = 0u;
  *&retstr->var3 = 0u;
  *&retstr->var2.var5.var4 = 0u;
  *&retstr->var2.var6.var0 = 0u;
  *&retstr->var0.var2 = 0u;
  *&retstr->var2.var5.var0 = 0u;
  [(DeskCamRenderingSession *)self _updatePitchAndRoll];
  [(DeskCamRenderingSession *)self _viewportScaleMultiplier];
  [(DeskCamRenderingSession *)self _defaultFramingSpaceViewport:?];
  [(DeskCamRenderingSession *)self _scaleViewportToFitInFramingSpace:?];
  v6 = *&self->_anon_d0[67];
  v7 = *&self->_anon_d0[83];
  LODWORD(v8) = *&self->_anon_d0[91];
  LODWORD(v9) = HIDWORD(*&self->_anon_d0[83]);
  v10 = vzip1_s32(*&vextq_s8(v6, v6, 8uLL), *&vextq_s8(v7, v7, 8uLL));
  self->_outputCropRectangle.size.width = v11.f64[0];
  v11.f64[1] = v5;
  __asm { FMOV            V16.2D, #0.5 }

  v17 = vmlsq_f64(vcvtq_f64_f32(v10), _Q16, v11);
  self->_outputCropRectangle.origin = v17;
  __asm { FMOV            V18.2D, #-1.0 }

  v20 = vaddq_f64(v11, _Q18);
  v6.i32[1] = v7.i32[1];
  *v20.f32 = vdiv_f32(vsub_f32(vcvt_f32_f64(vmlaq_f64(v17, _Q16, v20)), v10), *v6.i8);
  __asm { FMOV            V4.4S, #1.0 }

  *&_Q4 = v20.i64[0];
  v20.i32[2] = 1.0;
  y = v5 + v17.y + -1.0;
  if (!self->_isFrontFacingCamera)
  {
    y = v17.y;
  }

  v22 = y;
  v23 = (v22 - v8) / v9;
  LODWORD(v24) = 0;
  *(&v24 + 1) = v23;
  LODWORD(v25) = 0;
  *(&v25 + 1) = 0.0 - v23;
  self->_outputCropRectangle.size.height = v5;
  *&self->_inputPlaneShift[3] = v24;
  *&self->_outputPlaneShift[3] = v25;
  *&self->_camera2PlaneShift[3] = vsubq_f32(0, v20);
  *&self->_plane2CameraShift[3] = _Q4;
  [(DeskCamRenderingSession *)self _pitchMatrix];
  *&self->_anon_1a0[11] = v26;
  *&self->_anon_1a0[27] = v27;
  *&self->_anon_1a0[3] = v28;
  *&self->_anon_1a0[19] = v29;
  *&self->_anon_1a0[43] = v30;
  *&self->_anon_1a0[35] = v31;
  [(DeskCamRenderingSession *)self _rollMatrix];
  *&self->_anon_1d0[11] = v32;
  *&self->_anon_1d0[27] = v33;
  *&self->_anon_1d0[3] = v34;
  *&self->_anon_1d0[19] = v35;
  *&self->_anon_1d0[43] = v36;
  *&self->_anon_1d0[35] = v37;
  result = [(DeskCamRenderingSession *)self _translationVector];
  *&self->_translationVector[3] = v39;
  if (self->_outputType == 2)
  {
    origin = self->_outputCropRectangle.origin;
    size = self->_outputCropRectangle.size;
    v43 = *&self->_camera2PlaneShift[3];
    v42 = *&self->_plane2CameraShift[3];
    v54 = *&self->_anon_1a0[3];
    v55 = *&self->_anon_1a0[19];
    v56 = *&self->_anon_1a0[35];
    v57 = *&self->_anon_1d0[3];
    v58 = *&self->_anon_1d0[19];
    v59 = *&self->_anon_1d0[35];
    v44 = *&self->_inputPlaneShift[3];
    v45 = *&self->_outputPlaneShift[3];
    isFrontFacingCamera = self->_isFrontFacingCamera;
    if (isFrontFacingCamera)
    {
      v47 = 0;
    }

    else
    {
      v47 = 2;
    }
  }

  else
  {
    v47 = 0;
    isFrontFacingCamera = 0;
    origin = self->_framingSpaceRectangle.origin;
    size = self->_framingSpaceRectangle.size;
    v54 = *MEMORY[0x277D860B0];
    v55 = *(MEMORY[0x277D860B0] + 16);
    v56 = *(MEMORY[0x277D860B0] + 32);
    v57 = *MEMORY[0x277D860B0];
    v58 = v55;
    v59 = v56;
    v42 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v39 = 0uLL;
    v43 = 0uLL;
  }

  v48 = *&self->_anon_d0[179];
  *&retstr[5].var2.var3 = *&self->_anon_d0[163];
  *&retstr[5].var2.var5.var2 = v48;
  *&retstr[5].var2.var5.var6 = *&self->_anon_d0[195];
  v49 = *&self->_anon_d0[115];
  *&retstr[4].var2.var5.var4 = *&self->_anon_d0[99];
  *&retstr[4].var2.var6.var0 = v49;
  v50 = *&self->_anon_d0[147];
  *&retstr[4].var2.var6.var4 = *&self->_anon_d0[131];
  *&retstr[4].var3 = v50;
  v51 = *&self->_anon_d0[51];
  *&retstr[3].var2.var6.var2 = *&self->_anon_d0[35];
  *&retstr[3].var2.var6.var6 = v51;
  v52 = *&self->_anon_d0[83];
  *&retstr[4].var0.var2 = *&self->_anon_d0[67];
  *&retstr[4].var2.var5.var0 = v52;
  v53 = *&self->_anon_d0[19];
  *&retstr[3].var2.var5.var2 = *&self->_anon_d0[3];
  *&retstr[3].var2.var5.var6 = v53;
  *&retstr->var0.var2 = vcvt_f32_f64(origin);
  *&retstr->var2.var3 = vcvt_f32_f64(size);
  *&retstr->var2.var5.var0 = v43;
  *&retstr->var2.var5.var4 = v42;
  *&retstr->var2.var6.var0 = v44;
  *&retstr->var2.var6.var4 = v45;
  *&retstr->var3 = v57;
  *&retstr[1].var2.var3 = v58;
  *&retstr[1].var2.var5.var2 = v59;
  *&retstr[1].var2.var5.var6 = v54;
  *&retstr[1].var2.var6.var2 = v55;
  *&retstr[1].var2.var6.var6 = v56;
  *&retstr[2].var0.var2 = v39;
  LODWORD(retstr[2].var2.var5.var0) = v47;
  retstr[2].var2.var5.var3 = 0.0;
  *&retstr[2].var2.var5.var1 = 0;
  LOBYTE(retstr[5].var2.var6.var3) = isFrontFacingCamera;
  self->_undistortControlsAvailable = 1;
  return result;
}

- (float)_viewportScaleMultiplier
{
  roll = self->_roll;
  v4 = vabds_f32(90.0, roll);
  v5 = vabds_f32(270.0, roll);
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = vabds_f32(180.0, roll);
  v8 = vabds_f32(360.0, roll);
  if (v7 >= v8)
  {
    v7 = v8;
  }

  if (roll >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = self->_roll;
  }

  [(DeskCamSessionOptions *)self->_options viewportScaleMultiplierMin];
  v11 = v10;
  options = self->_options;
  if (v6 >= v9)
  {
    [(DeskCamSessionOptions *)options viewportScaleMultiplierLandscape];
    v6 = v9;
  }

  else
  {
    [(DeskCamSessionOptions *)options viewportScaleMultiplierPortrait];
  }

  return v11 + (((v6 / -45.0) + 1.0) * (v13 - v11));
}

- (CGRect)_scaleViewportToFitInFramingSpace:(CGRect)space
{
  height = space.size.height;
  width = space.size.width;
  y = space.origin.y;
  x = space.origin.x;
  if (!self->_isFrontFacingCamera)
  {
    [(DeskCamRenderingSession *)self _rollMatrix];
    v8 = 0;
    v67 = v9;
    v65 = v11;
    v66 = v10;
    v12 = vneg_f32(0x80000000800000);
    v13.i64[0] = 0x80000000800000;
    v13.i64[1] = 0x80000000800000;
    v52 = vnegq_f32(v13);
    v51 = xmmword_2434F7960;
    v14 = 1.0;
    v15 = 0.5;
    v53 = y;
    v54 = width;
    do
    {
      v63 = v14;
      v64 = v15;
      v62 = (v15 + v14) * 0.5;
      v16 = (1.0 - v62);
      v17 = width * v16 * 0.5;
      v18 = height * v16 * 0.5;
      v69.origin.x = x;
      v69.origin.y = y;
      v69.size.width = width;
      v69.size.height = height;
      v70 = CGRectInset(v69, v17, v18);
      *&v19 = v70.origin.x;
      *&v20 = v70.origin.x + v70.size.width + -1.0;
      v21 = v70.origin.y + v70.size.height + -1.0;
      if (self->_isFrontFacingCamera)
      {
        v21 = v70.origin.y;
      }

      v22 = 100000.0;
      if (self->_isFrontFacingCamera)
      {
        v22 = -100000.0;
      }

      v23 = v21;
      *(&v20 + 1) = v23;
      v60 = v20;
      *(&v19 + 1) = v23;
      *&v24 = v22 + v23;
      v55 = COERCE_DOUBLE(__PAIR64__(v24, LODWORD(v19)));
      v56 = COERCE_DOUBLE(__PAIR64__(v24, LODWORD(v20)));
      [(DeskCamRenderingSession *)self _projectPoint:v19 intrinsicMatrix:*&self->_anon_d0[67] rotationMatrix:*&self->_anon_d0[83], *&self->_anon_d0[99], v67, v66, v65, *&v51, *&v52];
      v58 = v25;
      [(DeskCamRenderingSession *)self _projectPoint:v60 intrinsicMatrix:*&self->_anon_d0[67] rotationMatrix:*&self->_anon_d0[83], *&self->_anon_d0[99], v67, v66, v65];
      v61 = v26;
      [(DeskCamRenderingSession *)self _projectPoint:v55 intrinsicMatrix:*&self->_anon_d0[67] rotationMatrix:*&self->_anon_d0[83], *&self->_anon_d0[99], v67, v66, v65];
      v27 = height;
      v29 = v28;
      [(DeskCamRenderingSession *)self _projectPoint:v56 intrinsicMatrix:*&self->_anon_d0[67] rotationMatrix:*&self->_anon_d0[83], *&self->_anon_d0[99], v67, v66, v65];
      v57 = v30;
      v31 = self->_framingSpaceRectangle.origin.x;
      v32 = self->_framingSpaceRectangle.origin.y;
      v33 = self->_framingSpaceRectangle.size.width;
      v34 = self->_framingSpaceRectangle.size.height;
      v35 = v29;
      height = v27;
      _getLineToRectIntersectionPoints(v68, v35, v58, v31, v32, v33, v34);
      v36 = 0;
      while (1)
      {
        v37 = v68[v36];
        v38 = vmvn_s8(vceq_f32(v37, v12));
        if ((vpmin_u32(v38, v38).u32[0] & 0x80000000) != 0)
        {
          break;
        }

        if (++v36 == 4)
        {
          v37 = v12;
          break;
        }
      }

      v59 = v37;
      _getLineToRectIntersectionPoints(v68, v57, v61, v31, v32, v33, v34);
      for (i = 0; i != 4; ++i)
      {
        v40 = v68[i];
        v41 = vneg_f32(0x80000000800000);
        v42 = vmvn_s8(vceq_f32(v40, v41));
        if ((vpmin_u32(v42, v42).u32[0] & 0x80000000) != 0)
        {
          break;
        }

        v40 = v41;
      }

      v43.i64[0] = v59;
      *&v43.u32[2] = v40;
      v14 = v63;
      v15 = v64;
      if ((vaddvq_s32(vandq_s8(vceqq_f32(v43, v52), v51)) & 0xF) != 0)
      {
        v14 = v62;
      }

      else
      {
        v15 = v62;
      }

      y = v53;
      width = v54;
      if (v8 > 0xD)
      {
        break;
      }

      ++v8;
    }

    while ((v14 - v15) > 0.001);
    v44 = (1.0 - v15);
    v45 = v54 * v44 * 0.5;
    v46 = v27 * v44 * 0.5;
    v71.origin.x = x;
    v71.origin.y = v53;
    v71.size.width = v54;
    v71.size.height = v27;
    v72 = CGRectInset(v71, v45, v46);
    x = v72.origin.x;
    y = v72.origin.y;
    width = v72.size.width;
    height = v72.size.height;
  }

  v47 = x;
  v48 = y;
  v49 = width;
  v50 = height;
  result.size.height = v50;
  result.size.width = v49;
  result.origin.y = v48;
  result.origin.x = v47;
  return result;
}

- (double)_translationVector
{
  v8 = *(self + 48);
  v7 = *(self + 56);
  *&v9 = v8;
  a6.n128_f32[0] = v8 + *(self + 64) + -1.0;
  if (*(self + 16))
  {
    v10 = -100000.0;
  }

  else
  {
    v7 = v7 + *(self + 72) + -1.0;
    v10 = 100000.0;
  }

  v11 = v7;
  a6.n128_f32[1] = v11;
  *(&v9 + 1) = v11;
  *&v12 = v10 + v11;
  v44 = COERCE_DOUBLE(__PAIR64__(v12, LODWORD(v9)));
  v45 = COERCE_DOUBLE(__PAIR64__(v12, a6.n128_u32[0]));
  [self _projectPoint:v9 intrinsicMatrix:*(self + 272) rotationMatrix:{*(self + 288), *(self + 304), *(self + 464), *(self + 480), *(self + 496), *&a6}];
  v14 = v13;
  [self _projectPoint:v43 intrinsicMatrix:*(self + 272) rotationMatrix:{*(self + 288), *(self + 304), *(self + 464), *(self + 480), *(self + 496)}];
  v16 = v15;
  [self _projectPoint:v44 intrinsicMatrix:*(self + 272) rotationMatrix:{*(self + 288), *(self + 304), *(self + 464), *(self + 480), *(self + 496)}];
  v18 = v17;
  [self _projectPoint:v45 intrinsicMatrix:*(self + 272) rotationMatrix:{*(self + 288), *(self + 304), *(self + 464), *(self + 480), *(self + 496)}];
  v20 = v19;
  v21 = *(self + 80);
  v22 = *(self + 88);
  v23 = *(self + 96);
  v24 = *(self + 104);
  _getLineToRectIntersectionPoints(v46, v18, v14, v21, v22, v23, v24);
  v25 = 0;
  v26 = vneg_f32(0x80000000800000);
  while (1)
  {
    v27 = v46[v25];
    v28 = vmvn_s8(vceq_f32(v27, v26));
    if ((vpmin_u32(v28, v28).u32[0] & 0x80000000) != 0)
    {
      break;
    }

    if (++v25 == 4)
    {
      v27 = v26;
      break;
    }
  }

  _getLineToRectIntersectionPoints(v46, v20, v16, v21, v22, v23, v24);
  v30 = 0;
  v31 = vneg_f32(0x80000000800000);
  while (1)
  {
    *v29.f32 = v46[v30];
    v32 = vmvn_s8(vceq_f32(*v29.f32, v31));
    if ((vpmin_u32(v32, v32).u32[0] & 0x80000000) != 0)
    {
      break;
    }

    if (++v30 == 4)
    {
      *v29.f32 = v31;
      break;
    }
  }

  v33 = *(self + 272);
  v34 = vsub_f32(v27, v14);
  v35 = vmul_f32(v34, v34);
  v36 = vsub_f32(*v29.f32, v16);
  v37 = vmul_f32(v36, v36);
  v38 = vsqrt_f32(vadd_f32(vzip1_s32(v35, v37), vzip2_s32(v35, v37)));
  if (vcgt_f32(vdup_lane_s32(v38, 1), v38).u8[0])
  {
    v39 = -1;
  }

  else
  {
    v39 = 0;
  }

  v40 = vdup_n_s32(v39);
  v41.i32[0] = vextq_s8(v33, v33, 8uLL).u32[0];
  v41.i32[1] = *(self + 296);
  v33.i32[1] = *(self + 292);
  *v29.f32 = vdiv_f32(vsub_f32(vbsl_s8(v40, v27, *v29.f32), v41), *v33.f32);
  v29.i32[2] = 1.0;
  *v33.f32 = vdiv_f32(vsub_f32(vbsl_s8(v40, v14, v16), v41), *v33.f32);
  v33.i32[2] = 1.0;
  v29.i64[0] = vsubq_f32(v29, v33).u64[0];
  return *v29.i64;
}

- (float32x2_t)_projectPoint:(int8x16_t)point intrinsicMatrix:(double)matrix rotationMatrix:(float32x4_t)rotationMatrix
{
  v7 = vaddq_f32(a7, vmlaq_n_f32(vmulq_n_f32(rotationMatrix, (*&self - *&a2.i32[2]) / *a2.i32), a6, (*(&self + 1) - *&point.i32[2]) / *&point.i32[1]));
  v8 = vdiv_f32(*v7.i8, *&vdupq_laneq_s32(v7, 2));
  v7.i64[0] = vextq_s8(a2, a2, 8uLL).u64[0];
  a2.i32[1] = point.i32[1];
  return vmla_f32(vzip1_s32(*v7.i8, *&vextq_s8(point, point, 8uLL)), *a2.i8, v8);
}

- (void)_updatePitchAndRoll
{
  [(DeskCamRenderingSession *)self _updatePitch];

  [(DeskCamRenderingSession *)self _updateRoll];
}

- (void)_updatePitch
{
  v3 = vmvnq_s8(vorrq_s8(vcltzq_f32(*self->_gravity), vcgezq_f32(*self->_gravity)));
  v3.i32[3] = v3.i32[2];
  if ((vmaxvq_u32(v3) & 0x80000000) != 0)
  {
    [(DeskCamRenderingSession *)self _setPitchNominalValue];
  }

  else
  {
    v23 = *self->_gravity;
    *v4.i64 = simd_matrix3x3(_PromotedConst);
    _Q2.f32[0] = COERCE_FLOAT(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, *&v23), _Q1, *&v23, 1), _Q2, v23, 2).i32[2]);
    __asm { FMLA            S1, S2, V0.S[2] }

    isFrontFacingCamera = self->_isFrontFacingCamera;
    v12 = asinf(_Q2.f32[0] / fabsf(sqrtf(_Q1.f32[0])));
    v13 = 1.57079633;
    if (isFrontFacingCamera)
    {
      v13 = -1.57079633;
    }

    v14 = -3.14159265;
    if (isFrontFacingCamera)
    {
      v14 = 3.14159265;
    }

    v15 = (v13 + v12) * 180.0 / v14;
    [(DeskCamSessionOptions *)self->_options pitchRefinementValue];
    v17 = v16 + v15;
    [(DeskCamSessionOptions *)self->_options pitchValueLowerThreshold];
    if (v17 >= v18 && ([(DeskCamSessionOptions *)self->_options pitchValueUpperThreshold], v17 <= v19))
    {
      self->_pitch = v17;
    }

    else
    {
      [(DeskCamSessionOptions *)self->_options pitchValueUpperThreshold];
      v21 = fminf(v17, v20);
      [(DeskCamSessionOptions *)self->_options pitchValueLowerThreshold];
      self->_pitch = fmaxf(v21, v22);
      if (self->_deviceType == 1)
      {
        self->_gimbalLock = 1;
        return;
      }
    }
  }

  self->_gimbalLock = 0;
}

- (double)_pitchMatrix
{
  v2 = 1.0;
  if (*(self + 16))
  {
    v2 = -1.0;
  }

  v6 = LODWORD(v2);
  v1 = *(self + 196) * 3.14159265 / 180.0;
  v3 = __sincosf_stret(v1 * 0.5);
  v4 = vmulq_n_f32(v6, v3.__sinval);
  v4.i32[3] = LODWORD(v3.__cosval);

  return simd_matrix3x3(v4);
}

- (void)_setRollNominalValue
{
  cameraOrientation = self->_cameraOrientation;
  if (cameraOrientation <= 1)
  {
    if (cameraOrientation)
    {
      if (cameraOrientation != 1)
      {
        return;
      }

      v3 = 1132920832;
      goto LABEL_11;
    }

    if (!self->_isFrontFacingCamera)
    {
      goto LABEL_12;
    }
  }

  else if (cameraOrientation != 4)
  {
    if (cameraOrientation != 3)
    {
      if (cameraOrientation != 2)
      {
        return;
      }

      v3 = 1119092736;
      goto LABEL_11;
    }

LABEL_12:
    v4 = 0.0;
    goto LABEL_13;
  }

  v3 = 1127481344;
LABEL_11:
  v4 = *&v3;
LABEL_13:
  self->_roll = v4;
}

- (void)_updateRoll
{
  if (self->_isFrontFacingCamera || (v3 = vmvnq_s8(vorrq_s8(vcltzq_f32(*self->_gravity), vcgezq_f32(*self->_gravity))), v3.i32[3] = v3.i32[2], (vmaxvq_u32(v3) & 0x80000000) != 0))
  {

    [(DeskCamRenderingSession *)self _setRollNominalValue];
  }

  else
  {
    v8 = *self->_gravity;
    *v4.i64 = simd_matrix3x3(_PromotedConst);
    v4.i64[0] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, v8.f32[0]), v5, *v8.f32, 1), v6, v8, 2).u64[0];
    v7 = (atan2f(v4.f32[0], v4.f32[1]) + 3.14159265) * 180.0 / 3.14159265;
    self->_roll = v7;
  }
}

- (double)_rollMatrix
{
  v2 = 1.0;
  if (*(self + 16))
  {
    v2 = -1.0;
  }

  v3.i64[0] = 0;
  v3.i64[1] = LODWORD(v2);
  v7 = v3;
  v1 = *(self + 200) * 3.14159265 / 180.0;
  v4 = __sincosf_stret(v1 * 0.5);
  v5 = vmulq_n_f32(v7, v4.__sinval);
  v5.i32[3] = LODWORD(v4.__cosval);

  return simd_matrix3x3(v5);
}

- (double)_transformMatrixWithOutputCropRectangle:(double)rectangle
{
  v6 = a4;
  v7 = v6;
  v8 = a5;
  LODWORD(v9) = 0;
  *(&v9 + 1) = v8;
  v55 = v9;
  v56 = LODWORD(v7);
  *&v10 = a2;
  *&v11 = rectangle;
  __asm { FMOV            V2.4S, #1.0 }

  v60 = _Q2.i64[1];
  _Q2.i64[0] = __PAIR64__(v11, v10);
  v54 = _Q2;
  v17 = *(self + 272);
  v18 = *(self + 288);
  v19 = *(self + 304);
  v20 = vzip1q_s32(v17, v19);
  v21 = vzip2q_s32(v17, v19);
  v22 = vzip1q_s32(v17, v18);
  v22.i32[2] = v19.i32[0];
  v59 = v22;
  v67.columns[0] = vzip1q_s32(v20, v18);
  v23 = vzip2q_s32(v17, v18);
  v23.i32[2] = *(self + 312);
  v57 = v23;
  v58 = vzip2q_s32(v20, vdupq_lane_s32(*v18.i8, 1));
  v67.columns[0].i32[3] = 0;
  v67.columns[2] = vzip1q_s32(v21, vdupq_laneq_s32(v18, 2));
  v67.columns[1] = v58;
  v67.columns[1].i32[3] = 0;
  v67.columns[2].i32[3] = 0;
  v25 = __invert_f3(v67);
  v24 = 0;
  v25.columns[2] = vaddq_f32(v25.columns[2], vaddq_f32(*(self + 560), *(self + 528)));
  v61 = v56;
  v62 = v55;
  v63 = v54;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  do
  {
    *(&v64 + v24) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25.columns[0], COERCE_FLOAT(*(&v61 + v24))), v25.columns[1], *(&v61 + v24), 1), v25.columns[2], *(&v61 + v24), 2);
    v24 += 16;
  }

  while (v24 != 48);
  v26 = 0;
  v27 = *(self + 416);
  v28 = *(self + 432);
  v29 = *(self + 448);
  v61 = v64;
  v62 = v65;
  v63 = v66;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  do
  {
    *(&v64 + v26) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*(&v61 + v26))), v28, *(&v61 + v26), 1), v29, *(&v61 + v26), 2);
    v26 += 16;
  }

  while (v26 != 48);
  v30 = 0;
  v31 = v64;
  v32 = v65;
  HIDWORD(v31) = 0;
  HIDWORD(v32) = 0;
  v33 = vaddq_f32(v66, *(self + 544));
  v34 = *(self + 464);
  v35 = *(self + 480);
  v36 = *(self + 496);
  v61 = v31;
  v62 = v32;
  v63 = v33;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  do
  {
    *(&v64 + v30) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, COERCE_FLOAT(*(&v61 + v30))), v35, *(&v61 + v30), 1), v36, *(&v61 + v30), 2);
    v30 += 16;
  }

  while (v30 != 48);
  v37 = 0;
  v38 = v64;
  v39 = v65;
  HIDWORD(v38) = 0;
  HIDWORD(v39) = 0;
  v40 = vaddq_f32(v66, vaddq_f32(*(self + 576), *(self + 512)));
  v61 = v38;
  v62 = v39;
  v63 = v40;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  do
  {
    *(&v64 + v37) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v59, COERCE_FLOAT(*(&v61 + v37))), v58, *(&v61 + v37), 1), v57, *(&v61 + v37), 2);
    v37 += 16;
  }

  while (v37 != 48);
  v41 = 0;
  v42 = v64;
  v43 = v65;
  v44 = v66;
  HIDWORD(v42) = 0;
  HIDWORD(v43) = 0;
  v44.i32[3] = 0;
  v45.i64[0] = *(self + 208);
  v46 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*v45.f32), *(self + 96)));
  v47 = v46.u32[0];
  v48.i32[0] = 0;
  v48.i64[1] = 0;
  v48.i32[1] = v46.i32[1];
  v49.i64[1] = v60;
  *v49.f32 = vcvt_f32_f64(vmlsq_f64(0, vcvtq_f64_f32(v46), *(self + 80)));
  v61 = v42;
  v62 = v43;
  v63 = v44;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  do
  {
    *(&v64 + v41) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v47, COERCE_FLOAT(*(&v61 + v41))), v48, *(&v61 + v41), 1), v49, *(&v61 + v41), 2);
    v41 += 16;
  }

  while (v41 != 48);
  v50 = 0;
  v51.i32[1] = 0;
  v51.i64[1] = 0;
  v51.f32[0] = 1.0 / v45.f32[0];
  v45.i32[0] = 0;
  v45.i64[1] = 0;
  v45.f32[1] = 1.0 / v45.f32[1];
  v61 = v64;
  v62 = v65;
  v63 = v66;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  do
  {
    *(&v64 + v50) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v51, COERCE_FLOAT(*(&v61 + v50))), v45, *(&v61 + v50), 1), xmmword_2434F7680, *(&v61 + v50), 2);
    v50 += 16;
  }

  while (v50 != 48);
  return *&v64;
}

- (unsigned)exifOrientation
{
  if (self->_outputType == 2)
  {
    return 1;
  }

  cameraOrientation = self->_cameraOrientation;
  if (cameraOrientation <= 2)
  {
    if (cameraOrientation == 1)
    {
      return 6;
    }

    if (cameraOrientation == 2)
    {
      return 8;
    }

    goto LABEL_8;
  }

  if (cameraOrientation != 4)
  {
LABEL_8:
    if (self->_isFrontFacingCamera)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  if (self->_isFrontFacingCamera)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (float32x2_t)trapezoidForZoomFactorValue:(float32x2_t *)value
{
  [(float32x2_t *)value transformMatrix];
  v7 = (1.0 - (1.0 / fminf(fmaxf(a2, 1.0), 2.0))) * 0.5;
  v8 = v7 + 0.0;
  v9 = 1.0 - v7;
  v10 = (1.0 - v7) - v7;
  if (value[2].i8[0] == 1)
  {
    _Q3 = xmmword_2434F7680;
    v11 = xmmword_2434F7680;
    v11.f32[0] = v7 + 0.0;
    _Q3.f32[0] = 1.0 - v7;
    __asm { FMOV            V4.4S, #1.0 }

    v17.i64[1] = _Q4.i64[1];
    v17.i64[0] = __PAIR64__(LODWORD(v10), LODWORD(v8));
    _Q4.i64[0] = __PAIR64__(LODWORD(v10), LODWORD(v9));
  }

  else
  {
    __asm { FMOV            V3.4S, #1.0 }

    v11.i64[1] = _Q3.i64[1];
    v11.f32[0] = v7 + 0.0;
    v11.f32[1] = (1.0 - v7) - v7;
    _Q3.f32[0] = 1.0 - v7;
    _Q3.f32[1] = v11.f32[1];
    _Q4 = xmmword_2434F7680;
    v17 = xmmword_2434F7680;
    v17.f32[0] = v8;
    _Q4.f32[0] = v9;
  }

  v19 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, v11.f32[0]), v5, *v11.f32, 1), v6, v11, 2);
  v20 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, _Q3.f32[0]), v5, *_Q3.f32, 1), v6, _Q3, 2);
  v21 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, v17.f32[0]), v5, *v17.f32, 1), v6, v17, 2);
  v22 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, _Q4.f32[0]), v5, *_Q4.f32, 1), v6, _Q4, 2);
  v24 = value[26];
  v23 = value + 26;
  v25 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(v24), *v23[-14].f32));
  v26 = vcvt_f32_f64(vmlsq_f64(0, vcvtq_f64_f32(v25), *v23[-16].f32));
  v27 = vdiv_f32(vsub_f32(vmul_f32(v24, vdiv_f32(*v20.i8, *&vdupq_laneq_s32(v20, 2))), v26), v25);
  v28 = vdiv_f32(vsub_f32(vmul_f32(v24, vdiv_f32(*v21.i8, *&vdupq_laneq_s32(v21, 2))), v26), v25);
  v29 = vdiv_f32(vsub_f32(vmul_f32(v24, vdiv_f32(*v22.i8, *&vdupq_laneq_s32(v22, 2))), v26), v25);
  v30 = distortPoint(v23, vdiv_f32(vsub_f32(vmul_f32(v24, vdiv_f32(*v19.i8, *&vdupq_laneq_s32(v19, 2))), v26), v25));
  distortPoint(v23, v27);
  distortPoint(v23, v28);
  distortPoint(v23, v29);
  return vdiv_f32(v30, *v23);
}

- (CGRect)_defaultZoomedRectangleValue
{
  deviceType = self->_deviceType;
  if ((deviceType - 3) >= 2)
  {
    if (deviceType == 2)
    {
      v3 = 0.187999994;
      v4 = 0.611500025;
      v5 = 0.699999988;
      v6 = 0.192499995;
    }

    else
    {
      v4 = 1.0;
      v6 = 0.0;
      v5 = 0.0;
      v3 = 1.0;
    }
  }

  else
  {
    v3 = 0.224999994;
    v4 = 0.428000003;
    v5 = 0.709500015;
    v6 = 0.28549999;
  }

  result.size.height = v3;
  result.size.width = v4;
  result.origin.y = v5;
  result.origin.x = v6;
  return result;
}

- (float32x2_t)focusPoint
{
  selfCopy = self;
  [(float32x2_t *)self transformMatrix];
  v2.i64[0] = 0x3F0000003F000000;
  v2.i64[1] = 0x3F0000003F000000;
  v6 = vaddq_f32(v5, vmlaq_f32(vmulq_f32(v3, v2), v2, v4));
  v7 = selfCopy[26];
  selfCopy += 26;
  *v4.f32 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(v7), *selfCopy[-14].f32));
  return vdiv_f32(distortPoint(selfCopy, vdiv_f32(vsub_f32(vmul_f32(v7, vdiv_f32(*v6.i8, *&vdupq_laneq_s32(v6, 2))), vcvt_f32_f64(vmlsq_f64(0, vcvtq_f64_f32(*v4.f32), *selfCopy[-16].f32))), *v4.f32)), *selfCopy);
}

- (void)_initializeMetal
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
}

- (int)_allocateTextures
{
  if ((self->_deviceType - 2) > 2)
  {
    v5 = 0;
  }

  else
  {
    height = self->_outputDimensions.height;
    v4 = height + 31;
    if (height >= 0)
    {
      v4 = self->_outputDimensions.height;
    }

    v5 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:70 width:(self->_outputDimensions.width + (self->_outputDimensions.width < 0 ? 0x1F : 0)) >> 5 height:v4 >> 5 mipmapped:0];
    [v5 setUsage:3];
    [v5 setResourceOptions:32];
    device = [(MTLCommandQueue *)self->_commandQueue device];
    v7 = [device newTextureWithDescriptor:v5];
    warpedRGBLowResTexture = self->_warpedRGBLowResTexture;
    self->_warpedRGBLowResTexture = v7;

    if (!self->_warpedRGBLowResTexture)
    {
      [DeskCamRenderingSession _allocateTextures];
      goto LABEL_26;
    }

    device2 = [(MTLCommandQueue *)self->_commandQueue device];
    v10 = [device2 newTextureWithDescriptor:v5];
    blurredRGBLowResTexture = self->_blurredRGBLowResTexture;
    self->_blurredRGBLowResTexture = v10;

    if (!self->_blurredRGBLowResTexture)
    {
      [DeskCamRenderingSession _allocateTextures];
      goto LABEL_26;
    }

    [v5 setWidth:self->_outputDimensions.width];
    [v5 setHeight:self->_outputDimensions.height];
    device3 = [(MTLCommandQueue *)self->_commandQueue device];
    v13 = [device3 newTextureWithDescriptor:v5];
    warpedRGBHiResTexture = self->_warpedRGBHiResTexture;
    self->_warpedRGBHiResTexture = v13;

    if (!self->_warpedRGBHiResTexture)
    {
      [DeskCamRenderingSession _allocateTextures];
      goto LABEL_26;
    }

    if (self->_autoZoomSupported)
    {
      [v5 setPixelFormat:10];
      [v5 setWidth:(self->_outputDimensions.width + (self->_outputDimensions.width < 0 ? 0xF : 0)) >> 4];
      [v5 setHeight:(self->_outputDimensions.height + (self->_outputDimensions.height < 0 ? 0xF : 0)) >> 4];
      device4 = [(MTLCommandQueue *)self->_commandQueue device];
      v16 = [device4 newTextureWithDescriptor:v5];
      inputTexture = self->_lineDetectionController.inputTexture;
      self->_lineDetectionController.inputTexture = v16;

      if (!self->_lineDetectionController.inputTexture)
      {
        [DeskCamRenderingSession _allocateTextures];
        goto LABEL_26;
      }

      device5 = [(MTLCommandQueue *)self->_commandQueue device];
      v19 = [device5 newTextureWithDescriptor:v5];
      auxiliaryTexture = self->_lineDetectionController.auxiliaryTexture;
      self->_lineDetectionController.auxiliaryTexture = v19;

      if (!self->_lineDetectionController.auxiliaryTexture)
      {
        [DeskCamRenderingSession _allocateTextures];
        goto LABEL_26;
      }

      [v5 setPixelFormat:125];
      [v5 setHeight:31];
      v21 = [(MTLTexture *)self->_lineDetectionController.inputTexture height]* 1.4;
      [v5 setWidth:vcvtas_u32_f32(v21)];
      [v5 setResourceOptions:0];
      device6 = [(MTLCommandQueue *)self->_commandQueue device];
      v23 = [device6 newTextureWithDescriptor:v5];
      v24 = *&self->_anon_ad0[16];
      *&self->_anon_ad0[16] = v23;

      v25 = *&self->_anon_ad0[16];
      if (!v25)
      {
        [DeskCamRenderingSession _allocateTextures];
        goto LABEL_26;
      }

      height = [v25 height];
      width = [*&self->_anon_ad0[16] width];
      v28 = malloc_type_calloc(width * height, 0x10uLL, 0x1000040451B5BE8uLL);
      *&self->_anon_ad0[24] = v28;
      if (!v28)
      {
        [DeskCamRenderingSession _allocateTextures];
        goto LABEL_26;
      }

      v29 = malloc_type_calloc(width, 4uLL, 0x100004052888210uLL);
      *&self->_anon_ad0[32] = v29;
      if (!v29)
      {
        [DeskCamRenderingSession _allocateTextures];
        goto LABEL_26;
      }

      v30 = malloc_type_calloc(width, 0x20uLL, 0x1000040E0EAB150uLL);
      *&self->_anon_ad0[40] = v30;
      if (!v30)
      {
        [DeskCamRenderingSession _allocateTextures];
LABEL_26:
        v31 = -1;
        goto LABEL_17;
      }
    }
  }

  v31 = 0;
LABEL_17:

  return v31;
}

- (int)_compileShaders
{
  v3 = &qword_27ED77988;
  v4 = 10;
  while (1)
  {
    v5 = [(DeskCamRenderingSession *)self _compileComputeShader:*(v3 - 1)];
    v6 = *v3;
    *v3 = v5;

    if (!*v3)
    {
      break;
    }

    v3 += 2;
    if (!--v4)
    {
      return 0;
    }
  }

  [DeskCamRenderingSession _compileShaders];
  return -12786;
}

- (id)_newBufferWithLength:(unint64_t)length options:(unint64_t)options label:(id)label
{
  labelCopy = label;
  metalDevice = self->_metalDevice;
  if (metalDevice)
  {
    v10 = [(MTLDevice *)metalDevice newBufferWithLength:length options:options];
    [v10 setLabel:labelCopy];
  }

  else
  {
    [DeskCamRenderingSession _newBufferWithLength:options:label:];
    v10 = 0;
  }

  return v10;
}

- (id)_compileComputeShader:(id)shader
{
  shaderCopy = shader;
  if (!shaderCopy)
  {
    [DeskCamRenderingSession _compileComputeShader:];
LABEL_14:
    v6 = 0;
LABEL_17:
    v9 = 0;
    goto LABEL_8;
  }

  if (!self->_library)
  {
    [DeskCamRenderingSession _compileComputeShader:];
    goto LABEL_14;
  }

  if (!self->_metalDevice)
  {
    [DeskCamRenderingSession _compileComputeShader:];
    goto LABEL_14;
  }

  v5 = objc_opt_new();
  v6 = v5;
  if (!v5)
  {
    [DeskCamRenderingSession _compileComputeShader:];
    goto LABEL_17;
  }

  [v5 setLabel:shaderCopy];
  v7 = [(MTLLibrary *)self->_library newFunctionWithName:shaderCopy];
  [v6 setComputeFunction:v7];

  computeFunction = [v6 computeFunction];

  if (!computeFunction)
  {
    [DeskCamRenderingSession _compileComputeShader:];
    goto LABEL_17;
  }

  v9 = [(MTLDevice *)self->_metalDevice newComputePipelineStateWithDescriptor:v6 options:0 reflection:0 error:0];
  if (!v9)
  {
    [DeskCamRenderingSession _compileComputeShader:];
  }

LABEL_8:

  return v9;
}

- ($7350132BDA356DD21C3911335718E94B)_deskEdgeDetectorResult
{
  v4 = v2;
  v2[2] = 0;
  *v2->f32 = xmmword_2434F7A28;
  width = [(MTLTexture *)self->_lineDetectionController.inputTexture width];
  width2 = [*&self->_anon_ad0[16] width];
  height = [*&self->_anon_ad0[16] height];
  v79 = *&self->_anon_ad0[24];
  v8 = *&self->_anon_ad0[32];
  v9 = *&self->_anon_ad0[40];
  v10 = *&self->_anon_ad0[16];
  if (width2)
  {
    if (!width || height != 31 || (v11 = v79) == 0 || (bzero(v79, (496 * width2) & 0xFFFFFFFF0), !v8) || (v12 = width2, bzero(v8, 4 * width2), !v9))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_0();
      FigDebugAssert3();
      goto LABEL_46;
    }

    v13 = 1.0 / width;
    memset(v83, 0, 24);
    v83[3] = width2;
    v84 = xmmword_2434F7930;
    v73 = v10;
    [v10 getBytes:v79 bytesPerRow:16 * width2 fromRegion:v83 mipmapLevel:0];
    v14 = 0;
    v15 = 0;
    v76 = 0;
    v75 = (width2 * 0.5) + -0.5;
    v74 = -1;
    v16 = -1000000.0;
    while (1)
    {
      v17 = &v11[16 * v14];
      v18 = &v11[16 * (v15 * width2)];
      v19 = v12;
      v20 = v8;
      v21 = 0.0;
      do
      {
        v22 = *v17++;
        v21 = v21 + (v13 * *&v22);
        *v20++ = v21;
        --v19;
      }

      while (v19);
      bzero(v9, 32 * width2);
      LODWORD(v23) = 0;
      v24 = 0;
      v25 = 0;
      v26 = -3;
      do
      {
        v27 = 0;
        v28 = *(v8 + v25);
        v29 = 0.0;
        v30 = v26;
        do
        {
          if (v30 >= width2 - 1)
          {
            v31 = width2 - 1;
          }

          else
          {
            v31 = v30;
          }

          v29 = v29 + ((v13 * *&dword_2434F7A0C[v27]) * *&v18[16 * v31]);
          ++v30;
          ++v27;
        }

        while (v27 != 7);
        if (v29 <= 0.0078431)
        {
          if (v29 >= -0.0078431)
          {
            v32 = 0;
            goto LABEL_24;
          }

          v32 = -1;
        }

        else
        {
          v32 = 1;
        }

        if (v32 != v24)
        {
          v33 = v23 + 1;
          v23 = &v9[8 * v23];
          *v23 = v32;
          *(v23 + 1) = v25;
          *(v23 + 2) = v25;
          v23[3] = v28;
          v23[4] = v28;
          *(v23 + 3) = 0;
          v23[5] = 0.0;
          LODWORD(v23) = v33;
        }

        v34 = &v9[8 * v23];
        *(v34 - 6) = v25;
        v35 = fminf(*(v34 - 5), v28);
        v36 = fmaxf(*(v34 - 4), v28);
        *(v34 - 5) = v35;
        *(v34 - 4) = v36;
        v37 = &v18[16 * v25];
        v38 = *(v34 - 2);
        *(v34 - 3) = *(v34 - 3) + v37[2];
        *(v34 - 2) = v38 + v37[1];
        *(v34 - 1) = *(v34 - 1) + *v37;
LABEL_24:
        ++v25;
        ++v26;
        v24 = v32;
      }

      while (v25 != width2);
      if (v23)
      {
        v39 = v9;
        if (v23 >= 1)
        {
          v40 = 0;
          v23 = v23;
          v41 = v9;
          v42 = v23;
          do
          {
            if ((v41[4] - v41[3]) > 0.062745 && OUTLINED_FUNCTION_3_0(v41[7], v41[5], v41[6]) >= ((width2 * 0.05) * (width2 * 0.05)))
            {
              v40 = v41;
            }

            v41 += 8;
            --v42;
          }

          while (v42);
          if (v40)
          {
            v39 = v40;
          }

          else
          {
            v39 = v9;
          }

          if (!v40)
          {
            v43 = v9[4] - v9[3];
            v44 = v9;
            v39 = v9;
            do
            {
              v45 = v44[3];
              if ((v44[4] - v45) > v43)
              {
                v43 = v44[4] - v45;
                v39 = v44;
              }

              v44 += 8;
              v23 = (v23 - 1);
            }

            while (v23);
          }
        }

        v46 = *(v39 + 2) - *(v39 + 1) + 1;
        v47 = v39[4] - v39[3];
        v48 = DeskCamEdgeDetectorAngles[v15];
        width3 = [(MTLTexture *)self->_lineDetectionController.inputTexture width];
        height2 = [(MTLTexture *)self->_lineDetectionController.inputTexture height];
        v50 = v47 / sqrtf(v46);
        if (self->_anon_ad0[48] == 1)
        {
          v78 = v16;
          v51 = *&self->_anon_ad0[60];
          v52 = height2;
          v53 = __sincosf_stret(v48);
          v54.f32[0] = -v53.__sinval;
          v54.i32[1] = LODWORD(v53.__cosval);
          v77 = v54;
          v55 = v53.__cosval * v51;
          v56 = v50 * *&self->_anon_ad0[52];
          v57 = *&self->_anon_ad0[56];
          v58 = OUTLINED_FUNCTION_3_0(v39[7], v39[5], v39[6]);
          v59 = powf(fmaxf(v58, 0.0), 0.25);
          v60.f32[0] = width3;
          v60.f32[1] = v52;
          v61 = v56 + (COERCE_FLOAT(vmla_n_f32(vadd_f32(vmul_f32(v60, 0x3F0000003F000000), 0xBF000000BF000000), v77, vcvts_n_f32_s32(v39[8] + v39[4], 1uLL) - v75).i32[1]) + 0.5);
          v16 = v78;
          v50 = v55 + ((v57 * v59) + v61);
        }

        v11 = v79;
        if (v50 > v16)
        {
          v76 = *(v39 + 1);
          v16 = v50;
          v74 = v15;
        }
      }

      ++v15;
      v14 += width2;
      v12 = width2;
      if (v15 == 31)
      {
        v62 = __sincosf_stret(DeskCamEdgeDetectorAngles[v74]);
        v63.f32[0] = -v62.__sinval;
        v63.i32[1] = LODWORD(v62.__cosval);
        v82 = v63;
        width4 = [(MTLTexture *)self->_lineDetectionController.inputTexture width];
        height3 = [(MTLTexture *)self->_lineDetectionController.inputTexture height];
        v65.f32[0] = width4;
        v65.f32[1] = height3;
        v66 = v65;
        v67 = vadd_f32(vmul_f32(v65, 0x3F0000003F000000), 0xBF000000BF000000);
        v68.f32[0] = 0.7 * v67.f32[0];
        v69 = vmul_n_f32(v82, v76 - v75);
        v70 = vadd_f32(vadd_f32(v67, vmls_lane_f32(v69, __PAIR64__(LODWORD(v62.__sinval), LODWORD(v62.__cosval)), v68, 0)), 0x3F0000003F000000);
        v71 = vadd_f32(vadd_f32(v67, vmla_n_f32(v69, __PAIR64__(LODWORD(v62.__sinval), LODWORD(v62.__cosval)), 0.7 * v67.f32[0])), 0x3F0000003F000000);
        v10 = v73;
        v4->i32[0] = llroundf(fminf(v70.f32[1], v71.f32[1]));
        v4[1] = vdiv_f32(v70, v66);
        v4[2] = vdiv_f32(v71, v66);
        break;
      }
    }
  }

LABEL_46:

  return v72;
}

- (CGRect)rectangleForZoomFactorValue:(float)value
{
  [(DeskCamRenderingSession *)self _defaultZoomedRectangleValue];
  if (self->_undistortControlsAvailable)
  {
    *&v5 = value;
    [(DeskCamRenderingSession *)self trapezoidForZoomFactorValue:v5];
    if (vcgt_f32(v10, v9).u8[0])
    {
      v15 = v9.f32[0];
    }

    else
    {
      v15 = v10.f32[0];
    }

    if (v15 >= v11)
    {
      v15 = v11;
    }

    if (v15 >= v13)
    {
      v15 = v13;
    }

    v16 = v9.f32[1];
    if (v9.f32[1] >= v10.f32[1])
    {
      v17 = v10.f32[1];
    }

    else
    {
      v17 = v9.f32[1];
    }

    if (v9.f32[1] <= v10.f32[1])
    {
      v16 = v10.f32[1];
    }

    if (v17 >= v12)
    {
      v17 = v12;
    }

    v18 = vcgt_f32(v9, v10).u8[0];
    if (v17 >= v14)
    {
      v17 = v14;
    }

    if ((v18 & 1) == 0)
    {
      v9.f32[0] = v10.f32[0];
    }

    if (v9.f32[0] <= v11)
    {
      v9.f32[0] = v11;
    }

    if (v9.f32[0] <= v13)
    {
      v19 = v13;
    }

    else
    {
      v19 = v9.f32[0];
    }

    if (v16 <= v12)
    {
      v20 = v12;
    }

    else
    {
      v20 = v16;
    }

    if (v20 <= v14)
    {
      v21 = v14;
    }

    else
    {
      v21 = v20;
    }

    v5 = v15;
    v6 = v17;
    v7 = (v19 - v15);
    v8 = (v21 - v17);
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (uint64_t)initWithOutputDimensions:portType:deviceType:isFrontFacingCamera:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_updateDeskEdgeDetectionDataInOutputSpace
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_initializeMetal
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_allocateTextures
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_compileShaders
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_newBufferWithLength:options:label:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_compileComputeShader:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_compileComputeShader:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_compileComputeShader:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_compileComputeShader:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_compileComputeShader:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_compileComputeShader:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

@end