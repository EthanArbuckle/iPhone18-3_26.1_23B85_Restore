@interface BWVisionPreviewRegistrationProvider
- ($65FF825F6F0E105C2F171BD802D3B474)registerWiderCamera:(SEL)a3 narrowerCamera:(opaqueCMSampleBuffer *)a4 widerToNarrowerCameraScale:(opaqueCMSampleBuffer *)a5 isMacroScene:(double)a6 macroTransitionType:(BOOL)a7;
- (BWVisionPreviewRegistrationProvider)initWithCameraInfoByPortType:(id)a3 sensorBinningFactor:(id)a4;
- (CGPoint)computeCameraShiftForWiderCamera:(opaqueCMSampleBuffer *)a3 narrowerCamera:(opaqueCMSampleBuffer *)a4 widerToNarrowerCameraScale:(double)a5;
- (double)_registrationShiftForLeftStrip:(CMSampleBufferRef)sbuf byRegisteringWiderCamera:(opaqueCMSampleBuffer *)a4 narrowerCamera:(int)a5 centerBias:(int)a6 widerToNarrowerCameraScale:(_DWORD *)a7 isMacroScene:(double)a8 err:;
- (void)allocateResourcesWithVideoFormat:(id)a3 metalContext:(id)a4;
- (void)cleanupResources;
- (void)dealloc;
@end

@implementation BWVisionPreviewRegistrationProvider

- (BWVisionPreviewRegistrationProvider)initWithCameraInfoByPortType:(id)a3 sensorBinningFactor:(id)a4
{
  v11.receiver = self;
  v11.super_class = BWVisionPreviewRegistrationProvider;
  v6 = [(BWVisionPreviewRegistrationProvider *)&v11 init];
  if (v6)
  {
    if (a3)
    {
      v7 = [a3 objectForKeyedSubscript:*off_1E798A0D0];
      if (v7)
      {
        if (!CGPointMakeWithDictionaryRepresentation([v7 objectForKeyedSubscript:*off_1E7989F10], (v6 + 24)))
        {
          [BWVisionPreviewRegistrationProvider initWithCameraInfoByPortType:sensorBinningFactor:];
          goto LABEL_19;
        }

        if (FigMotionSphereShiftStateInitialize(v6 + 10, a3, 7))
        {
          [BWVisionPreviewRegistrationProvider initWithCameraInfoByPortType:sensorBinningFactor:];
          goto LABEL_19;
        }
      }

      v8 = [a3 objectForKeyedSubscript:*off_1E798A0C0];
      if (v8 && !CGPointMakeWithDictionaryRepresentation([v8 objectForKeyedSubscript:*off_1E7989F10], (v6 + 40)))
      {
        [BWVisionPreviewRegistrationProvider initWithCameraInfoByPortType:sensorBinningFactor:];
      }

      else
      {
        v9 = [a3 objectForKeyedSubscript:*off_1E798A0D8];
        if (!v9)
        {
LABEL_11:
          *(v6 + 9) = a4;
          return v6;
        }

        if (CGPointMakeWithDictionaryRepresentation([v9 objectForKeyedSubscript:*off_1E7989F10], (v6 + 56)))
        {
          if (!FigMotionSphereShiftStateInitialize(v6 + 90, a3, 7))
          {
            goto LABEL_11;
          }

          [BWVisionPreviewRegistrationProvider initWithCameraInfoByPortType:sensorBinningFactor:];
        }

        else
        {
          [BWVisionPreviewRegistrationProvider initWithCameraInfoByPortType:sensorBinningFactor:];
        }
      }
    }

    else
    {
      [BWVisionPreviewRegistrationProvider initWithCameraInfoByPortType:sensorBinningFactor:];
    }

LABEL_19:

    return 0;
  }

  return v6;
}

- (void)dealloc
{
  [(BWVisionPreviewRegistrationProvider *)self cleanupResources];
  v3.receiver = self;
  v3.super_class = BWVisionPreviewRegistrationProvider;
  [(BWVisionPreviewRegistrationProvider *)&v3 dealloc];
}

- (void)allocateResourcesWithVideoFormat:(id)a3 metalContext:(id)a4
{
  if (!self->_registrationPool)
  {
    v6 = objc_alloc_init(BWVideoFormatRequirements);
    -[BWVideoFormatRequirements setWidth:](v6, "setWidth:", FigCaptureRoundFloatToMultipleOf(4, [a3 width] * 0.3));
    -[BWVideoFormatRequirements setHeight:](v6, "setHeight:", FigCaptureRoundFloatToMultipleOf(4, [a3 height]));
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{FigCaptureUncompressedPixelFormatForPixelFormat(objc_msgSend(a3, "pixelFormat"))}];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v6, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1]);
    v9 = v6;
    self->_registrationPool = -[BWPixelBufferPool initWithVideoFormat:capacity:name:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:", +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1]), 2, @"BWVisionPreviewRegistrationProvider");
  }

  registrationRotationSession = self->_registrationRotationSession;
  p_registrationRotationSession = &self->_registrationRotationSession;
  if (!registrationRotationSession)
  {
    VTPixelRotationSessionCreate(*MEMORY[0x1E695E480], p_registrationRotationSession);
    VTSessionSetProperty(*p_registrationRotationSession, *MEMORY[0x1E6983D68], MEMORY[0x1E695E118]);
  }
}

- (void)cleanupResources
{
  self->_registrationPool = 0;
  registrationRotationSession = self->_registrationRotationSession;
  if (registrationRotationSession)
  {
    VTPixelRotationSessionInvalidate(registrationRotationSession);
    v4 = self->_registrationRotationSession;
    if (v4)
    {
      CFRelease(v4);
      self->_registrationRotationSession = 0;
    }
  }
}

- ($65FF825F6F0E105C2F171BD802D3B474)registerWiderCamera:(SEL)a3 narrowerCamera:(opaqueCMSampleBuffer *)a4 widerToNarrowerCameraScale:(opaqueCMSampleBuffer *)a5 isMacroScene:(double)a6 macroTransitionType:(BOOL)a7
{
  v8 = a7;
  v49 = 0;
  v14 = objc_autoreleasePoolPush();
  v15 = [(BWVisionPreviewRegistrationProvider *)self _registrationShiftForLeftStrip:a4 byRegisteringWiderCamera:a5 narrowerCamera:0 centerBias:v8 widerToNarrowerCameraScale:&v49 isMacroScene:a6 err:?];
  v17 = v16;
  v18 = v49 == 0;
  objc_autoreleasePoolPop(v14);
  v19 = objc_autoreleasePoolPush();
  v20 = [(BWVisionPreviewRegistrationProvider *)self _registrationShiftForLeftStrip:a4 byRegisteringWiderCamera:a5 narrowerCamera:0 centerBias:v8 widerToNarrowerCameraScale:&v49 isMacroScene:a6 err:?];
  v22 = v21;
  v23 = v49 == 0;
  objc_autoreleasePoolPop(v19);
  v24 = objc_autoreleasePoolPush();
  v25 = [(BWVisionPreviewRegistrationProvider *)self _registrationShiftForLeftStrip:a4 byRegisteringWiderCamera:a5 narrowerCamera:1 centerBias:v8 widerToNarrowerCameraScale:&v49 isMacroScene:a6 err:?];
  v47 = v26;
  v48 = v25;
  v27 = v49;
  objc_autoreleasePoolPop(v24);
  v28 = objc_autoreleasePoolPush();
  v29 = [(BWVisionPreviewRegistrationProvider *)self _registrationShiftForLeftStrip:a4 byRegisteringWiderCamera:a5 narrowerCamera:1 centerBias:v8 widerToNarrowerCameraScale:&v49 isMacroScene:a6 err:?];
  v45 = v30;
  v46 = v29;
  v31 = v49;
  objc_autoreleasePoolPop(v28);
  *&retstr->var0[0].var0 = 0u;
  *&retstr->var0[0].var1.y = 0u;
  retstr->var0[2].var1.y = 0.0;
  retstr->var0[1].var1 = 0u;
  *&retstr->var0[2].var0 = 0u;
  retstr->var0[0].var0 = v18;
  retstr->var0[0].var1.x = v15;
  retstr->var0[0].var1.y = v17;
  retstr->var0[1].var0 = v23;
  retstr->var0[1].var1.x = v20;
  retstr->var0[1].var1.y = v22;
  if (v27 && v31)
  {
    v33 = 0;
    retstr->var0[2].var1 = *MEMORY[0x1E695EFF8];
  }

  else
  {
    v34.f64[0] = v48;
    v34.f64[1] = v47;
    v35 = vdup_n_s32(v27 == 0);
    v36.i64[0] = v35.u32[0];
    v36.i64[1] = v35.u32[1];
    v37.f64[0] = v46;
    v37.f64[1] = v45;
    v38 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v36, 0x3FuLL)), vaddq_f64(v34, *MEMORY[0x1E695EFF8]), *MEMORY[0x1E695EFF8]);
    *&v34.f64[0] = vdup_n_s32(v31 == 0);
    v36.i64[0] = LODWORD(v34.f64[0]);
    v36.i64[1] = HIDWORD(v34.f64[0]);
    v39 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v36, 0x3FuLL)), vaddq_f64(v37, v38), v38);
    __asm { FMOV            V1.2D, #0.5 }

    *&v34.f64[0] = vdup_n_s32((v27 | v31) == 0);
    v36.i64[0] = LODWORD(v34.f64[0]);
    v36.i64[1] = HIDWORD(v34.f64[0]);
    retstr->var0[2].var1 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v36, 0x3FuLL)), vmulq_f64(v39, _Q1), v39);
    v33 = 1;
  }

  retstr->var0[2].var0 = v33;
  return result;
}

- (CGPoint)computeCameraShiftForWiderCamera:(opaqueCMSampleBuffer *)a3 narrowerCamera:(opaqueCMSampleBuffer *)a4 widerToNarrowerCameraScale:(double)a5
{
  v8 = *off_1E798A3C8;
  v9 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  v10 = CMGetAttachment(a4, v8, 0);
  v11 = [objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798B540), "isEqualToString:", *off_1E798A0D0}];
  CMSampleBufferGetPresentationTimeStamp(&time, a3);
  Seconds = CMTimeGetSeconds(&time);
  CMSampleBufferGetPresentationTimeStamp(&time, a4);
  v13 = CMTimeGetSeconds(&time);
  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  Width = CVPixelBufferGetWidth(ImageBuffer);
  Height = CVPixelBufferGetHeight(ImageBuffer);
  v28 = 0.0;
  v29 = 0.0;
  v17 = 720;
  if (v11)
  {
    v17 = 80;
  }

  v18 = 40;
  v19 = 24;
  if (!v11)
  {
    v19 = 40;
    v18 = 56;
  }

  v20 = (self + v17);
  v21 = *(&self->super.isa + v19);
  v26 = *(&self->super.isa + v18);
  *&time.value = v21;
  v22 = Height;
  FigMotionSphereShiftStateUpdateWithMetadata(self + v17, v9);
  LODWORD(v25) = self->_sensorBinningFactor.height;
  FigMotionComputeWideToNarrowShift(v9, v10, 0, &time, &v26, Width, v22, self->_sensorBinningFactor.width, Seconds, v13, 0.0, v25, 0, v20, &v28, 0);
  v23 = -v28;
  v24 = -v29;
  result.y = v24;
  result.x = v23;
  return result;
}

- (double)_registrationShiftForLeftStrip:(CMSampleBufferRef)sbuf byRegisteringWiderCamera:(opaqueCMSampleBuffer *)a4 narrowerCamera:(int)a5 centerBias:(int)a6 widerToNarrowerCameraScale:(_DWORD *)a7 isMacroScene:(double)a8 err:
{
  HIDWORD(v102) = a6;
  if (!a1)
  {
    *&v110 = 0.0;
    return *&v110;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  v15 = CMSampleBufferGetImageBuffer(a4);
  v110 = *MEMORY[0x1E695EFF8];
  v112 = *(MEMORY[0x1E695EFF8] + 8);
  v16 = *off_1E798A3C8;
  v17 = [objc_msgSend(CMGetAttachment(sbuf *off_1E798A3C8];
  if (!ImageBuffer || !v15)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7_6();
    FigDebugAssert3();
    v86 = -12780;
    if (!a7)
    {
      return *&v110;
    }

    goto LABEL_35;
  }

  v18 = v17;
  v105 = a7;
  v19 = [*(a1 + 8) newPixelBuffer];
  v20 = [*(a1 + 8) newPixelBuffer];
  v21 = v20;
  if (v19 && v20)
  {
    v22 = psn_pixelBufferRect(v19);
    v24 = v23;
    v26 = v25;
    v27 = CMGetAttachment(a4, v16, 0);
    rect.a = psn_pixelBufferRect(v15);
    rect.b = v28;
    rect.c = v29;
    rect.d = v30;
    CGRectMakeWithDictionaryRepresentation([v27 objectForKeyedSubscript:*off_1E798B7A0], &rect);
    v119.origin.x = 0.0;
    v119.origin.y = 0.0;
    __asm { FMOV            V0.2D, #1.0 }

    v119.size = _Q0;
    CGRectMakeWithDictionaryRepresentation([v27 objectForKeyedSubscript:*off_1E798A5C8], &v119);
    if (a5)
    {
      v119 = CGRectInset(v119, 0.25, 0.0);
    }

    CVPixelBufferGetWidth(v15);
    CVPixelBufferGetHeight(v15);
    FigCaptureMetadataUtilitiesDenormalizeCropRect(v119.origin.x, v119.origin.y, v119.size.width, v119.size.height);
    if (a2)
    {
      MinX = CGRectGetMinX(*&v36);
    }

    else
    {
      MinX = CGRectGetMaxX(*&v36);
    }

    FigCaptureRoundFloatToMultipleOf(2, MinX);
    OUTLINED_FUNCTION_3_92();
    if (VTPixelRotationSessionRotateSubImage())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_7_6();
    }

    else
    {
      Width = CVPixelBufferGetWidth(v15);
      v98 = *&v22;
      v100 = v24;
      v42 = Width;
      v43 = vcvtd_n_f64_u64(Width, 1uLL);
      Height = CVPixelBufferGetHeight(v15);
      v96 = v26;
      v45 = vcvtd_n_f64_u64(Height, 1uLL);
      memset(&rect, 0, sizeof(rect));
      CGAffineTransformMakeTranslation(&rect, -(v42 * 0.5), -(Height * 0.5));
      Scale = CGAffineTransformMakeScale(&v118, 1.0 / a8, 1.0 / a8);
      OUTLINED_FUNCTION_2_104(Scale, v47, v48, v49, v50, v51, v52, v53, v88, v90, v92, v94, v96, v98, v100, v102, v105, *&a8, v110, v112, v115, v116, v117, *&v118.a, *&v118.b, *&v118.c, *&v118.d, *&v118.tx, *&v118.ty, *&v119.origin.x);
      *&rect.a = v119.origin;
      *&rect.c = v119.size;
      *&rect.tx = v120;
      Translation = CGAffineTransformMakeTranslation(&v118, v43, v45);
      OUTLINED_FUNCTION_2_104(Translation, v55, v56, v57, v58, v59, v60, v61, v89, v91, v93, v95, v97, v99, v101, v103, v106, v108, v111, v113, v115, v116, v117, *&v118.a, *&v118.b, *&v118.c, *&v118.d, *&v118.tx, *&v118.ty, *&v119.origin.x);
      *&rect.c = v119.size;
      *&rect.tx = v120;
      *&rect.a = v119.origin;
      v122.origin.x = OUTLINED_FUNCTION_3_92();
      v123 = CGRectApplyAffineTransform(v122, v62);
      y = v123.origin.y;
      v64 = v123.size.width;
      v65 = v123.size.height;
      *&v123.origin.x = v123.origin.x;
      FigCaptureRoundFloatToMultipleOf(1, *&v123.origin.x);
      v66 = y;
      FigCaptureRoundFloatToMultipleOf(1, v66);
      v67 = v64;
      FigCaptureRoundFloatToMultipleOf(2, v67);
      v68 = v65;
      FigCaptureRoundFloatToMultipleOf(2, v68);
      if (!VTPixelRotationSessionRotateSubImage())
      {
        v69 = objc_alloc(getVNImageRequestHandlerClass());
        v70 = MEMORY[0x1E695E0F8];
        v71 = [v69 initWithCVPixelBuffer:v21 options:MEMORY[0x1E695E0F8]];
        v72 = [objc_alloc(getVNTranslationalImageRegistrationRequestClass()) initWithTargetedCVPixelBuffer:v19 options:v70];
        v118.a = 0.0;
        *&v115 = v72;
        tx = *&v110;
        v74 = v114;
        if ([v71 performRequests:objc_msgSend(MEMORY[0x1E695DEC8] error:{"arrayWithObjects:count:", &v115, 1), &v118}])
        {
          v75 = [objc_msgSend(v72 "results")];
          if (v75)
          {
            v76 = v75;
            [v75 alignmentTransform];
            tx = rect.tx;
            [v76 alignmentTransform];
            v74 = *(&v120 + 1);
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_7_6();
            FigDebugAssert3();
            tx = *&v110;
            v74 = v114;
          }
        }

        v77 = 0.01;
        v78 = 0.05;
        if (v18)
        {
          v77 = 0.05;
        }

        else
        {
          v78 = 0.042;
        }

        if (v104)
        {
          v79 = v77 * 1.5;
        }

        else
        {
          v79 = v77;
        }

        v80 = tx / v109;
        if (v104)
        {
          v81 = v78 * 1.5;
        }

        else
        {
          v81 = v78;
        }

        v82 = CVPixelBufferGetWidth(ImageBuffer);
        v83 = round(v79 * v82);
        v84 = fabs(-v74 / v109);
        if (fabs(v80) <= round(v81 * v82) && v84 <= v83)
        {
          v86 = 0;
          *&v110 = v80;
          goto LABEL_31;
        }

LABEL_29:
        v86 = -12780;
LABEL_31:
        CFRelease(v19);
        goto LABEL_32;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_7_6();
    }

    FigDebugAssert3();
    goto LABEL_29;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_7_6();
  FigDebugAssert3();
  v86 = -12780;
  if (v19)
  {
    goto LABEL_31;
  }

LABEL_32:
  if (v21)
  {
    CFRelease(v21);
  }

  a7 = v105;
  if (v105)
  {
LABEL_35:
    *a7 = v86;
  }

  return *&v110;
}

- (uint64_t)initWithCameraInfoByPortType:sensorBinningFactor:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)initWithCameraInfoByPortType:sensorBinningFactor:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)initWithCameraInfoByPortType:sensorBinningFactor:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)initWithCameraInfoByPortType:sensorBinningFactor:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)initWithCameraInfoByPortType:sensorBinningFactor:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)initWithCameraInfoByPortType:sensorBinningFactor:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

@end