@interface BWPreviewRegistration
- (BWPreviewRegistration)initWithCameraInfoByPortType:(id)type sensorBinningFactor:(id)factor registrationType:(int)registrationType metalCommandQueue:(id)queue excludeStaticComponentFromAlignmentShifts:(BOOL)shifts;
- (CGPoint)computeApproximateCorrectionForWiderCamera:(opaqueCMSampleBuffer *)camera narrowerCameraPortType:(id)type narrowerPixelBufferDimensions:(id)dimensions widerToNarrowerCameraScale:(double)scale;
- (CGPoint)computeCameraShiftForWiderCamera:(opaqueCMSampleBuffer *)camera narrowerCamera:(opaqueCMSampleBuffer *)narrowerCamera widerToNarrowerCameraScale:(double)scale;
- (void)allocateResourcesAsynchronouslyWithVideoFormat:(id)format;
- (void)cleanupResources;
- (void)dealloc;
- (void)registerWiderCamera:(opaqueCMSampleBuffer *)camera narrowerCamera:(opaqueCMSampleBuffer *)narrowerCamera widerToNarrowerCameraScale:(double)scale isMacroScene:(BOOL)scene macroTransitionType:(int)type completionHandler:(id)handler;
@end

@implementation BWPreviewRegistration

- (BWPreviewRegistration)initWithCameraInfoByPortType:(id)type sensorBinningFactor:(id)factor registrationType:(int)registrationType metalCommandQueue:(id)queue excludeStaticComponentFromAlignmentShifts:(BOOL)shifts
{
  v17.receiver = self;
  v17.super_class = BWPreviewRegistration;
  v12 = [(BWPreviewRegistration *)&v17 init];
  if (!v12)
  {
    return v12;
  }

  v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v14 = dispatch_queue_create("com.apple.bwgraph.preview.registration", v13);
  v12->_registrationQueue = v14;
  if (!v14)
  {
    [BWPreviewRegistration initWithCameraInfoByPortType:sensorBinningFactor:registrationType:metalCommandQueue:excludeStaticComponentFromAlignmentShifts:];
LABEL_10:

    return 0;
  }

  if (registrationType == 1)
  {
    v12->_excludeStaticComponentFromAlignmentShifts = shifts;
    v12->_registrationProvider = [[BWAdaptiveCorrectionPreviewRegistrationProvider alloc] initWithCameraInfoByPortType:type excludeStaticComponentFromAlignmentShifts:v12->_excludeStaticComponentFromAlignmentShifts];
    v12->_previewRegistrationType = 1;
    v12->_metalCommandQueue = queue;
    registrationProvider = v12->_registrationProvider;
  }

  else
  {
    registrationProvider = [[BWVisionPreviewRegistrationProvider alloc] initWithCameraInfoByPortType:type sensorBinningFactor:factor];
    v12->_registrationProvider = registrationProvider;
    v12->_previewRegistrationType = 0;
  }

  if (!registrationProvider)
  {
    [BWPreviewRegistration initWithCameraInfoByPortType:sensorBinningFactor:registrationType:metalCommandQueue:excludeStaticComponentFromAlignmentShifts:];
    goto LABEL_10;
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWPreviewRegistration;
  [(BWPreviewRegistration *)&v3 dealloc];
}

- (void)allocateResourcesAsynchronouslyWithVideoFormat:(id)format
{
  registrationQueue = self->_registrationQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__BWPreviewRegistration_allocateResourcesAsynchronouslyWithVideoFormat___block_invoke;
  v4[3] = &unk_1E798F898;
  v4[4] = self;
  v4[5] = format;
  dispatch_async(registrationQueue, v4);
}

void __72__BWPreviewRegistration_allocateResourcesAsynchronouslyWithVideoFormat___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [objc_alloc(MEMORY[0x1E6991778]) initWithbundle:objc_msgSend(MEMORY[0x1E696AAE8] andOptionalCommandQueue:{"bundleForClass:", objc_opt_class()), *(*(a1 + 32) + 32)}];
    if (!v3)
    {
      __72__BWPreviewRegistration_allocateResourcesAsynchronouslyWithVideoFormat___block_invoke_cold_1();
    }
  }

  else
  {
    v3 = 0;
  }

  [*(*(a1 + 32) + 16) allocateResourcesWithVideoFormat:*(a1 + 40) metalContext:v3];

  if (*v2 == 1)
  {

    kdebug_trace();
  }
}

- (void)cleanupResources
{
  registrationQueue = self->_registrationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__BWPreviewRegistration_cleanupResources__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(registrationQueue, block);
}

- (void)registerWiderCamera:(opaqueCMSampleBuffer *)camera narrowerCamera:(opaqueCMSampleBuffer *)narrowerCamera widerToNarrowerCameraScale:(double)scale isMacroScene:(BOOL)scene macroTransitionType:(int)type completionHandler:(id)handler
{
  sampleBufferOut = 0;
  v18 = 0;
  BWCMSampleBufferCreateCopyIncludingMetadata(camera, &sampleBufferOut);
  BWCMSampleBufferCreateCopyIncludingMetadata(narrowerCamera, &v18);
  registrationQueue = self->_registrationQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __138__BWPreviewRegistration_registerWiderCamera_narrowerCamera_widerToNarrowerCameraScale_isMacroScene_macroTransitionType_completionHandler___block_invoke;
  v15[3] = &unk_1E79905A0;
  v15[6] = sampleBufferOut;
  v15[7] = v18;
  *&v15[8] = scale;
  sceneCopy = scene;
  typeCopy = type;
  v15[4] = self;
  v15[5] = handler;
  dispatch_async(registrationQueue, v15);
}

void __138__BWPreviewRegistration_registerWiderCamera_narrowerCamera_widerToNarrowerCameraScale_isMacroScene_macroTransitionType_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  if (v5)
  {
    [v5 registerWiderCamera:*(a1 + 48) narrowerCamera:*(a1 + 56) widerToNarrowerCameraScale:*(a1 + 76) isMacroScene:*(a1 + 72) macroTransitionType:*(a1 + 64)];
    v4 = *(a1 + 32);
  }

  if ((*(v4 + 40) & 1) == 0)
  {
    v6 = [objc_msgSend(CMGetAttachment(*(a1 + 48) *off_1E798A3C8];
    if (v6)
    {
      v7 = 0.05;
    }

    else
    {
      v7 = 0.042;
    }

    if (v6)
    {
      v8 = 0.05;
    }

    else
    {
      v8 = 0.01;
    }

    v9 = *(a1 + 72);
    if (*(a1 + 76))
    {
      if (!v9)
      {
        v10 = 1.5;
LABEL_18:
        v7 = v7 * v10;
        v8 = v8 * v10;
LABEL_19:
        ImageBuffer = CMSampleBufferGetImageBuffer(*(a1 + 48));
        Width = CVPixelBufferGetWidth(ImageBuffer);
        v13 = round(v7 * Width);
        v14 = round(v8 * Width);
        v15 = &v23;
        v16 = 3;
        do
        {
          if (*v15 == 1 && (fabs(*(v15 + 1)) > v13 || fabs(*(v15 + 2)) > v14))
          {
            *v15 = 0;
          }

          v15 = (v15 + 24);
          --v16;
        }

        while (v16);
        goto LABEL_25;
      }
    }

    else if (!v9)
    {
      goto LABEL_19;
    }

    v10 = 1.5;
    if (*(*(a1 + 32) + 24) == 1)
    {
      v10 = 2.5;
    }

    goto LABEL_18;
  }

LABEL_25:
  v17 = *(a1 + 48);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(a1 + 56);
  if (v18)
  {
    CFRelease(v18);
  }

  if (*v3 == 1)
  {
    kdebug_trace();
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    v20 = *(v19 + 16);
    v21[2] = v25;
    v21[3] = v26;
    v22 = v27;
    v21[0] = v23;
    v21[1] = v24;
    v20(v19, v21);
  }

  objc_autoreleasePoolPop(v2);
}

- (CGPoint)computeCameraShiftForWiderCamera:(opaqueCMSampleBuffer *)camera narrowerCamera:(opaqueCMSampleBuffer *)narrowerCamera widerToNarrowerCameraScale:(double)scale
{
  v9 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  [(BWPreviewRegistrationProvider *)self->_registrationProvider computeCameraShiftForWiderCamera:camera narrowerCamera:narrowerCamera widerToNarrowerCameraScale:scale];
  v11 = v10;
  v13 = v12;
  if (*v9 == 1)
  {
    kdebug_trace();
  }

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGPoint)computeApproximateCorrectionForWiderCamera:(opaqueCMSampleBuffer *)camera narrowerCameraPortType:(id)type narrowerPixelBufferDimensions:(id)dimensions widerToNarrowerCameraScale:(double)scale
{
  if (objc_opt_respondsToSelector())
  {
    [(BWPreviewRegistrationProvider *)self->_registrationProvider computeApproximateCorrectionForWiderCamera:camera narrowerCameraPortType:*off_1E798A0D8 narrowerPixelBufferDimensions:dimensions widerToNarrowerCameraScale:scale];
  }

  else
  {
    v10 = *MEMORY[0x1E695EFF8];
    v11 = *(MEMORY[0x1E695EFF8] + 8);
  }

  result.y = v11;
  result.x = v10;
  return result;
}

- (uint64_t)initWithCameraInfoByPortType:sensorBinningFactor:registrationType:metalCommandQueue:excludeStaticComponentFromAlignmentShifts:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithCameraInfoByPortType:sensorBinningFactor:registrationType:metalCommandQueue:excludeStaticComponentFromAlignmentShifts:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t __72__BWPreviewRegistration_allocateResourcesAsynchronouslyWithVideoFormat___block_invoke_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end