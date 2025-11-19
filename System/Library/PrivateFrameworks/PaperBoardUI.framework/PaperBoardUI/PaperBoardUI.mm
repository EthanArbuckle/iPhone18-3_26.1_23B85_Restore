uint64_t soft_PUIDynamicRotationIsActive()
{
  IsActiveSymbolLoc = getPUIDynamicRotationIsActiveSymbolLoc();
  if (!IsActiveSymbolLoc)
  {
    soft_PUIDynamicRotationIsActive_cold_1();
  }

  return IsActiveSymbolLoc();
}

uint64_t getPUIDynamicRotationIsActiveSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPUIDynamicRotationIsActiveSymbolLoc_ptr;
  v6 = getPUIDynamicRotationIsActiveSymbolLoc_ptr;
  if (!getPUIDynamicRotationIsActiveSymbolLoc_ptr)
  {
    v1 = PosterUIFoundationLibrary();
    v4[3] = dlsym(v1, "PUIDynamicRotationIsActive");
    getPUIDynamicRotationIsActiveSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_21E67F5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PBUILogCommon()
{
  if (PBUILogCommon_onceToken != -1)
  {
    PBUILogCommon_cold_1();
  }

  v1 = PBUILogCommon___logObj;

  return v1;
}

id PBUILogRuntime()
{
  if (PBUILogRuntime_onceToken != -1)
  {
    PBUILogRuntime_cold_1();
  }

  v1 = PBUILogRuntime___logObj;

  return v1;
}

__CFString *PBUIStringForWallpaperVariant(uint64_t a1)
{
  if ((a1 + 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_278363C38[a1 + 1];
  }
}

id PBUIRenderingLogFenceReason()
{
  if (PBUIRenderingLogFenceReason_onceToken != -1)
  {
    PBUIRenderingLogFenceReason_cold_1();
  }

  v1 = PBUIRenderingLogFenceReason___logObj;

  return v1;
}

id PBUILogSnapshot()
{
  if (PBUILogSnapshot_onceToken != -1)
  {
    PBUILogSnapshot_cold_1();
  }

  v1 = PBUILogSnapshot___logObj;

  return v1;
}

id NSStringFrom_PBUIPosterViewControllerUpdateReasons(uint64_t a1)
{
  v2 = objc_opt_new();
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __NSStringFrom_PBUIPosterViewControllerUpdateReasons_block_invoke;
  v13 = &unk_278364248;
  v3 = v2;
  v14 = v3;
  v4 = &v10;
  if (a1)
  {
    v5 = 0;
    v15 = 0;
    v6 = vcnt_s8(a1);
    v6.i16[0] = vaddlv_u8(v6);
    v7 = v6.i32[0];
    do
    {
      if (((1 << v5) & a1) != 0)
      {
        (v12)(v4);
        if (v15)
        {
          break;
        }

        --v7;
      }

      if (v5 > 0x3E)
      {
        break;
      }

      ++v5;
    }

    while (v7 > 0);
  }

  v8 = [v3 componentsJoinedByString:{@", ", v10, v11}];

  return v8;
}

uint64_t soft_PUIPosterSignificantEventOptionsContainsEvent(uint64_t a1, uint64_t a2)
{
  PUIPosterSignificantEventOptionsContainsEventSymbolLoc = getPUIPosterSignificantEventOptionsContainsEventSymbolLoc();
  if (!PUIPosterSignificantEventOptionsContainsEventSymbolLoc)
  {
    soft_PUIPosterSignificantEventOptionsContainsEvent_cold_1();
  }

  return PUIPosterSignificantEventOptionsContainsEventSymbolLoc(a1, a2);
}

uint64_t getPUIPosterSignificantEventOptionsContainsEventSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPUIPosterSignificantEventOptionsContainsEventSymbolLoc_ptr;
  v6 = getPUIPosterSignificantEventOptionsContainsEventSymbolLoc_ptr;
  if (!getPUIPosterSignificantEventOptionsContainsEventSymbolLoc_ptr)
  {
    v1 = PosterUIFoundationLibrary();
    v4[3] = dlsym(v1, "PUIPosterSignificantEventOptionsContainsEvent");
    getPUIPosterSignificantEventOptionsContainsEventSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_21E6805D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

__CFString *PBUIWallpaperStyleDescription(unint64_t a1)
{
  if (a1 >= 0x1F)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%li)", a1];
  }

  else
  {
    v2 = off_2783643F0[a1];
  }

  return v2;
}

uint64_t PBUIWallpaperStyleTransitionStateMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  return result;
}

int64x2_t PBUIWallpaperBackdropParametersMake@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  result = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(a4 + 24) = result;
  *(a4 + 40) = result;
  *(a4 + 56) = 0;
  return result;
}

__CFString *PBUIStringForWallpaperStylePriority(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_2783645E0[a1];
  }
}

void *_BackdropRenderingHintForWallpaperAverageColor(void *result)
{
  if (result)
  {
    v1 = 0.0;
    v2 = 0.0;
    [result getHue:0 saturation:&v2 brightness:&v1 alpha:0];
    if (v1 > 0.95)
    {
      return (v2 < 0.05);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t PBUIReplicaDebugModeIsEnabled()
{
  if (PBUIReplicaDebugModeIsEnabled_onceToken != -1)
  {
    PBUIReplicaDebugModeIsEnabled_cold_1();
  }

  return PBUIReplicaDebugModeIsEnabled___isEnabled;
}

void PBUIApplyParallaxSettingsToViewWithFactor(void *a1, void *a2, double a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v6)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = [v6 _motionEffects];
    v9 = [v8 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v35;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 _removeMotionEffect:*(*(&v34 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v10);
    }

    v13 = [v5 slideEnabled];
    if (fabs(a3) >= 2.22044605e-16 && v13)
    {
      if ([v5 tiltEnabled])
      {
        v14 = objc_alloc_init(MEMORY[0x277D76140]);
        [v5 slidePixelsX];
        v16 = v15 * [v5 slideDirectionX] * 0.5 * a3;
        [v5 slidePixelsY];
        v18 = v17 * [v5 slideDirectionY] * 0.5 * a3;
        [v14 setSlideMagnitude:{v16, v18}];
        if ([v5 increaseEnabled])
        {
          [v5 slideIncreaseX];
          [v14 setHorizontalSlideAccelerationBoostFactor:fabs(v19 * a3 * 0.5 / v16)];
          [v5 slideIncreaseY];
          [v14 setVerticalSlideAccelerationBoostFactor:fabs(v20 * a3 * 0.5 / v18)];
        }

        [v14 setRotatingSphereRadius:{-objc_msgSend(v5, "distanceFromScreen") * a3}];
        [v5 tiltDegreesX];
        [v14 setMaximumHorizontalTiltAngle:{-(v21 * objc_msgSend(v5, "tiltDirectionX")) * a3 * 0.0174532925}];
        [v5 tiltDegreesY];
        [v14 setMaximumVerticalTiltAngle:{-(v22 * objc_msgSend(v5, "tiltDirectionY")) * a3 * 0.0174532925}];
        [v7 _addMotionEffect:v14];
      }

      else
      {
        [v5 slidePixelsX];
        [v7 _setVisualAltitude:?];
        [v5 slidePixelsY];
        v24 = v23;
        [v5 slidePixelsX];
        [v7 _setVisualAltitudeBias:{1.0, v24 / v25}];
      }
    }

    [v7 bounds];
    if (v27 <= v26)
    {
      v30 = v26;
      [v5 tiltDegreesX];
      v28 = v30;
    }

    else
    {
      v28 = v27;
      [v5 tiltDegreesY];
    }

    v31 = v28 * -0.5;
    v32 = tan(v29 * 0.0174532925);
    v33 = [v7 layer];
    [v33 setZPosition:v31 * v32];
  }
}

void sub_21E681C20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_6_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  [(PBUIFakeBlurView *)v10 _setImage:v11 style:a10 notify:1];
}

void _WallpaperBackdropParametersForStyleAndAverageColor(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v5 = a2;
  PBUIWallpaperBackdropParametersMake(0, 0, 0, a3);
  v6 = 2030;
  switch(a1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
      v6 = -2;
      goto LABEL_7;
    case 3uLL:
      v10 = 5;
      goto LABEL_20;
    case 4uLL:
    case 0x10uLL:
      v6 = 2010;
      goto LABEL_7;
    case 5uLL:
    case 0xAuLL:
    case 0x11uLL:
      v6 = 2070;
      goto LABEL_7;
    case 6uLL:
    case 0xBuLL:
    case 0x12uLL:
      v6 = 2071;
      goto LABEL_7;
    case 7uLL:
    case 0xCuLL:
    case 0x13uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
      v6 = 2020;
      goto LABEL_7;
    case 8uLL:
    case 0x14uLL:
LABEL_7:
      *a3 = v6;
      if (a1 > 0x1E)
      {
        break;
      }

      v7 = qword_2783644E8[a1];
      goto LABEL_22;
    case 9uLL:
      *(a3 + 24) = 0x4054000000000000;
      v10 = 2010;
      goto LABEL_20;
    case 0xDuLL:
      *a3 = 2030;
      *(a3 + 40) = xmmword_21E70D8E0;
      v8 = xmmword_21E70D8F0;
      goto LABEL_12;
    case 0xEuLL:
      *a3 = 2020;
      *(a3 + 24) = 0x4024000000000000;
      *(a3 + 40) = xmmword_21E70D8D0;
      goto LABEL_21;
    case 0xFuLL:
      *(a3 + 24) = 0x4054000000000000;
      v10 = 2030;
LABEL_20:
      *a3 = v10;
      goto LABEL_21;
    case 0x15uLL:
      *a3 = 2030;
      *(a3 + 40) = xmmword_21E70D900;
      v8 = xmmword_21E70D910;
LABEL_12:
      *(a3 + 24) = v8;
      goto LABEL_21;
    case 0x1CuLL:
      v9 = 1;
      goto LABEL_18;
    case 0x1DuLL:
      v9 = 2;
      goto LABEL_18;
    case 0x1EuLL:
      v9 = 3;
LABEL_18:
      *(a3 + 56) = v9;
LABEL_21:
      v7 = MEMORY[0x277D77370];
LABEL_22:
      *(a3 + 8) = *v7;
      break;
    default:
      break;
  }

  v11 = _BackdropRenderingHintForWallpaperAverageColor(v5);

  *(a3 + 16) = v11;
}

id getPUIImageEncoderClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPUIImageEncoderClass_softClass;
  v7 = getPUIImageEncoderClass_softClass;
  if (!getPUIImageEncoderClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPUIImageEncoderClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPUIImageEncoderClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E682C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

PBUIHomeVariantStyleState *PBUIHomeVariantStyleStateFromPRPosterHomeScreenConfiguration(void *a1)
{
  v1 = a1;
  v2 = [v1 customizationConfiguration];
  v3 = [v2 isDimmed];

  v4 = [v1 customizationConfiguration];
  v5 = [v4 tintColorStyle];

  v6 = [v1 customizationConfiguration];
  v7 = [v6 suggestedTintColor];

  v8 = [v1 customizationConfiguration];
  v9 = [v8 iconTintSource];

  v10 = [v1 customizationConfiguration];
  v11 = [v10 iconUserInterfaceSize];

  v12 = [v1 customizationConfiguration];
  v13 = [v12 iconUserInterfaceStyleType];

  v14 = [v1 customizationConfiguration];
  v15 = [v14 iconUserInterfaceStyleVariant];

  v16 = [v1 customizationConfiguration];

  v17 = [v16 userSelectedVariantsForStyleTypes];

  v18 = [[PBUIHomeVariantStyleState alloc] initWithTintColorStyle:v5 suggestedTintColor:v7 tintSource:v9 isHomeScreenDimmed:v3 iconSize:v11 iconStyle:v13 iconStyleVariant:v15 lastUserSelectedVariantForStyleTypeOption:v17];

  return v18;
}

id getPRSPosterConfigurationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRSPosterConfigurationClass_softClass;
  v7 = getPRSPosterConfigurationClass_softClass;
  if (!getPRSPosterConfigurationClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPRSPosterConfigurationClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPRSPosterConfigurationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E683E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPLKLegibilityEnvironmentVariantLockScreen()
{
  PLKLegibilityEnvironmentVariantLockScreenSymbolLoc = getPLKLegibilityEnvironmentVariantLockScreenSymbolLoc();
  if (!PLKLegibilityEnvironmentVariantLockScreenSymbolLoc)
  {
    getPLKLegibilityEnvironmentVariantLockScreen_cold_1();
  }

  v1 = *PLKLegibilityEnvironmentVariantLockScreenSymbolLoc;

  return v1;
}

uint64_t getPLKLegibilityEnvironmentVariantLockScreenSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPLKLegibilityEnvironmentVariantLockScreenSymbolLoc_ptr;
  v6 = getPLKLegibilityEnvironmentVariantLockScreenSymbolLoc_ptr;
  if (!getPLKLegibilityEnvironmentVariantLockScreenSymbolLoc_ptr)
  {
    v1 = PosterLegibilityKitLibrary();
    v4[3] = dlsym(v1, "PLKLegibilityEnvironmentVariantLockScreen");
    getPLKLegibilityEnvironmentVariantLockScreenSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_21E684254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPLKLegibilityEnvironmentVariantHomeScreen()
{
  PLKLegibilityEnvironmentVariantHomeScreenSymbolLoc = getPLKLegibilityEnvironmentVariantHomeScreenSymbolLoc();
  if (!PLKLegibilityEnvironmentVariantHomeScreenSymbolLoc)
  {
    getPLKLegibilityEnvironmentVariantHomeScreen_cold_1();
  }

  v1 = *PLKLegibilityEnvironmentVariantHomeScreenSymbolLoc;

  return v1;
}

uint64_t getPLKLegibilityEnvironmentVariantHomeScreenSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPLKLegibilityEnvironmentVariantHomeScreenSymbolLoc_ptr;
  v6 = getPLKLegibilityEnvironmentVariantHomeScreenSymbolLoc_ptr;
  if (!getPLKLegibilityEnvironmentVariantHomeScreenSymbolLoc_ptr)
  {
    v1 = PosterLegibilityKitLibrary();
    v4[3] = dlsym(v1, "PLKLegibilityEnvironmentVariantHomeScreen");
    getPLKLegibilityEnvironmentVariantHomeScreenSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_21E684374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initISAVPlayer()
{
  if (LoadPhotosPlayer_loadPredicate != -1)
  {
    initISAVPlayer_cold_1();
  }

  result = objc_getClass("ISAVPlayer");
  classISAVPlayer = result;
  getISAVPlayerClass = ISAVPlayerFunction;
  return result;
}

void __LoadPhotosPlayer_block_invoke()
{
  LoadPhotosPlayer_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/PhotosPlayer.framework/PhotosPlayer", 2);
  if (!LoadPhotosPlayer_frameworkLibrary)
  {
    NSLog(&cfstr_FailedToSoftLi.isa);
  }
}

void sub_21E686524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E688130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E6883B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E688688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getISAssetClass_block_invoke(uint64_t a1)
{
  PhotosPlayerLibrary();
  result = objc_getClass("ISAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getISAssetClass_block_invoke_cold_1();
  }

  getISAssetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void PhotosPlayerLibrary()
{
  v3 = *MEMORY[0x277D85DE8];
  v0[0] = 0;
  if (!PhotosPlayerLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x277D85DD0];
    v0[2] = 3221225472;
    v0[3] = __PhotosPlayerLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_278361F38;
    v2 = 0;
    PhotosPlayerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PhotosPlayerLibraryCore_frameworkLibrary)
  {
    PhotosPlayerLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __PhotosPlayerLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotosPlayerLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getISPlayerItemClass_block_invoke(uint64_t a1)
{
  PhotosPlayerLibrary();
  result = objc_getClass("ISPlayerItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getISPlayerItemClass_block_invoke_cold_1();
  }

  getISPlayerItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getISLiveWallpaperPlayerClass_block_invoke(uint64_t a1)
{
  PhotosPlayerLibrary();
  result = objc_getClass("ISLiveWallpaperPlayer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getISLiveWallpaperPlayerClass_block_invoke_cold_1();
  }

  getISLiveWallpaperPlayerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getISLivePhotoPlayerClass_block_invoke(uint64_t a1)
{
  PhotosPlayerLibrary();
  result = objc_getClass("ISLivePhotoPlayer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getISLivePhotoPlayerClass_block_invoke_cold_1();
  }

  getISLivePhotoPlayerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getISLiveWallpaperUIViewClass_block_invoke(uint64_t a1)
{
  PhotosPlayerLibrary();
  result = objc_getClass("ISLiveWallpaperUIView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getISLiveWallpaperUIViewClass_block_invoke_cold_1();
  }

  getISLiveWallpaperUIViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getISLivePhotoUIViewClass_block_invoke(uint64_t a1)
{
  PhotosPlayerLibrary();
  result = objc_getClass("ISLivePhotoUIView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getISLivePhotoUIViewClass_block_invoke_cold_1();
  }

  getISLivePhotoUIViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

__CFString *PBUIStringForWallpaperTransformOptions(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 15)
      {
        return @"ignoring all wallpaper options";
      }

      return @"unknown wallpaper options";
    }

    return @"ignore rotation";
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return @"ignore scale";
      }

      return @"unknown wallpaper options";
    }

    return @"default wallpaper options";
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21E68A470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak((v29 - 112));
  _Unwind_Resume(a1);
}

id getMTMaterialViewClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMTMaterialViewClass_softClass;
  v7 = getMTMaterialViewClass_softClass;
  if (!getMTMaterialViewClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMTMaterialViewClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getMTMaterialViewClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E68D0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMTMaterialViewClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!MaterialKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __MaterialKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278362268;
    v5 = 0;
    MaterialKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MaterialKitLibraryCore_frameworkLibrary)
  {
    __getMTMaterialViewClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("MTMaterialView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMTMaterialViewClass_block_invoke_cold_1();
  }

  getMTMaterialViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MaterialKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MaterialKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_21E68E448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21E68E7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_21E68F924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PBUIRegisterForWallpaperExternalChangeNotification()
{
  if (PBUIRegisterForWallpaperExternalChangeNotification___once != -1)
  {
    +[PBUIWallpaperConfigurationManager initialize];
  }
}

void sub_21E68FF58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PBUIRegisterForExternalWallpaperChangeNotificationWithHandler(void *a1)
{
  v1 = a1;
  out_token = -1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __PBUIRegisterForExternalWallpaperChangeNotificationWithHandler_block_invoke;
  v5[3] = &unk_278362478;
  v6 = v1;
  v2 = v1;
  notify_register_dispatch("com.apple.springboard.wallpaperchanged", &out_token, MEMORY[0x277D85CD0], v5);
  v3 = out_token;

  return v3;
}

void sub_21E6965E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _WallpaperMinimumZoomScale(double a1, double a2, double a3, double a4)
{
  result = a1 / a3;
  v5 = a2 / a4;
  if (result < v5)
  {
    return v5;
  }

  return result;
}

void __PBUIRegisterForWallpaperExternalChangeNotification_block_invoke_2()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"SBFWallpaperDidChangeNotification" object:0];
}

void OUTLINED_FUNCTION_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

unint64_t PBUIIrisWallpaperPlaybackStateForISPlaybackState(unint64_t result)
{
  if (result >= 6)
  {
    return -1;
  }

  return result;
}

id PBUIIrisWallpaperPlaybackStateDescription(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%i)", a1];
  }

  else
  {
    v2 = *(&off_278362500 + a1);
  }

  return v2;
}

__CFString *PBUIIrisWallpaperViewModeDescription(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"still-only";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%i)", a1];
    }
  }

  else
  {
    v2 = @"live";
  }

  return v2;
}

id PBUIIrisPlayerStateDescription(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%i)", a1];
  }

  else
  {
    v2 = *(&off_278362530 + a1);
  }

  return v2;
}

uint64_t __PBUILogCommon_block_invoke()
{
  v0 = os_log_create("com.apple.PaperBoardUI", "Common");
  v1 = PBUILogCommon___logObj;
  PBUILogCommon___logObj = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id PBUIRenderingLogLocalRenderer()
{
  if (PBUIRenderingLogLocalRenderer_onceToken != -1)
  {
    PBUIRenderingLogLocalRenderer_cold_1();
  }

  v1 = PBUIRenderingLogLocalRenderer___logObj;

  return v1;
}

uint64_t __PBUIRenderingLogLocalRenderer_block_invoke()
{
  v0 = os_log_create("com.apple.paperboard.rendering", "LocalRenderer");
  v1 = PBUIRenderingLogLocalRenderer___logObj;
  PBUIRenderingLogLocalRenderer___logObj = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id PBUIRenderingLogRendererService()
{
  if (PBUIRenderingLogRendererService_onceToken != -1)
  {
    PBUIRenderingLogRendererService_cold_1();
  }

  v1 = PBUIRenderingLogRendererService___logObj;

  return v1;
}

uint64_t __PBUIRenderingLogRendererService_block_invoke()
{
  v0 = os_log_create("com.apple.paperboard.rendering", "RendererService");
  v1 = PBUIRenderingLogRendererService___logObj;
  PBUIRenderingLogRendererService___logObj = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __PBUIRenderingLogFenceReason_block_invoke()
{
  v0 = os_log_create("com.apple.paperboard.rendering", "FenceReason");
  v1 = PBUIRenderingLogFenceReason___logObj;
  PBUIRenderingLogFenceReason___logObj = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id PBUIRenderingLogImageUtilities()
{
  if (PBUIRenderingLogImageUtilities_onceToken != -1)
  {
    PBUIRenderingLogImageUtilities_cold_1();
  }

  v1 = PBUIRenderingLogImageUtilities___logObj;

  return v1;
}

uint64_t __PBUIRenderingLogImageUtilities_block_invoke()
{
  v0 = os_log_create("com.apple.paperboard.rendering", "ImageUtilities");
  v1 = PBUIRenderingLogImageUtilities___logObj;
  PBUIRenderingLogImageUtilities___logObj = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __PBUILogSnapshot_block_invoke()
{
  v0 = os_log_create("com.apple.PaperBoardUI", "Snapshot");
  v1 = PBUILogSnapshot___logObj;
  PBUILogSnapshot___logObj = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id PBUILogCaching()
{
  if (PBUILogCaching_onceToken != -1)
  {
    PBUILogCaching_cold_1();
  }

  v1 = PBUILogCaching___logObj;

  return v1;
}

uint64_t __PBUILogCaching_block_invoke()
{
  v0 = os_log_create("com.apple.PaperBoardUI", "Caching");
  v1 = PBUILogCaching___logObj;
  PBUILogCaching___logObj = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __PBUILogRuntime_block_invoke()
{
  v0 = os_log_create("com.apple.PaperBoardUI", "Runtime");
  v1 = PBUILogRuntime___logObj;
  PBUILogRuntime___logObj = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id PBUILogPower()
{
  if (PBUILogPower_onceToken != -1)
  {
    PBUILogPower_cold_1();
  }

  v1 = PBUILogPower___logObj;

  return v1;
}

uint64_t __PBUILogPower_block_invoke()
{
  v0 = os_log_create("com.apple.PaperBoardUI", "Power");
  v1 = PBUILogPower___logObj;
  PBUILogPower___logObj = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void ___sharedWallpaperMetricsTelemetryIdentifier_block_invoke()
{
  if (MEMORY[0x282227600])
  {
    _sharedWallpaperMetricsTelemetryIdentifier_telemetryIdentifier = PPSCreateTelemetryIdentifier();
  }

  else
  {
    v0 = PBUILogPower();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      ___sharedWallpaperMetricsTelemetryIdentifier_block_invoke_cold_1(v0);
    }
  }
}

void __PBUIReplicaDebugModeIsEnabled_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  PBUIReplicaDebugModeIsEnabled___isEnabled = [v0 BOOLForKey:@"PBUIReplicaDebugMode"];
}

void sub_21E69E0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __possibleWallpaperFileNames()
{
  if (__possibleWallpaperFileNames_onceToken != -1)
  {
    __possibleWallpaperFileNames_cold_1();
  }

  v1 = __possibleWallpaperFileNames_possibleWallpaperFileNames;

  return v1;
}

id __wallpaperImageFilename(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a1 != 1)
    {
      v4 = 0;
      goto LABEL_9;
    }

    v2 = @"HomeBackground";
  }

  else
  {
    v2 = @"LockBackground";
  }

  if (a2 == 2)
  {
    v3 = PBUIStringForWallpaperMode(2uLL);
    v2 = [(__CFString *)v2 stringByAppendingString:v3];
  }

  v4 = [(__CFString *)v2 stringByAppendingString:@".cpbitmap"];

LABEL_9:

  return v4;
}

id __wallpaperOriginalImageFilename(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a1 != 1)
    {
      v4 = 0;
      goto LABEL_9;
    }

    v2 = @"OriginalHomeBackground";
  }

  else
  {
    v2 = @"OriginalLockBackground";
  }

  if (a2 == 2)
  {
    v3 = PBUIStringForWallpaperMode(2uLL);
    v2 = [(__CFString *)v2 stringByAppendingString:v3];
  }

  v4 = [(__CFString *)v2 stringByAppendingString:@".cpbitmap"];

LABEL_9:

  return v4;
}

id __wallpaperThumbnailFilename(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a1 != 1)
    {
      v4 = 0;
      goto LABEL_9;
    }

    v2 = @"HomeBackgroundThumbnail";
  }

  else
  {
    v2 = @"LockBackgroundThumbnail";
  }

  if (a2 == 2)
  {
    v3 = PBUIStringForWallpaperMode(2uLL);
    v2 = [(__CFString *)v2 stringByAppendingString:v3];
  }

  v4 = [(__CFString *)v2 stringByAppendingString:@".jpg"];

LABEL_9:

  return v4;
}

BOOL __hasEnoughFreeSpaceToSetWallpaper()
{
  v5 = *MEMORY[0x277D85DE8];
  memset(&v4, 0, 512);
  v0 = NSHomeDirectory();
  v1 = statfs([v0 fileSystemRepresentation], &v4);

  return !v1 && v4.f_bfree * v4.f_bsize > 0x1400000;
}

id __wallpaperVideoFilename(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a1 != 1)
    {
      v4 = 0;
      goto LABEL_9;
    }

    v2 = @"HomeVideo";
  }

  else
  {
    v2 = @"LockVideo";
  }

  if (a2 == 2)
  {
    v3 = PBUIStringForWallpaperMode(2uLL);
    v2 = [(__CFString *)v2 stringByAppendingString:v3];
  }

  v4 = [(__CFString *)v2 stringByAppendingString:@".mov"];

LABEL_9:

  return v4;
}

id __wallpaperOriginalVideoFilename(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a1 != 1)
    {
      v4 = 0;
      goto LABEL_9;
    }

    v2 = @"OriginalHomeVideo";
  }

  else
  {
    v2 = @"OriginalLockVideo";
  }

  if (a2 == 2)
  {
    v3 = PBUIStringForWallpaperMode(2uLL);
    v2 = [(__CFString *)v2 stringByAppendingString:v3];
  }

  v4 = [(__CFString *)v2 stringByAppendingString:@".mov"];

LABEL_9:

  return v4;
}

void sub_21E6A1478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ____possibleWallpaperFileNames_block_invoke()
{
  v2 = objc_opt_new();
  [v2 addObject:@"OriginalLockBackground"];
  [v2 addObject:@"OriginalHomeBackground"];
  [v2 addObject:@"OriginalHomeVideo"];
  [v2 addObject:@"OriginalLockVideo"];
  [v2 addObject:@"LockBackgroundThumbnail"];
  [v2 addObject:@"HomeBackgroundThumbnail"];
  [v2 addObject:@"LockVideo"];
  [v2 addObject:@"HomeVideo"];
  [v2 addObject:@"LockBackground"];
  [v2 addObject:@"HomeBackground"];
  v0 = [v2 copy];
  v1 = __possibleWallpaperFileNames_possibleWallpaperFileNames;
  __possibleWallpaperFileNames_possibleWallpaperFileNames = v0;
}

id PBUIWallpaperSharedDirectoryDataStoreSharedDirectoryURL()
{
  soft_PUIFeatureEnabled(4);
  v0 = BSSystemSharedResourcesDirectoryForIdentifier();
  v1 = [v0 stringByAppendingPathComponent:@"Wallpaper"];

  if (v1 || (NSTemporaryDirectory(), v2 = objc_claimAutoreleasedReturnValue(), [v2 stringByAppendingPathComponent:@"SpringBoard"], v1 = objc_claimAutoreleasedReturnValue(), v2, v1))
  {
    v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:v1 isDirectory:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_21E6A5DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose((v26 - 160), 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PBUIStringForWallpaperLocations(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __PBUIStringForWallpaperLocations_block_invoke;
  v6[3] = &unk_2783623D0;
  v7 = v2;
  v3 = v2;
  PBUIWallpaperEnumerateVariantsForLocations(a1, v6);
  v4 = [v3 componentsJoinedByString:@"+"];

  return v4;
}

void PBUIWallpaperEnumerateVariantsForLocations(char a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((a1 & 1) == 0)
  {
    if ((a1 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = 0;
  (*(v3 + 2))(v3, 0, &v6);
  if ((a1 & 2) != 0 && (v6 & 1) == 0)
  {
LABEL_6:
    v5 = 0;
    (v4)[2](v4, 1, &v5);
  }

LABEL_7:
}

void __PBUIStringForWallpaperLocations_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = PBUIStringForWallpaperVariant(a2);
  [v2 addObject:v3];
}

uint64_t PBUIWallpaperLocationForVariant(uint64_t a1)
{
  if (a1)
  {
    return 2 * (a1 == 1);
  }

  else
  {
    return 1;
  }
}

uint64_t PBUIWallpaperLocationsForString(void *a1)
{
  v1 = a1;
  v2 = [v1 containsString:@"lock"];
  v3 = [v1 containsString:@"home"];

  v4 = 3;
  if (!v3)
  {
    v4 = 1;
  }

  v5 = 2;
  if (!v3)
  {
    v5 = 0;
  }

  if (v2)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

BOOL PBUIDeviceMotionModeForPRPosterDeviceMotionMode(_BOOL8 result)
{
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

void sub_21E6A962C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_UIUserInterfaceStyleDescription(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%ld)", a1];
  }

  else
  {
    v2 = off_278362ED0[a1];
  }

  return v2;
}

void sub_21E6AAE48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E6AB5D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E6AC24C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E6AE134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Unwind_Resume(a1);
}

void sub_21E6B0724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E6B0A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  objc_destroyWeak((v9 + 32));
  objc_destroyWeak(&a9);
  _Unwind_Resume(a1);
}

void sub_21E6B1458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E6B1984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E6B1D18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 112));
  _Unwind_Resume(a1);
}

__CFString *PBUIStringForPosterWallpaperPairingType(unsigned int a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%i)", a1];
  }

  else
  {
    v2 = off_278362F08[a1];
  }

  return v2;
}

__CFString *PBUIStringForPosterWallpaperMigrationProvider(unsigned int a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%i)", a1];
  }

  else
  {
    v2 = off_278362F20[a1];
  }

  return v2;
}

__CFString *PBUIExtensionIdentifierForPosterWallpaperMigrationProvider(int a1)
{
  if (a1 == 1)
  {
    return @"com.apple.PhotosUIPrivate.PhotosPosterProvider";
  }

  if (a1 == 2)
  {
    return @"com.apple.WallpaperKit.CollectionsPoster";
  }

  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid provider %i", a1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    PBUIExtensionIdentifierForPosterWallpaperMigrationProvider_cold_1(v2);
  }

  [v2 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

__CFString *_NSStringFromUIUserInterfaceStyle(uint64_t a1)
{
  v1 = @"Unspecified";
  if (a1 == 2)
  {
    v1 = @"Dark";
  }

  if (a1 == 1)
  {
    return @"Light";
  }

  else
  {
    return v1;
  }
}

id soft_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyle(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = get_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyleSymbolLoc_ptr;
  v9 = get_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyleSymbolLoc_ptr;
  if (!get_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyleSymbolLoc_ptr)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __get_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyleSymbolLoc_block_invoke;
    v5[3] = &unk_278361F18;
    v5[4] = &v6;
    __get_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyleSymbolLoc_block_invoke(v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    soft_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyle_cold_1();
  }

  v3 = v2(19, a1);

  return v3;
}

void sub_21E6B468C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MaterialKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  MaterialKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_21E6B575C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E6B5BE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PBUIWallpaperImageWithFlatColor(void *a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v7 = [a1 CGColor];
  v8 = v7;
  if (v7 && (ColorSpace = CGColorGetColorSpace(v7)) != 0)
  {
    DeviceRGB = CGColorSpaceRetain(ColorSpace);
  }

  else
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  v11 = DeviceRGB;
  if (DeviceRGB && (v12 = PBUICreateWallpaperImageBitmapContext(DeviceRGB, a2, a3, a4), CGColorSpaceRelease(v11), v12))
  {
    CGContextSetFillColorWithColor(v12, v8);
    v17.origin.x = 0.0;
    v17.origin.y = 0.0;
    v17.size.width = a2;
    v17.size.height = a3;
    CGContextFillRect(v12, v17);
    Image = CGBitmapContextCreateImage(v12);
    CGContextRelease(v12);
    v14 = [MEMORY[0x277D755B8] imageWithCGImage:Image scale:0 orientation:a4];
    CGImageRelease(Image);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

CGContext *PBUICreateWallpaperImageBitmapContext(CGColorSpace *a1, double a2, double a3, CGFloat a4)
{
  v7 = (a2 * a4);
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(a1);
  v9 = CGColorSpaceUsesExtendedRange(a1);
  v10 = v7 + v7 * NumberOfComponents;
  if (NumberOfComponents == 1)
  {
    v10 = v7;
    v11 = 0;
  }

  else
  {
    v11 = 2;
  }

  if (v9)
  {
    v12 = 32;
  }

  else
  {
    v12 = 8;
  }

  if (v9)
  {
    v13 = 4 * v7 * NumberOfComponents;
  }

  else
  {
    v13 = v10;
  }

  if (v9)
  {
    v14 = 8448;
  }

  else
  {
    v14 = v11;
  }

  v15 = CGBitmapContextCreate(0, v7, (a3 * a4), v12, v13, a1, v14);
  CGContextScaleCTM(v15, a4, a4);
  return v15;
}

CGContext *PBUIWallpaperImageWithGradient(void *a1, double a2, double a3, CGFloat a4)
{
  v7 = a1;
  v8 = [v7 colors];
  v9 = [v8 firstObject];
  ColorSpace = CGColorGetColorSpace([v9 CGColor]);
  v11 = CGColorSpaceRetain(ColorSpace);

  if (!v11)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    if (!DeviceRGB)
    {
      v13 = 0;
      goto LABEL_7;
    }

    v11 = DeviceRGB;
  }

  v13 = PBUICreateWallpaperImageBitmapContext(v11, a2, a3, a4);
  CGColorSpaceRelease(v11);
  if (v13)
  {
    v14 = [v7 copyCGGradient];
    [v7 startPoint];
    v15 = a2 * a4;
    v17 = a2 * a4 * v16;
    v18 = a3 * a4;
    v20 = a3 * a4 * v19;
    [v7 endPoint];
    v27.x = v15 * v21;
    v27.y = v18 * v22;
    v26.x = v17;
    v26.y = v20;
    CGContextDrawLinearGradient(v13, v14, v26, v27, 0);
    CGGradientRelease(v14);
    Image = CGBitmapContextCreateImage(v13);
    CGContextRelease(v13);
    v13 = [MEMORY[0x277D755B8] imageWithCGImage:Image scale:0 orientation:a4];
    CGImageRelease(Image);
  }

LABEL_7:

  return v13;
}

id PBUIWallpaperDataForFileURL(void *a1, void *a2)
{
  if (a1)
  {
    [a1 path];
    MappedDataFromPath = CPBitmapCreateMappedDataFromPath();
    v4 = MappedDataFromPath;
    if (a2)
    {
      if (!MappedDataFromPath)
      {
        v5 = 0;
        *a2 = v5;
        if (v5)
        {
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void *PBUIWallpaperUIImageForImageData(void *a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  ImagesFromData = CPBitmapCreateImagesFromData();
  if (ImagesFromData)
  {
    v5 = ImagesFromData;
    ValueAtIndex = CFArrayGetValueAtIndex(ImagesFromData, 0);
    CGImageRetain(ValueAtIndex);
    CFRelease(v5);
    if (ValueAtIndex)
    {
      goto LABEL_6;
    }
  }

  v7 = CGImageSourceCreateWithData(v3, 0);
  if (v7)
  {
    v8 = v7;
    if (CGImageSourceGetCount(v7))
    {
      PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v8);
      ValueAtIndex = CGImageSourceCreateImageAtIndex(v8, PrimaryImageIndex, 0);
      CFRelease(v8);
      if (ValueAtIndex)
      {
LABEL_6:
        a2 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:{ValueAtIndex, 0}];
        CGImageRelease(ValueAtIndex);
        goto LABEL_10;
      }
    }

    else
    {
      CFRelease(v8);
    }
  }

  if (a2)
  {
    v10 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA470];
    v14[0] = @"Failed to create images from CPBitmapCreateImagesFromData / CGImageSourceCreateWithData";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:{1, 0}];
    *a2 = [v10 errorWithDomain:@"com.apple.PaperBoardUI.error" code:256 userInfo:v11];

    a2 = 0;
  }

LABEL_10:

  return a2;
}

void sub_21E6B9134(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id soft_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyle_0(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = get_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyleSymbolLoc_ptr_0;
  v9 = get_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyleSymbolLoc_ptr_0;
  if (!get_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyleSymbolLoc_ptr_0)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __get_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyleSymbolLoc_block_invoke_0;
    v5[3] = &unk_278361F18;
    v5[4] = &v6;
    __get_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyleSymbolLoc_block_invoke_0(v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    soft_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyle_cold_1_0();
  }

  v3 = v2(19, a1);

  return v3;
}

void sub_21E6BA814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E6BB234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __MaterialKitLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  MaterialKitLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void OUTLINED_FUNCTION_2_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x30u);
}

uint64_t PBUIWallpaperTypeForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"static"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"procedural"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"video"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"color"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PBUIStringForWallpaperType(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_278363170[a1];
  }
}

void sub_21E6BDEB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_4(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x3Au);
}

uint64_t OUTLINED_FUNCTION_2_2()
{

  return objc_opt_class();
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __PBUIGetCurrentMagnifyMode_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  [v10 size];
  if (v8 == *(a1 + 40) && v7 == *(a1 + 48))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __PBUIGetMagnifyModes_block_invoke()
{
  v16[2] = *MEMORY[0x277D85DE8];
  v0 = MGCopyAnswer();
  if ([v0 hasPrefix:@"N56"])
  {
    v1 = [PBUIMagnifyMode magnifyModeWithSize:@"Large" name:1242.0, 2208.0];
    v16[0] = v1;
    v2 = [PBUIMagnifyMode magnifyModeWithSize:@"Medium" name:1125.0, 2001.0];
    v16[1] = v2;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v4 = PBUIGetMagnifyModes_PBUIMagnifyModes;
    PBUIGetMagnifyModes_PBUIMagnifyModes = v3;

    v5 = [PBUIGetMagnifyModes_PBUIMagnifyModes objectAtIndexedSubscript:1];
    v6 = v5;
    LODWORD(v7) = 1066225631;
  }

  else
  {
    if (![v0 hasPrefix:@"N61"])
    {
      v6 = [PBUIMagnifyMode magnifyModeWithSize:@"Medium" name:640.0, 1136.0];
      v14 = v6;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
      v13 = PBUIGetMagnifyModes_PBUIMagnifyModes;
      PBUIGetMagnifyModes_PBUIMagnifyModes = v12;

      goto LABEL_7;
    }

    v8 = [PBUIMagnifyMode magnifyModeWithSize:@"Medium" name:750.0, 1334.0];
    v15[0] = v8;
    v9 = [PBUIMagnifyMode magnifyModeWithSize:@"Small" name:640.0, 1136.0];
    v15[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v11 = PBUIGetMagnifyModes_PBUIMagnifyModes;
    PBUIGetMagnifyModes_PBUIMagnifyModes = v10;

    v5 = [PBUIGetMagnifyModes_PBUIMagnifyModes objectAtIndexedSubscript:1];
    v6 = v5;
    LODWORD(v7) = 1066795008;
  }

  [v5 setZoomFactor:v7];
LABEL_7:
}

uint64_t PosterBoardServicesLibraryCore()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = PosterBoardServicesLibraryCore_frameworkLibrary;
  v5 = PosterBoardServicesLibraryCore_frameworkLibrary;
  if (!PosterBoardServicesLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_278363440;
    v7 = *off_278363450;
    v8 = 0;
    v3[3] = _sl_dlopen();
    PosterBoardServicesLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_21E6C14A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PosterBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  PosterBoardServicesLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PosterBoardServicesLibrary()
{
  v1 = 0;
  result = PosterBoardServicesLibraryCore();
  if (!result)
  {
    PosterBoardServicesLibrary_cold_1(&v1);
  }

  return result;
}

id getPRSWallpaperObserverClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRSWallpaperObserverClass_softClass;
  v7 = getPRSWallpaperObserverClass_softClass;
  if (!getPRSWallpaperObserverClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPRSWallpaperObserverClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPRSWallpaperObserverClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C1670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPRSWallpaperObserverClass_block_invoke(uint64_t a1)
{
  PosterBoardServicesLibrary();
  result = objc_getClass("PRSWallpaperObserver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRSWallpaperObserverClass_block_invoke_cold_1();
  }

  getPRSWallpaperObserverClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPRSWallpaperObserverConfigurationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRSWallpaperObserverConfigurationClass_softClass;
  v7 = getPRSWallpaperObserverConfigurationClass_softClass;
  if (!getPRSWallpaperObserverConfigurationClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPRSWallpaperObserverConfigurationClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPRSWallpaperObserverConfigurationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C17A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPRSWallpaperObserverConfigurationClass_block_invoke(uint64_t a1)
{
  PosterBoardServicesLibrary();
  result = objc_getClass("PRSWallpaperObserverConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRSWallpaperObserverConfigurationClass_block_invoke_cold_1();
  }

  getPRSWallpaperObserverConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPRSWallpaperLocationStateObserverClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRSWallpaperLocationStateObserverClass_softClass;
  v7 = getPRSWallpaperLocationStateObserverClass_softClass;
  if (!getPRSWallpaperLocationStateObserverClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPRSWallpaperLocationStateObserverClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPRSWallpaperLocationStateObserverClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C18E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPRSWallpaperLocationStateObserverClass_block_invoke(uint64_t a1)
{
  PosterBoardServicesLibrary();
  result = objc_getClass("PRSWallpaperLocationStateObserver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRSWallpaperLocationStateObserverClass_block_invoke_cold_1();
  }

  getPRSWallpaperLocationStateObserverClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPRSPosterUpdaterClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRSPosterUpdaterClass_softClass;
  v7 = getPRSPosterUpdaterClass_softClass;
  if (!getPRSPosterUpdaterClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPRSPosterUpdaterClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPRSPosterUpdaterClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C1A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPRSPosterUpdaterClass_block_invoke(uint64_t a1)
{
  PosterBoardServicesLibrary();
  result = objc_getClass("PRSPosterUpdater");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRSPosterUpdaterClass_block_invoke_cold_1();
  }

  getPRSPosterUpdaterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPRSPosterUpdateClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRSPosterUpdateClass_softClass;
  v7 = getPRSPosterUpdateClass_softClass;
  if (!getPRSPosterUpdateClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPRSPosterUpdateClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPRSPosterUpdateClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C1B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPRSPosterUpdateClass_block_invoke(uint64_t a1)
{
  PosterBoardServicesLibrary();
  result = objc_getClass("PRSPosterUpdate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRSPosterUpdateClass_block_invoke_cold_1();
  }

  getPRSPosterUpdateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPRSServiceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRSServiceClass_softClass;
  v7 = getPRSServiceClass_softClass;
  if (!getPRSServiceClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPRSServiceClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPRSServiceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C1C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPRSServiceClass_block_invoke(uint64_t a1)
{
  PosterBoardServicesLibrary();
  result = objc_getClass("PRSService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRSServiceClass_block_invoke_cold_1();
  }

  getPRSServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPRSPosterConfigurationClass_block_invoke(uint64_t a1)
{
  PosterBoardServicesLibrary();
  result = objc_getClass("PRSPosterConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRSPosterConfigurationClass_block_invoke_cold_1();
  }

  getPRSPosterConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PosterFoundationLibraryCore()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = PosterFoundationLibraryCore_frameworkLibrary;
  v5 = PosterFoundationLibraryCore_frameworkLibrary;
  if (!PosterFoundationLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_278363490;
    v7 = *off_2783634A0;
    v8 = 0;
    v3[3] = _sl_dlopen();
    PosterFoundationLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_21E6C1E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PosterFoundationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  PosterFoundationLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PosterFoundationLibrary()
{
  v1 = 0;
  result = PosterFoundationLibraryCore();
  if (!result)
  {
    PosterFoundationLibrary_cold_1(&v1);
  }

  return result;
}

uint64_t getPFFileProtectionNoneAttributesSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPFFileProtectionNoneAttributesSymbolLoc_ptr;
  v6 = getPFFileProtectionNoneAttributesSymbolLoc_ptr;
  if (!getPFFileProtectionNoneAttributesSymbolLoc_ptr)
  {
    v1 = PosterFoundationLibrary();
    v4[3] = dlsym(v1, "PFFileProtectionNoneAttributes");
    getPFFileProtectionNoneAttributesSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_21E6C203C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPFFileProtectionNoneAttributesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterFoundationLibrary();
  result = dlsym(v2, "PFFileProtectionNoneAttributes");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPFFileProtectionNoneAttributesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_PFFileProtectionNoneAttributes()
{
  PFFileProtectionNoneAttributesSymbolLoc = getPFFileProtectionNoneAttributesSymbolLoc();
  if (!PFFileProtectionNoneAttributesSymbolLoc)
  {
    soft_PFFileProtectionNoneAttributes_cold_1();
  }

  return PFFileProtectionNoneAttributesSymbolLoc();
}

uint64_t getPF_IS_PAD_DEVICESymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPF_IS_PAD_DEVICESymbolLoc_ptr;
  v6 = getPF_IS_PAD_DEVICESymbolLoc_ptr;
  if (!getPF_IS_PAD_DEVICESymbolLoc_ptr)
  {
    v1 = PosterFoundationLibrary();
    v4[3] = dlsym(v1, "PF_IS_PAD_DEVICE");
    getPF_IS_PAD_DEVICESymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_21E6C21A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_PF_IS_PAD_DEVICE()
{
  PF_IS_PAD_DEVICESymbolLoc = getPF_IS_PAD_DEVICESymbolLoc();
  if (!PF_IS_PAD_DEVICESymbolLoc)
  {
    soft_PF_IS_PAD_DEVICE_cold_1();
  }

  return PF_IS_PAD_DEVICESymbolLoc();
}

id getPFPosterExtensionInstanceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPFPosterExtensionInstanceClass_softClass;
  v7 = getPFPosterExtensionInstanceClass_softClass;
  if (!getPFPosterExtensionInstanceClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPFPosterExtensionInstanceClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPFPosterExtensionInstanceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C2308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPFPosterExtensionInstanceClass_block_invoke(uint64_t a1)
{
  PosterFoundationLibrary();
  result = objc_getClass("PFPosterExtensionInstance");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPFPosterExtensionInstanceClass_block_invoke_cold_1();
  }

  getPFPosterExtensionInstanceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPFDeviceMotionUtilitiesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPFDeviceMotionUtilitiesClass_softClass;
  v7 = getPFDeviceMotionUtilitiesClass_softClass;
  if (!getPFDeviceMotionUtilitiesClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPFDeviceMotionUtilitiesClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPFDeviceMotionUtilitiesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C2440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPFDeviceMotionUtilitiesClass_block_invoke(uint64_t a1)
{
  PosterFoundationLibrary();
  result = objc_getClass("PFDeviceMotionUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPFDeviceMotionUtilitiesClass_block_invoke_cold_1();
  }

  getPFDeviceMotionUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getPFPosterRoleLockScreenSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPFPosterRoleLockScreenSymbolLoc_ptr;
  v6 = getPFPosterRoleLockScreenSymbolLoc_ptr;
  if (!getPFPosterRoleLockScreenSymbolLoc_ptr)
  {
    v1 = PosterFoundationLibrary();
    v4[3] = dlsym(v1, "PFPosterRoleLockScreen");
    getPFPosterRoleLockScreenSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_21E6C2584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPFPosterRoleLockScreenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterFoundationLibrary();
  result = dlsym(v2, "PFPosterRoleLockScreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPFPosterRoleLockScreenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPFPosterRoleLockScreen()
{
  PFPosterRoleLockScreenSymbolLoc = getPFPosterRoleLockScreenSymbolLoc();
  if (!PFPosterRoleLockScreenSymbolLoc)
  {
    getPFPosterRoleLockScreen_cold_1();
  }

  v1 = *PFPosterRoleLockScreenSymbolLoc;

  return v1;
}

uint64_t PosterUIFoundationLibraryCore()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = PosterUIFoundationLibraryCore_frameworkLibrary;
  v5 = PosterUIFoundationLibraryCore_frameworkLibrary;
  if (!PosterUIFoundationLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_2783634B8;
    v7 = *off_2783634C8;
    v8 = 0;
    v3[3] = _sl_dlopen();
    PosterUIFoundationLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_21E6C2734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PosterUIFoundationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  PosterUIFoundationLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PosterUIFoundationLibrary()
{
  v1 = 0;
  result = PosterUIFoundationLibraryCore();
  if (!result)
  {
    PosterUIFoundationLibrary_cold_1(&v1);
  }

  return result;
}

id getPUIPosterLevelSetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPUIPosterLevelSetClass_softClass;
  v7 = getPUIPosterLevelSetClass_softClass;
  if (!getPUIPosterLevelSetClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPUIPosterLevelSetClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPUIPosterLevelSetClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C2900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPUIPosterLevelSetClass_block_invoke(uint64_t a1)
{
  PosterUIFoundationLibrary();
  result = objc_getClass("PUIPosterLevelSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPUIPosterLevelSetClass_block_invoke_cold_1();
  }

  getPUIPosterLevelSetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPUIPosterSnapshotAnalysisDescriptorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPUIPosterSnapshotAnalysisDescriptorClass_softClass;
  v7 = getPUIPosterSnapshotAnalysisDescriptorClass_softClass;
  if (!getPUIPosterSnapshotAnalysisDescriptorClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPUIPosterSnapshotAnalysisDescriptorClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPUIPosterSnapshotAnalysisDescriptorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C2A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPUIPosterSnapshotAnalysisDescriptorClass_block_invoke(uint64_t a1)
{
  PosterUIFoundationLibrary();
  result = objc_getClass("PUIPosterSnapshotAnalysisDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPUIPosterSnapshotAnalysisDescriptorClass_block_invoke_cold_1();
  }

  getPUIPosterSnapshotAnalysisDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPUIPosterSnapshotOutputDescriptorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPUIPosterSnapshotOutputDescriptorClass_softClass;
  v7 = getPUIPosterSnapshotOutputDescriptorClass_softClass;
  if (!getPUIPosterSnapshotOutputDescriptorClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPUIPosterSnapshotOutputDescriptorClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPUIPosterSnapshotOutputDescriptorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C2B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPUIPosterSnapshotOutputDescriptorClass_block_invoke(uint64_t a1)
{
  PosterUIFoundationLibrary();
  result = objc_getClass("PUIPosterSnapshotOutputDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPUIPosterSnapshotOutputDescriptorClass_block_invoke_cold_1();
  }

  getPUIPosterSnapshotOutputDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPUIPosterSnapshotUISceneDescriptorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPUIPosterSnapshotUISceneDescriptorClass_softClass;
  v7 = getPUIPosterSnapshotUISceneDescriptorClass_softClass;
  if (!getPUIPosterSnapshotUISceneDescriptorClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPUIPosterSnapshotUISceneDescriptorClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPUIPosterSnapshotUISceneDescriptorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C2CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPUIPosterSnapshotUISceneDescriptorClass_block_invoke(uint64_t a1)
{
  PosterUIFoundationLibrary();
  result = objc_getClass("PUIPosterSnapshotUISceneDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPUIPosterSnapshotUISceneDescriptorClass_block_invoke_cold_1();
  }

  getPUIPosterSnapshotUISceneDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPUIPosterSnapshotHostConfigurationDescriptorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPUIPosterSnapshotHostConfigurationDescriptorClass_softClass;
  v7 = getPUIPosterSnapshotHostConfigurationDescriptorClass_softClass;
  if (!getPUIPosterSnapshotHostConfigurationDescriptorClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPUIPosterSnapshotHostConfigurationDescriptorClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPUIPosterSnapshotHostConfigurationDescriptorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C2DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPUIPosterSnapshotHostConfigurationDescriptorClass_block_invoke(uint64_t a1)
{
  PosterUIFoundationLibrary();
  result = objc_getClass("PUIPosterSnapshotHostConfigurationDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPUIPosterSnapshotHostConfigurationDescriptorClass_block_invoke_cold_1();
  }

  getPUIPosterSnapshotHostConfigurationDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPUIPosterSnapshotDescriptorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPUIPosterSnapshotDescriptorClass_softClass;
  v7 = getPUIPosterSnapshotDescriptorClass_softClass;
  if (!getPUIPosterSnapshotDescriptorClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPUIPosterSnapshotDescriptorClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPUIPosterSnapshotDescriptorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C2F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPUIPosterSnapshotDescriptorClass_block_invoke(uint64_t a1)
{
  PosterUIFoundationLibrary();
  result = objc_getClass("PUIPosterSnapshotDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPUIPosterSnapshotDescriptorClass_block_invoke_cold_1();
  }

  getPUIPosterSnapshotDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPUIColorStatisticsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPUIColorStatisticsClass_softClass;
  v7 = getPUIColorStatisticsClass_softClass;
  if (!getPUIColorStatisticsClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPUIColorStatisticsClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPUIColorStatisticsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C3050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPUIColorStatisticsClass_block_invoke(uint64_t a1)
{
  PosterUIFoundationLibrary();
  result = objc_getClass("PUIColorStatistics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPUIColorStatisticsClass_block_invoke_cold_1();
  }

  getPUIColorStatisticsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPUIDiscreteGradientVariatedCustomStyleClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPUIDiscreteGradientVariatedCustomStyleClass_softClass;
  v7 = getPUIDiscreteGradientVariatedCustomStyleClass_softClass;
  if (!getPUIDiscreteGradientVariatedCustomStyleClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPUIDiscreteGradientVariatedCustomStyleClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPUIDiscreteGradientVariatedCustomStyleClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C3188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPUIDiscreteGradientVariatedCustomStyleClass_block_invoke(uint64_t a1)
{
  PosterUIFoundationLibrary();
  result = objc_getClass("PUIDiscreteGradientVariatedCustomStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPUIDiscreteGradientVariatedCustomStyleClass_block_invoke_cold_1();
  }

  getPUIDiscreteGradientVariatedCustomStyleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPUIImageEncoderClass_block_invoke(uint64_t a1)
{
  PosterUIFoundationLibrary();
  result = objc_getClass("PUIImageEncoder");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPUIImageEncoderClass_block_invoke_cold_1();
  }

  getPUIImageEncoderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPUIImageOnDiskFormatClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPUIImageOnDiskFormatClass_softClass;
  v7 = getPUIImageOnDiskFormatClass_softClass;
  if (!getPUIImageOnDiskFormatClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPUIImageOnDiskFormatClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPUIImageOnDiskFormatClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C3318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPUIImageOnDiskFormatClass_block_invoke(uint64_t a1)
{
  PosterUIFoundationLibrary();
  result = objc_getClass("PUIImageOnDiskFormat");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPUIImageOnDiskFormatClass_block_invoke_cold_1();
  }

  getPUIImageOnDiskFormatClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPUIMappedImageCacheManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPUIMappedImageCacheManagerClass_softClass;
  v7 = getPUIMappedImageCacheManagerClass_softClass;
  if (!getPUIMappedImageCacheManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPUIMappedImageCacheManagerClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPUIMappedImageCacheManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C3450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPUIMappedImageCacheManagerClass_block_invoke(uint64_t a1)
{
  PosterUIFoundationLibrary();
  result = objc_getClass("PUIMappedImageCacheManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPUIMappedImageCacheManagerClass_block_invoke_cold_1();
  }

  getPUIMappedImageCacheManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPUICARemoteRendererClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPUICARemoteRendererClass_softClass;
  v7 = getPUICARemoteRendererClass_softClass;
  if (!getPUICARemoteRendererClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPUICARemoteRendererClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPUICARemoteRendererClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C3588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPUICARemoteRendererClass_block_invoke(uint64_t a1)
{
  PosterUIFoundationLibrary();
  result = objc_getClass("PUICARemoteRenderer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPUICARemoteRendererClass_block_invoke_cold_1();
  }

  getPUICARemoteRendererClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPUITreatImageRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPUITreatImageRequestClass_softClass;
  v7 = getPUITreatImageRequestClass_softClass;
  if (!getPUITreatImageRequestClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPUITreatImageRequestClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPUITreatImageRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C36C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPUITreatImageRequestClass_block_invoke(uint64_t a1)
{
  PosterUIFoundationLibrary();
  result = objc_getClass("PUITreatImageRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPUITreatImageRequestClass_block_invoke_cold_1();
  }

  getPUITreatImageRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPUIMaterialTreatmentClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPUIMaterialTreatmentClass_softClass;
  v7 = getPUIMaterialTreatmentClass_softClass;
  if (!getPUIMaterialTreatmentClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPUIMaterialTreatmentClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPUIMaterialTreatmentClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C37F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPUIMaterialTreatmentClass_block_invoke(uint64_t a1)
{
  PosterUIFoundationLibrary();
  result = objc_getClass("PUIMaterialTreatment");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPUIMaterialTreatmentClass_block_invoke_cold_1();
  }

  getPUIMaterialTreatmentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPUICodableImageClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPUICodableImageClass_softClass;
  v7 = getPUICodableImageClass_softClass;
  if (!getPUICodableImageClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPUICodableImageClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPUICodableImageClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C3930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPUICodableImageClass_block_invoke(uint64_t a1)
{
  PosterUIFoundationLibrary();
  result = objc_getClass("PUICodableImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPUICodableImageClass_block_invoke_cold_1();
  }

  getPUICodableImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPUIPosterSnapshotDestinationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPUIPosterSnapshotDestinationClass_softClass;
  v7 = getPUIPosterSnapshotDestinationClass_softClass;
  if (!getPUIPosterSnapshotDestinationClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPUIPosterSnapshotDestinationClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPUIPosterSnapshotDestinationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C3A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPUIPosterSnapshotDestinationClass_block_invoke(uint64_t a1)
{
  PosterUIFoundationLibrary();
  result = objc_getClass("PUIPosterSnapshotDestination");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPUIPosterSnapshotDestinationClass_block_invoke_cold_1();
  }

  getPUIPosterSnapshotDestinationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPUIWallpaperInactiveTreatmentClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPUIWallpaperInactiveTreatmentClass_softClass;
  v7 = getPUIWallpaperInactiveTreatmentClass_softClass;
  if (!getPUIWallpaperInactiveTreatmentClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPUIWallpaperInactiveTreatmentClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPUIWallpaperInactiveTreatmentClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C3BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPUIWallpaperInactiveTreatmentClass_block_invoke(uint64_t a1)
{
  PosterUIFoundationLibrary();
  result = objc_getClass("PUIWallpaperInactiveTreatment");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPUIWallpaperInactiveTreatmentClass_block_invoke_cold_1();
  }

  getPUIWallpaperInactiveTreatmentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPUIWallpaperLegibilityTreatmentClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPUIWallpaperLegibilityTreatmentClass_softClass;
  v7 = getPUIWallpaperLegibilityTreatmentClass_softClass;
  if (!getPUIWallpaperLegibilityTreatmentClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPUIWallpaperLegibilityTreatmentClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPUIWallpaperLegibilityTreatmentClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C3CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPUIWallpaperLegibilityTreatmentClass_block_invoke(uint64_t a1)
{
  PosterUIFoundationLibrary();
  result = objc_getClass("PUIWallpaperLegibilityTreatment");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPUIWallpaperLegibilityTreatmentClass_block_invoke_cold_1();
  }

  getPUIWallpaperLegibilityTreatmentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getPUIImageEncoderErrorDomainSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPUIImageEncoderErrorDomainSymbolLoc_ptr;
  v6 = getPUIImageEncoderErrorDomainSymbolLoc_ptr;
  if (!getPUIImageEncoderErrorDomainSymbolLoc_ptr)
  {
    v1 = PosterUIFoundationLibrary();
    v4[3] = dlsym(v1, "PUIImageEncoderErrorDomain");
    getPUIImageEncoderErrorDomainSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_21E6C3E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPUIImageEncoderErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterUIFoundationLibrary();
  result = dlsym(v2, "PUIImageEncoderErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPUIImageEncoderErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPUIImageEncoderErrorDomain()
{
  PUIImageEncoderErrorDomainSymbolLoc = getPUIImageEncoderErrorDomainSymbolLoc();
  if (!PUIImageEncoderErrorDomainSymbolLoc)
  {
    getPUIImageEncoderErrorDomain_cold_1();
  }

  v1 = *PUIImageEncoderErrorDomainSymbolLoc;

  return v1;
}

uint64_t getPUISceneRoleRenderingSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPUISceneRoleRenderingSymbolLoc_ptr;
  v6 = getPUISceneRoleRenderingSymbolLoc_ptr;
  if (!getPUISceneRoleRenderingSymbolLoc_ptr)
  {
    v1 = PosterUIFoundationLibrary();
    v4[3] = dlsym(v1, "PUISceneRoleRendering");
    getPUISceneRoleRenderingSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_21E6C3F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPUISceneRoleRenderingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterUIFoundationLibrary();
  result = dlsym(v2, "PUISceneRoleRendering");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPUISceneRoleRenderingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPUISceneRoleRendering()
{
  PUISceneRoleRenderingSymbolLoc = getPUISceneRoleRenderingSymbolLoc();
  if (!PUISceneRoleRenderingSymbolLoc)
  {
    getPUISceneRoleRendering_cold_1();
  }

  v1 = *PUISceneRoleRenderingSymbolLoc;

  return v1;
}

void *__getPUIPosterSignificantEventOptionsContainsEventSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterUIFoundationLibrary();
  result = dlsym(v2, "PUIPosterSignificantEventOptionsContainsEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPUIPosterSignificantEventOptionsContainsEventSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getPUIIOSurfaceFromCGImageSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPUIIOSurfaceFromCGImageSymbolLoc_ptr;
  v6 = getPUIIOSurfaceFromCGImageSymbolLoc_ptr;
  if (!getPUIIOSurfaceFromCGImageSymbolLoc_ptr)
  {
    v1 = PosterUIFoundationLibrary();
    v4[3] = dlsym(v1, "PUIIOSurfaceFromCGImage");
    getPUIIOSurfaceFromCGImageSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_21E6C414C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPUIIOSurfaceFromCGImageSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterUIFoundationLibrary();
  result = dlsym(v2, "PUIIOSurfaceFromCGImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPUIIOSurfaceFromCGImageSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_PUIIOSurfaceFromCGImage(uint64_t a1, uint64_t a2)
{
  PUIIOSurfaceFromCGImageSymbolLoc = getPUIIOSurfaceFromCGImageSymbolLoc();
  if (!PUIIOSurfaceFromCGImageSymbolLoc)
  {
    soft_PUIIOSurfaceFromCGImage_cold_1();
  }

  return PUIIOSurfaceFromCGImageSymbolLoc(a1, a2);
}

uint64_t getPUIFeatureEnabledSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPUIFeatureEnabledSymbolLoc_ptr;
  v6 = getPUIFeatureEnabledSymbolLoc_ptr;
  if (!getPUIFeatureEnabledSymbolLoc_ptr)
  {
    v1 = PosterUIFoundationLibrary();
    v4[3] = dlsym(v1, "PUIFeatureEnabled");
    getPUIFeatureEnabledSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_21E6C42D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPUIFeatureEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterUIFoundationLibrary();
  result = dlsym(v2, "PUIFeatureEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPUIFeatureEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_PUIFeatureEnabled(uint64_t a1)
{
  PUIFeatureEnabledSymbolLoc = getPUIFeatureEnabledSymbolLoc();
  if (!PUIFeatureEnabledSymbolLoc)
  {
    soft_PUIFeatureEnabled_cold_1();
  }

  return PUIFeatureEnabledSymbolLoc(a1);
}

void *__getPUIDynamicRotationIsActiveSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterUIFoundationLibrary();
  result = dlsym(v2, "PUIDynamicRotationIsActive");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPUIDynamicRotationIsActiveSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getPUIIOSurfaceUpdatePurgableSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPUIIOSurfaceUpdatePurgableSymbolLoc_ptr;
  v6 = getPUIIOSurfaceUpdatePurgableSymbolLoc_ptr;
  if (!getPUIIOSurfaceUpdatePurgableSymbolLoc_ptr)
  {
    v1 = PosterUIFoundationLibrary();
    v4[3] = dlsym(v1, "PUIIOSurfaceUpdatePurgable");
    getPUIIOSurfaceUpdatePurgableSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_21E6C44A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPUIIOSurfaceUpdatePurgableSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterUIFoundationLibrary();
  result = dlsym(v2, "PUIIOSurfaceUpdatePurgable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPUIIOSurfaceUpdatePurgableSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_PUIIOSurfaceUpdatePurgable(uint64_t a1, uint64_t a2)
{
  PUIIOSurfaceUpdatePurgableSymbolLoc = getPUIIOSurfaceUpdatePurgableSymbolLoc();
  if (!PUIIOSurfaceUpdatePurgableSymbolLoc)
  {
    soft_PUIIOSurfaceUpdatePurgable_cold_1();
  }

  return PUIIOSurfaceUpdatePurgableSymbolLoc(a1, a2);
}

uint64_t getPUICreateIOSurfaceForImageSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPUICreateIOSurfaceForImageSymbolLoc_ptr;
  v6 = getPUICreateIOSurfaceForImageSymbolLoc_ptr;
  if (!getPUICreateIOSurfaceForImageSymbolLoc_ptr)
  {
    v1 = PosterUIFoundationLibrary();
    v4[3] = dlsym(v1, "PUICreateIOSurfaceForImage");
    getPUICreateIOSurfaceForImageSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_21E6C462C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPUICreateIOSurfaceForImageSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterUIFoundationLibrary();
  result = dlsym(v2, "PUICreateIOSurfaceForImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPUICreateIOSurfaceForImageSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id soft_PUICreateIOSurfaceForImage(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  PUICreateIOSurfaceForImageSymbolLoc = getPUICreateIOSurfaceForImageSymbolLoc();
  if (!PUICreateIOSurfaceForImageSymbolLoc)
  {
    soft_PUICreateIOSurfaceForImage_cold_1();
  }

  v7 = PUICreateIOSurfaceForImageSymbolLoc(v5, a2, a3);

  return v7;
}

uint64_t getPUIMaterialsIsLowQualityDeviceSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPUIMaterialsIsLowQualityDeviceSymbolLoc_ptr;
  v6 = getPUIMaterialsIsLowQualityDeviceSymbolLoc_ptr;
  if (!getPUIMaterialsIsLowQualityDeviceSymbolLoc_ptr)
  {
    v1 = PosterUIFoundationLibrary();
    v4[3] = dlsym(v1, "PUIMaterialsIsLowQualityDevice");
    getPUIMaterialsIsLowQualityDeviceSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_21E6C47DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPUIMaterialsIsLowQualityDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterUIFoundationLibrary();
  result = dlsym(v2, "PUIMaterialsIsLowQualityDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPUIMaterialsIsLowQualityDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_PUIMaterialsIsLowQualityDevice()
{
  IsLowQualityDeviceSymbolLoc = getPUIMaterialsIsLowQualityDeviceSymbolLoc();
  if (!IsLowQualityDeviceSymbolLoc)
  {
    soft_PUIMaterialsIsLowQualityDevice_cold_1();
  }

  return IsLowQualityDeviceSymbolLoc();
}

uint64_t getPUIHomeScreenLegibilityMaterialRecipeBundleSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPUIHomeScreenLegibilityMaterialRecipeBundleSymbolLoc_ptr;
  v6 = getPUIHomeScreenLegibilityMaterialRecipeBundleSymbolLoc_ptr;
  if (!getPUIHomeScreenLegibilityMaterialRecipeBundleSymbolLoc_ptr)
  {
    v1 = PosterUIFoundationLibrary();
    v4[3] = dlsym(v1, "PUIHomeScreenLegibilityMaterialRecipeBundle");
    getPUIHomeScreenLegibilityMaterialRecipeBundleSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_21E6C4948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPUIHomeScreenLegibilityMaterialRecipeBundleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterUIFoundationLibrary();
  result = dlsym(v2, "PUIHomeScreenLegibilityMaterialRecipeBundle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPUIHomeScreenLegibilityMaterialRecipeBundleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_PUIHomeScreenLegibilityMaterialRecipeBundle()
{
  PUIHomeScreenLegibilityMaterialRecipeBundleSymbolLoc = getPUIHomeScreenLegibilityMaterialRecipeBundleSymbolLoc();
  if (!PUIHomeScreenLegibilityMaterialRecipeBundleSymbolLoc)
  {
    soft_PUIHomeScreenLegibilityMaterialRecipeBundle_cold_1();
  }

  return PUIHomeScreenLegibilityMaterialRecipeBundleSymbolLoc();
}

uint64_t getPUIHomeScreenLegibilityMaterialShouldAdjustAlphaForWeightingSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPUIHomeScreenLegibilityMaterialShouldAdjustAlphaForWeightingSymbolLoc_ptr;
  v6 = getPUIHomeScreenLegibilityMaterialShouldAdjustAlphaForWeightingSymbolLoc_ptr;
  if (!getPUIHomeScreenLegibilityMaterialShouldAdjustAlphaForWeightingSymbolLoc_ptr)
  {
    v1 = PosterUIFoundationLibrary();
    v4[3] = dlsym(v1, "PUIHomeScreenLegibilityMaterialShouldAdjustAlphaForWeighting");
    getPUIHomeScreenLegibilityMaterialShouldAdjustAlphaForWeightingSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_21E6C4AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPUIHomeScreenLegibilityMaterialShouldAdjustAlphaForWeightingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterUIFoundationLibrary();
  result = dlsym(v2, "PUIHomeScreenLegibilityMaterialShouldAdjustAlphaForWeighting");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPUIHomeScreenLegibilityMaterialShouldAdjustAlphaForWeightingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_PUIHomeScreenLegibilityMaterialShouldAdjustAlphaForWeighting()
{
  ShouldAdjustAlphaForWeightingSymbolLoc = getPUIHomeScreenLegibilityMaterialShouldAdjustAlphaForWeightingSymbolLoc();
  if (!ShouldAdjustAlphaForWeightingSymbolLoc)
  {
    soft_PUIHomeScreenLegibilityMaterialShouldAdjustAlphaForWeighting_cold_1();
  }

  return ShouldAdjustAlphaForWeightingSymbolLoc();
}

uint64_t getPUIHomeScreenLegibilityMaterialRecipeScaleAdjustmentSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPUIHomeScreenLegibilityMaterialRecipeScaleAdjustmentSymbolLoc_ptr;
  v6 = getPUIHomeScreenLegibilityMaterialRecipeScaleAdjustmentSymbolLoc_ptr;
  if (!getPUIHomeScreenLegibilityMaterialRecipeScaleAdjustmentSymbolLoc_ptr)
  {
    v1 = PosterUIFoundationLibrary();
    v4[3] = dlsym(v1, "PUIHomeScreenLegibilityMaterialRecipeScaleAdjustment");
    getPUIHomeScreenLegibilityMaterialRecipeScaleAdjustmentSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_21E6C4C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPUIHomeScreenLegibilityMaterialRecipeScaleAdjustmentSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterUIFoundationLibrary();
  result = dlsym(v2, "PUIHomeScreenLegibilityMaterialRecipeScaleAdjustment");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPUIHomeScreenLegibilityMaterialRecipeScaleAdjustmentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_PUIHomeScreenLegibilityMaterialRecipeScaleAdjustment(double a1)
{
  PUIHomeScreenLegibilityMaterialRecipeScaleAdjustmentSymbolLoc = getPUIHomeScreenLegibilityMaterialRecipeScaleAdjustmentSymbolLoc();
  if (!PUIHomeScreenLegibilityMaterialRecipeScaleAdjustmentSymbolLoc)
  {
    soft_PUIHomeScreenLegibilityMaterialRecipeScaleAdjustment_cold_1();
  }

  v3.n128_f64[0] = a1;

  return PUIHomeScreenLegibilityMaterialRecipeScaleAdjustmentSymbolLoc(v3);
}

uint64_t getPUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientationSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientationSymbolLoc_ptr;
  v6 = getPUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientationSymbolLoc_ptr;
  if (!getPUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientationSymbolLoc_ptr)
  {
    v1 = PosterUIFoundationLibrary();
    v4[3] = dlsym(v1, "PUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientation");
    getPUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientationSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_21E6C4D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterUIFoundationLibrary();
  result = dlsym(v2, "PUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientation()
{
  PUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientationSymbolLoc = getPUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientationSymbolLoc();
  if (!PUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientationSymbolLoc)
  {
    getPUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientation_cold_1();
  }

  v1 = *PUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientationSymbolLoc;

  return v1;
}

uint64_t getPUIPosterSnapshotBundleInfoKeyInterfaceOrientationSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPUIPosterSnapshotBundleInfoKeyInterfaceOrientationSymbolLoc_ptr;
  v6 = getPUIPosterSnapshotBundleInfoKeyInterfaceOrientationSymbolLoc_ptr;
  if (!getPUIPosterSnapshotBundleInfoKeyInterfaceOrientationSymbolLoc_ptr)
  {
    v1 = PosterUIFoundationLibrary();
    v4[3] = dlsym(v1, "PUIPosterSnapshotBundleInfoKeyInterfaceOrientation");
    getPUIPosterSnapshotBundleInfoKeyInterfaceOrientationSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_21E6C4F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPUIPosterSnapshotBundleInfoKeyInterfaceOrientationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterUIFoundationLibrary();
  result = dlsym(v2, "PUIPosterSnapshotBundleInfoKeyInterfaceOrientation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPUIPosterSnapshotBundleInfoKeyInterfaceOrientationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPUIPosterSnapshotBundleInfoKeyInterfaceOrientation()
{
  PUIPosterSnapshotBundleInfoKeyInterfaceOrientationSymbolLoc = getPUIPosterSnapshotBundleInfoKeyInterfaceOrientationSymbolLoc();
  if (!PUIPosterSnapshotBundleInfoKeyInterfaceOrientationSymbolLoc)
  {
    getPUIPosterSnapshotBundleInfoKeyInterfaceOrientation_cold_1();
  }

  v1 = *PUIPosterSnapshotBundleInfoKeyInterfaceOrientationSymbolLoc;

  return v1;
}

uint64_t PosterBoardUIServicesLibraryCore()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = PosterBoardUIServicesLibraryCore_frameworkLibrary;
  v5 = PosterBoardUIServicesLibraryCore_frameworkLibrary;
  if (!PosterBoardUIServicesLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_2783634E0;
    v7 = *off_2783634F0;
    v8 = 0;
    v3[3] = _sl_dlopen();
    PosterBoardUIServicesLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_21E6C50BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PosterBoardUIServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  PosterBoardUIServicesLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PosterBoardUIServicesLibrary()
{
  v1 = 0;
  result = PosterBoardUIServicesLibraryCore();
  if (!result)
  {
    PosterBoardUIServicesLibrary_cold_1(&v1);
  }

  return result;
}

id getPRUISPosterWorkspaceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRUISPosterWorkspaceClass_softClass;
  v7 = getPRUISPosterWorkspaceClass_softClass;
  if (!getPRUISPosterWorkspaceClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPRUISPosterWorkspaceClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPRUISPosterWorkspaceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C5288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPRUISPosterWorkspaceClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  result = objc_getClass("PRUISPosterWorkspace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRUISPosterWorkspaceClass_block_invoke_cold_1();
  }

  getPRUISPosterWorkspaceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PosterFuturesKitLibraryCore()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = PosterFuturesKitLibraryCore_frameworkLibrary;
  v5 = PosterFuturesKitLibraryCore_frameworkLibrary;
  if (!PosterFuturesKitLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_278363508;
    v7 = *off_278363518;
    v8 = 0;
    v3[3] = _sl_dlopen();
    PosterFuturesKitLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_21E6C540C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PosterFuturesKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  PosterFuturesKitLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PosterFuturesKitLibrary()
{
  v1 = 0;
  result = PosterFuturesKitLibraryCore();
  if (!result)
  {
    PosterFuturesKitLibrary_cold_1(&v1);
  }

  return result;
}

id getPFTSchedulerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPFTSchedulerClass_softClass;
  v7 = getPFTSchedulerClass_softClass;
  if (!getPFTSchedulerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPFTSchedulerClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPFTSchedulerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C55D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPFTSchedulerClass_block_invoke(uint64_t a1)
{
  PosterFuturesKitLibrary();
  result = objc_getClass("PFTScheduler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPFTSchedulerClass_block_invoke_cold_1();
  }

  getPFTSchedulerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PosterLegibilityKitLibraryCore()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = PosterLegibilityKitLibraryCore_frameworkLibrary;
  v5 = PosterLegibilityKitLibraryCore_frameworkLibrary;
  if (!PosterLegibilityKitLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_278363530;
    v7 = *off_278363540;
    v8 = 0;
    v3[3] = _sl_dlopen();
    PosterLegibilityKitLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_21E6C575C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PosterLegibilityKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  PosterLegibilityKitLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PosterLegibilityKitLibrary()
{
  v1 = 0;
  result = PosterLegibilityKitLibraryCore();
  if (!result)
  {
    PosterLegibilityKitLibrary_cold_1(&v1);
  }

  return result;
}

id getPLKColorBoxesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPLKColorBoxesClass_softClass;
  v7 = getPLKColorBoxesClass_softClass;
  if (!getPLKColorBoxesClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPLKColorBoxesClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPLKColorBoxesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C5928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPLKColorBoxesClass_block_invoke(uint64_t a1)
{
  PosterLegibilityKitLibrary();
  result = objc_getClass("PLKColorBoxes");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPLKColorBoxesClass_block_invoke_cold_1();
  }

  getPLKColorBoxesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPLKLegibilityEnvironmentClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPLKLegibilityEnvironmentClass_softClass;
  v7 = getPLKLegibilityEnvironmentClass_softClass;
  if (!getPLKLegibilityEnvironmentClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPLKLegibilityEnvironmentClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPLKLegibilityEnvironmentClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C5A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPLKLegibilityEnvironmentClass_block_invoke(uint64_t a1)
{
  PosterLegibilityKitLibrary();
  result = objc_getClass("PLKLegibilityEnvironment");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPLKLegibilityEnvironmentClass_block_invoke_cold_1();
  }

  getPLKLegibilityEnvironmentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPLKLegibilityEnvironmentBuilderClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPLKLegibilityEnvironmentBuilderClass_softClass;
  v7 = getPLKLegibilityEnvironmentBuilderClass_softClass;
  if (!getPLKLegibilityEnvironmentBuilderClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPLKLegibilityEnvironmentBuilderClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPLKLegibilityEnvironmentBuilderClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C5B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPLKLegibilityEnvironmentBuilderClass_block_invoke(uint64_t a1)
{
  PosterLegibilityKitLibrary();
  result = objc_getClass("PLKLegibilityEnvironmentBuilder");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPLKLegibilityEnvironmentBuilderClass_block_invoke_cold_1();
  }

  getPLKLegibilityEnvironmentBuilderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPLKLegibilityDescriptorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPLKLegibilityDescriptorClass_softClass;
  v7 = getPLKLegibilityDescriptorClass_softClass;
  if (!getPLKLegibilityDescriptorClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPLKLegibilityDescriptorClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPLKLegibilityDescriptorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C5CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPLKLegibilityDescriptorClass_block_invoke(uint64_t a1)
{
  PosterLegibilityKitLibrary();
  result = objc_getClass("PLKLegibilityDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPLKLegibilityDescriptorClass_block_invoke_cold_1();
  }

  getPLKLegibilityDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPLKLegibilityEnvironmentVariantContextClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPLKLegibilityEnvironmentVariantContextClass_softClass;
  v7 = getPLKLegibilityEnvironmentVariantContextClass_softClass;
  if (!getPLKLegibilityEnvironmentVariantContextClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPLKLegibilityEnvironmentVariantContextClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPLKLegibilityEnvironmentVariantContextClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C5E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPLKLegibilityEnvironmentVariantContextClass_block_invoke(uint64_t a1)
{
  PosterLegibilityKitLibrary();
  result = objc_getClass("PLKLegibilityEnvironmentVariantContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPLKLegibilityEnvironmentVariantContextClass_block_invoke_cold_1();
  }

  getPLKLegibilityEnvironmentVariantContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getPLKLegibilityEnvironmentVariantDefaultSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPLKLegibilityEnvironmentVariantDefaultSymbolLoc_ptr;
  v6 = getPLKLegibilityEnvironmentVariantDefaultSymbolLoc_ptr;
  if (!getPLKLegibilityEnvironmentVariantDefaultSymbolLoc_ptr)
  {
    v1 = PosterLegibilityKitLibrary();
    v4[3] = dlsym(v1, "PLKLegibilityEnvironmentVariantDefault");
    getPLKLegibilityEnvironmentVariantDefaultSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_21E6C5F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPLKLegibilityEnvironmentVariantDefaultSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterLegibilityKitLibrary();
  result = dlsym(v2, "PLKLegibilityEnvironmentVariantDefault");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLKLegibilityEnvironmentVariantDefaultSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPLKLegibilityEnvironmentVariantDefault()
{
  PLKLegibilityEnvironmentVariantDefaultSymbolLoc = getPLKLegibilityEnvironmentVariantDefaultSymbolLoc();
  if (!PLKLegibilityEnvironmentVariantDefaultSymbolLoc)
  {
    getPLKLegibilityEnvironmentVariantDefault_cold_1();
  }

  v1 = *PLKLegibilityEnvironmentVariantDefaultSymbolLoc;

  return v1;
}

void *__getPLKLegibilityEnvironmentVariantHomeScreenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterLegibilityKitLibrary();
  result = dlsym(v2, "PLKLegibilityEnvironmentVariantHomeScreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLKLegibilityEnvironmentVariantHomeScreenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPLKLegibilityEnvironmentVariantLockScreenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterLegibilityKitLibrary();
  result = dlsym(v2, "PLKLegibilityEnvironmentVariantLockScreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLKLegibilityEnvironmentVariantLockScreenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getPLKLegibilityStyleForUILegibilityStyleSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPLKLegibilityStyleForUILegibilityStyleSymbolLoc_ptr;
  v6 = getPLKLegibilityStyleForUILegibilityStyleSymbolLoc_ptr;
  if (!getPLKLegibilityStyleForUILegibilityStyleSymbolLoc_ptr)
  {
    v1 = PosterLegibilityKitLibrary();
    v4[3] = dlsym(v1, "PLKLegibilityStyleForUILegibilityStyle");
    getPLKLegibilityStyleForUILegibilityStyleSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_21E6C615C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPLKLegibilityStyleForUILegibilityStyleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterLegibilityKitLibrary();
  result = dlsym(v2, "PLKLegibilityStyleForUILegibilityStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLKLegibilityStyleForUILegibilityStyleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_PLKLegibilityStyleForUILegibilityStyle(uint64_t a1)
{
  PLKLegibilityStyleForUILegibilityStyleSymbolLoc = getPLKLegibilityStyleForUILegibilityStyleSymbolLoc();
  if (!PLKLegibilityStyleForUILegibilityStyleSymbolLoc)
  {
    soft_PLKLegibilityStyleForUILegibilityStyle_cold_1();
  }

  return PLKLegibilityStyleForUILegibilityStyleSymbolLoc(a1);
}

uint64_t getPLKCalculateContrastFromColorBoxesSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPLKCalculateContrastFromColorBoxesSymbolLoc_ptr;
  v6 = getPLKCalculateContrastFromColorBoxesSymbolLoc_ptr;
  if (!getPLKCalculateContrastFromColorBoxesSymbolLoc_ptr)
  {
    v1 = PosterLegibilityKitLibrary();
    v4[3] = dlsym(v1, "PLKCalculateContrastFromColorBoxes");
    getPLKCalculateContrastFromColorBoxesSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_21E6C62DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPLKCalculateContrastFromColorBoxesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterLegibilityKitLibrary();
  result = dlsym(v2, "PLKCalculateContrastFromColorBoxes");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLKCalculateContrastFromColorBoxesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

double soft_PLKCalculateContrastFromColorBoxes(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v13 = a1;
  PLKCalculateContrastFromColorBoxesSymbolLoc = getPLKCalculateContrastFromColorBoxesSymbolLoc();
  if (!PLKCalculateContrastFromColorBoxesSymbolLoc)
  {
    soft_PLKCalculateContrastFromColorBoxes_cold_1();
  }

  v15 = PLKCalculateContrastFromColorBoxesSymbolLoc(v13, a2, a3, a4, a5, a6, a7);

  return v15;
}

uint64_t getPLKAverageColorFromColorBoxesSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPLKAverageColorFromColorBoxesSymbolLoc_ptr;
  v6 = getPLKAverageColorFromColorBoxesSymbolLoc_ptr;
  if (!getPLKAverageColorFromColorBoxesSymbolLoc_ptr)
  {
    v1 = PosterLegibilityKitLibrary();
    v4[3] = dlsym(v1, "PLKAverageColorFromColorBoxes");
    getPLKAverageColorFromColorBoxesSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_21E6C64A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPLKAverageColorFromColorBoxesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterLegibilityKitLibrary();
  result = dlsym(v2, "PLKAverageColorFromColorBoxes");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLKAverageColorFromColorBoxesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id soft_PLKAverageColorFromColorBoxes(void *a1, double a2, double a3, double a4, double a5, double a6)
{
  v11 = a1;
  PLKAverageColorFromColorBoxesSymbolLoc = getPLKAverageColorFromColorBoxesSymbolLoc();
  if (!PLKAverageColorFromColorBoxesSymbolLoc)
  {
    soft_PLKAverageColorFromColorBoxes_cold_1();
  }

  v13 = PLKAverageColorFromColorBoxesSymbolLoc(v11, a2, a3, a4, a5, a6);

  return v13;
}

uint64_t PosterKitLibraryCore()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = PosterKitLibraryCore_frameworkLibrary;
  v5 = PosterKitLibraryCore_frameworkLibrary;
  if (!PosterKitLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_278363558;
    v7 = *off_278363568;
    v8 = 0;
    v3[3] = _sl_dlopen();
    PosterKitLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_21E6C66C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PosterKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  PosterKitLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PosterKitLibrary()
{
  v1 = 0;
  result = PosterKitLibraryCore();
  if (!result)
  {
    PosterKitLibrary_cold_1(&v1);
  }

  return result;
}

id getPRRenderingServiceServerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRRenderingServiceServerClass_softClass;
  v7 = getPRRenderingServiceServerClass_softClass;
  if (!getPRRenderingServiceServerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPRRenderingServiceServerClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPRRenderingServiceServerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C688C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPRRenderingServiceServerClass_block_invoke(uint64_t a1)
{
  PosterKitLibrary();
  result = objc_getClass("PRRenderingServiceServer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRRenderingServiceServerClass_block_invoke_cold_1();
  }

  getPRRenderingServiceServerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPRRenderingServiceEndpointDidChangeActionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRRenderingServiceEndpointDidChangeActionClass_softClass;
  v7 = getPRRenderingServiceEndpointDidChangeActionClass_softClass;
  if (!getPRRenderingServiceEndpointDidChangeActionClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPRRenderingServiceEndpointDidChangeActionClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPRRenderingServiceEndpointDidChangeActionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C69C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPRRenderingServiceEndpointDidChangeActionClass_block_invoke(uint64_t a1)
{
  PosterKitLibrary();
  result = objc_getClass("PRRenderingServiceEndpointDidChangeAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRRenderingServiceEndpointDidChangeActionClass_block_invoke_cold_1();
  }

  getPRRenderingServiceEndpointDidChangeActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPRRenderingServiceServerKeepAliveAssertionManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRRenderingServiceServerKeepAliveAssertionManagerClass_softClass;
  v7 = getPRRenderingServiceServerKeepAliveAssertionManagerClass_softClass;
  if (!getPRRenderingServiceServerKeepAliveAssertionManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPRRenderingServiceServerKeepAliveAssertionManagerClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPRRenderingServiceServerKeepAliveAssertionManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C6AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPRRenderingServiceServerKeepAliveAssertionManagerClass_block_invoke(uint64_t a1)
{
  PosterKitLibrary();
  result = objc_getClass("PRRenderingServiceServerKeepAliveAssertionManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRRenderingServiceServerKeepAliveAssertionManagerClass_block_invoke_cold_1();
  }

  getPRRenderingServiceServerKeepAliveAssertionManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPRRenderingServiceSceneComponentClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRRenderingServiceSceneComponentClass_softClass;
  v7 = getPRRenderingServiceSceneComponentClass_softClass;
  if (!getPRRenderingServiceSceneComponentClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPRRenderingServiceSceneComponentClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPRRenderingServiceSceneComponentClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C6C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPRRenderingServiceSceneComponentClass_block_invoke(uint64_t a1)
{
  PosterKitLibrary();
  result = objc_getClass("PRRenderingServiceSceneComponent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRRenderingServiceSceneComponentClass_block_invoke_cold_1();
  }

  getPRRenderingServiceSceneComponentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getPRPosterPathModelObjectCacheClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRPosterPathModelObjectCacheClass_softClass;
  v7 = getPRPosterPathModelObjectCacheClass_softClass;
  if (!getPRPosterPathModelObjectCacheClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPRPosterPathModelObjectCacheClass_block_invoke;
    v3[3] = &unk_278361F18;
    v3[4] = &v4;
    __getPRPosterPathModelObjectCacheClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E6C6D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPRPosterPathModelObjectCacheClass_block_invoke(uint64_t a1)
{
  PosterBoardServicesLibrary();
  result = objc_getClass("PRPosterPathModelObjectCache");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRPosterPathModelObjectCacheClass_block_invoke_cold_1();
  }

  getPRPosterPathModelObjectCacheClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id PBUISafeUIColorFromColor(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 pbui_isUIColor])
    {
      v3 = v2;
LABEL_6:
      v4 = v3;
      goto LABEL_8;
    }

    if ([v2 pbui_isBSColor])
    {
      v3 = [v2 UIColor];
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_8:

  return v4;
}

uint64_t _PRNeedsWallpaperCaptureView()
{
  if (_PRNeedsWallpaperCaptureView_onceToken != -1)
  {
    _PRNeedsWallpaperCaptureView_cold_1();
  }

  return _PRNeedsWallpaperCaptureView_needsWallpaperCaptureView;
}

uint64_t _PRCollectionsPosterDescriptorNeedsSnapshotReplacement(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"7595"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"7600") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"7605") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"7610"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"7615"];
  }

  return v2;
}

void sub_21E6C7BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E6C85B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 184));
  objc_destroyWeak((v1 - 136));
  _Unwind_Resume(a1);
}

void sub_21E6CA3C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getMTMaterialViewClass_block_invoke_0(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!MaterialKitLibraryCore_frameworkLibrary_2)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __MaterialKitLibraryCore_block_invoke_2;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278363738;
    v5 = 0;
    MaterialKitLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  if (!MaterialKitLibraryCore_frameworkLibrary_2)
  {
    __getMTMaterialViewClass_block_invoke_cold_2_0(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("MTMaterialView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMTMaterialViewClass_block_invoke_cold_1_0();
  }

  getMTMaterialViewClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MaterialKitLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  MaterialKitLibraryCore_frameworkLibrary_2 = result;
  return result;
}

id PBUIMagicWallpaperDictionary(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CBEB38];
  v10 = a2;
  v11 = a1;
  v12 = [v9 dictionary];
  [v12 setObject:v11 forKey:@"kSBUIMagicWallpaperIdentifierKey"];

  v13 = [v10 bundlePath];

  [v12 setObject:v13 forKey:@"kSBUIMagicWallpaperBundlePathKey"];
  if (v8)
  {
    [v12 setObject:v8 forKey:@"kSBUIMagicWallpaperPresetOptionsKey"];
    v14 = [v8 objectForKey:@"thumbnailImageName"];
    v15 = v14;
    if (v14)
    {
      v16 = v14;

      v7 = v16;
    }
  }

  if (v7)
  {
    [v12 setObject:v7 forKey:@"kSBUIMagicWallpaperThumbnailNameKey"];
  }

  return v12;
}

id PBUIMagicWallpaperDictionariesForClass(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] array];
  if (a1 && v3)
  {
    v5 = [a1 identifier];
    if (objc_opt_respondsToSelector())
    {
      v6 = [a1 thumbnailImageName];
    }

    else
    {
      v6 = 0;
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && ([a1 presetWallpaperOptions], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v7;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = PBUIMagicWallpaperDictionary(v5, v3, v6, *(*(&v15 + 1) + 8 * i));
            [v4 addObject:v13];
          }

          v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v10);
      }
    }

    else
    {
      v8 = PBUIMagicWallpaperDictionary(v5, v3, v6, 0);
      [v4 addObject:v8];
    }
  }

  return v4;
}

id PBUIMagicWallpaperOptionsDictionary(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 objectForKey:@"kSBUIMagicWallpaperPresetOptionsKey"];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = [v4 mutableCopy];
      [v6 addEntriesFromDictionary:v3];
      goto LABEL_7;
    }

    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v6 = v7;
LABEL_7:

  return v6;
}

id PBUIGetProceduralWallpaper(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a2;
  v12 = a1;
  v13 = [v12 objectForKey:@"kSBUIMagicWallpaperIdentifierKey"];
  v14 = [objc_alloc(PBUIMagicWallpaperClassForIdentifier(v13)) initWithFrame:{a3, a4, a5, a6}];
  v15 = PBUIMagicWallpaperOptionsDictionary(v12, v11);

  if (v15 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v14 setWallpaperOptions:v15];
  }

  return v14;
}

id PBUIMagicWallpaperClassForIdentifier(void *a1)
{
  v1 = _PBUIMagicWallpaperEnsure___once;
  v2 = a1;
  if (v1 != -1)
  {
    PBUIMagicWallpaperClassForIdentifier_cold_1();
  }

  v3 = [__identifierClassMap objectForKey:v2];

  return v3;
}

id PBUIMagicWallpaperThumbnail(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKey:@"kSBUIMagicWallpaperIdentifierKey"];
  v3 = PBUIMagicWallpaperClassForIdentifier(v2);
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v3 thumbnailImageForOptions:v1], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
  }

  else
  {
    v6 = [v1 objectForKey:@"kSBUIMagicWallpaperPresetOptionsKey"];
    v7 = [v1 objectForKey:@"kSBUIMagicWallpaperBundlePathKey"];
    v8 = [MEMORY[0x277CCA8D8] bundleWithPath:v7];
    v9 = [v6 objectForKey:@"kSBUIMagicWallpaperThumbnailNameKey"];
    v10 = v9;
    v11 = 0;
    if (v8 && v9)
    {
      v11 = [MEMORY[0x277D755B8] _deviceSpecificImageNamed:v9 inBundle:v8];
    }

    v12 = [v6 objectForKey:@"largeThumbJPEGPath"];
    v13 = v12;
    if (!v11 && v12)
    {
      v14 = [MEMORY[0x277CCAA00] defaultManager];
      v15 = [v14 fileExistsAtPath:v13];

      if (v15)
      {
        v11 = [MEMORY[0x277D755B8] imageWithContentsOfFile:v13];
      }

      else
      {
        v11 = 0;
      }
    }

    v5 = v11;
  }

  return v5;
}

id PBUIMagicWallpaperRepresentativeThumbnailForClass(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKey:@"kSBUIMagicWallpaperIdentifierKey"];
  v3 = PBUIMagicWallpaperClassForIdentifier(v2);
  v4 = [v1 objectForKey:@"kSBUIMagicWallpaperBundlePathKey"];

  v5 = [MEMORY[0x277CCA8D8] bundleWithPath:v4];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v3 representativeThumbnailImageName];
    v7 = v6;
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [MEMORY[0x277D755B8] _deviceSpecificImageNamed:v6 inBundle:v5];
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  return v8;
}

void _PBUIMagicWallpaperEnsure()
{
  if (_PBUIMagicWallpaperEnsure___once != -1)
  {
    PBUIMagicWallpaperClassForIdentifier_cold_1();
  }
}

id PBUIMagicWallpaperEnumeration()
{
  if (_PBUIMagicWallpaperEnsure___once != -1)
  {
    PBUIMagicWallpaperClassForIdentifier_cold_1();
  }

  v1 = __wallpaperEnumeration;

  return v1;
}

id BundlePathForWallpaperIdentifier(void *a1)
{
  v1 = PBUIMagicWallpaperClassForIdentifier(a1);
  if (v1)
  {
    v2 = [MEMORY[0x277CCA8D8] bundleForClass:v1];
    v3 = [v2 bundlePath];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_21E6CE120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose((v51 - 256), 8);
  _Unwind_Resume(a1);
}

void sub_21E6CED10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E6D303C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 224), 8);
  _Block_object_dispose((v41 - 176), 8);
  _Block_object_dispose((v41 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21E6D39E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *PBUIStringForWallpaperMode(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_278363A20[a1];
  }
}

uint64_t PBUIWallpaperModeForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"light"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"dark"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"inactive"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_21E6DB1C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *PBUIWallpaperWindowSceneSettingKeyDescription(uint64_t a1)
{
  if ((a1 - 727229969) > 0x10)
  {
    return 0;
  }

  else
  {
    return off_278363B38[a1 - 727229969];
  }
}

id PBUIWallpaperWindowSceneSettingValueDescription(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 == 727229970)
  {
    [v3 CGRectValue];
    v5 = NSStringFromCGRect(v9);
    goto LABEL_5;
  }

  if (a1 == 727229969)
  {
    v5 = PBUIStringForWallpaperVariant([v3 integerValue]);
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

uint64_t PBUIWallpaperVariantForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"home"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"lock"] - 1;
  }

  return v2;
}

void sub_21E6E3FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E6E52AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_21E6E55DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E6E5900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E6E5EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PBUIColorSamplingQueue()
{
  if (PBUIColorSamplingQueue_onceToken != -1)
  {
    PBUIColorSamplingQueue_cold_1();
  }

  v1 = PBUIColorSamplingQueue_queue;

  return v1;
}

void sub_21E6E74E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E6E8718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E6E9AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __PBUIColorSamplingQueue_block_invoke()
{
  SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
  v1 = PBUIColorSamplingQueue_queue;
  PBUIColorSamplingQueue_queue = SerialWithQoS;

  return MEMORY[0x2821F96F8](SerialWithQoS, v1);
}

void sub_21E6EAB90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

int64x2_t PBUIWallpaperBackdropParametersMakeIdentity@<Q0>(uint64_t a1@<X8>)
{
  v1 = *MEMORY[0x277D77370];
  *a1 = -2;
  *(a1 + 8) = v1;
  *(a1 + 16) = 0;
  result = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(a1 + 24) = result;
  *(a1 + 40) = result;
  *(a1 + 56) = 0;
  return result;
}

id PBUIBackdropInputSettingsForWallpaperBackdropParameters(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v1 = 0;
  }

  else
  {
    v1 = [MEMORY[0x277D75DF0] settingsForPrivateStyle:*a1 graphicsQuality:100];
    [v1 setStackingLevel:*(a1 + 8)];
    [v1 setRenderingHint:*(a1 + 16)];
    if (*(a1 + 24) != 1.79769313e308)
    {
      [v1 setBlurRadius:?];
    }

    if (*(a1 + 32) != 1.79769313e308)
    {
      [v1 setSaturationDeltaFactor:?];
    }

    if (*(a1 + 40) != 1.79769313e308)
    {
      [v1 setGrayscaleTintLevel:?];
    }

    if (*(a1 + 48) != 1.79769313e308)
    {
      [v1 setGrayscaleTintAlpha:?];
    }
  }

  return v1;
}

id PBUIBackdropOutputSettingsForWallpaperBackdropParameters(__int128 *a1)
{
  v2 = a1[1];
  v9 = *a1;
  v10 = v2;
  v3 = a1[3];
  v11 = a1[2];
  v12 = v3;
  v4 = PBUIBackdropInputSettingsForWallpaperBackdropParameters(&v9);
  v5 = a1[1];
  v9 = *a1;
  v10 = v5;
  v6 = a1[3];
  v11 = a1[2];
  v12 = v6;
  v7 = PBUIBackdropInputSettingsForWallpaperBackdropParameters(&v9);
  [v7 computeOutputSettingsUsingModel:v4];

  return v7;
}

__CFString *PBUIStringForWallpaperMaterialStyle(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"nil";
  }

  else
  {
    return off_278363FC0[a1 - 1];
  }
}

id PBUIStringForWallpaperBackdropParameters(double *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"backdrop style: %li", *a1];
  [v2 addObject:v3];

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"stacking level: %li", *(a1 + 1)];
  [v2 addObject:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"rendering hint: %li", *(a1 + 2)];
  [v2 addObject:v5];

  if (a1[3] != 1.79769313e308)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"blur radius: %f", *(a1 + 3)];
    [v2 addObject:v6];
  }

  if (a1[4] != 1.79769313e308)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"saturation delta factor: %f", *(a1 + 4)];
    [v2 addObject:v7];
  }

  if (a1[5] != 1.79769313e308)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"grayscale tint level: %f", *(a1 + 5)];
    [v2 addObject:v8];
  }

  if (a1[6] != 1.79769313e308)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"grayscale tint alpha: %f", *(a1 + 6)];
    [v2 addObject:v9];
  }

  v10 = *(a1 + 7) - 1;
  if (v10 <= 2)
  {
    [v2 addObject:off_278363FD8[v10]];
  }

  v11 = [v2 componentsJoinedByString:{@", "}];

  return v11;
}

void sub_21E6EBD00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E6EC660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, char a27)
{
  objc_destroyWeak((v27 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_21E6EE2E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PBUICurrentDeviceWallpaperSizeType()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  if ([v0 userInterfaceIdiom] == 1)
  {
    v1 = [MEMORY[0x277D759A0] mainScreen];
    [v1 _referenceBounds];
    Height = CGRectGetHeight(v12);

    if (Height > 1194.0)
    {
      return 4;
    }
  }

  else
  {
  }

  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 1)
  {
    return 3;
  }

  v6 = [MEMORY[0x277D75418] currentDevice];
  if ([v6 userInterfaceIdiom])
  {
  }

  else
  {
    v7 = [MEMORY[0x277D759A0] mainScreen];
    [v7 _referenceBounds];
    v8 = CGRectGetHeight(v13);

    if (v8 > 667.0)
    {
      return 2;
    }
  }

  v9 = [MEMORY[0x277D75418] currentDevice];
  if ([v9 userInterfaceIdiom])
  {

    return 0;
  }

  else
  {
    v10 = [MEMORY[0x277D759A0] mainScreen];
    [v10 _referenceBounds];
    v3 = CGRectGetHeight(v14) > 568.0;
  }

  return v3;
}

uint64_t _WallpaperStyleForBackgroundStyle(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 1;
  }

  else
  {
    return qword_21E70D928[a1 - 1];
  }
}

uint64_t _WallpaperStyleByRemovingTintFromStyle(uint64_t result)
{
  v1 = result - 9;
  if (result - 9) <= 0x12 && ((0x6DF4Fu >> v1))
  {
    return qword_21E70D958[v1];
  }

  return result;
}

id PBUIStringForStyleTransitionState(unint64_t *a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = PBUIWallpaperStyleDescription(*a1);
  v4 = PBUIWallpaperStyleDescription(a1[1]);
  v5 = [v2 stringWithFormat:@"%@ -> %@ (%.02f)", v3, v4, a1[2]];

  return v5;
}

__CFString *PBUIWallpaperWindowSceneClientSettingKeyDescription(uint64_t a1)
{
  if ((a1 - 1207217227) > 0x11)
  {
    return 0;
  }

  else
  {
    return off_278364610[a1 - 1207217227];
  }
}

id PBUIWallpaperWindowSceneClientSettingValueDescription(uint64_t a1, void *a2)
{
  if (a1 == 1207217244)
  {
    v4 = PBUIIrisWallpaperPlaybackStateDescription([a2 integerValue]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_21E6F7670(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_21E6F79D8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __getISAssetClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getISAssetClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUILivePhotoPlayerView.m" lineNumber:17 description:{@"Unable to find class %s", "ISAsset"}];

  __break(1u);
}

void PhotosPlayerLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PhotosPlayerLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PBUILivePhotoPlayerView.m" lineNumber:16 description:{@"%s", *a1}];

  __break(1u);
}

void __getISPlayerItemClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getISPlayerItemClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUILivePhotoPlayerView.m" lineNumber:22 description:{@"Unable to find class %s", "ISPlayerItem"}];

  __break(1u);
}

void __getISLiveWallpaperPlayerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getISLiveWallpaperPlayerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUILivePhotoPlayerView.m" lineNumber:20 description:{@"Unable to find class %s", "ISLiveWallpaperPlayer"}];

  __break(1u);
}

void __getISLivePhotoPlayerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getISLivePhotoPlayerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUILivePhotoPlayerView.m" lineNumber:18 description:{@"Unable to find class %s", "ISLivePhotoPlayer"}];

  __break(1u);
}

void __getISLiveWallpaperUIViewClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getISLiveWallpaperUIViewClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUILivePhotoPlayerView.m" lineNumber:21 description:{@"Unable to find class %s", "ISLiveWallpaperUIView"}];

  __break(1u);
}

void __getISLivePhotoUIViewClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getISLivePhotoUIViewClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUILivePhotoPlayerView.m" lineNumber:19 description:{@"Unable to find class %s", "ISLivePhotoUIView"}];

  __break(1u);
}

void __getMTMaterialViewClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMTMaterialViewClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterEffectView.m" lineNumber:20 description:{@"Unable to find class %s", "MTMaterialView"}];

  __break(1u);
}

void __getMTMaterialViewClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MaterialKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PBUIPosterEffectView.m" lineNumber:19 description:{@"%s", *a1}];

  __break(1u);
}

void PBUIExtensionIdentifierForPosterWallpaperMigrationProvider_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull PBUIExtensionIdentifierForPosterWallpaperMigrationProvider(PBUIPosterWallpaperMigrationProvider)"];
  v3 = 138544130;
  v4 = v2;
  v5 = 2114;
  v6 = @"PBUIPosterWallpaperMigrationInfo.m";
  v7 = 1024;
  v8 = 43;
  v9 = 2114;
  v10 = a1;
  _os_log_error_impl(&dword_21E67D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v3, 0x26u);
}

void soft_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyle_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *soft_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyle(MTMaterialRecipe, UIUserInterfaceStyle)"}];
  [v0 handleFailureInFunction:v1 file:@"PBUIWallpaperEffectCompositor.m" lineNumber:23 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyle_cold_1_0()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *soft_MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyle(MTMaterialRecipe, UIUserInterfaceStyle)"}];
  [v0 handleFailureInFunction:v1 file:@"PBUIWallpaperView.m" lineNumber:45 description:{@"%s", dlerror()}];

  __break(1u);
}

void PosterBoardServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PosterBoardServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PBUIPosterBridge.m" lineNumber:13 description:{@"%s", *a1}];

  __break(1u);
}

void __getPRSWallpaperObserverClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPRSWallpaperObserverClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:14 description:{@"Unable to find class %s", "PRSWallpaperObserver"}];

  __break(1u);
}

void __getPRSWallpaperObserverConfigurationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPRSWallpaperObserverConfigurationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:15 description:{@"Unable to find class %s", "PRSWallpaperObserverConfiguration"}];

  __break(1u);
}

void __getPRSWallpaperLocationStateObserverClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPRSWallpaperLocationStateObserverClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:16 description:{@"Unable to find class %s", "PRSWallpaperLocationStateObserver"}];

  __break(1u);
}

void __getPRSPosterUpdaterClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPRSPosterUpdaterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:17 description:{@"Unable to find class %s", "PRSPosterUpdater"}];

  __break(1u);
}

void __getPRSPosterUpdateClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPRSPosterUpdateClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:18 description:{@"Unable to find class %s", "PRSPosterUpdate"}];

  __break(1u);
}

void __getPRSServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPRSServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:19 description:{@"Unable to find class %s", "PRSService"}];

  __break(1u);
}

void __getPRSPosterConfigurationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPRSPosterConfigurationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:20 description:{@"Unable to find class %s", "PRSPosterConfiguration"}];

  __break(1u);
}

void PosterFoundationLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PosterFoundationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PBUIPosterBridge.m" lineNumber:22 description:{@"%s", *a1}];

  __break(1u);
}

void soft_PFFileProtectionNoneAttributes_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSDictionary *soft_PFFileProtectionNoneAttributes(void)"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:23 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_PF_IS_PAD_DEVICE_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL soft_PF_IS_PAD_DEVICE(void)"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:24 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getPFPosterExtensionInstanceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPFPosterExtensionInstanceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:25 description:{@"Unable to find class %s", "PFPosterExtensionInstance"}];

  __break(1u);
}

void __getPFDeviceMotionUtilitiesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPFDeviceMotionUtilitiesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:26 description:{@"Unable to find class %s", "PFDeviceMotionUtilities"}];

  __break(1u);
}

void getPFPosterRoleLockScreen_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"typeof (((typeof (PFPosterRoleLockScreen) (*)(void))0)()) getPFPosterRoleLockScreen(void)"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:27 description:{@"%s", dlerror()}];

  __break(1u);
}

void PosterUIFoundationLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PosterUIFoundationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PBUIPosterBridge.m" lineNumber:30 description:{@"%s", *a1}];

  __break(1u);
}

void __getPUIPosterLevelSetClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPUIPosterLevelSetClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:31 description:{@"Unable to find class %s", "PUIPosterLevelSet"}];

  __break(1u);
}

void __getPUIPosterSnapshotAnalysisDescriptorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPUIPosterSnapshotAnalysisDescriptorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:32 description:{@"Unable to find class %s", "PUIPosterSnapshotAnalysisDescriptor"}];

  __break(1u);
}

void __getPUIPosterSnapshotOutputDescriptorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPUIPosterSnapshotOutputDescriptorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:33 description:{@"Unable to find class %s", "PUIPosterSnapshotOutputDescriptor"}];

  __break(1u);
}

void __getPUIPosterSnapshotUISceneDescriptorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPUIPosterSnapshotUISceneDescriptorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:34 description:{@"Unable to find class %s", "PUIPosterSnapshotUISceneDescriptor"}];

  __break(1u);
}

void __getPUIPosterSnapshotHostConfigurationDescriptorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPUIPosterSnapshotHostConfigurationDescriptorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:35 description:{@"Unable to find class %s", "PUIPosterSnapshotHostConfigurationDescriptor"}];

  __break(1u);
}

void __getPUIPosterSnapshotDescriptorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPUIPosterSnapshotDescriptorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:36 description:{@"Unable to find class %s", "PUIPosterSnapshotDescriptor"}];

  __break(1u);
}

void __getPUIColorStatisticsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPUIColorStatisticsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:37 description:{@"Unable to find class %s", "PUIColorStatistics"}];

  __break(1u);
}

void __getPUIDiscreteGradientVariatedCustomStyleClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPUIDiscreteGradientVariatedCustomStyleClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:38 description:{@"Unable to find class %s", "PUIDiscreteGradientVariatedCustomStyle"}];

  __break(1u);
}

void __getPUIImageEncoderClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPUIImageEncoderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:39 description:{@"Unable to find class %s", "PUIImageEncoder"}];

  __break(1u);
}

void __getPUIImageOnDiskFormatClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPUIImageOnDiskFormatClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:40 description:{@"Unable to find class %s", "PUIImageOnDiskFormat"}];

  __break(1u);
}

void __getPUIMappedImageCacheManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPUIMappedImageCacheManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:41 description:{@"Unable to find class %s", "PUIMappedImageCacheManager"}];

  __break(1u);
}

void __getPUICARemoteRendererClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPUICARemoteRendererClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:42 description:{@"Unable to find class %s", "PUICARemoteRenderer"}];

  __break(1u);
}

void __getPUITreatImageRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPUITreatImageRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:43 description:{@"Unable to find class %s", "PUITreatImageRequest"}];

  __break(1u);
}

void __getPUIMaterialTreatmentClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPUIMaterialTreatmentClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:44 description:{@"Unable to find class %s", "PUIMaterialTreatment"}];

  __break(1u);
}

void __getPUICodableImageClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPUICodableImageClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:45 description:{@"Unable to find class %s", "PUICodableImage"}];

  __break(1u);
}

void __getPUIPosterSnapshotDestinationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPUIPosterSnapshotDestinationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:46 description:{@"Unable to find class %s", "PUIPosterSnapshotDestination"}];

  __break(1u);
}

void __getPUIWallpaperInactiveTreatmentClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPUIWallpaperInactiveTreatmentClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:48 description:{@"Unable to find class %s", "PUIWallpaperInactiveTreatment"}];

  __break(1u);
}

void __getPUIWallpaperLegibilityTreatmentClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPUIWallpaperLegibilityTreatmentClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:50 description:{@"Unable to find class %s", "PUIWallpaperLegibilityTreatment"}];

  __break(1u);
}

void getPUIImageEncoderErrorDomain_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"typeof (((typeof (PUIImageEncoderErrorDomain) (*)(void))0)()) getPUIImageEncoderErrorDomain(void)"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:51 description:{@"%s", dlerror()}];

  __break(1u);
}

void getPUISceneRoleRendering_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"typeof (((typeof (PUISceneRoleRendering) (*)(void))0)()) getPUISceneRoleRendering(void)"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:52 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_PUIPosterSignificantEventOptionsContainsEvent_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL soft_PUIPosterSignificantEventOptionsContainsEvent(PUIPosterSignificantEventOptions, PUIPosterSignificantEvent)"}];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:53 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_PUIIOSurfaceFromCGImage_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"IOSurface *soft_PUIIOSurfaceFromCGImage(CGImageRef, BOOL)"}];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:54 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_PUIFeatureEnabled_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL soft_PUIFeatureEnabled(PUIFeature)"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:55 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_PUIDynamicRotationIsActive_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL soft_PUIDynamicRotationIsActive(void)"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:56 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_PUIIOSurfaceUpdatePurgable_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"IOSurfaceRef soft_PUIIOSurfaceUpdatePurgable(IOSurfaceRef, BOOL)"}];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:57 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_PUICreateIOSurfaceForImage_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"IOSurface *soft_PUICreateIOSurfaceForImage(UIImage *__strong, CGImageBlockSetRef *, BOOL)"}];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:58 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_PUIMaterialsIsLowQualityDevice_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL soft_PUIMaterialsIsLowQualityDevice(void)"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:59 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_PUIHomeScreenLegibilityMaterialRecipeBundle_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSBundle *soft_PUIHomeScreenLegibilityMaterialRecipeBundle(void)"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:60 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_PUIHomeScreenLegibilityMaterialShouldAdjustAlphaForWeighting_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL soft_PUIHomeScreenLegibilityMaterialShouldAdjustAlphaForWeighting(void)"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:61 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_PUIHomeScreenLegibilityMaterialRecipeScaleAdjustment_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CGFloat soft_PUIHomeScreenLegibilityMaterialRecipeScaleAdjustment(CGFloat)"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:62 description:{@"%s", dlerror()}];

  __break(1u);
}

void getPUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientation_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"typeof (((typeof (PUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientation) (*)(void))0)()) getPUIPosterSnapshotBundleInfoKeyDeviceInterfaceOrientation(void)"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:63 description:{@"%s", dlerror()}];

  __break(1u);
}

void getPUIPosterSnapshotBundleInfoKeyInterfaceOrientation_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"typeof (((typeof (PUIPosterSnapshotBundleInfoKeyInterfaceOrientation) (*)(void))0)()) getPUIPosterSnapshotBundleInfoKeyInterfaceOrientation(void)"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:64 description:{@"%s", dlerror()}];

  __break(1u);
}

void PosterBoardUIServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PosterBoardUIServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PBUIPosterBridge.m" lineNumber:66 description:{@"%s", *a1}];

  __break(1u);
}

void __getPRUISPosterWorkspaceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPRUISPosterWorkspaceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:67 description:{@"Unable to find class %s", "PRUISPosterWorkspace"}];

  __break(1u);
}

void PosterFuturesKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PosterFuturesKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PBUIPosterBridge.m" lineNumber:69 description:{@"%s", *a1}];

  __break(1u);
}

void __getPFTSchedulerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPFTSchedulerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:70 description:{@"Unable to find class %s", "PFTScheduler"}];

  __break(1u);
}

void PosterLegibilityKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PosterLegibilityKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PBUIPosterBridge.m" lineNumber:72 description:{@"%s", *a1}];

  __break(1u);
}

void __getPLKColorBoxesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPLKColorBoxesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:73 description:{@"Unable to find class %s", "PLKColorBoxes"}];

  __break(1u);
}

void __getPLKLegibilityEnvironmentClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPLKLegibilityEnvironmentClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:74 description:{@"Unable to find class %s", "PLKLegibilityEnvironment"}];

  __break(1u);
}

void __getPLKLegibilityEnvironmentBuilderClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPLKLegibilityEnvironmentBuilderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:75 description:{@"Unable to find class %s", "PLKLegibilityEnvironmentBuilder"}];

  __break(1u);
}

void __getPLKLegibilityDescriptorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPLKLegibilityDescriptorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:76 description:{@"Unable to find class %s", "PLKLegibilityDescriptor"}];

  __break(1u);
}

void __getPLKLegibilityEnvironmentVariantContextClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPLKLegibilityEnvironmentVariantContextClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:77 description:{@"Unable to find class %s", "PLKLegibilityEnvironmentVariantContext"}];

  __break(1u);
}

void getPLKLegibilityEnvironmentVariantDefault_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"typeof (((typeof (PLKLegibilityEnvironmentVariantDefault) (*)(void))0)()) getPLKLegibilityEnvironmentVariantDefault(void)"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:78 description:{@"%s", dlerror()}];

  __break(1u);
}

void getPLKLegibilityEnvironmentVariantHomeScreen_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"typeof (((typeof (PLKLegibilityEnvironmentVariantHomeScreen) (*)(void))0)()) getPLKLegibilityEnvironmentVariantHomeScreen(void)"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:79 description:{@"%s", dlerror()}];

  __break(1u);
}

void getPLKLegibilityEnvironmentVariantLockScreen_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"typeof (((typeof (PLKLegibilityEnvironmentVariantLockScreen) (*)(void))0)()) getPLKLegibilityEnvironmentVariantLockScreen(void)"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:80 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_PLKLegibilityStyleForUILegibilityStyle_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PLKLegibilityStyle soft_PLKLegibilityStyleForUILegibilityStyle(_UILegibilityStyle)"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:81 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_PLKCalculateContrastFromColorBoxes_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat soft_PLKCalculateContrastFromColorBoxes(PLKColorBoxes *__strong, CGRect, CGFloat *, CGFloat *)"}];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:82 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_PLKAverageColorFromColorBoxes_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"UIColor *soft_PLKAverageColorFromColorBoxes(PLKColorBoxes *__strong, CGRect, CGFloat)"}];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:83 description:{@"%s", dlerror()}];

  __break(1u);
}

void PosterKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PosterKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PBUIPosterBridge.m" lineNumber:85 description:{@"%s", *a1}];

  __break(1u);
}

void __getPRRenderingServiceServerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPRRenderingServiceServerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:86 description:{@"Unable to find class %s", "PRRenderingServiceServer"}];

  __break(1u);
}

void __getPRRenderingServiceEndpointDidChangeActionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPRRenderingServiceEndpointDidChangeActionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:87 description:{@"Unable to find class %s", "PRRenderingServiceEndpointDidChangeAction"}];

  __break(1u);
}

void __getPRRenderingServiceServerKeepAliveAssertionManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPRRenderingServiceServerKeepAliveAssertionManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:88 description:{@"Unable to find class %s", "PRRenderingServiceServerKeepAliveAssertionManager"}];

  __break(1u);
}

void __getPRRenderingServiceSceneComponentClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPRRenderingServiceSceneComponentClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:89 description:{@"Unable to find class %s", "PRRenderingServiceSceneComponent"}];

  __break(1u);
}

void __getPRPosterPathModelObjectCacheClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPRPosterPathModelObjectCacheClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterBridge.m" lineNumber:90 description:{@"Unable to find class %s", "PRPosterPathModelObjectCache"}];

  __break(1u);
}

void __getMTMaterialViewClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMTMaterialViewClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PBUIPosterHomeViewController.m" lineNumber:43 description:{@"Unable to find class %s", "MTMaterialView"}];

  __break(1u);
}

void __getMTMaterialViewClass_block_invoke_cold_2_0(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MaterialKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PBUIPosterHomeViewController.m" lineNumber:42 description:{@"%s", *a1}];

  __break(1u);
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x282128850](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectFromString(NSString *string)
{
  MEMORY[0x2821DE308](string);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}