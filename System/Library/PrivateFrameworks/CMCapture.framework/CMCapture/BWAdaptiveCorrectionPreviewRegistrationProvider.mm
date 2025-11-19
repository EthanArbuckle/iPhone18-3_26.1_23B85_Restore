@interface BWAdaptiveCorrectionPreviewRegistrationProvider
- ($65FF825F6F0E105C2F171BD802D3B474)registerWiderCamera:(SEL)a3 narrowerCamera:(opaqueCMSampleBuffer *)a4 widerToNarrowerCameraScale:(opaqueCMSampleBuffer *)a5 isMacroScene:(double)a6 macroTransitionType:(BOOL)a7;
- (BWAdaptiveCorrectionPreviewRegistrationProvider)initWithCameraInfoByPortType:(id)a3 excludeStaticComponentFromAlignmentShifts:(BOOL)a4;
- (CGPoint)computeApproximateCorrectionForWiderCamera:(opaqueCMSampleBuffer *)a3 narrowerCameraPortType:(id)a4 narrowerPixelBufferDimensions:(id)a5 widerToNarrowerCameraScale:(double)a6;
- (CGPoint)computeCameraShiftForWiderCamera:(opaqueCMSampleBuffer *)a3 narrowerCamera:(opaqueCMSampleBuffer *)a4 widerToNarrowerCameraScale:(double)a5;
- (void)dealloc;
@end

@implementation BWAdaptiveCorrectionPreviewRegistrationProvider

- (BWAdaptiveCorrectionPreviewRegistrationProvider)initWithCameraInfoByPortType:(id)a3 excludeStaticComponentFromAlignmentShifts:(BOOL)a4
{
  v4 = a4;
  v9.receiver = self;
  v9.super_class = BWAdaptiveCorrectionPreviewRegistrationProvider;
  v6 = [(BWAdaptiveCorrectionPreviewRegistrationProvider *)&v9 init];
  if (v6)
  {
    v7 = [[BWAdaptiveCorrectionPreviewRegistration alloc] initWithCameraInfoByPortType:a3 excludeStaticComponentFromAlignmentShifts:v4];
    v6->_registration = v7;
    if (!v7)
    {
      [BWAdaptiveCorrectionPreviewRegistrationProvider initWithCameraInfoByPortType:v6 excludeStaticComponentFromAlignmentShifts:?];
      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  [(BWAdaptiveCorrectionPreviewRegistrationProvider *)self cleanupResources];

  v3.receiver = self;
  v3.super_class = BWAdaptiveCorrectionPreviewRegistrationProvider;
  [(BWAdaptiveCorrectionPreviewRegistrationProvider *)&v3 dealloc];
}

- ($65FF825F6F0E105C2F171BD802D3B474)registerWiderCamera:(SEL)a3 narrowerCamera:(opaqueCMSampleBuffer *)a4 widerToNarrowerCameraScale:(opaqueCMSampleBuffer *)a5 isMacroScene:(double)a6 macroTransitionType:(BOOL)a7
{
  retstr->var0[2].var1.y = 0.0;
  retstr->var0[1].var1 = 0u;
  *&retstr->var0[2].var0 = 0u;
  v11 = MEMORY[0x1E695F058];
  *&retstr->var0[0].var0 = 0u;
  *&retstr->var0[0].var1.y = 0u;
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  memset(__src, 0, sizeof(__src));
  result = [(BWAdaptiveCorrectionPreviewRegistration *)self->_registration registerWiderSampleBufferUsingADC:a4 narrowerSampleBuffer:a5 narrowerRect:*&a8 macroTransitionType:__src narrowerToWiderTransformsOut:v12, v13, v14, v15];
  if (!result)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(a5);
    Width = CVPixelBufferGetWidth(ImageBuffer);
    LODWORD(ImageBuffer) = CVPixelBufferGetHeight(ImageBuffer);
    v19 = CMGetAttachment(a5, *off_1E798A3C8, 0);
    rect.origin.y = 0.0;
    rect.origin.x = 0.0;
    __asm { FMOV            V0.2D, #1.0 }

    rect.size = _Q0;
    CGRectMakeWithDictionaryRepresentation([v19 objectForKeyedSubscript:*off_1E798A5C8], &rect);
    memcpy(v27, __src, 0x120uLL);
    result = [BWAdaptiveCorrectionPreviewRegistration flattenNarrowerToWiderTransforms:v27 narrowerDimensions:Width | (ImageBuffer << 32) narrowerFinalCropRect:0 atNarrowerToWiderCameraScale:rect.origin.x useYAnchorAtHeightCenter:rect.origin.y, rect.size.width, rect.size.height, 1.0 / a6];
    p_var1 = &retstr->var0[0].var1;
    for (i = 64; i != 352; i += 96)
    {
      *p_var1 = vnegq_f64(*&v27[i + 288]);
      LOBYTE(p_var1[-1].y) = 1;
      p_var1 = (p_var1 + 24);
    }
  }

  return result;
}

- (CGPoint)computeCameraShiftForWiderCamera:(opaqueCMSampleBuffer *)a3 narrowerCamera:(opaqueCMSampleBuffer *)a4 widerToNarrowerCameraScale:(double)a5
{
  memset(__src, 0, sizeof(__src));
  if ([(BWAdaptiveCorrectionPreviewRegistration *)self->_registration computeAlignmentFromWiderSampleBuffer:a3 narrowerSampleBuffer:a4 narrowerToWiderTransformsOut:__src])
  {
    v7 = *MEMORY[0x1E695EFF8];
    v8 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(a4);
    Width = CVPixelBufferGetWidth(ImageBuffer);
    LODWORD(ImageBuffer) = CVPixelBufferGetHeight(ImageBuffer);
    v11 = CMGetAttachment(a4, *off_1E798A3C8, 0);
    rect.origin.y = 0.0;
    rect.origin.x = 0.0;
    __asm { FMOV            V0.2D, #1.0 }

    rect.size = _Q0;
    CGRectMakeWithDictionaryRepresentation([v11 objectForKeyedSubscript:*off_1E798A5C8], &rect);
    memcpy(v17, __src, sizeof(v17));
    [BWAdaptiveCorrectionPreviewRegistration flattenNarrowerToWiderTransforms:v17 narrowerDimensions:Width | (ImageBuffer << 32) narrowerFinalCropRect:1 atNarrowerToWiderCameraScale:rect.origin.x useYAnchorAtHeightCenter:rect.origin.y, rect.size.width, rect.size.height, 1.0 / a5];
    v7 = -v18;
    v8 = -v19;
  }

  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)computeApproximateCorrectionForWiderCamera:(opaqueCMSampleBuffer *)a3 narrowerCameraPortType:(id)a4 narrowerPixelBufferDimensions:(id)a5 widerToNarrowerCameraScale:(double)a6
{
  memset(__src, 0, sizeof(__src));
  v7 = 1.0 / a6;
  if ([(BWAdaptiveCorrectionPreviewRegistration *)self->_registration computeApproximateCorrectionForWiderCamera:a3 narrowerCameraPortType:a4 narrowerPixelBufferDimensions:a5 narrowerToWiderCameraScale:__src narrowerToWiderTransformsOut:1.0 / a6])
  {
    v8 = *MEMORY[0x1E695EFF8];
    v9 = *(MEMORY[0x1E695EFF8] + 8);
    [BWAdaptiveCorrectionPreviewRegistrationProvider computeApproximateCorrectionForWiderCamera:narrowerCameraPortType:narrowerPixelBufferDimensions:widerToNarrowerCameraScale:];
  }

  else
  {
    memcpy(v12, __src, sizeof(v12));
    [BWAdaptiveCorrectionPreviewRegistration flattenNarrowerToWiderTransforms:v12 narrowerDimensions:a5 narrowerFinalCropRect:1 atNarrowerToWiderCameraScale:0.0 useYAnchorAtHeightCenter:0.0, 1.0, 1.0, v7];
    v8 = -v13;
    v9 = -v14;
  }

  v10 = v8;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)initWithCameraInfoByPortType:(void *)a1 excludeStaticComponentFromAlignmentShifts:.cold.1(void *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  FigDebugAssert3();
}

- (uint64_t)computeApproximateCorrectionForWiderCamera:narrowerCameraPortType:narrowerPixelBufferDimensions:widerToNarrowerCameraScale:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

@end