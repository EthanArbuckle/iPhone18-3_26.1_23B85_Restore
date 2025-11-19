uint64_t FigDraw420Rectangle(__CVBuffer *a1, int a2, int a3, int a4, int a5, char a6, char a7, char a8)
{
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  if (!a1 || (a3 | a2) < 0 || WidthOfPlane <= a2 || a5 < 1 || a4 < 1 || HeightOfPlane <= a3)
  {
    FigDraw420Rectangle_cold_1(&v30);
    return v30;
  }

  v18 = a4 + a2;
  if (WidthOfPlane >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = WidthOfPlane;
  }

  v29 = WidthOfPlane;
  if (v19 > a2)
  {
    v28 = HeightOfPlane;
    v27 = v18;
    v21 = a2;
    do
    {
      FigDraw420Color(a1, v21++, a3, a6, a7, a8);
    }

    while (v19 != v21);
    v20 = a5 + a3;
    HeightOfPlane = v28;
    if (a5 + a3 > v28 || v19 <= a2)
    {
      v18 = v27;
    }

    else
    {
      v22 = a2;
      do
      {
        FigDraw420Color(a1, v22++, v20 - 1, a6, a7, a8);
      }

      while (v19 != v22);
      v18 = v27;
      HeightOfPlane = v28;
    }
  }

  else
  {
    v20 = a5 + a3;
  }

  v23 = a3 + 1;
  if (HeightOfPlane >= v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = HeightOfPlane;
  }

  if (v23 >= v24)
  {
    return 0;
  }

  v25 = v23;
  do
  {
    FigDraw420Color(a1, a2, v25++, a6, a7, a8);
  }

  while (v24 != v25);
  result = 0;
  if (v18 <= v29 && v23 < v24)
  {
    do
    {
      FigDraw420Color(a1, v18 - 1, v23++, a6, a7, a8);
    }

    while (v24 != v23);
    return 0;
  }

  return result;
}

uint64_t FigContinuityCaptureSetUserPreferenceDisabled(int a1)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v2 = MEMORY[0x1E695E4D0];
  if (!a1)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  v3 = *MEMORY[0x1E695E8B8];
  CFPreferencesSetValue(@"ContinuityCaptureDisabled", *v2, @"com.apple.cameracapture", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E695DF00] now];
  }

  if (dword_1EB58E640)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CFPreferencesSetValue(@"ContinuityCaptureLastUsedDate", v4, @"com.apple.cameracapture.volatile", v3, *MEMORY[0x1E695E8B0]);
  v6 = getpid();
  return FigCaptureLogContinuityCameraPowerEvent(v6, a1 ^ 1u);
}

id BWUBCreateNRProcessorControllerConfiguration(void *a1, uint64_t *a2)
{
  if (!a2)
  {
    BWUBCreateNRProcessorControllerConfiguration_cold_1();
    return 0;
  }

  v4 = [(BWUBNodeConfiguration *)a1 stillImageFusionScheme];
  v5 = 0;
  if (v4 >= 3)
  {
    if (v4 - 4 >= 2)
    {
      if (v4 != 3)
      {
LABEL_8:
        [v5 setSensorConfigurationsByPortType:-[BWUBNodeConfiguration sensorConfigurationsByPortType](a1)];
        [v5 setMetalCommandQueue:{objc_msgSend(a1, "metalCommandQueue")}];
        [v5 setFigThreadPriority:{objc_msgSend(a1, "figThreadPriority")}];
        [v5 setAlwaysAllowModifyingInputBuffers:-[BWUBNodeConfiguration alwaysAllowModifyingInputBuffers](a1)];
        [v5 setUnifiedBracketingFusionSupportEnabled:-[BWUBNodeConfiguration unifiedBracketingFusionSupportEnabled](a1)];
        [v5 setLowLightFusionEnabled:-[BWUBNodeConfiguration digitalFlashSupportEnabled](a1)];
        [v5 setDeepFusionEnabled:-[BWUBNodeConfiguration deepFusionSupportEnabled](a1)];
        [v5 setDeepFusionWaitForProcessingToFinish:-[BWUBNodeConfiguration deepFusionWaitForPreprocessingToFinish](a1)];
        [v5 setDeferredCaptureSupportEnabled:{objc_msgSend(a1, "deferredCaptureSupportEnabled")}];
        [v5 setDeferredPhotoProcessorEnabled:{objc_msgSend(a1, "deferredPhotoProcessorEnabled")}];
        [v5 setGainMapMainImageDownscalingFactor:-[BWUBNodeConfiguration gainMapMainImageDownscalingFactor](a1)];
        [v5 setDepthDataDeliveryEnabled:-[BWUBNodeConfiguration depthDataDeliveryEnabled](a1)];
        [v5 setGreenGhostMitigationVersion:-[BWUBNodeConfiguration greenGhostMitigationVersion](a1)];
        [v5 setDemosaicedRawPixelFormat:-[BWUBNodeConfiguration demosaicedRawPixelFormat](a1)];
        [v5 setDemosaicedRawEnabled:-[BWUBNodeConfiguration demosaicedRawEnabled](a1)];
        [v5 setRawColorCalibrationsByPortType:-[BWUBNodeConfiguration rawColorCalibrationsByPortType](a1)];
        [v5 setRawLensShadingCorrectionCoefficientsByPortType:-[BWUBNodeConfiguration rawLensShadingCorrectionCoefficientsByPortType](a1)];
        return v5;
      }

      v6 = off_1E79895B0;
      v7 = 1;
    }

    else
    {
      v6 = off_1E7989598;
      v7 = 6;
    }

    *a2 = v7;
    v5 = objc_alloc_init(*v6);
    goto LABEL_8;
  }

  return v5;
}

uint64_t BWStillImageCoordinatorAddAttachmentsToSampleBuffer(const void *a1, void *a2)
{
  if (![a2 requestedSettings])
  {
    v4 = CMGetAttachment(a1, @"BWStillImageCaptureSettings", 0);
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (v4)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@" with capture settings ID '%lld'", objc_msgSend(v4, "settingsID")];
    }

    v6 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(7, v6, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageCoordinatorNode.m", 3436, @"LastShownDate:BWStillImageCoordinatorNode.m:3436", @"LastShownBuild:BWStillImageCoordinatorNode.m:3436", 0);
    free(v6);
  }

  CMSetAttachment(a1, @"StillSettings", a2, 1u);
  CMSetAttachment(a1, @"StillImageSettings", [a2 requestedSettings], 1u);
  CMSetAttachment(a1, @"PhotoManifest", [objc_msgSend(a2 "processingSettings")], 1u);
  if (([objc_msgSend(a2 "captureSettings")] & 0x4000) != 0)
  {
    BWStillImageSetProcessingFlagsForSampleBuffer(a1, 512);
  }

  v7 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", FigCaptureMetadataUtilitiesStillImageExifOrientationFromRotationDegreesAndMirrored(objc_msgSend(objc_msgSend(a2, "requestedSettings"), "outputRotationDegrees"), objc_msgSend(objc_msgSend(a2, "requestedSettings"), "outputMirroring"), 0, objc_msgSend(objc_msgSend(a2, "requestedSettings"), "metadata"))), *off_1E798A5B0}];
  [objc_msgSend(a2 "requestedSettings")];
  FigCaptureMetadataUtilitiesRefineFinalCropRects(v8);
  return BWAddStillImageProcessingMetadataToMetadata(a2, v7);
}

void sub_1ACAB7A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void sub_1ACAB7D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ACAB825C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Block_object_dispose((v1 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_94_0(uint64_t a1)
{
  v6 = *(*(v1 + 32) + v3);

  return [v6 setObject:a1 forKeyedSubscript:v2];
}

uint64_t OUTLINED_FUNCTION_95_4(void *a1, const char *a2)
{

  return [a1 getInUseCompressedBufferCount:v3 - 84 inUseCompressedBytes:v3 - 96 maxInUseCompressedBytes:v3 - 104 forUncompressedEquivalentFreeBufferCount:v2];
}

uint64_t OUTLINED_FUNCTION_98_3()
{

  return [v0 portType];
}

float stdDeviation(void *a1)
{
  v2 = [a1 count];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    v6 = 0.0;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        [v9 floatValue];
        v6 = v6 + v10 * v10;
        [v9 floatValue];
        v7 = v7 + v11;
      }

      v4 = [a1 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
    v7 = 0.0;
  }

  return sqrt((v6 - v2 * (v7 / v2 * (v7 / v2))) / v2);
}

void sub_1ACAC174C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x1880], 8);
  _Block_object_dispose(&STACK[0x18A0], 8);
  _Block_object_dispose(&STACK[0x18C0], 8);
  _Block_object_dispose(&STACK[0x18E0], 8);
  _Block_object_dispose(&STACK[0x1900], 8);
  _Block_object_dispose(&STACK[0x1930], 8);
  _Block_object_dispose(&STACK[0x1950], 8);
  _Block_object_dispose(&STACK[0x1980], 8);
  _Block_object_dispose((v1 - 216), 8);
  _Unwind_Resume(a1);
}

void sub_1ACAC1B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1ACAC20BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose((v66 - 232), 8);
  _Block_object_dispose((v66 - 200), 8);
  _Block_object_dispose((v66 - 168), 8);
  _Block_object_dispose((v66 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t scfr_averageForegroundDisparityForRect(__CVBuffer *a1, _WORD *a2, int a3, int a4, CGFloat x, CGFloat y, CGFloat a7, CGFloat a8)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v19 = FigDepthBytesPerPixelForDepthFormat(PixelFormatType);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  if (a4 || a3)
  {
    memset(v50, 0, 48);
    FigCaptureMakeMirrorAndRotateVideoTransform(1, 1, a3, a4, v50);
    v49 = v50[0];
    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = a7;
    v51.size.height = a8;
    v52 = CGRectApplyAffineTransform(v51, &v49);
    x = v52.origin.x;
    y = v52.origin.y;
    a7 = v52.size.width;
    a8 = v52.size.height;
  }

  v22 = (x * Width);
  if (Width - 1 < v22)
  {
    v22 = Width - 1;
  }

  v23 = v22 & ~(v22 >> 31);
  v24 = Height - 1;
  if (Height - 1 >= (y * Height))
  {
    v24 = (y * Height);
  }

  v25 = v24 & ~(v24 >> 31);
  if ((Width - v23) >= (a7 * Width))
  {
    v26 = (a7 * Width);
  }

  else
  {
    v26 = Width - v23;
  }

  if (Height - v25 >= (a8 * Height))
  {
    v27 = (a8 * Height);
  }

  else
  {
    v27 = Height - v25;
  }

  bzero(v50, 0x3E8uLL);
  if (v27 < 1)
  {
    return 0;
  }

  v28 = 0;
  v29 = 0;
  v30 = BaseAddress + 2 * BytesPerRow / v19 * v25 + 2 * v23;
  do
  {
    v31 = v26;
    if (v26 >= 1)
    {
      do
      {
        __asm { FCMP            H2, #0 }

        if (_NF == _VF && _H2 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(5.0)))
        {
          __asm { FCVT            S2, H2 }

          ++*(&v50[0].a + (_S2 / 0.020004));
          ++v29;
        }

        v30 += 2;
        --v31;
      }

      while (v31);
    }

    v30 += 2 * (BytesPerRow / v19 - (v26 & ~(v26 >> 31)));
    ++v28;
  }

  while (v28 != v27);
  if (v29 < 2)
  {
    return 0;
  }

  v39 = 0;
  v40 = v29 / 2;
  _H1 = 0;
  v42 = 249;
  do
  {
    v43 = *(&v50[0].a + v42);
    if (v43 >= (v40 - v39))
    {
      v43 = v40 - v39;
    }

    __asm { FCVT            S1, H1 }

    _S1 = _S1 + (v43 * (v42 * 0.020004));
    __asm { FCVT            H1, S1 }

    v39 += v43;
    _CF = v42-- != 0;
  }

  while (_CF && v39 < v40);
  result = 0;
  if (a2)
  {
    if (v39)
    {
      __asm { FCVT            S0, H1 }

      _S0 = _S0 / v39;
      __asm { FCVT            H0, S0 }

      *a2 = LOWORD(_S0);
      return 1;
    }
  }

  return result;
}

uint64_t powerBlurNoiseReductionGPUReleaseBuffers(uint64_t a1)
{
  WaitForInitializationToFinish(a1);
  [MEMORY[0x1E6977FE8] setCurrentContext:*(a1 + 16)];
  glActiveTexture(0x84C0u);
  glBindTexture(0xDE1u, *(a1 + 64));
  glTexImage2D(0xDE1u, 0, 6408, 0, 0, 0, 0x1908u, 0x1401u, 0);
  glBindTexture(0xDE1u, *(a1 + 76));
  glTexImage2D(0xDE1u, 0, 6408, 0, 0, 0, 0x1908u, 0x1401u, 0);
  glBindTexture(0xDE1u, *(a1 + 80));
  glTexImage2D(0xDE1u, 0, 6408, 0, 0, 0, 0x1908u, 0x1401u, 0);
  glBindTexture(0xDE1u, 0);
  *(a1 + 44) = -1;
  glDeleteTextures(1, (a1 + 36));
  glGenTextures(1, (a1 + 36));
  glFinish();
  v2 = MEMORY[0x1E6977FE8];

  return [v2 setCurrentContext:0];
}

void WaitForInitializationToFinish(uint64_t a1)
{
  if (*a1 != 1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      block[5] = v1;
      block[6] = v2;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __WaitForInitializationToFinish_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_sync(v3, block);
    }
  }
}

void powerBlurNoiseReductionGPUContextInit(int a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  v3 = -2;
  if (a1 == 3)
  {
    v4 = 1;
  }

  else
  {
    v3 = 0;
    v4 = a1 == 2;
  }

  if (a1 == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = v3;
  }

  v6 = a1 == 1 || v4;
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  global_queue = dispatch_get_global_queue(v5, 0);
  v9 = dispatch_queue_create_with_target_V2("noise-reduction-context-init", v7, global_queue);
  a2[1] = v9;
  if (v6 && v9)
  {

    dispatch_async_f(v9, a2, powerBlurNoiseReductionGPUContextInit_internal);
  }

  else
  {

    powerBlurNoiseReductionGPUContextInit_internal();
  }
}

uint64_t powerBlurNoiseReductionGPUContextInit_internal()
{
  pixels = 0xFF00FF0000FF00FFLL;
  v29 = MEMORY[0x1EEE9AC00]();
  v0 = *(v29 + 52);
  v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
  *__s = 1;
  if (!v1)
  {
    powerBlurNoiseReductionGPUContextInit_internal_cold_2();
    goto LABEL_5;
  }

  v2 = v1;
  [v1 setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E6977FF0]];
  v3 = [objc_alloc(MEMORY[0x1E6977FE8]) initWithAPI:2 properties:v2];

  if (!v3)
  {
    powerBlurNoiseReductionGPUContextInit_internal_cold_1();
LABEL_5:
    v4 = v29;
    *(v29 + 16) = 0;
LABEL_49:
    result = [MEMORY[0x1E6977FE8] setCurrentContext:0];
    *v4 = 2;
    return result;
  }

  if ([v3 setParameter:608 to:__s])
  {

    goto LABEL_5;
  }

  *(v29 + 16) = v3;
  [MEMORY[0x1E6977FE8] setCurrentContext:v3];
  if (!*(v29 + 60))
  {
    v5 = *(v29 + 24);
    if (v5 != 1)
    {
      if (v5)
      {
        v5 = 1;
      }

      else
      {
        v5 = 2;
      }
    }

    *__s = v5;
    [*(v29 + 16) setParameter:608 to:__s];
  }

  glGetIntegerv(0xD33u, &params);
  v6 = params;
  *(v29 + 28) = params;
  *(v29 + 32) = v6;
  glGetIntegerv(0x84E8u, &params);
  v7 = params;
  if (*(v29 + 28) < params)
  {
    *(v29 + 28) = params;
  }

  if (*(v29 + 32) < v7)
  {
    *(v29 + 32) = v7;
  }

  glGetIntegerv(0xD3Au, &params);
  if (*(v29 + 28) < params)
  {
    *(v29 + 28) = params;
  }

  if (*(v29 + 32) < v37)
  {
    *(v29 + 32) = v37;
  }

  v8 = 1;
  glGenFramebuffers(1, (v29 + 40));
  glGenTextures(1, (v29 + 36));
  glGenTextures(1, (v29 + 64));
  glGenTextures(1, (v29 + 76));
  glGenTextures(1, (v29 + 80));
  glGenTextures(1, (v29 + 68));
  glGenTextures(1, (v29 + 72));
  v9 = 0;
  v10 = v32;
  *(v29 + 44) = -1;
  do
  {
    v11 = v8;
    v12 = (v8 & 1) == 0;
    if (v8)
    {
      v13 = 5;
    }

    else
    {
      v13 = 8;
    }

    if (v12)
    {
      v14 = 8;
    }

    else
    {
      v14 = 5;
    }

    snprintf(__str, 0x200uLL, "attribute vec2 position;\nattribute vec2 texcoord;\nuniform vec2 texStep;\nvarying vec2 tex_coord[%d];\nvoid main()\n{\n  int i;\n  float scale=1.0;\n  gl_Position = vec4(position.x, position.y, 0, 1);\n  tex_coord[0] = texcoord;\n  for (i=1 ; i<%d ; i++) {\n    tex_coord[i] = texcoord + vec2(scale) * texStep;\n    scale = -scale;\n    if (scale > 0.0) {\n      scale += 1.0;\n    }\n  }\n}\n", v14, v14);
    if (strlen(__str) > 0x1FE)
    {
      goto LABEL_48;
    }

    if ((v13 & 1) != 0 || !*(v29 + 56))
    {
      snprintf(__s, 0x800uLL, "#define TC_COUNT %d\nprecision mediump float;\nuniform sampler2D sampler;\nuniform mediump sampler2D samplerRecip;\nuniform vec2 threshold;\nvarying highp vec2 tex_coord[TC_COUNT];\n#define weightUV()  uvDelta = abs(uv0-uvN);  uvDist = uvDelta.xz + uvDelta.yw;  uvMask = vec2(lessThanEqual(uvDist, threshold));  accum += uvN * vec4(uvMask.xxyy);  count += uvMask;\n#define weightUVWithScale(SCALE)  uvDelta = abs(uv0-uvN);  uvDist = uvDelta.xz + uvDelta.yw;  uvMask = vec2(lessThanEqual(uvDist, threshold));  accum += SCALE * uvN * vec4(uvMask.xxyy);  count += SCALE * uvMask;\n\nvoid main()\n{\n  int i;\n  vec2 recip, uvDist;\n  vec4 uvDelta, uvN, uv0 = texture2D(sampler, tex_coord[0]);\n  vec2 uvMask, count = vec2(0.0);\n  vec4 accum = uv0;\n  uvN = uv0.zwxy;\n  weightUV();\n  for (i=1 ; i<TC_COUNT-%d ; i++) {\n    uvN = texture2D(sampler, tex_coord[i]);\n    weightUV();\n    uvN = uvN.zwxy;\n    weightUV();\n  }\n  if (%s) {\n    uvN = texture2D(sampler, tex_coord[TC_COUNT-2]);\n    weightUVWithScale(2.0);\n    uvN = uvN.zwxy;\n    weightUVWithScale(2.0);\n    uvN = texture2D(sampler, tex_coord[TC_COUNT-1]);\n    weightUV();\n    uvN = uvN.zwxy;\n    weightUV();\n  }\n  recip = texture2D(samplerRecip, count/%d.0).rg;\n  gl_FragColor = accum * recip.xxyy + vec4(0.4/256.0, 0.0, 0.4/256.0, 0.0);\n}\n", v13, 0, "false", 32);
    }

    else
    {
      snprintf(__s, 0x800uLL, "#define TC_COUNT %d\nprecision mediump float;\nuniform sampler2D sampler;\nuniform mediump sampler2D samplerRecip;\nuniform vec2 threshold;\nvarying highp vec2 tex_coord[TC_COUNT];\n#define weightUV()  uvDelta = abs(uv0-uvN);  uvDist = uvDelta.xz + uvDelta.yw;  uvMask = vec2(lessThanEqual(uvDist, threshold));  accum += uvN * vec4(uvMask.xxyy);  count += uvMask;\n#define weightUVWithScale(SCALE)  uvDelta = abs(uv0-uvN);  uvDist = uvDelta.xz + uvDelta.yw;  uvMask = vec2(lessThanEqual(uvDist, threshold));  accum += SCALE * uvN * vec4(uvMask.xxyy);  count += SCALE * uvMask;\n\nvoid main()\n{\n  int i;\n  vec2 recip, uvDist;\n  vec4 uvDelta, uvN, uv0 = texture2D(sampler, tex_coord[0]);\n  vec2 uvMask, count = vec2(0.0);\n  vec4 accum = uv0;\n  uvN = uv0.zwxy;\n  weightUV();\n  for (i=1 ; i<TC_COUNT-%d ; i++) {\n    uvN = texture2D(sampler, tex_coord[i]);\n    weightUV();\n    uvN = uvN.zwxy;\n    weightUV();\n  }\n  if (%s) {\n    uvN = texture2D(sampler, tex_coord[TC_COUNT-2]);\n    weightUVWithScale(2.0);\n    uvN = uvN.zwxy;\n    weightUVWithScale(2.0);\n    uvN = texture2D(sampler, tex_coord[TC_COUNT-1]);\n    weightUV();\n    uvN = uvN.zwxy;\n    weightUV();\n  }\n  recip = texture2D(samplerRecip, count/%d.0).rg;\n  gl_FragColor = accum * recip.xxyy + vec4(0.4/256.0, 0.0, 0.4/256.0, 0.0);\n}\n", v13, 2, "true", 32);
    }

    if (strlen(__s) >= 0x7FF)
    {
LABEL_48:
      v4 = v29;
      goto LABEL_49;
    }

    ProgramFromSources = gl_UtilsCreateProgramFromSources(__str, __s);
    v16 = (v29 + 84 + 28 * v9);
    *v16 = ProgramFromSources;
    v16[1] = glGetAttribLocation(ProgramFromSources, "position");
    v16[2] = glGetAttribLocation(*v16, "texcoord");
    v16[4] = glGetUniformLocation(*v16, "sampler");
    v16[5] = glGetUniformLocation(*v16, "samplerRecip");
    v16[3] = glGetUniformLocation(*v16, "texStep");
    v16[6] = glGetUniformLocation(*v16, "threshold");
    glUseProgram(*v16);
    glUniform1i(v16[4], 0);
    glUniform1i(v16[5], 2);
    v8 = 0;
    *v10 = *v16;
    v10 = v33;
    v9 = 1;
  }

  while ((v11 & 1) != 0);
  v17 = gl_UtilsCreateProgramFromSources("attribute vec2 position;\nattribute vec2 texcoord;\nuniform vec2 tex_step;\nuniform vec2 tex_dim;\nvarying vec2 tex_coord[2];\nvarying vec2 tex_coord_01;\nvoid main()\n{\n  gl_Position = vec4(position.x, position.y, 1, 1);\n  tex_coord[0] = texcoord.yx - tex_step * vec2(+0.5, +0.5);\n  tex_coord[1] = texcoord.yx + tex_step * vec2(+0.25, +0.25);\n  tex_coord_01 = texcoord * tex_dim;\n}\n", "precision mediump float;\nuniform sampler2D sampler_uv;\nuniform sampler2D sampler_01;\nvarying highp vec2 tex_coord[2];\nvarying highp vec2 tex_coord_01;\nvoid main()\n{\n    vec4 uv0, uv1, mask, d;\n    uv0 = texture2D(sampler_uv, tex_coord[0]);\n    uv1 = texture2D(sampler_uv, tex_coord[1]);\n    mask = texture2D(sampler_01, tex_coord_01);\n    d.xy = uv0.xy * mask.xx;\n    d.xy = uv0.zw * mask.yy + d.xy;\n    d.zw = uv1.xy * mask.zz;\n    d.zw = uv1.zw * mask.ww + d.zw;\n    gl_FragColor = d;\n}\n");
  *(v29 + 140) = v17;
  *(v29 + 144) = glGetAttribLocation(v17, "position");
  *(v29 + 148) = glGetAttribLocation(*(v29 + 140), "texcoord");
  *(v29 + 152) = glGetUniformLocation(*(v29 + 140), "tex_step");
  *(v29 + 156) = glGetUniformLocation(*(v29 + 140), "tex_dim");
  *(v29 + 160) = glGetUniformLocation(*(v29 + 140), "sampler_uv");
  *(v29 + 164) = glGetUniformLocation(*(v29 + 140), "sampler_01");
  glUseProgram(*(v29 + 140));
  glUniform1i(*(v29 + 160), 0);
  glUniform1i(*(v29 + 164), 1);
  glActiveTexture(0x84C1u);
  glBindTexture(0xDE1u, *(v29 + 68));
  glTexImage2D(0xDE1u, 0, 6408, 1, 2, 0, 0x1908u, 0x1401u, &pixels);
  glTexParameterf(0xDE1u, 0x2802u, 10497.0);
  glTexParameterf(0xDE1u, 0x2803u, 10497.0);
  glTexParameterf(0xDE1u, 0x2800u, 9728.0);
  glTexParameterf(0xDE1u, 0x2801u, 9728.0);
  v18 = 0;
  v19 = &__s[2];
  do
  {
    if (v0)
    {
      v20 = &neonExactRecipTable;
    }

    else
    {
      v20 = &neonApproxRecipTable;
    }

    v21 = F32toF16(v20[v18]);
    v22 = 32;
    v23 = v19;
    v24 = &neonApproxRecipTable;
    v25 = &neonExactRecipTable;
    do
    {
      if (v0)
      {
        v26 = v25;
      }

      else
      {
        v26 = v24;
      }

      *(v23 - 1) = F32toF16(*v26);
      *v23 = v21;
      v23 += 4;
      ++v25;
      ++v24;
      --v22;
    }

    while (v22);
    ++v18;
    v19 += 128;
  }

  while (v18 != 32);
  glActiveTexture(0x84C2u);
  glBindTexture(0xDE1u, *(v29 + 72));
  glTexImage2D(0xDE1u, 0, 33319, 32, 32, 0, 0x8227u, 0x8D61u, __s);
  glTexParameterf(0xDE1u, 0x2802u, 33071.0);
  glTexParameterf(0xDE1u, 0x2803u, 33071.0);
  glTexParameterf(0xDE1u, 0x2800u, 9728.0);
  glTexParameterf(0xDE1u, 0x2801u, 9728.0);
  v33[1] = *(v29 + 140);
  *textures = 0;
  *__str = xmmword_1AD055D4C;
  v31 = 0x3F80000000000000;
  glEnableVertexAttribArray(0);
  glVertexAttribPointer(0, 2, 0x1406u, 0, 0, __str);
  glGenTextures(1, &textures[1]);
  glActiveTexture(0x84C0u);
  glBindTexture(0xDE1u, textures[1]);
  glTexImage2D(0xDE1u, 0, 6408, 1, 1, 0, 0x1908u, 0x1401u, 0);
  glGenFramebuffers(1, textures);
  glBindFramebuffer(0x8D40u, textures[0]);
  glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, textures[1], 0);
  if (glCheckFramebufferStatus(0x8D40u) == 36053)
  {
    for (i = 0; i != 12; i += 4)
    {
      glUseProgram(*&v32[i]);
      glDrawArrays(4u, 0, 3);
      glFlush();
    }
  }

  glBindTexture(0xDE1u, 0);
  glBindFramebuffer(0x8D40u, 0);
  glDeleteFramebuffers(1, textures);
  glDeleteTextures(1, &textures[1]);
  glUseProgram(0);
  return [MEMORY[0x1E6977FE8] setCurrentContext:0];
}

double powerBlurNoiseReductionGPUContextDestroy(uint64_t a1)
{
  WaitForInitializationToFinish(a1);
  [MEMORY[0x1E6977FE8] setCurrentContext:*(a1 + 16)];
  glUseProgram(0);
  glActiveTexture(0x84C0u);
  glBindTexture(0xDE1u, 0);
  glActiveTexture(0x84C1u);
  glBindTexture(0xDE1u, 0);
  glBindFramebuffer(0x8D40u, 0);
  glDeleteFramebuffers(1, (a1 + 40));
  glDeleteTextures(1, (a1 + 36));
  glDeleteTextures(1, (a1 + 64));
  glDeleteTextures(1, (a1 + 76));
  glDeleteTextures(1, (a1 + 80));
  glDeleteTextures(1, (a1 + 68));
  glDeleteTextures(1, (a1 + 72));
  glDeleteProgram(*(a1 + 84));
  glDeleteProgram(*(a1 + 112));
  glDeleteProgram(*(a1 + 140));
  [MEMORY[0x1E6977FE8] setCurrentContext:0];
  v2 = *(a1 + 16);
  if (v2)
  {
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    dispatch_release(v3);
  }

  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t powerBlurNoiseReductionGPU(uint64_t a1, __CVBuffer *a2, float64x2_t *a3, int a4, int a5, float a6)
{
  v50 = 1;
  v51[0] = 2;
  ptr[0] = xmmword_1AD055C0C;
  ptr[1] = unk_1AD055C1C;
  ptr[2] = xmmword_1AD055C2C;
  ptr[3] = unk_1AD055C3C;
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  WaitForInitializationToFinish(a1);
  if (!*(a1 + 16))
  {
    return 0xFFFFFFFFLL;
  }

  v12 = *a1;
  if (!*a1)
  {
    powerBlurNoiseReductionGPU_cold_1(a1, &v46);
    v12 = v46;
  }

  if (v12 == 2)
  {
    return 4294967294;
  }

  [MEMORY[0x1E6977FE8] setCurrentContext:*(a1 + 16)];
  if (a4)
  {
    v14 = 84;
  }

  else
  {
    v14 = 112;
  }

  if (a4)
  {
    v15 = 5;
  }

  else
  {
    v15 = 8;
  }

  IOSurface = CVPixelBufferGetIOSurface(a2);
  if (!IOSurface)
  {
    goto LABEL_51;
  }

  v17 = IOSurface;
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a2, 1uLL);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a2, 1uLL);
  if (WidthOfPlane < 1)
  {
    goto LABEL_51;
  }

  if (*(a1 + 28) < WidthOfPlane)
  {
    goto LABEL_51;
  }

  v20 = HeightOfPlane;
  if (HeightOfPlane < 1 || *(a1 + 32) < HeightOfPlane)
  {
    goto LABEL_51;
  }

  v21 = a1 + v14;
  CreateTextureStorage(a1, WidthOfPlane, HeightOfPlane);
  v22 = a6 / 255.0;
  if ((a6 / 255.0) < 0.0)
  {
    v22 = 0.0;
  }

  if (v22 <= 1.0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 1.0;
  }

  v45 = vuzp1q_s32(vcvtq_s64_f64(*a3), vcvtq_s64_f64(a3[1]));
  ClampAndExpandScissor(v45.i32, WidthOfPlane, v20);
  v25 = v45.i32[0];
  v24 = v45.i32[1];
  v46 = v45.i32[0] - v15;
  v47 = v45.i32[1] - v15;
  v42 = v45.i32[3];
  v43 = v45.i32[2];
  v48 = v45.i32[2] + 2 * v15;
  v49 = v45.i32[3] + 2 * v15;
  ClampAndExpandScissor(&v46, WidthOfPlane, v20);
  v39 = v25;
  if (v25 > 0 || v24 > 0 || v43 < WidthOfPlane || v42 < v20)
  {
    glEnable(0xC11u);
  }

  else
  {
    glDisable(0xC11u);
  }

  if (*(a1 + 60) && !*(a1 + 24))
  {
    [*(a1 + 16) setParameter:608 to:v51];
  }

  v26 = v47;
  v41 = v46;
  v27 = v49;
  v40 = v48;
  glScissor(v46 / 2, v47, v48 / 2, v49);
  glVertexAttribPointer(*(v21 + 4), 2, 0x1406u, 0, 16, ptr);
  glEnableVertexAttribArray(*(v21 + 4));
  glVertexAttribPointer(*(v21 + 8), 2, 0x1406u, 0, 16, ptr + 8);
  glEnableVertexAttribArray(*(v21 + 8));
  glActiveTexture(0x84C0u);
  glBindTexture(0xDE1u, *(a1 + 36));
  BYTE4(v38) = 0;
  LODWORD(v38) = 1;
  if (([*(a1 + 16) texImageIOSurface:v17 target:3553 internalFormat:6408 width:WidthOfPlane >> 1 height:v20 format:6408 type:5121 plane:v38 invert:?] & 1) == 0)
  {
    goto LABEL_51;
  }

  glTexParameterf(0xDE1u, 0x2802u, 33071.0);
  glTexParameterf(0xDE1u, 0x2803u, 33071.0);
  glTexParameterf(0xDE1u, 0x2800u, 9728.0);
  glTexParameterf(0xDE1u, 0x2801u, 9728.0);
  glBindFramebuffer(0x8D40u, *(a1 + 40));
  glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, *(a1 + 64), 0);
  if (glCheckFramebufferStatus(0x8D40u) != 36053)
  {
    goto LABEL_51;
  }

  glViewport(0, 0, WidthOfPlane >> 1, v20);
  glUseProgram(*v21);
  glUniform2f(*(v21 + 24), v23, v23);
  v28 = WidthOfPlane;
  v29 = 2.0 / WidthOfPlane;
  v30 = v20;
  v31 = 0.0 / v20;
  glUniform2f(*(v21 + 12), v29, v31);
  glDrawArrays(5u, 0, 4);
  if (*(a1 + 60) && !*(a1 + 24))
  {
    [*(a1 + 16) setParameter:608 to:&v50];
  }

  else
  {
    glFlush();
  }

  glScissor(v26 / 2, v41, v27 / 2, v40);
  glBindTexture(0xDE1u, *(a1 + 64));
  glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, *(a1 + 76), 0);
  if (glCheckFramebufferStatus(0x8D40u) != 36053)
  {
    goto LABEL_51;
  }

  glVertexAttribPointer(*(a1 + 144), 2, 0x1406u, 0, 16, ptr);
  glEnableVertexAttribArray(*(a1 + 144));
  glVertexAttribPointer(*(a1 + 148), 2, 0x1406u, 0, 16, ptr + 8);
  glEnableVertexAttribArray(*(a1 + 148));
  glViewport(0, 0, v20 >> 1, WidthOfPlane);
  glUseProgram(*(a1 + 140));
  v32 = 0.5 / v30;
  glUniform2f(*(a1 + 152), 0.0, v32);
  v33 = v28 * 0.5;
  glUniform2f(*(a1 + 156), 1.0, v33);
  glDrawArrays(5u, 0, 4);
  if (*(a1 + 60) && !*(a1 + 24))
  {
    [*(a1 + 16) setParameter:608 to:v51];
  }

  else
  {
    glFlush();
  }

  glBindTexture(0xDE1u, *(a1 + 76));
  glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, *(a1 + 80), 0);
  if (glCheckFramebufferStatus(0x8D40u) != 36053)
  {
    goto LABEL_51;
  }

  glVertexAttribPointer(*(v21 + 4), 2, 0x1406u, 0, 16, ptr);
  glEnableVertexAttribArray(*(v21 + 4));
  glVertexAttribPointer(*(v21 + 8), 2, 0x1406u, 0, 16, ptr + 8);
  glEnableVertexAttribArray(*(v21 + 8));
  glViewport(0, 0, v20 >> 1, WidthOfPlane);
  glUseProgram(*v21);
  v34 = 2.0 / v30;
  v35 = 0.0 / v28;
  glUniform2f(*(v21 + 12), v34, v35);
  glDrawArrays(5u, 0, 4);
  if (*(a1 + 60) && !*(a1 + 24))
  {
    [*(a1 + 16) setParameter:608 to:&v50];
  }

  else
  {
    glFlush();
  }

  glScissor(v39 / 2, v24, v43 / 2, v42);
  glBindTexture(0xDE1u, *(a1 + 80));
  glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, *(a1 + 36), 0);
  if (glCheckFramebufferStatus(0x8D40u) != 36053)
  {
LABEL_51:
    [MEMORY[0x1E6977FE8] setCurrentContext:0];
    return 0xFFFFFFFFLL;
  }

  glVertexAttribPointer(*(a1 + 144), 2, 0x1406u, 0, 16, ptr);
  glEnableVertexAttribArray(*(a1 + 144));
  glVertexAttribPointer(*(a1 + 148), 2, 0x1406u, 0, 16, ptr + 8);
  glEnableVertexAttribArray(*(a1 + 148));
  glViewport(0, 0, WidthOfPlane >> 1, v20);
  glUseProgram(*(a1 + 140));
  v36 = 0.5 / v28;
  glUniform2f(*(a1 + 152), 0.0, v36);
  v37 = v30 * 0.5;
  glUniform2f(*(a1 + 156), 1.0, v37);
  glDrawArrays(5u, 0, 4);
  glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, 0, 0);
  glBindFramebuffer(0x8D40u, 0);
  glBindTexture(0xDE1u, 0);
  if (a5 == 1)
  {
    glFlush();
  }

  else
  {
    glFinish();
  }

  glGetError();
  [MEMORY[0x1E6977FE8] setCurrentContext:0];
  return 0;
}

void CreateTextureStorage(_DWORD *a1, unsigned int a2, unsigned int a3)
{
  if (a1[11] != a2 || a1[12] != a3)
  {
    glActiveTexture(0x84C0u);
    glBindTexture(0xDE1u, a1[16]);
    glTexImage2D(0xDE1u, 0, 6408, a2 >> 1, a3, 0, 0x1908u, 0x1401u, 0);
    glTexParameterf(0xDE1u, 0x2802u, 33071.0);
    glTexParameterf(0xDE1u, 0x2803u, 33071.0);
    glTexParameterf(0xDE1u, 0x2800u, 9728.0);
    glTexParameterf(0xDE1u, 0x2801u, 9728.0);
    glBindTexture(0xDE1u, a1[19]);
    glTexImage2D(0xDE1u, 0, 6408, a3 >> 1, a2, 0, 0x1908u, 0x1401u, 0);
    glTexParameterf(0xDE1u, 0x2802u, 33071.0);
    glTexParameterf(0xDE1u, 0x2803u, 33071.0);
    glTexParameterf(0xDE1u, 0x2800u, 9728.0);
    glTexParameterf(0xDE1u, 0x2801u, 9728.0);
    glBindTexture(0xDE1u, a1[20]);
    glTexImage2D(0xDE1u, 0, 6408, a3 >> 1, a2, 0, 0x1908u, 0x1401u, 0);
    glTexParameterf(0xDE1u, 0x2802u, 33071.0);
    glTexParameterf(0xDE1u, 0x2803u, 33071.0);
    glTexParameterf(0xDE1u, 0x2800u, 9728.0);
    glTexParameterf(0xDE1u, 0x2801u, 9728.0);
    glBindTexture(0xDE1u, 0);
    a1[11] = a2;
    a1[12] = a3;
  }
}

int *ClampAndExpandScissor(int *result, int a2, int a3)
{
  v3 = *result;
  if (*result < 0)
  {
    v3 = 0;
    *result = 0;
  }

  v4 = result[1];
  if (v4 < 0)
  {
    v4 = 0;
    result[1] = 0;
  }

  v5 = result[2];
  if (v5 > a2 - v3)
  {
    result[2] = a2 - v3;
    v5 = a2 - v3;
  }

  v6 = result[3];
  if (v6 > a3 - v4)
  {
    result[3] = a3 - v4;
    v6 = a3 - v4;
    if ((v3 & 1) == 0)
    {
LABEL_9:
      if ((v4 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((v3 & 1) == 0)
  {
    goto LABEL_9;
  }

  *result = v3 - 1;
  result[2] = ++v5;
  if ((v4 & 1) == 0)
  {
LABEL_10:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_15:
  result[1] = v4 - 1;
  result[3] = ++v6;
  if ((v5 & 1) == 0)
  {
LABEL_11:
    if ((v6 & 1) == 0)
    {
      return result;
    }

LABEL_17:
    result[3] = v6 + 1;
    return result;
  }

LABEL_16:
  result[2] = v5 + 1;
  if (v6)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t __WaitForInitializationToFinish_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*v1 != 2)
  {
    *v1 = 1;
  }

  return result;
}

uint64_t gl_UtilsCreateProgramFromSources(GLchar *a1, GLchar *a2)
{
  Shader_0 = gl_UtilsCreateShader_0(0x8B31u, a1);
  if (!Shader_0)
  {
    gl_UtilsCreateProgramFromSources_cold_3();
    return 0;
  }

  v4 = Shader_0;
  v5 = gl_UtilsCreateShader_0(0x8B30u, a2);
  if (!v5)
  {
    gl_UtilsCreateProgramFromSources_cold_2(v4);
    return 0;
  }

  v6 = v5;
  params = 0;
  Program = glCreateProgram();
  v8 = Program;
  if (Program)
  {
    glAttachShader(Program, v4);
    glAttachShader(v8, v6);
    glLinkProgram(v8);
    glGetProgramiv(v8, 0x8B82u, &params);
    if (!params)
    {
      glDeleteProgram(v8);
      v8 = 0;
    }
  }

  else
  {
    gl_UtilsCreateProgramFromSources_cold_1();
  }

  glDeleteShader(v4);
  glDeleteShader(v6);
  return v8;
}

uint64_t F32toF16(float a1)
{
  v1 = HIWORD(LODWORD(a1)) & 0x8000;
  v2 = (LODWORD(a1) >> 23);
  v3 = ((((LODWORD(a1) & 0x7FFFFFu) >> 13) | (v2 << 10)) + 0x4000) | v1;
  if (v2 < 0x71)
  {
    LOWORD(v3) = HIWORD(a1) & 0x8000;
  }

  v4 = v1 | 0x7C00;
  if (v2 >= 0x8F)
  {
    LOWORD(v3) = v4;
  }

  v5 = v4 | LOWORD(a1) & 0x3FF;
  if ((LODWORD(a1) & 0x7FFFFF) == 0)
  {
    v5 = v4;
  }

  if (v2 != 255)
  {
    return v3;
  }

  return v5;
}

uint64_t gl_UtilsCreateShader_0(GLenum a1, GLchar *a2)
{
  string = a2;
  Shader = glCreateShader(a1);
  v3 = Shader;
  if (Shader)
  {
    params = 0;
    glShaderSource(Shader, 1, &string, 0);
    glCompileShader(v3);
    glGetShaderiv(v3, 0x8B81u, &params);
    if (!params)
    {
      glDeleteShader(v3);
      return 0;
    }
  }

  else
  {
    gl_UtilsCreateShader_cold_1_0();
  }

  return v3;
}

void csu_handleDevicePropertyChangedNotification(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v21 = 0;
  if (!FigCFEqual() && !FigCFEqual())
  {
    csu_handleDevicePropertyChangedNotification_cold_5();
    goto LABEL_21;
  }

  if (!a4)
  {
    csu_handleDevicePropertyChangedNotification_cold_4();
    goto LABEL_15;
  }

  if (!a5)
  {
    csu_handleDevicePropertyChangedNotification_cold_3();
LABEL_21:
    a4 = 0;
    goto LABEL_15;
  }

  a4 = [a4 copyProperty:*off_1E7989FD8 error:&v21];
  if (v21)
  {
    csu_handleDevicePropertyChangedNotification_cold_1();
    goto LABEL_15;
  }

  v7 = [a5 objectForKeyedSubscript:*off_1E7989F78];
  if (a4)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    csu_handleDevicePropertyChangedNotification_cold_2();
    goto LABEL_15;
  }

  v9 = v7;
  if (FigCFEqual())
  {
    v19 = @"Hidden";
    v20 = v9;
    v17 = a4;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v10 = MEMORY[0x1E695DF20];
    v11 = &v18;
    v12 = &v17;
LABEL_14:
    csu_postSourceInfoArrayChangedNotificationIfNecessary([v10 dictionaryWithObjects:v11 forKeys:v12 count:1]);
    goto LABEL_15;
  }

  if (FigCFEqual())
  {
    v15 = @"DockedTrackingActive";
    v16 = v9;
    v13 = a4;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v10 = MEMORY[0x1E695DF20];
    v11 = &v14;
    v12 = &v13;
    goto LABEL_14;
  }

LABEL_15:
}

uint64_t csu_defaultDeviceStreamArrayChangedNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (([@"DefaultDeviceStreamsChanged" isEqualToString:?] & 1) == 0)
  {
    return csu_defaultDeviceStreamArrayChangedNotificationCallback_cold_1();
  }

  if (!a4)
  {
    return csu_defaultDeviceStreamArrayChangedNotificationCallback_cold_3();
  }

  if (a5)
  {
    return csu_defaultDeviceStreamArrayChangedNotificationCallback_cold_2();
  }

  result = +[BWFigCaptureDeviceVendor videoCaptureDeviceFirmwareIsLoaded];
  if (result)
  {
    FigSimpleMutexLock();
    gSourceInfoArrayChanged = 1;
    gDefaultDeviceStreamsChanged = 1;

    return FigSimpleMutexUnlock();
  }

  return result;
}

void FigCaptureCreateSourceInfoArrayFromDeviceAndModelSpecificPlist(void *a1, void *a2, uint64_t a3, int a4, id *a5, void *a6)
{
  VideoCaptureSourceInfoForCaptureDeviceFromModelSpecificPlist = csu_createVideoCaptureSourceInfoForCaptureDeviceFromModelSpecificPlist(a1, a2);
  v44 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  v41 = a2;
  v8 = [a2 objectForKeyedSubscript:@"AVCaptureDevices"];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v49 objects:&v45 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v50;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v50 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v49 + 1) + 8 * i);
        if ([objc_msgSend(v13 objectForKeyedSubscript:{@"mediaType", "isEqual:", @"soun"}])
        {
          v14 = [v13 objectForKeyedSubscript:@"uniqueName"];
          if (!v14 || [v14 isEqualToString:@"Microphone"])
          {
            v38 = VideoCaptureSourceInfoForCaptureDeviceFromModelSpecificPlist;
            DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v13, 1uLL);
            v37 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
            [v37 setObject:&unk_1F22445D8 forKeyedSubscript:@"MediaType"];
            v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
            [v16 setObject:@"Microphone" forKeyedSubscript:@"NonLocalizedName"];
            [v16 setObject:&unk_1F22443F8 forKeyedSubscript:@"SourceType"];
            [v16 setObject:&unk_1F2244410 forKeyedSubscript:@"DeviceType"];
            [v16 setObject:@"com.apple.avfoundation.avcapturedevice.built-in_audio:0" forKeyedSubscript:@"ModelID"];
            [v16 setObject:@"com.apple.avfoundation.avcapturedevice.built-in_audio:0" forKeyedSubscript:@"UniqueID"];
            [v16 setObject:objc_msgSend(DeepCopy forKeyedSubscript:{"objectForKeyedSubscript:", @"prefersDecoupledIO", @"PrefersDecoupledIO"}];
            v36 = v16;
            [v16 setObject:@"MetadataGroup-Misc" forKeyedSubscript:@"AvailableMetadataKeyGroups"];
            v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
            AllAVCaptureSessionPresets = FigCaptureStreamUtilitiesGetAllAVCaptureSessionPresets();
            v57[0] = @"RequiredNumChannels";
            v57[1] = @"RequiredSampleRate";
            v57[2] = @"RequiredBitRatePerChannel";
            v57[3] = @"PreferredSampleRate";
            v57[4] = @"BitRatePerChannelForPreferredSampleRate";
            v57[5] = @"BitRateStrategyForPreferredSampleRate";
            v57[6] = @"VBRCodecQualityForPreferredSampleRate";
            v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:7];
            csu_pruneDictionaryToJustKeys([DeepCopy objectForKeyedSubscript:@"AVCaptureSessionPresetCommon"], v19);
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v20 = [AllAVCaptureSessionPresets countByEnumeratingWithState:&v53 objects:v58 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v54;
              do
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v54 != v22)
                  {
                    objc_enumerationMutation(AllAVCaptureSessionPresets);
                  }

                  v24 = *(*(&v53 + 1) + 8 * j);
                  v25 = [DeepCopy objectForKeyedSubscript:v24];
                  if (v25)
                  {
                    v26 = v25;
                    csu_pruneDictionaryToJustKeys(v25, v19);
                    FigCFDictionaryAddEntriesToDictionaryWithRecursion();
                    [v17 setObject:v26 forKeyedSubscript:v24];
                  }
                }

                v21 = [AllAVCaptureSessionPresets countByEnumeratingWithState:&v53 objects:v58 count:16];
              }

              while (v21);
            }

            if (v17)
            {
              [v36 setObject:v17 forKeyedSubscript:@"AudioSettingsForPresetsMap"];
            }

            VideoCaptureSourceInfoForCaptureDeviceFromModelSpecificPlist = v38;
            if ([objc_msgSend(DeepCopy objectForKeyedSubscript:{@"stereoAudioCaptureSupported", "BOOLValue"}])
            {
              [v36 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"BuiltInMicrophoneStereoAudioCaptureSupported"];
            }

            if ([objc_msgSend(DeepCopy objectForKeyedSubscript:{@"cinematicAudioCaptureSupported", "BOOLValue"}])
            {
              [v36 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"CinematicAudioCaptureSupported"];
            }

            if ([objc_msgSend(DeepCopy objectForKeyedSubscript:{@"windNoiseRemovalSupported", "BOOLValue"}])
            {
              [v36 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"WindNoiseRemovalSupported"];
            }

            [v37 setObject:v36 forKeyedSubscript:@"Attributes"];

            [v44 addObject:v37];
            goto LABEL_30;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v49 objects:&v45 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_30:
  v27 = [objc_msgSend(v41 objectForKeyedSubscript:{@"AVCaptureDeviceCommonSettings", "mutableCopy"}];
  if ([v27 objectForKeyedSubscript:@"PreviewRegistrationType"])
  {
    [v27 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", BWPreviewRegistrationTypeFromShortString(objc_msgSend(v27, "objectForKeyedSubscript:", @"PreviewRegistrationType", @"PreviewRegistrationType"}];
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v28 = [VideoCaptureSourceInfoForCaptureDeviceFromModelSpecificPlist countByEnumeratingWithState:&v45 objects:v58 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v46;
    while (2)
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v46 != v30)
        {
          objc_enumerationMutation(VideoCaptureSourceInfoForCaptureDeviceFromModelSpecificPlist);
        }

        if ([objc_msgSend(objc_msgSend(*(*(&v45 + 1) + 8 * k) objectForKeyedSubscript:{@"Attributes", "objectForKeyedSubscript:", 0x1F21833F0), "BOOLValue"}])
        {
          [v27 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"MetadataCameraHostingSupported"];
          goto LABEL_42;
        }
      }

      v29 = [VideoCaptureSourceInfoForCaptureDeviceFromModelSpecificPlist countByEnumeratingWithState:&v45 objects:v58 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }
  }

LABEL_42:
  if (a6)
  {
    *a6 = v27;
  }

  if ([VideoCaptureSourceInfoForCaptureDeviceFromModelSpecificPlist count] || objc_msgSend(v44, "count"))
  {
    v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v32 addObjectsFromArray:VideoCaptureSourceInfoForCaptureDeviceFromModelSpecificPlist];
    [v32 addObjectsFromArray:v44];
    v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v33 setObject:sCurrentInterpreterBuildDate forKeyedSubscript:@"InterpreterBuildDate"];
    [v33 setObject:a3 forKeyedSubscript:@"FileModificationDate"];
    [v33 setObject:FigCaptureGetModelSpecificName() forKeyedSubscript:@"DeviceModel"];
    [v33 setObject:v32 forKeyedSubscript:@"Sources"];
    [v33 setObject:csu_dependentUserDefaultsDictionary() forKeyedSubscript:@"DependentUserDefaults"];
    [v33 setObject:v27 forKeyedSubscript:@"CommonSettings"];
    if (a4)
    {
      v34 = *MEMORY[0x1E695E8B8];
      v35 = *MEMORY[0x1E695E898];
      CFPreferencesSetValue(@"CaptureSourceInfo", v33, @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
      CFPreferencesSynchronize(@"com.apple.cameracapture.volatile", v34, v35);
    }

    if (a5)
    {
      *a5 = csu_createInMemorySourcesArrayFromOnDiskSourcesArray(v32);
    }
  }
}

void *csu_createVideoCaptureSourceInfoForCaptureDeviceFromModelSpecificPlist(void *a1, const void *a2)
{
  v360 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v3 = *MEMORY[0x1E695E480];
  DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], a2, 1uLL);
  obj = [DeepCopy objectForKeyedSubscript:@"AVCaptureDevices"];
  v369 = [DeepCopy objectForKeyedSubscript:@"AVCaptureDeviceCommonSettings"];
  v345 = [DeepCopy objectForKeyedSubscript:@"AVHEVCSettings"];
  v346 = DeepCopy;
  v353 = [DeepCopy objectForKeyedSubscript:@"AVH264Settings"];
  v418 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
  v368 = [MEMORY[0x1E695DFA8] set];
  if ((BWDeviceIsiPad() & 1) == 0)
  {
    memset(v507, 0, 64);
    v5 = [obj countByEnumeratingWithState:v507 objects:&v512 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = **&v507[1];
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (**&v507[1] != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v507[0] + 1) + 8 * i);
          v10 = [objc_msgSend(v9 objectForKeyedSubscript:{@"deviceType", "intValue"}];
          v11 = [objc_msgSend(v9 objectForKeyedSubscript:{@"position", "intValue"}];
          if (v10 == 7 && v11 == 1)
          {
            v13 = CFPropertyListCreateDeepCopy(v3, v9, 1uLL);
            [v13 setObject:@"com.apple.avfoundation.avcapturedevice.built-in_deskview:1" forKeyedSubscript:@"uniqueID"];
            [v13 setObject:@"com.apple.avfoundation.avcapturedevice.built-in_deskview:1" forKeyedSubscript:@"modelID"];
            [v13 setObject:&unk_1F2244548 forKeyedSubscript:@"deviceType"];
            [v13 setObject:@"Desk View Camera" forKeyedSubscript:@"localizedName"];
            [v13 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"geometricDistortionCorrection"];
            if (v13)
            {
              [obj addObject:v13];
            }

            goto LABEL_16;
          }
        }

        v6 = [obj countByEnumeratingWithState:v507 objects:&v512 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_16:
  v457 = 0u;
  v456 = 0u;
  v455 = 0u;
  v454 = 0u;
  v14 = [obj countByEnumeratingWithState:&v454 objects:v453 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v455;
    v18 = v368;
    while (2)
    {
      v19 = 0;
      v20 = v16 + 1;
      v16 += v15;
      do
      {
        if (*v455 != v17)
        {
          objc_enumerationMutation(obj);
        }

        if ([objc_msgSend(*(*(&v454 + 1) + 8 * v19) objectForKeyedSubscript:{@"deviceType", "intValue"}] == 5)
        {
          v352 = 1;
          goto LABEL_27;
        }

        ++v19;
        ++v20;
      }

      while (v15 != v19);
      v15 = [obj countByEnumeratingWithState:&v454 objects:v453 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }

    v352 = 0;
    v20 = v16;
  }

  else
  {
    v20 = 0;
    v352 = 0;
    v18 = v368;
  }

LABEL_27:
  if (FigCapturePlatformIdentifier() >= 4)
  {
    v387 = v20;
    v385 = [MEMORY[0x1E695DF70] array];
    v21 = [MEMORY[0x1E695DF70] array];
    v477 = 0u;
    v478 = 0u;
    v479 = 0u;
    v480 = 0u;
    v22 = [obj countByEnumeratingWithState:&v477 objects:&v512 count:16];
    if (v22)
    {
      v23 = v22;
      v414 = 0;
      v24 = *v478;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v478 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v477 + 1) + 8 * j);
          v27 = [objc_msgSend(v26 objectForKeyedSubscript:{@"deviceType", "intValue"}];
          if ((v27 - 17) <= 3)
          {
            v28 = v27;
            [v21 addObject:{objc_msgSend(v26, "objectForKeyedSubscript:", @"uniqueName"}];
            csu_addSecureMetadataKeysToDeviceDict(v26, a1);
            v29 = [objc_msgSend(v26 objectForKeyedSubscript:{@"position", "intValue"}];
            v31 = v28 == 19 && v29 == 2;
            v414 |= v31;
          }
        }

        v23 = [obj countByEnumeratingWithState:&v477 objects:&v512 count:16];
      }

      while (v23);
    }

    else
    {
      v414 = 0;
    }

    v472 = 0u;
    v471 = 0u;
    v470 = 0u;
    v469 = 0u;
    v18 = v368;
    v32 = v387;
    v33 = v385;
    v419 = [obj countByEnumeratingWithState:&v469 objects:v507 count:16];
    if (v419)
    {
      v411 = *v470;
      do
      {
        v34 = 0;
        do
        {
          if (*v470 != v411)
          {
            objc_enumerationMutation(obj);
          }

          v428 = v34;
          v35 = *(*(&v469 + 1) + 8 * v34);
          if ([objc_msgSend(v35 objectForKeyedSubscript:{@"position", "intValue"}] == 2)
          {
            v36 = [objc_msgSend(v35 objectForKeyedSubscript:{@"deviceType", "intValue"}] - 2;
            if (v36 <= 9 && ((0x229u >> v36) & 1) != 0)
            {
              v37 = off_1E79978B0[v36];
              if (([v21 containsObject:v37] & 1) == 0)
              {
                v38 = [MEMORY[0x1E695DF90] dictionary];
                [v38 setObject:v37 forKeyedSubscript:@"uniqueName"];
                [v38 setObject:@"vide" forKeyedSubscript:@"mediaType"];
                [v38 setObject:objc_msgSend(v35 forKeyedSubscript:{"objectForKeyedSubscript:", @"hasAutoFocus", @"hasAutoFocus"}];
                [v38 setObject:objc_msgSend(v35 forKeyedSubscript:{"objectForKeyedSubscript:", @"secureMetadataCameraSupported", @"secureMetadataCameraSupported"}];
                csu_preprocessVideoDeviceDict(v38, 0);
                csu_addSecureMetadataKeysToDeviceDict(v38, a1);
                v395 = v38;
                v39 = [objc_msgSend(v38 objectForKeyedSubscript:{@"deviceType", "intValue"}];
                if (v39 == 20)
                {
                  if (![objc_msgSend(v38 objectForKeyedSubscript:{@"secureMetadataCameraSupported", "BOOLValue"}])
                  {
                    goto LABEL_54;
                  }

LABEL_61:
                  v40 = [objc_msgSend(v35 objectForKeyedSubscript:{@"MultiStream", "mutableCopy"}];
                  v41 = [v40 objectForKeyedSubscript:@"AVCaptureDeviceFormats"];
                  v391 = v40;
                  v42 = [v40 objectForKeyedSubscript:@"FigCaptureStreamFormats"];
                  v435 = [MEMORY[0x1E695DF90] dictionary];
                  *&v503 = 0;
                  LODWORD(v473) = 0;
                  LODWORD(v465) = 0;
                  *&v495 = 0;
                  v490 = 0;
                  *v460 = 0;
                  *&v486 = 0;
                  v459 = 0;
                  *&v481 = 0;
                  v458 = 0;
                  v464 = 0u;
                  v463 = 0u;
                  v462 = 0u;
                  v461 = 0u;
                  v442 = v41;
                  v43 = [v41 countByEnumeratingWithState:&v461 objects:&v499 count:16];
                  if (v43)
                  {
                    v44 = v43;
                    v45 = *v462;
                    v430 = *v462;
                    do
                    {
                      v46 = 0;
                      v439 = v44;
                      do
                      {
                        if (*v462 != v45)
                        {
                          objc_enumerationMutation(v442);
                        }

                        v47 = *(*(&v461 + 1) + 8 * v46);
                        v48 = [v442 objectForKeyedSubscript:v47];
                        v49 = [objc_msgSend(v48 objectForKeyedSubscript:{@"Width", "intValue"}];
                        if (v49 <= 0x780)
                        {
                          v50 = v49;
                          v51 = [objc_msgSend(v48 objectForKeyedSubscript:{@"Height", "intValue"}];
                          v52 = [v48 objectForKeyedSubscript:@"CaptureStreamFormat"];
                          v53 = v42;
                          while (1)
                          {
                            v54 = [v53 objectForKeyedSubscript:v52];
                            objc_opt_class();
                            if ((objc_opt_isKindOfClass() & 1) == 0)
                            {
                              break;
                            }

                            v53 = v42;
                            v52 = v54;
                          }

                          v55 = [objc_msgSend(v54 objectForKeyedSubscript:{@"Binned", "BOOLValue"}];
                          v56 = [objc_msgSend(v54 objectForKeyedSubscript:{@"MaxFrameRate", "intValue"}];
                          if ([v48 objectForKeyedSubscript:@"MaxFrameRateOverride"])
                          {
                            v56 = [objc_msgSend(v48 objectForKeyedSubscript:{@"MaxFrameRateOverride", "intValue"}];
                          }

                          v45 = v430;
                          if (v56 - 31 >= 0xFFFFFFE2)
                          {
                            v57 = v56;
                          }

                          else
                          {
                            v57 = 30;
                          }

                          v58 = 9 * v50;
                          v59 = &v481;
                          if (v55)
                          {
                            v59 = &v495;
                          }

                          v60 = &v459;
                          if (v55)
                          {
                            v60 = &v490;
                          }

                          v61 = &v458;
                          if (v55)
                          {
                            v61 = &v460[4];
                          }

                          v62 = &v486;
                          if (v55)
                          {
                            v62 = &v503;
                          }

                          v63 = v460;
                          if (v55)
                          {
                            v63 = &v473;
                          }

                          v64 = &v459 + 1;
                          if (v55)
                          {
                            v64 = &v465;
                          }

                          v65 = v58 == 16 * v51;
                          if (v58 == 16 * v51)
                          {
                            v66 = v62;
                          }

                          else
                          {
                            v66 = v59;
                          }

                          if (v65)
                          {
                            v67 = v63;
                          }

                          else
                          {
                            v67 = v60;
                          }

                          if (v65)
                          {
                            v68 = v64;
                          }

                          else
                          {
                            v68 = v61;
                          }

                          v44 = v439;
                          if (v50 > *v67 || v50 == *v67 && v57 < *v68)
                          {
                            *v66 = v47;
                            *v67 = v50;
                            *v68 = v57;
                          }
                        }

                        ++v46;
                      }

                      while (v46 != v44);
                      v44 = [v442 countByEnumeratingWithState:&v461 objects:&v499 count:16];
                    }

                    while (v44);
                    v69 = v503;
                    v70 = [MEMORY[0x1E695DF70] array];
                    v71 = v70;
                    if (v69)
                    {
                      [v70 addObject:v69];
                      v384 = 0;
                      goto LABEL_106;
                    }
                  }

                  else
                  {
                    v71 = [MEMORY[0x1E695DF70] array];
                    v69 = 0;
                  }

                  v384 = 1;
LABEL_106:
                  v72 = v495;
                  if (v495)
                  {
                    [v71 addObject:v495];
                  }

                  v73 = v486;
                  if (v486)
                  {
                    [v71 addObject:v486];
                  }

                  v405 = v72;
                  v409 = v69;
                  v74 = v481;
                  if (v481)
                  {
                    [v71 addObject:v481];
                  }

                  v425 = v74;
                  v515 = 0u;
                  v516 = 0u;
                  memset(v514, 0, sizeof(v514));
                  v440 = [v71 countByEnumeratingWithState:v514 objects:type count:16];
                  if (v440)
                  {
                    v431 = **&v514[1];
                    v401 = *&v460[4];
                    v406 = v465;
                    v423 = v458;
                    v429 = HIDWORD(v459);
                    v427 = v71;
                    do
                    {
                      for (k = 0; k != v440; ++k)
                      {
                        v76 = v73;
                        if (**&v514[1] != v431)
                        {
                          objc_enumerationMutation(v427);
                        }

                        v77 = *(*(&v514[0] + 1) + 8 * k);
                        v78 = [v442 objectForKeyedSubscript:v77];
                        v79 = [MEMORY[0x1E695DF90] dictionary];
                        v508 = 0u;
                        v509 = 0u;
                        v510 = 0u;
                        v511 = 0u;
                        v80 = [&unk_1F22488F8 countByEnumeratingWithState:&v508 objects:v485 count:16];
                        if (v80)
                        {
                          v81 = v80;
                          v82 = *v509;
                          do
                          {
                            for (m = 0; m != v81; ++m)
                            {
                              if (*v509 != v82)
                              {
                                objc_enumerationMutation(&unk_1F22488F8);
                              }

                              [v79 setObject:objc_msgSend(v78 forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v508 + 1) + 8 * m)), *(*(&v508 + 1) + 8 * m)}];
                            }

                            v81 = [&unk_1F22488F8 countByEnumeratingWithState:&v508 objects:v485 count:16];
                          }

                          while (v81);
                        }

                        v73 = v76;
                        v84 = [v77 isEqualToString:v76];
                        v85 = v429;
                        if (v84 & 1) != 0 || (v86 = [v77 isEqualToString:v74], v85 = v423, (v86) || (v87 = objc_msgSend(v77, "isEqualToString:", v409), v85 = v406, (v87) || (v88 = objc_msgSend(v77, "isEqualToString:", v405), v85 = v401, v88))
                        {
                          [v79 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v85), @"MaxFrameRateOverride"}];
                        }

                        [v435 setObject:v79 forKeyedSubscript:v77];
                      }

                      v440 = [v427 countByEnumeratingWithState:v514 objects:type count:16];
                    }

                    while (v440);
                  }

                  [v391 setObject:v435 forKeyedSubscript:@"AVCaptureDeviceFormats"];
                  v89 = [MEMORY[0x1E695DF90] dictionary];
                  v90 = [MEMORY[0x1E695DF90] dictionary];
                  if (v73)
                  {
                    [v89 setObject:v73 forKeyedSubscript:@"DeviceFormat"];
                    v91 = HIDWORD(v459);
                    v92 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(v459)];
                    v18 = v368;
                    v32 = v387;
                    v33 = v385;
                    goto LABEL_140;
                  }

                  v18 = v368;
                  v32 = v387;
                  v33 = v385;
                  if (v425)
                  {
                    [v89 setObject:v425 forKeyedSubscript:@"DeviceFormat"];
                    v93 = MEMORY[0x1E696AD98];
                    v91 = v458;
LABEL_139:
                    v92 = [v93 numberWithUnsignedInt:v91];
LABEL_140:
                    [v89 setObject:v92 forKeyedSubscript:@"MinFrameRate"];
                    [v89 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v91), @"MaxFrameRate"}];
                  }

                  else
                  {
                    if ((v384 & 1) == 0)
                    {
                      [v89 setObject:v409 forKeyedSubscript:@"DeviceFormat"];
                      v93 = MEMORY[0x1E696AD98];
                      v91 = v465;
                      goto LABEL_139;
                    }

                    if (v405)
                    {
                      [v89 setObject:v405 forKeyedSubscript:@"DeviceFormat"];
                      v93 = MEMORY[0x1E696AD98];
                      v91 = *&v460[4];
                      goto LABEL_139;
                    }
                  }

                  [v90 setObject:v89 forKeyedSubscript:@"AVCaptureSessionPresetHigh"];
                  [v391 setObject:v90 forKeyedSubscript:@"AVCaptureSessionPresets"];
                  [v395 setObject:v391 forKeyedSubscript:@"MultiStream"];
                  [v33 addObject:v395];
                  goto LABEL_54;
                }

                if (v39 != 18 || (v414 & 1) == 0)
                {
                  goto LABEL_61;
                }
              }
            }
          }

LABEL_54:
          v34 = v428 + 1;
        }

        while (v428 + 1 != v419);
        v94 = [obj countByEnumeratingWithState:&v469 objects:v507 count:16];
        v419 = v94;
      }

      while (v94);
    }

    csu_preprocessDeviceDicts(v33);
    v449 = 0u;
    v450 = 0u;
    v451 = 0u;
    v452 = 0u;
    v95 = [v33 countByEnumeratingWithState:&v449 objects:v448 count:16];
    if (v95)
    {
      v96 = v95;
      v97 = *v450;
      do
      {
        for (n = 0; n != v96; ++n)
        {
          if (*v450 != v97)
          {
            objc_enumerationMutation(v33);
          }

          v99 = *(*(&v449 + 1) + 8 * n);
          if ([objc_msgSend(v99 objectForKeyedSubscript:{@"deviceType", "intValue"}] == 20)
          {
            [obj insertObject:v99 atIndex:v32];
          }

          else
          {
            [obj addObject:v99];
          }
        }

        v96 = [v33 countByEnumeratingWithState:&v449 objects:v448 count:16];
      }

      while (v96);
    }
  }

  v447 = 0u;
  v446 = 0u;
  v445 = 0u;
  v444 = 0u;
  v100 = [obj countByEnumeratingWithState:&v444 objects:v443 count:16];
  if (!v100)
  {
    goto LABEL_650;
  }

  v101 = v100;
  v375 = *v445;
  v359 = *off_1E798A0C8;
  v344 = *off_1E798C1C8;
  v367 = *off_1E798BEF8;
  v366 = *off_1E798BF08;
  v351 = *off_1E798C1F0;
  v365 = *off_1E798BCB8;
  v350 = *off_1E798A040;
  v337 = *off_1E798A0E8;
  v343 = *off_1E798C278;
  v342 = *off_1E798C920;
  v349 = *off_1E798BED0;
  v364 = *off_1E798BE60;
  v363 = *off_1E798BF60;
  v348 = *off_1E798C2C8;
  v347 = *off_1E798C2D0;
  v341 = *off_1E798CC18;
  v340 = *off_1E798CC10;
  v339 = *off_1E798CC08;
  v338 = *off_1E798BEA0;
  v362 = *off_1E798C178;
  v358 = *off_1E798CA40;
  v357 = *off_1E798C2C0;
  v356 = *off_1E798C2B0;
  v355 = *off_1E798C238;
  v354 = *off_1E798C2B8;
  v361 = *off_1E798C078;
  v441 = *MEMORY[0x1E6966130];
  v380 = *off_1E798A0D0;
  v426 = *off_1E798D408;
  v424 = *off_1E798D3F8;
  v410 = *off_1E798D3E8;
  v382 = *off_1E798C960;
  do
  {
    v102 = 0;
    v370 = v101;
    do
    {
      if (*v445 != v375)
      {
        objc_enumerationMutation(obj);
      }

      v103 = *(*(&v444 + 1) + 8 * v102);
      if (([objc_msgSend(v103 objectForKeyedSubscript:{@"mediaType", v335, v336), "isEqualToString:", @"vide"}] & 1) == 0 && !objc_msgSend(objc_msgSend(v103, "objectForKeyedSubscript:", @"mediaType"), "isEqualToString:", @"pcld"))
      {
        goto LABEL_160;
      }

      v104 = [v103 objectForKeyedSubscript:@"modelID"];
      if ([v18 containsObject:v104])
      {
        v333 = MEMORY[0x1E695DF30];
        v334 = *MEMORY[0x1E695D930];
        v330 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Found duplicated modelID: %@", v104];
        v331 = v333;
        v332 = v334;
LABEL_652:
        objc_exception_throw([v331 exceptionWithName:v332 reason:v330 userInfo:0]);
      }

      v371 = v102;
      [v18 addObject:v104];
      v105 = -[FigCaptureSourceStreamsContainer initWithDeviceType:position:stillImageDepthDataType:device:baseZoomFactorOverrides:clientBaseZoomFactorsByPortType:]([FigCaptureSourceStreamsContainer alloc], [objc_msgSend(v103 objectForKeyedSubscript:{@"deviceType", "intValue"}], objc_msgSend(objc_msgSend(v103, "objectForKeyedSubscript:", @"position"), "intValue"), objc_msgSend(objc_msgSend(v103, "objectForKeyedSubscript:", @"stillImageDepthDataType"), "intValue"), a1, objc_msgSend(v103, "objectForKeyedSubscript:", @"synchronizedStreamsBaseZoomFactorOverrides"), objc_msgSend(v103, "objectForKeyedSubscript:", @"synchronizedStreamsClientBaseZoomFactorsByPortType"));
      if (!v105)
      {
        LODWORD(v499) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v107 = v499;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
        {
          v108 = v107;
        }

        else
        {
          v108 = v107 & 0xFFFFFFFE;
        }

        if (v108)
        {
          v109 = [v103 objectForKeyedSubscript:@"localizedName"];
          LODWORD(v507[0]) = 136315394;
          *(v507 + 4) = "csu_createVideoCaptureSourceInfoForCaptureDeviceFromModelSpecificPlist";
          WORD6(v507[0]) = 2114;
          *(v507 + 14) = v109;
          LODWORD(v336) = 22;
          v335 = v507;
          _os_log_send_and_compose_impl();
        }

        v101 = v370;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_160;
      }

      v110 = v105;
      v111 = [v105[4] portType];
      v383 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v485[0] = 0;
      v112 = [v103 objectForKeyedSubscript:@"mediaType"];
      v386 = v111;
      if ([v112 isEqualToString:@"soun"])
      {
        v388 = 1936684398;
        v113 = v369;
        v114 = 0x1E696A000;
      }

      else
      {
        v113 = v369;
        v114 = 0x1E696A000uLL;
        if ([v112 isEqualToString:@"vide"])
        {
          v115 = 1986618469;
        }

        else if ([v112 isEqualToString:@"pcld"])
        {
          v115 = 1885564004;
        }

        else
        {
          v115 = 0;
        }

        v388 = v115;
      }

      v407 = [MEMORY[0x1E695DF90] dictionary];
      v402 = v110[4];
      v396 = [v402 supportedProperties];
      v381 = v110;
      v116 = *(v110 + 2);
      v399 = (v116 > 0x14 || ((1 << v116) & 0x100420) == 0) && v116 - 21 < 0xFFFFFFFC;
      [objc_msgSend(v103 objectForKeyedSubscript:{@"position", "intValue"}];
      [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"uniqueID", @"UniqueID"}];
      [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"modelID", @"ModelID"}];
      [v407 setObject:@"Apple Inc." forKeyedSubscript:@"Manufacturer"];
      [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"localizedName", @"NonLocalizedName"}];
      [v407 setObject:0x1F21702D0 forKeyedSubscript:@"CaptureDeviceID"];
      [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"position", @"Position"}];
      [v407 setObject:&unk_1F2244410 forKeyedSubscript:@"SourceType"];
      v117 = MEMORY[0x1E695E118];
      [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"MinFrameRate"];
      [v407 setObject:v117 forKeyedSubscript:@"MaxFrameRate"];
      [v407 setObject:objc_msgSend(*(v114 + 3480) forKeyedSubscript:{"numberWithInt:", *(v110 + 2)), @"DeviceType"}];
      v118 = *(v110 + 2);
      if (v118 == 12 || v118 == 6)
      {
        v119 = [v103 objectForKeyedSubscript:@"pearlModuleType"];
        if (v119)
        {
          v120 = [v119 intValue];
        }

        else
        {
          v120 = 1;
        }

        [v407 setObject:objc_msgSend(*(v114 + 3480) forKeyedSubscript:{"numberWithInt:", v120), @"PearlModuleType"}];
        v118 = *(v110 + 2);
      }

      if (v118 == 10)
      {
        v512 = 0;
        v121 = [v110[5] objectForKeyedSubscript:v359];
        if (FigCapturePlatformIdentifier() < 7)
        {
          [v407 setObject:&unk_1F2248910 forKeyedSubscript:@"SupportedTimeOfFlightProjectorModes"];
          v125 = v407;
          v126 = &unk_1F2244410;
        }

        else
        {
          v122 = [objc_msgSend(v121 getProperty:v344 error:{&v512), "mutableCopy"}];
          if ([v122 containsObject:&unk_1F2244560])
          {
            [v122 removeObject:&unk_1F2244560];
          }

          [v407 setObject:v122 forKeyedSubscript:@"SupportedTimeOfFlightProjectorModes"];

          v123 = [v103 objectForKeyedSubscript:@"TimeOfFlightCameraType"];
          if (v123)
          {
            v124 = [v123 intValue];
          }

          else
          {
            v124 = 1;
          }

          v126 = [*(v114 + 3480) numberWithInt:v124];
          v125 = v407;
        }

        [v125 setObject:v126 forKeyedSubscript:@"TimeOfFlightCameraType"];
      }

      if ([v396 objectForKeyedSubscript:v367])
      {
        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ISPAPSData"];
      }

      if ([v396 objectForKeyedSubscript:v366])
      {
        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ISPMotionData"];
      }

      if (v399 && [v396 objectForKeyedSubscript:v351])
      {
        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"TimeLapseSupported"];
      }

      if ([v396 objectForKeyedSubscript:v365])
      {
        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"AutoFocusPositionSensorCalibrationSupported"];
      }

      v392 = v103;
      if ([objc_msgSend(v103 objectForKeyedSubscript:{@"hasAutoFocus", "BOOLValue"}])
      {
        v127 = MEMORY[0x1E695E118];
        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"Focus"];
        [v407 setObject:v127 forKeyedSubscript:@"FocusPointOfInterest"];
        [objc_msgSend(v103 objectForKeyedSubscript:{@"ContinuousAutoFocusWindowWidthOverride", "floatValue"}];
        v129 = v128;
        [objc_msgSend(v103 objectForKeyedSubscript:{@"ContinuousAutoFocusWindowHeightOverride", "floatValue"}];
        if (v129 > 0.0 && v130 > 0.0)
        {
          v517.height = v130;
          v517.width = v129;
          DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v517);
          [v407 setObject:DictionaryRepresentation forKeyedSubscript:@"DefaultContinuousAutoFocusWindowSize"];
          CFRelease(DictionaryRepresentation);
        }

        [objc_msgSend(v103 objectForKeyedSubscript:{@"FocusCenterWindowSize", "floatValue"}];
        if (v132 > 0.0)
        {
          v518.height = v132;
          v518.width = (v132 * 0.75);
          v133 = CGSizeCreateDictionaryRepresentation(v518);
          [v407 setObject:v133 forKeyedSubscript:@"DefaultAutoFocusCenterWindowSize"];
          CFRelease(v133);
        }

        [objc_msgSend(v103 objectForKeyedSubscript:{@"FocusPointOfInterestWindowSize", "floatValue"}];
        if (v134 > 0.0)
        {
          v519.height = v134;
          v519.width = (v134 * 0.75);
          v135 = CGSizeCreateDictionaryRepresentation(v519);
          [v407 setObject:v135 forKeyedSubscript:@"DefaultAutoFocusTapWindowSize"];
          CFRelease(v135);
        }

        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"AutoFocusRangeRestriction"];
        if ([objc_msgSend(v103 objectForKeyedSubscript:{@"smoothAutoFocusSupported", "BOOLValue"}])
        {
          [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SmoothFocus"];
        }

        if ([objc_msgSend(v103 objectForKeyedSubscript:{@"autoFocusPositionSensorMode", "intValue"}])
        {
          [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"autoFocusPositionSensorMode", @"AutoFocusPositionSensorMode"}];
        }

        v136 = [v103 objectForKeyedSubscript:@"manualFocusSupported"];
        if (v136)
        {
          v137 = v136;
        }

        else
        {
          v137 = MEMORY[0x1E695E118];
        }

        [v407 setObject:v137 forKeyedSubscript:@"ManualFocus"];
        if ([objc_msgSend(v110[2] "supportedProperties")])
        {
          v138 = BWCaptureDevicePositionFromPortType(v359);
          v501 = 0u;
          v502 = 0u;
          v499 = 0u;
          v500 = 0u;
          v139 = [v110[5] allKeys];
          v140 = [v139 countByEnumeratingWithState:&v499 objects:&v512 count:16];
          if (v140)
          {
            v141 = v140;
            v142 = *v500;
            while (2)
            {
              for (ii = 0; ii != v141; ++ii)
              {
                if (*v500 != v142)
                {
                  objc_enumerationMutation(v139);
                }

                if (BWCaptureDevicePositionFromPortType(*(*(&v499 + 1) + 8 * ii)) == v138)
                {
                  [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F219F9D0];
                  goto LABEL_233;
                }
              }

              v141 = [v139 countByEnumeratingWithState:&v499 objects:&v512 count:16];
              if (v141)
              {
                continue;
              }

              break;
            }
          }
        }

LABEL_233:
        v113 = v369;
        v114 = 0x1E696A000;
        if (v352)
        {
          if ([objc_msgSend(v407 objectForKeyedSubscript:{@"Position", "intValue"}] == 2)
          {
            if ([objc_msgSend(v407 objectForKeyedSubscript:{@"Focus", "BOOLValue"}])
            {
              v144 = [v381[2] copyStreamWithPortType:v337 error:0];
              if (v144)
              {
                v145 = v144;
                [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F219F9F0];
              }
            }
          }
        }
      }

      if (v399)
      {
        v146 = MEMORY[0x1E695E118];
        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"Exposure"];
        [v407 setObject:v146 forKeyedSubscript:@"ExposurePointOfInterest"];
        [objc_msgSend(v103 objectForKeyedSubscript:{@"ExposureCenterWindowSize", "floatValue"}];
        if (v147 > 0.0)
        {
          v520.width = v147;
          v520.height = v520.width;
          v148 = CGSizeCreateDictionaryRepresentation(v520);
          [v407 setObject:v148 forKeyedSubscript:@"DefaultAutoExposureCenterWindowSize"];
          CFRelease(v148);
        }

        [objc_msgSend(v103 objectForKeyedSubscript:{@"ExposurePointOfInterestWindowSize", "floatValue"}];
        if (v149 > 0.0)
        {
          v521.height = (v149 * 1.3333);
          v521.width = v149;
          v150 = CGSizeCreateDictionaryRepresentation(v521);
          [v407 setObject:v150 forKeyedSubscript:@"DefaultAutoExposureTapWindowSize"];
          CFRelease(v150);
        }

        v151 = [v103 objectForKeyedSubscript:@"manualExposureSupported"];
        if (v151)
        {
          v152 = v151;
        }

        else
        {
          v152 = MEMORY[0x1E695E118];
        }

        [v407 setObject:v152 forKeyedSubscript:@"ManualExposure"];
        if ([objc_msgSend(v113 objectForKeyedSubscript:{@"appliesSessionPresetMaxIntegrationTimeOverrideToActiveFormat", "BOOLValue"}])
        {
          [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"AppliesSessionPresetMaxIntegrationTimeOverrideToActiveFormat"];
        }

        if ([v381[5] count] == 1 && objc_msgSend(objc_msgSend(objc_msgSend(v402, "getPropertyIfSupported:error:", v343, 0), "objectForKeyedSubscript:", v342), "BOOLValue"))
        {
          [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F21A0470];
        }

        v153 = [v402 getPropertyIfSupported:v349 error:0];
        if ([v153 BOOLValue])
        {
          [v407 setObject:v153 forKeyedSubscript:0x1F21A0490];
        }
      }

      [v407 setObject:objc_msgSend(v402 forKeyedSubscript:{"getProperty:error:", v364, 0), @"FocalLength"}];
      [v407 setObject:objc_msgSend(v402 forKeyedSubscript:{"getProperty:error:", v363, 0), @"LensAperture"}];
      if ([objc_msgSend(v103 objectForKeyedSubscript:{@"metadataCameraHostingSupported", "BOOLValue"}])
      {
        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F21833F0];
      }

      if ([objc_msgSend(v103 objectForKeyedSubscript:{@"metadataCameraAttachingSupported", "BOOLValue"}])
      {
        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F21A0070];
      }

      if (v399)
      {
        if ([objc_msgSend(v113 objectForKeyedSubscript:{@"softISPSupported", "BOOLValue"}])
        {
          [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F21774D0];
        }

        v154 = v381;
        if (([objc_msgSend(v113 objectForKeyedSubscript:{@"singleFrameHighlightRecoverySupported", "BOOLValue"}] & 1) != 0 || objc_msgSend(objc_msgSend(v103, "objectForKeyedSubscript:", @"singleFrameHighlightRecoverySupported"), "BOOLValue"))
        {
          [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F21A04B0];
        }

        if (([objc_msgSend(v113 objectForKeyedSubscript:{@"lowlightSingleFrameHighlightRecoverySupported", "BOOLValue"}] & 1) != 0 || objc_msgSend(objc_msgSend(v103, "objectForKeyedSubscript:", @"lowlightSingleFrameHighlightRecoverySupported"), "BOOLValue"))
        {
          [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F21A04D0];
        }

        [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"quadraQSubProcessingSupported", 0x1F21A04F0}];
        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"WhiteBalance"];
        [v407 setObject:objc_msgSend(v402 forKeyedSubscript:{"getPropertyIfSupported:error:", v348, 0), @"WhiteBalanceCalibrations"}];
        v155 = [v402 getProperty:v347 error:0];
        v156 = v407;
        if (v155)
        {
          v157 = v155;
          DWORD2(v507[0]) = 0;
          *&v507[0] = 0;
          LODWORD(v507[0]) = vcvts_n_f32_s32([objc_msgSend(v155 objectForKeyedSubscript:{v341), "intValue"}], 0xCuLL);
          DWORD1(v507[0]) = vcvts_n_f32_s32([objc_msgSend(v157 objectForKeyedSubscript:{v340), "intValue"}], 0xCuLL);
          DWORD2(v507[0]) = vcvts_n_f32_s32([objc_msgSend(v157 objectForKeyedSubscript:{v339), "intValue"}], 0xCuLL);
          v158 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v507 length:12];
          [v407 setObject:v158 forKeyedSubscript:@"DefaultWhiteBalanceGains"];
        }

        v159 = [v103 objectForKeyedSubscript:@"manualWhiteBalanceSupported"];
        if (v159)
        {
          v160 = v159;
        }

        else
        {
          v160 = MEMORY[0x1E695E118];
        }

        [v407 setObject:v160 forKeyedSubscript:@"ManualWhiteBalance"];
        [v407 setObject:v353 forKeyedSubscript:@"AVH264Settings"];
        if (FigCapturePlatformIdentifier() >= 3)
        {
          v161 = MEMORY[0x1E695E118];
          [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"HEVC"];
          v156 = v407;
          [v407 setObject:v161 forKeyedSubscript:@"HEIF"];
          if ([objc_msgSend(v113 objectForKeyedSubscript:{@"HEVCPreferred", "BOOLValue"}])
          {
            [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PrefersHEVC"];
          }

          [v407 setObject:v345 forKeyedSubscript:@"AVHEVCSettings"];
        }

        if ([objc_msgSend(v113 objectForKeyedSubscript:{@"smartCameraSupported", "BOOLValue"}])
        {
          [v156 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SmartCameraSupported"];
        }

        if (FigCapturePlatformIdentifier() >= 5)
        {
          [v156 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"GlobalToneMapping"];
        }

        if (csu_deviceSupportsWideColor(v381, v113))
        {
          [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"WideColor"];
        }

LABEL_282:
        v162 = 0;
        v163 = *(v154 + 8);
        v164 = 0;
        if (v163 != 5 && v163 != 20)
        {
          v162 = [objc_msgSend(v113 objectForKeyedSubscript:{@"objectDetectionSupported", 0), "BOOLValue"}];
          v164 = [objc_msgSend(v113 objectForKeyedSubscript:{@"faceTrackingSupported", "BOOLValue"}];
        }

        csu_addMetadataAttributes(v407, v154, v162, v164, v103);
        goto LABEL_286;
      }

      v154 = v381;
      if (v116 - 17 <= 3)
      {
        goto LABEL_282;
      }

LABEL_286:
      v165 = v407;
      [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"SmartFramingZoomFactorsByFieldOfView", @"SmartFramingZoomFactorsByFieldOfView"}];
      [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"BaseZoomFactorOverridesByAspectRatio", @"BaseZoomFactorOverridesByAspectRatio"}];
      v166 = *(v154 + 8);
      if ((v166 > 0xD || ((1 << v166) & 0x3350) == 0) && [objc_msgSend(v402 "supportedProperties")] && objc_msgSend(v402, "getProperty:error:", v338, 0))
      {
        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"CameraCalibrationDataDeliverySupported"];
      }

      if ([objc_msgSend(v103 objectForKeyedSubscript:{@"hasFlash", "BOOLValue"}])
      {
        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"Flash"];
      }

      [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"autoFlashNormalizedSNRThreshold", 0x1F21A0450}];
      [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"synchronizedStreamsSwitchOverParameters", 0x1F21A0550}];
      [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"synchronizedStreamsStereoFusionZoomFactorRange", 0x1F21A0590}];
      [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"synchronizedStreamsSlaveFrameRates", 0x1F21A05B0}];
      [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"synchronizedStreamsBaseZoomFactorCalibrations", 0x1F21A05D0}];
      [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"synchronizedStreamsBaseZoomFactorOverrides", 0x1F21A0630}];
      [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"synchronizedStreamsClientBaseZoomFactorsByPortType", 0x1F21A0650}];
      [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"synchronizedStreamsOISSISStereoFusionTeleMinIntegrationTimeDenominator", 0x1F21A0670}];
      [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"synchronizedStreamsOISSISStereoFusionTeleMinGain", 0x1F21A0690}];
      [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"stillImageCaptureNowAfterAutofocusTimeout", 0x1F21A06D0}];
      [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"stillImageContrastBasedAutofocusTimeout", 0x1F21A06F0}];
      [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"stillImagePhaseDetectionAutofocusTimeout", 0x1F21A0710}];
      [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"minimumFocusDistance", @"MinimumFocusDistance"}];
      v167 = [v113 objectForKeyedSubscript:@"VideoStabilizationAutoSelectionCinematicExtendedEnhancedDisabled"];
      if (!v167)
      {
        v167 = [v103 objectForKeyedSubscript:@"VideoStabilizationAutoSelectionCinematicExtendedEnhancedDisabled"];
      }

      [v407 setObject:v167 forKeyedSubscript:@"VideoStabilizationAutoSelectionCinematicExtendedEnhancedDisabled"];
      [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"MainToSIFRSkipRatioFor60FPS", @"MainToSIFRSkipRatioFor60FPS"}];
      [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"MainToSIFRFrameRateRatio", @"MainToSIFRFrameRateRatio"}];
      if ([objc_msgSend(v103 objectForKeyedSubscript:{@"hasTorch", "BOOLValue"}])
      {
        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"Torch"];
      }

      if ([objc_msgSend(v103 objectForKeyedSubscript:{@"visionDataDeliverySupported", "BOOLValue"}])
      {
        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VisionDataDeliverySupported"];
      }

      if ([objc_msgSend(v103 objectForKeyedSubscript:{@"midFrameSynchronizationNotSupported", "BOOLValue"}])
      {
        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F21A0010];
      }

      if ([*(v154 + 40) count] >= 2)
      {
        csu_createVideoCaptureSourceInfoForCaptureDeviceFromModelSpecificPlist_cold_1(v154, v407, @"BravoSwitchOverVideoZoomFactors");
      }

      v168 = [objc_msgSend(v103 objectForKeyedSubscript:{@"MultiStream", "objectForKeyedSubscript:", @"AVCaptureDeviceFormats"}];
      *type = 0u;
      v492 = 0u;
      v493 = 0u;
      v494 = 0u;
      v412 = [v168 allValues];
      v420 = [v412 countByEnumeratingWithState:type objects:v507 count:16];
      if (!v420)
      {
        goto LABEL_359;
      }

      LOBYTE(v169) = 0;
      LOBYTE(v170) = 0;
      LOBYTE(v171) = 0;
      LOBYTE(v172) = 0;
      LOBYTE(v173) = 0;
      LOBYTE(v174) = 0;
      LOBYTE(v432) = 0;
      LOBYTE(v436) = 0;
      LOBYTE(v175) = 0;
      LOBYTE(v176) = 0;
      v415 = *v492;
      do
      {
        v177 = 0;
        do
        {
          if (*v492 != v415)
          {
            objc_enumerationMutation(v412);
          }

          v178 = *(*&type[8] + 8 * v177);
          if (v176)
          {
            v176 = 1;
            if ((v175 & 1) == 0)
            {
              goto LABEL_307;
            }
          }

          else
          {
            v176 = [objc_msgSend(*(*&type[8] + 8 * v177) objectForKeyedSubscript:{0x1F217F1F0), "intValue"}] > 0;
            if ((v175 & 1) == 0)
            {
LABEL_307:
              v175 = [objc_msgSend(v178 objectForKeyedSubscript:{0x1F217F350), "BOOLValue"}];
              if (v169)
              {
                goto LABEL_313;
              }

              goto LABEL_311;
            }
          }

          v175 = 1;
          if (v169)
          {
            goto LABEL_313;
          }

LABEL_311:
          if (([objc_msgSend(v178 objectForKeyedSubscript:{0x1F217FCF0), "BOOLValue"}] & 1) != 0 || objc_msgSend(objc_msgSend(v178, "objectForKeyedSubscript:", 0x1F217FDF0), "BOOLValue"))
          {
LABEL_313:
            v169 = 1;
            if (v170)
            {
              goto LABEL_314;
            }

            goto LABEL_320;
          }

          v169 = 0;
          if (v170)
          {
LABEL_314:
            v170 = 1;
            if ((v171 & 1) == 0)
            {
              goto LABEL_315;
            }

            goto LABEL_321;
          }

LABEL_320:
          v170 = [objc_msgSend(v178 objectForKeyedSubscript:{0x1F217F410), "BOOLValue"}];
          if ((v171 & 1) == 0)
          {
LABEL_315:
            v171 = [objc_msgSend(v178 objectForKeyedSubscript:{0x1F217F450), "BOOLValue"}];
            if ((v172 & 1) == 0)
            {
              goto LABEL_316;
            }

            goto LABEL_322;
          }

LABEL_321:
          v171 = 1;
          if ((v172 & 1) == 0)
          {
LABEL_316:
            v172 = [objc_msgSend(v178 objectForKeyedSubscript:{0x1F217F090), "BOOLValue"}];
            if ((v173 & 1) == 0)
            {
              goto LABEL_317;
            }

            goto LABEL_323;
          }

LABEL_322:
          v172 = 1;
          if ((v173 & 1) == 0)
          {
LABEL_317:
            v173 = [objc_msgSend(v178 objectForKeyedSubscript:{@"NightModeSupported", "BOOLValue"}];
            if (v174)
            {
              goto LABEL_327;
            }

            goto LABEL_324;
          }

LABEL_323:
          v173 = 1;
          if (v174)
          {
            goto LABEL_327;
          }

LABEL_324:
          if (([objc_msgSend(v178 objectForKeyedSubscript:{0x1F217F6D0), "BOOLValue"}] & 1) != 0 || (objc_msgSend(objc_msgSend(v178, "objectForKeyedSubscript:", 0x1F217F6F0), "BOOLValue") & 1) != 0 || objc_msgSend(objc_msgSend(v178, "objectForKeyedSubscript:", 0x1F217F710), "BOOLValue"))
          {
LABEL_327:
            v174 = 1;
            goto LABEL_328;
          }

          v174 = 0;
LABEL_328:
          if (v432)
          {
            v432 = 1;
          }

          else
          {
            v432 = [objc_msgSend(v178 objectForKeyedSubscript:{0x1F217F2D0), "BOOLValue"}];
          }

          if (v436)
          {
            v436 = 1;
          }

          else
          {
            v436 = [objc_msgSend(v178 objectForKeyedSubscript:{0x1F217E990), "BOOLValue"}];
          }

          ++v177;
        }

        while (v420 != v177);
        v179 = [v412 countByEnumeratingWithState:type objects:v507 count:16];
        v420 = v179;
      }

      while (v179);
      if (v176)
      {
        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"RedEyeReduction"];
        if ((v175 & 1) == 0)
        {
          goto LABEL_340;
        }

LABEL_350:
        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217B3D0];
        v113 = v369;
        if ((v169 & 1) == 0)
        {
          goto LABEL_351;
        }

LABEL_341:
        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217FCF0];
        v154 = v381;
        if ((v170 & 1) == 0)
        {
          goto LABEL_342;
        }

LABEL_352:
        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F219AF10];
        if ((v171 & 1) == 0)
        {
          goto LABEL_353;
        }

LABEL_343:
        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F219AFD0];
        v103 = v392;
        if ((v172 & 1) == 0)
        {
          goto LABEL_344;
        }

LABEL_354:
        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SIS"];
        if ((v173 & 1) == 0)
        {
          goto LABEL_355;
        }

LABEL_345:
        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F21A0510];
        if ((v174 & 1) == 0)
        {
          goto LABEL_346;
        }

LABEL_356:
        v165 = v407;
        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VideoStabilization"];
        v114 = 0x1E696A000uLL;
        if ((v432 & 1) == 0)
        {
          goto LABEL_357;
        }

LABEL_347:
        [v165 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F21A0730];
        if ((v436 & 1) == 0)
        {
          goto LABEL_359;
        }

LABEL_358:
        [v165 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F219FBB0];
        goto LABEL_359;
      }

      if (v175)
      {
        goto LABEL_350;
      }

LABEL_340:
      v113 = v369;
      if (v169)
      {
        goto LABEL_341;
      }

LABEL_351:
      v154 = v381;
      if (v170)
      {
        goto LABEL_352;
      }

LABEL_342:
      if (v171)
      {
        goto LABEL_343;
      }

LABEL_353:
      v103 = v392;
      if (v172)
      {
        goto LABEL_354;
      }

LABEL_344:
      if (v173)
      {
        goto LABEL_345;
      }

LABEL_355:
      if (v174)
      {
        goto LABEL_356;
      }

LABEL_346:
      v114 = 0x1E696A000;
      v165 = v407;
      if (v432)
      {
        goto LABEL_347;
      }

LABEL_357:
      if (v436)
      {
        goto LABEL_358;
      }

LABEL_359:
      if ([v396 objectForKeyedSubscript:v362])
      {
        v180 = v165;
        v181 = MEMORY[0x1E695E118];
        [v180 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"Sphere"];
        v182 = v181;
        v165 = v407;
        [v407 setObject:v182 forKeyedSubscript:@"SphereVideo"];
        [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"SphereVideoMaxFrameRate", @"SphereVideoMaxFrameRate"}];
        if ([objc_msgSend(v103 objectForKeyedSubscript:{@"sphereModeStillActivePreviewSupported", "BOOLValue"}])
        {
          [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SphereStillActivePreview"];
        }

        [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"TrueVideoUsesSphereModeVideoHighRange", @"TrueVideoUsesSphereModeVideoHighRange"}];
      }

      if ([objc_msgSend(v103 objectForKeyedSubscript:{@"stillImageISPChromaNoiseReductionSupported", "BOOLValue"}])
      {
        [v165 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217F330];
      }

      [v165 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"stillImageNoiseReductionAndFusionScheme", 0x1F21A0530}];
      if (v399 && [objc_msgSend(v113 objectForKeyedSubscript:{@"ProResSupported", "BOOLValue"}])
      {
        [v165 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ProResSupported"];
      }

      if ([objc_msgSend(v103 objectForKeyedSubscript:{@"ispChromaNoiseReductionForPairingDisabled", "BOOLValue"}])
      {
        [v165 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F21A06B0];
      }

      if ([+[FigCaptureCameraParameters focalLengthCharacterizationForStream:"focalLengthCharacterizationForStream:"]
      {
        [v165 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"FocalLengthCharacterization"];
      }

      [v165 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"multiPassIspMBNRSupported", @"MultiPassIspMBNRSupported"}];
      [v165 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"ispMBNRSupported", @"IspMBNRSupported"}];
      v183 = [v103 objectForKeyedSubscript:@"stillImageDepthDataType"];
      if (v183)
      {
        [v165 setObject:v183 forKeyedSubscript:@"StillImageDepthDataType"];
      }

      if ([(FigCaptureSourceStreamsContainer *)v154 portTypesSupportingDepth])
      {
        [v165 setObject:-[FigCaptureSourceStreamsContainer zoomFactorsForDepth](v381) forKeyedSubscript:@"VideoZoomFactorsForDepthDataDelivery"];
        if ([objc_msgSend(v369 objectForKeyedSubscript:{@"SupportedSemanticSegmentationMatteURNs", "count"}])
        {
          [v407 setObject:objc_msgSend(v369 forKeyedSubscript:{"objectForKeyedSubscript:", @"SupportedSemanticSegmentationMatteURNs", @"SupportedSemanticSegmentationMatteURNs"}];
        }

        [objc_msgSend(v103 objectForKeyedSubscript:{@"PortraitEffectsMatteMainImageDownscalingFactor", "floatValue"}];
        if (v184 > 0.0)
        {
          [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"PortraitEffectsMatteMainImageDownscalingFactor", @"PortraitEffectsMatteMainImageDownscalingFactor"}];
        }

        v185 = [v369 objectForKeyedSubscript:@"DepthDataDeliveryConfigurations"];
        v165 = v407;
        if (v185)
        {
          v186 = v185;
          v187 = [MEMORY[0x1E695DF90] dictionary];
          if ([objc_msgSend(v186 objectForKeyedSubscript:{@"DemosaicedRawConfigurationSupported", "BOOLValue"}])
          {
            [v187 setObject:objc_msgSend(v186 forKeyedSubscript:{"objectForKeyedSubscript:", @"DemosaicedRawConfigurationSupported", @"DemosaicedRawConfigurationSupported"}];
          }

          if ([objc_msgSend(v186 objectForKeyedSubscript:{@"DCProcessingSupported", "BOOLValue"}])
          {
            [v187 setObject:objc_msgSend(v186 forKeyedSubscript:{"objectForKeyedSubscript:", @"DCProcessingSupported", @"DCProcessingSupported"}];
          }

          if ([objc_msgSend(v186 objectForKeyedSubscript:{@"StillImageGGMSupported", "BOOLValue"}])
          {
            [v187 setObject:objc_msgSend(v186 forKeyedSubscript:{"objectForKeyedSubscript:", @"StillImageGGMSupported", @"StillImageGGMSupported"}];
          }

          if ([objc_msgSend(v186 objectForKeyedSubscript:{@"VideoSTFMetadataSupported", "BOOLValue"}])
          {
            [v187 setObject:objc_msgSend(v186 forKeyedSubscript:{"objectForKeyedSubscript:", @"VideoSTFMetadataSupported", @"VideoSTFMetadataSupported"}];
          }

          if ([objc_msgSend(v186 objectForKeyedSubscript:{@"FastModeSwitchingSupported", "BOOLValue"}])
          {
            [v187 setObject:objc_msgSend(v186 forKeyedSubscript:{"objectForKeyedSubscript:", @"FastModeSwitchingSupported", @"FastModeSwitchingSupported"}];
          }

          if ([objc_msgSend(v186 objectForKeyedSubscript:{@"CapturePipeliningSupported", "BOOLValue"}])
          {
            [v187 setObject:objc_msgSend(v186 forKeyedSubscript:{"objectForKeyedSubscript:", @"CapturePipeliningSupported", @"CapturePipeliningSupported"}];
          }

          if ([objc_msgSend(v186 objectForKeyedSubscript:{@"DeepFusionSupported", "BOOLValue"}])
          {
            [v187 setObject:objc_msgSend(v186 forKeyedSubscript:{"objectForKeyedSubscript:", @"DeepFusionSupported", @"DeepFusionSupported"}];
          }

          if ([v187 count])
          {
            [v407 setObject:v187 forKeyedSubscript:@"DepthDataDeliveryConfigurations"];
          }
        }
      }

      if ([objc_msgSend(v103 objectForKeyedSubscript:{@"previewQualityAdjustedPhotoFilterRenderingSupported", "BOOLValue"}])
      {
        [v165 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PreviewQualityAdjustedPhotoFilterRenderingSupported"];
      }

      [v407 setObject:objc_msgSend(objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"SpherePowerConsumption", "objectForKeyedSubscript:", @"Lock", @"PowerConsumptionInSphereModeLock"}];
      [v407 setObject:objc_msgSend(objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"SpherePowerConsumption", "objectForKeyedSubscript:", @"Video", @"PowerConsumptionInSphereModeVideo"}];
      [v407 setObject:objc_msgSend(objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"SpherePowerConsumption", "objectForKeyedSubscript:", @"VideoHighRange", @"PowerConsumptionInSphereModeVideoHighRange"}];
      [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"SensorThermalLevelsByTemperature", @"SensorThermalLevelsByTemperature"}];
      [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"FrameRatesForSystemPressureLevel", @"FrameRatesForSystemPressureLevel"}];
      if ([objc_msgSend(v103 objectForKeyedSubscript:{@"ThrottleFrameRatesWithDepthDisabled", "BOOLValue"}])
      {
        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ThrottleFrameRatesWithDepthDisabled"];
      }

      v188 = [objc_msgSend(v103 objectForKeyedSubscript:{@"geometricDistortionCorrection", "BOOLValue"}];
      v189 = [objc_msgSend(v103 objectForKeyedSubscript:{@"geometricDistortionCorrectionForSmartCropEnabled", "BOOLValue"}];
      if ((v188 & 1) != 0 || v189)
      {
        if (v188)
        {
          v190 = @"GeometricDistortionCorrection";
        }

        else
        {
          v190 = @"geometricDistortionCorrectionForSmartCropEnabled";
        }

        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v190];
      }

      [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"GeometricDistortionCorrectionExpandsImageDimensions", @"GeometricDistortionCorrectionExpandsImageDimensions"}];
      [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"constituentPhotoCalibrationDataSupported", @"ConstituentPhotoCalibrationData"}];
      v191 = v381;
      if ([objc_msgSend(v103 objectForKeyedSubscript:{@"videoZoomSmoothingSupported", "BOOLValue"}])
      {
        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VideoZoomSmoothingSupported"];
      }

      if ([v103 objectForKeyedSubscript:@"lockedFrameDurationMaxFrameRate"])
      {
        v192 = [objc_msgSend(v103 objectForKeyedSubscript:{@"lockedFrameDurationMaxFrameRate", "intValue"}];
        if (v192 >= 1)
        {
          [v407 setObject:objc_msgSend(*(v114 + 3480) forKeyedSubscript:{"numberWithInt:", v192), @"LockedFrameDurationMaxFrameRate"}];
        }
      }

      if ([v103 objectForKeyedSubscript:@"externalSyncMaxFrameRate"])
      {
        v193 = [objc_msgSend(v103 objectForKeyedSubscript:{@"externalSyncMaxFrameRate", "intValue"}];
        if (v193 >= 1)
        {
          [v407 setObject:objc_msgSend(*(v114 + 3480) forKeyedSubscript:{"numberWithInt:", v193), @"ExternalSyncMaxFrameRate"}];
        }
      }

      if ([objc_msgSend(v103 objectForKeyedSubscript:{@"SensorOutputLargerThanImageCircle", "BOOLValue"}])
      {
        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SensorOutputLargerThanImageCircle"];
      }

      if ([v103 objectForKeyedSubscript:@"CameraSensorOrientationCompensation"])
      {
        [v407 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"CameraSensorOrientationCompensation", @"CameraSensorOrientationCompensation"}];
      }

      if ([objc_msgSend(v103 objectForKeyedSubscript:{@"FaceAwareVideoStabilizationSupported", "BOOLValue"}])
      {
        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"FaceAwareVideoStabilizationSupported"];
      }

      if ([objc_msgSend(v103 objectForKeyedSubscript:{@"rawBufferCompandingDisabled", "BOOLValue"}])
      {
        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"RawBufferCompandingDisabled"];
      }

      if (v399)
      {
        v194 = [MEMORY[0x1E695DF70] array];
        if ([v396 objectForKeyedSubscript:v358])
        {
          v195 = [v402 getProperty:v358 error:0];
          if (v195)
          {
            [v194 addObjectsFromArray:v195];
          }
        }

        if ([v396 objectForKeyedSubscript:v357])
        {
          [v194 addObject:v357];
        }

        if ([v396 objectForKeyedSubscript:v356])
        {
          [v194 addObject:v356];
        }

        if ([v396 objectForKeyedSubscript:v355])
        {
          [v194 addObject:v355];
        }

        if ([v396 objectForKeyedSubscript:v354])
        {
          [v194 addObject:v354];
        }

        [v407 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithArray:", v194), @"VisionDataConfigurationAndRuntimeSupportedKeys"}];
      }

      v196 = +[FigCaptureCameraParameters sensorIDStringFromModuleInfo:](FigCaptureCameraParameters, "sensorIDStringFromModuleInfo:", [v402 getProperty:v361 error:0]);
      v197 = +[FigCaptureCameraParameters cinematicFramingVirtualCameraConfigurationForPortType:sensorIDString:](FigCaptureCameraParameters, "cinematicFramingVirtualCameraConfigurationForPortType:sensorIDString:", [v402 portType], v196);
      if (v197)
      {
        [v407 setObject:v197 forKeyedSubscript:@"CinematicFramingVirtualCameraConfiguration"];
      }

      v198 = +[FigCaptureCameraParameters temporalFilterSessionConfigurationForPortType:sensorIDString:](FigCaptureCameraParameters, "temporalFilterSessionConfigurationForPortType:sensorIDString:", [v402 portType], v196);
      if (v198)
      {
        [v407 setObject:v198 forKeyedSubscript:@"MotionCompensatedTemporalFilterNoiseReductionConfiguration"];
      }

      if (BWDeviceIsiPhone())
      {
        v199 = MGGetBoolAnswer();
      }

      else
      {
        v199 = 0;
      }

      [v407 setObject:objc_msgSend(*(v114 + 3480) forKeyedSubscript:{"numberWithBool:", v199), @"DockedTrackingSupported"}];
      if ([objc_msgSend(v369 objectForKeyedSubscript:{@"DICOMCaptureSupported", "BOOLValue"}])
      {
        [v407 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"DICOM"];
      }

      v200 = v407;
      MultiStreamSourceFormatsArrayAndAddAVCompressionSettingsAttribute = csu_createMultiStreamSourceFormatsArrayAndAddAVCompressionSettingsAttribute(v381, v103, v369, v200, v485);
      [v383 setObject:objc_msgSend(*(v114 + 3480) forKeyedSubscript:{"numberWithUnsignedInt:", v388), @"MediaType"}];
      [v383 setObject:v200 forKeyedSubscript:@"Attributes"];
      [v383 setObject:MultiStreamSourceFormatsArrayAndAddAVCompressionSettingsAttribute forKeyedSubscript:@"Formats"];
      [v383 setObject:v485[0] forKeyedSubscript:@"MissingFormats"];
      [v383 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"synchronizedStreamUniqueIDs", @"SynchronizedStreamUniqueIDs"}];
      [v383 setObject:objc_msgSend(v103 forKeyedSubscript:{"objectForKeyedSubscript:", @"unsynchronizedStreamUniqueIDs", @"UnsynchronizedStreamUniqueIDs"}];

      v101 = v370;
      if (v383)
      {
        if ([v381[5] count] >= 2)
        {
          v373 = [v383 objectForKeyedSubscript:@"Formats"];
          v202 = [v383 objectForKeyedSubscript:@"SynchronizedStreamUniqueIDs"];
          v203 = [v383 objectForKeyedSubscript:@"UnsynchronizedStreamUniqueIDs"];
          if ([v203 count])
          {
            v204 = v203;
          }

          else
          {
            v204 = v202;
          }

          v508 = 0u;
          v509 = 0u;
          v510 = 0u;
          v511 = 0u;
          v400 = v204;
          v205 = [v204 countByEnumeratingWithState:&v508 objects:v507 count:16];
          if (v205)
          {
            v206 = v205;
            v207 = 0;
            v208 = 0;
            v209 = 0;
            v437 = *v509;
            v210 = -1;
            do
            {
              for (jj = 0; jj != v206; ++jj)
              {
                if (*v509 != v437)
                {
                  objc_enumerationMutation(v400);
                }

                v212 = [objc_msgSend(v418 objectForKeyedSubscript:{*(*(&v508 + 1) + 8 * jj)), "objectForKeyedSubscript:", @"Attributes"}];
                v213 = [objc_msgSend(v212 objectForKeyedSubscript:{@"GeometricDistortionCorrection", "BOOLValue"}];
                v214 = [objc_msgSend(v212 objectForKeyedSubscript:{@"GeometricDistortionCorrectionExpandsImageDimensions", "BOOLValue"}];
                v215 = [objc_msgSend(v212 objectForKeyedSubscript:{@"geometricDistortionCorrectionForSmartCropEnabled", "BOOLValue"}];
                if ([objc_msgSend(v212 objectForKeyedSubscript:{@"Focus", "BOOLValue"}])
                {
                  v216 = [objc_msgSend(v212 objectForKeyedSubscript:{@"MinimumFocusDistance", "integerValue"}];
                  if (v210 >= v216)
                  {
                    v217 = v216;
                  }

                  else
                  {
                    v217 = v210;
                  }

                  if (v210 == -1)
                  {
                    v217 = v216;
                  }

                  if (v216 >= 1)
                  {
                    v210 = v217;
                  }
                }

                v114 = 0x1E696A000uLL;
                v209 |= v213;
                v208 |= v214;
                v207 |= v215;
              }

              v206 = [v400 countByEnumeratingWithState:&v508 objects:v507 count:16];
            }

            while (v206);
            if (v209)
            {
              [objc_msgSend(v383 objectForKeyedSubscript:{@"Attributes", "setObject:forKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", 1), @"GeometricDistortionCorrection"}];
              if ((v208 & 1) == 0)
              {
                goto LABEL_476;
              }

LABEL_475:
              [objc_msgSend(v383 objectForKeyedSubscript:{@"Attributes", "setObject:forKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", 1), @"GeometricDistortionCorrectionExpandsImageDimensions"}];
            }

            else if (v208)
            {
              goto LABEL_475;
            }

LABEL_476:
            if (v207)
            {
              [objc_msgSend(v383 objectForKeyedSubscript:{@"Attributes", "setObject:forKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", 1), @"geometricDistortionCorrectionForSmartCropEnabled"}];
            }
          }

          else
          {
            v210 = -1;
          }

          [objc_msgSend(v383 objectForKeyedSubscript:{@"Attributes", "setObject:forKeyedSubscript:", objc_msgSend(*(v114 + 3480), "numberWithInteger:", v210), @"MinimumFocusDistance"}];
          v374 = [MEMORY[0x1E695DF70] array];
          v503 = 0u;
          v504 = 0u;
          v505 = 0u;
          v506 = 0u;
          v377 = [v373 countByEnumeratingWithState:&v503 objects:&v499 count:16];
          if (!v377)
          {
            goto LABEL_631;
          }

          v376 = *v504;
          while (2)
          {
            v224 = 0;
LABEL_481:
            if (*v504 != v376)
            {
              objc_enumerationMutation(v373);
            }

            v379 = v224;
            v438 = *(*(&v503 + 1) + 8 * v224);
            v413 = [MEMORY[0x1E695DF70] array];
            v225 = [MEMORY[0x1E695DF70] array];
            v495 = 0u;
            v496 = 0u;
            v497 = 0u;
            v498 = 0u;
            v421 = [v400 countByEnumeratingWithState:&v495 objects:type count:16];
            if (!v421)
            {
              v226 = 0;
              v408 = 0;
              goto LABEL_555;
            }

            v389 = 0;
            v408 = 0;
            v226 = 0;
            v416 = *v496;
LABEL_485:
            v227 = 0;
LABEL_486:
            if (*v496 != v416)
            {
              objc_enumerationMutation(v400);
            }

            v228 = *(*(&v495 + 1) + 8 * v227);
            v229 = [objc_msgSend(objc_msgSend(objc_msgSend(v418 objectForKeyedSubscript:{v228, v335), "objectForKeyedSubscript:", @"Attributes", "objectForKeyedSubscript:", @"DeviceType", "intValue"}];
            v230 = [objc_msgSend(v418 objectForKeyedSubscript:{v228), "objectForKeyedSubscript:", @"Formats"}];
            v231 = v230;
            switch(v229)
            {
              case 20:
LABEL_491:
                if ([v230 count] != 1)
                {
                  v328 = MEMORY[0x1E695DF30];
                  v329 = *MEMORY[0x1E695D930];
                  v330 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Only one stream format is currently supported on the IR camera. Stream format count: %lu", objc_msgSend(v231, "count")];
                  v331 = v328;
                  v332 = v329;
                  goto LABEL_652;
                }

                v232 = [v231 firstObject];
                if (v232)
                {
                  v226 = v232;
                  [v413 addObject:v232];
                }

                else
                {
                  v490 = 0;
                  v460[4] = OS_LOG_TYPE_DEFAULT;
                  v247 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v248 = v490;
                  if (os_log_type_enabled(v247, v460[4]))
                  {
                    v249 = v248;
                  }

                  else
                  {
                    v249 = v248 & 0xFFFFFFFE;
                  }

                  if (v249)
                  {
                    v250 = [v438 objectForKeyedSubscript:0x1F217E430];
                    LODWORD(v514[0]) = 136315650;
                    *(v514 + 4) = "csu_reconcileDerivedSourceInfoDictionaryAcrossUnderlyingStreams";
                    WORD6(v514[0]) = 2114;
                    *(v514 + 14) = v250;
                    WORD3(v514[1]) = 2114;
                    *(&v514[1] + 1) = v228;
                    LODWORD(v336) = 32;
                    v335 = v514;
                    _os_log_send_and_compose_impl();
                  }

                  v114 = 0x1E696A000;
                  v389 = 1;
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v226 = 0;
                }

                break;
              case 10:
                if (v230)
                {
                  [v413 addObjectsFromArray:v230];
                  v408 = v231;
                }

                else
                {
                  v251 = v226;
                  v490 = 0;
                  v460[4] = OS_LOG_TYPE_DEFAULT;
                  v252 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v253 = v490;
                  if (os_log_type_enabled(v252, v460[4]))
                  {
                    v254 = v253;
                  }

                  else
                  {
                    v254 = v253 & 0xFFFFFFFE;
                  }

                  if (v254)
                  {
                    v255 = [v438 objectForKeyedSubscript:0x1F217E430];
                    LODWORD(v514[0]) = 136315650;
                    *(v514 + 4) = "csu_reconcileDerivedSourceInfoDictionaryAcrossUnderlyingStreams";
                    WORD6(v514[0]) = 2114;
                    *(v514 + 14) = v255;
                    WORD3(v514[1]) = 2114;
                    *(&v514[1] + 1) = v228;
                    LODWORD(v336) = 32;
                    v335 = v514;
                    _os_log_send_and_compose_impl();
                  }

                  v114 = 0x1E696A000;
                  v389 = 1;
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v408 = 0;
                  v226 = v251;
                }

                break;
              case 5:
                goto LABEL_491;
              default:
                v393 = v229;
                v397 = v227;
                v403 = v226;
                memset(v514, 0, sizeof(v514));
                v515 = 0u;
                v516 = 0u;
                v233 = [v230 countByEnumeratingWithState:v514 objects:&v512 count:16];
                if (v233)
                {
                  v234 = v233;
                  v433 = **&v514[1];
                  v235 = v438;
LABEL_498:
                  v236 = 0;
                  while (1)
                  {
                    if (**&v514[1] != v433)
                    {
                      objc_enumerationMutation(v231);
                    }

                    v237 = *(*(&v514[0] + 1) + 8 * v236);
                    v238 = [v237 objectForKeyedSubscript:0x1F217F9D0];
                    v239 = [v237 objectForKeyedSubscript:0x1F217FAB0];
                    v240 = [v237 objectForKeyedSubscript:0x1F217EB50];
                    v241 = [v235 objectForKeyedSubscript:0x1F217E430];
                    v242 = [v238 objectForKeyedSubscript:0x1F217E430];
                    v243 = v241;
                    v235 = v438;
                    if ([v243 isEqualToString:v242])
                    {
                      v244 = [v438 objectForKeyedSubscript:v441];
                      v245 = [v238 objectForKeyedSubscript:v441];
                      v246 = v244;
                      v235 = v438;
                      if ([v246 isEqual:v245])
                      {
                        break;
                      }
                    }

                    if ([objc_msgSend(v235 objectForKeyedSubscript:{0x1F217E430), "isEqualToString:", objc_msgSend(v239, "objectForKeyedSubscript:", 0x1F217E430)}])
                    {
                      v238 = v239;
                      if ([objc_msgSend(v235 objectForKeyedSubscript:{v441), "isEqual:", objc_msgSend(v239, "objectForKeyedSubscript:", v441)}])
                      {
                        break;
                      }
                    }

                    if ([objc_msgSend(v235 objectForKeyedSubscript:{0x1F217E430), "isEqualToString:", objc_msgSend(v240, "objectForKeyedSubscript:", 0x1F217E430)}])
                    {
                      v238 = v240;
                      if ([objc_msgSend(v235 objectForKeyedSubscript:{v441), "isEqual:", objc_msgSend(v240, "objectForKeyedSubscript:", v441)}])
                      {
                        break;
                      }
                    }

                    if ([objc_msgSend(v235 objectForKeyedSubscript:{0x1F217E430), "isEqualToString:", objc_msgSend(v237, "objectForKeyedSubscript:", 0x1F217E430)}])
                    {
                      v238 = v237;
                      if ([objc_msgSend(v235 objectForKeyedSubscript:{v441), "isEqual:", objc_msgSend(v237, "objectForKeyedSubscript:", v441)}])
                      {
                        break;
                      }
                    }

                    if (v234 == ++v236)
                    {
                      v234 = [v231 countByEnumeratingWithState:v514 objects:&v512 count:16];
                      v238 = 0;
                      if (v234)
                      {
                        goto LABEL_498;
                      }

                      break;
                    }
                  }
                }

                else
                {
                  v238 = 0;
                }

                v256 = BWCaptureDevicePositionAndDeviceTypeToPortType([objc_msgSend(objc_msgSend(v383 objectForKeyedSubscript:{@"Attributes", "objectForKeyedSubscript:", @"Position", "intValue"}], v393);
                if (v238)
                {
                  v257 = v256;
                  [v413 addObject:v238];
                  v258 = [v238 objectForKeyedSubscript:0x1F217EF30];
                  if ([v257 isEqual:v380])
                  {
                    v259 = [v381[6] count] != 0;
                  }

                  else
                  {
                    v259 = 0;
                  }

                  v114 = 0x1E696A000uLL;
                  if ([v258 count] && !v259)
                  {
                    v264 = v381[6];
                    if (v264)
                    {
                      [objc_msgSend(v264 objectForKeyedSubscript:{v257), "floatValue"}];
                      v266 = v265;
                      v226 = v403;
                      if (v265 == 0.0)
                      {
LABEL_549:
                        v227 = v397;
                        break;
                      }
                    }

                    else
                    {
                      v266 = 1.0;
                      v226 = v403;
                    }

                    v489 = 0u;
                    v488 = 0u;
                    v487 = 0u;
                    v486 = 0u;
                    v267 = [v258 countByEnumeratingWithState:&v486 objects:v485 count:16];
                    if (!v267)
                    {
                      goto LABEL_549;
                    }

                    v268 = v267;
                    v269 = *v487;
                    do
                    {
                      for (kk = 0; kk != v268; ++kk)
                      {
                        if (*v487 != v269)
                        {
                          objc_enumerationMutation(v258);
                        }

                        [*(*(&v486 + 1) + 8 * kk) floatValue];
                        *&v272 = v266 * v271;
                        [v225 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v272)}];
                      }

                      v268 = [v258 countByEnumeratingWithState:&v486 objects:v485 count:16];
                    }

                    while (v268);
                  }

                  v226 = v403;
                  goto LABEL_549;
                }

                v490 = 0;
                v460[4] = OS_LOG_TYPE_DEFAULT;
                v260 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v261 = v490;
                if (os_log_type_enabled(v260, v460[4]))
                {
                  v262 = v261;
                }

                else
                {
                  v262 = v261 & 0xFFFFFFFE;
                }

                if (v262)
                {
                  v263 = [v438 objectForKeyedSubscript:0x1F217E430];
                  LODWORD(v514[0]) = 136315650;
                  *(v514 + 4) = "csu_reconcileDerivedSourceInfoDictionaryAcrossUnderlyingStreams";
                  WORD6(v514[0]) = 2114;
                  *(v514 + 14) = v263;
                  WORD3(v514[1]) = 2114;
                  *(&v514[1] + 1) = v228;
                  LODWORD(v336) = 32;
                  v335 = v514;
                  _os_log_send_and_compose_impl();
                }

                v114 = 0x1E696A000;
                v227 = v397;
                v389 = 1;
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v226 = v403;
                break;
            }

            if (++v227 == v421)
            {
              v421 = [v400 countByEnumeratingWithState:&v495 objects:type count:16];
              if (!v421)
              {
                if (v389)
                {
                  [v374 addObject:v438];
                  goto LABEL_629;
                }

LABEL_555:
                v484 = 0u;
                v483 = 0u;
                v482 = 0u;
                v481 = 0u;
                v273 = [v413 countByEnumeratingWithState:&v481 objects:&v477 count:{16, v335}];
                if (v273)
                {
                  v274 = v273;
                  v275 = 0;
                  v434 = 0;
                  v276 = 0;
                  v394 = 0;
                  v417 = 0;
                  v422 = 0;
                  v277 = *v482;
                  v398 = -1;
                  v404 = 1;
                  v278 = 0.0;
                  v279 = 0x7FFFFFFFLL;
                  v280 = 3.4028e38;
                  v390 = *v482;
                  do
                  {
                    for (mm = 0; mm != v274; ++mm)
                    {
                      if (*v482 != v277)
                      {
                        objc_enumerationMutation(v413);
                      }

                      v282 = *(*(&v481 + 1) + 8 * mm);
                      if (v282 != v226 || [objc_msgSend(v438 objectForKeyedSubscript:{0x1F217EC70), "count"}])
                      {
                        v283 = [objc_msgSend(v282 objectForKeyedSubscript:{v426), "intValue"}];
                        v284 = [objc_msgSend(v282 objectForKeyedSubscript:{v424), "intValue"}];
                        v275 = v275 <= v283 ? v283 : v275;
                        v279 = v279 >= v284 ? v284 : v279;
                        if (v282 != v226 && ([v408 containsObject:v282] & 1) == 0)
                        {
                          v285 = v274;
                          v286 = v226;
                          [objc_msgSend(v282 objectForKeyedSubscript:{v410), "floatValue"}];
                          v288 = v287;
                          v289 = [v282 objectForKeyedSubscript:0x1F217EB90];
                          v290 = [objc_msgSend(v282 objectForKeyedSubscript:{v382), "BOOLValue"}];
                          v394 = [objc_msgSend(v282 objectForKeyedSubscript:{0x1F217F2D0), "BOOLValue"}];
                          v291 = [v282 objectForKeyedSubscript:0x1F217EBF0];
                          if (v291)
                          {
                            v292 = [v291 intValue];
                            v293 = v398;
                            if (v398 == -1)
                            {
                              v293 = v292;
                            }

                            v398 = v293;
                          }

                          v404 &= v290;
                          v294 = [objc_msgSend(v282 objectForKeyedSubscript:{0x1F217F2F0), "intValue"}];
                          if (v294)
                          {
                            v295 = v294;
                          }

                          else
                          {
                            v295 = v417;
                          }

                          v417 = v295;
                          v296 = [objc_msgSend(v282 objectForKeyedSubscript:{0x1F217F310), "intValue"}];
                          v297 = v422;
                          if (v296)
                          {
                            v297 = v296;
                          }

                          v422 = v297;
                          v298 = v278 < v288;
                          if (v278 < v288)
                          {
                            v278 = v288;
                          }

                          v299 = v434;
                          if (v298)
                          {
                            v299 = v289;
                          }

                          v434 = v299;
                          if (v280 > v288)
                          {
                            v280 = v288;
                            v276 = v289;
                          }

                          v226 = v286;
                          v274 = v285;
                          v277 = v390;
                        }
                      }
                    }

                    v274 = [v413 countByEnumeratingWithState:&v481 objects:&v477 count:16];
                  }

                  while (v274);
                  v300 = v417;
                  if (v404)
                  {
                    v301 = MEMORY[0x1E695E118];
                  }

                  else
                  {
                    v301 = 0;
                  }

                  if (v394)
                  {
                    v302 = MEMORY[0x1E695E118];
                  }

                  else
                  {
                    v302 = 0;
                  }

                  v114 = 0x1E696A000;
                  v303 = v398;
                }

                else
                {
                  v275 = 0;
                  v434 = 0;
                  v276 = 0;
                  v302 = 0;
                  v300 = 0;
                  v422 = 0;
                  v303 = 0xFFFFFFFFLL;
                  v278 = 0.0;
                  v279 = 0x7FFFFFFFLL;
                  v280 = 3.4028e38;
                  v301 = MEMORY[0x1E695E118];
                }

                [v438 setObject:objc_msgSend(*(v114 + 3480) forKeyedSubscript:{"numberWithInt:", v275), v426}];
                [v438 setObject:objc_msgSend(*(v114 + 3480) forKeyedSubscript:{"numberWithInt:", v279), v424}];
                *&v304 = v278;
                [v438 setObject:objc_msgSend(*(v114 + 3480) forKeyedSubscript:{"numberWithFloat:", v304), v410}];
                [v438 setObject:v301 forKeyedSubscript:v382];
                [v438 setObject:v302 forKeyedSubscript:0x1F217F2D0];
                if (v303 != -1)
                {
                  [v438 setObject:objc_msgSend(*(v114 + 3480) forKeyedSubscript:{"numberWithInt:", v303), 0x1F217EBF0}];
                }

                if (v300 >= 1)
                {
                  [v438 setObject:objc_msgSend(*(v114 + 3480) forKeyedSubscript:{"numberWithInt:", v300), 0x1F217F2F0}];
                }

                if (v422 >= 1)
                {
                  [v438 setObject:objc_msgSend(*(v114 + 3480) forKeyedSubscript:{"numberWithInt:"), 0x1F217F310}];
                }

                if (v434)
                {
                  [v438 setObject:v434 forKeyedSubscript:0x1F217EB90];
                }

                if ([v225 count])
                {
                  [v438 setObject:v225 forKeyedSubscript:0x1F217EF30];
                }

                else
                {
                  [v438 removeObjectForKey:0x1F217EF30];
                }

                v305 = [v438 objectForKeyedSubscript:0x1F217EC70];
                v473 = 0u;
                v474 = 0u;
                v475 = 0u;
                v476 = 0u;
                v306 = [v305 countByEnumeratingWithState:&v473 objects:&v469 count:16];
                if (v306)
                {
                  v307 = v306;
                  v308 = *v474;
                  do
                  {
                    for (nn = 0; nn != v307; ++nn)
                    {
                      if (*v474 != v308)
                      {
                        objc_enumerationMutation(v305);
                      }

                      v310 = *(*(&v473 + 1) + 8 * nn);
                      v311 = [objc_msgSend(v310 objectForKeyedSubscript:{v426), "intValue"}];
                      v312 = [objc_msgSend(v310 objectForKeyedSubscript:{v424), "intValue"}];
                      if (v275 <= v311)
                      {
                        v275 = v311;
                      }

                      else
                      {
                        v275 = v275;
                      }

                      if (v279 >= v312)
                      {
                        v279 = v312;
                      }

                      else
                      {
                        v279 = v279;
                      }
                    }

                    v307 = [v305 countByEnumeratingWithState:&v473 objects:&v469 count:16];
                  }

                  while (v307);
                }

                v468 = 0u;
                v467 = 0u;
                v466 = 0u;
                v465 = 0u;
                v313 = [v305 countByEnumeratingWithState:&v465 objects:&v461 count:16];
                if (v313)
                {
                  v314 = v313;
                  v315 = *v466;
                  do
                  {
                    for (i1 = 0; i1 != v314; ++i1)
                    {
                      if (*v466 != v315)
                      {
                        objc_enumerationMutation(v305);
                      }

                      v317 = *(*(&v465 + 1) + 8 * i1);
                      [v317 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v275), v426}];
                      [v317 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v279), v424}];
                      *&v318 = v280;
                      [v317 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v318), v410}];
                      if (v276)
                      {
                        [v317 setObject:v276 forKeyedSubscript:0x1F217EB90];
                      }
                    }

                    v314 = [v305 countByEnumeratingWithState:&v465 objects:&v461 count:16];
                  }

                  while (v314);
                }

LABEL_629:
                v224 = v379 + 1;
                v114 = 0x1E696A000;
                if (v379 + 1 == v377)
                {
                  v377 = [v373 countByEnumeratingWithState:&v503 objects:&v499 count:16];
                  if (!v377)
                  {
LABEL_631:
                    v319 = v383;
                    if ([v374 count])
                    {
                      [v373 removeObjectsInArray:v374];
                      v320 = [MEMORY[0x1E695DF70] arrayWithArray:{objc_msgSend(v383, "objectForKeyedSubscript:", @"MissingFormats"}];
                      memset(v514, 0, sizeof(v514));
                      v515 = 0u;
                      v516 = 0u;
                      v321 = [v374 countByEnumeratingWithState:v514 objects:&v512 count:16];
                      if (v321)
                      {
                        v322 = v321;
                        v323 = **&v514[1];
                        do
                        {
                          for (i2 = 0; i2 != v322; ++i2)
                          {
                            if (**&v514[1] != v323)
                            {
                              objc_enumerationMutation(v374);
                            }

                            [v320 addObject:{objc_msgSend(*(*(&v514[0] + 1) + 8 * i2), "objectForKeyedSubscript:", 0x1F217E430)}];
                          }

                          v322 = [v374 countByEnumeratingWithState:v514 objects:&v512 count:16];
                        }

                        while (v322);
                      }

                      [v383 setObject:v320 forKeyedSubscript:@"MissingFormats"];
                    }

                    v101 = v370;
                    v191 = v381;
                    goto LABEL_644;
                  }

                  continue;
                }

                goto LABEL_481;
              }

              goto LABEL_485;
            }

            goto LABEL_486;
          }
        }

        v218 = [v103 objectForKeyedSubscript:@"uniqueID"];
        if ([v418 objectForKeyedSubscript:v218])
        {
          FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
          LODWORD(v499) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v220 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v221 = v499;
          if (os_log_type_enabled(v220, type[0]))
          {
            v222 = v221;
          }

          else
          {
            v222 = v221 & 0xFFFFFFFE;
          }

          if (v222)
          {
            LODWORD(v507[0]) = 136315394;
            *(v507 + 4) = "csu_createVideoCaptureSourceInfoForCaptureDeviceFromModelSpecificPlist";
            WORD6(v507[0]) = 2112;
            v223 = v386;
            *(v507 + 14) = v386;
            _os_log_send_and_compose_impl();
          }

          else
          {
            v223 = v386;
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v512 = 138412290;
          v513 = v223;
          v325 = _os_log_send_and_compose_impl();
          v336 = 0;
          FigCapturePleaseFileRadar(FrameworkRadarComponent, v325, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSource/FigCaptureSourceBackingsProvider.m", 2519, @"LastShownDate:FigCaptureSourceBackingsProvider.m:2519", @"LastShownBuild:FigCaptureSourceBackingsProvider.m:2519", 0);
          free(v325);
          v101 = v370;
          v191 = v381;
        }

        v319 = v383;
        [v418 setObject:v383 forKeyedSubscript:v218];
LABEL_644:
        [v360 addObject:v319];
      }

      v102 = v371;
      v18 = v368;
LABEL_160:
      ++v102;
    }

    while (v102 != v101);
    v326 = [obj countByEnumeratingWithState:&v444 objects:v443 count:16];
    v101 = v326;
  }

  while (v326);
LABEL_650:

  return v360;
}

void *csu_dependentUserDefaultsDictionary()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = [MEMORY[0x1E695E0F0] countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v12;
    v4 = MEMORY[0x1E695E0F0];
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v12 != v3)
        {
          objc_enumerationMutation(v4);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = CFPreferencesCopyAppValue(v6, @"com.apple.coremedia");
        if (v7)
        {
          v8 = v7;
          [v0 setObject:v7 forKeyedSubscript:v6];
          CFRelease(v8);
        }
      }

      v2 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v2);
  }

  if ([objc_msgSend(v0 "allKeys")])
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

id csu_createInMemorySourcesArrayFromOnDiskSourcesArray(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 objectForKeyedSubscript:@"Formats"];
        if (v8)
        {
          v9 = csu_captureSourceVideoFormatsForFormatDictionaries(v8, 1);
          v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v7];
          [v10 setObject:v9 forKeyedSubscript:@"Formats"];
          [v2 addObject:v10];
        }

        else
        {
          [v2 addObject:v7];
        }
      }

      v4 = [a1 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v4);
  }

  return v2;
}

uint64_t FigCaptureSourcePlistCreateAndPreprocess()
{
  ModelSpecificName = FigCaptureGetModelSpecificName();

  return fcsbp_plistCreateAndPreprocess(ModelSpecificName, 0);
}

uint64_t csu_postSourceInfoArrayChangedNotificationIfNecessary(void *a1)
{
  FigSimpleMutexLock();
  gSourceInfoArrayChanged = 1;
  v2 = gCaptureSourceBackings;
  if ([a1 count])
  {
    [FigCaptureSourceBackingsProvider updateBackingCachedPropertiesByDeviceID:?];
  }

  result = FigSimpleMutexUnlock();
  if (v2)
  {
    if (dword_1EB58DF60)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CStringPtr = CFStringGetCStringPtr(@"SourceInfoArrayChanged", 0x8000100u);
    return notify_post(CStringPtr);
  }

  return result;
}

uint64_t csu_createSourceInfoDictionariesFromAVCaptureSessionPlistForCaptureDeviceIDs(void *a1, void *a2, void *a3)
{
  v202 = 0;
  v132 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v131 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v201 = 0;
  FigSimpleMutexCheckIsLockedOnThisThread();
  v200 = 0u;
  v199 = 0u;
  v198 = 0u;
  v197 = 0u;
  obj = a1;
  v138 = [a1 countByEnumeratingWithState:&v197 objects:v196 count:16];
  if (v138)
  {
    v137 = *v198;
    v4 = *off_1E798C240;
    v136 = *off_1E798C000;
    v135 = *off_1E798C070;
    v149 = *off_1E798BD00;
    v5 = *off_1E7989FF8;
    v147 = *off_1E798C180;
    v134 = *off_1E798BF88;
    v6 = *off_1E798C0A0;
    v145 = *off_1E798C1B8;
    v183 = *off_1E798D408;
    v184 = *off_1E798D3F8;
    v182 = *MEMORY[0x1E6966130];
    v172 = *off_1E798BCF8;
    v167 = *off_1E798BCF0;
    v171 = *off_1E798BCE0;
    v170 = *off_1E798C1A0;
    v169 = *off_1E798C0F8;
    v168 = *off_1E798BCE8;
    v144 = *off_1E798A000;
    v143 = *off_1E798A020;
    v142 = *off_1E798C248;
    v141 = *off_1E798BD90;
    v140 = *off_1E798C250;
    v139 = *off_1E798C0B0;
    v150 = *off_1E798C240;
    v148 = *off_1E7989FF8;
    v146 = *off_1E798C0A0;
    do
    {
      v7 = 0;
      do
      {
        if (*v198 != v137)
        {
          objc_enumerationMutation(obj);
        }

        v156 = v7;
        v8 = *(*(&v197 + 1) + 8 * v7);
        v9 = [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor sharedCaptureDeviceVendor];
        if (v9)
        {
          v14 = v9;
          v195 = 0;
          v194 = 0;
          if ([v8 isEqualToString:0x1F21702D0] && (ModelSpecificName = FigCaptureGetModelSpecificName(), (v16 = fcsbp_plistCreateAndPreprocess(ModelSpecificName, &v194)) != 0))
          {
            v17 = v16;

            FigCaptureCreateSourceInfoArrayFromDeviceAndModelSpecificPlist(v14, v17, v194, 1, &v195, &v201);
            [v131 addObjectsFromArray:v195];
          }

          else
          {
            v18 = fcsbp_plistCreateAndPreprocess(@"iOS", 0);
            v177 = v18;
            if (v18)
            {
              v19 = v18;
              v154 = [v18 objectForKeyedSubscript:@"AVH264Settings"];
              v153 = [v19 objectForKeyedSubscript:@"AVHEVCSettings"];
              v214 = 0;
              v162 = FigCaptureExternalCameraReplacesBuiltIn(&v214);
              v155 = [MEMORY[0x1E695DF70] array];
              v210 = 0u;
              v211 = 0u;
              v212 = 0u;
              v213 = 0u;
              v20 = [v14 streams];
              v165 = [v20 countByEnumeratingWithState:&v210 objects:v209 count:16];
              if (!v165)
              {
                goto LABEL_202;
              }

              v164 = *v211;
              v151 = v20;
              v152 = v14;
              while (1)
              {
                v21 = 0;
                do
                {
                  if (*v211 != v164)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v22 = *(*(&v210 + 1) + 8 * v21);
                  v23 = [v22 getProperty:v4 error:0];
                  v24 = v21;
                  if (v23)
                  {
                    v25 = v23;
                    v161 = v24;
                    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
                    v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
                    v159 = [MEMORY[0x1E695DF90] dictionary];
                    [v26 setObject:v27 forKeyedSubscript:@"Attributes"];
                    if (v162)
                    {
                      if (v214)
                      {
                        v28 = @"com.apple.avfoundation.avcapturedevice.built-in_video:1";
                      }

                      else
                      {
                        v28 = @"com.apple.avfoundation.avcapturedevice.built-in_video:0";
                      }

                      [v27 setObject:v28 forKeyedSubscript:@"UniqueID"];
                      [v27 setObject:v28 forKeyedSubscript:@"ModelID"];
                      [v27 setObject:@"Apple Inc." forKeyedSubscript:@"Manufacturer"];
                      v29 = &unk_1F22443F8;
                    }

                    else
                    {
                      [v27 setObject:v25 forKeyedSubscript:@"UniqueID"];
                      [v27 setObject:objc_msgSend(v22 forKeyedSubscript:{"getProperty:error:", v136, 0), @"Manufacturer"}];
                      [v27 setObject:objc_msgSend(v22 forKeyedSubscript:{"getProperty:error:", v135, 0), @"ModelID"}];
                      v29 = &unk_1F22443E0;
                    }

                    [v27 setObject:objc_msgSend(v22 forKeyedSubscript:{"getPropertyIfSupported:error:", v149, 0), @"Flash"}];
                    if ([objc_msgSend(v14 "supportedProperties")])
                    {
                      v30 = &unk_1F22443C8;
                    }

                    else
                    {
                      v30 = v29;
                    }

                    [v27 setObject:v30 forKeyedSubscript:@"DeviceType"];
                    [v27 setObject:&unk_1F2244410 forKeyedSubscript:@"SourceType"];
                    if ([objc_msgSend(v22 "supportedProperties")])
                    {
                      [v27 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"HEIF"];
                    }

                    v163 = v27;
                    [v27 setObject:objc_msgSend(v14 forKeyedSubscript:{"deviceID"), @"CaptureDeviceID"}];
                    [v22 portType];
                    if (FigCFEqual())
                    {
                      v31 = 1;
                    }

                    else
                    {
                      v31 = 2 * (FigCFEqual() != 0);
                    }

                    v158 = v31;
                    [v27 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"Position"}];
                    if (v162)
                    {
                      if (v214)
                      {
                        v32 = @"Front Camera";
                      }

                      else
                      {
                        v32 = @"Back Camera";
                      }

                      [v27 setObject:v32 forKeyedSubscript:@"LocalizedName"];
LABEL_47:
                      v33 = v27;
                      v34 = v32;
                    }

                    else
                    {
                      v32 = [v22 getPropertyIfSupported:v134 error:0];
                      [v27 setObject:v32 forKeyedSubscript:@"LocalizedName"];
                      if (![objc_msgSend(v22 "supportedProperties")])
                      {
                        goto LABEL_47;
                      }

                      v34 = [v22 getProperty:v6 error:0];
                      v33 = v27;
                    }

                    [v33 setObject:v34 forKeyedSubscript:@"NonLocalizedName"];
                    v160 = v26;
                    [v27 setObject:v154 forKeyedSubscript:@"AVH264Settings"];
                    v35 = MEMORY[0x1E695E118];
                    [v27 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"HEVC"];
                    if ([objc_msgSend(objc_msgSend(v177 objectForKeyedSubscript:{@"AVCaptureDeviceCommonSettings", "objectForKeyedSubscript:", @"HEVCPreferred", "BOOLValue"}])
                    {
                      [v27 setObject:v35 forKeyedSubscript:@"PrefersHEVC"];
                    }

                    [v27 setObject:v153 forKeyedSubscript:@"AVHEVCSettings"];
                    v36 = [v22 copyProperty:v145 error:0];
                    v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    v205 = 0u;
                    v206 = 0u;
                    v207 = 0u;
                    v208 = 0u;
                    v166 = v36;
                    v38 = [v36 countByEnumeratingWithState:&v205 objects:type count:16];
                    v173 = v22;
                    v185 = v37;
                    if (v38)
                    {
                      v39 = v38;
                      v40 = 0;
                      v41 = *v206;
                      do
                      {
                        for (i = 0; i != v39; ++i)
                        {
                          if (*v206 != v41)
                          {
                            objc_enumerationMutation(v166);
                          }

                          v43 = *(*(&v205 + 1) + 8 * i);
                          v44 = objc_alloc_init(MEMORY[0x1E695DF90]);
                          v203[0] = @"SensorWidth";
                          v203[1] = @"SensorHeight";
                          v203[2] = v183;
                          v203[3] = v184;
                          BWAddEntriesWithKeysFromDictionaryToDictionary(v43, [MEMORY[0x1E695DEC8] arrayWithObjects:v203 count:4], v44);
                          [v44 setObject:objc_msgSend(v43 forKeyedSubscript:{"objectForKeyedSubscript:", @"SensorWidth", 0x1F216B190}];
                          [v44 setObject:objc_msgSend(v43 forKeyedSubscript:{"objectForKeyedSubscript:", @"SensorHeight", 0x1F216B1B0}];
                          if ([objc_msgSend(v43 objectForKeyedSubscript:{@"IsFake4by3PhotoFormat", "BOOLValue"}])
                          {
                            [v44 setObject:v35 forKeyedSubscript:@"IsFake4by3PhotoFormat"];
                          }

                          v45 = [v43 objectForKeyedSubscript:@"FormatDescription"];
                          v46 = [v43 objectForKeyedSubscript:@"NativeFormatDescription"];
                          if ([objc_msgSend(v43 objectForKeyedSubscript:{@"NativeFormatRequiresUpscaling", "BOOLValue"}])
                          {
                            [v44 setObject:v35 forKeyedSubscript:@"NativeFormatRequiresUpscaling"];
                          }

                          [v44 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", CMFormatDescriptionGetMediaSubType(v45)), v182}];
                          [v44 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", CMFormatDescriptionGetMediaSubType(v46)), @"NativeFormatCodecType"}];
                          [v44 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v40), 0x1F217E450}];
                          if ([objc_msgSend(v43 objectForKeyedSubscript:{@"AsyncStillCaptureProvidedByStream", "BOOLValue"}])
                          {
                            [v44 setObject:objc_msgSend(v43 forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F217F650), 0x1F217F650}];
                            [v44 setObject:objc_msgSend(v43 forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F217F670), 0x1F217F670}];
                            v35 = MEMORY[0x1E695E118];
                          }

                          else
                          {
                            v35 = MEMORY[0x1E695E118];
                            [v44 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217E9B0];
                          }

                          [v44 setObject:v35 forKeyedSubscript:0x1F217F8B0];
                          v37 = v185;
                          if ([objc_msgSend(v173 "supportedProperties")])
                          {
                            [v44 setObject:v35 forKeyedSubscript:0x1F217F950];
                            [v44 setObject:v35 forKeyedSubscript:0x1F217F990];
                            if ([objc_msgSend(v173 "supportedProperties")])
                            {
                              [v44 setObject:v35 forKeyedSubscript:0x1F217F9B0];
                            }
                          }

                          if ([objc_msgSend(v173 "supportedProperties")])
                          {
                            [v44 setObject:v35 forKeyedSubscript:@"BackgroundBlurSupported"];
                          }

                          if ([objc_msgSend(v173 "supportedProperties")])
                          {
                            [v44 setObject:v35 forKeyedSubscript:@"StudioLightingSupported"];
                          }

                          if ([objc_msgSend(v173 "supportedProperties")])
                          {
                            [v44 setObject:v35 forKeyedSubscript:@"ReactionEffectsSupported"];
                          }

                          if ([objc_msgSend(v173 "supportedProperties")])
                          {
                            [v44 setObject:v35 forKeyedSubscript:@"BackgroundReplacementSupported"];
                          }

                          [v185 addObject:v44];

                          v40 = (v40 + 1);
                        }

                        v39 = [v166 countByEnumeratingWithState:&v205 objects:type count:16];
                      }

                      while (v39);
                    }

                    v157 = [objc_msgSend(v163 objectForKeyedSubscript:{@"DeviceType", "intValue"}];
                    v174 = [objc_msgSend(objc_msgSend(v177 objectForKeyedSubscript:{@"AVCaptureSessionPresetCommon", "objectForKeyedSubscript:", @"vide", "objectForKeyedSubscript:", @"Device"}];
                    v193 = 1;
                    while (2)
                    {
                      v227 = 0u;
                      v228 = 0u;
                      v225 = 0u;
                      v226 = 0u;
                      v176 = [v177 countByEnumeratingWithState:&v225 objects:&v223 count:16];
                      if (!v176)
                      {
                        goto LABEL_174;
                      }

                      v175 = *v226;
LABEL_79:
                      v47 = 0;
LABEL_80:
                      if (*v226 != v175)
                      {
                        objc_enumerationMutation(v177);
                      }

                      v181 = v47;
                      v48 = *(*(&v225 + 1) + 8 * v47);
                      if ([v48 isEqual:@"AVCaptureSessionPresetCommon"])
                      {
                        goto LABEL_169;
                      }

                      v49 = [objc_msgSend(objc_msgSend(v177 objectForKeyedSubscript:{v48), "objectForKeyedSubscript:", @"vide", "objectForKeyedSubscript:", @"Device"}];
                      if (!v49)
                      {
                        goto LABEL_169;
                      }

                      v50 = v49;
                      v178 = v48;
                      if (v174)
                      {
                        v51 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:?];
                        [v51 addEntriesFromDictionary:v50];
                        v50 = v51;
                      }

                      v52 = [objc_msgSend(v50 objectForKeyedSubscript:{@"RequiredWidth", "intValue"}];
                      v191 = [objc_msgSend(v50 objectForKeyedSubscript:{@"RequiredHeight", "intValue"}];
                      v192 = v52;
                      v53 = [objc_msgSend(v50 objectForKeyedSubscript:{@"RequiredMaxFrameRate", "intValue"}];
                      v54 = [objc_msgSend(v50 objectForKeyedSubscript:{@"RequiredMinFrameRate", "intValue"}];
                      if ((v193 == 1) != ((v52 | v191 | v53 | v54) != 0))
                      {
                        goto LABEL_169;
                      }

                      v55 = v54;
                      v190 = [objc_msgSend(v50 objectForKeyedSubscript:{@"TargetWidth", "intValue"}];
                      v189 = [objc_msgSend(v50 objectForKeyedSubscript:{@"TargetHeight", "intValue"}];
                      v188 = [objc_msgSend(v50 objectForKeyedSubscript:{@"TargetMaxFrameRate", "intValue"}];
                      v187 = [objc_msgSend(v50 objectForKeyedSubscript:{@"TargetMinFrameRate", "intValue"}];
                      v56 = [v178 isEqual:@"AVCaptureSessionPresetPhoto"] ? 875704422 : 875704438;
                      v186 = v56;
                      if (![v37 count])
                      {
                        goto LABEL_169;
                      }

                      v57 = 0;
                      v179 = 0;
                      v180 = -1;
                      v58 = 3.4028e38;
LABEL_92:
                      v59 = [v37 objectAtIndexedSubscript:v57];
                      v60 = v59;
                      if (v193 != 1 && [objc_msgSend(v59 objectForKeyedSubscript:{@"NativeFormatRequiresUpscaling", "BOOLValue"}] && (!objc_msgSend(objc_msgSend(v60, "objectForKeyedSubscript:", @"IsFake4by3PhotoFormat"), "BOOLValue") || !objc_msgSend(v178, "isEqual:", @"AVCaptureSessionPresetPhoto")))
                      {
                        goto LABEL_136;
                      }

                      v61 = [objc_msgSend(v60 objectForKeyedSubscript:{0x1F216B190), "intValue"}];
                      v62 = [objc_msgSend(v60 objectForKeyedSubscript:{0x1F216B1B0), "intValue"}];
                      v63 = [objc_msgSend(v60 objectForKeyedSubscript:{v182), "intValue"}];
                      v64 = [objc_msgSend(v60 objectForKeyedSubscript:{v184), "intValue"}];
                      v65 = [objc_msgSend(v60 objectForKeyedSubscript:{v183), "intValue"}];
                      v66 = v65;
                      v67 = v190;
                      if (v192 && (v67 = v192, v61 < v192) || (v68 = v189, v191) && (v68 = v191, v62 < v191) || (v69 = v188, v53) && (v69 = v53, v64 < v53) || (v70 = v187, v55) && (v70 = v55, v65 > v55))
                      {
                        v79 = 0;
                        v80 = 0;
                        v75 = 3.4028e38;
                        v37 = v185;
                        goto LABEL_134;
                      }

                      v71 = 0.0;
                      if (v67 && v68)
                      {
                        v72 = v68 * v67 - v62 * v61;
                        if (v72 < 0)
                        {
                          v72 = v62 * v61 - v68 * v67;
                        }

                        v71 = ((vabds_f32(v67 / v68, v61 / v62) * v61) * v62) + v72;
                      }

                      if (v69)
                      {
                        v73 = v64 - v69;
                        v37 = v185;
                        if (v64 < v69)
                        {
                          v73 = 2 * (v69 - v64);
                        }

                        v71 = v71 + v73;
                        if (!v70)
                        {
LABEL_119:
                          if (v63 == v186)
                          {
                            v75 = v71 + -2.0;
                          }

                          else
                          {
                            IsFullRange = FigCapturePixelFormatIsFullRange(v186);
                            v77 = FigCapturePixelFormatIsFullRange(v63);
                            v75 = v71 + -1.0;
                            if (IsFullRange != v77)
                            {
                              v75 = v71;
                            }
                          }

                          if (v69 < v66 || v64 < v69)
                          {
                            v79 = v64;
                          }

                          else
                          {
                            v79 = v69;
                          }

                          if (v70 <= v66)
                          {
                            v80 = v66;
                          }

                          else
                          {
                            v80 = v70;
                          }

                          if (v64 < v70)
                          {
                            v80 = v66;
                          }

LABEL_134:
                          if (v75 < v58)
                          {
                            v58 = v75;
                            v179 = __PAIR64__(v80, v79);
                            v180 = v57;
                          }

LABEL_136:
                          if ([v37 count] <= ++v57)
                          {
                            if (v180 == -1)
                            {
                              goto LABEL_169;
                            }

                            v81 = [v37 objectAtIndexedSubscript:v180];
                            v82 = v81;
                            if (v193 != 1)
                            {
                              goto LABEL_158;
                            }

                            v83 = [objc_msgSend(v81 objectForKeyedSubscript:{0x1F216B190), "intValue"}];
                            v84 = [objc_msgSend(v82 objectForKeyedSubscript:{0x1F216B1B0), "intValue"}];
                            if (!v192 || v192 == v83)
                            {
                              v86 = v191;
                              if (v191)
                              {
                                v88 = v191 == v84;
                              }

                              else
                              {
                                v88 = 1;
                              }

                              v89 = !v88;
                              v90 = (v157 < 0x15) & (0x1E7FFCu >> v157);
                              if (v88)
                              {
                                v90 = 0;
                              }

                              if (v90)
                              {
                                v87 = v192;
                                v82 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v82];
                                v85 = 0x1E696A000uLL;
                                if (!v192)
                                {
                                  goto LABEL_156;
                                }

LABEL_155:
                                [v82 setObject:objc_msgSend(*(v85 + 3480) forKeyedSubscript:{"numberWithInt:", v87), 0x1F216B190}];
                                [v82 setObject:objc_msgSend(*(v85 + 3480) forKeyedSubscript:{"numberWithInt:", v87), @"SensorWidth"}];
                                if (v86)
                                {
LABEL_156:
                                  [v82 setObject:objc_msgSend(*(v85 + 3480) forKeyedSubscript:{"numberWithInt:", v86), 0x1F216B1B0}];
                                  [v82 setObject:objc_msgSend(*(v85 + 3480) forKeyedSubscript:{"numberWithInt:", v86), @"SensorHeight"}];
                                }

                                [v82 setObject:0 forKeyedSubscript:0x1F217E9D0];
                                [v82 setObject:0 forKeyedSubscript:0x1F217E630];
                                [v82 setObject:0 forKeyedSubscript:0x1F217E650];
                                [v37 addObject:v82];
                              }

                              else if (v89)
                              {
                                goto LABEL_169;
                              }

LABEL_158:
                              v91 = [v82 objectForKeyedSubscript:0x1F217E9D0];
                              if (!v91)
                              {
                                v91 = [MEMORY[0x1E695DF70] array];
                                [v82 setObject:v91 forKeyedSubscript:0x1F217E9D0];
                              }

                              [v91 addObject:v178];
                              if ([v178 isEqual:@"AVCaptureSessionPresetHigh"])
                              {
                                [v82 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217E490];
                              }

                              if ([v178 isEqual:@"AVCaptureSessionPresetPhoto"])
                              {
                                [v82 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217FE50];
                              }

                              v92 = [v82 objectForKeyedSubscript:0x1F217E650];
                              if (!v92)
                              {
                                v92 = [MEMORY[0x1E695DF90] dictionary];
                                [v82 setObject:v92 forKeyedSubscript:0x1F217E650];
                              }

                              [v92 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v179), v178}];
                              v93 = [v82 objectForKeyedSubscript:0x1F217E630];
                              if (!v93)
                              {
                                v93 = [MEMORY[0x1E695DF90] dictionary];
                                [v82 setObject:v93 forKeyedSubscript:0x1F217E630];
                              }

                              [v93 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", HIDWORD(v179)), v178}];
                              goto LABEL_169;
                            }

                            if (((v157 < 0x15) & (0x1E7FFCu >> v157)) != 0)
                            {
                              v82 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v82];
                              v85 = 0x1E696A000;
                              v86 = v191;
                              v87 = v192;
                              goto LABEL_155;
                            }

LABEL_169:
                            v47 = v181 + 1;
                            if (v181 + 1 == v176)
                            {
                              v94 = [v177 countByEnumeratingWithState:&v225 objects:&v223 count:16];
                              v176 = v94;
                              if (!v94)
                              {
LABEL_174:
                                if (++v193 == 3)
                                {
                                  v95 = [MEMORY[0x1E695DF70] array];
                                  v219 = 0u;
                                  v220 = 0u;
                                  v221 = 0u;
                                  v222 = 0u;
                                  v96 = [v37 countByEnumeratingWithState:&v219 objects:&v215 count:16];
                                  if (v96)
                                  {
                                    v97 = v96;
                                    v98 = *v220;
                                    do
                                    {
                                      for (j = 0; j != v97; ++j)
                                      {
                                        if (*v220 != v98)
                                        {
                                          objc_enumerationMutation(v37);
                                        }

                                        v100 = *(*(&v219 + 1) + 8 * j);
                                        v101 = [v100 objectForKeyedSubscript:0x1F217E430];
                                        if (!v101)
                                        {
                                          v101 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%dx%d_%d", objc_msgSend(objc_msgSend(v100, "objectForKeyedSubscript:", 0x1F216B190), "intValue"), objc_msgSend(objc_msgSend(v100, "objectForKeyedSubscript:", 0x1F216B1B0), "intValue"), objc_msgSend(objc_msgSend(v100, "objectForKeyedSubscript:", v184), "intValue")];
                                        }

                                        if ([v95 containsObject:v101])
                                        {
                                          v102 = 1;
                                          do
                                          {
                                            v103 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%d", v101, v102];
                                            v102 = (v102 + 1);
                                          }

                                          while (([v95 containsObject:v103] & 1) != 0);
                                          v101 = v103;
                                          v37 = v185;
                                        }

                                        [v100 setObject:v101 forKeyedSubscript:0x1F217E430];
                                        [v95 addObject:v101];
                                      }

                                      v97 = [v37 countByEnumeratingWithState:&v219 objects:&v215 count:16];
                                    }

                                    while (v97);
                                  }

                                  [v37 sortUsingFunction:csu_compareSourceFormats context:0];
                                  v4 = v150;
                                  v5 = v148;
                                  v6 = v146;
                                  v14 = v152;
                                  if ([v37 count])
                                  {
                                    v104 = 0;
                                    do
                                    {
                                      v105 = [v37 objectAtIndexedSubscript:v104];
                                      if ([objc_msgSend(v105 objectForKeyedSubscript:{0x1F217F950), "BOOLValue"}])
                                      {
                                        v106 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v105];
                                        [v106 setObject:0 forKeyedSubscript:0x1F217F950];
                                        v107 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v106];

                                        [v105 setObject:v107 forKeyedSubscript:0x1F217F9D0];
                                        [v105 setObject:objc_msgSend(v105 forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F216B190), 0x1F217FA10}];
                                        [v105 setObject:objc_msgSend(v105 forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F216B1B0), 0x1F217FA30}];
                                        [v105 setObject:objc_msgSend(v105 forKeyedSubscript:{"objectForKeyedSubscript:", @"VideoMaxFrameRate", 0x1F217FA50}];
                                      }

                                      ++v104;
                                    }

                                    while ([v37 count] > v104);
                                  }

                                  if ([v37 count])
                                  {
                                    v108 = 0;
                                    do
                                    {
                                      v109 = [v37 objectAtIndexedSubscript:v108];
                                      if ([objc_msgSend(v109 objectForKeyedSubscript:{0x1F217FA90), "BOOLValue"}])
                                      {
                                        v110 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v109];
                                        [v110 setObject:0 forKeyedSubscript:0x1F217FA90];
                                        v111 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v110];

                                        [v109 setObject:v111 forKeyedSubscript:0x1F217FAB0];
                                        [v109 setObject:objc_msgSend(v109 forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F216B190), 0x1F217FAF0}];
                                        [v109 setObject:objc_msgSend(v109 forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F216B1B0), 0x1F217FB10}];
                                        [v109 setObject:objc_msgSend(v109 forKeyedSubscript:{"objectForKeyedSubscript:", @"VideoMaxFrameRate", 0x1F217FB30}];
                                      }

                                      ++v108;
                                    }

                                    while ([v37 count] > v108);
                                  }

                                  v112 = [csu_captureSourceVideoFormatsForFormatDictionaries(v37 0)];
                                  [v160 setObject:v112 forKeyedSubscript:@"Formats"];
                                  [v160 setObject:&unk_1F2244440 forKeyedSubscript:@"MediaType"];
                                  [v159 setObject:objc_msgSend(v152 forKeyedSubscript:{"getPropertyIfSupported:error:", v144, 0), @"Hidden"}];
                                  [v159 setObject:objc_msgSend(v152 forKeyedSubscript:{"getPropertyIfSupported:error:", v143, 0), @"ReadyToUnhide"}];
                                  [v159 setObject:objc_msgSend(v152 forKeyedSubscript:{"getPropertyIfSupported:error:", @"BatteryState", 0), @"BatteryState"}];
                                  [v159 setObject:objc_msgSend(v152 forKeyedSubscript:{"getPropertyIfSupported:error:", @"BatteryLevel", 0), @"BatteryLevel"}];
                                  if ([v159 count])
                                  {
                                    [v160 setObject:v159 forKeyedSubscript:@"CachedProperties"];
                                  }

                                  v224 = 1065353216;
                                  v223 = 0x3F8000003F800000;
                                  [v163 setObject:objc_msgSend(v177 forKeyedSubscript:{"objectForKeyedSubscript:", @"AVCaptureSessionPresetCompressionSettings", @"AVCaptureSessionPresetCompressionSettings"}];
                                  [v163 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(objc_msgSend(v173, "supportedProperties"), "objectForKeyedSubscript:", v142) != 0), @"Exposure"}];
                                  [v163 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(objc_msgSend(v173, "supportedProperties"), "objectForKeyedSubscript:", v141) != 0), @"Focus"}];
                                  [v163 setObject:objc_msgSend(v163 forKeyedSubscript:{"objectForKeyedSubscript:", @"Focus", @"ManualFocus"}];
                                  [v163 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(objc_msgSend(v173, "supportedProperties"), "objectForKeyedSubscript:", v140) != 0), @"WhiteBalance"}];
                                  [v163 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", &v223, 12), @"DefaultWhiteBalanceGains"}];
                                  [v163 setObject:objc_msgSend(v152 forKeyedSubscript:{"getPropertyIfSupported:error:", v148, 0), @"ContinuityDeviceUniqueID"}];
                                  v113 = [[FigCaptureSourceStreamsContainer alloc] initWithDeviceType:v157 position:v158 stillImageDepthDataType:0 device:v152 baseZoomFactorOverrides:0 clientBaseZoomFactorsByPortType:0];
                                  csu_addMetadataAttributes(v163, v113, [objc_msgSend(v173 "supportedProperties")] != 0, 0, 0);

                                  v114 = [v160 copy];
                                  [v155 addObject:v114];

                                  v20 = v151;
                                  v24 = v161;
                                  goto LABEL_25;
                                }

                                continue;
                              }

                              goto LABEL_79;
                            }

                            goto LABEL_80;
                          }

                          goto LABEL_92;
                        }
                      }

                      else
                      {
                        v37 = v185;
                        if (!v70)
                        {
                          goto LABEL_119;
                        }
                      }

                      break;
                    }

                    if (v65 <= v70)
                    {
                      v74 = v70 - v65;
                    }

                    else
                    {
                      v74 = 2 * (v65 - v70);
                    }

                    v71 = v71 + v74;
                    goto LABEL_119;
                  }

LABEL_25:
                  v21 = v24 + 1;
                }

                while (v24 + 1 != v165);
                v115 = [v20 countByEnumeratingWithState:&v210 objects:v209 count:16];
                v165 = v115;
                if (!v115)
                {
LABEL_202:
                  v195 = [v155 copy];
                  goto LABEL_203;
                }
              }
            }

            csu_createSourceInfoDictionariesFromAVCaptureSessionPlistForCaptureDeviceIDs_cold_1();
LABEL_203:

            v17 = 0;
          }

          if (dword_1EB58DF60)
          {
            v209[0] = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v117 = v209[0];
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
            {
              v118 = v117;
            }

            else
            {
              v118 = v117 & 0xFFFFFFFE;
            }

            if (v118)
            {
              v119 = [v195 count];
              v215 = 136315650;
              v216 = "csu_createSourceInfoDictionariesFromAVCaptureSessionPlistForCaptureDeviceIDs";
              v217 = 1024;
              *v218 = v119;
              *&v218[4] = 2112;
              *&v218[6] = v14;
              LODWORD(v128) = 28;
              v127 = &v215;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [v132 addObjectsFromArray:v195];
          [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];

          v13 = v156;
        }

        else
        {
          v209[0] = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v11 = v209[0];
          if (os_log_type_enabled(v10, type[0]))
          {
            v12 = v11;
          }

          else
          {
            v12 = v11 & 0xFFFFFFFE;
          }

          if (v12)
          {
            v215 = 136315650;
            v216 = "csu_createSourceInfoDictionariesFromAVCaptureSessionPlistForCaptureDeviceIDs";
            v217 = 2112;
            *v218 = v8;
            *&v218[8] = 1024;
            *&v218[10] = v202;
            LODWORD(v128) = 28;
            v127 = &v215;
            _os_log_send_and_compose_impl();
          }

          v13 = v156;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v7 = v13 + 1;
      }

      while (v7 != v138);
      v120 = [obj countByEnumeratingWithState:&v197 objects:v196 count:16];
      v138 = v120;
    }

    while (v120);
  }

  if (a2)
  {
    *a2 = v132;
  }

  if (a3)
  {
    *a3 = v201;
  }

  if (!v202)
  {
    return 0;
  }

  v209[0] = 0;
  type[0] = OS_LOG_TYPE_DEFAULT;
  v121 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v122 = v209[0];
  if (os_log_type_enabled(v121, type[0]))
  {
    v123 = v122;
  }

  else
  {
    v123 = v122 & 0xFFFFFFFE;
  }

  if (v123)
  {
    v215 = 136315394;
    v216 = "csu_createSourceInfoDictionariesFromAVCaptureSessionPlistForCaptureDeviceIDs";
    v217 = 1024;
    *v218 = v202;
    _os_log_send_and_compose_impl();
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v125 = *MEMORY[0x1E695E8B8];
  v126 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(@"CaptureSourceInfo", 0, @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  CFPreferencesSynchronize(@"com.apple.cameracapture.volatile", v125, v126);
  return v202;
}

void *csu_captureSourceVideoFormatsForFormatDictionaries(void *a1, int a2)
{
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [a1 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    v8 = *MEMORY[0x1E6966130];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(a1);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [[FigCaptureSourceVideoFormat alloc] initWithFigCaptureStreamFormatDictionary:v10];
        [v4 addObject:v11];
        if (a2 && [objc_msgSend(v10 objectForKeyedSubscript:{v8), "intValue"}] == 875704438)
        {
          if ([v10 objectForKeyedSubscript:@"NativeFormatCodecType"])
          {
            v12 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v10];
            [v12 setObject:&unk_1F2244458 forKeyedSubscript:v8];
            [v12 setObject:objc_msgSend(v12 forKeyedSubscript:{"objectForKeyedSubscript:", v8), @"NativeFormatCodecType"}];
            if ([a1 containsObject:v12])
            {
              v13 = 0;
LABEL_15:

              goto LABEL_16;
            }

            v14 = [[FigCaptureSourceVideoFormat alloc] initWithFigCaptureStreamFormatDictionary:v12];
          }

          else
          {
            v14 = [(FigCaptureSourceVideoFormat *)v11 copyWithNewPixelFormat:875704422];
          }

          v13 = v14;
          if (v14)
          {
            [v4 addObject:v14];
          }

          goto LABEL_15;
        }

LABEL_16:
      }

      v6 = [a1 countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v6);
  }

  return v4;
}

uint64_t csu_compareSourceFormats(void *a1, void *a2)
{
  v4 = [objc_msgSend(a1 objectForKeyedSubscript:{0x1F216B190), "intValue"}];
  v5 = [objc_msgSend(a1 objectForKeyedSubscript:{0x1F216B1B0), "intValue"}];
  v6 = [objc_msgSend(a2 objectForKeyedSubscript:{0x1F216B190), "intValue"}];
  v7 = [objc_msgSend(a2 objectForKeyedSubscript:{0x1F216B1B0), "intValue"}];
  if (v5 * v4 < v7 * v6)
  {
    return -1;
  }

  if (v7 * v6 < v5 * v4)
  {
    return 1;
  }

  if (v4 < v6)
  {
    return -1;
  }

  if (v6 < v4)
  {
    return 1;
  }

  v9 = *off_1E798D408;
  [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798D408), "floatValue"}];
  v11 = v10;
  [objc_msgSend(a2 objectForKeyedSubscript:{v9), "floatValue"}];
  v13 = v12;
  v14 = *off_1E798D3F8;
  [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798D3F8), "floatValue"}];
  v16 = v15;
  [objc_msgSend(a2 objectForKeyedSubscript:{v14), "floatValue"}];
  v18 = v17;
  if (v16 == v17)
  {
    v22 = *off_1E798D3F0;
    v23 = [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798D3F0), "BOOLValue"}];
    v24 = [objc_msgSend(a2 objectForKeyedSubscript:{v22), "BOOLValue"}];
    if ((v23 & 1) == 0 && v24)
    {
      return -1;
    }

    if (!(v24 & 1 | ((v23 & 1) == 0)))
    {
      return 1;
    }

    if ((v16 - v11) >= (v18 - v13))
    {
      if ((v18 - v13) < (v16 - v11))
      {
        return 1;
      }

      goto LABEL_19;
    }

    return -1;
  }

  if ((v16 - v11) < (v17 - v13))
  {
    return -1;
  }

  if ((v17 - v13) < (v16 - v11))
  {
    return 1;
  }

  v19 = *off_1E798D3F0;
  v20 = [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798D3F0), "BOOLValue"}];
  v21 = [objc_msgSend(a2 objectForKeyedSubscript:{v19), "BOOLValue"}];
  if ((v20 & 1) == 0 && v21)
  {
    return -1;
  }

  if (!(v21 & 1 | ((v20 & 1) == 0)))
  {
    return 1;
  }

LABEL_19:
  v25 = [objc_msgSend(a1 objectForKeyedSubscript:{0x1F217F6D0), "BOOLValue"}];
  v26 = [objc_msgSend(a2 objectForKeyedSubscript:{0x1F217F6D0), "BOOLValue"}];
  if (v25 && !v26)
  {
    return -1;
  }

  if (!(v25 & 1 | ((v26 & 1) == 0)))
  {
    return 1;
  }

  v27 = *off_1E798D3E8;
  [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798D3E8), "floatValue"}];
  v29 = v28;
  [objc_msgSend(a2 objectForKeyedSubscript:{v27), "floatValue"}];
  if (v29 > v30)
  {
    return -1;
  }

  if (v29 < v30)
  {
    return 1;
  }

  v31 = [a1 objectForKeyedSubscript:0x1F217E9D0];
  v32 = [a2 objectForKeyedSubscript:0x1F217E9D0];
  if (v31 && !v32)
  {
    return -1;
  }

  if (!v31 && v32)
  {
    return 1;
  }

  v33 = *MEMORY[0x1E6966130];
  v34 = [objc_msgSend(a1 objectForKeyedSubscript:{*MEMORY[0x1E6966130]), "unsignedIntValue"}];
  v35 = [objc_msgSend(a2 objectForKeyedSubscript:{v33), "unsignedIntValue"}];
  if (v34 == v35)
  {
    return 0;
  }

  v36 = v35;
  v37 = [&unk_1F22488E0 indexOfObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v34)}];
  if (v37 < [&unk_1F22488E0 indexOfObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v36)}])
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

id __cs_metadataIdentifierKeyForObjectsDetectionConfigurationKey_block_invoke()
{
  v0 = *off_1E798D0E0;
  v1 = *off_1E798B918;
  v13[0] = *off_1E798B938;
  v13[1] = v1;
  v2 = *MEMORY[0x1E6960390];
  v14[0] = v0;
  v14[1] = v2;
  v3 = *off_1E798D0D0;
  v4 = *off_1E798B930;
  v13[2] = *off_1E798B928;
  v13[3] = v4;
  v5 = *off_1E798D0D8;
  v14[2] = v3;
  v14[3] = v5;
  v6 = *MEMORY[0x1E6960378];
  v7 = *off_1E798B910;
  v13[4] = *off_1E798B908;
  v13[5] = v7;
  v8 = *MEMORY[0x1E6960380];
  v14[4] = v6;
  v14[5] = v8;
  v9 = *MEMORY[0x1E6960368];
  v10 = *off_1E798B900;
  v13[6] = *off_1E798B8F8;
  v13[7] = v10;
  v11 = *MEMORY[0x1E6960370];
  v14[6] = v9;
  v14[7] = v11;
  v13[8] = *off_1E798B940;
  v14[8] = *MEMORY[0x1E6960398];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:9];
  qword_1ED844F58 = result;
  return result;
}

uint64_t csu_addSecureMetadataKeysToDeviceDict(void *a1, void *a2)
{
  v4 = BWCaptureDevicePositionAndDeviceTypeToPortType([objc_msgSend(a1 objectForKeyedSubscript:{@"position", "intValue"}], objc_msgSend(objc_msgSend(a1, "objectForKeyedSubscript:", @"deviceType"), "intValue"));
  if ([objc_msgSend(a1 objectForKeyedSubscript:{@"secureMetadataCameraSupported", "BOOLValue"}] && (v5 = objc_msgSend(a2, "copyStreamWithPortType:error:", v4, 0), v6 = objc_msgSend(objc_msgSend(v5, "supportedProperties"), "objectForKeyedSubscript:", *off_1E798BE18), v5, v6))
  {
    [a1 setObject:0 forKeyedSubscript:@"hasAutoFocus"];
    v7 = MEMORY[0x1E695E118];
    v8 = a1;
  }

  else
  {
    v8 = a1;
    v7 = 0;
  }

  [v8 setObject:v7 forKeyedSubscript:@"secureMetadataCameraSupported"];
  result = [objc_msgSend(a1 objectForKeyedSubscript:{@"metadataCameraHostingSupported", "BOOLValue"}];
  if (result)
  {
    v10 = MEMORY[0x1E695E118];
    [a1 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"metadataCameraHostingSupported"];

    return [a1 setObject:v10 forKeyedSubscript:@"metadataCameraAttachingSupported"];
  }

  return result;
}

uint64_t csu_preprocessDeviceDicts(void *a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [a1 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        if (([objc_msgSend(v7 objectForKeyedSubscript:{@"mediaType", "isEqualToString:", @"vide"}] & 1) != 0 || objc_msgSend(objc_msgSend(v7, "objectForKeyedSubscript:", @"mediaType"), "isEqualToString:", @"pcld"))
        {
          v8 = [v7 objectForKeyedSubscript:@"uniqueName"];
          if (v8)
          {
            v9 = v8;
            if ([v2 containsObject:v8])
            {
              objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Found duplicate uniqueName: %@", v9), 0}]);
            }

            [v2 addObject:v9];
          }

          csu_preprocessVideoDeviceDict(v7, a1);
        }

        ++v6;
      }

      while (v4 != v6);
      result = [a1 countByEnumeratingWithState:&v11 objects:v10 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t csu_deviceSupportsWideColor(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = *(a1 + 8);
    v4 = v3 > 0x14 || ((1 << v3) & 0x100420) == 0;
    if (!v4 || v3 - 21 > 0xFFFFFFFB)
    {
      return 0;
    }
  }

  result = [objc_msgSend(a2 objectForKeyedSubscript:{@"wideColorSupported", "BOOLValue"}];
  if (result)
  {
    if (a1)
    {
      v6 = *(a1 + 32);
    }

    else
    {
      v6 = 0;
    }

    return [objc_msgSend(v6 getProperty:*off_1E798C1B0 error:{0), "count"}] > 1;
  }

  return result;
}

void csu_mergeInCommonEntries(void *a1)
{
  v2 = [a1 objectForKeyedSubscript:@"Common"];
  [a1 removeObjectForKey:@"Common"];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(a1);
        }

        [a1 objectForKeyedSubscript:*(*(&v8 + 1) + 8 * v6)];
        FigCFDictionaryAddEntriesToDictionaryWithRecursion();
        ++v6;
      }

      while (v4 != v6);
      v4 = [a1 countByEnumeratingWithState:&v8 objects:v7 count:16];
    }

    while (v4);
  }
}

uint64_t __csu_removeExperimentalDeviceFormats_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if ([objc_msgSend(a3 objectForKeyedSubscript:{*off_1E798D3C8), "BOOLValue"}])
  {
    v6 = *(a1 + 32);

    return [v6 addObject:a2];
  }

  else
  {
    v8 = [a3 objectForKeyedSubscript:0x1F217EF90];
    v9 = [v8 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", &__block_literal_global_898)}];

    return [a3 setObject:v9 forKeyedSubscript:0x1F217EF90];
  }
}

uint64_t __csu_removeUnsupportedDeviceFormatsAndDependentPresets_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_msgSend(a3 objectForKeyedSubscript:{@"Unsupported", "BOOLValue"}];
  if (result)
  {
    v6 = *(a1 + 32);

    return [v6 addObject:a2];
  }

  return result;
}

uint64_t __csu_removeUnsupportedDeviceFormatsAndDependentPresets_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a3 = [*(a1 + 32) objectForKeyedSubscript:a3];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __csu_removeUnsupportedDeviceFormatsAndDependentPresets_block_invoke_2_cold_1();
    }
  }

  result = [*(a1 + 40) containsObject:{objc_msgSend(a3, "objectForKeyedSubscript:", @"DeviceFormat"}];
  if (result)
  {
    v7 = *(a1 + 48);

    return [v7 addObject:a2];
  }

  return result;
}

void __csu_resolveSessionPresetAliases_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:a3];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __csu_resolveSessionPresetAliases_block_invoke_cold_1();
    }

    v7 = [v6 mutableCopy];
    [*(a1 + 40) setObject:v7 forKeyedSubscript:a2];
  }
}

uint64_t csu_resolveFormatIndexForNamedStreamFormat(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, _DWORD *a6)
{
  v69 = [objc_msgSend(a4 objectForKeyedSubscript:{@"SensorWidth", "intValue"}];
  v68 = [objc_msgSend(a4 objectForKeyedSubscript:{@"SensorHeight", "intValue"}];
  v74 = [objc_msgSend(a4 objectForKeyedSubscript:{@"FESWidth", "intValue"}];
  v72 = [objc_msgSend(a4 objectForKeyedSubscript:{@"FESHeight", "intValue"}];
  v9 = [objc_msgSend(a4 objectForKeyedSubscript:{@"Binned", "BOOLValue"}];
  v66 = [objc_msgSend(a4 objectForKeyedSubscript:{@"HDR", "BOOLValue"}];
  v65 = [objc_msgSend(a4 objectForKeyedSubscript:{@"FES", "BOOLValue"}];
  v48 = [objc_msgSend(a4 objectForKeyedSubscript:{@"MaxFrameRate", "intValue"}];
  v64 = [objc_msgSend(a4 objectForKeyedSubscript:{@"SIFREnabled", "BOOLValue"}];
  v10 = [objc_msgSend(a4 objectForKeyedSubscript:{@"SIFRBinningFactor", "intValue"}];
  v67 = v9;
  if (v9)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  if (v10)
  {
    v11 = v10;
  }

  v47 = v11;
  v70 = a4;
  v46 = [objc_msgSend(a4 objectForKeyedSubscript:{@"OptimizedForMidFrameSynchronization", "BOOLValue"}];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v12 = [a5 countByEnumeratingWithState:&v83 objects:v82 count:16];
  if (!v12)
  {
    goto LABEL_72;
  }

  v13 = v12;
  v14 = 0;
  v15 = *v84;
  v16 = *off_1E798D3C8;
  v60 = *off_1E798C988;
  v59 = *off_1E798C980;
  v58 = *off_1E798D3F0;
  v57 = *off_1E798C978;
  v56 = *off_1E798C938;
  v73 = -1;
  v54 = *off_1E798D3F8;
  v55 = *off_1E798C930;
  v52 = *off_1E798C960;
  v53 = *off_1E798C950;
  v51 = *off_1E798C958;
  v50 = *off_1E798C948;
  v62 = a5;
  v63 = a1;
  v61 = *v84;
  do
  {
    v17 = 0;
    v71 = v13;
    do
    {
      if (*v84 != v15)
      {
        objc_enumerationMutation(a5);
      }

      v18 = *(*(&v83 + 1) + 8 * v17);
      if ([objc_msgSend(v18 objectForKeyedSubscript:{v16), "BOOLValue"}])
      {
        ++v14;
      }

      else
      {
        v19 = [&unk_1F2248928 containsObject:FigCaptureGetModelSpecificName()];
        v81[0] = @"Back Camera";
        v81[1] = @"Back Dual Wide Camera";
        v81[2] = @"Back Dual Camera";
        v81[3] = @"Back Triple Camera";
        v81[4] = @"Back LiDAR Depth Camera";
        v20 = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:{5), "containsObject:", a1}];
        v21 = [a2 isEqualToString:@"Video-4by3-Medium-Resolution"];
        if (v19 && v20 && v21 && v14 == 28)
        {
          v14 = 29;
        }

        else
        {
          v79 = [objc_msgSend(v18 objectForKeyedSubscript:{v60), "intValue"}];
          v78 = [objc_msgSend(v18 objectForKeyedSubscript:{v59), "intValue"}];
          v77 = [objc_msgSend(v18 objectForKeyedSubscript:{v58), "BOOLValue"}];
          v76 = [objc_msgSend(v18 objectForKeyedSubscript:{v57), "intValue"}];
          v22 = [objc_msgSend(v18 objectForKeyedSubscript:{v56), "intValue"}];
          v23 = [objc_msgSend(v18 objectForKeyedSubscript:{v55), "intValue"}];
          v75 = [objc_msgSend(v18 objectForKeyedSubscript:{v54), "intValue"}];
          v24 = [objc_msgSend(v18 objectForKeyedSubscript:{v53), "intValue"}];
          v25 = [objc_msgSend(v70 objectForKeyedSubscript:{v53), "intValue"}];
          if (v25)
          {
            v26 = v25;
          }

          else
          {
            v26 = 2;
          }

          if (v24)
          {
            v27 = v26;
          }

          else
          {
            v27 = v25;
          }

          v28 = v23 <= 0 || v22 <= 0;
          v29 = !v28;
          v30 = v65 ^ v29;
          if (v28)
          {
            v31 = 0;
          }

          else
          {
            v31 = v65;
          }

          if (v31 == 1 && v74 >= 1 && v72 >= 1)
          {
            v30 = v22 != v74 || v23 != v72;
          }

          v33 = [objc_msgSend(v18 objectForKeyedSubscript:{v52), "BOOLValue"}];
          v34 = [objc_msgSend(v18 objectForKeyedSubscript:{v51), "intValue"}];
          if (v64)
          {
            if (v34 <= 1)
            {
              v35 = 1;
            }

            else
            {
              v35 = v34;
            }

            if (v47 == v35)
            {
              v33 ^= 1u;
            }

            else
            {
              v33 = 1;
            }
          }

          v36 = v24 != v27;
          v37 = [objc_msgSend(v18 objectForKeyedSubscript:{v50), "BOOLValue"}];
          v39 = v79 != v69 || v78 != v68;
          if ((v39 | v67 ^ v77 | v36 | v66 ^ (v76 > 0) | v30))
          {
            a5 = v62;
            a1 = v63;
            v15 = v61;
          }

          else
          {
            v41 = v48 > 0 && v75 != v48;
            v42 = v73;
            v43 = (v41 | (v33 | v46 ^ v37)) & 1 | (v73 != -1);
            if (!((v41 | (v33 | v46 ^ v37)) & 1 | (v73 != -1)))
            {
              v42 = v14;
            }

            v73 = v42;
            a5 = v62;
            a1 = v63;
            v15 = v61;
            if (!v43)
            {
              if (a6)
              {
                *a6 = v22;
                a6[1] = v23;
                v73 = v14;
              }
            }
          }

          ++v14;
          v13 = v71;
        }
      }

      ++v17;
    }

    while (v13 != v17);
    v13 = [a5 countByEnumeratingWithState:&v83 objects:v82 count:16];
  }

  while (v13);
  result = v73;
  if (v73 == -1)
  {
LABEL_72:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0xFFFFFFFFLL;
  }

  return result;
}

id csu_createSourceFormatDictFromDeviceFormat(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, int a7, int a8, void *a9, void *a10, void *a11, uint64_t a12, void *a13, void *a14)
{
  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = [a3 objectForKeyedSubscript:{objc_msgSend(a2, "objectForKeyedSubscript:", @"CaptureStreamFormat"}];
  v20 = [objc_msgSend(a4 objectForKeyedSubscript:{@"deviceType", "intValue"}];
  v172 = a4;
  v21 = [objc_msgSend(a4 objectForKeyedSubscript:{@"position", "intValue"}];
  if (v20 > 0x14 || ((1 << v20) & 0x100420) == 0)
  {
    v22 = v20 - 21 < 0xFFFFFFFC;
    if (v19)
    {
      goto LABEL_4;
    }

LABEL_24:
    FigDebugAssert3();
    v229[0] = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_21:

    return 0;
  }

  v22 = 0;
  if (!v19)
  {
    goto LABEL_24;
  }

LABEL_4:
  v168 = v21;
  [v18 setObject:a1 forKeyedSubscript:?];
  v23 = 0x1E696A000uLL;
  v24 = off_1E798C9A0;
  v186 = a2;
  v204 = v19;
  v169 = v20;
  if ([a2 objectForKeyedSubscript:@"PixelFormatType"])
  {
    v25 = FigCapturePixelFormatTypeFromPlistValue([a2 objectForKeyedSubscript:@"PixelFormatType"]);
    if (v25)
    {
      goto LABEL_12;
    }
  }

  v26 = 1278226488;
  if (v20 != 5)
  {
    if (v20 == 10)
    {
      v26 = 1785950320;
    }

    else if (v20 != 20)
    {
      if (v20 - 17 >= 4)
      {
        v25 = 875704438;
      }

      else
      {
        v25 = 875704422;
      }

LABEL_12:
      v27 = v25;
      v216 = 0u;
      v217 = 0u;
      v214 = 0u;
      v215 = 0u;
      v28 = *off_1E798C9A0;
      v29 = [objc_msgSend(v19 objectForKeyedSubscript:{*off_1E798C9A0), "allKeys"}];
      v30 = [v29 countByEnumeratingWithState:&v214 objects:v213 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v215;
        v33 = *off_1E798CB30;
        while (2)
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v215 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v35 = [objc_msgSend(objc_msgSend(v204 objectForKeyedSubscript:{v28), "objectForKeyedSubscript:", *(*(&v214 + 1) + 8 * i)), "objectForKeyedSubscript:", v33}];
            if ([v35 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v27)}])
            {
              v26 = v27;
              v23 = 0x1E696A000;
              a2 = v186;
              v19 = v204;
              v24 = off_1E798C9A0;
              goto LABEL_26;
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v214 objects:v213 count:16];
          if (v31)
          {
            continue;
          }

          break;
        }
      }

      FigDebugAssert3();
      goto LABEL_21;
    }
  }

LABEL_26:
  v170 = v22;
  v171 = v26;
  v37 = [*(v23 + 3480) numberWithUnsignedInt:?];
  v179 = *MEMORY[0x1E6966130];
  [v18 setObject:v37 forKeyedSubscript:?];
  v166 = *off_1E798C980;
  v167 = *off_1E798C988;
  v212[0] = *off_1E798C988;
  v212[1] = v166;
  v182 = *off_1E798C938;
  v184 = *off_1E798C930;
  v212[2] = *off_1E798C938;
  v212[3] = v184;
  v38 = *off_1E798D408;
  v178 = *off_1E798D3E8;
  v212[4] = *off_1E798D3E8;
  v180 = v38;
  v212[5] = v38;
  v39 = *off_1E798D3F0;
  v181 = *off_1E798D3F8;
  v212[6] = *off_1E798D3F8;
  v212[7] = v39;
  v40 = *off_1E798D400;
  v212[8] = *off_1E798D410;
  v212[9] = v40;
  v41 = *off_1E798C928;
  v212[10] = *off_1E798C940;
  v212[11] = v41;
  v42 = *off_1E798D3E0;
  v201 = *off_1E798D3D8;
  v212[12] = *off_1E798D3D8;
  v212[13] = v42;
  v43 = *off_1E798C958;
  v188 = *off_1E798C960;
  v212[14] = *off_1E798C960;
  v212[15] = v43;
  v44 = *off_1E798C950;
  v212[16] = *off_1E798C950;
  BWAddEntriesWithKeysFromDictionaryToDictionary(v19, [MEMORY[0x1E695DEC8] arrayWithObjects:v212 count:17], v18);
  v191 = *v24;
  v45 = [objc_msgSend(objc_msgSend(v19 "objectForKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798CA90), "objectForKeyedSubscript:", *off_1E798CA08}")];
  if (v45)
  {
    v46 = [v45 intValue];
    if (v46 == 144)
    {
      v47 = 288;
    }

    else
    {
      v47 = v46;
    }

    [v18 setObject:objc_msgSend(*(v23 + 3480) forKeyedSubscript:{"numberWithInt:", v47), 0x1F2180030}];
  }

  v48 = [objc_msgSend(v18 objectForKeyedSubscript:{v39), "BOOLValue"}];
  v49 = v48;
  if (v48)
  {
    v50 = 2;
  }

  else
  {
    v50 = 1;
  }

  if ([objc_msgSend(v18 objectForKeyedSubscript:{v201), "intValue"}] == v50)
  {
    [v18 setObject:0 forKeyedSubscript:v201];
  }

  if ([objc_msgSend(v18 objectForKeyedSubscript:{v42), "intValue"}] == v50)
  {
    [v18 setObject:0 forKeyedSubscript:v42];
  }

  if ([objc_msgSend(v18 objectForKeyedSubscript:{v43), "intValue"}] == v50)
  {
    [v18 setObject:0 forKeyedSubscript:v43];
  }

  if ((v49 & 1) == 0)
  {
    [v18 setObject:0 forKeyedSubscript:v39];
  }

  v187 = v42;
  if ([objc_msgSend(v18 objectForKeyedSubscript:{v44), "intValue"}] == 2)
  {
    [v18 setObject:0 forKeyedSubscript:v44];
  }

  v211[0] = 0x1F217E450;
  v211[1] = 0x1F217E5B0;
  v211[2] = 0x1F217E6F0;
  v211[3] = 0x1F217E710;
  v211[4] = 0x1F217E730;
  v211[5] = 0x1F217E750;
  v211[6] = 0x1F217E770;
  v211[7] = 0x1F217E790;
  v211[8] = 0x1F217E7B0;
  v211[9] = 0x1F217E7D0;
  v211[10] = 0x1F217E7F0;
  v211[11] = 0x1F217E810;
  v211[12] = 0x1F217E6B0;
  v211[13] = 0x1F217E6D0;
  v211[14] = 0x1F217EA90;
  v211[15] = 0x1F217EAB0;
  v211[16] = 0x1F217E4D0;
  v211[17] = 0x1F217F750;
  v211[18] = 0x1F217EB90;
  v211[19] = 0x1F217EBB0;
  v211[20] = 0x1F217EBD0;
  v211[21] = 0x1F217EA50;
  v211[22] = 0x1F217EA70;
  v211[23] = 0x1F217E4F0;
  v211[24] = 0x1F217E510;
  v211[25] = 0x1F217E530;
  v211[26] = 0x1F217E550;
  v211[27] = 0x1F217E570;
  v211[28] = 0x1F217E590;
  v211[29] = 0x1F217EC30;
  v211[30] = 0x1F217F690;
  v211[31] = 0x1F217E850;
  v211[32] = 0x1F217EF30;
  v211[33] = @"FrontHorizontalScaleFactor";
  v211[34] = 0x1F2180050;
  v211[35] = 0x1F217EC50;
  v211[36] = 0x1F217ED10;
  v211[37] = 0x1F217FE10;
  BWAddEntriesWithKeysFromDictionaryToDictionary(v204, [MEMORY[0x1E695DEC8] arrayWithObjects:v211 count:38], v18);
  v173 = *off_1E798D3C8;
  v210[0] = *off_1E798D3C8;
  v210[1] = @"Unsupported";
  v210[2] = 0x1F216B190;
  v210[3] = 0x1F216B1B0;
  v210[4] = 0x1F217E870;
  v210[5] = 0x1F217E890;
  v210[6] = 0x1F217E8B0;
  v210[7] = 0x1F217E8D0;
  v210[8] = 0x1F217E8F0;
  v210[9] = 0x1F217F090;
  v210[10] = 0x1F217FD10;
  v210[11] = 0x1F217FD30;
  v210[12] = 0x1F217FD50;
  v210[13] = 0x1F217FD70;
  v210[14] = 0x1F217FD90;
  v210[15] = 0x1F217FDB0;
  v210[16] = 0x1F217FDD0;
  v210[17] = 0x1F217FDF0;
  v210[18] = 0x1F217FE30;
  v210[19] = 0x1F217F0B0;
  v210[20] = 0x1F217F0F0;
  v210[21] = 0x1F217F330;
  v210[22] = 0x1F217F6D0;
  v210[23] = 0x1F217F810;
  v210[24] = 0x1F217F6F0;
  v210[25] = 0x1F217F710;
  v210[26] = 0x1F217F730;
  v210[27] = 0x1F217F750;
  v210[28] = 0x1F217F790;
  v210[29] = 0x1F217F770;
  v210[30] = 0x1F217F7B0;
  v210[31] = 0x1F217F850;
  v210[32] = 0x1F217E910;
  v210[33] = 0x1F217E930;
  v210[34] = 0x1F217ECD0;
  v210[35] = 0x1F217ECF0;
  v210[36] = 0x1F217ED50;
  v210[37] = 0x1F217FC70;
  v210[38] = 0x1F217E9B0;
  v210[39] = 0x1F217F110;
  v210[40] = 0x1F217E9F0;
  v210[41] = 0x1F217F130;
  v210[42] = 0x1F217F150;
  v210[43] = 0x1F217F170;
  v210[44] = 0x1F217F190;
  v210[45] = 0x1F217F1B0;
  v210[46] = 0x1F217F1D0;
  v210[47] = 0x1F2179A10;
  v210[48] = 0x1F217F1F0;
  v210[49] = 0x1F217F210;
  v210[50] = 0x1F217F230;
  v210[51] = 0x1F217F250;
  v210[52] = 0x1F217F270;
  v210[53] = 0x1F217F290;
  v210[54] = 0x1F217F2B0;
  v210[55] = 0x1F217F2D0;
  v210[56] = 0x1F217F2F0;
  v210[57] = 0x1F217F310;
  v210[58] = 0x1F217F350;
  v210[59] = 0x1F217F370;
  v210[60] = 0x1F217F390;
  v210[61] = 0x1F217F3B0;
  v210[62] = 0x1F217F3D0;
  v210[63] = 0x1F217FCF0;
  v210[64] = 0x1F217F410;
  v210[65] = 0x1F217F450;
  v210[66] = 0x1F217F470;
  v210[67] = 0x1F217F490;
  v210[68] = 0x1F217F4B0;
  v210[69] = 0x1F217F4D0;
  v210[70] = 0x1F217F4F0;
  v210[71] = 0x1F217F510;
  v210[72] = 0x1F217EC70;
  v210[73] = 0x1F217ED70;
  v210[74] = 0x1F217ED90;
  v210[75] = 0x1F217E970;
  v210[76] = 0x1F217E990;
  v210[77] = 0x1F217E830;
  v210[78] = 0x1F217E5F0;
  v210[79] = 0x1F217E610;
  v210[80] = 0x1F217EF90;
  v210[81] = 0x1F217E490;
  v210[82] = 0x1F217E670;
  v210[83] = 0x1F217E690;
  v210[84] = 0x1F217E9D0;
  v210[85] = 0x1F217E4B0;
  v210[86] = 0x1F217FE50;
  v210[87] = 0x1F217FE70;
  v210[88] = 0x1F217FCD0;
  v210[89] = 0x1F217E950;
  v210[90] = 0x1F217F570;
  v210[91] = 0x1F217F5D0;
  v210[92] = 0x1F217F590;
  v210[93] = 0x1F217F5B0;
  v210[94] = 0x1F217FE90;
  v210[95] = 0x1F217F630;
  v210[96] = 0x1F217F8B0;
  v210[97] = 0x1F217FC90;
  v210[98] = 0x1F217EE70;
  v210[99] = 0x1F217EA10;
  v210[100] = 0x1F217F3F0;
  v210[101] = 0x1F217F950;
  v210[102] = 0x1F217F970;
  v210[103] = 0x1F217FA10;
  v210[104] = 0x1F217FA30;
  v210[105] = 0x1F217FA50;
  v210[106] = 0x1F217FA90;
  v210[107] = 0x1F217FAF0;
  v210[108] = 0x1F217FB10;
  v210[109] = 0x1F217FB30;
  v210[110] = 0x1F217FB50;
  v210[111] = 0x1F217FF70;
  v210[112] = 0x1F217FF90;
  v210[113] = 0x1F217F870;
  v210[114] = 0x1F217F890;
  v210[115] = 0x1F217EB70;
  v210[116] = 0x1F217EF50;
  v210[117] = 0x1F217EF70;
  v210[118] = 0x1F217F050;
  v210[119] = 0x1F217F070;
  v210[120] = 0x1F217EBF0;
  v210[121] = 0x1F217FEB0;
  v210[122] = 0x1F217FEF0;
  v210[123] = 0x1F217FF10;
  v210[124] = 0x1F217FF30;
  v210[125] = 0x1F217FED0;
  v210[126] = 0x1F217EAD0;
  v210[127] = 0x1F217EAF0;
  v210[128] = 0x1F217EB10;
  v210[129] = 0x1F217F430;
  v210[130] = 0x1F2180070;
  v210[131] = 0x1F217ED30;
  v210[132] = 0x1F2180090;
  v210[133] = 0x1F217F6B0;
  v210[134] = 0x1F217FF50;
  v210[135] = 0x1F217F870;
  v210[136] = 0x1F217F890;
  v210[137] = 0x1F217FCB0;
  v210[138] = 0x1F21800B0;
  v210[139] = 0x1F217EB30;
  v210[140] = 0x1F21800D0;
  v210[141] = 0x1F21800F0;
  v210[142] = 0x1F2180110;
  v210[143] = 0x1F2180130;
  v210[144] = 0x1F217F7D0;
  v210[145] = 0x1F217F7F0;
  BWAddEntriesWithKeysFromDictionaryToDictionary(a2, [MEMORY[0x1E695DEC8] arrayWithObjects:v210 count:146], v18);
  if (FigCaptureSushiRawDNGDictionaryCreatedInGraph())
  {
    v51 = v170;
    v52 = 0x1E696A000;
    if (([objc_msgSend(a2 objectForKeyedSubscript:{0x1F217F570), "BOOLValue"}] & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else
  {
    v53 = [objc_msgSend(v18 objectForKeyedSubscript:{0x1F217E9B0), "BOOLValue"}];
    v176 = [v18 objectForKeyedSubscript:0x1F217E5B0];
    v54 = [objc_msgSend(v204 objectForKeyedSubscript:{0x1F217E6F0), "intValue"}] > 0 || objc_msgSend(objc_msgSend(v204, "objectForKeyedSubscript:", 0x1F217E710), "intValue") > 0;
    v55 = [objc_msgSend(v172 objectForKeyedSubscript:{@"deviceType", "intValue"}];
    v56 = v55 - 10;
    v57 = (v55 < 0xA) & (0x310u >> v55);
    v58 = [objc_msgSend(v172 objectForKeyedSubscript:{@"position", "intValue"}];
    v59 = [objc_msgSend(v186 objectForKeyedSubscript:{0x1F216B190), "intValue"}];
    v60 = [objc_msgSend(v186 objectForKeyedSubscript:{0x1F216B1B0), "intValue"}];
    if (v59 == 2592 && v60 == 1936)
    {
      v61 = 1;
      v62 = v176;
    }

    else
    {
      v62 = v176;
      v61 = v59 == 3264 && v60 == 2448 || v59 == 4032 && v60 == 3024;
    }

    if (v62)
    {
      v64 = 0;
    }

    else
    {
      v64 = v53;
    }

    v65 = v64 | v54 | v57;
    v51 = v170;
    v52 = 0x1E696A000uLL;
    a2 = v186;
    if ((v65 & 1) != 0 || v58 != 1 || v56 > 0xFFFFFFFC || !v61)
    {
      goto LABEL_73;
    }
  }

  v66 = [objc_msgSend(objc_msgSend(v204 objectForKeyedSubscript:{v191), "objectForKeyedSubscript:", *off_1E798CAB8), "objectForKeyedSubscript:", *off_1E798C710}];
  if (v66)
  {
    v67 = [v66 unsignedIntValue];
    v68 = [v204 objectForKeyedSubscript:*off_1E798C9A8];
    if (v67)
    {
      v69 = v68;
      [v18 setObject:objc_msgSend(*(v52 + 3480) forKeyedSubscript:{"numberWithUnsignedInt:", v67), 0x1F217F530}];
      if (v69)
      {
        [v18 setObject:v69 forKeyedSubscript:0x1F217F550];
      }
    }
  }

LABEL_73:
  v70 = [a2 objectForKeyedSubscript:0x1F217F5F0];
  if (v70)
  {
    [v18 setObject:objc_msgSend(*(v52 + 3480) forKeyedSubscript:{"numberWithUnsignedInt:", FigCapturePixelFormatTypeFromPlistValue(v70)), 0x1F217F5F0}];
  }

  v71 = [a2 objectForKeyedSubscript:0x1F217F610];
  if (v71)
  {
    [v18 setObject:objc_msgSend(*(v52 + 3480) forKeyedSubscript:{"numberWithUnsignedInt:", FigCapturePixelFormatTypeFromPlistValue(v71)), 0x1F217F610}];
  }

  if (([objc_msgSend(v172 objectForKeyedSubscript:{@"hasAutoFocus", "BOOLValue"}] & 1) == 0 && objc_msgSend(objc_msgSend(v18, "objectForKeyedSubscript:", 0x1F217EA90), "intValue"))
  {
    [v18 setObject:0 forKeyedSubscript:0x1F217EA90];
  }

  if (![v18 objectForKeyedSubscript:0x1F217EA90] && objc_msgSend(objc_msgSend(v172, "objectForKeyedSubscript:", @"hasAutoFocus"), "BOOLValue"))
  {
    [v18 setObject:&unk_1F2244410 forKeyedSubscript:0x1F217EA90];
  }

  if (a8 && [objc_msgSend(v18 objectForKeyedSubscript:{0x1F217EA90), "intValue"}] == 2)
  {
    [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217EAB0];
  }

  if ([objc_msgSend(v18 objectForKeyedSubscript:{0x1F217F0B0), "BOOLValue"}] && objc_msgSend(objc_msgSend(v172, "objectForKeyedSubscript:", @"stillImageNoiseReductionAndFusionScheme"), "intValue") <= 3)
  {
    [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217F0D0];
  }

  if (a7)
  {
    [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217EA30];
  }

  if ([a2 objectForKeyedSubscript:@"MaxFrameRateOverride"])
  {
    v72 = [objc_msgSend(a2 objectForKeyedSubscript:{@"MaxFrameRateOverride", "intValue"}];
    v73 = [objc_msgSend(v18 objectForKeyedSubscript:{v180), "intValue"}];
    v74 = [objc_msgSend(v18 objectForKeyedSubscript:{v181), "intValue"}];
    if (v72 >= v73 && v72 <= v74)
    {
      [v18 setObject:objc_msgSend(a2 forKeyedSubscript:{"objectForKeyedSubscript:", @"MaxFrameRateOverride", v181}];
    }
  }

  if ([a2 objectForKeyedSubscript:@"MinFrameRateOverride"])
  {
    v75 = [objc_msgSend(a2 objectForKeyedSubscript:{@"MinFrameRateOverride", "intValue"}];
    v76 = [objc_msgSend(v18 objectForKeyedSubscript:{v180), "intValue"}];
    v77 = [objc_msgSend(v18 objectForKeyedSubscript:{v181), "intValue"}];
    if (v75 >= v76 && v75 <= v77)
    {
      [v18 setObject:objc_msgSend(a2 forKeyedSubscript:{"objectForKeyedSubscript:", @"MinFrameRateOverride", v180}];
    }
  }

  [v172 objectForKeyedSubscript:@"localizedName"];
  v78 = [objc_msgSend(a2 objectForKeyedSubscript:{0x1F216B190), "intValue"}];
  v79 = [objc_msgSend(a2 objectForKeyedSubscript:{0x1F216B1B0), "intValue"}];
  v80 = [objc_msgSend(v204 objectForKeyedSubscript:{0x1F217E6F0), "intValue"}];
  if (!v80)
  {
    v80 = [objc_msgSend(v204 objectForKeyedSubscript:{@"SensorWidth", "intValue"}];
  }

  v81 = [objc_msgSend(v204 objectForKeyedSubscript:{0x1F217E710), "intValue"}];
  if (!v81)
  {
    v81 = [objc_msgSend(v204 objectForKeyedSubscript:{@"SensorHeight", "intValue"}];
  }

  v82 = [objc_msgSend(v204 objectForKeyedSubscript:{0x1F217E6B0), "intValue"}];
  if (!v82)
  {
    v82 = [objc_msgSend(v204 objectForKeyedSubscript:{v182), "intValue"}];
  }

  v83 = [objc_msgSend(v204 objectForKeyedSubscript:{0x1F217E6D0), "intValue"}];
  if (!v83)
  {
    v83 = [objc_msgSend(v204 objectForKeyedSubscript:{v184), "intValue"}];
  }

  if (!v82)
  {
    v82 = v80;
  }

  if (v83)
  {
    v84 = v83;
  }

  else
  {
    v84 = v81;
  }

  if (FigCapturePixelFormatIsPackedBayerRaw(v171))
  {
    v85 = [objc_msgSend(a2 objectForKeyedSubscript:{0x1F217F7D0), "intValue"}];
    v86 = [objc_msgSend(a2 objectForKeyedSubscript:{0x1F217F7F0), "intValue"}];
    if (!v85 || !v86 || v85 > v82 || v86 > v84)
    {
LABEL_231:
      csu_createSourceFormatDictFromDeviceFormat_cold_1();
      goto LABEL_21;
    }
  }

  else if ([objc_msgSend(a2 objectForKeyedSubscript:{0x1F217F6D0), "BOOLValue"}])
  {
    if (v78 >= v82 || v79 >= v84)
    {
      goto LABEL_231;
    }
  }

  else if (v78 > v82 || v79 > v84)
  {
    goto LABEL_231;
  }

  if ([objc_msgSend(a2 objectForKeyedSubscript:{0x1F217EA10), "BOOLValue"}])
  {
    if (![objc_msgSend(v204 objectForKeyedSubscript:{v188), "BOOLValue"}])
    {
      goto LABEL_231;
    }

    v87 = [objc_msgSend(v204 objectForKeyedSubscript:{v201), "intValue"}];
    v88 = v87 <= 1 ? 1 : v87;
    v89 = [objc_msgSend(v204 objectForKeyedSubscript:{v187), "intValue"}];
    v90 = v89 <= 1 ? 1 : v89;
    v91 = [objc_msgSend(v204 objectForKeyedSubscript:{v43), "intValue"}];
    v92 = v91 <= 1 ? 1 : v91;
    if (v92 != v90 || v92 != v88)
    {
      goto LABEL_231;
    }
  }

  obja = [a2 objectForKeyedSubscript:0x1F217EC70];
  v93 = 0x1E696A000;
  if ([obja count])
  {
    if ([objc_msgSend(a2 objectForKeyedSubscript:{@"ExperimentalSupportedDepthFormats", "BOOLValue"}])
    {
      [v18 setObject:MEMORY[0x1E695E0F0] forKeyedSubscript:0x1F217EC70];
    }

    else
    {
      v175 = [v18 objectForKeyedSubscript:v178];
      v174 = [v18 objectForKeyedSubscript:v180];
      v165 = v18;
      v185 = [v18 objectForKeyedSubscript:v181];
      v177 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(obja, "count")}];
      v242 = 0u;
      v243 = 0u;
      v244 = 0u;
      v245 = 0u;
      v94 = [obja countByEnumeratingWithState:&v242 objects:&v239 count:16];
      if (v94)
      {
        v95 = v94;
        v96 = 0;
        v205 = 0;
        v97 = 0;
        v98 = 0;
        v99 = *v243;
        do
        {
          for (j = 0; j != v95; ++j)
          {
            if (*v243 != v99)
            {
              objc_enumerationMutation(obja);
            }

            v101 = *(*(&v242 + 1) + 8 * j);
            v102 = [a6 objectForKeyedSubscript:v101];
            v103 = [v102 objectForKeyedSubscript:0x1F216B190];
            if ([v103 intValue] > v97)
            {
              v97 = [v103 intValue];
              v98 = v101;
            }

            v104 = [v102 objectForKeyedSubscript:0x1F217EC90];
            if ([v104 intValue] > v96)
            {
              v96 = [v104 intValue];
              v205 = v101;
            }
          }

          v95 = [obja countByEnumeratingWithState:&v242 objects:&v239 count:16];
        }

        while (v95);
      }

      else
      {
        v205 = 0;
        v98 = 0;
      }

      v105 = v205;
      if (v98)
      {
        v105 = v98;
      }

      v183 = v105;
      v237 = 0u;
      v238 = 0u;
      v235 = 0u;
      v236 = 0u;
      a2 = v186;
      v198 = [obja countByEnumeratingWithState:&v235 objects:v234 count:16];
      if (v198)
      {
        v189 = *v236;
        do
        {
          for (k = 0; k != v198; ++k)
          {
            if (*v236 != v189)
            {
              objc_enumerationMutation(obja);
            }

            v206 = *(*(&v235 + 1) + 8 * k);
            v107 = [a6 objectForKeyedSubscript:?];
            if (v107)
            {
              v108 = v107;
              v109 = [MEMORY[0x1E695DF70] array];
              v110 = [v108 objectForKeyedSubscript:0x1F216B190];
              v111 = [v108 objectForKeyedSubscript:0x1F216B1B0];
              v112 = [v108 objectForKeyedSubscript:0x1F217EC90];
              if (v112)
              {
                v113 = v112;
              }

              else
              {
                v113 = v110;
              }

              v194 = v113;
              v114 = [v108 objectForKeyedSubscript:0x1F217ECB0];
              if (v114)
              {
                v115 = v114;
              }

              else
              {
                v115 = v111;
              }

              v193 = v115;
              v116 = [v108 objectForKeyedSubscript:0x1F217EE90];
              if (v116)
              {
                v117 = v116;
              }

              else
              {
                v117 = v110;
              }

              v118 = [v108 objectForKeyedSubscript:0x1F217EEB0];
              v202 = v111;
              if (v118)
              {
                v119 = v118;
              }

              else
              {
                v119 = v111;
              }

              v120 = [v108 objectForKeyedSubscript:@"MaxFrameRate"];
              v121 = v185;
              if (v120)
              {
                v121 = v120;
              }

              v192 = v121;
              v195 = [v108 objectForKeyedSubscript:0x1F217F2B0];
              v196 = [v108 objectForKeyedSubscript:0x1F217EEF0];
              v230 = 0u;
              v231 = 0u;
              v232 = 0u;
              v233 = 0u;
              v122 = [a5 countByEnumeratingWithState:&v230 objects:v229 count:16];
              if (v122)
              {
                v123 = v122;
                v124 = *v231;
                while (2)
                {
                  for (m = 0; m != v123; ++m)
                  {
                    if (*v231 != v124)
                    {
                      objc_enumerationMutation(a5);
                    }

                    v126 = *(*(&v230 + 1) + 8 * m);
                    if ([objc_msgSend(v126 objectForKeyedSubscript:{0x1F216B190), "isEqual:", v117}] && (objc_msgSend(objc_msgSend(v126, "objectForKeyedSubscript:", 0x1F216B1B0), "isEqual:", v119) & 1) != 0 || objc_msgSend(objc_msgSend(v126, "objectForKeyedSubscript:", 0x1F216B190), "isEqual:", v119) && objc_msgSend(objc_msgSend(v126, "objectForKeyedSubscript:", 0x1F216B1B0), "isEqual:", v117))
                    {
                      v127 = [v126 objectForKeyedSubscript:0x1F217EF10];
                      goto LABEL_188;
                    }
                  }

                  v123 = [a5 countByEnumeratingWithState:&v230 objects:v229 count:16];
                  if (v123)
                  {
                    continue;
                  }

                  break;
                }

                v127 = 0;
LABEL_188:
                a2 = v186;
              }

              else
              {
                v127 = 0;
              }

              v128 = [v206 isEqualToString:v183];
              v190 = [v110 intValue] >= 1 && objc_msgSend(v202, "intValue") > 0;
              if ([v108 objectForKeyedSubscript:@"DisparitySupported"])
              {
                [v109 addObject:&unk_1F22444A0];
                [v109 addObject:&unk_1F22444B8];
              }

              if ([v108 objectForKeyedSubscript:@"DepthSupported"])
              {
                [v109 addObject:&unk_1F22444D0];
                [v109 addObject:&unk_1F22444E8];
              }

              if ([v109 count])
              {
                v129 = [v109 firstObject];
                [v109 removeObject:v129];
                v218[0] = v179;
                v218[1] = 0x1F217EC10;
                *type = v129;
                v220 = v109;
                v218[2] = 0x1F217E430;
                v218[3] = 0x1F216B190;
                v221 = v206;
                v222 = v110;
                v218[4] = 0x1F216B1B0;
                v218[5] = v180;
                v223 = v202;
                v224 = v174;
                v218[6] = v181;
                v218[7] = v178;
                v225 = v192;
                v226 = v175;
                v218[8] = 0x1F217EC90;
                v218[9] = 0x1F217ECB0;
                v227 = v194;
                v228 = v193;
                v130 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", type, v218, 10)}];
                if ([v127 BOOLValue])
                {
                  [v130 setObject:v127 forKeyedSubscript:0x1F217EF10];
                }

                if (v190)
                {
                  [v130 setObject:v117 forKeyedSubscript:0x1F217EE90];
                  [v130 setObject:v119 forKeyedSubscript:0x1F217EEB0];
                }

                if ([v195 BOOLValue])
                {
                  [v130 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217F2B0];
                }

                if (v128)
                {
                  [v130 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217E490];
                }

                a2 = v186;
                if ([objc_msgSend(v186 objectForKeyedSubscript:{@"ExperimentalSupportedDepthFormats", "BOOLValue"}])
                {
                  [v130 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v173];
                }

                if ([v196 BOOLValue])
                {
                  [v130 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217EEF0];
                }

                [v177 addObject:v130];
              }
            }
          }

          v198 = [obja countByEnumeratingWithState:&v235 objects:v234 count:16];
        }

        while (v198);
      }

      v18 = v165;
      [v165 setObject:v177 forKeyedSubscript:0x1F217EC70];
      v51 = v170;
      v93 = 0x1E696A000;
    }
  }

  if ([objc_msgSend(a2 objectForKeyedSubscript:{0x1F217F8B0), "BOOLValue"}])
  {
    v131 = [objc_msgSend(v18 objectForKeyedSubscript:{v181), "intValue"}];
    v132 = 0x1F217E6F0;
    v133 = 0x1F217E710;
    if (![v18 objectForKeyedSubscript:0x1F217E6F0] || !objc_msgSend(v18, "objectForKeyedSubscript:", 0x1F217E710))
    {
      v133 = v166;
      v132 = v167;
    }

    v134 = [objc_msgSend(v18 objectForKeyedSubscript:{v132), "intValue"}];
    v135 = [objc_msgSend(v18 objectForKeyedSubscript:{v133), "intValue"}];
    if ([v18 objectForKeyedSubscript:0x1F217E850])
    {
      v136 = v18;
      v137 = @"FESBinningFactorHorizontal";
    }

    else
    {
      if (![v18 objectForKeyedSubscript:@"FrontHorizontalScaleFactor"])
      {
        v138 = v51;
        v139 = 1;
LABEL_223:
        v140 = v135 * v134;
        if (![v172 objectForKeyedSubscript:@"synchronizedStreamUniqueIDs"] && !objc_msgSend(v172, "objectForKeyedSubscript:", @"unsynchronizedStreamUniqueIDs"))
        {
          v141 = [v172 objectForKeyedSubscript:@"SensorPowerConsumption"];
          v209 = [objc_msgSend(v141 objectForKeyedSubscript:{@"SensorWidth", "intValue"}];
          v207 = [objc_msgSend(v141 objectForKeyedSubscript:{@"SensorHeight", "intValue"}];
          v142 = [objc_msgSend(v141 objectForKeyedSubscript:{@"BasePower", "intValue"}];
          [objc_msgSend(v141 objectForKeyedSubscript:{@"PowerPerFramePerSecond", "floatValue"}];
          v144 = v142;
          if (v209 && v207 && v142 && v143 != 0.0)
          {
            v145 = (v140 / (v207 * v209)) * v143;
            [v18 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), 0x1F217F8F0}];
            *&v146 = v145;
            [v18 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v146), 0x1F217F910}];
            a2 = v186;
          }

          else
          {
            a2 = v186;
            if (v141)
            {
              [v141 count];
            }
          }
        }

        v147 = v134 / v139 * v135 * v131;
        v148 = v140 * v131;
        v241 = 0;
        v239 = 0u;
        v240 = 0u;
        ISPHardwareCharacteristics = FigCapturePlatformGetISPHardwareCharacteristics(&v239);
        v150 = 1000000 * v239 * DWORD2(v239);
        v151 = 1000000 * v240 * DWORD2(v240);
        if ((v148 / v150) <= (v147 / v151))
        {
          v152 = v147 / v151;
        }

        else
        {
          v152 = v148 / v150;
        }

        *&ISPHardwareCharacteristics = v152 / v131;
        v93 = 0x1E696A000uLL;
        [v18 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", ISPHardwareCharacteristics), 0x1F217F8D0}];
        v153 = [objc_msgSend(v18 objectForKeyedSubscript:{0x1F216B190), "intValue"}];
        v154 = [objc_msgSend(v18 objectForKeyedSubscript:{0x1F216B1B0), "intValue"}] * v153;
        v155 = (((2 * v148) << [objc_msgSend(v18 objectForKeyedSubscript:{0x1F217E5D0), "BOOLValue"}]) / 0x100000 + 3 * v131 * v154 / 0x200000) * 0.1;
        *&v155 = (v155 + (v152 * v241)) / v131;
        [v18 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v155), 0x1F217F930}];
        v51 = v138;
        goto LABEL_238;
      }

      v137 = @"FrontHorizontalScaleFactor";
      v136 = v18;
    }

    v138 = v51;
    v139 = [objc_msgSend(v136 objectForKeyedSubscript:{v137), "intValue"}];
    goto LABEL_223;
  }

LABEL_238:
  v156 = [objc_msgSend(v18 objectForKeyedSubscript:{0x1F217F950), "BOOLValue"}];
  v157 = [objc_msgSend(v18 objectForKeyedSubscript:{0x1F217F970), "BOOLValue"}];
  if ((v156 & 1) != 0 || (v157 & 1) != 0 || v169 == 14)
  {
    [v18 setObject:a11 forKeyedSubscript:0x1F217F9D0];
    [a11 setObject:objc_msgSend(v18 forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F216B190), 0x1F217FA10}];
    [a11 setObject:objc_msgSend(v18 forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F216B1B0), 0x1F217FA30}];
  }

  if ([objc_msgSend(v18 objectForKeyedSubscript:{0x1F217FA90), "BOOLValue"}])
  {
    [v18 setObject:a14 forKeyedSubscript:0x1F217FAB0];
    [a14 setObject:objc_msgSend(v18 forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F216B190), 0x1F217FAF0}];
    [a14 setObject:objc_msgSend(v18 forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F216B1B0), 0x1F217FB10}];
  }

  if ([v18 objectForKeyedSubscript:0x1F217EB70])
  {
    [v18 setObject:a12 forKeyedSubscript:0x1F217EB50];
  }

  if ([v18 objectForKeyedSubscript:0x1F217FE30])
  {
    [v18 setObject:a13 forKeyedSubscript:0x1F217FE30];
    [v18 setObject:objc_msgSend(a13 forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F217FE10), 0x1F217FE10}];
  }

  if (v51 && [a9 objectForKeyedSubscript:@"BackgroundBlurSupported"] && objc_msgSend(objc_msgSend(v18, "objectForKeyedSubscript:", 0x1F216B190), "intValue") <= 1920 && objc_msgSend(objc_msgSend(v18, "objectForKeyedSubscript:", 0x1F216B1B0), "intValue") <= 1920 && (FigCapturePixelFormatIsTenBit(v171) & 1) == 0)
  {
    if (v168 == 2)
    {
      v158 = FigCaptureSourceFormatKey_BackgroundBlurSupported;
      goto LABEL_259;
    }

    if (v168 == 1 && v169 <= 8 && ((1 << v169) & 0x184) != 0)
    {
      v158 = FigCaptureSourceFormatKey_BackgroundBlurSupportedForContinuityCapture;
LABEL_259:
      [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*v158];
    }
  }

  v159 = [a2 objectForKeyedSubscript:0x1F217F830];
  if (v159)
  {
    [v18 setObject:objc_msgSend(*(v93 + 3480) forKeyedSubscript:{"numberWithInt:", FigCaptureVideoStabilizationStrengthStringToEnum(v159)), 0x1F217F830}];
  }

  if (!v51)
  {
    goto LABEL_296;
  }

  if ([a9 objectForKeyedSubscript:@"StudioLightingSupported"] && objc_msgSend(objc_msgSend(v18, "objectForKeyedSubscript:", 0x1F216B190), "intValue") <= 1920 && objc_msgSend(objc_msgSend(v18, "objectForKeyedSubscript:", 0x1F216B1B0), "intValue") <= 1920 && (FigCapturePixelFormatIsTenBit(v171) & 1) == 0)
  {
    if (v168 == 2)
    {
      v160 = FigCaptureSourceFormatKey_StudioLightingSupported;
      goto LABEL_273;
    }

    if (v168 == 1 && v169 <= 8 && ((1 << v169) & 0x184) != 0)
    {
      v160 = FigCaptureSourceFormatKey_StudioLightingSupportedForContinuityCapture;
LABEL_273:
      [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*v160];
    }
  }

  if ([a9 objectForKeyedSubscript:@"ReactionEffectsSupported"] && objc_msgSend(objc_msgSend(v18, "objectForKeyedSubscript:", 0x1F216B190), "intValue") <= 1920 && objc_msgSend(objc_msgSend(v18, "objectForKeyedSubscript:", 0x1F216B1B0), "intValue") <= 1920 && (FigCapturePixelFormatIsTenBit(v171) & 1) == 0)
  {
    if (v168 == 2)
    {
      v161 = FigCaptureSourceFormatKey_ReactionEffectsSupported;
      goto LABEL_284;
    }

    if (v168 == 1 && v169 - 2 <= 7 && ((0xE1u >> (v169 - 2)) & 1) != 0)
    {
      v161 = FigCaptureSourceFormatKey_ReactionEffectsSupportedForContinuityCapture;
LABEL_284:
      [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*v161];
    }
  }

  if (![a9 objectForKeyedSubscript:@"BackgroundReplacementSupported"] || objc_msgSend(objc_msgSend(v18, "objectForKeyedSubscript:", 0x1F216B190), "intValue") > 1920 || objc_msgSend(objc_msgSend(v18, "objectForKeyedSubscript:", 0x1F216B1B0), "intValue") > 1920 || (FigCapturePixelFormatIsTenBit(v171) & 1) != 0)
  {
    goto LABEL_296;
  }

  if (v168 == 2)
  {
    v162 = MEMORY[0x1E695E110];
    v163 = FigCaptureSourceFormatKey_BackgroundReplacementSupported;
  }

  else
  {
    if (v168 != 1 || v169 > 8 || ((1 << v169) & 0x184) == 0)
    {
      goto LABEL_296;
    }

    v162 = MEMORY[0x1E695E118];
    v163 = FigCaptureSourceFormatKey_BackgroundReplacementSupportedForContinuityCapture;
  }

  [v18 setObject:v162 forKeyedSubscript:*v163];
LABEL_296:
  if ([objc_msgSend(v18 objectForKeyedSubscript:{v179), "unsignedIntValue"}] == 2016686642)
  {
    if ([objc_msgSend(a9 objectForKeyedSubscript:{@"AppleLogSupportedForProRes", "BOOLValue"}])
    {
      [v18 setObject:objc_msgSend(*(v93 + 3480) forKeyedSubscript:{"numberWithBool:", 1), 0x1F217FFF0}];
    }

    if ([objc_msgSend(a9 objectForKeyedSubscript:{@"AppleLog2SupportedForProRes", "BOOLValue"}])
    {
      [v18 setObject:objc_msgSend(*(v93 + 3480) forKeyedSubscript:{"numberWithBool:", 1), 0x1F2180010}];
    }

    if ([objc_msgSend(a9 objectForKeyedSubscript:{@"10BitVideoHDRSupportedForProRes", "BOOLValue"}])
    {
      [v18 setObject:objc_msgSend(a9 forKeyedSubscript:{"objectForKeyedSubscript:", @"10BitVideoHDRSupportedForProRes", 0x1F217FFD0}];
    }

    if ([v18 objectForKeyedSubscript:0x1F217FF70])
    {
      [v18 setObject:0 forKeyedSubscript:0x1F217FF70];
    }
  }

  else
  {
    [v18 objectForKeyedSubscript:0x1F217FF70];
  }

  if ([objc_msgSend(v18 objectForKeyedSubscript:{0x1F217F210), "BOOLValue"}] && objc_msgSend(objc_msgSend(a9, "objectForKeyedSubscript:", @"SemanticRenderingVersion"), "intValue") >= 3 && (objc_msgSend(objc_msgSend(v18, "objectForKeyedSubscript:", 0x1F217F270), "BOOLValue") & 1) == 0)
  {
    [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217F230];
  }

  if ([objc_msgSend(a9 objectForKeyedSubscript:{@"SmartStyleRenderingVersion", "intValue"}] >= 1)
  {
    [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217F290];
  }

  if (v51 && [objc_msgSend(a10 objectForKeyedSubscript:{@"ISPMotionData", "BOOLValue"}] && objc_msgSend(a9, "objectForKeyedSubscript:", @"LensSmudgeDetectionSupported") && ((FigCapturePixelFormatIsBGRA(v171) & 1) != 0 || FigCapturePixelFormatIsYCbCr(v171)) && (FigCapturePixelFormatIsTenBit(v171) & 1) == 0 && (FigCapturePixelFormatIs16Bit(v171) & 1) == 0 && objc_msgSend(objc_msgSend(v18, "objectForKeyedSubscript:", 0x1F216B190), "intValue") >= 1080 && objc_msgSend(objc_msgSend(v18, "objectForKeyedSubscript:", 0x1F216B1B0), "intValue") >= 1080)
  {
    [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217F6B0];
  }

  return v18;
}

void *csu_pruneDictionaryToJustKeys(void *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(a1, "allKeys")}];
  [v4 minusSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", a2)}];
  [a1 removeObjectsForKeys:{objc_msgSend(v4, "allObjects")}];
  return a1;
}

void __bwvdic_monocularVideoPipelineForNetworkDimensions_block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(getADMonocularVideoPipelineParametersClass()) init];
  [v2 setRequestedDimensions:{objc_msgSend(getADImageDimensionsClass(), "imageDimensionsWithWidth:height:", *(a1 + 40), *(a1 + 44))}];
  v3 = [objc_alloc(getADMonocularVideoPipelineClass()) initWithParameters:v2];
  v4 = [v3 inferenceDescriptor];
  NSSelectorFromString(&cfstr_Outputscale.isa);
  if (objc_opt_respondsToSelector())
  {
    v5 = [objc_msgSend(v4 performSelector:{NSSelectorFromString(&cfstr_Outputscale.isa)), "imageDescriptor"}];
    if (!v5)
    {
      __bwvdic_monocularVideoPipelineForNetworkDimensions_block_invoke_cold_3();
      goto LABEL_8;
    }

    v6 = v5;
    if ([objc_msgSend(v5 "dimensions")] != 1 || objc_msgSend(objc_msgSend(v6, "dimensions"), "height") != 1)
    {
      __bwvdic_monocularVideoPipelineForNetworkDimensions_block_invoke_cold_1();
      goto LABEL_8;
    }

    if ([v6 pixelFormat] != 1278226536)
    {
      __bwvdic_monocularVideoPipelineForNetworkDimensions_block_invoke_cold_2();
      goto LABEL_8;
    }

    v7 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v7 setSupportedPixelFormats:&unk_1F2248958];
    [(BWVideoFormatRequirements *)v7 setWidth:1];
    [(BWVideoFormatRequirements *)v7 setHeight:1];
    v19 = v7;
    *(*(a1 + 32) + 56) = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1]);
  }

  v8 = [objc_msgSend(v4 "disparityOutput")];
  v9 = *(a1 + 32);
  v10 = [objc_msgSend(v8 "dimensions")];
  v11 = [objc_msgSend(v8 "dimensions")];
  *(v9 + 8) = v10;
  *(v9 + 12) = v11;
  *(*(a1 + 32) + 16) = *(*(a1 + 32) + 8);
  *(*(a1 + 32) + 24) = [v8 pixelFormat];
  v12 = [objc_msgSend(v4 "depthFeaturesOutput")];
  v13 = *(a1 + 32);
  v14 = [objc_msgSend(v12 "dimensions")];
  v15 = [objc_msgSend(v12 "dimensions")];
  *(v13 + 28) = v14;
  *(v13 + 32) = v15;
  *(*(a1 + 32) + 36) = [v12 pixelFormat];
  v16 = [objc_msgSend(v4 "colorFeaturesOutput")];
  v17 = *(a1 + 32);
  LODWORD(v12) = [objc_msgSend(v16 "dimensions")];
  v18 = [objc_msgSend(v16 "dimensions")];
  *(v17 + 40) = v12;
  *(v17 + 44) = v18;
  *(*(a1 + 32) + 48) = [v16 pixelFormat];
LABEL_8:
}

void man_maProcessorOutputReadyCallback(uint64_t a1, uint64_t a2, void *target)
{
  if (a2)
  {
    [*(a1 + 160) logErrorNumber:a2 errorString:@"SBP output callback"];
  }

  if (target)
  {
    v5 = *(a1 + 144);
    if (v5)
    {
      [v5 emitSampleBuffer:target];
    }

    if (*(a1 + 152))
    {
      v6 = CMGetAttachment(target, *off_1E798A3C8, 0);
      if (v6)
      {
        v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
        v8 = 0;
        v9 = *off_1E798D180;
        v20.value = *off_1E798B540;
        *&v20.timescale = v9;
        v10 = *off_1E798B328;
        v20.epoch = *off_1E798B2A8;
        v21 = v10;
        v11 = *off_1E798D168;
        v22 = *off_1E798D1B0;
        v23 = v11;
        v12 = *off_1E798D188;
        v24 = *off_1E798D190;
        v25 = v12;
        v13 = *off_1E798B3D8;
        v26 = *off_1E798D1C8;
        v27 = v13;
        v14 = *off_1E798B208;
        v28 = *off_1E798B6B0;
        v29 = v14;
        v15 = *off_1E798D198;
        v30 = *off_1E798B5D8;
        v31 = v15;
        do
        {
          v16 = *(&v20.value + v8);
          v17 = [v6 objectForKeyedSubscript:v16];
          if (v17)
          {
            [v7 setObject:v17 forKeyedSubscript:v16];
          }

          v8 += 8;
        }

        while (v8 != 112);
        if ([v7 count])
        {
          memset(&sampleTimingArray.presentationTimeStamp, 0, 48);
          *&sampleTimingArray.duration.value = *MEMORY[0x1E6960C70];
          sampleTimingArray.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
          CMSampleBufferGetPresentationTimeStamp(&sampleTimingArray.presentationTimeStamp, target);
          sampleTimingArray.decodeTimeStamp = sampleTimingArray.duration;
          targeta = 0;
          v6 = CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 1, &sampleTimingArray, 0, 0, &targeta);
          if (targeta && !v6)
          {
            CMSetAttachment(targeta, *off_1E798A418, v7, 1u);
            [*(a1 + 152) emitSampleBuffer:targeta];
            CFRelease(targeta);

            return;
          }
        }

        else
        {

          v6 = 0;
        }
      }

      memset(&v20, 0, sizeof(v20));
      CMSampleBufferGetPresentationTimeStamp(&v20, target);
      [*(a1 + 160) logErrorNumber:v6 errorString:@"SBP output callback create offline sample buffer"];
      sampleTimingArray.duration = v20;
      [*(a1 + 152) emitDroppedSample:{+[BWDroppedSample newDroppedSampleWithReason:pts:](BWDroppedSample, "newDroppedSampleWithReason:pts:", 0x1F219BFD0, &sampleTimingArray)}];
    }
  }
}

void dmc_attachMetadataDictToSampleBufferAndPixelBufferAndCleanupPrivateCaptureStreamAttachments(opaqueCMSampleBuffer *a1, const void *a2)
{
  ImageBuffer = CMSampleBufferGetImageBuffer(a1);
  v5 = *off_1E798A3C8;
  CMSetAttachment(a1, *off_1E798A3C8, a2, 1u);
  v6 = CVBufferCopyAttachments(ImageBuffer, kCVAttachmentMode_ShouldPropagate);
  if (v6)
  {
    v6 = CFAutorelease(v6);
  }

  CFDictionaryApplyFunction(v6, dmc_removeAttachmentFromPixelBufferIfPrivate, ImageBuffer);

  CMSetAttachment(ImageBuffer, v5, a2, 1u);
}

uint64_t BWFilterDetectedObjectsInfoUsingSet(uint64_t result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = [MEMORY[0x1E695DF70] array];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if (([a2 containsObject:v9] & 1) == 0)
          {
            [v4 addObject:v9];
          }
        }

        v6 = [v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
      }

      while (v6);
    }

    return [v3 removeObjectsForKeys:v4];
  }

  return result;
}

uint64_t BWDetectedFacesRemoveFacesFromSampleBuffer(const void *a1)
{
  v1 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  v2 = *off_1E798B218;

  return [v1 removeObjectForKey:v2];
}

void *BWCreateCorrectedFacesArray(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  *&v23[16] = a8;
  *&v23[24] = a9;
  *v23 = a6;
  *&v23[8] = a7;
  v12 = [a1 count];
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v12];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = [a1 countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(a1);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        if (FigCFDictionaryGetCGRectIfPresent())
        {
          v30.origin.x = FigCaptureTransformRectToCoordinateSpaceOfRect(0.0, 0.0, 0.0, 0.0, a2, a3, a4);
          width = v30.size.width;
          height = v30.size.height;
          v31 = CGRectIntersection(v30, *v23);
          if (v31.size.width * v31.size.height > width * height * 0.5)
          {
            v21 = [v18 mutableCopy];
            FigCFDictionarySetCGRect();
            if (FigCFDictionaryGetCGRectIfPresent())
            {
              FigCaptureTransformRectToCoordinateSpaceOfRect(0.0, 0.0, 0.0, 0.0, a2, a3, a4);
              FigCFDictionarySetCGRect();
            }

            if (FigCFDictionaryGetCGRectIfPresent())
            {
              FigCaptureTransformRectToCoordinateSpaceOfRect(0.0, 0.0, 0.0, 0.0, a2, a3, a4);
              FigCFDictionarySetCGRect();
            }

            [v13 addObject:v21];
          }
        }
      }

      v15 = [a1 countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v15);
  }

  return v13;
}

uint64_t BWCorrectRectanglesInDetectedObjectsInfo(void *a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [a1 allKeys];
  result = [obj countByEnumeratingWithState:&v42 objects:v41 count:16];
  v33 = result;
  if (result)
  {
    v32 = *v43;
    v31 = *off_1E798ACE8;
    v18 = *off_1E798ACB8;
    v30 = *off_1E798ACD8;
    v28 = *off_1E798C2F8;
    do
    {
      v19 = 0;
      do
      {
        if (*v43 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v35 = v19;
        v20 = *(*(&v42 + 1) + 8 * v19);
        v21 = [objc_msgSend(a1 objectForKeyedSubscript:{v20), "objectForKeyedSubscript:", v31}];
        v22 = [MEMORY[0x1E695DF70] array];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v23 = [v21 countByEnumeratingWithState:&v37 objects:v36 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v38;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v38 != v25)
              {
                objc_enumerationMutation(v21);
              }

              v27 = *(*(&v37 + 1) + 8 * i);
              if (correctRectangleInDictionaryForKey(a2, a3, a4, a5, a6, a7, a8, a9))
              {
                if ([v20 isEqualToString:v18])
                {
                  correctRectangleInDictionaryForKey(a2, a3, a4, a5, a6, a7, a8, a9);
                  correctRectangleInDictionaryForKey(a2, a3, a4, a5, a6, a7, a8, a9);
                }
              }

              else
              {
                [v22 addObject:v27];
              }
            }

            v24 = [v21 countByEnumeratingWithState:&v37 objects:v36 count:16];
          }

          while (v24);
        }

        if ([v22 count])
        {
          [v21 removeObjectsInArray:v22];
        }

        if ([v20 isEqualToString:v30] && objc_msgSend(objc_msgSend(a1, "objectForKeyedSubscript:", v20), "objectForKeyedSubscript:", v28) && (correctRectangleInDictionaryForKey(a2, a3, a4, a5, a6, a7, a8, a9) & 1) == 0)
        {
          [a1 removeObjectForKey:v20];
        }

        v19 = v35 + 1;
      }

      while (v35 + 1 != v33);
      result = [obj countByEnumeratingWithState:&v42 objects:v41 count:16];
      v33 = result;
    }

    while (result);
  }

  return result;
}

uint64_t correctRectangleInDictionaryForKey(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  result = FigCFDictionaryGetCGRectIfPresent();
  if (result)
  {
    v18.origin.x = FigCaptureTransformRectToCoordinateSpaceOfRect(0.0, 0.0, 0.0, 0.0, a1, a2, a3);
    width = v18.size.width;
    height = v18.size.height;
    v20.origin.x = a5;
    v20.origin.y = a6;
    v20.size.width = a7;
    v20.size.height = a8;
    v19 = CGRectIntersection(v18, v20);
    if (v19.size.width * v19.size.height <= width * height * 0.5)
    {
      return 0;
    }

    else
    {
      FigCFDictionarySetCGRect();
      return 1;
    }
  }

  return result;
}

void *BWCreateTransformedFacesArray(void *a1, _OWORD *a2, int a3, int a4)
{
  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v6 = *(MEMORY[0x1E695F058] + 16);
  v23.origin = *MEMORY[0x1E695F058];
  v23.size = v6;
  v22.origin = v23.origin;
  v22.size = v6;
  v21.origin = v23.origin;
  v21.size = v6;
  v20 = 0;
  v19 = 0;
  if ([a1 count])
  {
    v7 = 0;
    do
    {
      [a1 objectAtIndexedSubscript:v7];
      if (FigCFDictionaryGetCGRectIfPresent())
      {
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        v9 = a2[1];
        *&v18.a = *a2;
        *&v18.c = v9;
        *&v18.tx = a2[2];
        CGRectApplyAffineTransform(v23, &v18);
        FigCFDictionarySetCGRect();
        if (FigCFDictionaryGetCGRectIfPresent())
        {
          v10 = a2[1];
          *&v18.a = *a2;
          *&v18.c = v10;
          *&v18.tx = a2[2];
          CGRectApplyAffineTransform(v22, &v18);
          FigCFDictionarySetCGRect();
        }

        if (FigCFDictionaryGetCGRectIfPresent())
        {
          v11 = a2[1];
          *&v18.a = *a2;
          *&v18.c = v11;
          *&v18.tx = a2[2];
          CGRectApplyAffineTransform(v21, &v18);
          FigCFDictionarySetCGRect();
        }

        if (FigCFDictionaryGetInt32IfPresent())
        {
          v12 = HIDWORD(v20);
          if (a4)
          {
            v12 = -HIDWORD(v20);
          }

          FigCaptureNormalizeAngle(v12 + a3);
          FigCFDictionarySetInt32();
        }

        if (FigCFDictionaryGetInt32IfPresent())
        {
          if (a4)
          {
            v13 = -v20;
          }

          else
          {
            v13 = v20;
          }

          FigCaptureNormalizeAngle(v13);
          FigCFDictionarySetInt32();
        }

        if (FigCFDictionaryGetInt32IfPresent())
        {
          FigCaptureNormalizeAngle(v19);
          FigCFDictionarySetInt32();
        }

        [v16 addObject:MutableCopy];
        CFRelease(MutableCopy);
      }

      ++v7;
    }

    while ([a1 count] > v7);
  }

  return v16;
}

void *BWCreateCorrectedDetectedObjectsArray(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  *&v24[16] = a8;
  *&v24[24] = a9;
  *v24 = a6;
  *&v24[8] = a7;
  v12 = [a1 count];
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v12];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = [a1 countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(a1);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        if (FigCFDictionaryGetCGRectIfPresent())
        {
          v30.origin.x = FigCaptureTransformRectToCoordinateSpaceOfRect(0.0, 0.0, 0.0, 0.0, a2, a3, a4);
          width = v30.size.width;
          height = v30.size.height;
          v31 = CGRectIntersection(v30, *v24);
          if (v31.size.width * v31.size.height > width * height * 0.5)
          {
            v21 = [v18 mutableCopy];
            FigCFDictionarySetCGRect();
            [v13 addObject:v21];
          }
        }
      }

      v15 = [a1 countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v15);
  }

  return v13;
}

uint64_t BWCreateSampleBufferFromSemanticMasksDictionary(void *a1, CMTime *a2, const void *a3, void *a4)
{
  v35[0] = 0;
  *a4 = 0;
  if (!a1)
  {
    BWCreateSampleBufferFromSemanticMasksDictionary_cold_3();
    return 4294954516;
  }

  v34 = *a2;
  v7 = mscsnu_createSampleBufferWithPTS(&v34, v35);
  if (v7)
  {
    v21 = v7;
    BWCreateSampleBufferFromSemanticMasksDictionary_cold_1(v7, v35, &v34);
    value = v34.value;
    if (!v34.value)
    {
      return v21;
    }

    goto LABEL_23;
  }

  v23 = a4;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v25 = *off_1E798B540;
  [v8 setObject:a3 forKeyedSubscript:?];
  value = v35[0];
  v10 = *off_1E798A3C8;
  CMSetAttachment(v35[0], *off_1E798A3C8, v8, 1u);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = [a1 countByEnumeratingWithState:&v30 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    allocator = *MEMORY[0x1E695E480];
LABEL_5:
    v14 = 0;
    while (1)
    {
      if (*v31 != v13)
      {
        objc_enumerationMutation(a1);
      }

      v15 = *(*(&v30 + 1) + 8 * v14);
      target = 0;
      v16 = [a1 objectForKeyedSubscript:v15];
      cf = 0;
      v34 = *a2;
      v17 = BWSampleBufferCreateFromPixelBuffer(v16, &v34, &cf, &target);
      if (v17)
      {
        break;
      }

      v18 = CVBufferCopyAttachment(v16, v10, 0);
      if (v18)
      {
        v19 = CFAutorelease(v18);
        if (v19)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(allocator, 0, v19);
          CFDictionarySetValue(MutableCopy, v25, a3);
          CMSetAttachment(target, v10, MutableCopy, 1u);
          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

          CMRemoveAttachment(v16, v10);
        }
      }

      BWSampleBufferSetAttachedMedia(value, v15, target);
      if (target)
      {
        CFRelease(target);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v12 == ++v14)
      {
        v12 = [a1 countByEnumeratingWithState:&v30 objects:v29 count:16];
        if (v12)
        {
          goto LABEL_5;
        }

        goto LABEL_20;
      }
    }

    v21 = v17;
    BWCreateSampleBufferFromSemanticMasksDictionary_cold_2();
    if (!value)
    {
      return v21;
    }

LABEL_23:
    CFRelease(value);
    return v21;
  }

LABEL_20:
  v21 = 0;
  *v23 = value;
  return v21;
}

uint64_t mscsnu_createSampleBufferWithPTS(CMTime *a1, void *a2)
{
  v8 = 0;
  *&sampleTimingArray.duration.value = *MEMORY[0x1E6960C70];
  sampleTimingArray.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
  sampleTimingArray.presentationTimeStamp = *a1;
  sampleTimingArray.decodeTimeStamp = sampleTimingArray.duration;
  v3 = CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 1, &sampleTimingArray, 0, 0, &v8);
  v4 = v8;
  if (!v3)
  {
    if (v8)
    {
      v5 = CFRetain(v8);
      v4 = v8;
    }

    else
    {
      v5 = 0;
    }

    *a2 = v5;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v3;
}

uint64_t BWCreateSampleBufferWithDetectedObjectsInfo(uint64_t a1, CMTime *a2, uint64_t a3, void *a4)
{
  v11 = *a2;
  target = 0;
  v7 = mscsnu_createSampleBufferWithPTS(&v11, &target);
  if (v7)
  {
    BWCreateSampleBufferWithDetectedObjectsInfo_cold_1();
  }

  else
  {
    v8 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a3];
    [v8 setObject:a1 forKeyedSubscript:*off_1E798B220];
    v9 = target;
    CMSetAttachment(target, *off_1E798A3C8, v8, 1u);
    *a4 = v9;
  }

  return v7;
}

uint64_t BWCreateSampleBufferWithEyeReliefResultDictionary(const void *a1, CMTime *a2, const void *a3, void *a4)
{
  v10 = *a2;
  target = 0;
  v7 = mscsnu_createSampleBufferWithPTS(&v10, &target);
  if (v7)
  {
    BWCreateSampleBufferWithEyeReliefResultDictionary_cold_1();
  }

  else
  {
    v8 = target;
    CMSetAttachment(target, *off_1E798A368, a1, 1u);
    CMSetAttachment(v8, *off_1E798A3C8, a3, 1u);
    *a4 = v8;
  }

  return v7;
}

uint64_t BWCreateSampleBufferWithTrackedFacesDictionary(const void *a1, CMTime *a2, const void *a3, void *a4)
{
  v10 = *a2;
  target = 0;
  v7 = mscsnu_createSampleBufferWithPTS(&v10, &target);
  if (v7)
  {
    BWCreateSampleBufferWithTrackedFacesDictionary_cold_1();
  }

  else
  {
    v8 = target;
    CMSetAttachment(target, *off_1E798A510, a1, 1u);
    CMSetAttachment(v8, *off_1E798A3C8, a3, 1u);
    *a4 = v8;
  }

  return v7;
}

uint64_t BWCreateSampleBufferWithFaceIDReadinessDictionary(const void *a1, CMTime *a2, const void *a3, void *a4)
{
  v10 = *a2;
  target = 0;
  v7 = mscsnu_createSampleBufferWithPTS(&v10, &target);
  if (v7)
  {
    BWCreateSampleBufferWithFaceIDReadinessDictionary_cold_1();
  }

  else
  {
    v8 = target;
    CMSetAttachment(target, *off_1E798A370, a1, 1u);
    CMSetAttachment(v8, *off_1E798A3C8, a3, 1u);
    *a4 = v8;
  }

  return v7;
}

uint64_t BWCreateSampleBufferWithMotionToWakeDictionary(const void *a1, CMTime *a2, const void *a3, void *a4)
{
  v10 = *a2;
  target = 0;
  v7 = mscsnu_createSampleBufferWithPTS(&v10, &target);
  if (v7)
  {
    BWCreateSampleBufferWithMotionToWakeDictionary_cold_1();
  }

  else
  {
    v8 = target;
    CMSetAttachment(target, *off_1E798A3D0, a1, 1u);
    CMSetAttachment(v8, *off_1E798A3C8, a3, 1u);
    *a4 = v8;
  }

  return v7;
}

BOOL BWIsStillImageSampleBuffer(const void *a1, _BYTE *a2)
{
  v3 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  v4 = v3;
  if (a2)
  {
    *a2 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  if (![objc_msgSend(v3 objectForKeyedSubscript:{*off_1E798B558), "BOOLValue"}])
  {
    return [objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798B1B8), "intValue"}] || (objc_msgSend(objc_msgSend(v4, "objectForKeyedSubscript:", *off_1E798B350), "BOOLValue") & 1) != 0;
  }

  result = 1;
  if (a2)
  {
    *a2 = 1;
  }

  return result;
}

void dmc_removeAttachmentFromPixelBufferIfPrivate(const __CFString *cf2, uint64_t a2, const void *a3)
{
  v5 = 0;
  v6 = *MEMORY[0x1E6965D88];
  v12[0] = *MEMORY[0x1E6965D00];
  v12[1] = v6;
  v7 = *MEMORY[0x1E6966198];
  v12[2] = *MEMORY[0x1E6965F98];
  v12[3] = v7;
  v8 = *MEMORY[0x1E69661D8];
  v12[4] = *MEMORY[0x1E69661E0];
  v12[5] = v8;
  v9 = *MEMORY[0x1E69661D0];
  v12[6] = *MEMORY[0x1E69661C8];
  v12[7] = v9;
  v10 = *MEMORY[0x1E69661B8];
  v12[8] = *MEMORY[0x1E69661A8];
  v12[9] = v10;
  v11 = *MEMORY[0x1E69661F8];
  v12[10] = *MEMORY[0x1E69661A0];
  v12[11] = v11;
  v12[12] = *MEMORY[0x1E6965F30];
  while (!CFEqual(v12[v5], cf2))
  {
    if (++v5 == 13)
    {

      CMRemoveAttachment(a3, cf2);
      return;
    }
  }
}

uint64_t bweis_storageTypeLengthInBytes(int a1)
{
  result = 4;
  if (a1 <= 131079)
  {
    if (a1 == 65552)
    {
      return 2;
    }

    if (a1 != 65568)
    {
      return 0;
    }
  }

  else
  {
    if (a1 == 131080)
    {
      return 1;
    }

    if (a1 != 131104)
    {
      return a1 == 262152;
    }
  }

  return result;
}

uint64_t bweis_storageLengthInBytes(uint64_t a1)
{
  v1 = *(a1 + 160);
  v2 = 4;
  if (v1 <= 131079)
  {
    if (v1 == 65552)
    {
      v2 = 2;
      return *(a1 + 104) * *(a1 + 112) * *(a1 + 96) * *(a1 + 88) * *(a1 + 80) * v2;
    }

    if (v1 != 65568)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v1 == 131080)
    {
LABEL_5:
      v2 = 1;
      return *(a1 + 104) * *(a1 + 112) * *(a1 + 96) * *(a1 + 88) * *(a1 + 80) * v2;
    }

    if (v1 != 131104)
    {
      if (v1 == 262152)
      {
        goto LABEL_5;
      }

LABEL_8:
      v2 = 0;
    }
  }

  return *(a1 + 104) * *(a1 + 112) * *(a1 + 96) * *(a1 + 88) * *(a1 + 80) * v2;
}

void sub_1ACAE0CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_1ACAE0FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACAE1964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t CMIOExtensionFigCaptureDeviceCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ([*(DerivedStorage + 40) objectForKey:a2])
  {
    if (FigCFEqual())
    {
      v7 = *(DerivedStorage + 40);
      if (v7)
      {
LABEL_16:
        v7 = CFRetain(v7);
      }
    }

    else if (FigCFEqual())
    {
      v7 = [*(DerivedStorage + 8) copy];
    }

    else if (FigCFEqual())
    {
      v7 = *(DerivedStorage + 32);
      if (v7)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (!FigCFEqual())
      {
        if (FigCFEqual())
        {
          v21 = 0;
          v22 = &v21;
          v23 = 0x3052000000;
          v24 = __Block_byref_object_copy__24;
          v25 = __Block_byref_object_dispose__24;
          v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
          dispatch_assert_queue_not_V2(*(DerivedStorage + 48));
          v10 = *(DerivedStorage + 48);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __CMIOExtensionFigCaptureDeviceCopyProperty_block_invoke;
          block[3] = &unk_1E798FC10;
          block[4] = &v21;
          block[5] = DerivedStorage;
          dispatch_async_and_wait(v10, block);
          *a4 = *(v22 + 5);
        }

        else
        {
          v11 = cmioefcd_cmioExtensionPropertyForDevicePropertyKey(a2);
          if (v11)
          {
            v12 = v11;
          }

          else
          {
            v12 = a2;
          }

          dispatch_assert_queue_not_V2(*(DerivedStorage + 48));
          v21 = 0;
          v22 = &v21;
          v23 = 0x2020000000;
          LOBYTE(v24) = 1;
          v13 = dispatch_semaphore_create(0);
          v14 = objc_alloc(MEMORY[0x1E695DFD8]);
          v19 = v12;
          v15 = [v14 initWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v19, 1)}];
          v16 = *(DerivedStorage + 48);
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __CMIOExtensionFigCaptureDeviceCopyProperty_block_invoke_4;
          v18[3] = &unk_1E7998278;
          v18[8] = DerivedStorage;
          v18[9] = v12;
          v18[6] = &v21;
          v18[7] = &v27;
          v18[10] = a4;
          v18[4] = v15;
          v18[5] = v13;
          dispatch_async(v16, v18);
          v17 = dispatch_time(0, 5000000000);
          dispatch_semaphore_wait(v13, v17);
          atomic_store(0, v22 + 24);
        }

        _Block_object_dispose(&v21, 8);
        goto LABEL_9;
      }

      v7 = *DerivedStorage;
      if (*DerivedStorage)
      {
        goto LABEL_16;
      }
    }

    *a4 = v7;
LABEL_9:
    v8 = *(v28 + 6);
    goto LABEL_10;
  }

  v8 = 4294954509;
LABEL_10:
  _Block_object_dispose(&v27, 8);
  return v8;
}

void sub_1ACAE363C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t CMIOExtensionFigCaptureDeviceSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ([*(DerivedStorage + 40) objectForKey:a2])
  {
    v6 = cmioefcd_cmioExtensionPropertyForDevicePropertyKey(a2);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = a2;
    }

    if ([objc_msgSend(*(DerivedStorage + 16) "availableProperties")])
    {
      v27 = v7;
      v28 = a3;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v26 = 1;
      v9 = dispatch_semaphore_create(0);
      v10 = *(DerivedStorage + 16);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __CMIOExtensionFigCaptureDeviceSetProperty_block_invoke;
      v22[3] = &unk_1E79982A0;
      v22[5] = &v29;
      v22[6] = &v23;
      v22[4] = v9;
      [v10 setPropertyValues:v8 reply:v22];
      v11 = dispatch_time(0, 5000000000);
      dispatch_semaphore_wait(v9, v11);
      atomic_store(0, v24 + 24);
    }

    else
    {
      if (![objc_msgSend(*(DerivedStorage + 16) "streams")])
      {
LABEL_15:
        v12 = *(v30 + 6);
        goto LABEL_16;
      }

      v13 = dispatch_semaphore_create(0);
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v26 = 1;
      v14 = [objc_msgSend(*(DerivedStorage + 16) "streams")];
      if ([objc_msgSend(v14 "availableProperties")])
      {
        v20 = v7;
        v21 = a3;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __CMIOExtensionFigCaptureDeviceSetProperty_block_invoke_2;
        v19[3] = &unk_1E79982A0;
        v19[5] = &v29;
        v19[6] = &v23;
        v19[4] = v13;
        [v14 setPropertyValues:v15 reply:v19];
      }

      else
      {
        v16 = atomic_load(v24 + 24);
        if (v16)
        {
          dispatch_semaphore_signal(v13);
        }
      }

      v17 = dispatch_time(0, 5000000000);
      dispatch_semaphore_wait(v13, v17);
      atomic_store(0, v24 + 24);
    }

    _Block_object_dispose(&v23, 8);
    goto LABEL_15;
  }

  v12 = 4294954509;
LABEL_16:
  _Block_object_dispose(&v29, 8);
  return v12;
}

void sub_1ACAE3928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

void __CMIOExtensionFigCaptureDeviceCopyProperty_block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  if ([*(*(a1 + 40) + 16) availableProperties])
  {
    dispatch_group_enter(v2);
  }

  if ([objc_msgSend(*(*(a1 + 40) + 16) "streams")])
  {
    v3 = [objc_msgSend(*(*(a1 + 40) + 16) "streams")];
    if ([v3 availableProperties])
    {
      dispatch_group_enter(v2);
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = *(*(a1 + 40) + 16);
  v5 = [v4 availableProperties];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __CMIOExtensionFigCaptureDeviceCopyProperty_block_invoke_2;
  v11[3] = &unk_1E7998228;
  v6 = *(a1 + 32);
  v11[5] = &v12;
  v11[6] = v6;
  v11[4] = v2;
  [v4 propertyStatesForProperties:v5 reply:v11];
  if (v3)
  {
    v7 = [v3 availableProperties];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __CMIOExtensionFigCaptureDeviceCopyProperty_block_invoke_3;
    v10[3] = &unk_1E7998228;
    v8 = *(a1 + 32);
    v10[5] = &v12;
    v10[6] = v8;
    v10[4] = v2;
    [v3 propertyStatesForProperties:v7 reply:v10];
  }

  v9 = dispatch_time(0, 5000000000);
  dispatch_group_wait(v2, v9);
  atomic_store(0, v13 + 24);

  _Block_object_dispose(&v12, 8);
}

void __CMIOExtensionFigCaptureDeviceCopyProperty_block_invoke_2(void *a1, void *a2)
{
  v2 = atomic_load((*(a1[5] + 8) + 24));
  if (v2)
  {
    cmioefcd_addSupportedPropertiesWithValue(a2, *(*(a1[6] + 8) + 40));
    v4 = a1[4];

    dispatch_group_leave(v4);
  }
}

uint64_t cmioefcd_addSupportedPropertiesWithValue(void *a1, void *a2)
{
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [a1 allKeys];
  result = [obj countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v22;
    v7 = *off_1E798B838;
    v19 = *off_1E798B848;
    v8 = *off_1E798B830;
    v16 = *off_1E798B820;
    v17 = *off_1E798B828;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        v11 = [a1 objectForKeyedSubscript:{v10, v16}];
        v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v12 setObject:v10 forKeyedSubscript:v7];
        if ([v11 value])
        {
          [v12 setObject:objc_msgSend(v11 forKeyedSubscript:{"value"), v19}];
        }

        if (![v11 attributes])
        {
          v14 = v12;
          v13 = MEMORY[0x1E695E118];
          v15 = v8;
          goto LABEL_14;
        }

        [v12 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", objc_msgSend(objc_msgSend(v11, "attributes"), "isReadOnly")), v8}];
        if ([objc_msgSend(v11 "attributes")])
        {
          [v12 setObject:objc_msgSend(objc_msgSend(v11 forKeyedSubscript:{"attributes"), "minValue"), v17}];
        }

        if ([objc_msgSend(v11 "attributes")])
        {
          v13 = [objc_msgSend(v11 "attributes")];
          v14 = v12;
          v15 = v16;
LABEL_14:
          [v14 setObject:v13 forKeyedSubscript:v15];
        }

        [a2 addObject:v12];
        ++v9;
      }

      while (v5 != v9);
      result = [obj countByEnumeratingWithState:&v21 objects:v20 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

void __CMIOExtensionFigCaptureDeviceCopyProperty_block_invoke_3(void *a1, void *a2)
{
  v2 = atomic_load((*(a1[5] + 8) + 24));
  if (v2)
  {
    cmioefcd_addSupportedPropertiesWithValue(a2, *(*(a1[6] + 8) + 40));
    v4 = a1[4];

    dispatch_group_leave(v4);
  }
}

uint64_t cmioefcd_cmioExtensionPropertyForDevicePropertyKey(uint64_t a1)
{
  if (cmioefcd_cmioExtensionPropertyForDevicePropertyKey_onceToken != -1)
  {
    cmioefcd_cmioExtensionPropertyForDevicePropertyKey_cold_1();
    if (a1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!a1)
  {
    return 0;
  }

LABEL_3:
  v2 = cmioefcd_cmioExtensionPropertyForDevicePropertyKey_sDevicePropertyKeysToCMIOExtensionProperties;

  return [v2 objectForKeyedSubscript:a1];
}

intptr_t __CMIOExtensionFigCaptureDeviceCopyProperty_block_invoke_4(uint64_t a1)
{
  v2 = [objc_msgSend(*(*(a1 + 64) + 16) "availableProperties")];
  v3 = *(*(a1 + 64) + 16);
  if (v2)
  {
    v4 = *(a1 + 32);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __CMIOExtensionFigCaptureDeviceCopyProperty_block_invoke_5;
    v20 = &unk_1E7998250;
    v22 = *(a1 + 56);
    v23 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
    v21 = *(a1 + 40);
    v5 = &v17;
    return [v3 propertyStatesForProperties:v4 reply:{v5, v10, v11, v12, v13, v14, v15, *&v16, v17, v18, v19, v20, v21, v22, *&v23}];
  }

  result = [objc_msgSend(v3 "streams")];
  if (result)
  {
    v7 = [objc_msgSend(*(*(a1 + 64) + 16) "streams")];
    result = [objc_msgSend(v7 "availableProperties")];
    if (result)
    {
      v4 = *(a1 + 32);
      v10 = MEMORY[0x1E69E9820];
      v11 = 3221225472;
      v12 = __CMIOExtensionFigCaptureDeviceCopyProperty_block_invoke_6;
      v13 = &unk_1E7998250;
      v15 = *(a1 + 56);
      v16 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
      v14 = *(a1 + 40);
      v5 = &v10;
      v3 = v7;
      return [v3 propertyStatesForProperties:v4 reply:{v5, v10, v11, v12, v13, v14, v15, *&v16, v17, v18, v19, v20, v21, v22, *&v23}];
    }
  }

  v8 = atomic_load((*(*(a1 + 48) + 8) + 24));
  if (v8)
  {
    v9 = *(a1 + 40);

    return dispatch_semaphore_signal(v9);
  }

  return result;
}

intptr_t __CMIOExtensionFigCaptureDeviceCopyProperty_block_invoke_5(intptr_t result, void *a2, void *a3)
{
  v3 = atomic_load((*(*(result + 40) + 8) + 24));
  if (v3)
  {
    v5 = result;
    *(*(*(result + 48) + 8) + 24) = [a3 code];
    v6 = [objc_msgSend(a2 objectForKeyedSubscript:{*(v5 + 64)), "value"}];
    if (v6)
    {
      v6 = CFRetain(v6);
    }

    **(v5 + 56) = v6;
    v7 = *(v5 + 32);

    return dispatch_semaphore_signal(v7);
  }

  return result;
}

intptr_t __CMIOExtensionFigCaptureDeviceCopyProperty_block_invoke_6(intptr_t result, void *a2, void *a3)
{
  v3 = atomic_load((*(*(result + 40) + 8) + 24));
  if (v3)
  {
    v5 = result;
    *(*(*(result + 48) + 8) + 24) = [a3 code];
    v6 = [objc_msgSend(a2 objectForKeyedSubscript:{*(v5 + 64)), "value"}];
    if (v6)
    {
      v6 = CFRetain(v6);
    }

    **(v5 + 56) = v6;
    v7 = *(v5 + 32);

    return dispatch_semaphore_signal(v7);
  }

  return result;
}

uint64_t __cmioefcd_cmioExtensionPropertyForDevicePropertyKey_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  v1 = *off_1E798A000;
  v2 = *off_1E798A020;
  v3 = *off_1E7989FF8;
  v4 = *off_1E7989FD0;
  v5 = CMIOExtensionPropertyFromPropertyAddress();
  result = [v0 initWithObjectsAndKeys:{@"CMIOExtensionPropertyDeviceHidden", v1, @"CMIOExtensionPropertyDeviceReadyToUnhide", v2, @"CMIOExtensionPropertyRapportDeviceUniqueID", v3, @"DockedTrackingActive", v4, v5, *off_1E7989FC8, CMIOExtensionPropertyFromPropertyAddress(), *off_1E7989FC0, 0}];
  cmioefcd_cmioExtensionPropertyForDevicePropertyKey_sDevicePropertyKeysToCMIOExtensionProperties = result;
  return result;
}

intptr_t __CMIOExtensionFigCaptureDeviceSetProperty_block_invoke(void *a1, void *a2)
{
  result = [a2 code];
  *(*(a1[5] + 8) + 24) = result;
  v4 = atomic_load((*(a1[6] + 8) + 24));
  if (v4)
  {
    v5 = a1[4];

    return dispatch_semaphore_signal(v5);
  }

  return result;
}

intptr_t __CMIOExtensionFigCaptureDeviceSetProperty_block_invoke_2(void *a1, void *a2)
{
  result = [a2 code];
  *(*(a1[5] + 8) + 24) = result;
  v4 = atomic_load((*(a1[6] + 8) + 24));
  if (v4)
  {
    v5 = a1[4];

    return dispatch_semaphore_signal(v5);
  }

  return result;
}

void __cmioefcd_copySupportedPropertiesDict_block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  if ([*(*(a1 + 40) + 16) availableProperties])
  {
    dispatch_group_enter(v2);
  }

  if ([objc_msgSend(*(*(a1 + 40) + 16) "streams")])
  {
    v3 = [objc_msgSend(*(*(a1 + 40) + 16) "streams")];
    if ([v3 availableProperties])
    {
      dispatch_group_enter(v2);
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = *(*(a1 + 40) + 16);
  v5 = [v4 availableProperties];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __cmioefcd_copySupportedPropertiesDict_block_invoke_2;
  v9[3] = &unk_1E79982C8;
  v9[5] = v2;
  v9[6] = &v10;
  v9[4] = *(a1 + 32);
  [v4 propertyStatesForProperties:v5 reply:v9];
  if (v3)
  {
    v6 = [v3 availableProperties];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __cmioefcd_copySupportedPropertiesDict_block_invoke_3;
    v8[3] = &unk_1E79982C8;
    v8[5] = v2;
    v8[6] = &v10;
    v8[4] = *(a1 + 32);
    [v3 propertyStatesForProperties:v6 reply:v8];
  }

  v7 = dispatch_time(0, 5000000000);
  dispatch_group_wait(v2, v7);
  atomic_store(0, v11 + 24);

  _Block_object_dispose(&v10, 8);
}

void __cmioefcd_copySupportedPropertiesDict_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = atomic_load((*(*(a1 + 48) + 8) + 24));
  if (v2)
  {
    cmioefcd_addSupportedProperty(a2, *(a1 + 32));
    v4 = *(a1 + 40);

    dispatch_group_leave(v4);
  }
}

uint64_t cmioefcd_addSupportedProperty(void *a1, void *a2)
{
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [a1 allKeys];
  result = [obj countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v23;
    v5 = *off_1E798A160;
    v15 = *off_1E798A178;
    v6 = *off_1E798A140;
    v7 = *off_1E798A148;
    v8 = *off_1E798A150;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        v11 = [a1 objectForKeyedSubscript:{v10, v15}];
        v19[0] = v5;
        if (cmioefcd_devicePropertyTypeForCMIOExtensionProperty_onceToken != -1)
        {
          cmioefcd_addSupportedProperty_cold_1();
        }

        if ([cmioefcd_devicePropertyTypeForCMIOExtensionProperty_sDevicePropertyTypeByCMIOExtensionPropertyNames objectForKeyedSubscript:v10])
        {
          v12 = [cmioefcd_devicePropertyTypeForCMIOExtensionProperty_sDevicePropertyTypeByCMIOExtensionPropertyNames objectForKeyedSubscript:v10];
        }

        else if (v10)
        {
          v12 = v15;
        }

        else
        {
          v12 = 0;
        }

        v19[1] = v6;
        v20[0] = v12;
        if ([objc_msgSend(v11 "attributes")])
        {
          v13 = v7;
        }

        else
        {
          v13 = v8;
        }

        v20[1] = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
        if (cmioefcd_devicePropertyKeyForCMIOExtensionProperty_onceToken != -1)
        {
          cmioefcd_addSupportedProperty_cold_2();
        }

        if ([cmioefcd_devicePropertyKeyForCMIOExtensionProperty_sDevicePropertyKeysByCMIOExtensionPropertyNames objectForKeyedSubscript:v10])
        {
          v10 = [cmioefcd_devicePropertyKeyForCMIOExtensionProperty_sDevicePropertyKeysByCMIOExtensionPropertyNames objectForKeyedSubscript:v10];
        }

        [a2 setObject:v14 forKeyedSubscript:v10];
        ++v9;
      }

      while (v3 != v9);
      result = [obj countByEnumeratingWithState:&v22 objects:v21 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

void __cmioefcd_copySupportedPropertiesDict_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = atomic_load((*(*(a1 + 48) + 8) + 24));
  if (v2)
  {
    cmioefcd_addSupportedProperty(a2, *(a1 + 32));
    v4 = *(a1 + 40);

    dispatch_group_leave(v4);
  }
}

uint64_t __cmioefcd_devicePropertyTypeForCMIOExtensionProperty_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  result = [v0 initWithObjectsAndKeys:{*MEMORY[0x1E6963420], *off_1E798A168, @"CMIOExtensionPropertyRapportDeviceUniqueID", 0}];
  cmioefcd_devicePropertyTypeForCMIOExtensionProperty_sDevicePropertyTypeByCMIOExtensionPropertyNames = result;
  return result;
}

uint64_t __cmioefcd_devicePropertyKeyForCMIOExtensionProperty_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  result = [v0 initWithObjectsAndKeys:{*off_1E7989FD0, *MEMORY[0x1E6963420], *off_1E7989FF8, @"CMIOExtensionPropertyRapportDeviceUniqueID", 0}];
  cmioefcd_devicePropertyKeyForCMIOExtensionProperty_sDevicePropertyKeysByCMIOExtensionPropertyNames = result;
  return result;
}

uint64_t __cmioefcd_devicePropertyChangedNotificationForCMIOExtensionProperty_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  v1 = *off_1E7989FA0;
  v2 = *off_1E7989FA8;
  v3 = *off_1E7989F90;
  v4 = *off_1E7989F88;
  v5 = CMIOExtensionPropertyFromPropertyAddress();
  result = [v0 initWithObjectsAndKeys:{v1, @"CMIOExtensionPropertyDeviceHidden", v2, @"CMIOExtensionPropertyDeviceReadyToUnhide", v3, @"DockedTrackingActive", v4, v5, *off_1E7989F80, CMIOExtensionPropertyFromPropertyAddress(), 0}];
  cmioefcd_devicePropertyChangedNotificationForCMIOExtensionProperty_sCMIOExtensionPropertiesToDevicePropertyChangedNotifications = result;
  return result;
}

uint64_t FigFlashlightGetClassID()
{
  if (FigFlashlightGetClassID_onceToken != -1)
  {
    FigFlashlightGetClassID_cold_1();
  }

  return FigFlashlightGetClassID_sFigFlashlightClassID;
}

uint64_t __FigFlashlightGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x1EEDBC160](&sFigFlashlightClassDesc, ClassID, 1, &FigFlashlightGetClassID_sFigFlashlightClassID);
}

uint64_t csp_getCenterStageFramingMode(uint64_t a1)
{
  cf = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(a1, @"CenterStageFramingMode", *MEMORY[0x1E695E480], &cf);
    v3 = cf;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 intValue];
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t csp_getCinematicFramingFieldOfViewRestrictedToWide(uint64_t a1)
{
  v6 = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(a1, @"CenterStageFieldOfViewRestrictedToWide", *MEMORY[0x1E695E480], &v6);
    v3 = v6;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 BOOLValue];

  return v4;
}

BOOL csp_getCenterStageRectOfInterest(uint64_t a1)
{
  v5 = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(a1, @"CenterStageRectOfInterest", *MEMORY[0x1E695E480], &v5);
    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

  memset(&rect, 0, sizeof(rect));
  CGRectMakeWithDictionaryRepresentation(v3, &rect);

  result = CGRectEqualToRect(rect, *MEMORY[0x1E695F058]);
  if (!result)
  {
    return CGRectIsNull(rect);
  }

  return result;
}

uint64_t csp_enableAdaptiveOverscanByVideoStabilizationMethods(void *a1)
{
  result = [a1 count];
  if (result)
  {
    if ([a1 containsObject:&unk_1F2244908] & 1) != 0 || (objc_msgSend(a1, "containsObject:", &unk_1F22447B8))
    {
      return 0;
    }

    else
    {
      return [a1 containsObject:&unk_1F2244830] ^ 1;
    }
  }

  return result;
}

uint64_t csp_variableFrameRateVideoGain(void *a1)
{
  v1 = [a1 sensorIDDictionary];
  v2 = [objc_msgSend(objc_msgSend(v1 objectForKeyedSubscript:{@"VariableFrameRateVideoParameters", "objectForKeyedSubscript:", @"AEMaxGainForFrameRate", "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", 60)}];

  return [v2 floatValue];
}

void *csp_getVideoDataConfigurationFromConfigurations(void *a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [a1 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *v11;
LABEL_3:
  v5 = 0;
  while (1)
  {
    if (*v11 != v4)
    {
      objc_enumerationMutation(a1);
    }

    v6 = *(*(&v10 + 1) + 8 * v5);
    v7 = [v6 sinkConfiguration];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 sinkType] == 6)
    {
      return v6;
    }

    if (v3 == ++v5)
    {
      v3 = [a1 countByEnumeratingWithState:&v10 objects:v9 count:16];
      if (v3)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

uint64_t OUTLINED_FUNCTION_94_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{

  return [a10 countByEnumeratingWithState:a3 objects:a4 count:16];
}

BOOL OUTLINED_FUNCTION_95_5(uint64_t a1, int a2)
{

  return FigCaptureFrameRateNotEqual(v2, v3, a1, a2);
}

uint64_t captureStreamListener(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, __CFDictionary *Mutable)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 88))
  {
    return result;
  }

  v8 = result;
  result = CFEqual(a3, *off_1E798B870);
  if (!result)
  {
    return result;
  }

  if (Mutable)
  {
    v9 = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v9 = Mutable;
  }

  v10 = *(v8 + 84);
  if (v10 == 1)
  {
    v11 = @"FixedFocusPoints";
    goto LABEL_11;
  }

  if (v10 == 5)
  {
    v11 = @"FocusAtPoint";
LABEL_11:
    CFDictionaryAddValue(Mutable, @"FocusMode", v11);
  }

  v12 = *(v8 + 7664);
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v14 < 0 == v13)
  {
    *(v8 + 7664) = v14;
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  if (v9)
  {
    CFRelease(v9);
  }

  *(v8 + 81) = 0;

  return FigMemoryBarrier();
}

uint64_t FigSampleBufferAutofocusProcessorAddTimestampedMetadata(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMSampleBufferGetPresentationTimeStamp(&time, v4);
  Seconds = CMTimeGetSeconds(&time);
  FigSimpleMutexLock();
  v7 = (DerivedStorage + 17384);
  v8 = 20;
  while (*(v7 - 1) != Seconds)
  {
    v7 += 2;
    if (!--v8)
    {
      goto LABEL_6;
    }
  }

  v9 = *v7;
  if (*v7)
  {
LABEL_10:
    v12 = *off_1E7989DF8;
    v13 = [v9 objectForKeyedSubscript:*off_1E7989DF8];
    if ([v13 count])
    {
      v14 = CMGetAttachment(v4, *off_1E798A3C8, 0);
      v15 = *off_1E798C0E0;
      v16 = [v14 objectForKeyedSubscript:*off_1E798C0E0];
      v17 = [v9 objectForKeyedSubscript:v15];
      v18 = !v16 || v17 == 0;
      if (!v18 && ([v16 isEqualToString:v17] & 1) == 0)
      {
        CameraParametersForPortType = af_sbp_getCameraParametersForPortType();
        if (CameraParametersForPortType)
        {
          v20 = CameraParametersForPortType;
          v21 = af_sbp_getCameraParametersForPortType();
          if (v21)
          {
            v22 = *v20;
            if (*v20 > 0.0)
            {
              v23 = *v21;
              if (*v21 > 0.0)
              {
                v24 = [objc_msgSend(v13 objectAtIndexedSubscript:{0), "intValue"}];
                v25 = [objc_msgSend(v13 objectAtIndexedSubscript:{1), "intValue"}];
                v26 = [objc_msgSend(v13 objectAtIndexedSubscript:{2), "intValue"}];
                v27 = [objc_msgSend(v13 objectAtIndexedSubscript:{3), "intValue"}];
                v28 = (1000.0 - 1000.0 / (v22 / v23)) * 0.5;
                v29 = ((v22 / v23) * (v24 - v28));
                v30 = ((v22 / v23) * (v25 - v28));
                v31 = ((v22 / v23) * v26);
                v32 = ((v22 / v23) * v27);
                v33 = MEMORY[0x1E695DF70];
                v34 = [MEMORY[0x1E696AD98] numberWithShort:v29];
                v35 = [MEMORY[0x1E696AD98] numberWithShort:v30];
                v36 = [MEMORY[0x1E696AD98] numberWithShort:v31];
                v37 = [v33 arrayWithObjects:{v34, v35, v36, objc_msgSend(MEMORY[0x1E696AD98], "numberWithShort:", v32), 0}];
                v38 = [v9 mutableCopy];
                [v38 setObject:v37 forKeyedSubscript:v12];
LABEL_21:
                if (v38)
                {
                  v39 = v38;
                }

                else
                {
                  v39 = v9;
                }

                CFDictionaryApplyFunction(v39, insertKeyAndValue, v2);
                goto LABEL_25;
              }
            }

            FigSampleBufferAutofocusProcessorAddTimestampedMetadata_cold_1();
          }

          else
          {
            FigSampleBufferAutofocusProcessorAddTimestampedMetadata_cold_2();
          }
        }

        else
        {
          FigSampleBufferAutofocusProcessorAddTimestampedMetadata_cold_3();
        }
      }
    }

    v38 = 0;
    goto LABEL_21;
  }

LABEL_6:
  v10 = *(DerivedStorage + 17360);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 19;
  }

  v9 = *(DerivedStorage + 17376 + 16 * v11 + 8);
  if (v9)
  {
    goto LABEL_10;
  }

LABEL_25:
  v40 = CMBaseObjectGetDerivedStorage();
  v41 = v40;
  v42 = (v40 + 7538);
  if (*(v40 + 652))
  {
    v43 = (v40 + 7840);
    LOBYTE(time.value) = 0;
    v44 = 16;
    do
    {
      v45 = strlen(&time);
      if (v44 == 16)
      {
        v46 = "";
      }

      else
      {
        v46 = ", ";
      }

      v47 = *(v43 - 16);
      v48 = *v43++;
      snprintf(&time + v45, 0x2000 - v45, "%s(%lld, %lld)", v46, v47, v48);
      --v44;
    }

    while (v44);
    v49 = *MEMORY[0x1E695E480];
    v50 = CFStringCreateWithCString(*MEMORY[0x1E695E480], &time, 0x600u);
    CFDictionaryAddValue(v2, @"MatrixFocusBand", v50);
    CFRelease(v50);
    v51 = 0;
    v52 = *(v41 + 7704);
    do
    {
      if (v52 >= 1)
      {
        --v52;
      }

      else
      {
        v52 = 31;
      }

      snprintf(&time, 0x2000uLL, "MatrixScores%d", v51);
      v53 = CFStringCreateWithCString(v49, &time, 0x600u);
      v54 = *(v41 + 8032 + 8 * v52);
      if (v54)
      {
        CFDictionaryAddValue(v2, v53, v54);
      }

      CFRelease(v53);
      ++v51;
    }

    while (v51 != 8);
    LOBYTE(time.value) = 0;
    v55 = (v41 + 8300);
    v56 = 16;
    do
    {
      v57 = strlen(&time);
      snprintf(&time + v57, 0x2000 - v57, "(%.3f %.3f %.3f) ", *v55, v55[60], v55[120]);
      ++v55;
      --v56;
    }

    while (v56);
    v58 = strlen(&time);
    snprintf(&time + v58, 0x2000 - v58, "angle=%.3f", *(v41 + 9020));
    v59 = CFStringCreateWithCString(v49, &time, 0x600u);
    CFDictionaryAddValue(v2, @"MatrixAccelerometer", v59);
    CFRelease(v59);
    v60 = *(v41 + 8288);
    if (v60)
    {
      CFDictionaryAddValue(v2, @"FocusScanHistory", v60);
    }
  }

  if (v42[1555] == 1)
  {
    v61 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 13, MEMORY[0x1E695E9C0]);
    v63 = CFNumberCreate(v61, kCFNumberDoubleType, (v41 + 9096));
    CFArrayAppendValue(Mutable, v63);
    CFRelease(v63);
    v64 = (v41 + 9128);
    v65 = 7;
    do
    {
      v66 = CFNumberCreate(v61, kCFNumberDoubleType, v64);
      CFArrayAppendValue(Mutable, v66);
      CFRelease(v66);
      v64 += 8;
      --v65;
    }

    while (v65);
    v67 = CFNumberCreate(v61, kCFNumberDoubleType, (v41 + 16360));
    CFArrayAppendValue(Mutable, v67);
    CFRelease(v67);
    v68 = CFNumberCreate(v61, kCFNumberDoubleType, (v41 + 16368));
    CFArrayAppendValue(Mutable, v68);
    CFRelease(v68);
    *&time.value = *(v41 + 1788);
    v69 = CFNumberCreate(v61, kCFNumberDoubleType, &time);
    CFArrayAppendValue(Mutable, v69);
    CFRelease(v69);
    *&time.value = *(v41 + 1792);
    v70 = CFNumberCreate(v61, kCFNumberDoubleType, &time);
    CFArrayAppendValue(Mutable, v70);
    CFRelease(v70);
    v71 = CFNumberCreate(v61, kCFNumberShortType, (v41 + 17353));
    CFArrayAppendValue(Mutable, v71);
    CFRelease(v71);
    CFDictionaryAddValue(v2, @"HDRscene_debug", Mutable);
    CFRelease(Mutable);
    if (*v42 == 1)
    {
      v72 = 256;
      v73 = CFArrayCreateMutable(v61, 256, MEMORY[0x1E695E9C0]);
      v74 = (v41 + 10216);
      do
      {
        v75 = CFNumberCreate(v61, kCFNumberDoubleType, v74);
        CFArrayAppendValue(v73, v75);
        CFRelease(v75);
        v74 += 8;
        --v72;
      }

      while (v72);
      CFDictionaryAddValue(v2, @"HDRscene_histR", v73);
      CFRelease(v73);
      v76 = 256;
      v77 = CFArrayCreateMutable(v61, 256, MEMORY[0x1E695E9C0]);
      v78 = (v41 + 12264);
      do
      {
        v79 = CFNumberCreate(v61, kCFNumberDoubleType, v78);
        CFArrayAppendValue(v77, v79);
        CFRelease(v79);
        v78 += 8;
        --v76;
      }

      while (v76);
      CFDictionaryAddValue(v2, @"HDRscene_histG", v77);
      CFRelease(v77);
      v80 = 256;
      v81 = CFArrayCreateMutable(v61, 256, MEMORY[0x1E695E9C0]);
      v82 = (v41 + 14312);
      do
      {
        v83 = CFNumberCreate(v61, kCFNumberDoubleType, v82);
        CFArrayAppendValue(v81, v83);
        CFRelease(v83);
        v82 += 8;
        --v80;
      }

      while (v80);
      CFDictionaryAddValue(v2, @"HDRscene_histB", v81);
      CFRelease(v81);
    }
  }

  CFDictionaryRemoveValue(v2, *off_1E798B398);
  CFDictionaryRemoveValue(v2, *off_1E798B390);
  CFDictionaryRemoveValue(v2, *off_1E798B388);
  CFDictionaryRemoveValue(v2, *off_1E798B3A0);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 88))
  {
    return 0;
  }

  v4 = DerivedStorage;
  *(DerivedStorage + 88) = 1;
  v5 = *(DerivedStorage + 48);
  if (v5)
  {
    FigCoreMotionRelease(v5);
    *(v4 + 48) = 0;
  }

  FigImageControl_InvalidateExposure(a1);
  if (*(v4 + 7424) == 1)
  {
    v3 = [*(v4 + 8) sendCommandProperty:*off_1E798C250];
    *(v4 + 7424) = 0;
  }

  else
  {
    v3 = 0;
  }

  v6 = *(v4 + 64);
  if (v6)
  {
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v7)
    {
      v7(v6, 0, 0);
    }

    CFRelease(*(v4 + 64));
    *(v4 + 64) = 0;
  }

  if (*(v4 + 17368))
  {
    FigSimpleMutexLock();
    v8 = 0;
    v9 = v4 + 17384;
    do
    {
      v10 = *(v9 + v8);
      if (v10)
      {
        CFRelease(v10);
        *(v9 + v8) = 0;
      }

      v8 += 16;
    }

    while (v8 != 320);
    *(v4 + 17360) = 0;
    FigSimpleMutexUnlock();
    FigSimpleMutexDestroy();
    *(v4 + 17368) = 0;
  }

  setPropertiesOnStream();
  FigSimpleQueueRelease();
  *(v4 + 72) = 0;
  *v4 = 0;
  v11 = *(v4 + 8);
  if (v11)
  {
    v36 = v3;
    if (!*(v4 + 652))
    {
      [v11 unregisterForNotification:*off_1E798B870 listener:a1];
    }

    v12 = CMBaseObjectGetDerivedStorage();
    if (*(v12 + 7664) >= 1)
    {
      v13 = 0;
      v14 = MEMORY[0x1E695E9D8];
      v15 = MEMORY[0x1E695E9E8];
      v16 = *MEMORY[0x1E695E480];
      while (1)
      {
        Mutable = CFDictionaryCreateMutable(v16, 1, v14, v15);
        v18 = Mutable;
        v19 = *(v12 + 84);
        if (v19 == 1)
        {
          break;
        }

        if (v19 == 5)
        {
          v20 = @"FocusAtPoint";
LABEL_27:
          CFDictionaryAddValue(Mutable, @"FocusMode", v20);
        }

        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        CFRelease(v18);
        if (++v13 >= *(v12 + 7664))
        {
          goto LABEL_29;
        }
      }

      v20 = @"FixedFocusPoints";
      goto LABEL_27;
    }

LABEL_29:
    *(v12 + 7664) = 0;
    v21 = *(v4 + 8);
    v3 = v36;
    if (v21)
    {
      CFRelease(v21);
      *(v4 + 8) = 0;
    }
  }

  v22 = *(v4 + 16);
  if (v22)
  {
    CFRelease(v22);
    *(v4 + 16) = 0;
  }

  v23 = *(v4 + 24);
  if (v23)
  {
    CFRelease(v23);
    *(v4 + 24) = 0;
  }

  v24 = *(v4 + 32);
  if (v24)
  {
    CFRelease(v24);
    *(v4 + 32) = 0;
  }

  v25 = *(v4 + 680);
  if (v25)
  {
    CFRelease(v25);
    *(v4 + 680) = 0;
  }

  v26 = *(v4 + 9032);
  if (v26)
  {
    CFRelease(v26);
    *(v4 + 9032) = 0;
  }

  v27 = *(v4 + 9040);
  if (v27)
  {
    CFRelease(v27);
    *(v4 + 9040) = 0;
  }

  v28 = *(v4 + 7544);
  if (v28)
  {
    CFRelease(v28);
    *(v4 + 7544) = 0;
  }

  v29 = *(v4 + 8288);
  if (v29)
  {
    CFRelease(v29);
    *(v4 + 8288) = 0;
  }

  v30 = 0;
  v31 = v4 + 8032;
  do
  {
    v32 = *(v31 + v30);
    if (v32)
    {
      CFRelease(v32);
      *(v31 + v30) = 0;
    }

    v30 += 8;
  }

  while (v30 != 256);

  *(v4 + 9064) = 0;
  *(v4 + 9072) = 0;
  v33 = *(v4 + 6296);
  if (v33)
  {
    CFRelease(v33);
    *(v4 + 6296) = 0;
  }

  v34 = *(v4 + 6288);
  if (v34)
  {
    CFRelease(v34);
    *(v4 + 6288) = 0;
  }

  return v3;
}

__CFString *copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProcessor_Autofocus %p>", a1);
  return Mutable;
}

uint64_t setOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 88))
  {
    return 4294954511;
  }

  v7 = DerivedStorage;
  result = 0;
  *v7 = a2;
  v7[7] = a3;
  return result;
}

uint64_t finishPendingProcessing()
{
  if (*(CMBaseObjectGetDerivedStorage() + 88))
  {
    return 4294954511;
  }

  else
  {
    return 0;
  }
}

uint64_t pg_outOfBoundsCallback(uint64_t a1, uint64_t a2)
{
  v4 = +[FigPulseGenerator sharedFigPulseGenerator];
  v5 = [v4 delegate];

  return [v5 pulseGenerator:v4 updatedTriggerID:a1 withOutOfBoundsError:a2];
}

uint64_t pg_lockLostCallback(uint64_t a1, uint64_t a2)
{
  v4 = +[FigPulseGenerator sharedFigPulseGenerator];
  v5 = [v4 delegate];

  return [v5 pulseGenerator:v4 updatedTriggerID:a1 withLockState:a2];
}

uint64_t pg_sessionStoppedCallback(uint64_t a1, uint64_t a2)
{
  v4 = +[FigPulseGenerator sharedFigPulseGenerator];
  v5 = [v4 delegate];

  return [v5 pulseGenerator:v4 updatedTriggerID:a1 withSessionStoppedExitStatus:a2];
}

uint64_t pg_triggerPresentCallback(uint64_t a1, uint64_t a2)
{
  v4 = +[FigPulseGenerator sharedFigPulseGenerator];
  v5 = [v4 delegate];

  return [v5 pulseGenerator:v4 updatedTriggerID:a1 withTriggerIsPresent:a2];
}

id EGStillImageGraphManagerForGraphElement(id val)
{
  objc_initWeak(&location, val);
  if (objc_loadWeak(&location))
  {
    while (1)
    {
      v1 = [objc_loadWeak(&location) conformsToProtocol:&unk_1F227F8E8];
      v2 = objc_loadWeak(&location);
      v3 = v2;
      if (v1)
      {
        break;
      }

      [v2 parent];
      v4 = [objc_loadWeak(&location) parent];
      objc_storeWeak(&location, v4);
      if (!objc_loadWeak(&location))
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v3 = 0;
  }

  objc_destroyWeak(&location);
  return v3;
}

uint64_t csp_previewTapCallback(uint64_t result, char a2, uint64_t a3)
{
  v5 = result;
  if (a2)
  {
    result = [*(result + 64) captureSessionPreviewTapDidOpen:result];
  }

  if (a3)
  {
    result = [*(v5 + 64) captureSession:v5 previewTapDidOutputSampleBuffer:a3];
  }

  if ((a2 & 2) != 0)
  {
    *(v5 + 59) = 0;
    v6 = *(v5 + 64);

    return [v6 captureSessionPreviewTapDidClose:v5];
  }

  return result;
}

uint64_t __cso_postDeferredmediadImmediateTerminationNotificationIfNecessary_block_invoke()
{
  result = MGGetBoolAnswer();
  cso_postDeferredmediadImmediateTerminationNotificationIfNecessary_sSupportsDeferredProcessing = result;
  return result;
}