@interface BWAdaptiveCorrectionPreviewRegistration
+ (uint64_t)flattenNarrowerToWiderTransforms:(int)a3@<W4> narrowerDimensions:(_OWORD *)a4@<X8> narrowerFinalCropRect:(double)a5@<D0> atNarrowerToWiderCameraScale:(double)a6@<D1> useYAnchorAtHeightCenter:(double)a7@<D2>;
- (BWAdaptiveCorrectionPreviewRegistration)initWithCameraInfoByPortType:(id)a3 excludeStaticComponentFromAlignmentShifts:(BOOL)a4;
- (CGFloat)_estimatedSagPositionUsingOISShift:(double)a3 forPortType:(double)a4;
- (float64_t)_fundamentalMatrixFromCalibration:(uint64_t)a3@<X2> narrowerMetadata:(uint64_t)a4@<X3> widerMetadata:(_OWORD *)a5@<X8>;
- (int)allocateResourcesWithVideoFormat:(id)a3 metalContext:(id)a4;
- (int)computeAlignmentFromWiderSampleBuffer:(opaqueCMSampleBuffer *)a3 narrowerSampleBuffer:(opaqueCMSampleBuffer *)a4 narrowerToWiderTransformsOut:(id *)a5;
- (int)computeApproximateCorrectionForWiderCamera:(opaqueCMSampleBuffer *)a3 narrowerCameraPortType:(id)a4 narrowerPixelBufferDimensions:(id)a5 narrowerToWiderCameraScale:(double)a6 narrowerToWiderTransformsOut:(id *)a7;
- (int)registerWiderSampleBufferUsingADC:(opaqueCMSampleBuffer *)a3 narrowerSampleBuffer:(opaqueCMSampleBuffer *)a4 narrowerRect:(CGRect)a5 macroTransitionType:(int)a6 narrowerToWiderTransformsOut:(id *)a7;
- (uint64_t)_computeApproximateHomographyAtDepth:(uint64_t)a3@<X2> calibration:(void *)a4@<X3> narrowerPortType:(unint64_t)a5@<X4> widerMetadata:(float64x2_t *)a6@<X8> pixelBufferDimensions:(double)a7@<D0>;
- (uint64_t)_computeApproximateOISCalibrationFromWiderMetadata:(uint64_t)a3 narrowerPortType:(double *)a4 narrowerToWiderCameraScale:(double)a5 calibrationOut:;
- (uint64_t)_computeOISCalibrationFromWiderMetadata:(uint64_t)a3 narrowerMetadata:(int)a4 updateEstimatedSagPositions:(int)a5 excludeEstimatedSagFromAlignment:(uint64_t)a6 calibrationOut:;
- (uint64_t)_estimateDepthFromKeypointsUsingCalibration:(float64x2_t *)a3 narrowerRawSensorResolution:(int)a4 fundamentalMatrix:(void *)a5 macroTransitionType:(float64x2_t)a6 totalZoomFactor:(float64x2_t)a7 consolidatedDepthsOut:(float64x2_t)a8;
- (uint64_t)_homographyAtDepth:(void *)a3@<X2> calibration:(void *)a4@<X3> narrowerMetadata:(uint64_t)a5@<X4> widerMetadata:(char)a6@<W5> pixelBufferDimensions:(float64x2_t *)a7@<X8> excludeExtrinsics:(double)a8@<D0>;
- (uint64_t)_loadAdaptiveCorrectionSymbols;
- (uint64_t)_updateCorrectedCalibrationUsingInitialOISCalibration:(int)a3 macroTransitionType:;
- (uint64_t)_verifyRegistrationTransform:(uint64_t)a3 usingInitialOISCalibration:(uint64_t)a4 narrowerMetadata:(uint64_t)a5 widerMetadata:(unint64_t)a6 narrowerDimensions:;
- (void)cleanupResources;
- (void)dealloc;
@end

@implementation BWAdaptiveCorrectionPreviewRegistration

- (BWAdaptiveCorrectionPreviewRegistration)initWithCameraInfoByPortType:(id)a3 excludeStaticComponentFromAlignmentShifts:(BOOL)a4
{
  v37.receiver = self;
  v37.super_class = BWAdaptiveCorrectionPreviewRegistration;
  v6 = [(BWAdaptiveCorrectionPreviewRegistration *)&v37 init];
  v7 = v6;
  if (!a3)
  {
    [BWAdaptiveCorrectionPreviewRegistration initWithCameraInfoByPortType:excludeStaticComponentFromAlignmentShifts:];
LABEL_25:

    return 0;
  }

  if (!v6)
  {
    return v7;
  }

  v24 = a4;
  v6->_tuningParameters = objc_alloc_init(BWAdaptiveCorrectionPreviewRegistrationTuningParameters);
  v25 = v7;
  v7->_estimatedSagPositionsByPortType = [MEMORY[0x1E695DF90] dictionary];
  v30 = [MEMORY[0x1E695DF90] dictionary];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [a3 allKeys];
  v31 = [obj countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (!v31)
  {
    goto LABEL_18;
  }

  v29 = *v34;
  v8 = *off_1E7989F18;
  v9 = *off_1E7989E80;
  v28 = *off_1E798A0D0;
  v10 = *off_1E7989E50;
  v26 = *off_1E7989E58;
  v11 = *off_1E7989F28;
  v12 = *off_1E7989F10;
  while (2)
  {
    for (i = 0; i != v31; ++i)
    {
      if (*v34 != v29)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v33 + 1) + 8 * i);
      v15 = [MEMORY[0x1E695DF90] dictionary];
      v16 = [objc_msgSend(a3 objectForKeyedSubscript:{v14), "objectForKeyedSubscript:", v8}];
      if (!v16)
      {
        [BWAdaptiveCorrectionPreviewRegistration initWithCameraInfoByPortType:excludeStaticComponentFromAlignmentShifts:];
        goto LABEL_24;
      }

      [v15 setObject:v16 forKeyedSubscript:v8];
      v17 = [objc_msgSend(a3 objectForKeyedSubscript:{v14), "objectForKeyedSubscript:", v9}];
      if (!v17)
      {
        [BWAdaptiveCorrectionPreviewRegistration initWithCameraInfoByPortType:excludeStaticComponentFromAlignmentShifts:];
        goto LABEL_24;
      }

      [v15 setObject:v17 forKeyedSubscript:v9];
      v18 = [v14 isEqualToString:v28];
      v19 = [a3 objectForKeyedSubscript:v14];
      if (v18)
      {
        v20 = [v19 objectForKeyedSubscript:v26];
        if (!v20)
        {
          [BWAdaptiveCorrectionPreviewRegistration initWithCameraInfoByPortType:excludeStaticComponentFromAlignmentShifts:];
LABEL_24:
          v7 = v25;
          goto LABEL_25;
        }
      }

      else
      {
        v20 = [v19 objectForKeyedSubscript:v10];
        if (!v20)
        {
          [BWAdaptiveCorrectionPreviewRegistration initWithCameraInfoByPortType:excludeStaticComponentFromAlignmentShifts:];
          goto LABEL_24;
        }
      }

      [v15 setObject:v20 forKeyedSubscript:v10];
      v21 = [objc_msgSend(a3 objectForKeyedSubscript:{v14), "objectForKeyedSubscript:", v11}];
      if (!v21)
      {
        [BWAdaptiveCorrectionPreviewRegistration initWithCameraInfoByPortType:excludeStaticComponentFromAlignmentShifts:];
        goto LABEL_24;
      }

      [v15 setObject:v21 forKeyedSubscript:v11];
      v22 = [objc_msgSend(a3 objectForKeyedSubscript:{v14), "objectForKeyedSubscript:", v12}];
      if (!v22)
      {
        [BWAdaptiveCorrectionPreviewRegistration initWithCameraInfoByPortType:excludeStaticComponentFromAlignmentShifts:];
        goto LABEL_24;
      }

      [v15 setObject:v22 forKeyedSubscript:v12];
      [v30 setObject:v15 forKeyedSubscript:v14];
    }

    v31 = [obj countByEnumeratingWithState:&v33 objects:v32 count:16];
    if (v31)
    {
      continue;
    }

    break;
  }

LABEL_18:
  v7 = v25;
  v25->_staticParametersByPortType = v30;
  v25->_registrationPoolReadyAssertion = [+[BWMemoryPool sharedMemoryPool](BWMemoryPool newFlushAssertion:"newFlushAssertion:", @"BWAdaptiveCorrectionPreviewRegistration registrationPool"];
  v25->_excludeExtrinsicsCorrectionFromWideTeleAlignment = v24;
  v25->_excludeEstimatedSagFromWideTeleAlignment = v24;
  v25->_sagEstimationAlpha = 0.01;
  return v7;
}

- (int)allocateResourcesWithVideoFormat:(id)a3 metalContext:(id)a4
{
  if (!a4)
  {
    [BWAdaptiveCorrectionPreviewRegistration allocateResourcesWithVideoFormat:metalContext:];
LABEL_36:
    v35 = -12780;
    goto LABEL_33;
  }

  if (!a3)
  {
    [BWAdaptiveCorrectionPreviewRegistration allocateResourcesWithVideoFormat:metalContext:];
    goto LABEL_36;
  }

  self->_resourcesCleaned = 0;
  if ([(BWAdaptiveCorrectionPreviewRegistration *)self _loadAdaptiveCorrectionSymbols])
  {
    [BWAdaptiveCorrectionPreviewRegistration allocateResourcesWithVideoFormat:metalContext:];
LABEL_32:
    v35 = -12786;
LABEL_33:
    [(BWAdaptiveCorrectionPreviewRegistration *)self cleanupResources];
    return v35;
  }

  self->_metalContext = a4;
  v7 = [objc_alloc(MEMORY[0x1E6991788]) initWithCommandQueue:{-[FigMetalContext commandQueue](self->_metalContext, "commandQueue")}];
  self->_keypointDetector = v7;
  if (v7)
  {
    v8 = VTPixelRotationSessionCreate(*MEMORY[0x1E695E480], &self->_cropAndScaleSession);
    if (v8)
    {
      v35 = v8;
      [BWAdaptiveCorrectionPreviewRegistration allocateResourcesWithVideoFormat:metalContext:];
      goto LABEL_33;
    }

    v9 = VTSessionSetProperty(self->_cropAndScaleSession, *MEMORY[0x1E6983D68], MEMORY[0x1E695E118]);
    if (v9)
    {
      v35 = v9;
      [BWAdaptiveCorrectionPreviewRegistration allocateResourcesWithVideoFormat:metalContext:];
      goto LABEL_33;
    }

    v44 = 0u;
    v45 = 0u;
    tuningParameters = self->_tuningParameters;
    if (tuningParameters)
    {
      [(BWAdaptiveCorrectionPreviewRegistrationTuningParameters *)tuningParameters regToolBoxConfig];
      v11 = v44;
      v12 = DWORD1(v44);
      v13 = DWORD2(v44);
      v14 = HIDWORD(v44);
      v15 = v45;
      v16 = DWORD1(v45);
      v17 = DWORD2(v45);
      LODWORD(v18) = HIDWORD(v45);
    }

    else
    {
      v17 = 0;
      v16 = 0;
      v15 = 0;
      v14 = 0;
      v13 = 0;
      v12 = 0;
      v11 = 0;
      v18 = 0.0;
    }

    LODWORD(v37) = v17;
    if ([(FigRegToolboxGPU *)self->_keypointDetector allocateResources:v11 imageWidth:v12 imageHeight:v13 gridWidth:v14 gridHeight:v15 templateRadius:v16 searchRadius:v18 minNCCThreshold:v37])
    {
      [BWAdaptiveCorrectionPreviewRegistration allocateResourcesWithVideoFormat:metalContext:];
    }

    else
    {
      v19 = objc_alloc_init(BWVideoFormatRequirements);
      v20 = self->_tuningParameters;
      if (v20)
      {
        [(BWAdaptiveCorrectionPreviewRegistrationTuningParameters *)v20 regToolBoxConfig];
        v21 = DWORD1(v42);
      }

      else
      {
        v21 = 0;
        v42 = 0u;
        v43 = 0u;
      }

      [(BWVideoFormatRequirements *)v19 setWidth:v21];
      v22 = self->_tuningParameters;
      if (v22)
      {
        [(BWAdaptiveCorrectionPreviewRegistrationTuningParameters *)v22 regToolBoxConfig];
        v23 = DWORD2(v40);
      }

      else
      {
        v23 = 0;
        v40 = 0u;
        v41 = 0u;
      }

      [(BWVideoFormatRequirements *)v19 setHeight:v23];
      v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "pixelFormat")}];
      -[BWVideoFormatRequirements setSupportedPixelFormats:](v19, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1]);
      v38 = v19;
      v24 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1]), 2, @"BWAdaptiveCorrectionPreviewRegistration", +[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool"));
      self->_registrationPool = v24;
      if (v24)
      {
        v25 = [(BWAdaptiveCorrectionPreviewRegistrationTuningParameters *)self->_tuningParameters configuredNumKeypoints];
        v26 = malloc_type_malloc(24 * v25, 0x1000040504FFAC1uLL);
        self->_keypointList = v26;
        if (v26)
        {
          v27 = 0;
          v28 = 1;
          do
          {
            v29 = v28;
            v30 = malloc_type_malloc(16 * v25, 0x100004000313F17uLL);
            self->_validKeypointsInSensorResolution[v27] = v30;
            if (!v30)
            {
              [BWAdaptiveCorrectionPreviewRegistration allocateResourcesWithVideoFormat:metalContext:];
              goto LABEL_32;
            }

            v31 = malloc_type_malloc(16 * v25, 0x100004000313F17uLL);
            self->_transposedKeypoints[v27] = v31;
            if (!v31)
            {
              [BWAdaptiveCorrectionPreviewRegistration allocateResourcesWithVideoFormat:metalContext:];
              goto LABEL_32;
            }

            v28 = 0;
            v27 = 1;
          }

          while ((v29 & 1) != 0);
          for (i = 0; i != 3; ++i)
          {
            v33 = malloc_type_malloc(8 * v25, 0x100004000313F17uLL);
            self->_keypointWeights[i] = v33;
            if (!v33)
            {
              [BWAdaptiveCorrectionPreviewRegistration allocateResourcesWithVideoFormat:metalContext:];
              goto LABEL_32;
            }
          }

          v34 = malloc_type_malloc(8 * v25, 0x100004000313F17uLL);
          self->_keypointDepths = v34;
          if (v34)
          {
            return 0;
          }

          [BWAdaptiveCorrectionPreviewRegistration allocateResourcesWithVideoFormat:metalContext:];
        }

        else
        {
          [BWAdaptiveCorrectionPreviewRegistration allocateResourcesWithVideoFormat:metalContext:];
        }
      }

      else
      {
        [BWAdaptiveCorrectionPreviewRegistration allocateResourcesWithVideoFormat:metalContext:];
      }
    }

    goto LABEL_32;
  }

  [BWAdaptiveCorrectionPreviewRegistration allocateResourcesWithVideoFormat:metalContext:];
  return 0;
}

- (int)registerWiderSampleBufferUsingADC:(opaqueCMSampleBuffer *)a3 narrowerSampleBuffer:(opaqueCMSampleBuffer *)a4 narrowerRect:(CGRect)a5 macroTransitionType:(int)a6 narrowerToWiderTransformsOut:(id *)a7
{
  v247 = 0;
  v248[0] = 0;
  v245 = 0;
  v246 = 0;
  *&v193.f64[0] = [MEMORY[0x1E695DF70] arrayWithCapacity:{2, a5.origin.x, a5.origin.y, a5.size.width, a5.size.height}];
  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  __dst = a7;
  if (!a3 || !a4)
  {
    [BWAdaptiveCorrectionPreviewRegistration registerWiderSampleBufferUsingADC:narrowerSampleBuffer:narrowerRect:macroTransitionType:narrowerToWiderTransformsOut:];
LABEL_50:
    v116 = -12780;
    goto LABEL_37;
  }

  if (!a7)
  {
    [BWAdaptiveCorrectionPreviewRegistration registerWiderSampleBufferUsingADC:narrowerSampleBuffer:narrowerRect:macroTransitionType:narrowerToWiderTransformsOut:];
    goto LABEL_50;
  }

  v13 = v12;
  LODWORD(v162) = a6;
  v14 = 0;
  *&v178 = v226;
  *&v173 = &v228;
  v15 = *off_1E798A3C8;
  v16 = *off_1E798B540;
  v17 = a3;
  v18 = *off_1E7989E50;
  v19 = v248;
  v20 = 1;
  *&v157 = a4;
  *&v193.f64[1] = self;
  do
  {
    v21 = v20;
    *v19 = CMSampleBufferGetImageBuffer(a4);
    [*&v193.f64[0] setObject:CMGetAttachment(a4 atIndexedSubscript:{v15, 0), v14}];
    [v13 setObject:objc_msgSend(objc_msgSend(*&v193.f64[0] atIndexedSubscript:{"objectAtIndexedSubscript:", v14), "objectForKeyedSubscript:", v16), v14}];
    [objc_msgSend(objc_msgSend(*(*&v193.f64[1] + 48) objectForKeyedSubscript:{objc_msgSend(v13, "objectAtIndexedSubscript:", v14)), "objectForKeyedSubscript:", v18), "doubleValue"}];
    v20 = 0;
    v19 = &v247;
    a4 = v17;
    v14 = 1;
  }

  while ((v21 & 1) != 0);
  v244 = 0;
  v243 = 0u;
  *v242 = 0u;
  *v241 = 0u;
  *v240 = 0u;
  *v239 = 0u;
  *v238 = 0u;
  *v237 = 0u;
  *v236 = 0u;
  *v235 = 0u;
  v234 = 0u;
  v233 = 0u;
  self = *&v193.f64[1];
  v22 = -[BWAdaptiveCorrectionPreviewRegistration _computeOISCalibrationFromWiderMetadata:narrowerMetadata:updateEstimatedSagPositions:excludeEstimatedSagFromAlignment:calibrationOut:](*&v193.f64[1], [*&v193.f64[0] objectAtIndexedSubscript:1], objc_msgSend(*&v193.f64[0], "objectAtIndexedSubscript:", 0), 0, 0, &v233);
  if (v22)
  {
    v116 = v22;
    [BWAdaptiveCorrectionPreviewRegistration registerWiderSampleBufferUsingADC:narrowerSampleBuffer:narrowerRect:macroTransitionType:narrowerToWiderTransformsOut:];
    goto LABEL_37;
  }

  v23 = *(*&v193.f64[1] + 8);
  if (!v23)
  {
    LODWORD(v150) = 0;
    v232 = 0u;
    v231 = 0u;
LABEL_10:
    v230 = 0u;
    v229 = 0u;
    v25 = 0uLL;
    goto LABEL_12;
  }

  [v23 regToolBoxConfig];
  v24 = *(*&v193.f64[1] + 8);
  LODWORD(v150) = DWORD1(v231);
  if (!v24)
  {
    goto LABEL_10;
  }

  [v24 regToolBoxConfig];
  LODWORD(v25) = DWORD2(v229);
  *&v25 = v25;
LABEL_12:
  v167 = v25;
  v26 = 0;
  v188.f64[0] = *off_1E798B5A8;
  v188.f64[1] = *off_1E798B5A0;
  v27 = v248;
  v28 = &v246;
  v29 = &v227;
  v30 = v225;
  v31 = &v220;
  v32 = 1;
  do
  {
    v33 = v32;
    v34 = *v27;
    *v29 = CVPixelBufferGetWidth(*v27);
    *(v29 + 1) = CVPixelBufferGetHeight(v34);
    [objc_msgSend(objc_msgSend(*&v193.f64[0] objectAtIndexedSubscript:{v26), "objectForKeyedSubscript:", *&v188.f64[0]), "doubleValue"}];
    v36 = v35;
    [objc_msgSend(objc_msgSend(*&v193.f64[0] objectAtIndexedSubscript:{v26), "objectForKeyedSubscript:", *&v188.f64[1]), "doubleValue"}];
    *v30 = 0.0;
    v30[1] = 0.0;
    *(v30 + 2) = v36;
    *(v30 + 3) = v37;
    [*&v193.f64[0] objectAtIndexedSubscript:v26];
    FigCFDictionaryGetCGRectIfPresent();
    Width = CVPixelBufferGetWidth(v34);
    Height = CVPixelBufferGetHeight(v34);
    *v31 = 0.0;
    v31[1] = 0.0;
    v31[2] = Width;
    v31[3] = Height;
    [*&v193.f64[0] objectAtIndexedSubscript:v26];
    FigCFDictionaryGetCGRectIfPresent();
    self = *&v193.f64[1];
    v40 = [*(*&v193.f64[1] + 608) newPixelBuffer];
    *v28 = v40;
    if (!v40)
    {
      [BWAdaptiveCorrectionPreviewRegistration registerWiderSampleBufferUsingADC:narrowerSampleBuffer:narrowerRect:macroTransitionType:narrowerToWiderTransformsOut:];
LABEL_45:
      v116 = -1;
      goto LABEL_37;
    }

    v32 = 0;
    v27 = &v247;
    v28 = &v245;
    v31 = v224;
    v30 = v226;
    v29 = &v228;
    v26 = 1;
  }

  while ((v33 & 1) != 0);
  *&v41 = v150;
  v183 = v41;
  acpr_conformRectForMSR420vf(v220, v221, v222, v223);
  self = *&v193.f64[1];
  v42 = VTPixelRotationSessionRotateSubImage();
  if (v42)
  {
    v116 = v42;
    [BWAdaptiveCorrectionPreviewRegistration registerWiderSampleBufferUsingADC:narrowerSampleBuffer:narrowerRect:macroTransitionType:narrowerToWiderTransformsOut:];
  }

  else
  {
    v43 = v193.f64[0];
    [objc_msgSend(objc_msgSend(*&v193.f64[0] objectAtIndexedSubscript:{0), "objectForKeyedSubscript:", *off_1E798B2F0), "doubleValue"}];
    v45 = v44 * 10.0;
    if (v44 * 10.0 <= 0.0)
    {
      v45 = 1.0e10;
      v46 = v162;
      v47 = v157;
    }

    else
    {
      v46 = v162;
      v47 = v157;
      if (!v162)
      {
        v45 = 2.0 / (1.0 / v45 + 1.0e-10);
      }
    }

    v218 = 0u;
    v219 = 0u;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v48 = [*&v193.f64[0] objectAtIndexedSubscript:0];
    v49 = [*&v193.f64[0] objectAtIndexedSubscript:1];
    v210[8] = *v241;
    v210[9] = *v242;
    v210[10] = v243;
    v210[11].i64[0] = v244;
    v210[7] = *v240;
    v50 = v227;
    [(BWAdaptiveCorrectionPreviewRegistration *)*&v193.f64[1] _homographyAtDepth:v210 calibration:v48 narrowerMetadata:v49 widerMetadata:v227 pixelBufferDimensions:0 excludeExtrinsics:&v214, v45, v123, v127, v130, v134, v137, v141, v144, __dst, v150, v154, v157, v162, v167, v173, v178, v183, v188, v193, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v233, v234, *v235, *v236, *v237, *v238, *v239];
    v51.f64[0] = v220;
    v52.f64[0] = v221;
    v53 = vdivq_f64(vaddq_f64(v218, vmlaq_n_f64(vmulq_n_f64(v214, v220), v216, v221)), vdupq_lane_s64(*&vaddq_f64(v219, vmlaq_f64(vmulq_f64(v51, v215), v52, v217)), 0));
    v51.f64[0] = v220 + v222;
    v52.f64[0] = v221 + v223;
    v54 = vdivq_f64(vaddq_f64(v218, vmlaq_n_f64(vmulq_n_f64(v214, v220 + v222), v216, v221 + v223)), vdupq_lane_s64(*&vaddq_f64(v219, vmlaq_f64(vmulq_f64(v215, v51), v52, v217)), 0));
    v55.f64[0] = acpr_conformRectForMSR420vf(v53.f64[0], v53.f64[1], v54.f64[0] - v53.f64[0], v54.f64[1] - v53.f64[1]);
    v158 = v56;
    v163 = v55;
    v174 = v57;
    *v151 = v58;
    v59 = VTPixelRotationSessionRotateSubImage();
    if (v59)
    {
      v116 = v59;
      [BWAdaptiveCorrectionPreviewRegistration registerWiderSampleBufferUsingADC:narrowerSampleBuffer:narrowerRect:macroTransitionType:narrowerToWiderTransformsOut:];
    }

    else
    {
      v60 = [(FigMetalContext *)self->_metalContext bindPixelBufferToMTL2DTexture:v246 pixelFormat:10 usage:17 plane:0];
      v61 = [(FigMetalContext *)self->_metalContext bindPixelBufferToMTL2DTexture:v245 pixelFormat:10 usage:17 plane:0];
      v62 = [(FigRegToolboxGPU *)self->_keypointDetector processReferenceImage:v60 histogram:0 doWaitForIdle:1];
      if (v62)
      {
        v116 = v62;
        [BWAdaptiveCorrectionPreviewRegistration registerWiderSampleBufferUsingADC:narrowerSampleBuffer:narrowerRect:macroTransitionType:narrowerToWiderTransformsOut:];
      }

      else
      {
        v63 = [(FigRegToolboxGPU *)self->_keypointDetector computeTransform:v61 transform:0 outputCorners:self->_keypointList solverSelector:1 histogram:0 roi:0];
        if (v63)
        {
          v116 = v63;
          [BWAdaptiveCorrectionPreviewRegistration registerWiderSampleBufferUsingADC:narrowerSampleBuffer:narrowerRect:macroTransitionType:narrowerToWiderTransformsOut:];
        }

        else
        {
          *v131 = v224[1];
          v138 = v224[0];
          *v124 = v226[1];
          *v179 = v226[0];
          self->_validKeypointsCount = 0;
          if ([(BWAdaptiveCorrectionPreviewRegistrationTuningParameters *)self->_tuningParameters configuredNumKeypoints])
          {
            v64 = 0;
            v65 = 0;
            v66.f64[0] = v174.f64[0];
            *&v66.f64[1] = v151[0];
            v67.f64[0] = *v184;
            v67.f64[1] = v168;
            v174 = vdivq_f64(v66, v67);
            v67.f64[0] = v163.f64[0];
            v67.f64[1] = v158.f64[0];
            v158 = vdivq_f64(*v124, *v131);
            v163 = vsubq_f64(v67, v138);
            do
            {
              v68 = &self->_keypointList[v64];
              var4 = v68->var4;
              v70 = var4 * log2f(fmaxf(v68->var5, 1.0));
              [(BWAdaptiveCorrectionPreviewRegistrationTuningParameters *)self->_tuningParameters keypointsMinSelectionScore];
              if (v70 > v71)
              {
                v72 = &self->_keypointList[v64];
                v73 = self->_validKeypointsInSensorResolution[0];
                validKeypointsCount = self->_validKeypointsCount;
                v73[2 * validKeypointsCount] = v225[0] + v72->f32[0] * (v225[2] / *v184);
                v73[(2 * validKeypointsCount) | 1] = v225[1] + v72->f32[1] * (v225[3] / v168);
                *&self->_validKeypointsInSensorResolution[1][2 * validKeypointsCount] = vmlaq_f64(*v179, v158, vmlaq_f64(v163, v174, vcvtq_f64_f32(v72[1])));
                self->_validKeypointsCount = validKeypointsCount + 1;
              }

              ++v65;
              ++v64;
            }

            while (v65 < [(BWAdaptiveCorrectionPreviewRegistrationTuningParameters *)self->_tuningParameters configuredNumKeypoints]);
          }

          v210[8] = *v241;
          v210[9] = *v242;
          v210[10] = v243;
          v210[11].i64[0] = v244;
          v210[4] = *v237;
          v210[5] = *v238;
          v210[6] = *v239;
          v210[7] = *v240;
          v210[0] = v233;
          v210[1] = v234;
          v210[2] = *v235;
          v210[3] = *v236;
          v75 = [(BWAdaptiveCorrectionPreviewRegistration *)self _updateCorrectedCalibrationUsingInitialOISCalibration:v210 macroTransitionType:v46];
          if (v75)
          {
            v116 = v75;
            [BWAdaptiveCorrectionPreviewRegistration registerWiderSampleBufferUsingADC:narrowerSampleBuffer:narrowerRect:macroTransitionType:narrowerToWiderTransformsOut:];
          }

          else
          {
            v213 = 0uLL;
            v212 = 0;
            memset(v211, 0, sizeof(v211));
            v76 = [*&v43 objectAtIndexedSubscript:0];
            v77 = [*&v43 objectAtIndexedSubscript:1];
            v78 = *&self->_correctedCalibration.canonicalDisparityScale;
            v210[8] = *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[10];
            v210[9] = v78;
            v210[10] = *&self->_correctedCalibration.calibrationDimensions[1];
            v210[11].i64[0] = *&self->_correctedCalibration.pixelSize_um[1];
            v79 = *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[4];
            v210[4] = *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[2];
            v210[5] = v79;
            v80 = *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[8];
            v210[6] = *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[6];
            v210[7] = v80;
            v81 = [*&v43 objectAtIndexedSubscript:{0, -[BWAdaptiveCorrectionPreviewRegistration _fundamentalMatrixFromCalibration:narrowerMetadata:widerMetadata:](self, v210, v76, v77, v211, v124[0], v124[1], v131[0], v131[1], *&v138.f64[0], *&v138.f64[1], v145, __dst, v151[0], v151[1], *&v158.f64[0], *&v158.f64[1], *&v163.f64[0], *&v163.f64[1], *&v168, v171, v174, *v179, *v184, v189, v194, v198, v199, v200, v201, v202, v203, v204, *&v205, *&v206, *&v207, *&v208, *&v209, *self->_correctedCalibration.focalLengthPix, *self->_correctedCalibration.opticalCenterX, *self->_correctedCalibration.opticalCenterY, *self->_correctedCalibration.extrinRotRefefenceToAuxiliary, v210[4], v210[5], *&v210[6])}];
            [objc_msgSend(v81 objectForKeyedSubscript:{v190), "doubleValue"}];
            v83 = v82;
            [objc_msgSend(objc_msgSend(*&v43 objectAtIndexedSubscript:{0), "objectForKeyedSubscript:", v192), "doubleValue"}];
            v85 = v84;
            v86 = CMGetAttachment(v47, @"TotalZoomFactor", 0);
            LODWORD(v95.f64[0]) = 1.0;
            if (v86)
            {
              [v86 floatValue];
              LODWORD(v95.f64[0]) = v96;
            }

            v97 = *&self->_correctedCalibration.canonicalDisparityScale;
            v210[8] = *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[10];
            v210[9] = v97;
            v210[10] = *&self->_correctedCalibration.calibrationDimensions[1];
            v210[11].i64[0] = *&self->_correctedCalibration.pixelSize_um[1];
            v98 = *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[4];
            v210[4] = *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[2];
            v210[5] = v98;
            v99 = *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[8];
            v210[6] = *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[6];
            v210[7] = v99;
            v100 = *self->_correctedCalibration.opticalCenterX;
            v210[0] = *self->_correctedCalibration.focalLengthPix;
            v210[1] = v100;
            v102 = *self->_correctedCalibration.extrinRotRefefenceToAuxiliary;
            v210[2] = *self->_correctedCalibration.opticalCenterY;
            *&v101.f64[1] = v210[2].i64[1];
            v210[3] = v102;
            v101.f64[0] = v83;
            v102.f64[0] = v85;
            v103 = [(BWAdaptiveCorrectionPreviewRegistration *)self _estimateDepthFromKeypointsUsingCalibration:v210 narrowerRawSensorResolution:v211 fundamentalMatrix:v46 macroTransitionType:&v212 totalZoomFactor:v101 consolidatedDepthsOut:v102, v95, v90, v91, v92, v93, v94, v87, v88, v89, v125, v128, v132, v135, v139, v142, v146, __dsta, v152, v155, v159, v161, v164, v166, v169, v172, v175, v177, v180, v182, v185, v187, v190, v192, v195, v197, v198, *(&v198 + 1), v199, *(&v199 + 1), *&v200.f64[0], *&v200.f64[1], *&v201.f64[0], *&v201.f64[1], *&v202.f64[0], *&v202.f64[1], *&v203.f64[0], *&v203.f64[1], *&v204.f64[0], *&v204.f64[1], *&v205.f64[0], *&v205.f64[1], *&v206.f64[0], *&v206.f64[1], *&v207.f64[0], *&v207.f64[1], *&v208.f64[0]];
            if (!v103)
            {
              v104 = &v212;
              for (i = 320; i != 608; i += 96)
              {
                v106 = (self + i);
                v107 = *v104++;
                v108 = [*&v43 objectAtIndexedSubscript:0];
                v109 = [*&v43 objectAtIndexedSubscript:1];
                v110 = *&self->_correctedCalibration.canonicalDisparityScale;
                v210[8] = *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[10];
                v210[9] = v110;
                v210[10] = *&self->_correctedCalibration.calibrationDimensions[1];
                v210[11].i64[0] = *&self->_correctedCalibration.pixelSize_um[1];
                v111 = *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[4];
                v210[4] = *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[2];
                v210[5] = v111;
                v112 = *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[8];
                v210[6] = *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[6];
                v210[7] = v112;
                [(BWAdaptiveCorrectionPreviewRegistration *)self _homographyAtDepth:v210 calibration:v108 narrowerMetadata:v109 widerMetadata:v50 pixelBufferDimensions:0 excludeExtrinsics:&v198, v107, v126, v129, v133, v136, v140, v143, v147, __dst, v153, v156, v160, v165, v170, v176, v181, v186, v191, v196, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, *self->_correctedCalibration.focalLengthPix, *self->_correctedCalibration.opticalCenterX, *self->_correctedCalibration.opticalCenterY, *self->_correctedCalibration.extrinRotRefefenceToAuxiliary, *&v210[4], *&v210[5], *&v210[6]];
                v113 = v201;
                v106[2] = v200;
                v106[3] = v113;
                v114 = v203;
                v106[4] = v202;
                v106[5] = v114;
                v115 = v199;
                *v106 = v198;
                v106[1] = v115;
              }

              if (!self->_excludeExtrinsicsCorrectionFromWideTeleAlignment || !self->_excludeEstimatedSagFromWideTeleAlignment || (memcpy(v210, self->_anon_140, sizeof(v210)), v121 = [*&v43 objectAtIndexedSubscript:0], v122 = objc_msgSend(*&v43, "objectAtIndexedSubscript:", 1), v206 = *v241, v207 = *v242, v208 = v243, *&v209.f64[0] = v244, v202 = *v237, v203 = *v238, v204 = *v239, v205 = *v240, v198 = v233, v199 = v234, v200 = *v235, v201 = *v236, !-[BWAdaptiveCorrectionPreviewRegistration _verifyRegistrationTransform:usingInitialOISCalibration:narrowerMetadata:widerMetadata:narrowerDimensions:](self, v210, &v198, v121, v122, v50)))
              {
                v116 = 0;
                goto LABEL_37;
              }

              [BWAdaptiveCorrectionPreviewRegistration registerWiderSampleBufferUsingADC:narrowerSampleBuffer:narrowerRect:macroTransitionType:narrowerToWiderTransformsOut:];
              goto LABEL_45;
            }

            v116 = v103;
            [BWAdaptiveCorrectionPreviewRegistration registerWiderSampleBufferUsingADC:narrowerSampleBuffer:narrowerRect:macroTransitionType:narrowerToWiderTransformsOut:];
          }
        }
      }
    }
  }

LABEL_37:

  self->_registrationPoolReadyAssertion = 0;
  v117 = &v246;
  v118 = 1;
  do
  {
    v119 = v118;
    if (*v117)
    {
      CFRelease(*v117);
    }

    v118 = 0;
    v117 = &v245;
  }

  while ((v119 & 1) != 0);
  if (!v116)
  {
    memcpy(__dst, self->_anon_140, 0x120uLL);
  }

  return v116;
}

- (uint64_t)_homographyAtDepth:(void *)a3@<X2> calibration:(void *)a4@<X3> narrowerMetadata:(uint64_t)a5@<X4> widerMetadata:(char)a6@<W5> pixelBufferDimensions:(float64x2_t *)a7@<X8> excludeExtrinsics:(double)a8@<D0>
{
  if (result)
  {
    v49 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    v150 = a3;
    [v49 setObject:a3 atIndexedSubscript:0];
    v50 = 1;
    v151 = a4;
    [v49 setObject:a4 atIndexedSubscript:1];
    v51 = 0;
    v52 = *off_1E798B540;
    v53 = *off_1E798B5A0;
    v54 = &a43;
    __asm { FMOV            V23.2D, #1.0 }

    v155 = _Q23;
    do
    {
      v60 = v50;
      [objc_msgSend(v49 objectAtIndexedSubscript:{v51), "objectForKeyedSubscript:", v52}];
      [objc_msgSend(objc_msgSend(v49 objectAtIndexedSubscript:{v51), "objectForKeyedSubscript:", v53), "intValue"}];
      v65 = v155;
      v50 = 0;
      *&v66 = 0;
      *(&v66 + 1) = a2[v51];
      *&v67 = a2[v51 + 2];
      *(&v67 + 1) = a2[v51 + 4];
      v68 = 0uLL;
      *v54 = *(&v66 + 1);
      *(v54 + 1) = 0u;
      *(v54 + 2) = v66;
      *(v54 + 3) = 0u;
      *(v54 + 4) = v67;
      *(v54 + 5) = v155;
      v54 = &STACK[0x610];
      v51 = 1;
    }

    while ((v60 & 1) != 0);
    if (a6)
    {
      v69 = xmmword_1AD046820;
      v70 = xmmword_1AD046830;
      v71 = 0uLL;
      v72 = 0uLL;
      v73 = 0uLL;
      v74 = 0uLL;
      v75 = v150;
    }

    else
    {
      v76 = 0;
      *&v77 = a2[6];
      *&v78 = a2[7];
      *&v79 = a2[8];
      *(&v77 + 1) = a2[10];
      *&v61 = a2[14];
      *&v62 = a2[15];
      *&v63 = a2[16];
      *(&v78 + 1) = a2[11];
      *(&v79 + 1) = a2[12];
      *&STACK[0x670] = v77;
      *&STACK[0x680] = v61;
      *&STACK[0x690] = v78;
      *&STACK[0x6A0] = v62;
      *&STACK[0x6B0] = v79;
      *&STACK[0x6C0] = v63;
      a31 = 0u;
      a32 = 0u;
      a33 = 0u;
      a34 = 0u;
      __asm { FMOV            V1.2D, #1.0 }

      a35 = 0u;
      a36 = 0u;
      do
      {
        v82 = *(&STACK[0x670] + v76);
        v81 = *(&STACK[0x670] + v76 + 16);
        v83 = (&a31 + v76);
        *v83 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(xmmword_1AD046840, v82.f64[0]), xmmword_1AD046850, v82, 1), 0, v81.f64[0]);
        v83[1] = vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v82, 0), 0, v82, 1), _Q1, v81);
        v76 += 32;
      }

      while (v76 != 96);
      v84 = 0;
      v86 = a31;
      v85 = a32;
      v88 = a33;
      v87 = a34;
      v90 = a35;
      v89 = a36;
      *&STACK[0x670] = xmmword_1AD046840;
      *&STACK[0x680] = 0u;
      *&STACK[0x690] = xmmword_1AD046850;
      *&STACK[0x6A0] = 0u;
      *&STACK[0x6B0] = 0uLL;
      *&STACK[0x6C0] = _Q1;
      a37 = 0u;
      a38 = 0u;
      a39 = 0u;
      a40 = 0u;
      a41 = 0u;
      a42 = 0u;
      v75 = v150;
      do
      {
        v91 = *(&STACK[0x670] + v84);
        v64 = *(&STACK[0x670] + v84 + 16);
        v92 = (&a37 + v84);
        *v92 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v86, v91.f64[0]), v88, v91, 1), v90, v64.f64[0]);
        v92[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v85, v91.f64[0]), v87, v91, 1), v89, v64.f64[0]);
        v84 += 32;
      }

      while (v84 != 96);
      v70 = a37;
      v71 = a38;
      v69 = a39;
      v72 = a40;
      v73 = a41;
      v65 = a42;
      v90.f64[0] = a2[9];
      v64.f64[0] = a2[13];
      v91.f64[0] = a2[17];
      v93 = vmulq_n_f64(xmmword_1AD046840, v90.f64[0]);
      v74 = vmlaq_f64(vmlaq_f64(vmulq_f64(v90, 0), 0, v64), _Q1, v91);
      v68 = vmlaq_n_f64(vmlaq_n_f64(v93, xmmword_1AD046850, v64.f64[0]), 0, v91.f64[0]);
    }

    v94 = 0;
    v64.f64[0] = -1.0 / a8;
    v95 = vmulq_f64(v64, v74);
    v96 = vmulq_n_f64(v68, -1.0 / a8);
    v98 = *&STACK[0x610];
    v97 = *&STACK[0x620];
    v100 = *&STACK[0x630];
    v99 = *&STACK[0x640];
    v101 = vmulq_n_f64(0, -1.0 / a8);
    v102 = vsubq_f64(v70, v101);
    v103 = vsubq_f64(v69, v101);
    v105 = *&STACK[0x650];
    v104 = *&STACK[0x660];
    *&STACK[0x670] = v102;
    *&STACK[0x680] = vsubq_f64(v71, v101);
    *&STACK[0x690] = v103;
    *&STACK[0x6A0] = vsubq_f64(v72, v101);
    *&STACK[0x6B0] = vsubq_f64(v73, v96);
    *&STACK[0x6C0] = vsubq_f64(v65, v95);
    a25 = 0uLL;
    a26 = 0uLL;
    a27 = 0uLL;
    a28 = 0uLL;
    a29 = 0uLL;
    a30 = 0uLL;
    do
    {
      v107 = *(&STACK[0x670] + v94);
      v106 = *(&STACK[0x670] + v94 + 16);
      v108 = (&a25 + v94);
      *v108 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v98, v107.f64[0]), v100, v107, 1), v105, *&v106);
      v108[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v97, v107.f64[0]), v99, v107, 1), v104, *&v106);
      v94 += 32;
    }

    while (v94 != 96);
    v109 = *&STACK[0x5E0];
    *&STACK[0x690] = a45;
    *&STACK[0x6A0] = v109;
    v110 = *&STACK[0x600];
    *&STACK[0x6B0] = *&STACK[0x5F0];
    *&STACK[0x6C0] = v110;
    v111 = a44;
    *&STACK[0x670] = a43;
    *&STACK[0x680] = v111;
    __invert_d3();
    v112 = 0;
    v114 = a25;
    v113 = a26;
    v116 = a27;
    v115 = a28;
    v118 = a29;
    v117 = a30;
    v119 = a34;
    *&STACK[0x690] = a33;
    *&STACK[0x6A0] = v119;
    v120 = a36;
    *&STACK[0x6B0] = a35;
    *&STACK[0x6C0] = v120;
    v121 = a32;
    *&STACK[0x670] = a31;
    *&STACK[0x680] = v121;
    a37 = 0u;
    a38 = 0u;
    a39 = 0u;
    a40 = 0u;
    a41 = 0u;
    a42 = 0u;
    do
    {
      v123 = *(&STACK[0x670] + v112);
      v122 = *(&STACK[0x670] + v112 + 16);
      v124 = (&a37 + v112);
      *v124 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v114, v123.f64[0]), v116, v123, 1), v118, *&v122);
      v124[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v113, v123.f64[0]), v115, v123, 1), v117, *&v122);
      v112 += 32;
    }

    while (v112 != 96);
    a27 = a39;
    a28 = a40;
    a29 = a41;
    a30 = a42;
    a25 = a37;
    a26 = a38;
    a19 = 0u;
    a20 = 0u;
    a21 = 0u;
    a22 = 0u;
    a23 = 0u;
    a24 = 0u;
    acpr_computePixelBufferToRawSensorHomography(v75, a5, &a19);
    vars0 = 0u;
    acpr_computePixelBufferToRawSensorHomography(v151, a5, &vars0);
    *&STACK[0x690] = 0u;
    *&STACK[0x6A0] = 0u;
    *&STACK[0x6B0] = 0u;
    *&STACK[0x6C0] = 0u;
    *&STACK[0x670] = vars0;
    *&STACK[0x680] = 0u;
    result = __invert_d3();
    v125 = 0;
    v127 = a37;
    v126 = a38;
    v129 = a39;
    v128 = a40;
    v131 = a41;
    v130 = a42;
    *&STACK[0x670] = 0u;
    *&STACK[0x680] = 0u;
    *&STACK[0x690] = 0u;
    *&STACK[0x6A0] = 0u;
    *&STACK[0x6B0] = 0u;
    *&STACK[0x6C0] = 0u;
    do
    {
      v133 = *(&a25 + v125);
      v132 = *(&a25 + v125 + 16);
      v134 = (&STACK[0x670] + v125);
      *v134 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v127, v133.f64[0]), v129, v133, 1), v131, *&v132);
      v134[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v126, v133.f64[0]), v128, v133, 1), v130, *&v132);
      v125 += 32;
    }

    while (v125 != 96);
    v135 = 0;
    v137 = *&STACK[0x670];
    v136 = *&STACK[0x680];
    v139 = *&STACK[0x690];
    v138 = *&STACK[0x6A0];
    v141 = *&STACK[0x6B0];
    v140 = *&STACK[0x6C0];
    *a7 = 0u;
    a7[1] = 0u;
    a7[2] = 0u;
    a7[3] = 0u;
    a7[4] = 0u;
    a7[5] = 0u;
    do
    {
      v143 = *(&a19 + v135 * 16);
      v142 = *(&a19 + v135 * 16 + 16);
      v144 = &a7[v135];
      *v144 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v137, v143.f64[0]), v139, v143, 1), v141, *&v142);
      v144[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v136, v143.f64[0]), v138, v143, 1), v140, *&v142);
      v135 += 2;
    }

    while (v135 != 6);
    v145 = a7[5];
    v146 = vmulq_n_f64(a7[1], v145.f64[0]);
    v147 = vmulq_n_f64(a7[3], v145.f64[0]);
    v148 = vmulq_n_f64(a7[2], v145.f64[0]);
    v149 = vmulq_n_f64(a7[4], v145.f64[0]);
    *a7 = vmulq_n_f64(*a7, v145.f64[0]);
    a7[1] = v146;
    a7[2] = v148;
    a7[3] = v147;
    a7[4] = v149;
    a7[5] = vmulq_n_f64(v145, v145.f64[0]);
  }

  else
  {
    a7[4] = 0u;
    a7[5] = 0u;
    a7[2] = 0u;
    a7[3] = 0u;
    *a7 = 0u;
    a7[1] = 0u;
  }

  return result;
}

- (float64_t)_fundamentalMatrixFromCalibration:(uint64_t)a3@<X2> narrowerMetadata:(uint64_t)a4@<X3> widerMetadata:(_OWORD *)a5@<X8>
{
  if (a1)
  {
    v49 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    v50 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    [v49 setObject:a3 atIndexedSubscript:0];
    [v49 setObject:a4 atIndexedSubscript:1];
    v51 = 0;
    *&v52 = a2[6];
    *&v53 = a2[7];
    *&v54 = a2[8];
    *(&v52 + 1) = a2[10];
    *&v55 = a2[14];
    *&v56 = a2[15];
    *&v57 = a2[16];
    *(&v53 + 1) = a2[11];
    *(&v54 + 1) = a2[12];
    *&STACK[0x520] = v52;
    *&STACK[0x530] = v55;
    *&STACK[0x540] = v53;
    *&STACK[0x550] = v56;
    *&STACK[0x560] = v54;
    *&STACK[0x570] = v57;
    a22 = 0u;
    a23 = 0u;
    a24 = 0u;
    a25 = 0u;
    __asm { FMOV            V18.2D, #1.0 }

    a26 = 0u;
    a27 = 0u;
    do
    {
      v64 = *(&STACK[0x520] + v51);
      v63 = *(&STACK[0x520] + v51 + 16);
      v65 = (&a22 + v51);
      *v65 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(xmmword_1AD046840, v64.f64[0]), xmmword_1AD046850, v64, 1), 0, v63.f64[0]);
      v65[1] = vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v64, 0), 0, v64, 1), _Q18, v63);
      v51 += 32;
    }

    while (v51 != 96);
    v145 = a5;
    v66 = 0;
    v68 = a22;
    v67 = a23;
    v70 = a24;
    v69 = a25;
    v72 = a26;
    v71 = a27;
    *&STACK[0x520] = xmmword_1AD046840;
    *&STACK[0x530] = 0u;
    vars0a = xmmword_1AD046850;
    *&STACK[0x540] = xmmword_1AD046850;
    *&STACK[0x550] = 0u;
    *&STACK[0x560] = 0uLL;
    *&STACK[0x570] = _Q18;
    a28 = 0u;
    a29 = 0u;
    a30 = 0u;
    a31 = 0u;
    a32 = 0u;
    a33 = 0u;
    do
    {
      v74 = *(&STACK[0x520] + v66);
      v73 = *(&STACK[0x520] + v66 + 16);
      v75 = (&a28 + v66);
      *v75 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v68, v74.f64[0]), v70, v74, 1), v72, *&v73);
      v75[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v67, v74.f64[0]), v69, v74, 1), v71, *&v73);
      v66 += 32;
    }

    while (v66 != 96);
    v76 = 0;
    v150 = a29;
    v151 = a28;
    v148 = a31;
    v149 = a30;
    v77.f64[1] = a32.f64[1];
    v146 = a33;
    v147 = a32;
    v77.f64[0] = a2[9];
    v137 = v77;
    v77.f64[0] = a2[13];
    v138 = v77;
    v77.f64[0] = a2[17];
    v140 = v77;
    v78 = *off_1E798B540;
    v79 = &a34;
    v80 = 1;
    v152 = _Q18;
    do
    {
      v81 = v80;
      [v50 setObject:objc_msgSend(objc_msgSend(v49 atIndexedSubscript:{"objectAtIndexedSubscript:", v76), "objectForKeyedSubscript:", v78), v76}];
      v80 = 0;
      v82.i64[0] = 0;
      v82.i64[1] = a2[v76];
      v83.i64[0] = a2[v76 + 2];
      v83.i64[1] = a2[v76 + 4];
      *v79 = v82.u64[1];
      v79[1] = 0u;
      v79[2] = v82;
      v79[3] = 0u;
      v79[4] = v83;
      v79[5] = v152;
      v79 = &a40;
      v76 = 1;
    }

    while ((v81 & 1) != 0);
    v84.f64[0] = v137.f64[0];
    v84.f64[1] = v137.f64[0];
    v85.f64[0] = v138.f64[0];
    v85.f64[1] = v138.f64[0];
    v86 = vmlaq_f64(vmulq_f64(v84, xmmword_1AD046840), xmmword_1AD046850, v85);
    v85.f64[0] = v140.f64[0];
    v85.f64[1] = v140.f64[0];
    v87 = vmlaq_f64(v86, 0, v85);
    v88 = vmlaq_f64(vmlaq_f64(vmulq_f64(v137, 0), 0, v138), v152, v140);
    v89 = vnegq_f64(v151);
    v90 = vnegq_f64(v149);
    v91 = vmlsq_f64(vmlsq_laneq_f64(vmulq_f64(vnegq_f64(v147), v87), vdupq_laneq_s64(v87, 1), v147, 1), v88, v146).f64[0];
    v92 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(vzip1q_s64(v89, v90), v87.f64[0]), vzip2q_s64(v89, v90), v87, 1), vzip1q_s64(vnegq_f64(v150), vnegq_f64(v148)), v88.f64[0]);
    v141 = *&v91;
    v142 = vdupq_laneq_s64(v92, 1).u64[0];
    vars0 = COERCE_UNSIGNED_INT64(-v91);
    v145[4] = 0u;
    v145[5] = 0u;
    v145[2] = 0u;
    v145[3] = 0u;
    *v145 = 0u;
    v145[1] = 0u;
    v93 = a41;
    v94 = a43;
    v96 = a44;
    v95 = a45;
    v97 = vzip2q_s64(a40, a42);
    v98 = vdupq_laneq_s64(a44, 1);
    v153 = v92;
    *v92.i64 = -*&v92.i64[1];
    v139 = v92;
    *&STACK[0x520] = vzip1q_s64(a40, a42);
    *&STACK[0x530] = v96;
    *&STACK[0x540] = v97;
    *&STACK[0x550] = v98;
    *&STACK[0x560] = vzip1q_s64(v93, v94);
    *&STACK[0x570] = v95;
    __invert_d3();
    v99 = 0;
    v101 = a28;
    v100 = a29;
    v103 = a30;
    v102 = a31;
    v105 = a32;
    v104 = a33;
    *&STACK[0x520] = v151;
    *&STACK[0x530] = v150;
    *&STACK[0x540] = v149;
    *&STACK[0x550] = v148;
    *&STACK[0x560] = v147;
    *&STACK[0x570] = v146;
    a22 = 0u;
    a23 = 0u;
    a24 = 0u;
    a25 = 0u;
    a26 = 0u;
    a27 = 0u;
    do
    {
      v107 = *(&STACK[0x520] + v99);
      v106 = *(&STACK[0x520] + v99 + 16);
      v108 = (&a22 + v99);
      *v108 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v101, v107.f64[0]), v103, v107, 1), v105, *&v106);
      v108[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v100, v107.f64[0]), v102, v107, 1), v104, *&v106);
      v99 += 32;
    }

    while (v99 != 96);
    v109 = 0;
    v110 = a22;
    *&v111 = v142;
    *(&v111 + 1) = -*v153.i64;
    v112 = a23;
    v113 = a24;
    v114 = a25;
    v115 = a26;
    v116 = a27;
    *&STACK[0x520] = vzip1q_s64(0, v141);
    *&STACK[0x530] = v139;
    *&STACK[0x540] = vars0;
    *&STACK[0x550] = v153;
    *&STACK[0x560] = v111;
    *&STACK[0x570] = 0u;
    a28 = 0u;
    a29 = 0u;
    a30 = 0u;
    a31 = 0u;
    a32 = 0u;
    a33 = 0u;
    do
    {
      v118 = *(&STACK[0x520] + v109);
      v117 = *(&STACK[0x520] + v109 + 16);
      v119 = (&a28 + v109);
      *v119 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v110, v118.f64[0]), v113, v118, 1), v115, *&v117);
      v119[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v112, v118.f64[0]), v114, v118, 1), v116, *&v117);
      v109 += 32;
    }

    while (v109 != 96);
    v120 = a37;
    *&STACK[0x540] = a36;
    *&STACK[0x550] = v120;
    v121 = a39;
    *&STACK[0x560] = a38;
    *&STACK[0x570] = v121;
    v122 = a35;
    *&STACK[0x520] = a34;
    *&STACK[0x530] = v122;
    __invert_d3();
    v123 = 0;
    v125 = a28;
    v124 = a29;
    v127 = a30;
    v126 = a31;
    v129 = a32;
    v128 = a33;
    v130 = a25;
    *&STACK[0x540] = a24;
    *&STACK[0x550] = v130;
    v131 = a27;
    *&STACK[0x560] = a26;
    *&STACK[0x570] = v131;
    v132 = a23;
    *&STACK[0x520] = a22;
    *&STACK[0x530] = v132;
    *v145 = 0u;
    v145[1] = 0u;
    v145[2] = 0u;
    v145[3] = 0u;
    v145[4] = 0u;
    v145[5] = 0u;
    do
    {
      v134 = *(&STACK[0x520] + v123 * 16);
      v133 = *(&STACK[0x520] + v123 * 16 + 16);
      v135 = &v145[v123];
      *v135 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v125, v134.f64[0]), v127, v134, 1), v129, *&v133);
      v135[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v124, v134.f64[0]), v126, v134, 1), v128, *&v133);
      v123 += 2;
    }

    while (v123 != 6);
  }

  else
  {
    v124.f64[0] = 0.0;
    a5[4] = 0u;
    a5[5] = 0u;
    a5[2] = 0u;
    a5[3] = 0u;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return v124.f64[0];
}

- (int)computeAlignmentFromWiderSampleBuffer:(opaqueCMSampleBuffer *)a3 narrowerSampleBuffer:(opaqueCMSampleBuffer *)a4 narrowerToWiderTransformsOut:(id *)a5
{
  if (!a3 || !a4)
  {
    [BWAdaptiveCorrectionPreviewRegistration computeAlignmentFromWiderSampleBuffer:narrowerSampleBuffer:narrowerToWiderTransformsOut:];
    return -12780;
  }

  if (!a5)
  {
    [BWAdaptiveCorrectionPreviewRegistration computeAlignmentFromWiderSampleBuffer:narrowerSampleBuffer:narrowerToWiderTransformsOut:];
    return -12780;
  }

  v9 = *off_1E798A3C8;
  v10 = CMGetAttachment(a4, *off_1E798A3C8, 0);
  v11 = CMGetAttachment(a3, v9, 0);
  v12 = [objc_msgSend(v10 objectForKeyedSubscript:{*off_1E798B540), "isEqualToString:", *off_1E798A0D8}];
  v13 = self->_excludeEstimatedSagFromWideTeleAlignment & v12;
  memset(&v36[8], 0, 24);
  CMSampleBufferGetPresentationTimeStamp(&v36[8], a4);
  if (self->_excludeEstimatedSagFromWideTeleAlignment)
  {
    time1[0] = self->_lastNarrowerFramePTS;
    *time2 = *&v36[8];
    *&time2[16] = *&v36[24];
    v14 = CMTimeCompare(time1, time2) != 0;
  }

  else
  {
    v14 = 0;
  }

  v48 = 0.0;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  memset(time2, 0, sizeof(time2));
  *&self->_lastNarrowerFramePTS.value = *&v36[8];
  self->_lastNarrowerFramePTS.epoch = *&v36[24];
  v15 = [(BWAdaptiveCorrectionPreviewRegistration *)self _computeOISCalibrationFromWiderMetadata:v11 narrowerMetadata:v10 updateEstimatedSagPositions:v14 excludeEstimatedSagFromAlignment:v13 & 1 calibrationOut:time2];
  if (v15)
  {
    v26 = v15;
    [BWAdaptiveCorrectionPreviewRegistration computeAlignmentFromWiderSampleBuffer:narrowerSampleBuffer:narrowerToWiderTransformsOut:];
  }

  else
  {
    memset(time1, 0, sizeof(time1));
    ImageBuffer = CMSampleBufferGetImageBuffer(a4);
    Width = CVPixelBufferGetWidth(ImageBuffer);
    Height = CVPixelBufferGetHeight(ImageBuffer);
    v19 = 0;
    v20 = self->_excludeExtrinsicsCorrectionFromWideTeleAlignment & v12;
    v21 = Width | (Height << 32);
    do
    {
      v22 = &time1[v19];
      v29.f64[0] = v48;
      [(BWAdaptiveCorrectionPreviewRegistration *)self _homographyAtDepth:v10 calibration:v11 narrowerMetadata:v21 widerMetadata:v20 & 1 pixelBufferDimensions:&v30 excludeExtrinsics:1.0e10, *time2, *&time2[8], *&time2[16], *&time2[24], v39, *(&v39 + 1), v40, *(&v40 + 1), v41, *(&v41 + 1), v42, v43, v44, v45, v46, v47, v29, v30, v31, v32, v33, v34, v35, *v36, *&v36[16], *&time1[0].value, *&time1[0].epoch, *&time1[1].timescale, *&time1[2].value, *&time1[2].epoch, *&time1[3].timescale, *&time1[4].value, *&time1[4].epoch, *&time1[5].timescale, *&time1[6].value, *&time1[6].epoch, *&time1[7].timescale];
      v23 = v33;
      *&v22[1].timescale = v32;
      *&v22[2].value = v23;
      v24 = v35;
      *&v22[2].epoch = v34;
      *&v22[3].timescale = v24;
      v25 = v31;
      v19 += 4;
      *&v22->value = v30;
      *&v22->epoch = v25;
    }

    while (v19 != 12);
    memcpy(a5, time1, 0x120uLL);
    return 0;
  }

  return v26;
}

- (int)computeApproximateCorrectionForWiderCamera:(opaqueCMSampleBuffer *)a3 narrowerCameraPortType:(id)a4 narrowerPixelBufferDimensions:(id)a5 narrowerToWiderCameraScale:(double)a6 narrowerToWiderTransformsOut:(id *)a7
{
  if (!a3 || !a4)
  {
    [BWAdaptiveCorrectionPreviewRegistration computeApproximateCorrectionForWiderCamera:narrowerCameraPortType:narrowerPixelBufferDimensions:narrowerToWiderCameraScale:narrowerToWiderTransformsOut:];
    return -12780;
  }

  if (!a7)
  {
    [BWAdaptiveCorrectionPreviewRegistration computeApproximateCorrectionForWiderCamera:narrowerCameraPortType:narrowerPixelBufferDimensions:narrowerToWiderCameraScale:narrowerToWiderTransformsOut:];
    return -12780;
  }

  v12 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0.0;
  v13 = [(BWAdaptiveCorrectionPreviewRegistration *)self _computeApproximateOISCalibrationFromWiderMetadata:v12 narrowerPortType:a4 narrowerToWiderCameraScale:v29.f64 calibrationOut:a6];
  if (v13)
  {
    v19 = v13;
    [BWAdaptiveCorrectionPreviewRegistration computeApproximateCorrectionForWiderCamera:narrowerCameraPortType:narrowerPixelBufferDimensions:narrowerToWiderCameraScale:narrowerToWiderTransformsOut:];
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23.f64[0] = v40;
    [(BWAdaptiveCorrectionPreviewRegistration *)self _computeApproximateHomographyAtDepth:a4 calibration:v12 narrowerPortType:*&a5 widerMetadata:v24 pixelBufferDimensions:1.0e10, *&v21[0].f64[0], *&v21[0].f64[1], *&v21[1].f64[0], *&v21[1].f64[1], *&v21[2].f64[0], *&v21[2].f64[1], v21[3], v21[4], v21[5], v21[6], v21[7], v21[8], v21[9], v21[10], v21[11], v21[12], v21[13], v21[14], v21[15], v21[16], v21[17], v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v23, 0, 0];
    v14 = 0;
    memset(v21, 0, sizeof(v21));
    do
    {
      v15 = &v21[v14];
      v16 = v26;
      v15[2] = v25;
      v15[3] = v16;
      v17 = v28;
      v15[4] = v27;
      v15[5] = v17;
      v18 = v24[1];
      v14 += 6;
      *v15 = v24[0];
      v15[1] = v18;
    }

    while (v14 != 18);
    memcpy(a7, v21, 0x120uLL);
    return 0;
  }

  return v19;
}

- (uint64_t)_computeApproximateHomographyAtDepth:(uint64_t)a3@<X2> calibration:(void *)a4@<X3> narrowerPortType:(unint64_t)a5@<X4> widerMetadata:(float64x2_t *)a6@<X8> pixelBufferDimensions:(double)a7@<D0>
{
  if (result)
  {
    v48 = result;
    v49 = HIDWORD(a5);
    [a4 objectForKeyedSubscript:*off_1E798B540];
    v52 = 0;
    v53 = &a32;
    __asm { FMOV            V20.2D, #1.0 }

    v59 = 1;
    do
    {
      v60 = v59;
      v61.f64[0] = 0.0;
      *&v61.f64[1] = a2[v52];
      *&v62.f64[0] = a2[v52 + 2];
      *&v62.f64[1] = a2[v52 + 4];
      *v53 = *&v61.f64[1];
      v53[1] = 0uLL;
      v53[2] = v61;
      v53[3] = 0uLL;
      v53[4] = v62;
      v53[5] = _Q20;
      v53 = &a38;
      v52 = 1;
      v59 = 0;
    }

    while ((v60 & 1) != 0);
    v63 = 0;
    *&v64 = a2[6];
    *&v65 = a2[7];
    *&v66 = a2[8];
    *(&v64 + 1) = a2[10];
    v61.f64[0] = a2[14];
    *&v50 = a2[15];
    *&v51 = a2[16];
    *(&v65 + 1) = a2[11];
    *(&v66 + 1) = a2[12];
    *&STACK[0x570] = v64;
    *&STACK[0x580] = v61;
    *&STACK[0x590] = v65;
    *&STACK[0x5A0] = v50;
    *&STACK[0x5B0] = v66;
    *&STACK[0x5C0] = v51;
    a20 = 0u;
    a21 = 0u;
    a22 = 0u;
    a23 = 0u;
    a24 = 0u;
    a25 = 0u;
    do
    {
      v68 = *(&STACK[0x570] + v63);
      v67 = *(&STACK[0x570] + v63 + 16);
      v69 = (&a20 + v63);
      *v69 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(xmmword_1AD046840, v68.f64[0]), xmmword_1AD046850, v68, 1), 0, v67.f64[0]);
      v69[1] = vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v68, 0), 0, v68, 1), _Q20, v67);
      v63 += 32;
    }

    while (v63 != 96);
    v70 = 0;
    v72 = a20;
    v71 = a21;
    v74 = a22;
    v73 = a23;
    v76 = a24;
    v75 = a25;
    *&STACK[0x570] = xmmword_1AD046840;
    *&STACK[0x580] = 0u;
    *&STACK[0x590] = xmmword_1AD046850;
    *&STACK[0x5A0] = 0u;
    *&STACK[0x5B0] = 0uLL;
    *&STACK[0x5C0] = _Q20;
    a26 = 0u;
    a27 = 0u;
    a28 = 0u;
    a29 = 0u;
    a30 = 0u;
    a31 = 0u;
    do
    {
      v78 = *(&STACK[0x570] + v70);
      v77 = *(&STACK[0x570] + v70 + 16);
      v79 = (&a26 + v70);
      v80 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v72, v78.f64[0]), v74, v78, 1), v76, *&v77);
      *v79 = v80;
      v79[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v71, v78.f64[0]), v73, v78, 1), v75, *&v77);
      v70 += 32;
    }

    while (v70 != 96);
    v81 = 0;
    v82 = a31;
    v71.f64[0] = a2[9];
    v72.f64[0] = a2[13];
    v80.f64[0] = a2[17];
    v83 = vmulq_n_f64(xmmword_1AD046840, v71.f64[0]);
    v154 = _Q20;
    v84 = vmlaq_f64(vmlaq_f64(vmulq_f64(v71, 0), 0, v72), _Q20, v80);
    v85 = vmlaq_n_f64(vmlaq_n_f64(v83, xmmword_1AD046850, v72.f64[0]), 0, v80.f64[0]);
    v80.f64[0] = -1.0 / a7;
    v86 = vmulq_f64(v80, v84);
    v87 = vmulq_n_f64(v85, -1.0 / a7);
    v89 = a38;
    v88 = a39;
    v91 = a40;
    v90 = a41;
    v92 = vmulq_n_f64(0, -1.0 / a7);
    v93 = vsubq_f64(a27, v92);
    v94 = vsubq_f64(a28, v92);
    v95 = vsubq_f64(a29, v92);
    v96 = vsubq_f64(a30, v87);
    v98 = a42;
    v97 = *&STACK[0x560];
    *&STACK[0x570] = vsubq_f64(a26, v92);
    *&STACK[0x580] = v93;
    *&STACK[0x590] = v94;
    *&STACK[0x5A0] = v95;
    *&STACK[0x5B0] = v96;
    *&STACK[0x5C0] = vsubq_f64(v82, v86);
    a14 = 0u;
    a15 = 0u;
    a16 = 0u;
    a17 = 0u;
    a18 = 0u;
    a19 = 0u;
    do
    {
      v100 = *(&STACK[0x570] + v81);
      v99 = *(&STACK[0x570] + v81 + 16);
      v101 = (&a14 + v81);
      *v101 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v89, v100.f64[0]), v91, v100, 1), v98, *&v99);
      v101[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v88, v100.f64[0]), v90, v100, 1), v97, *&v99);
      v81 += 32;
    }

    while (v81 != 96);
    v102 = a35;
    *&STACK[0x590] = a34;
    *&STACK[0x5A0] = v102;
    v103 = a37;
    *&STACK[0x5B0] = a36;
    *&STACK[0x5C0] = v103;
    v104 = a33;
    *&STACK[0x570] = a32;
    *&STACK[0x580] = v104;
    __invert_d3();
    v105 = 0;
    v107 = a14;
    v106 = a15;
    v109 = a16;
    v108 = a17;
    v111 = a18;
    v110 = a19;
    v112 = a23;
    *&STACK[0x590] = a22;
    *&STACK[0x5A0] = v112;
    v113 = a25;
    *&STACK[0x5B0] = a24;
    *&STACK[0x5C0] = v113;
    v114 = a21;
    *&STACK[0x570] = a20;
    *&STACK[0x580] = v114;
    a26 = 0u;
    a27 = 0u;
    a28 = 0u;
    a29 = 0u;
    a30 = 0u;
    a31 = 0u;
    do
    {
      v116 = *(&STACK[0x570] + v105);
      v115 = *(&STACK[0x570] + v105 + 16);
      v117 = (&a26 + v105);
      *v117 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v107, v116.f64[0]), v109, v116, 1), v111, *&v115);
      v117[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v106, v116.f64[0]), v108, v116, 1), v110, *&v115);
      v105 += 32;
    }

    while (v105 != 96);
    a16 = a28;
    a17 = a29;
    a18 = a30;
    a19 = a31;
    a14 = a26;
    a15 = a27;
    v118 = [objc_msgSend(*(v48 + 48) objectForKeyedSubscript:{a3), "objectForKeyedSubscript:", *off_1E7989F28}];
    v119 = [v118 objectForKeyedSubscript:*off_1E798A2C0];
    v120 = [v118 objectForKeyedSubscript:*off_1E798A288];
    v121 = [v119 intValue];
    v122 = [v120 intValue];
    v123 = v121 / a5;
    *&v124 = vcvtd_n_f64_s32(v121, 1uLL) + a5 * -0.5 * v123;
    *&v125 = 0;
    *(&v125 + 1) = v123;
    v152 = v125;
    *(&v124 + 1) = vcvtd_n_f64_s32(v122, 1uLL) + v49 * -0.5 * v123;
    v153 = v124;
    v155 = 0u;
    v156 = 0u;
    vars0 = 0u;
    acpr_computePixelBufferToRawSensorHomography(a4, a5, &v155);
    *&STACK[0x590] = vars0;
    *&STACK[0x5A0] = 0u;
    *&STACK[0x5B0] = 0u;
    *&STACK[0x5C0] = 0u;
    v126 = v156;
    *&STACK[0x570] = v155;
    *&STACK[0x580] = v126;
    result = __invert_d3();
    v127 = 0;
    v129 = a20;
    v128 = a21;
    v131 = a22;
    v130 = a23;
    v133 = a24;
    v132 = a25;
    a26 = 0u;
    a27 = 0u;
    a28 = 0u;
    a29 = 0u;
    a30 = 0u;
    a31 = 0u;
    do
    {
      v135 = *(&a14 + v127);
      v134 = *(&a14 + v127 + 16);
      v136 = (&a26 + v127);
      *v136 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v129, v135.f64[0]), v131, v135, 1), v133, *&v134);
      v136[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v128, v135.f64[0]), v130, v135, 1), v132, *&v134);
      v127 += 32;
    }

    while (v127 != 96);
    v137 = 0;
    v139 = a26;
    v138 = a27;
    v141 = a28;
    v140 = a29;
    v143 = a30;
    v142 = a31;
    *&STACK[0x570] = COERCE_UNSIGNED_INT64(v121 / a5);
    *&STACK[0x580] = 0u;
    *&STACK[0x590] = v152;
    *&STACK[0x5A0] = 0uLL;
    *&STACK[0x5C0] = v154;
    *&STACK[0x5B0] = v153;
    *a6 = 0u;
    a6[1] = 0u;
    a6[2] = 0u;
    a6[3] = 0u;
    a6[4] = 0u;
    a6[5] = 0u;
    do
    {
      v145 = *(&STACK[0x570] + v137 * 16);
      v144 = *(&STACK[0x570] + v137 * 16 + 16);
      v146 = &a6[v137];
      *v146 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v139, v145.f64[0]), v141, v145, 1), v143, *&v144);
      v146[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v138, v145.f64[0]), v140, v145, 1), v142, *&v144);
      v137 += 2;
    }

    while (v137 != 6);
    v147 = a6[5];
    v148 = vmulq_n_f64(a6[1], v147.f64[0]);
    v149 = vmulq_n_f64(a6[3], v147.f64[0]);
    v150 = vmulq_n_f64(a6[2], v147.f64[0]);
    v151 = vmulq_n_f64(a6[4], v147.f64[0]);
    *a6 = vmulq_n_f64(*a6, v147.f64[0]);
    a6[1] = v148;
    a6[2] = v150;
    a6[3] = v149;
    a6[4] = v151;
    a6[5] = vmulq_n_f64(v147, v147.f64[0]);
  }

  else
  {
    a6[4] = 0u;
    a6[5] = 0u;
    a6[2] = 0u;
    a6[3] = 0u;
    *a6 = 0u;
    a6[1] = 0u;
  }

  return result;
}

+ (uint64_t)flattenNarrowerToWiderTransforms:(int)a3@<W4> narrowerDimensions:(_OWORD *)a4@<X8> narrowerFinalCropRect:(double)a5@<D0> atNarrowerToWiderCameraScale:(double)a6@<D1> useYAnchorAtHeightCenter:(double)a7@<D2>
{
  a4[16] = 0u;
  a4[17] = 0u;
  a4[14] = 0u;
  a4[15] = 0u;
  a4[12] = 0u;
  a4[13] = 0u;
  a4[10] = 0u;
  a4[11] = 0u;
  a4[8] = 0u;
  a4[9] = 0u;
  a4[6] = 0u;
  a4[7] = 0u;
  a4[4] = 0u;
  a4[5] = 0u;
  a4[2] = 0u;
  a4[3] = 0u;
  *a4 = 0u;
  a4[1] = 0u;
  v28 = a2;
  v29 = SHIDWORD(a2);
  result = FigCaptureMetadataUtilitiesDenormalizeCropRect(a5, a6, a7, a8);
  v32.f64[0] = a9;
  v33 = 0;
  *v74 = v34;
  *&v74[1] = v34 + v35;
  *&v74[2] = v34 + v35 * 0.5;
  *v39.i64 = *v38.i64 + v36 * 0.25;
  *&v37 = *v38.i64 + v36 * 0.5;
  *v38.i64 = *v38.i64 + v36 * 0.75;
  v39.i64[1] = v37;
  v40 = vdupq_lane_s64(v37, 0);
  if (a3)
  {
    v41 = -1;
  }

  else
  {
    v41 = 0;
  }

  v42 = vdupq_n_s64(v41);
  v43 = vbslq_s8(v42, v40, v39);
  v44 = vbslq_s8(v42, v40, v38);
  *&v45 = 0;
  *(&v45 + 1) = a9;
  __asm { FMOV            V6.2D, #1.0 }

  v32.f64[1] = a9;
  do
  {
    v51 = 0;
    *&v31.f64[0] = v74[v33];
    v52 = (a1 + 96 * v33);
    v54 = *v52;
    v53 = v52[1];
    v56 = v52[2];
    v55 = v52[3];
    v58 = v52[4];
    v57 = v52[5];
    v59 = vdupq_lane_s64(*&v31.f64[0], 0);
    v60 = vzip1q_s64(v59, v43);
    v61 = vzip2q_s64(v59, v43);
    v62 = vzip1q_s64(v31, v44);
    a20 = v60;
    a21 = _Q6;
    a22 = v61;
    a24 = v62;
    a25 = _Q6;
    a23 = _Q6;
    vars0 = 0uLL;
    do
    {
      v64 = *(&a20 + v51);
      v63 = *(&a20 + v51 + 16);
      v65 = (&vars0 + v51);
      *v65 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v54, v64.f64[0]), v56, v64, 1), v58, *&v63);
      v65[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v53, v64.f64[0]), v55, v64, 1), v57, *&v63);
      v51 += 32;
    }

    while (v51 != 96);
    for (i = 0; i != 12; i += 4)
    {
      v67 = *(&vars0 + i * 8 + 16);
      v68.f64[0] = vars0.f64[i] / v67;
      v68.f64[1] = vars0.f64[i + 1] / v67;
      *(&vars0 + i * 8) = v68;
    }

    v69 = &a4[6 * v33];
    v31 = vmulq_f64(v32, v62);
    v70 = vaddq_f64(vaddq_f64(vsubq_f64(vars0, vmulq_f64(v32, v60)), vsubq_f64(0, vmulq_f64(v32, v61))), vsubq_f64(0, v31));
    __asm { FMOV            V16.2D, #3.0 }

    v72 = vdivq_f64(v70, _Q16);
    *v69 = *&a9;
    v69[1] = 0uLL;
    _Q16.f64[0] = (a9 + -1.0) * v28 * 0.5 + v72.f64[0];
    _Q16.f64[1] = (a9 + -1.0) * v29 * 0.5 + v72.f64[1];
    v69[2] = v45;
    v69[3] = 0uLL;
    v69[4] = _Q16;
    v69[5] = _Q6;
    *(v69 + 10) = 0x3FF0000000000000;
    ++v33;
  }

  while (v33 != 3);
  return result;
}

- (void)dealloc
{
  [(BWAdaptiveCorrectionPreviewRegistration *)self cleanupResources];

  v3.receiver = self;
  v3.super_class = BWAdaptiveCorrectionPreviewRegistration;
  [(BWAdaptiveCorrectionPreviewRegistration *)&v3 dealloc];
}

- (void)cleanupResources
{
  if (!self->_resourcesCleaned)
  {

    self->_registrationPool = 0;
    self->_registrationPoolReadyAssertion = 0;

    self->_metalContext = 0;
    [(FigRegToolboxGPU *)self->_keypointDetector releaseResources];

    self->_keypointDetector = 0;
    keypointList = self->_keypointList;
    if (keypointList)
    {
      self->_keypointList = 0;
      free(keypointList);
    }

    v4 = 0;
    validKeypointsInSensorResolution = self->_validKeypointsInSensorResolution;
    transposedKeypoints = self->_transposedKeypoints;
    v7 = 1;
    do
    {
      v8 = v7;
      v9 = validKeypointsInSensorResolution[v4];
      if (v9)
      {
        validKeypointsInSensorResolution[v4] = 0;
        free(v9);
      }

      v10 = transposedKeypoints[v4];
      if (v10)
      {
        transposedKeypoints[v4] = 0;
        free(v10);
      }

      v7 = 0;
      v4 = 1;
    }

    while ((v8 & 1) != 0);
    v11 = 0;
    keypointWeights = self->_keypointWeights;
    do
    {
      v13 = keypointWeights[v11];
      if (v13)
      {
        keypointWeights[v11] = 0;
        free(v13);
      }

      ++v11;
    }

    while (v11 != 3);
    keypointDepths = self->_keypointDepths;
    if (keypointDepths)
    {
      self->_keypointDepths = 0;
      free(keypointDepths);
    }

    cropAndScaleSession = self->_cropAndScaleSession;
    if (cropAndScaleSession)
    {
      VTPixelRotationSessionInvalidate(cropAndScaleSession);
      v16 = self->_cropAndScaleSession;
      if (v16)
      {
        CFRelease(v16);
      }

      self->_cropAndScaleSession = 0;
    }

    self->_resourcesCleaned = 1;
  }
}

- (uint64_t)_loadAdaptiveCorrectionSymbols
{
  if (result)
  {
    v1 = result;
    v2 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters disparityVersion];
    if (v2 > 3)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DisparityV%d.bundle", v2];
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"/System/Library/VideoProcessors/", v3];
      v5 = dlopen([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v4, objc_msgSend(v3, "stringByDeletingPathExtension")), "fileSystemRepresentation"], 1);
      *(v1 + 696) = v5;
      if (v5)
      {
        v6 = dlsym(v5, "AdaptiveCorrection_fullCorrection");
        *(v1 + 664) = v6;
        if (v6)
        {
          v7 = dlsym(*(v1 + 696), "AdaptiveCorrection_computeVerticalBaselineTransform");
          *(v1 + 672) = v7;
          if (v7)
          {
            v8 = dlsym(*(v1 + 696), "AdaptiveCorrection_rotateCalModel");
            *(v1 + 680) = v8;
            if (v8)
            {
              v9 = dlsym(*(v1 + 696), "AdaptiveCorrection_transformPointsWithMatrix");
              *(v1 + 688) = v9;
              if (v9)
              {
                return 0;
              }
            }
          }
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
      }

      return 4294954510;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return 0;
  }

  return result;
}

- (uint64_t)_computeOISCalibrationFromWiderMetadata:(uint64_t)a3 narrowerMetadata:(int)a4 updateEstimatedSagPositions:(int)a5 excludeEstimatedSagFromAlignment:(uint64_t)a6 calibrationOut:
{
  v127 = a6;
  HIDWORD(v111) = a5;
  HIDWORD(v118) = a4;
  if (!a1)
  {
    return 0;
  }

  v134 = v170;
  v135 = &v168;
  v133 = v172;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  [v8 setObject:a3 atIndexedSubscript:0];
  v10 = 1;
  [OUTLINED_FUNCTION_7_15() setObject:? atIndexedSubscript:?];
  v11 = 0;
  v130 = *off_1E798B540;
  v128 = *off_1E798B530;
  v124 = *off_1E798B520;
  v12 = *MEMORY[0x1E695EFF8];
  v13 = *(MEMORY[0x1E695EFF8] + 8);
  v14 = &v171;
  v15 = v169;
  v16 = &v167;
  v17 = v166;
  v119 = *off_1E798B5A0;
  v121 = *off_1E798B5A8;
  do
  {
    v18 = v10;
    [v9 setObject:objc_msgSend(OUTLINED_FUNCTION_10_9() atIndexedSubscript:{"objectForKeyedSubscript:", v130), v11}];
    [objc_msgSend(OUTLINED_FUNCTION_10_9() objectForKeyedSubscript:{v128), "floatValue"}];
    *v17 = v19;
    if (v19 == 0.0 || ((v20 = [OUTLINED_FUNCTION_10_9() objectForKeyedSubscript:v124], CGPointMakeWithDictionaryRepresentation(v20, v15), v15->x == v12) ? (v21 = v15->y == v13) : (v21 = 0), v21))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      return 0xFFFFFFFFLL;
    }

    [objc_msgSend(OUTLINED_FUNCTION_10_9() objectForKeyedSubscript:{v121), "floatValue"}];
    v23 = v22;
    *v16 = v22;
    [objc_msgSend(OUTLINED_FUNCTION_10_9() objectForKeyedSubscript:{v119), "floatValue"}];
    v10 = 0;
    *(v16 + 1) = v24;
    v17 = v165;
    *v14 = v23;
    *(v14 + 1) = v24;
    v15 = v170;
    v16 = &v168;
    v14 = v172;
    v11 = 1;
  }

  while ((v18 & 1) != 0);
  v25 = [*(a1 + 48) objectForKeyedSubscript:{objc_msgSend(v9, "objectAtIndexedSubscript:", 1)}];
  v26 = *off_1E7989E80;
  v27 = [objc_msgSend(v25 objectForKeyedSubscript:{*off_1E7989E80), "bytes"}];
  v28 = [objc_msgSend(objc_msgSend(*(a1 + 48) objectForKeyedSubscript:{objc_msgSend(v9, "objectAtIndexedSubscript:", 0)), "objectForKeyedSubscript:", v26), "bytes"}];
  if (v27)
  {
    v34 = v28;
    if (v28)
    {
      *v35.i64 = acpr_convertFloatRowMajorArrayToSimdMatrix(v27, v29, v30, v31, v32, v33);
      v35.i32[3] = 0;
      v36.i32[3] = 0;
      v129 = v36;
      v131 = v35;
      v37.i32[3] = 0;
      HIDWORD(v38) = 0;
      v123 = v38;
      v125 = v37;
      acpr_convertFloatRowMajorArrayToSimdMatrix(v34, *v35.i64, *v36.i64, *v37.i64, v39, v40);
      OUTLINED_FUNCTION_9_6();
      v158 = v41;
      v160 = v41;
      v162 = v41;
      v164 = v41;
      v46.n128_f64[0] = acpr_computeRelativeExtrinsics(v42, v43, v44, v45, v131, v129, v125);
      OUTLINED_FUNCTION_12_8(v46, v47);
      v157 = v48;
      v159 = v49;
      OUTLINED_FUNCTION_11_9(v48, v49, v50, v51);
      v161 = v53;
      v163 = v54;
      do
      {
        do
        {
          OUTLINED_FUNCTION_6_14(v52);
        }

        while (!v21);
        ++v52;
      }

      while (v52 != 3);
      v55 = 0;
      v56 = v127 + 16;
      v131.i64[0] = v127 + 32;
      v125.i64[0] = *off_1E7989F18;
      v122 = *off_1E798B588;
      v120 = *off_1E798B3B8;
      v117 = *off_1E798A420;
      HIDWORD(v116) = *(MEMORY[0x1E6960C70] + 12);
      v115 = *(MEMORY[0x1E6960C70] + 16);
      HIDWORD(v113) = HIDWORD(v118) | HIDWORD(v111);
      v112 = *off_1E798B730;
      v57 = &v171;
      v58 = v169;
      v59 = &v167;
      v60 = v166;
      v61 = 1;
      v62 = *off_1E798B3C0;
      v63 = *off_1E798B3C8;
      v114 = v127 + 16;
      while (1)
      {
        v64 = v61;
        v65 = v59[1] + -1.0;
        v66 = v58[1];
        v67 = v57[1] + -1.0;
        *(v56 + 8 * v55) = (*v57 + -1.0) * 0.5 + *v58 - (*v59 + -1.0) * 0.5;
        *(v131.i64[0] + 8 * v55) = v67 * 0.5 + v66 - v65 * 0.5;
        [objc_msgSend(objc_msgSend(*(a1 + 48) objectForKeyedSubscript:{objc_msgSend(v9, "objectAtIndexedSubscript:", v55)), "objectForKeyedSubscript:", v125.i64[0]), "floatValue"}];
        v69 = v68;
        v70 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_7_15() "objectAtIndexedSubscript:{"objectForKeyedSubscript:", v122), "intValue"}")];
        if (v70)
        {
          v69 = v69 * v70;
        }

        *(v127 + 8 * v55) = (*v60 / v69);
        if ([objc_msgSend(OUTLINED_FUNCTION_7_15() "objectAtIndexedSubscript:{"objectForKeyedSubscript:", v120}")])
        {
          v129.i32[0] = v64;
          v71 = [objc_msgSend(OUTLINED_FUNCTION_7_15() "objectAtIndexedSubscript:{"objectForKeyedSubscript:", v117}")];
          v156 = 0;
          value = *MEMORY[0x1E6960C70];
          timescale = *(MEMORY[0x1E6960C70] + 8);
          flags = HIDWORD(v116);
          epoch = v115;
          if (v71)
          {
            CMTimeMakeFromDictionary(&time, v71);
            value = time.value;
            flags = time.flags;
            timescale = time.timescale;
            epoch = time.epoch;
          }

          if ((flags & 1) == 0)
          {
            OUTLINED_FUNCTION_7_5();
            OUTLINED_FUNCTION_3_14();
            FigDebugAssert3();
            OUTLINED_FUNCTION_7_5();
            return FigSignalErrorAtGM();
          }

          [OUTLINED_FUNCTION_7_15() objectAtIndexedSubscript:?];
          time.value = value;
          time.timescale = timescale;
          time.flags = flags;
          time.epoch = epoch;
          CMTimeGetSeconds(&time);
          v74 = FigMotionComputeAverageSpherePosition();
          if (v74)
          {
            v106 = v74;
            fig_log_get_emitter();
            FigDebugAssert3();
            return v106;
          }

          v75 = 1.0 / v69;
          v76 = v156;
          *(v56 + 8 * v55) = *(v56 + 8 * v55) + ((1.0 / v69) * *&v156);
          *(v131.i64[0] + 8 * v55) = *(v131.i64[0] + 8 * v55) + ((1.0 / v69) * *(&v76 + 1));
          if (HIDWORD(v113))
          {
            v102 = -[BWAdaptiveCorrectionPreviewRegistration _estimatedSagPositionUsingOISShift:forPortType:](a1, [v9 objectAtIndexedSubscript:v55], *&v76, *(&v76 + 1));
            v104 = v102;
            v105 = v103;
            if (HIDWORD(v118))
            {
              [*(a1 + 632) setObject:CGPointCreateDictionaryRepresentation(*&v102) forKeyedSubscript:{objc_msgSend(v9, "objectAtIndexedSubscript:", v55)}];
            }

            if (HIDWORD(v111))
            {
              *(v56 + 8 * v55) = *(v56 + 8 * v55) - v104 * v75;
              *(v131.i64[0] + 8 * v55) = *(v131.i64[0] + 8 * v55) - v105 * v75;
            }
          }

          v77 = [objc_msgSend(OUTLINED_FUNCTION_7_15() "objectAtIndexedSubscript:{"objectForKeyedSubscript:", v112}")];
          if (HIDWORD(v118))
          {
            v85 = v77;
            if (v77)
            {
              v86 = OUTLINED_FUNCTION_15_6(v77, v78, v79, v80, v81, v82, v83, v84, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v120, v122, v123, v125.i64[0], v125.i64[1], v126, v127, v129.i64[0], v129.i64[1], v131.i64[0], v131.i64[1], v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, 0);
              if (v86)
              {
                v87 = v86;
                v88 = MEMORY[0];
                do
                {
                  v89 = 0;
                  do
                  {
                    if (MEMORY[0] != v88)
                    {
                      objc_enumerationMutation(v85);
                    }

                    v90 = *(8 * v89);
                    v91 = [v90 isEqualToString:{objc_msgSend(v9, "objectAtIndexedSubscript:", 0)}];
                    if ((v91 & 1) == 0)
                    {
                      v91 = [v90 isEqualToString:{objc_msgSend(v9, "objectAtIndexedSubscript:", 1)}];
                      if ((v91 & 1) == 0)
                      {
                        [objc_msgSend(objc_msgSend(v85 objectForKeyedSubscript:{v90), "objectForKeyedSubscript:", v62), "doubleValue"}];
                        v100 = v99 * 0.00390625;
                        [objc_msgSend(objc_msgSend(v85 objectForKeyedSubscript:{v90), "objectForKeyedSubscript:", v63), "doubleValue"}];
                        v173.x = [(BWAdaptiveCorrectionPreviewRegistration *)a1 _estimatedSagPositionUsingOISShift:v90 forPortType:v100, v101 * 0.00390625];
                        v91 = [*(a1 + 632) setObject:CGPointCreateDictionaryRepresentation(v173) forKeyedSubscript:v90];
                      }
                    }

                    ++v89;
                  }

                  while (v87 != v89);
                  v87 = OUTLINED_FUNCTION_15_6(v91, v92, v93, v94, v95, v96, v97, v98, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v120, v122, v123, v125.i64[0], v125.i64[1], v126, v127, v129.i64[0], v129.i64[1], v131.i64[0], v131.i64[1], v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152);
                }

                while (v87);
              }
            }
          }

          v56 = v114;
          LOBYTE(v64) = v129.i8[0];
        }

        v61 = 0;
        v60 = v165;
        v58 = v134;
        v59 = v135;
        v57 = v133;
        v55 = 1;
        if ((v64 & 1) == 0)
        {
          return 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_3_14();
  FigDebugAssert3();
  OUTLINED_FUNCTION_7_5();
  return FigSignalErrorAtGM();
}

- (uint64_t)_updateCorrectedCalibrationUsingInitialOISCalibration:(int)a3 macroTransitionType:
{
  if (!a1)
  {
    return 0;
  }

  bzero(v33, 0xB8uLL);
  bzero(__src, 0xB8uLL);
  bzero(v31, 0xB8uLL);
  bzero(v30, 0x748uLL);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25.columns[0] = 0;
  v25.columns[1] = 0;
  v24.columns[0] = 0;
  v24.columns[1] = 0;
  v6 = *(a2 + 48);
  v7 = *(a2 + 64);
  *&v6.f64[0] = vcvt_f32_f64(v6);
  *&v7.f64[0] = vcvt_f32_f64(v7);
  v8 = *(a2 + 80);
  *&v8.f64[0] = vcvt_f32_f64(v8);
  v9 = *(a2 + 112);
  v10 = *(a2 + 128);
  *&v9.f64[0] = vcvt_f32_f64(v9);
  *&v10.f64[0] = vcvt_f32_f64(v10);
  v11 = vzip1q_s32(v6, v9);
  v12 = vzip1q_s32(v7, v10);
  v13 = vzip2q_s32(vcvt_hight_f32_f64(*(a2 + 96), *(a2 + 96)), 0);
  v22 = vzip1q_s32(v11, v8);
  v23 = vzip1q_s32(v12, v13);
  v20 = vzip2q_s32(v11, vdupq_lane_s32(*&v8.f64[0], 1));
  v21 = vzip2q_s32(v12, v13);
  v14 = (*(a1 + 672))(&v26, &v25, &v24);
  if (v14 || (v14 = (*(a1 + 688))(*(a1 + 240), *(a1 + 256), *(a1 + 264), *v25.columns, *&v25.columns[1]), v14) || (v14 = (*(a1 + 688))(*(a1 + 248), *(a1 + 256), *(a1 + 272), *v24.columns, *&v24.columns[1]), v14) || (v14 = (*(a1 + 680))(a2, v33, v26, v27, v28, v29, *v25.columns, *&v25.columns[1], *v24.columns, *&v24.columns[1]), v14))
  {
    v18 = v14;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
LABEL_14:
    FigDebugAssert3();
    return v18;
  }

  (*(a1 + 664))(v31, *(a1 + 264), *(a1 + 272), *(a1 + 256), v33, [*(a1 + 8) adaptiveCorrectionConfigsPtr] + (a3 << 9), v30);
  if ((v30[812] & 1) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigDebugAssert3();
    return 0xFFFFFFFFLL;
  }

  v15 = *(a1 + 680);
  v16 = __invert_f2(v25);
  v17 = __invert_f2(v24);
  v18 = v15(v31, __src, v22, v20, v23, v21, *v16.columns, *&v16.columns[1], *v17.columns, *&v17.columns[1]);
  if (v18)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    goto LABEL_14;
  }

  memcpy((a1 + 56), __src, 0xB8uLL);
  return v18;
}

- (uint64_t)_estimateDepthFromKeypointsUsingCalibration:(float64x2_t *)a3 narrowerRawSensorResolution:(int)a4 fundamentalMatrix:(void *)a5 macroTransitionType:(float64x2_t)a6 totalZoomFactor:(float64x2_t)a7 consolidatedDepthsOut:(float64x2_t)a8
{
  if (result)
  {
    if (a5)
    {
      v70 = *a8.f64;
      v71 = a6.f64[0];
      v73 = result;
      v74 = 0;
      *a5 = 0;
      a5[1] = 0;
      a5[2] = 0;
      v75 = a6.f64[0] * 0.5;
      v76 = a7.f64[0] * 0.5;
      *&v77 = a2[6];
      *&v78 = a2[7];
      *&v79 = a2[8];
      a6.f64[0] = a2[9];
      *(&v77 + 1) = a2[10];
      a8.f64[0] = a2[13];
      a12.n128_u64[0] = a2[14];
      a13.n128_u64[0] = a2[15];
      *&v69 = a2[16];
      a7.f64[0] = a2[17];
      *(&v78 + 1) = a2[11];
      *(&v79 + 1) = a2[12];
      *&STACK[0xA70] = a12;
      *&STACK[0xA60] = v77;
      *&STACK[0xA90] = a13;
      *&STACK[0xA80] = v78;
      *&STACK[0xAB0] = v69;
      *&STACK[0xAA0] = v79;
      *&STACK[0x960] = 0u;
      *&STACK[0x970] = 0u;
      *&STACK[0x980] = 0u;
      *&STACK[0x990] = 0u;
      __asm { FMOV            V3.2D, #1.0 }

      *&STACK[0x9A0] = 0u;
      *&STACK[0x9B0] = 0u;
      do
      {
        v86 = *(&STACK[0xA60] + v74);
        v85 = *(&STACK[0xA60] + v74 + 16);
        v87 = (&STACK[0x960] + v74);
        *v87 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(xmmword_1AD046840, v86.f64[0]), xmmword_1AD046850, v86, 1), 0, v85.f64[0]);
        v87[1] = vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v86, 0), 0, v86, 1), _Q3, v85);
        v74 += 32;
      }

      while (v74 != 96);
      v88 = 0;
      v90 = *&STACK[0x960];
      v89 = *&STACK[0x970];
      v92 = *&STACK[0x980];
      v91 = *&STACK[0x990];
      v93 = *&STACK[0x9B0];
      v94 = *&STACK[0x9A0];
      *&STACK[0xA70] = 0u;
      *&STACK[0xA60] = xmmword_1AD046840;
      *&STACK[0xA90] = 0u;
      *&STACK[0xA80] = xmmword_1AD046850;
      *&STACK[0xAA0] = 0uLL;
      *&STACK[0xAB0] = _Q3;
      *&STACK[0x9E0] = 0u;
      *&STACK[0x9F0] = 0u;
      *&STACK[0xA00] = 0u;
      *&STACK[0xA10] = 0u;
      *&STACK[0xA20] = 0u;
      *&STACK[0xA30] = 0u;
      do
      {
        v96 = *(&STACK[0xA60] + v88);
        v95 = *(&STACK[0xA60] + v88 + 16);
        v97 = (&STACK[0x9E0] + v88);
        *v97 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v90, v96.f64[0]), v92, v96, 1), v94, *&v95);
        v97[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v89, v96.f64[0]), v91, v96, 1), v93, *&v95);
        v88 += 32;
      }

      while (v88 != 96);
      v98 = 0;
      v99 = *&STACK[0x9F0];
      v100 = *&STACK[0x9E0];
      v101 = *&STACK[0xA10];
      v102 = *&STACK[0xA00];
      v103 = *&STACK[0xA30];
      v104 = *&STACK[0xA20];
      v105 = vmulq_n_f64(xmmword_1AD046840, a6.f64[0]);
      v106 = vmlaq_f64(vmlaq_f64(vmulq_f64(a6, 0), 0, a8), _Q3, a7);
      v107 = vmlaq_n_f64(vmlaq_n_f64(v105, xmmword_1AD046850, a8.f64[0]), 0, a7.f64[0]);
      *&STACK[0x860] = xmmword_1AD046830;
      *&STACK[0x870] = 0u;
      *&STACK[0x880] = xmmword_1AD046820;
      *&STACK[0x890] = 0u;
      *&STACK[0x8A0] = 0u;
      *&STACK[0x8B0] = _Q3;
      *&STACK[0x8C0] = 0u;
      *&STACK[0x8D0] = 0u;
      v108.i64[0] = vdupq_laneq_s64(v104, 1).u64[0];
      v108.i64[1] = v107.i64[1];
      v109 = vzip1q_s64(v104, v107);
      v110 = vzip1q_s64(v100, v102);
      v111 = vzip2q_s64(v100, v102);
      *&STACK[0x8E0] = vzip1q_s64(v110, v111);
      *&STACK[0x8F0] = v99;
      *&STACK[0x900] = vzip2q_s64(v110, v111);
      *&STACK[0x910] = v101;
      *&STACK[0x920] = vzip1q_s64(v109, v108);
      *&STACK[0x930] = v103;
      *&STACK[0x940] = vzip2q_s64(v109, v108);
      *&STACK[0x950] = v106;
      v112 = &STACK[0x860];
      v113 = &a53;
      v114 = 1;
      do
      {
        v115 = v114;
        v177 = *&a2[v98];
        v176 = *&a2[v98 + 2];
        v179 = *&a2[v98 + 4];
        memcpy(&STACK[0xA60], v112, 0x80uLL);
        v119.f64[0] = v176;
        v116 = 0;
        *&STACK[0x9E0] = 0u;
        *&STACK[0x9F0] = 0u;
        *&STACK[0xA00] = 0u;
        *&STACK[0xA10] = 0u;
        *&STACK[0xA20] = 0u;
        *&STACK[0xA30] = 0u;
        v117.f64[0] = 0.0;
        *&STACK[0xA40] = 0u;
        *&STACK[0xA50] = 0u;
        v118.f64[0] = 0.0;
        v118.f64[1] = v177;
        v119.f64[1] = v179;
        v120.f64[0] = 1.0;
        do
        {
          v122 = *(&STACK[0xA60] + v116);
          v121 = *(&STACK[0xA60] + v116 + 16);
          v123 = (&STACK[0x9E0] + v116);
          *v123 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*&v177, v122.f64[0]), v118, v122, 1), v119, v121.f64[0]);
          v123[1] = vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v117, v122), v117, v122, 1), v121, v120);
          v116 += 32;
        }

        while (v116 != 128);
        memcpy(v113, &STACK[0x9E0], 0x80uLL);
        v114 = 0;
        v113 = &a69;
        v112 = &STACK[0x8E0];
        v98 = 1;
      }

      while ((v115 & 1) != 0);
      bzero(*(v73 + 280), 8 * [*(v73 + 8) configuredNumKeypoints]);
      v180 = *(v73 + 240);
      v178 = *(v73 + 248);
      v124 = *(v73 + 256);
      v175 = *(v73 + 280);
      memcpy(&a37, &a53, 0x80uLL);
      v125 = memcpy(&a21, &a69, 0x80uLL);
      *&STACK[0x9D0] = 0u;
      *&STACK[0x9C0] = 0u;
      *&STACK[0x9B0] = 0u;
      *&STACK[0x990] = 0u;
      *&STACK[0x9A0] = 0u;
      *&STACK[0x970] = 0u;
      *&STACK[0x980] = 0u;
      *&STACK[0x960] = 0u;
      *&STACK[0x9E0] = 0u;
      *&STACK[0x9F0] = 0u;
      *&STACK[0xA00] = 0u;
      *&STACK[0xA10] = 0u;
      *&STACK[0xA20] = 0u;
      *&STACK[0xA30] = 0u;
      *&STACK[0xA40] = 0u;
      *&STACK[0xA50] = 0u;
      if (v124 >= 1)
      {
        for (i = 0; i != v124; ++i)
        {
          v128 = 0;
          v129 = *(v180 + 16 * i);
          v130 = *(v178 + 16 * i);
          do
          {
            v131 = vmlaq_n_f64(vnegq_f64(*(&a21 + v128)), v130, *(&a21 + v128 + 16));
            v132 = (&STACK[0x960] + v128);
            *v132 = vmlaq_n_f64(vnegq_f64(*(&a37 + v128)), v129, *(&a37 + v128 + 16));
            v132[1] = v131;
            v128 += 32;
          }

          while (v128 != 128);
          LODWORD(STACK[0xB3C]) = 4;
          LODWORD(STACK[0xB38]) = 4;
          LODWORD(STACK[0xB34]) = 4;
          LODWORD(STACK[0xB30]) = 4;
          LODWORD(STACK[0xB2C]) = 4;
          LODWORD(STACK[0xB28]) = 0;
          LODWORD(STACK[0xB24]) = -1;
          STACK[0xB18] = 0xBFF0000000000000;
          OUTLINED_FUNCTION_5_20(v125, v126, &STACK[0xB3C]);
          if (LODWORD(STACK[0xB28]) || (v133 = *&STACK[0xB18], LODWORD(STACK[0xB24]) = v133, (v134 = malloc_type_malloc(8 * v133, 0x100004000313F17uLL)) == 0) || (v136 = v134, OUTLINED_FUNCTION_5_20(v134, v135, &STACK[0xB3C]), free(v136), LODWORD(STACK[0xB28])))
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0();
            v125 = FigDebugAssert3();
          }

          else if (*&STACK[0xA58] != 0.0)
          {
            v137 = *&STACK[0xA38] / *&STACK[0xA58];
            if (v137 <= 0.0)
            {
              v137 = -v137;
            }

            *(v175 + 8 * i) = v137;
            continue;
          }

          *(v175 + 8 * i) = 0;
        }
      }

      v138 = 0;
      v139 = v73 + 288;
      do
      {
        bzero(*(v139 + v138), 8 * [*(v73 + 8) configuredNumKeypoints]);
        v138 += 8;
      }

      while (v138 != 24);
      [*(v73 + 8) epipolarWeightFalloffDistance];
      v141 = v140;
      [*(v73 + 8) macroDepthWeightFalloffDistance];
      v142 = v143;
      LODWORD(v143) = 1.0;
      if (a4 == 2)
      {
        [objc_msgSend(objc_msgSend(*(v73 + 48) objectForKeyedSubscript:{*off_1E798A0C0, v143), "objectForKeyedSubscript:", *off_1E7989E50), "floatValue"}];
        v143 = fmin((v70 / v144), 3.0);
        if (v143 < 1.0)
        {
          v143 = 1.0;
        }

        *&v143 = v143;
      }

      v145 = *(v73 + 256);
      if (v145)
      {
        v146 = 0;
        v147 = v71 * 0.25 * (v71 * 0.25);
        v148 = v141 / 0.693147181;
        v149 = v142 / 0.693147181;
        v150 = *(v73 + 280);
        v151 = v147 / (*&v143 * *&v143);
        do
        {
          if (*(v150 + 8 * v146) != 0.0)
          {
            v152 = *(v73 + 240);
            *(*(v73 + 288) + 8 * v146) = exp(-(*(v152 + 16 * v146) * *(v152 + 16 * v146)) / v147);
            *(*(v73 + 296) + 8 * v146) = exp(-((v71 - *(v152 + 16 * v146)) * (v71 - *(v152 + 16 * v146))) / v147);
            v153 = (2 * (v146 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v154 = sqrt((v76 - *(v152 + 8 * v153)) * (v76 - *(v152 + 8 * v153)) + (v75 - *(v152 + 16 * v146)) * (v75 - *(v152 + 16 * v146)));
            v155.f64[0] = exp(-(v154 * v154) / v151);
            v157 = *(v73 + 304);
            *(v157 + 8 * v146) = v155.f64[0];
            if (a4)
            {
              *(v157 + 8 * v146) = v155.f64[0] * exp(-*(v150 + 8 * v146) / v149);
            }

            v156.f64[0] = *(v152 + 16 * v146);
            v155.f64[0] = *(v152 + 8 * v153);
            v158 = vaddq_f64(a3[4], vmlaq_n_f64(vmulq_n_f64(*a3, v156.f64[0]), a3[2], v155.f64[0]));
            v159 = sqrt(vmuld_lane_f64(v158.f64[1], v158, 1) + v158.f64[0] * v158.f64[0]);
            if (v159 == 0.0)
            {
              v161 = 0.0;
            }

            else
            {
              v160 = (vaddq_f64(a3[5], vmlaq_f64(vmulq_f64(v156, a3[1]), v155, a3[3])).f64[0] + v158.f64[1] * *(*(v73 + 248) + 8 * v153) + v158.f64[0] * *(*(v73 + 248) + 16 * v146)) / fabs(v159);
              if (v160 >= 0.0)
              {
                v160 = -v160;
              }

              v161 = exp(v160 / v148);
            }

            for (j = 0; j != 24; j += 8)
            {
              *(*(v139 + j) + 8 * v146) = v161 * *(*(v139 + j) + 8 * v146);
            }
          }

          ++v146;
        }

        while (v146 != v145);
        OUTLINED_FUNCTION_13_9();
        v164 = *(v73 + 280);
        do
        {
          v165 = 0;
          v166 = *(v164 + 8 * v163);
          do
          {
            if (v166 != 0.0)
            {
              v167 = *(*(v139 + v165) + 8 * v163);
              *(&a18 + v165) = *(&a18 + v165) + 1.0 / v166 * v167;
              *(&vars0 + v165) = v167 + *(&vars0 + v165);
            }

            v165 += 8;
          }

          while (v165 != 24);
          ++v163;
        }

        while (v163 != v145);
      }

      else
      {
        OUTLINED_FUNCTION_13_9();
      }

      v168 = 0;
      while (1)
      {
        v169 = *(&vars0 + v168 * 8);
        if (v169 == 0.0)
        {
          break;
        }

        v170 = *(&a18 + v168 * 8);
        if (v170 == 0.0)
        {
          break;
        }

        v171 = v170 / v169;
        *(&a18 + v168 * 8) = v171;
        *&a5[v168++] = 1.0 / v171;
        if (v168 == 3)
        {
          return 0;
        }
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
    }

    FigDebugAssert3();
    return 0xFFFFFFFFLL;
  }

  return result;
}

- (uint64_t)_verifyRegistrationTransform:(uint64_t)a3 usingInitialOISCalibration:(uint64_t)a4 narrowerMetadata:(uint64_t)a5 widerMetadata:(unint64_t)a6 narrowerDimensions:
{
  *&v64 = a4;
  *(&v64 + 1) = a5;
  *&v62 = a2;
  *(&v62 + 1) = a3;
  v60 = result;
  if (result)
  {
    v7 = HIDWORD(a6);
    bzero(v83, 0x120uLL);
    bzero(v82, 0x120uLL);
    v8 = 0;
    *&v9 = vcvtd_n_f64_s32(a6, 1uLL);
    v55 = v9;
    *&v66 = a6;
    v52 = vdupq_lane_s64(COERCE__INT64(vcvtd_n_f64_s32(v7, 1uLL)), 0);
    v10 = (a6 * 0.0071023);
    do
    {
      *(&v66 + 1) = v8;
      v11 = 3 * v8;
      v12 = &v83[6 * v8];
      v13 = *(&v62 + 1);
      memcpy(&v80[8], *(&v62 + 1), 0xB8uLL);
      v14 = v60;
      OUTLINED_FUNCTION_14_3(v60, &v80[8], v81, 50.0, v44, v46, v48, v50, *&v52.f64[0], *&v52.f64[1], v55, *(&v55 + 1), v58, v60, v62, v64, v66, *&v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, *v80, *&v80[16], *&v80[32], *&v80[48], *&v80[64], *&v80[80], *&v80[96], *&v80[112], *&v80[128], *&v80[144], *&v80[160], *&v80[176]);
      memcpy(v12, v81, 0x60uLL);
      v15 = &v82[2 * v11];
      memcpy(&v80[8], v13, 0xB8uLL);
      OUTLINED_FUNCTION_14_3(v14, &v80[8], v81, 1.0e10, v45, v47, v49, v51, v53, v54, v56, v57, v59, v61, v63, v65, v67, *&v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, *v80, *&v80[16], *&v80[32], *&v80[48], *&v80[64], *&v80[80], *&v80[96], *&v80[112], *&v80[128], *&v80[144], *&v80[160], *&v80[176]);
      memcpy(v15, v81, 0x60uLL);
      v16 = 0;
      v17 = vaddq_f64(v12[5], vmlaq_f64(vmulq_n_f64(v12[1], *&v55), v52, v12[3]));
      v18 = vaddq_f64(v12[4], vmlaq_f64(vmulq_n_f64(*v12, *&v55), v52, v12[2]));
      v19 = vaddq_f64(v15[5], vmlaq_f64(vmulq_n_f64(v15[1], *&v55), v52, v15[3]));
      v20 = vaddq_f64(v15[4], vmlaq_f64(vmulq_n_f64(*v15, *&v55), v52, v15[2]));
      v21 = (v62 + 32 * v11);
      v22 = vaddq_f64(v21[5], vmlaq_f64(vmulq_n_f64(v21[1], *&v55), v52, v21[3]));
      v23 = vaddq_f64(v21[4], vmlaq_f64(vmulq_n_f64(*v21, *&v55), v52, v21[2]));
      do
      {
        v78 = v18;
        v79 = v17;
        v24 = v78.f64[v16 & 3] / v17.f64[0];
        v76 = v18;
        v77 = v17;
        v76.f64[v16 & 3] = v24;
        v18 = v76;
        v25.f64[0] = v77.f64[0];
        v25.f64[1] = v17.f64[1];
        v74 = v20;
        v75 = v19;
        v26 = v74.f64[v16 & 3] / v19.f64[0];
        v72 = v20;
        v73 = v19;
        v72.f64[v16 & 3] = v26;
        v20 = v72;
        v27.f64[0] = v73.f64[0];
        v27.f64[1] = v19.f64[1];
        v70 = v23;
        v71 = v22;
        v28 = *(&v70 + (v16 & 3)) / v22.f64[0];
        v68 = v23;
        v69 = v22;
        *&v68.i64[v16 & 3] = v28;
        v23 = v68;
        *&v29.f64[0] = v69;
        ++v16;
        v29.f64[1] = v22.f64[1];
        v17 = v25;
        v19 = v27;
        v22 = v29;
      }

      while (v16 != 3);
      v30.f64[0] = *vextq_s8(v18, v18, 8uLL).i64;
      *&v31 = vextq_s8(v20, v20, 8uLL).u64[0];
      v32 = vextq_s8(v68, v68, 8uLL).u64[0];
      *&v33.f64[0] = v68.i64[0];
      *&v33.f64[1] = v20.i64[0];
      v34.f64[0] = v31;
      v34.f64[1] = v30.f64[0];
      v35 = -(*v20.i64 * v30.f64[0]);
      v30.f64[1] = v31;
      v36 = vsubq_f64(v33, vdupq_lane_s64(v18.i64[0], 0));
      *&v37.f64[0] = v18.i64[0];
      *&v37.f64[1] = v68.i64[0];
      v38 = vsubq_f64(v30, v34);
      v39 = vsubq_f64(v37, vdupq_lane_s64(v20.i64[0], 0));
      v40 = vmlaq_f64(vmulq_f64(vsubq_f64(vdupq_lane_s64(v32, 0), v30), v38), v39, v36);
      v39.f64[1] = v36.f64[1];
      v41 = vmaxnmq_f64(vdivq_f64(v40, vabsq_f64(vsqrtq_f64(vmlaq_f64(vmulq_f64(v38, v38), v39, v39)))), 0);
      if (v41.f64[0] < v41.f64[1])
      {
        v41.f64[0] = v41.f64[1];
      }

      v42 = fabs(v35 + *v18.i64 * v31 + vmuld_lane_f64(*&v32, v36, 1) + v38.f64[0] * *v68.i64) / sqrt(vmuld_lane_f64(v36.f64[1], v36, 1) + v38.f64[0] * v38.f64[0]);
      if (v41.f64[0] >= v10 || v42 >= v10)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
        return 0xFFFFFFFFLL;
      }

      v8 = *(&v66 + 1) + 1;
    }

    while (*(&v66 + 1) != 2);
    return 0;
  }

  return result;
}

- (uint64_t)_computeApproximateOISCalibrationFromWiderMetadata:(uint64_t)a3 narrowerPortType:(double *)a4 narrowerToWiderCameraScale:(double)a5 calibrationOut:
{
  if (!a1)
  {
    return 0;
  }

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  [v10 setObject:a3 atIndexedSubscript:0];
  [v10 setObject:objc_msgSend(a2 atIndexedSubscript:{"objectForKeyedSubscript:", *off_1E798B540), 1}];
  v11 = [*(a1 + 48) objectForKeyedSubscript:{objc_msgSend(v10, "objectAtIndexedSubscript:", 1)}];
  v12 = *off_1E7989E80;
  v13 = [objc_msgSend(v11 objectForKeyedSubscript:{*off_1E7989E80), "bytes"}];
  v14 = [objc_msgSend(objc_msgSend(*(a1 + 48) objectForKeyedSubscript:{objc_msgSend(v10, "objectAtIndexedSubscript:", 0)), "objectForKeyedSubscript:", v12), "bytes"}];
  if (!v13 || (v20 = v14) == 0)
  {
    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_4_6();
    FigDebugAssert3();
    OUTLINED_FUNCTION_7_5();
    return FigSignalErrorAtGM();
  }

  *v21.i64 = acpr_convertFloatRowMajorArrayToSimdMatrix(v13, v15, v16, v17, v18, v19);
  v21.i32[3] = 0;
  v22.i32[3] = 0;
  v66 = v22;
  v67 = v21;
  v23.i32[3] = 0;
  v65 = v23;
  acpr_convertFloatRowMajorArrayToSimdMatrix(v20, *v21.i64, *v22.i64, *v23.i64, v24, v25);
  OUTLINED_FUNCTION_9_6();
  v74 = v26;
  v76 = v26;
  v78 = v26;
  v80 = v26;
  v31.n128_f64[0] = acpr_computeRelativeExtrinsics(v27, v28, v29, v30, v67, v66, v65);
  OUTLINED_FUNCTION_12_8(v31, v32);
  v73 = v33;
  v75 = v34;
  OUTLINED_FUNCTION_11_9(v33, v34, v35, v36);
  v77 = v38;
  v79 = v39;
  do
  {
    do
    {
      v40 = OUTLINED_FUNCTION_6_14(v37);
    }

    while (!v44);
    ++v37;
  }

  while (v37 != 3);
  [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B530, v40), "floatValue"}];
  if (v41 == 0.0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
LABEL_28:
    FigDebugAssert3();
    return 0xFFFFFFFFLL;
  }

  v42 = v41;
  CGPointMakeWithDictionaryRepresentation([a2 objectForKeyedSubscript:*off_1E798B520], &v83);
  v43 = MEMORY[0x1E695EFF8];
  v44 = v83.x == *MEMORY[0x1E695EFF8] && v83.y == *(MEMORY[0x1E695EFF8] + 8);
  if (v44)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    goto LABEL_28;
  }

  [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B5A8, v83.x, v83.y), "floatValue"}];
  v46 = v45;
  [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B5A0), "floatValue"}];
  y = v83.y;
  a4[3] = (v46 + -1.0) * 0.5 + v83.x - (v46 + -1.0) * 0.5;
  a4[5] = (v47 + -1.0) * 0.5 + y - (v47 + -1.0) * 0.5;
  [objc_msgSend(objc_msgSend(*(a1 + 48) objectForKeyedSubscript:{objc_msgSend(v10, "objectAtIndexedSubscript:", 1)), "objectForKeyedSubscript:", *off_1E7989F18), "floatValue"}];
  v50 = v49;
  v51 = [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
  if (v51)
  {
    v50 = v50 * v51;
  }

  a4[1] = (v42 / v50);
  if ([a2 objectForKeyedSubscript:*off_1E798B3B8])
  {
    v52 = [a2 objectForKeyedSubscript:*off_1E798A420];
    v72 = 0;
    value = *MEMORY[0x1E6960C70];
    timescale = *(MEMORY[0x1E6960C70] + 8);
    if (v52)
    {
      CMTimeMakeFromDictionary(&time, v52);
      value = time.value;
      flags = time.flags;
      timescale = time.timescale;
      epoch = time.epoch;
      if (time.flags)
      {
LABEL_18:
        time.value = value;
        time.timescale = timescale;
        time.flags = flags;
        time.epoch = epoch;
        CMTimeGetSeconds(&time);
        v55 = FigMotionComputeAverageSpherePosition();
        if (v55)
        {
          v61 = v55;
          fig_log_get_emitter();
          FigDebugAssert3();
          return v61;
        }

        v56 = *(&v72 + 1);
        a4[3] = a4[3] + ((1.0 / v50) * *&v72);
        a4[5] = a4[5] + ((1.0 / v50) * v56);
        goto LABEL_20;
      }
    }

    else
    {
      flags = *(MEMORY[0x1E6960C70] + 12);
      epoch = *(MEMORY[0x1E6960C70] + 16);
      if (flags)
      {
        goto LABEL_18;
      }
    }

    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_4_6();
    FigDebugAssert3();
    OUTLINED_FUNCTION_7_5();
    return FigSignalErrorAtGM();
  }

LABEL_20:
  [v10 setObject:a3 atIndexedSubscript:0];
  v57 = 1.0 / a5 * v42;
  v58 = [objc_msgSend(*(a1 + 48) objectForKeyedSubscript:{a3), "objectForKeyedSubscript:", *off_1E7989F28}];
  v59 = [objc_msgSend(v58 objectForKeyedSubscript:{*off_1E798A2C0), "intValue"}];
  v60 = [objc_msgSend(v58 objectForKeyedSubscript:{*off_1E798A288), "intValue"}];
  v81 = vcvtd_n_f64_s32(v59, 1uLL);
  v82 = vcvtd_n_f64_s32(v60, 1uLL);
  point = *v43;
  CGPointMakeWithDictionaryRepresentation([objc_msgSend(*(a1 + 48) objectForKeyedSubscript:{a3), "objectForKeyedSubscript:", *off_1E7989F10}], &point);
  v61 = 0;
  v62 = point.x + v81;
  v63 = point.y + v82;
  *a4 = v57;
  a4[2] = v62;
  a4[4] = v63;
  return v61;
}

- (CGFloat)_estimatedSagPositionUsingOISShift:(double)a3 forPortType:(double)a4
{
  if (!a1)
  {
    return 0.0;
  }

  v8 = MEMORY[0x1E695EFF8];
  v13 = *MEMORY[0x1E695EFF8];
  if ([*(a1 + 632) objectForKeyedSubscript:a2])
  {
    CGPointMakeWithDictionaryRepresentation([*(a1 + 632) objectForKeyedSubscript:a2], &v13);
  }

  v9 = v8[1];
  if (a3 == *v8 && a4 == v9)
  {
    return v13.x;
  }

  if (v13.x != *v8 || v13.y != v9)
  {
    return v13.x * (1.0 - *(a1 + 628)) + a3 * *(a1 + 628);
  }

  return a3;
}

- (uint64_t)initWithCameraInfoByPortType:excludeStaticComponentFromAlignmentShifts:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithCameraInfoByPortType:excludeStaticComponentFromAlignmentShifts:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithCameraInfoByPortType:excludeStaticComponentFromAlignmentShifts:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithCameraInfoByPortType:excludeStaticComponentFromAlignmentShifts:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithCameraInfoByPortType:excludeStaticComponentFromAlignmentShifts:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithCameraInfoByPortType:excludeStaticComponentFromAlignmentShifts:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithCameraInfoByPortType:excludeStaticComponentFromAlignmentShifts:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)allocateResourcesWithVideoFormat:metalContext:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)allocateResourcesWithVideoFormat:metalContext:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)allocateResourcesWithVideoFormat:metalContext:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)allocateResourcesWithVideoFormat:metalContext:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)allocateResourcesWithVideoFormat:metalContext:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)allocateResourcesWithVideoFormat:metalContext:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)allocateResourcesWithVideoFormat:metalContext:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)allocateResourcesWithVideoFormat:metalContext:.cold.8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)allocateResourcesWithVideoFormat:metalContext:.cold.9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)allocateResourcesWithVideoFormat:metalContext:.cold.10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)allocateResourcesWithVideoFormat:metalContext:.cold.11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)allocateResourcesWithVideoFormat:metalContext:.cold.12()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)allocateResourcesWithVideoFormat:metalContext:.cold.13()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)registerWiderSampleBufferUsingADC:narrowerSampleBuffer:narrowerRect:macroTransitionType:narrowerToWiderTransformsOut:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)registerWiderSampleBufferUsingADC:narrowerSampleBuffer:narrowerRect:macroTransitionType:narrowerToWiderTransformsOut:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)registerWiderSampleBufferUsingADC:narrowerSampleBuffer:narrowerRect:macroTransitionType:narrowerToWiderTransformsOut:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)registerWiderSampleBufferUsingADC:narrowerSampleBuffer:narrowerRect:macroTransitionType:narrowerToWiderTransformsOut:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)registerWiderSampleBufferUsingADC:narrowerSampleBuffer:narrowerRect:macroTransitionType:narrowerToWiderTransformsOut:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)registerWiderSampleBufferUsingADC:narrowerSampleBuffer:narrowerRect:macroTransitionType:narrowerToWiderTransformsOut:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)registerWiderSampleBufferUsingADC:narrowerSampleBuffer:narrowerRect:macroTransitionType:narrowerToWiderTransformsOut:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)registerWiderSampleBufferUsingADC:narrowerSampleBuffer:narrowerRect:macroTransitionType:narrowerToWiderTransformsOut:.cold.8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)registerWiderSampleBufferUsingADC:narrowerSampleBuffer:narrowerRect:macroTransitionType:narrowerToWiderTransformsOut:.cold.9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)registerWiderSampleBufferUsingADC:narrowerSampleBuffer:narrowerRect:macroTransitionType:narrowerToWiderTransformsOut:.cold.10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)registerWiderSampleBufferUsingADC:narrowerSampleBuffer:narrowerRect:macroTransitionType:narrowerToWiderTransformsOut:.cold.11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)computeAlignmentFromWiderSampleBuffer:narrowerSampleBuffer:narrowerToWiderTransformsOut:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)computeAlignmentFromWiderSampleBuffer:narrowerSampleBuffer:narrowerToWiderTransformsOut:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)computeAlignmentFromWiderSampleBuffer:narrowerSampleBuffer:narrowerToWiderTransformsOut:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)computeApproximateCorrectionForWiderCamera:narrowerCameraPortType:narrowerPixelBufferDimensions:narrowerToWiderCameraScale:narrowerToWiderTransformsOut:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)computeApproximateCorrectionForWiderCamera:narrowerCameraPortType:narrowerPixelBufferDimensions:narrowerToWiderCameraScale:narrowerToWiderTransformsOut:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)computeApproximateCorrectionForWiderCamera:narrowerCameraPortType:narrowerPixelBufferDimensions:narrowerToWiderCameraScale:narrowerToWiderTransformsOut:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end